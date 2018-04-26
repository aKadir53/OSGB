BEGIN TRAN
GO
ALTER TABLE [dbo].[cari_Tedarikciler] ADD CONSTRAINT [FK_cari_Tedarikciler_cari_CariKartDurum] FOREIGN KEY ([Durum]) REFERENCES [dbo].[cari_CariKartDurum]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_cari_Tedarikciler_cari_CariKartDurum'
GO
COMMIT
GO
