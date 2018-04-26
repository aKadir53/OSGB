BEGIN TRAN
GO
ALTER TABLE [dbo].[PersoneliseGirisMuayene] ADD CONSTRAINT [FK_PersoneliseGirisMuayene_gelisler] FOREIGN KEY ([PersonelKodu],[gelisNo]) REFERENCES [dbo].[Gelisler]([dosyaNo],[gelisNo])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_PersoneliseGirisMuayene_gelisler'
GO
COMMIT
GO
