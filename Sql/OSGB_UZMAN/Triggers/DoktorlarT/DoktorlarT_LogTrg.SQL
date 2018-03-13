BEGIN TRAN
GO
ALTER -- create -- drop
  TRIGGER [dbo].[DoktorlarT_LogTrg] ON  [dbo].[DoktorlarT]
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

  insert into dbo.DoktorlarT_Log (
    LogTime, LogKullanici, LogHostName, LogSPID, LogType, 
    kod, tanimi, tescilNo, tcKimlikNo, bransKodu, calismaTipi, durum, sertifika, receteBrans, TDisID, uzman, eReceteKullanici, eReceteSifre, pin, id, pazartesi, sali, carsamba, persembe, cuma, cumartesi, TesisKodu, GSM, EPosta, cardType, medulaGonderimTipi)
  Select 
    @LogTime LogTime, 
    (select top 1 Kullanici 
     from LoginLog L 
     inner join sysProcesses sp on sp.spid = L.SPID 
     where L.SPID = @@SPID 
       and l.date_create > sp.login_time 
     order by L.Date_create desc) LogKullanici, 
    HOST_NAME () LogHostName, @@SPID LogSPID, case when @Tip = 'U' then 'O' else @Tip end LogType, 
    kod, tanimi, tescilNo, tcKimlikNo, bransKodu, calismaTipi, durum, sertifika, receteBrans, TDisID, uzman, eReceteKullanici, eReceteSifre, pin, id, pazartesi, sali, carsamba, persembe, cuma, cumartesi, TesisKodu, GSM, EPosta, cardType, medulaGonderimTipi
  from deleted

  insert into dbo.DoktorlarT_Log (
    LogTime, LogKullanici, LogHostName, LogSPID, LogType, 
    kod, tanimi, tescilNo, tcKimlikNo, bransKodu, calismaTipi, durum, sertifika, receteBrans, TDisID, uzman, eReceteKullanici, eReceteSifre, pin, id, pazartesi, sali, carsamba, persembe, cuma, cumartesi, TesisKodu, GSM, EPosta, cardType, medulaGonderimTipi)
  Select 
    @LogTime LogTime, 
    (select top 1 Kullanici 
     from LoginLog L 
     inner join sysProcesses sp on sp.spid = L.SPID 
     where L.SPID = @@SPID 
       and l.date_create > sp.login_time 
     order by L.Date_create desc) LogKullanici, 
    HOST_NAME () LogHostName, @@SPID LogSPID, case when @Tip = 'U' then 'N' else @Tip end LogType, 
    kod, tanimi, tescilNo, tcKimlikNo, bransKodu, calismaTipi, durum, sertifika, receteBrans, TDisID, uzman, eReceteKullanici, eReceteSifre, pin, id, pazartesi, sali, carsamba, persembe, cuma, cumartesi, TesisKodu, GSM, EPosta, cardType, medulaGonderimTipi
  from inserted

  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'DoktorlarT_LogTrg'
GO
COMMIT
GO
