BEGIN TRAN
GO
ALTER FUNCTION KurumBilgi(@t varchar(20))
RETURNS varchar(50)
AS
BEGIN
declare @kurum varchar(50)
set @kurum = ''

if @t = 'FirmaAdi'
begin 
    set @kurum = (select  merkezAdi from merkezBilgisi)
end

if @t = 'Adres'
begin 
    set @kurum = (select  merkezAdi from merkezBilgisi)
end




RETURN  @kurum  

END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'KurumBilgi'
GO
COMMIT
GO
