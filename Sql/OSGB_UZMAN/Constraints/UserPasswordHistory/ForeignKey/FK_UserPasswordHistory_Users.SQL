BEGIN TRAN
GO
ALTER TABLE [dbo].[UserPasswordHistory] ADD CONSTRAINT [FK_UserPasswordHistory_Users] FOREIGN KEY ([Kullanici]) REFERENCES [dbo].[Users]([kullanici])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_UserPasswordHistory_Users'
GO
COMMIT
GO
