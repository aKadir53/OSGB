BEGIN TRAN
GO
(getdate())
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_recordViewLog_vDate_Create'
GO
COMMIT
GO
