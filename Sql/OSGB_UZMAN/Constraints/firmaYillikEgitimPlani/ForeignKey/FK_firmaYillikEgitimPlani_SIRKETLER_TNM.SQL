BEGIN TRAN
GO
ALTER TABLE [dbo].[firmaYillikEgitimPlani] ADD CONSTRAINT [FK_firmaYillikEgitimPlani_SIRKETLER_TNM] FOREIGN KEY ([sirketKod]) REFERENCES [dbo].[SIRKETLER_TNM]([SirketKod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_firmaYillikEgitimPlani_SIRKETLER_TNM'
GO
COMMIT
GO
