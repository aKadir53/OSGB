BEGIN TRAN
GO
ALTER TABLE [dbo].[ISGKatipExcelAktarim] ADD CONSTRAINT [FK_ISGKatipExcelAktarim_PersonelKategoriAdi] FOREIGN KEY ([PersonelKategoriAdi]) REFERENCES [dbo].[DisAktarim_ISGKatipExcel_PersonelKategoriAdi]([PersonelKategoriAdi])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_ISGKatipExcelAktarim_PersonelKategoriAdi'
GO
COMMIT
GO
