BEGIN TRAN
GO
ALTER FUNCTION [dbo].[TarihtoKacinciGun] (@tarih datetime)
RETURNS int
AS
BEGIN
  declare @durum int

  select @durum = datepart(dw,@tarih)

return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'TarihtoKacinciGun'
GO
COMMIT
GO
