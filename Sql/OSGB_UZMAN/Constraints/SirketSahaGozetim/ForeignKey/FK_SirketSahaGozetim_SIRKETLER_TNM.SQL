BEGIN TRAN
GO
ALTER TABLE [dbo].[SirketSahaGozetim] ADD CONSTRAINT [FK_SirketSahaGozetim_SIRKETLER_TNM] FOREIGN KEY ([sirketKod]) REFERENCES [dbo].[SIRKETLER_TNM]([SirketKod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SirketSahaGozetim_SIRKETLER_TNM'
GO
COMMIT
GO
