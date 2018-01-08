BEGIN TRAN
GO
ALTER  FUNCTION [dbo].[LabBarkodNoAl] (@t float)
RETURNS varchar(10)
AS
BEGIN
declare @DosyaNo int , @Dn varchar(10)


set @DosyaNo = (select (isnull(SLX,0)+1) from PARAMETRELER where SLK='00' and SLB='02' and SLT='LabBarkodNo')
set @Dn = convert(varchar,@dosyano)

--select replicate('0',8-len(@Dn)) +@Dn

RETURN  (replicate('0',10-len(@Dn)) +@Dn)

END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'LabBarkodNoAl'
GO
COMMIT
GO
