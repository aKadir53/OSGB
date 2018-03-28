BEGIN TRAN
GO
CREATE -- create -- drop
  TRIGGER [dbo].[merkezBilgisi_LogTrg] ON  [dbo].[merkezBilgisi]
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

  insert into dbo.merkezBilgisi_Log (
    LogTime, LogKullanici, LogHostName, LogSPID, LogType, 
    MerkezKodu, MerkezAdi, Adres, KapiNo, PostaKodu, Ilce, Il, SorumluKisi1, SorumluKisi2, Telefon, Fax, e_mail, vergiDairesi, vergiNo, postaKutusu, sifre, kullaniciAdi, webUrl, SGKSicilNo, MERSISNo, BankaAdi1, IBAN1, BankaAdi2, IBAN2, BankaAdi3, IBAN3, BankaAdi4, IBAN4, MerkezTipi)
  Select 
    @LogTime LogTime, 
    (select top 1 Kullanici 
     from LoginLog L 
     inner join sysProcesses sp on sp.spid = L.SPID 
     where L.SPID = @@SPID 
       and l.date_create > sp.login_time 
     order by L.Date_create desc) LogKullanici, 
    HOST_NAME () LogHostName, @@SPID LogSPID, case when @Tip = 'U' then 'O' else @Tip end LogType, 
    MerkezKodu, MerkezAdi, Adres, KapiNo, PostaKodu, Ilce, Il, SorumluKisi1, SorumluKisi2, Telefon, Fax, e_mail, vergiDairesi, vergiNo, postaKutusu, sifre, kullaniciAdi, webUrl, SGKSicilNo, MERSISNo, BankaAdi1, IBAN1, BankaAdi2, IBAN2, BankaAdi3, IBAN3, BankaAdi4, IBAN4, MerkezTipi
  from deleted

  insert into dbo.merkezBilgisi_Log (
    LogTime, LogKullanici, LogHostName, LogSPID, LogType, 
    MerkezKodu, MerkezAdi, Adres, KapiNo, PostaKodu, Ilce, Il, SorumluKisi1, SorumluKisi2, Telefon, Fax, e_mail, vergiDairesi, vergiNo, postaKutusu, sifre, kullaniciAdi, webUrl, SGKSicilNo, MERSISNo, BankaAdi1, IBAN1, BankaAdi2, IBAN2, BankaAdi3, IBAN3, BankaAdi4, IBAN4, MerkezTipi)
  Select 
    @LogTime LogTime, 
    (select top 1 Kullanici 
     from LoginLog L 
     inner join sysProcesses sp on sp.spid = L.SPID 
     where L.SPID = @@SPID 
       and l.date_create > sp.login_time 
     order by L.Date_create desc) LogKullanici, 
    HOST_NAME () LogHostName, @@SPID LogSPID, case when @Tip = 'U' then 'N' else @Tip end LogType, 
    MerkezKodu, MerkezAdi, Adres, KapiNo, PostaKodu, Ilce, Il, SorumluKisi1, SorumluKisi2, Telefon, Fax, e_mail, vergiDairesi, vergiNo, postaKutusu, sifre, kullaniciAdi, webUrl, SGKSicilNo, MERSISNo, BankaAdi1, IBAN1, BankaAdi2, IBAN2, BankaAdi3, IBAN3, BankaAdi4, IBAN4, MerkezTipi
  from inserted

  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'merkezBilgisi_LogTrg'
GO
COMMIT
GO
