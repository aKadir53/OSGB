BEGIN TRAN
GO
ALTER TABLE [dbo].[firmaYillikEgitimPlani] ADD CONSTRAINT [FK_firmaYillikEgitimPlani_DoktorlarT] FOREIGN KEY ([doktor]) REFERENCES [dbo].[DoktorlarT]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_firmaYillikEgitimPlani_DoktorlarT'
GO
COMMIT
GO
