BEGIN TRAN
GO
ALTER FUNCTION [dbo].[fn_NoktaliTarihTovarchar] (@tarih VARCHAR(20))
RETURNS varchar(10)
AS
BEGIN
declare @durum varchar(10)

SET @durum = substring(REPLACE(@tarih,'.',''),5,4)+substring(REPLACE(@tarih,'.',''),3,2)+substring(REPLACE(@tarih,'.',''),1,2)  

return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_NoktaliTarihTovarchar'
GO
COMMIT
GO
