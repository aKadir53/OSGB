BEGIN TRAN
GO
(getdate())
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_HareketlerIS_DATE_CREATE'
GO
COMMIT
GO
