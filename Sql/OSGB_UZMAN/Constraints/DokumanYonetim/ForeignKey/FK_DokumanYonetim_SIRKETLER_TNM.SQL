BEGIN TRAN
GO
ALTER TABLE [dbo].[DokumanYonetim] ADD CONSTRAINT [FK_DokumanYonetim_SIRKETLER_TNM] FOREIGN KEY ([SirketKod]) REFERENCES [dbo].[SIRKETLER_TNM]([SirketKod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_DokumanYonetim_SIRKETLER_TNM'
GO
COMMIT
GO
