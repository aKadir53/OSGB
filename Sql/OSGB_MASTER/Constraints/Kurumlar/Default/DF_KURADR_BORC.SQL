BEGIN TRAN
GO
(0)
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_KURADR_BORC'
GO
COMMIT
GO
