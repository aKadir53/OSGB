BEGIN TRAN
GO
ALTER FUNCTION [dbo].[IlackoduPeryotAdet] (@kod varchar(20) , @dosyaNo varchar(6) , @gelisNo int)
RETURNS varchar(500)
AS
BEGIN
declare @durum varchar(500)

declare  @HGB float , @bDozP float ,  @iDozP varchar(10) 

select @HGB = Gd from hareketler
where dosyaNO = @dosyaNo and gelisNO = @gelisNo and code  = '901620.3'


set @durum = ''

if @hgb < 11
begin

	select  @durum = cast(bDozPeryotAdet as varchar)   
	  from ETkenMaddeSutKurallari
	where EtkenMadde = (select ETKENMADDE from ILACLAR where code = @kod)
	   
end

if @hgb >11 and @hgb <11.9
begin
 
	select @durum = cast(iDozPeryotAdet as varchar)
	  from ETkenMaddeSutKurallari
	where EtkenMadde = (select ETKENMADDE from ILACLAR where code = @kod)

end

if @durum = ''
begin
	select @durum = cast(bDozPeryotAdet as varchar)
	  from ETkenMaddeSutKurallari
	where EtkenMadde = (select ETKENMADDE from ILACLAR where code = @kod)
end

if @durum = ''
set @durum = '1'



return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'IlackoduPeryotAdet'
GO
COMMIT
GO
