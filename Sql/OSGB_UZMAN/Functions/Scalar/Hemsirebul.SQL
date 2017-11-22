BEGIN TRAN
GO
ALTER FUNCTION [dbo].[Hemsirebul] (@doktorKodu varchar(10))
RETURNS varchar(50)
AS
BEGIN
declare @durum varchar(50)

select @durum = ADI from Hemsireler
where kod = @DoktorKodu


return(@durum)
END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'Hemsirebul'
GO
COMMIT
GO
