BEGIN TRAN
GO
ALTER FUNCTION [dbo].[KODAL] (@t varchar(10) = 'DN')
RETURNS varchar(6)
AS
BEGIN
declare @No int , @Dn varchar(6)

if @t = 'DN'
begin
	set @No = (select (isnull(SLX,0)+1) from PARAMETRELER where SLK='00' and SLB='01' and SLT='DOSYANO')
	set @Dn = convert(varchar,@No)
end

if @t = 'FN'
begin
	set @No = (select (isnull(SLX,0)+1) from PARAMETRELER where SLK='00' and SLB='01' and SLT='FIRMANO')
	set @Dn = convert(varchar,@No)
end

	RETURN  (replicate('0',6-len(@Dn)) +@Dn)

END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'KODAL'
GO
COMMIT
GO
