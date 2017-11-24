BEGIN TRAN
GO
-- [CMPTR] - [18.10.2017 15:20:02]
ALTER PROCEDURE [dbo].[sp_frmDoktorPersonelListesi] @firma varchar(10) = '',@ap int = 1,@doktor varchar(4)
AS
select h.Sube, h.*,(case when isnull(diger,'') = '' then '0' else '1' end) ozeldurum , 
(case when (CHARINDEX('5',h.GELHAST) > 0 OR CHARINDEX('7',h.GELHAST) > 0) THEN '1' ELSE '' END) Diabet,
(case when isnull(AntiHbs,'') = '' THEN '0' ELSE AntiHbs END) 'AntiHbs',
IK.ADI il,ILCK.ADI ilce,MK.ADI mahalle,dbo.fn_yasTarih(h.doGUMTARIHI,getdate()) yas, 

(select max(cast(BHDAT as datetime)) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU = '2') EnsonkiPeryodikMuayeneTarihi,
isnull(h.MuayenePeryot,0) + (select max(cast(BHDAT as datetime)) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU = '2') SonrakiPeryodikMuayeneTarihi,
isnull(h.MuayenePeryot,0) - 
isnull(DATEDIFF(D,(select max(cast(BHDAT as datetime)) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU = '2'),getdate()),0) MuayeneKalanGun,
h.HASTAADI+ ' '+h.HASTASOYADI ADI , s.tanimi,cast(BASLANGIC as datetime) iseBaslama,isnull(s.sube,'00') Sube,isnull(sb.subeTanim,'MERKEZ') subeTanim
from Personelkart h
left join SIRKETLER_TNM s on s.SirketKod = h.SirketKod
left join SIRKET_SUBE_TNM_view sb on sb.sirketKod = h.SirketKod --and sb.subeKod = isnull(h.sube,'00')
 left join Kurumlar k on k.kurum = h.kurum
 left join SKRS_IL_KODLARI IK on Ik.KODU = h.EV_SEHIR
 left join SKRS_ILCE_KODLARI ILCK on ILCK.KODU = H.EV_ILCE
 left join SKRS_MAHALLE_KODLARI MK on MK.KODU = H.EV_MAHALLE
where h.aktif = @ap 
  and h.sirketKod like  '%' + @firma + '%' and sb.subeDoktor = @doktor
order by h.SirketKod,sb.subeKod,h.HASTAADI,h.HASTASOYADI
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmDoktorPersonelListesi'
GO
COMMIT
GO
