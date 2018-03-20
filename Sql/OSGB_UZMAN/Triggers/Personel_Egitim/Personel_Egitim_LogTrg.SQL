BEGIN TRAN
GO
ALTER -- create -- drop
  TRIGGER [dbo].[Personel_Egitim_LogTrg] ON  [dbo].[Personel_Egitim]
AFTER DELETE,INSERT, UPDATE
AS 
BEGIN
  set nocount on
  declare 
    @Tip varchar (1),
    @LogTime datetime = getdate ()
  set @Tip = 
    case 
      when exists (select top 1 1 from inserted) then 
        case 
          when exists (select top 1 1 from deleted) then 'U'
          else 'I'
        end
      else
        case 
          when exists (select top 1 1 from deleted) then 'D'
          else ''
        end
    end

  insert into dbo.Personel_Egitim_Log (
    LogTime, LogKullanici, LogHostName, LogSPID, LogType, 
    id, PersonelDosyaNo, EgitimID)
  Select 
    @LogTime LogTime, 
    (select top 1 Kullanici 
     from LoginLog L 
     inner join sysProcesses sp on sp.spid = L.SPID 
     where L.SPID = @@SPID 
       and l.date_create > sp.login_time 
     order by L.Date_create desc) LogKullanici, 
    HOST_NAME () LogHostName, @@SPID LogSPID, case when @Tip = 'U' then 'O' else @Tip end LogType, 
    id, PersonelDosyaNo, EgitimID
  from deleted

  insert into dbo.Personel_Egitim_Log (
    LogTime, LogKullanici, LogHostName, LogSPID, LogType, 
    id, PersonelDosyaNo, EgitimID)
  Select 
    @LogTime LogTime, 
    (select top 1 Kullanici 
     from LoginLog L 
     inner join sysProcesses sp on sp.spid = L.SPID 
     where L.SPID = @@SPID 
       and l.date_create > sp.login_time 
     order by L.Date_create desc) LogKullanici, 
    HOST_NAME () LogHostName, @@SPID LogSPID, case when @Tip = 'U' then 'N' else @Tip end LogType, 
    id, PersonelDosyaNo, EgitimID
  from inserted

  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'Personel_Egitim_LogTrg'
GO
COMMIT
GO
