BEGIN TRAN
GO
((1)-(3))
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_DoktorlarT_persembe'
GO
COMMIT
GO
