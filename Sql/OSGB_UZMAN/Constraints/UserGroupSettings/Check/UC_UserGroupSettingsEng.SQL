BEGIN TRAN
GO
([dbo].[fn_CiftUserGroupSettingsEngVar]()=(0))
GO
exec sp_vw_sys_upd 'C ', 'dbo', 'UC_UserGroupSettingsEng'
GO
COMMIT
GO
