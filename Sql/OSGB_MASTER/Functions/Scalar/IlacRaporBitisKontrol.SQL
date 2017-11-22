BEGIN TRAN
GO
ALTER FUNCTION [dbo].[IlacRaporBitisKontrol] (@dosyaNo varchar(6))
RETURNS varchar(150)
AS
BEGIN
	declare @durum varchar(150)
	DECLARE @gun integer
	SET @gun = (SELECT SLX FROM parametreler WHERE SLK = '30' AND SLB = '01')

	SELECT @durum = case when @gun >= DATEDIFF(dd,GETDATE(),bitisTarihi) AND DATEDIFF(dd,GETDATE(),bitisTarihi) >= 0 THEN 'Ýlaç rapor bitiþ süresi ' + 
				 CAST(DATEDIFF(dd,GETDATE(),bitisTarihi) AS VARCHAR) + ' günden az kalan rapor var , Lütfen Kontrol Ediniz' ELSE '' end 
	FROM Raporlar
	WHERE dosyaNo = @dosyaNo AND turu = 10 AND 
    @gun >= DATEDIFF(dd,GETDATE(),bitisTarihi) AND DATEDIFF(dd,GETDATE(),bitisTarihi) >= 0

    return(@durum)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'IlacRaporBitisKontrol'
GO
COMMIT
GO
