BEGIN TRAN
GO
ALTER FUNCTION [dbo].[aytoAdi] (@kod varchar(2))
RETURNS varchar(50)
AS
BEGIN
declare @durum varchar(50)

  select @durum = (case @kod 
  when '01' then 'OCAK'
  when '02' then 'SUBAT'
  when '03' then 'MART'
  when '04' then 'NISAN'
  when '05' then 'MAYIS'
  when '06' then 'HAZIRAN'
  when '07' then 'TEMMUZ'
  when '08' then 'AGUSTOS'
  when '09' then 'EYLUL'
  when '10' then 'EKIM'
  when '11' then 'KASIM'
  when '12' then 'ARALIK'

else '' end)


return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'aytoAdi'
GO
COMMIT
GO
