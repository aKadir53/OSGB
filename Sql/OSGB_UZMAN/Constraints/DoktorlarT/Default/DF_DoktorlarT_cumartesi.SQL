BEGIN TRAN
GO
((1)-(2))
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_DoktorlarT_cumartesi'
GO
COMMIT
GO
