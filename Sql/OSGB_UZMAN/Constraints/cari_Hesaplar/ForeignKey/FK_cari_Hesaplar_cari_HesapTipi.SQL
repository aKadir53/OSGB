BEGIN TRAN
GO
ALTER TABLE [dbo].[cari_Hesaplar] ADD CONSTRAINT [FK_cari_Hesaplar_cari_HesapTipi] FOREIGN KEY ([HesapTipi]) REFERENCES [dbo].[cari_HesapTipi]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_cari_Hesaplar_cari_HesapTipi'
GO
COMMIT
GO
