BEGIN TRAN
GO
(15)
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_KURADR_SEVKGECSURE'
GO
COMMIT
GO
