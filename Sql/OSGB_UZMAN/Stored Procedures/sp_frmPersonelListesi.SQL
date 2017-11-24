BEGIN TRAN
GO
-- [CMPTR2] - [28.09.2017 17:08:40]
ALTER PROCEDURE [dbo].[sp_frmPersonelListesi] @firma varchar(10) = '0001',@ap int = 1,@gun int = 0
AS
select *,(case when isnull(diger,'') = '' then '0' else '1' end) ozeldurum , 
(case when (CHARINDEX('5',h.GELHAST) > 0 OR CHARINDEX('7',h.GELHAST) > 0) THEN '1' ELSE '' END) Diabet,
(case when isnull(AntiHbs,'') = '' THEN '0' ELSE AntiHbs END) 'AntiHbs',
IK.ADI il,ILCK.ADI ilce,MK.ADI mahalle,dbo.fn_yasTarih(h.doGUMTARIHI,getdate()) yas, 

(select max(cast(BHDAT as datetime)) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU = '2') EnsonkiPeryodikMuayeneTarihi,
isnull(h.MuayenePeryot,0) + (select max(cast(BHDAT as datetime)) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU = '2') SonrakiPeryodikMuayeneTarihi,
isnull(h.MuayenePeryot,0) - 
isnull((select DATEDIFF(D,cast(BHDAT as datetime),getdate()) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU = '2'),0) MuayeneKalanGun

from Personelkart h
-- left join gelisler g on g.dosyano = h.dosyano --and g.gelisno = (select max(gelisno) from gelisler where dosyano = h.dosyano)
 left join Kurumlar k on k.kurum = h.kurum
 --LEFT JOIN makinalar m ON m.makinaNo = h.makinaNo
 left join SKRS_IL_KODLARI IK on Ik.KODU = h.EV_SEHIR
 left join SKRS_ILCE_KODLARI ILCK on ILCK.KODU = H.EV_ILCE
 left join SKRS_MAHALLE_KODLARI MK on MK.KODU = H.EV_MAHALLE
where aktif = @ap and
sirketKod like  '%' + @firma + '%' and 
isnull(h.MuayenePeryot,0) - isnull((select DATEDIFF(D,cast(BHDAT as datetime),getdate()) from gelisler where dosyaNo = h.dosyaNo and TEDAVITURU = '2'),0) <= @gun 


order by h.HASTAADI,h.HASTASOYADI
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmPersonelListesi'
GO
COMMIT
GO
