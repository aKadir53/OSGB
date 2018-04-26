BEGIN TRAN
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [FK_Users_UserGroups] FOREIGN KEY ([grup]) REFERENCES [dbo].[UserGroups]([KODU])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Users_UserGroups'
GO
COMMIT
GO
