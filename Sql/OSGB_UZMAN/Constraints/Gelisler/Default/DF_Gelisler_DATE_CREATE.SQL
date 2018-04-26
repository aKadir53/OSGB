BEGIN TRAN
GO
(getdate())
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_Gelisler_DATE_CREATE'
GO
COMMIT
GO
