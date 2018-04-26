BEGIN TRAN
GO
(getdate())
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_Recete_Date_Create'
GO
COMMIT
GO
