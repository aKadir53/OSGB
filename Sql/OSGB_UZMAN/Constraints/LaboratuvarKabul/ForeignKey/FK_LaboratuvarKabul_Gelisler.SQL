BEGIN TRAN
GO
ALTER TABLE [dbo].[LaboratuvarKabul] ADD CONSTRAINT [FK_LaboratuvarKabul_Gelisler] FOREIGN KEY ([dosyaNo],[gelisNo]) REFERENCES [dbo].[Gelisler]([dosyaNo],[gelisNo])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_LaboratuvarKabul_Gelisler'
GO
COMMIT
GO
