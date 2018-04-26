BEGIN TRAN
GO
ALTER TABLE [dbo].[UserGroupMenuSettings] ADD CONSTRAINT [FK_UserGroupMenuSettings_UserGroups] FOREIGN KEY ([kullanici]) REFERENCES [dbo].[UserGroups]([KODU])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_UserGroupMenuSettings_UserGroups'
GO
COMMIT
GO
