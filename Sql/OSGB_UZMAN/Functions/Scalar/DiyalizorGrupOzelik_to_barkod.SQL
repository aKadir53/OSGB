BEGIN TRAN
GO
ALTER FUNCTION [dbo].[DiyalizorGrupOzelik_to_barkod] (@alan VARCHAR(50),@Cins VARCHAR(50),@Sekil VARCHAR(50))
RETURNS varchar(20)
AS
BEGIN
DECLARE @barkod VARCHAR(20)

   SELECT TOP 1 @barkod = i.code FROM ILACSARF i 
   left join stokdepotoplam dt on dt.stokkodu = i.code
   left JOIN
   (
	   select p.*
	   from
		(
			SELECT stokkodu,Ozelllik,OzellikVerisi FROM StokDigerOzellikler
			
		) as t

		PIVOT
		(
		max(OzellikVerisi)
		FOR Ozelllik IN (Cins,[Alan],[Sekil]) 
		) AS p
   ) p ON i.CODE = p.stokkodu

    WHERE p.Alan = @alan AND p.Cins = @Cins AND p.Sekil = @Sekil AND dt.mevcut > 0
   ORDER BY i.CODE,dt.mevcut

RETURN  (@barkod)

END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'DiyalizorGrupOzelik_to_barkod'
GO
COMMIT
GO
