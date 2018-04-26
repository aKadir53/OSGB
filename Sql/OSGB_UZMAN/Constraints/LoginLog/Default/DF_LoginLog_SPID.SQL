BEGIN TRAN
GO
(@@spid)
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_LoginLog_SPID'
GO
COMMIT
GO
