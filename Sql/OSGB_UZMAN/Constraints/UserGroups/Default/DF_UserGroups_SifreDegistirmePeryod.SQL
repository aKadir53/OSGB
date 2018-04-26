BEGIN TRAN
GO
((60))
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_UserGroups_SifreDegistirmePeryod'
GO
COMMIT
GO
