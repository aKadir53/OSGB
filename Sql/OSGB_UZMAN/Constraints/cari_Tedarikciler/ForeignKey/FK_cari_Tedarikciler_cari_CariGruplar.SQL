BEGIN TRAN
GO
ALTER TABLE [dbo].[cari_Tedarikciler] ADD CONSTRAINT [FK_cari_Tedarikciler_cari_CariGruplar] FOREIGN KEY ([CariGrup]) REFERENCES [dbo].[cari_CariGruplar]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_cari_Tedarikciler_cari_CariGruplar'
GO
COMMIT
GO
