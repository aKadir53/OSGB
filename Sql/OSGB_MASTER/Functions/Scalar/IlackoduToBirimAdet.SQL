BEGIN TRAN
GO
ALTER FUNCTION [dbo].[IlackoduToBirimAdet] (@kod varchar(20))
RETURNS float
AS
BEGIN
declare @durum float

select @durum = Alim_Es_Kullanim 
 from ILACSARF
where code = @kod and  Alim_Es_Kullanim is not null


return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'IlackoduToBirimAdet'
GO
COMMIT
GO
