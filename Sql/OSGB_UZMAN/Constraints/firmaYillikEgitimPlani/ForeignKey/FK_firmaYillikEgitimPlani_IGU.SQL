BEGIN TRAN
GO
ALTER TABLE [dbo].[firmaYillikEgitimPlani] ADD CONSTRAINT [FK_firmaYillikEgitimPlani_IGU] FOREIGN KEY ([hazirlayan]) REFERENCES [dbo].[IGU]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_firmaYillikEgitimPlani_IGU'
GO
COMMIT
GO
