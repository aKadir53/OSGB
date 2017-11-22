BEGIN TRAN
GO
ALTER FUNCTION [dbo].[fn_FormattedTarih] (@format varchar(12),@tarih DATETIME)
RETURNS varchar(12)
AS
BEGIN
declare @durum varchar(12),@t VARCHAR(10),@s VARCHAR(4)

IF @format = 'YYYYMMDDHHMM'
BEGIN
  set @t = CONVERT(VARCHAR,@tarih,112)
  SET @s =  SUBSTRING(REPLACE(CONVERT(VARCHAR,@tarih,108),':',''),1,4)	
  set @durum = @t+@s      
end               

IF @format = 'YYYYMMDD'
BEGIN
  set @t = CONVERT(VARCHAR,@tarih,112)
  SET @s =  SUBSTRING(REPLACE(CONVERT(VARCHAR,@tarih,108),':',''),1,4)	
  set @durum = @t    
end               

IF @format = 'HHMM'
BEGIN
  --set @t = CONVERT(VARCHAR,@tarih,112)
  SET @s =  SUBSTRING(REPLACE(CONVERT(VARCHAR,@tarih,108),':',''),1,4)	
  set @durum = @s    
end 

return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_FormattedTarih'
GO
COMMIT
GO
