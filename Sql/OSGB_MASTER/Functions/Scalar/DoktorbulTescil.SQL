BEGIN TRAN
GO
ALTER FUNCTION [dbo].[DoktorbulTescil] (@doktorTescil varchar(10))
RETURNS varchar(50)
AS
BEGIN
declare @durum varchar(50)

select @durum = ADI from Doktorlar
where TescilNo = @doktorTescil

return(@durum)
END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'DoktorbulTescil'
GO
COMMIT
GO
