BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_HastaLabSonuc] @dosyaNo VARCHAR(6) , @gelisNo INT , @tip VARCHAR(1) = ''

AS
BEGIN
	select hr.dosyaNo,hr.gelisNo,code,NAME1,lg.SLT grup,
	(case when 
	(case when l.SonucTip = 'B' Then (CASE WHEN gd = -1 THEN 'Negatif' ELSE 'Pozitif' END) ELSE cast(gd AS VARCHAR) END) = '0' then '' else
	(case when l.SonucTip = 'B' Then (CASE WHEN gd = -1 THEN 'Negatif' ELSE 'Pozitif' END) ELSE cast(gd AS VARCHAR) END) end) gd,cd,	
	
	SIRANO,islemAciklamasi,KabulNo, h.*,l.*,d.Kt_v,d.URR,d.CaxP,d.DuzCa,
	(select top 1 TS from LabSonucDegerlendirme WHERE dosyaNo = h.dosyaNo AND ISNULL(TS,0) > 0 ORDER BY d.GelisNo desc) TS ,
	(SELECT top 1 UTarih from gelisdetay WHERE dosyaNo = @dosyaNo AND gelisNo = @gelisNo ORDER BY gelisdetay.UTarih) ilkSeansTarihi , hr.TARIH,
	
	(CASE WHEN l.SonucTip = 'N' AND gd > 0   THEN 
	 (CASE WHEN (gd BETWEEN isnull(ln.normal1,l.minD) AND isnull(ln.normal2,(case when l.maxD = 0 THEN 100000 ELSE l.maxD END))) AND l.uygulamaAdet in (1,2) THEN '' ELSE '*' END) ELSE '' END) ikaz,
	
	(CASE WHEN l.SonucTip = 'N' AND cd > 0 THEN 
	 (CASE WHEN (Cd BETWEEN isnull(ln.normal1,l.minD) AND isnull(ln.normal2,(case when l.maxD = 0 THEN 100000 ELSE l.maxD END))) AND l.uygulamaAdet in (2) THEN '' ELSE '*' END) ELSE '' END) ikazC,
	 	
	(SELECT Utarih FROM GelisDetay WHERE dosyaNo = @dosyaNo AND gelisNo = @gelisNo AND KanAlindimi = 1) OrnekTarihi	,
	 isnull(ln.normal1,l.minD) normal1 ,
	 
	 case when isnull(ln.normal2,l.maxD) = 0 THEN '>' else cast(isnull(ln.normal2,l.maxD) AS VARCHAR) end normal2,
	 ln.aciklama,
	 
	 dbo.fn_yasTarih(h.DOGUMTARIHI,hr.TARIH) yas
	from hareketler hr 
	 join HastaKart h on h.dosyaNo = hr.dosyaNo 
	 left join labtestler l on l.butkodu = hr.code 
	 left join LabSonucDegerlendirme d on d.dosyaNo = hr.dosyaNo and d.gelisNo = hr.gelisNo 
	 JOIN lab_gruplari lg ON lg.SLB = l.grupKodu           
	 LEFT JOIN lab_normaldeger ln ON l.butKodu = ln.testkodu AND 
	      (dbo.fn_yasTarih(h.DOGUMTARIHI,hr.TARIH) between ln.yas1 AND ln.yas2) AND 
	      (substring(ln.cinsiyet,1,1) = substring(h.CINSIYETI,1,1) OR substring(ln.cinsiyet,1,1) = '2') 
	where (case when onay='1' and  l.butkodu in('705140', '901620') THEN 1 ELSE abs(gd+cd) END) >= 0 and hr.dosyaNo = @dosyaNo and hr.gelisNo = @gelisNo AND cast(abs(l.tip) AS VARCHAR) LIKE '%'+@tip
	       and onay = 1
	order by KabulNo,TARIH,l.sira,code

END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_HastaLabSonuc'
GO
COMMIT
GO
