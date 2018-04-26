BEGIN TRAN
GO
((0))
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_HareketlerIS_KSATISF'
GO
COMMIT
GO
