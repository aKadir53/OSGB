BEGIN TRAN
GO
ALTER FUNCTION [dbo].[IlackoduToAlimBirim] (@kod varchar(20))
RETURNS varchar(10)
AS
BEGIN
declare @durum varchar(10)

select @durum = ALIMBIRIM
 from ILACSARF
where code = @kod and  Alim_Es_Kullanim is not null


return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'IlackoduToAlimBirim'
GO
COMMIT
GO
