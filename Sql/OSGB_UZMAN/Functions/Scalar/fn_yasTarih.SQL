BEGIN TRAN
GO
ALTER FUNCTION [dbo].[fn_yasTarih] (@dogumTarihi datetime,@tarih datetime)
RETURNS int
with schemabinding
AS
BEGIN
  declare @durum int

  declare @tarih1 datetime,@tarih2 datetime , @fark int , @gun int , 
      @yil int , @ay int

  set @tarih1 = (case when isnull(@dogumTarihi,0) = '' THEN 0 ELSE @dogumTarihi END)
  set @tarih2 = @tarih

  set @fark = convert(int,@tarih2) - convert(int,@tarih1) 
  set @yil = floor(@fark / 365.25)
  set @fark = @fark % 365

  if @fark > 0
  begin
     set @ay = floor(@fark / 30)
     set @gun = @fark % 30
  end  

  set @durum = @yil --+','+ convert(varchar,@ay)  + ',' + convert(varchar,@gun)   --+ ',' +convert(varchar,@fark)
  return(@durum)
end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_yasTarih'
GO
COMMIT
GO
