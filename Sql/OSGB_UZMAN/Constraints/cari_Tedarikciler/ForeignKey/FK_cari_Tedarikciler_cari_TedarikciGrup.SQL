BEGIN TRAN
GO
ALTER TABLE [dbo].[cari_Tedarikciler] ADD CONSTRAINT [FK_cari_Tedarikciler_cari_TedarikciGrup] FOREIGN KEY ([TedarikciGrup]) REFERENCES [dbo].[cari_TedarikciGrup]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_cari_Tedarikciler_cari_TedarikciGrup'
GO
COMMIT
GO
