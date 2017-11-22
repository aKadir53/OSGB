BEGIN TRAN
GO
ALTER FUNCTION [dbo].[IlackoduToKullanimBirim] (@kod varchar(20))
RETURNS varchar(10)
AS
BEGIN
declare @durum varchar(10)

select @durum = KullanimBirimAdi
 from ILACSARF
where code = @kod and  Alim_Es_Kullanim is not null


return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'IlackoduToKullanimBirim'
GO
COMMIT
GO
