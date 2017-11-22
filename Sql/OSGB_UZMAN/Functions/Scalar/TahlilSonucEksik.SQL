BEGIN TRAN
GO
ALTER FUNCTION [dbo].[TahlilSonucEksik] (@dosyaNo VARCHAR(6),@gelisNo int)
RETURNS VARCHAR(100)
AS
BEGIN
DECLARE @durum VARCHAR(100)
SET @durum = '0'
  IF EXISTS(
  SELECT * FROM hareketler h
  JOIN gelisler g ON h.dosyaNo = g.dosyaNo AND h.gelisNo = g.gelisNo
  WHERE (g.gelisNo = @gelisNo) AND 
       ((isnull(h.gd,0)=0 and ISNULL(h.Cd,0)=0) AND isnull(h.islemAciklamasi,'') = '') AND h.onay = 1 AND code <> '901620'
        AND h.dosyaNo = @dosyaNo)
  BEGIN
         SET @durum = '1'	

  END

        
 RETURN @durum           


END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'TahlilSonucEksik'
GO
COMMIT
GO
