BEGIN TRAN
GO
ALTER -- create -- drop
  TRIGGER [dbo].[Users_LogTrg] ON  [dbo].[Users]
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

  insert into dbo.Users_Log (
    LogTime, LogKullanici, LogHostName, LogSPID, LogType, 
    [kullanici], [password], [default], [donem], [parametreler], [yet1], [yet2], [ADISOYADI], [doktor], [grup], [Saat], [id], [userSkin], [email], [ustUser], [sirketKodu], [User], [IGU], [SifreDegisiklikTarihi], [DigerSaglikPers], [Dogrulama])
  Select 
    @LogTime LogTime, 
    (select top 1 Kullanici 
     from LoginLog L 
     inner join sysProcesses sp on sp.spid = L.SPID 
     where L.SPID = @@SPID 
       and l.date_create > sp.login_time 
     order by L.Date_create desc) LogKullanici, 
    HOST_NAME () LogHostName, @@SPID LogSPID, case when @Tip = 'U' then 'O' else @Tip end LogType, 
    [kullanici], [password], [default], [donem], [parametreler], [yet1], [yet2], [ADISOYADI], [doktor], [grup], [Saat], [id], [userSkin], [email], [ustUser], [sirketKodu], [User], [IGU], [SifreDegisiklikTarihi], [DigerSaglikPers], [Dogrulama]
  from deleted

  insert into dbo.Users_Log (
    LogTime, LogKullanici, LogHostName, LogSPID, LogType, 
    [kullanici], [password], [default], [donem], [parametreler], [yet1], [yet2], [ADISOYADI], [doktor], [grup], [Saat], [id], [userSkin], [email], [ustUser], [sirketKodu], [User], [IGU], [SifreDegisiklikTarihi], [DigerSaglikPers], [Dogrulama])
  Select 
    @LogTime LogTime, 
    (select top 1 Kullanici 
     from LoginLog L 
     inner join sysProcesses sp on sp.spid = L.SPID 
     where L.SPID = @@SPID 
       and l.date_create > sp.login_time 
     order by L.Date_create desc) LogKullanici, 
    HOST_NAME () LogHostName, @@SPID LogSPID, case when @Tip = 'U' then 'N' else @Tip end LogType, 
    [kullanici], [password], [default], [donem], [parametreler], [yet1], [yet2], [ADISOYADI], [doktor], [grup], [Saat], [id], [userSkin], [email], [ustUser], [sirketKodu], [User], [IGU], [SifreDegisiklikTarihi], [DigerSaglikPers], [Dogrulama]
  from inserted i

  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'Users_LogTrg'
GO
COMMIT
GO
