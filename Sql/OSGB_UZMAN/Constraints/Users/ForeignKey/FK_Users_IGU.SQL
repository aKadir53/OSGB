BEGIN TRAN
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [FK_Users_IGU] FOREIGN KEY ([IGU]) REFERENCES [dbo].[IGU]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Users_IGU'
GO
COMMIT
GO
