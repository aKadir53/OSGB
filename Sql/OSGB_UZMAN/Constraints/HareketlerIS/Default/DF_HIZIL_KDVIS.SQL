BEGIN TRAN
GO
((8))
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_HIZIL_KDVIS'
GO
COMMIT
GO
