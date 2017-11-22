BEGIN TRAN
GO
ALTER FUNCTION [dbo].[seansGunleri] (@gunler varchar(20))
RETURNS varchar(50)
AS
BEGIN
declare @durum varchar(50)
  SET @durum = ''
  IF SUBSTRING(@gunler,1,1) = '1' set @durum = @durum + '1'
  IF SUBSTRING(@gunler,2,1) = '1' set @durum = @durum + '2'
  IF SUBSTRING(@gunler,3,1) = '1' set @durum = @durum + '3'
  IF SUBSTRING(@gunler,4,1) = '1' set @durum = @durum + '4'
  IF SUBSTRING(@gunler,5,1) = '1' set @durum = @durum + '5'
  IF SUBSTRING(@gunler,6,1) = '1' set @durum = @durum + '6'
  IF SUBSTRING(@gunler,7,1) = '1' set @durum = @durum + '7'  

  


return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'seansGunleri'
GO
COMMIT
GO
