BEGIN TRAN
GO
ALTER TABLE [dbo].[SahaGozlemRaporlari] ADD CONSTRAINT [FK_SahaGozlemRaporlari_SIRKET_SUBE_TNM] FOREIGN KEY ([FirmaKodu],[SubeKod]) REFERENCES [dbo].[SIRKET_SUBE_TNM]([sirketKod],[subeKod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SahaGozlemRaporlari_SIRKET_SUBE_TNM'
GO
COMMIT
GO
