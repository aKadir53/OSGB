BEGIN TRAN
GO
ALTER FUNCTION [dbo].[tarihFarkToDonemler] (@tarih1 VARCHAR(10) , @tarih2 VARCHAR(10))
RETURNS @table TABLE (donem VARCHAR(15))
AS
BEGIN
	
	DECLARE @d1 int , @d2 int
	SET @d1 = cast(substring(@tarih1,5,2) AS INT)
	SET @d2 = cast(substring(@tarih2,5,2) AS INT)

	WHILE not @d1 > @d2
	BEGIN
		INSERT INTO @table
		SELECT dbo.aytoAdi('0'+cast(@d1 AS VARchar))
		set @d1 = @d1 + 1
	END
	--SELECT * FROM @table
	return

end
GO
exec sp_vw_sys_upd 'TF', 'dbo', 'tarihFarkToDonemler'
GO
COMMIT
GO
