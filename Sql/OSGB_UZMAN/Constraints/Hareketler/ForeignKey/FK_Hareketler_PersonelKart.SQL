BEGIN TRAN
GO
ALTER TABLE [dbo].[Hareketler] ADD CONSTRAINT [FK_Hareketler_PersonelKart] FOREIGN KEY ([dosyaNo]) REFERENCES [dbo].[PersonelKart]([dosyaNo])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Hareketler_PersonelKart'
GO
COMMIT
GO
