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
	set @Dn =   (replicate('0',6-len(@Dn)) +@Dn)
end
else
if @t = 'FN'
begin
	set @No = (select (isnull(SLX,0)+1) from PARAMETRELER where SLK='00' and SLB='01' and SLT='FIRMANO')
	set @Dn = convert(varchar,@No)
	set @Dn =   (replicate('0',6-len(@Dn)) +@Dn)
end
else
if @t = 'DR'
begin
	set @No = (select (isnull(SLX,0)+1) from PARAMETRELER where SLK='00' and SLB='01' and SLT='DOKTORNO')
	set @Dn = convert(varchar,@No)
	
	set @Dn =  (replicate('0',4-len(@Dn)) +@Dn)
end
else
if @t = 'IG'
begin
	set @No = (select (isnull(SLX,0)+1) from PARAMETRELER where SLK='00' and SLB='01' and SLT='IGUNO')
	set @Dn = convert(varchar,@No)
	
	set @Dn =  (replicate('0',4-len(@Dn)) +@Dn)
end
else
if @t = 'DS'
begin
	set @No = (select (isnull(SLX,0)+1) from PARAMETRELER where SLK='00' and SLB='01' and SLT='DIGERSAGLIKNO')
	set @Dn = convert(varchar,@No)
	
	set @Dn =  (replicate('0',4-len(@Dn)) +@Dn)
end
else
if @t = 'TE'
begin
	set @No = (select (isnull(SLX,0)+1) from PARAMETRELER where SLK='00' and SLB='01' and SLT='TEDARIKCI')
	set @Dn = convert(varchar,@No)
	
	set @Dn = 'T'+ (replicate('0',5-len(@Dn)) +@Dn)
end


return @Dn



END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'KODAL'
GO
COMMIT
GO
