BEGIN TRAN
GO
ALTER TABLE [dbo].[FirmaLogo] ADD CONSTRAINT [FK_FirmaLogo_SIRKETLER_TNM] FOREIGN KEY ([sirketKod]) REFERENCES [dbo].[SIRKETLER_TNM]([SirketKod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_FirmaLogo_SIRKETLER_TNM'
GO
COMMIT
GO
