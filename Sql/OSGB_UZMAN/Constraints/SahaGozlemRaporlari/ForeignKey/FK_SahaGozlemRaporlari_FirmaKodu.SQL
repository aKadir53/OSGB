BEGIN TRAN
GO
ALTER TABLE [dbo].[SahaGozlemRaporlari] ADD CONSTRAINT [FK_SahaGozlemRaporlari_FirmaKodu] FOREIGN KEY ([FirmaKodu]) REFERENCES [dbo].[SIRKETLER_TNM]([SirketKod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SahaGozlemRaporlari_FirmaKodu'
GO
COMMIT
GO
