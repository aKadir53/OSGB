BEGIN TRAN
GO
ALTER FUNCTION [dbo].[Doktorbul] (@doktorKodu varchar(10))
RETURNS varchar(50)
AS
BEGIN
declare @durum varchar(50)

select @durum = ADI from Doktorlar
where kod = @DoktorKodu


return(@durum)
END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'Doktorbul'
GO
COMMIT
GO
