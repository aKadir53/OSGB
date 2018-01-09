BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_YeniLabKabulNoAl] 
AS



Declare @dn varchar(10), @barkodNo varchar(10)


set @Dn = DBO.LabBarkodNoAl(0)
set @barkodNo = @dn
exec sp_LabBarkodNoYaz @barkodNo

select @dn
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_YeniLabKabulNoAl'
GO
COMMIT
GO
