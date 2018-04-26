BEGIN TRAN
GO
ALTER TABLE [dbo].[Recete] ADD CONSTRAINT [FK_Recete_PersonelKart] FOREIGN KEY ([DosyaNo]) REFERENCES [dbo].[PersonelKart]([dosyaNo])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Recete_PersonelKart'
GO
COMMIT
GO
