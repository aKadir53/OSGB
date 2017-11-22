BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_devredilenKurumBazliHastaListesi](@tarih1 datetime,@tarih2 datetime)
as
BEGIN
   

	SELECT (CASE WHEN s = 0 THEN k.ad ELSE k.ad+' Grup Toplamý : ' end),
	adet,HASTAADI,HASTASOYADI,TCKIMLIKNO,DOGUMTARIHI,CINSIYETI,DURUM,EV_ADRES,EV_TEL1 
	FROM
	(
	SELECT kurumTip,0 s ,0 adet,h.HASTAADI,h.HASTASOYADI,h.TCKIMLIKNO,h.DOGUMTARIHI,h.CINSIYETI,h.DURUM,h.EV_ADRES,h.EV_TEL1 
	FROM hastakart h
	JOIN  Gelisler g ON g.dosyaNo = h.dosyaNo
	WHERE g.bhdat BETWEEN CONVERT(VARCHAR,@tarih1,112) AND CONVERT(VARCHAR,@tarih2,112)
	--ORDER BY h.KurumTip,HAstaAdý,h.HASTASOYADI

	UNION ALL

	SELECT kurumTip,1,COUNT(*),'','','','','','','',''
	FROM hastakart h
	JOIN  Gelisler g ON g.dosyaNo = h.dosyaNo
	WHERE g.bhdat BETWEEN CONVERT(VARCHAR,@tarih1,112) AND CONVERT(VARCHAR,@tarih2,112)
	group BY h.KurumTip
	) tmp 
	JOIN DevredilenKurum k ON k.kod = tmp.kurumtip
	ORDER BY tmp.kurumTip,s,tmp.HASTAADI


END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_devredilenKurumBazliHastaListesi'
GO
COMMIT
GO
