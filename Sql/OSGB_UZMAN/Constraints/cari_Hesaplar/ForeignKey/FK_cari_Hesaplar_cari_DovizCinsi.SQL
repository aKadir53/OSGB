BEGIN TRAN
GO
ALTER TABLE [dbo].[cari_Hesaplar] ADD CONSTRAINT [FK_cari_Hesaplar_cari_DovizCinsi] FOREIGN KEY ([DovizCinsi]) REFERENCES [dbo].[cari_DovizCinsi]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_cari_Hesaplar_cari_DovizCinsi'
GO
COMMIT
GO
