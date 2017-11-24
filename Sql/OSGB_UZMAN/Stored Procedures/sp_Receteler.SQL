BEGIN TRAN
GO
-- [CMPTR2] - [24.04.2017 22:51:23]
ALTER PROCEDURE [dbo].[sp_Receteler](@tarih1 VARCHAR(10),@tarih2 VARCHAR(10),@tip VARCHAR(1) = '')
as
BEGIN
	
IF @tip = ''
BEGIN
	select r.*,h.HASTAADI, h.HASTASOYADI,h.TCKIMLIKNO,
		   cast(t.kutuAdet AS VARCHAR) + '   Kutu ['+t.ilacAdi+']' EpoKutuAdet_IlacAdi
	from recete r  
	join hastakart h on h.dosyaNo = r.dosyaNO  
	left JOIN
		(SELECT receteID,ilackodu,ilacAdi,SUM(adet) kutuAdet FROM recetedetay rd
		JOIN Ilaclar I on I.code = rd.ilacKodu
		WHERE I.GRUP = 1 
		GROUP BY rd.ReceteId,rd.ilacKodu,rd.ilacAdi) t ON t.ReceteId = r.id

	where convert(varchar,tarih,112) between @tarih1 and @tarih2 
order by id DESC,h.HASTAADI,h.HASTASOYADI	
END	
	
	

IF @tip = 'G'
BEgin
	select r.receteTur, r.protokolNo, r.doktor, r.tarih, r.Tani, r.eReceteNo,
		   r.receteAltTur, r.DosyaNo, r.gelisNo,
		   'Reçete Tarihi : ' + convert(VARCHAR,r.tarih,105) + ' | Reçete ID : ' + cast(r.id AS VARCHAR) + ' | Reçete Turu : ' + substring(r.receteTur,5,10) + ' | Protokol No : ' + r.protokolNo + ' | E-Reçete No : ' + r.eReceteNo  id,
		   h.HASTAADI+ ' ' + h.HASTASOYADI + ' | ' + h.TCKIMLIKNO HASTAADI,
			   rd.ilacKodu, rd.ilacAdi, rd.kullanimZaman, rd.kullanZamanUnit,
		   rd.kullanimSekli, rky.SLT kullanimYolu, 
		   cast(rd.kullanimAdet AS VARCHAR)  + 'X' + cast(rd.kullanimAdet2 AS VARCHAR) doz
		   , rd.adet 
	from recete r  
	join hastakart h on h.dosyaNo = r.dosyaNO  
	JOIN receteDetay rd ON rd.ReceteID = r.id	
	JOIN ReceteKullanimYol rky ON rky.SLX = rd.kullanimYolu	
		
	where convert(varchar,tarih,112) between @tarih1 and @tarih2 
order by convert(varchar,tarih,112) desc
end

END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_Receteler'
GO
COMMIT
GO
