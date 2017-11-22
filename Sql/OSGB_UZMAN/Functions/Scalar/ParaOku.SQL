BEGIN TRAN
GO
ALTER FUNCTION [dbo].[ParaOku] (@Sayi float)
RETURNS nvarchar(300)
AS
BEGIN
  DECLARE @Tam nvarchar(20),@Ondalik nvarchar(20),@SONUC nvarchar(300),
  @TamSayi bigint,@OndSayi int,@Dil nvarchar(20)
  SET @Dil = 'TR'
  SET @Tam='YTL'
  SET @Ondalik='YKr'
  SET @TamSayi=@Sayi
  SET @SONUC=dbo.RakamOku(@TamSayi)+' '+@Tam
  SET @TamSayi=Round((@Sayi-@TamSayi)*100,2)
  SET @SONUC=@SONUC+' '+dbo.RakamOku(@TamSayi)+' '+@Ondalik
  RETURN @SONUC
END
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'ParaOku'
GO
COMMIT
GO
