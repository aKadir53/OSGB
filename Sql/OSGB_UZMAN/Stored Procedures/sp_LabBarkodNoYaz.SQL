BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_LabBarkodNoYaz] @DosyaNo float 
AS
update PARAMETRELER 
set SLX = @DosyaNo
where SLK='00' and SLB='02' and SLT='LabBarkodNo'
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_LabBarkodNoYaz'
GO
COMMIT
GO
