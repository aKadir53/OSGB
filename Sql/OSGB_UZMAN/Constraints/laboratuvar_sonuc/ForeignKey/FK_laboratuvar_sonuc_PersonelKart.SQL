BEGIN TRAN
GO
ALTER TABLE [dbo].[laboratuvar_sonuc] ADD CONSTRAINT [FK_laboratuvar_sonuc_PersonelKart] FOREIGN KEY ([dosyaNo]) REFERENCES [dbo].[PersonelKart]([dosyaNo])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_laboratuvar_sonuc_PersonelKart'
GO
COMMIT
GO
