BEGIN TRAN
GO
ALTER TABLE [dbo].[AnamnezDosya] ADD CONSTRAINT [FK_AnamnezDosya_GELISLER] FOREIGN KEY ([dosyaNo],[gelisNo]) REFERENCES [dbo].[Gelisler]([dosyaNo],[gelisNo])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_AnamnezDosya_GELISLER'
GO
COMMIT
GO
