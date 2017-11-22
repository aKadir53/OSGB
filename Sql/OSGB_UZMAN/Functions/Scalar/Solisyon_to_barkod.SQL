BEGIN TRAN
GO
ALTER FUNCTION [dbo].[Solisyon_to_barkod] (@Diyalizat VARCHAR(20))
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
		FOR Ozelllik IN (Diyalizat) 
		) AS p
   ) p ON i.CODE = p.stokkodu

    WHERE p.Diyalizat = @Diyalizat and dt.mevcut > 0
   ORDER BY i.CODE,dt.mevcut

RETURN  (@barkod)

END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'Solisyon_to_barkod'
GO
COMMIT
GO
