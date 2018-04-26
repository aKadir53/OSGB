BEGIN TRAN
GO
ALTER TABLE [dbo].[UserGroupSettings] ADD CONSTRAINT [FK_UserGroupSettings_UserGroups] FOREIGN KEY ([Kullanici]) REFERENCES [dbo].[UserGroups]([KODU])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_UserGroupSettings_UserGroups'
GO
COMMIT
GO
