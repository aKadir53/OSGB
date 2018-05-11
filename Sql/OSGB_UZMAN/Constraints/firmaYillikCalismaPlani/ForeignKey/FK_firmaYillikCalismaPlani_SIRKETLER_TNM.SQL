BEGIN TRAN
GO
ALTER TABLE [dbo].[firmaYillikCalismaPlani] ADD CONSTRAINT [FK_firmaYillikCalismaPlani_SIRKETLER_TNM] FOREIGN KEY ([sirketKod]) REFERENCES [dbo].[SIRKETLER_TNM]([SirketKod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_firmaYillikCalismaPlani_SIRKETLER_TNM'
GO
COMMIT
GO
