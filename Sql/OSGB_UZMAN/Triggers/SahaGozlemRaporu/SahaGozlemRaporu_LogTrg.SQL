BEGIN TRAN
GO
ALTER -- create -- drop
  TRIGGER [dbo].[SahaGozlemRaporu_LogTrg] ON  [dbo].[SahaGozlemRaporu]
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

  insert into dbo.SahaGozlemRaporu_Log (
    LogTime, LogKullanici, LogHostName, LogSPID, LogType, 
    ID, RaporlarID, Konu_Sira, Uygunmu, Tespitler, Oneriler)
  Select 
    @LogTime LogTime, 
    (select top 1 Kullanici 
     from LoginLog L 
     inner join sysProcesses sp on sp.spid = L.SPID 
     where L.SPID = @@SPID 
       and l.date_create > sp.login_time 
     order by L.Date_create desc) LogKullanici, 
    HOST_NAME () LogHostName, @@SPID LogSPID, case when @Tip = 'U' then 'O' else @Tip end LogType, 
    ID, RaporlarID, Konu_Sira, Uygunmu, Tespitler, Oneriler
  from deleted

  insert into dbo.SahaGozlemRaporu_Log (
    LogTime, LogKullanici, LogHostName, LogSPID, LogType, 
    ID, RaporlarID, Konu_Sira, Uygunmu, Tespitler, Oneriler)
  Select 
    @LogTime LogTime, 
    (select top 1 Kullanici 
     from LoginLog L 
     inner join sysProcesses sp on sp.spid = L.SPID 
     where L.SPID = @@SPID 
       and l.date_create > sp.login_time 
     order by L.Date_create desc) LogKullanici, 
    HOST_NAME () LogHostName, @@SPID LogSPID, case when @Tip = 'U' then 'N' else @Tip end LogType, 
    ID, RaporlarID, Konu_Sira, Uygunmu, Tespitler, Oneriler
  from inserted i

  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'SahaGozlemRaporu_LogTrg'
GO
COMMIT
GO
