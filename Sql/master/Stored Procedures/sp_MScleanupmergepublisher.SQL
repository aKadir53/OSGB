BEGIN TRAN
GO
ALTER procedure dbo.sp_MScleanupmergepublisher
as
    exec sys.sp_MScleanupmergepublisher_internal
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_MScleanupmergepublisher'
GO
COMMIT
GO
