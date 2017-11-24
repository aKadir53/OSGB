BEGIN TRAN
GO
-- [CMPTR2] - [14.10.2017 21:55:01]
ALTER FUNCTION [dbo].[DOSYANOAL] (@t float)
RETURNS varchar(6)
AS
BEGIN
declare @DosyaNo int , @Dn varchar(6)


set @DosyaNo = (select (isnull(SLX,0)+1) from PARAMETRELER where SLK='00' and SLB='01' and SLT='DOSYANO')
set @Dn = convert(varchar,@dosyano)

--select replicate('0',6-len(@Dn)) +@Dn

RETURN  (replicate('0',6-len(@Dn)) +@Dn)

END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'DOSYANOAL'
GO
COMMIT
GO
