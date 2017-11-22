BEGIN TRAN
GO
ALTER FUNCTION [dbo].[isoweek] (@date DATETIME)
RETURNS int
AS
BEGIN

	DECLARE @th DATETIME,@dy int
	SELECT @Th = DATEADD(DAY, 3 - (DATEPART(WEEKDAY, @date) + @@DATEFIRST - 2) % 7, @date)
	SELECT @DY = DATEPART(DAYOFYEAR, @Th)

	RETURN((@DY - 1) / 7 + 1)



end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'isoweek'
GO
COMMIT
GO
