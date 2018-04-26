BEGIN TRAN
GO
ALTER TABLE [dbo].[laboratuvar_sonuc] ADD CONSTRAINT [FK_laboratuvar_sonuc_Gelisler] FOREIGN KEY ([dosyaNo],[gelisNo]) REFERENCES [dbo].[Gelisler]([dosyaNo],[gelisNo])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_laboratuvar_sonuc_Gelisler'
GO
COMMIT
GO
