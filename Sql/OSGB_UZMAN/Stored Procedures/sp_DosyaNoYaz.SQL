BEGIN TRAN
GO
-- [CMPTR2] - [26.09.2017 14:47:48]
ALTER PROCEDURE [dbo].[sp_DosyaNoYaz] @DosyaNo float ,@t varchar(10) = 'DN'
AS

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
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_DosyaNoYaz'
GO
COMMIT
GO
