BEGIN TRAN
GO
ALTER TABLE [dbo].[Gelisler] ADD CONSTRAINT [FK_Gelisler_PersonelKart] FOREIGN KEY ([dosyaNo]) REFERENCES [dbo].[PersonelKart]([dosyaNo])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Gelisler_PersonelKart'
GO
COMMIT
GO
