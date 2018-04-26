BEGIN TRAN
GO
ALTER TABLE [dbo].[KontrolUserSettings] ADD CONSTRAINT [FK_KontrolUserSettings_Users] FOREIGN KEY ([kullanici]) REFERENCES [dbo].[Users]([kullanici])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_KontrolUserSettings_Users'
GO
COMMIT
GO
