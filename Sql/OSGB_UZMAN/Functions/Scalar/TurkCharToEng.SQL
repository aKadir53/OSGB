BEGIN TRAN
GO
ALTER FUNCTION [dbo].[TurkCharToEng] (@kod varchar(1000))
RETURNS varchar(1000)
with schemabinding
AS
BEGIN
declare @durum varchar(1000)

set @durum = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@kod COLLATE TURKISH_CS_AS,'ý','i'),'Ý','I'),'Ð','G'),'Ö','O'),'Þ','S'),'Ü','U'),'Ç','C'),'ç','c'),'þ','s'),'ü','u'),'ö','o'),'ð','g') 

return(@durum)
end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'TurkCharToEng'
GO
COMMIT
GO
