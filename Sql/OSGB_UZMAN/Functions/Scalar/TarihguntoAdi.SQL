BEGIN TRAN
GO
ALTER FUNCTION [dbo].[TarihguntoAdi] (@tarih datetime)
RETURNS varchar(50)
AS
BEGIN
  declare @durum varchar(50)

  select @durum = (case datepart(dw,@tarih)
  when 1 then 'PAZAR'
  when 2 then 'PAZARTESÝ'
  when 3 then 'SALI'
  when 4 then 'ÇARÞAMBA'
  when 5 then 'PERÞEMBE'
  when 6 then 'CUMA'
  when 7 then 'CUMARTESÝ'

else '' end)


return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'TarihguntoAdi'
GO
COMMIT
GO
