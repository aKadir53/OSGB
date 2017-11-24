BEGIN TRAN
GO
-- [CMPTR] - [17.10.2017 07:46:09]
ALTER PROCEDURE [dbo].[sp_DosyaNoYaz] @DosyaNo float, @t varchar(10) = 'DN'
AS
begin
  --set nocount on
  if @t = 'DN'
  begin
    update PARAMETRELER
    set SLX = @DosyaNo
    where SLK='00' and SLB='01' and SLT='DOSYANO'
  end

  if @t = 'FN'
  begin
    update PARAMETRELER
    set SLX = @DosyaNo
    where SLK='00' and SLB='01' and SLT='FIRMANO'
  end
  --set nocount off
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_DosyaNoYaz'
GO
COMMIT
GO
