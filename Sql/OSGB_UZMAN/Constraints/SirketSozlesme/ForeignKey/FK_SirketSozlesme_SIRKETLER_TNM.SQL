BEGIN TRAN
GO
ALTER TABLE [dbo].[SirketSozlesme] ADD CONSTRAINT [FK_SirketSozlesme_SIRKETLER_TNM] FOREIGN KEY ([SirketKod]) REFERENCES [dbo].[SIRKETLER_TNM]([SirketKod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SirketSozlesme_SIRKETLER_TNM'
GO
COMMIT
GO
