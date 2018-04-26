BEGIN TRAN
GO
ALTER TABLE [dbo].[UserMenuSettings] ADD CONSTRAINT [FK_UserMenuSettings_Users] FOREIGN KEY ([Kullanici]) REFERENCES [dbo].[Users]([kullanici])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_UserMenuSettings_Users'
GO
COMMIT
GO
