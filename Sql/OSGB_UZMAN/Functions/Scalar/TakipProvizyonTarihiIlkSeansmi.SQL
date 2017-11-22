BEGIN TRAN
GO
ALTER FUNCTION [dbo].[TakipProvizyonTarihiIlkSeansmi] (@takipno varchar(10))
RETURNS varchar(15)
AS
BEGIN
	declare @durum varchar(15)

	SELECT @durum =
	   CASE WHEN tb.provizyonTarihi = dbo.formattedTarih((SELECT MIN(UTarih) FROM GelisDetay WHERE dosyaNo = g.dosyaNo AND gelisNo = g.gelisno AND durum =1)) 
	   THEN 'E' ELSE 'H' END 
	FROM gelisler g
	JOIN TakipBilgisi tb ON tb.TakipNo = g.TakýpNo
	WHERE g.TakýpNo = @takipno

return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'TakipProvizyonTarihiIlkSeansmi'
GO
COMMIT
GO
