BEGIN TRAN
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [FK_Users_DigerSaglikPersonel] FOREIGN KEY ([DigerSaglikPers]) REFERENCES [dbo].[DigerSaglikPersonel]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Users_DigerSaglikPersonel'
GO
COMMIT
GO
