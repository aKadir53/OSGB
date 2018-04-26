BEGIN TRAN
GO
ALTER TABLE [dbo].[cari_Cekler] ADD CONSTRAINT [FK_cari_Cekler_cari_CekDurum] FOREIGN KEY ([Durum]) REFERENCES [dbo].[cari_CekDurum]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_cari_Cekler_cari_CekDurum'
GO
COMMIT
GO
