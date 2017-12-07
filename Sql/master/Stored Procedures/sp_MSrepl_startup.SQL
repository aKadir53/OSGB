BEGIN TRAN
GO
ALTER procedure dbo.sp_MSrepl_startup
as
    exec sys.sp_MSrepl_startup_internal
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_MSrepl_startup'
GO
COMMIT
GO
