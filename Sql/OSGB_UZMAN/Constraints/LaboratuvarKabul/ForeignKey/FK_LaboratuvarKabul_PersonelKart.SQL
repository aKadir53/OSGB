BEGIN TRAN
GO
ALTER TABLE [dbo].[LaboratuvarKabul] ADD CONSTRAINT [FK_LaboratuvarKabul_PersonelKart] FOREIGN KEY ([dosyaNo]) REFERENCES [dbo].[PersonelKart]([dosyaNo])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_LaboratuvarKabul_PersonelKart'
GO
COMMIT
GO
