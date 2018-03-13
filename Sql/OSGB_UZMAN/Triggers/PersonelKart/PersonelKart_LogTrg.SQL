BEGIN TRAN
GO
ALTER -- create -- drop
  TRIGGER [dbo].[PersonelKart_LogTrg] ON  [dbo].[PersonelKart]
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

  insert into dbo.PersonelKart_Log (
    LogTime, LogKullanici, LogHostName, LogSPID, LogType, 
    dosyaNo, SirketKod, Sube, Kurum, SIGORTANO, CINSIYETI, MEDENI, HASTAADI, HASTASOYADI, BABAADI, ANAADI, EV_ADRES, EV_PK, EV_SEHIR, EV_TEL1, EV_TEL2, EMAIL, DOGUMYERI, DOGUMTARIHI, UYRUGU, TCKIMLIKNO, HUVIYETTIPI, HUVIYETNO, HUVIYETTARIHI, HUVIYETVYER, NUFUSKAYITLIIL, NUFUSKAYITLIILCE, KANGRUBU, KANVEREBILIR, DURUM, MESLEK, MESLEKADI, KurumTip, SicilNo, KarneNo, GELHAST, OZGECMIS, [USER_ID], DATE_CREATE, USER_ID_UPDATE, DATE_UPDATE, seansSuresi, seansGunleri, Aktif, PasifTarih, muayeneAcilisTarihi, BASLANGIC, pasifSebeb, IdealKilo, AktifDegisTarih, OlumNedeni, Hepatit, Hiv, Boy, Diger, Alerji, Tip, VatandasTip, HbsAg, AntiHbs, AntiHCV, EV_MAHALLE, EV_SOKAK, EV_CADDE, EV_ILCE, EV_BUCAK, EV_KOY, EGITIM_DURUMU, Askerlik, Ozurluluk, Bolum, Birim, Risk, Statu, CocukSayi, MuayenePeryot, BASLANGICdt, DOGUMTARIHIdt, tetkikIstemGrupSablon, yaptigiIsinTanimi)
  Select 
    @LogTime LogTime, 
    (select top 1 Kullanici 
     from LoginLog L 
     inner join sysProcesses sp on sp.spid = L.SPID 
     where L.SPID = @@SPID 
       and l.date_create > sp.login_time 
     order by L.Date_create desc) LogKullanici, 
    HOST_NAME () LogHostName, @@SPID LogSPID, case when @Tip = 'U' then 'O' else @Tip end LogType, 
    dosyaNo, SirketKod, Sube, Kurum, SIGORTANO, CINSIYETI, MEDENI, HASTAADI, HASTASOYADI, BABAADI, ANAADI, EV_ADRES, EV_PK, EV_SEHIR, EV_TEL1, EV_TEL2, EMAIL, DOGUMYERI, DOGUMTARIHI, UYRUGU, TCKIMLIKNO, HUVIYETTIPI, HUVIYETNO, HUVIYETTARIHI, HUVIYETVYER, NUFUSKAYITLIIL, NUFUSKAYITLIILCE, KANGRUBU, KANVEREBILIR, DURUM, MESLEK, MESLEKADI, KurumTip, SicilNo, KarneNo, GELHAST, OZGECMIS, [USER_ID], DATE_CREATE, USER_ID_UPDATE, DATE_UPDATE, seansSuresi, seansGunleri, Aktif, PasifTarih, muayeneAcilisTarihi, BASLANGIC, pasifSebeb, IdealKilo, AktifDegisTarih, OlumNedeni, Hepatit, Hiv, Boy, Diger, Alerji, Tip, VatandasTip, HbsAg, AntiHbs, AntiHCV, EV_MAHALLE, EV_SOKAK, EV_CADDE, EV_ILCE, EV_BUCAK, EV_KOY, EGITIM_DURUMU, Askerlik, Ozurluluk, Bolum, Birim, Risk, Statu, CocukSayi, MuayenePeryot, BASLANGICdt, DOGUMTARIHIdt, tetkikIstemGrupSablon, yaptigiIsinTanimi
  from deleted

  insert into dbo.PersonelKart_Log (
    LogTime, LogKullanici, LogHostName, LogSPID, LogType, 
    dosyaNo, SirketKod, Sube, Kurum, SIGORTANO, CINSIYETI, MEDENI, HASTAADI, HASTASOYADI, BABAADI, ANAADI, EV_ADRES, EV_PK, EV_SEHIR, EV_TEL1, EV_TEL2, EMAIL, DOGUMYERI, DOGUMTARIHI, UYRUGU, TCKIMLIKNO, HUVIYETTIPI, HUVIYETNO, HUVIYETTARIHI, HUVIYETVYER, NUFUSKAYITLIIL, NUFUSKAYITLIILCE, KANGRUBU, KANVEREBILIR, DURUM, MESLEK, MESLEKADI, KurumTip, SicilNo, KarneNo, GELHAST, OZGECMIS, [USER_ID], DATE_CREATE, USER_ID_UPDATE, DATE_UPDATE, seansSuresi, seansGunleri, Aktif, PasifTarih, muayeneAcilisTarihi, BASLANGIC, pasifSebeb, IdealKilo, AktifDegisTarih, OlumNedeni, Hepatit, Hiv, Boy, Diger, Alerji, Tip, VatandasTip, HbsAg, AntiHbs, AntiHCV, EV_MAHALLE, EV_SOKAK, EV_CADDE, EV_ILCE, EV_BUCAK, EV_KOY, EGITIM_DURUMU, Askerlik, Ozurluluk, Bolum, Birim, Risk, Statu, CocukSayi, MuayenePeryot, BASLANGICdt, DOGUMTARIHIdt, tetkikIstemGrupSablon, yaptigiIsinTanimi)
  Select 
    @LogTime LogTime, 
    (select top 1 Kullanici 
     from LoginLog L 
     inner join sysProcesses sp on sp.spid = L.SPID 
     where L.SPID = @@SPID 
       and l.date_create > sp.login_time 
     order by L.Date_create desc) LogKullanici, 
    HOST_NAME () LogHostName, @@SPID LogSPID, case when @Tip = 'U' then 'N' else @Tip end LogType, 
    dosyaNo, SirketKod, Sube, Kurum, SIGORTANO, CINSIYETI, MEDENI, HASTAADI, HASTASOYADI, BABAADI, ANAADI, EV_ADRES, EV_PK, EV_SEHIR, EV_TEL1, EV_TEL2, EMAIL, DOGUMYERI, DOGUMTARIHI, UYRUGU, TCKIMLIKNO, HUVIYETTIPI, HUVIYETNO, HUVIYETTARIHI, HUVIYETVYER, NUFUSKAYITLIIL, NUFUSKAYITLIILCE, KANGRUBU, KANVEREBILIR, DURUM, MESLEK, MESLEKADI, KurumTip, SicilNo, KarneNo, GELHAST, OZGECMIS, [USER_ID], DATE_CREATE, USER_ID_UPDATE, DATE_UPDATE, seansSuresi, seansGunleri, Aktif, PasifTarih, muayeneAcilisTarihi, BASLANGIC, pasifSebeb, IdealKilo, AktifDegisTarih, OlumNedeni, Hepatit, Hiv, Boy, Diger, Alerji, Tip, VatandasTip, HbsAg, AntiHbs, AntiHCV, EV_MAHALLE, EV_SOKAK, EV_CADDE, EV_ILCE, EV_BUCAK, EV_KOY, EGITIM_DURUMU, Askerlik, Ozurluluk, Bolum, Birim, Risk, Statu, CocukSayi, MuayenePeryot, BASLANGICdt, DOGUMTARIHIdt, tetkikIstemGrupSablon, yaptigiIsinTanimi
  from inserted i

  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'PersonelKart_LogTrg'
GO
COMMIT
GO
