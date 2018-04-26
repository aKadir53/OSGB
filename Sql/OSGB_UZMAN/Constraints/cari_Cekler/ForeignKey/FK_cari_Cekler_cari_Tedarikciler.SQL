BEGIN TRAN
GO
ALTER TABLE [dbo].[cari_Cekler] ADD CONSTRAINT [FK_cari_Cekler_cari_Tedarikciler] FOREIGN KEY ([TedarikciKod]) REFERENCES [dbo].[cari_Tedarikciler]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_cari_Cekler_cari_Tedarikciler'
GO
COMMIT
GO
