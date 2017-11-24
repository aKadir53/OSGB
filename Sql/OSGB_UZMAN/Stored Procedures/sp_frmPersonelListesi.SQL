BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_frmPersonelListesi] @firma varchar(10) = '',@ap int = 1,@dosyaNo varchar(6) = ''
AS
select h.*,(case when isnull(diger,'') = '' then '0' else '1' end) ozeldurum , 
(case when (CHARINDEX('5',h.GELHAST) > 0 OR CHARINDEX('7',h.GELHAST) > 0) THEN '1' ELSE '' END) Diabet,
(case when isnull(AntiHbs,'') = '' THEN '0' ELSE AntiHbs END) 'AntiHbs',
IK.ADI il,ILCK.ADI ilce,MK.ADI mahalle,dbo.fn_yasTarih(h.doGUMTARIHI,getdate()) yas,
dbo.formattedTarih(h.doGUMTARIHI) DTARIHI ,

(select max(cast(BHDAT as datetime)) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU in ('1','2')) EnsonkiPeryodikMuayeneTarihi,
isnull(h.MuayenePeryot,0) + (select max(cast(BHDAT as datetime)) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU in ('1','2')) SonrakiPeryodikMuayeneTarihi,
isnull(h.MuayenePeryot,0) - 
isnull(DATEDIFF(D,(select max(cast(BHDAT as datetime)) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU in ('1','2')),getdate()),0) MuayeneKalanGun,
h.HASTAADI+ ' '+h.HASTASOYADI ADI , s.tanimi,cast(BASLANGIC as datetime) iseBaslama,
h.sube Sube,sb.subeTanim subeTanim,sb.subeDoktor doktorKod,d.tanimi doktor,b.tanimi birim,blm.tanimi bolum
from Personelkart h
left join SIRKETLER_TNM s on s.SirketKod = h.SirketKod
left join SIRKET_SUBE_TNM sb on sb.sirketKod = h.SirketKod and sb.subeKod = h.Sube
 left join Kurumlar k on k.kurum = h.kurum
 left join SKRS_IL_KODLARI IK on Ik.KODU = h.EV_SEHIR
 left join SKRS_ILCE_KODLARI ILCK on ILCK.KODU = H.EV_ILCE
 left join SKRS_MAHALLE_KODLARI MK on MK.KODU = H.EV_MAHALLE
 left join DoktorlarT d on d.kod = sb.subeDoktor
 left join Birimler b on b.kod = h.Birim
 left join Bolumler blm on blm.kod = h.Bolum
where h.aktif = @ap and
h.sirketKod like  '%' + @firma + '%' and
TCKIMLIKNO  like '%' + @dosyaNo + '%' 
--isnull(h.MuayenePeryot,0) - isnull((select DATEDIFF(D,cast(BHDAT as datetime),getdate()) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU = '2'),0) <= @gun 
order by h.SirketKod,sb.subeKod,h.HASTAADI,h.HASTASOYADI
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmPersonelListesi'
GO
COMMIT
GO
