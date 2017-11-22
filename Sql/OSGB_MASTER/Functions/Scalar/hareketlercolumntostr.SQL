BEGIN TRAN
GO
ALTER FUNCTION [dbo].[hareketlercolumntostr] (@dosyaNo varchar(6) , @gelisNo varchar(3))
RETURNS varchar(500)
AS
BEGIN
  declare @durum varchar(500)
  declare @test varchar(500),@testC varchar(500)
  set @test = ''
  set @testC = ''
  
  select @test = @test + l.islemKodu --(replicate('0',4-len(isnull(l.islemKodu,''))) + isnull(l.islemKodu,''))  
  from hareketler h
  join labtestler l on l.butkodu = h.code 
  where dosyano = @dosyaNo and gelisno = @gelisNo and onay = 1 and charindex('.',code) = 0 
  
  select @testC = @testC + l.islemKoduC --(replicate('0',4-len(isnull(l.islemKoduC,''))) + isnull(l.islemKoduC,''))   
  from hareketler h
  join labtestler l on l.butkodu = h.code 
  where dosyano = @dosyaNo and gelisno = @gelisNo and onay = 1 and charindex('.',code) = 0 and uygulamaAdet = 2
  

  set @durum = @test+@testC

return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'hareketlercolumntostr'
GO
COMMIT
GO
