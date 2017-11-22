BEGIN TRAN
GO
ALTER FUNCTION [dbo].[IlackoduPeryot] (@kod varchar(20) , @dosyaNo varchar(6) , @gelisNo int)
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

select  @durum = bDozPeryot 
  from ETkenMaddeSutKurallari
where EtkenMadde = (select ETKENMADDE from ILACLAR where code = @kod)
   
end

if @hgb >11 and @hgb <11.9
begin
 
select @durum = iDozPeryot
  from ETkenMaddeSutKurallari
where EtkenMadde = (select ETKENMADDE from ILACLAR where code = @kod)

end



if @durum = ''
begin
	select @durum = bDozPeryot 
	  from ETkenMaddeSutKurallari
	where EtkenMadde = (select ETKENMADDE from ILACLAR where code = @kod)    
end

if @durum = ''
set @durum = '3'

return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'IlackoduPeryot'
GO
COMMIT
GO
