BEGIN TRAN
GO
ALTER TABLE [dbo].[Recete] ADD CONSTRAINT [FK_Recete_Gelisler] FOREIGN KEY ([DosyaNo],[gelisNo]) REFERENCES [dbo].[Gelisler]([dosyaNo],[gelisNo])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Recete_Gelisler'
GO
COMMIT
GO
