BEGIN TRAN
GO
ALTER view dbo.ReceteView
with schemabinding
as
-- ÜÖ 20180221 reçete þikayetlerinde hýzlý destek verebilmek için joinli hazýr view eklendi.
select 
  R.DosyaNo, pk.TCKIMLIKNO, pk.HASTAADI, pk.HASTASOYADI, R.gelisNo, mt.Tanimi MuayeneTuru, cast (g.BHDAT as datetime) MuayeneTarihi, 
  g.PROTOKOLNO MuayeneProtokolNo, 
  g.doktor MuayeneDoktorKodu, dm.Tanimi MuayeneDoktor,
  g.Kullanici MuayeneAcanKullanici, 
  g.DATE_CREATE MuayeneOlusturulmaZamani, 
  R.id ReceteID, R.receteTur, 
  R.protokolNo ReceteProtokolNo, 
  R.doktor ReceteDoktorKodu, dr.Tanimi ReceteDoktor,
  R.tarih ReceteTarihi, 
  R.eReceteNo, R.receteAltTur, 
  pk.DOGUMTARIHIdt DogumTarihi, pk.UYRUGU, pk.BASLANGICdt IseBaslamaTarihi, 
  pk.SirketKod, s.tanimi SirketUnvani, pk.Sube, ss.subeTanim SubeAdi, 
  R.HastaBildirim, R.EczanedenAlim, 
  R.Date_Create, 
  R.WanIP ReceteWANIP, 
  R.ComputerName ReceteComputer, 
  pk.Bolum, bl.Tanimi Bolumu,
  pk.Birim, br.Tanimi Birimi,
  g.TEDAVITURU, g.SIKAYETLERI, g.MUAYENEBULGULARI, g.MUAYENESONUC, g.ISTIRAHATGUN, 
  g.SEVKBRANS SevkBransKodu, srv.Tanimi SevkEdildigiBrans,
  cast (case when IsNull (LTRIM (RTRIM (R.EreceteNo)), '') IN ('', '0000') then 0 else 1 end as bit) MedulaGonderildi
FROM dbo.Recete R
inner join dbo.PersonelKart pk on pk.DosyaNo = R.DosyaNo
inner join dbo.Gelisler g on g.DosyaNo = R.DosyaNo
  and g.GelisNo = R.GelisNo
inner join dbo.SIRKET_SUBE_TNM ss on ss.SirketKod = pk.SirketKod
  and ss.SubeKod = pk.Sube
inner join dbo.SIRKETLER_TNM s on s.SirketKod = ss.SirketKod
inner join dbo.MuayeneTipleri mt on mt.Kod = g.TedavITURU
inner join dbo.DoktorlarT dm on dm.kod = g.Doktor
inner join dbo.DoktorlarT dr on dr.kod = R.Doktor
left outer join dbo.SERVIS_TNM srv on srv.kod = g.SEVKBRANS
left outer join dbo.Bolumler bl on bl.kod = pk.Bolum
left outer join dbo.Birimler br on br.kod = pk.Birim
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'ReceteView'
GO
COMMIT
GO
