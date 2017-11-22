BEGIN TRAN
GO
ALTER FUNCTION [dbo].[fn_StokdepoCikisToplamHasta](@stokkodu varchar(20),@depo varchar(2))
RETURNS numeric(18,2)
AS
BEGIN
declare @topCik numeric(18,2)
 
 select @topCik = sum(Harekettoplam) from
   (   
	select sum(adet) as HareketToplam from hareketlerIS
	where code = @stokkodu and akod = @depo
   ) toplam



	RETURN @topCik

END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_StokdepoCikisToplamHasta'
GO
COMMIT
GO
