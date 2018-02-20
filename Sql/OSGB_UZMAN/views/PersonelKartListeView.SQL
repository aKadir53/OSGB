BEGIN TRAN
GO
ALTER -- CREATE
  VIEW [dbo].[PersonelKartListeView]
with schemabinding
AS
select 
  h.dosyaNo, h.SirketKod, h.CINSIYETI, h.MEDENI, h.HASTAADI, h.HASTASOYADI, h.TCKIMLIKNO, h.BASLANGIC, h.Birim Birim_1, h.Bolum Bolum_1, 
  h.Sube Sube_1, h.EV_TEL1, 
  h.MuayenePeryot, h.IdealKilo Kilo,
  (case when isnull(diger,'') = '' then '0' else '1' end) ozeldurum , 
  (case when (Substring (h.GELHAST, 6, 1) = '1' OR SUBSTRING (h.GELHAST, 8, 1) = '1') THEN '1' ELSE '' END) Diabet,
  (case when CHARINDEX ('1', h.GELHAST) > 0 THEN '1' ELSE '' END) KronikHastalik,
  (case when isnull(AntiHbs,'') = '' THEN '0' ELSE AntiHbs END) 'AntiHbs',
  IK.ADI il,ILCK.ADI ilce,MK.ADI mahalle,dbo.fn_yasTarih(h.doGUMTARIHI,getdate()) yas,
  h.DOGUMTARIHIdt DTARIHI ,
  pm.SonMuayeneTarihi EnsonkiPeryodikMuayeneTarihi,
  isnull(h.MuayenePeryot,0) + pm.SonMuayeneTarihi SonrakiPeryodikMuayeneTarihi,
  isnull(h.MuayenePeryot,0) - 
  isnull(DATEDIFF(D,pm.SonMuayeneTarihi,getdate()),0) MuayeneKalanGun,
  h.HASTAADI+ ' '+h.HASTASOYADI ADI , s.tanimi,BASLANGICdt iseBaslama,
  h.sube Sube,sb.subeTanim subeTanim,sb.subeDoktor doktorKod,d.tanimi doktor,b.tanimi birim,blm.tanimi bolum,h.tetkikIstemGrupSablon, h.Aktif
from dbo.Personelkart h
left outer join
  (select DosyaNo, max(cast(BHDAT as datetime)) SonMuayeneTarihi
   from dbo.gelisler 
   where TEDAVITURU in ('1','2')
   group by DosyaNo) pm on pm.DosyaNo = h.DosyaNo
left join dbo.SIRKET_SUBE_TNM sb on sb.sirketKod = h.SirketKod and sb.subeKod = h.Sube
left join dbo.SIRKETLER_TNM s on s.SirketKod = sb.SirketKod
left join dbo.Kurumlar k on k.kurum = h.kurum
left join dbo.SKRS_IL_KODLARI IK on Ik.KODU = h.EV_SEHIR
left join dbo.SKRS_ILCE_KODLARI ILCK on ILCK.KODU = H.EV_ILCE
left join dbo.SKRS_MAHALLE_KODLARI MK on MK.KODU = H.EV_MAHALLE
left join dbo.DoktorlarT d on d.kod = sb.subeDoktor
left join dbo.Birimler b on b.kod = h.Birim
left join dbo.Bolumler blm on blm.kod = h.Bolum
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'PersonelKartListeView'
GO
COMMIT
GO
