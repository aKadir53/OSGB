BEGIN TRAN
GO
ALTER TABLE [dbo].[firmaYillikCalismaPlani] ADD CONSTRAINT [FK_firmaYillikCalismaPlani_IGU] FOREIGN KEY ([hazirlayan]) REFERENCES [dbo].[IGU]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_firmaYillikCalismaPlani_IGU'
GO
COMMIT
GO
