BEGIN TRAN
GO
ALTER FUNCTION [dbo].[IgneOzelik_to_barkod] (@cap VARCHAR(20),@tip VARCHAR(10))
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
		FOR Ozelllik IN (Cap,Tip) 
		) AS p
   ) p ON i.CODE = p.stokkodu

    WHERE p.Cap = @Cap AND p.Tip = @tip and dt.mevcut > 0
   ORDER BY i.CODE,dt.mevcut

RETURN  (@barkod)

END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'IgneOzelik_to_barkod'
GO
COMMIT
GO
