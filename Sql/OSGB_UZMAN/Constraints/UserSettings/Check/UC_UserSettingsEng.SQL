BEGIN TRAN
GO
([dbo].[fn_CiftUserSettingsEngVar]()=(0))
GO
exec sp_vw_sys_upd 'C ', 'dbo', 'UC_UserSettingsEng'
GO
COMMIT
GO
