BEGIN TRAN
GO
ALTER FUNCTION [dbo].[fn_TestKodEslestir] (@kod varchar(10),@Id VARCHAR(10)='')
RETURNS varchar(10)
AS
BEGIN
declare @durum varchar(10),@butKodu VARCHAR(10)
  SET @butKodu = ''
  SELECT @butKodu = butKodu FROM LabTestler WHERE islemKodu = @kod
  if @butKodu <> ''
   set @durum = 'Gd'+@butKodu
 
  SET @butKodu = ''  
  SELECT @butKodu = butKodu FROM LabTestler WHERE islemKoduC = @kod
  if @butKodu <> ''
   set @durum = 'Cd'+@butKodu



return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_TestKodEslestir'
GO
COMMIT
GO
