BEGIN TRAN
GO
ALTER FUNCTION [dbo].[TurkCharToEng] (@kod varchar(1000))
RETURNS varchar(1000)
AS
BEGIN
declare @durum varchar(1000)

set @durum = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(lower(@kod),'ý','I'),'ç','c'),'þ','s'),'ü','u'),'ö','o'),'ð','g') 


return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'TurkCharToEng'
GO
COMMIT
GO
