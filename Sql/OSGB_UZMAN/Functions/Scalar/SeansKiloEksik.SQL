BEGIN TRAN
GO
ALTER FUNCTION [dbo].[SeansKiloEksik] (@dosyaNo VARCHAR(6),@gelisNo int)
RETURNS VARCHAR(100)
AS
BEGIN
DECLARE @durum VARCHAR(100)
SET @durum = '0'
  IF EXISTS(
  SELECT * FROM gelisdetay h
  JOIN gelisler g ON h.dosyaNo = g.dosyaNo AND h.gelisNo = g.gelisNo
  WHERE (g.gelisNo = @gelisNo) AND 
       (isnull(h.GIRISKILO,0)=0 or ISNULL(h.CIKISKILO,0)=0) AND h.durum = 1 AND h.dosyaNo = @dosyaNo)
  BEGIN
         SET @durum = '1'	

  END

        
 RETURN @durum           


END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'SeansKiloEksik'
GO
COMMIT
GO
