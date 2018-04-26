BEGIN TRAN
GO
ALTER TABLE [dbo].[UserSettings] ADD CONSTRAINT [FK_UserSettings_Users] FOREIGN KEY ([Kullanici]) REFERENCES [dbo].[Users]([kullanici])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_UserSettings_Users'
GO
COMMIT
GO
