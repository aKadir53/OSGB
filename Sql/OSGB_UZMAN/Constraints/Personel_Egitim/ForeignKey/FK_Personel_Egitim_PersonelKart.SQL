BEGIN TRAN
GO
ALTER TABLE [dbo].[Personel_Egitim] ADD CONSTRAINT [FK_Personel_Egitim_PersonelKart] FOREIGN KEY ([PersonelDosyaNo]) REFERENCES [dbo].[PersonelKart]([dosyaNo])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Personel_Egitim_PersonelKart'
GO
COMMIT
GO
