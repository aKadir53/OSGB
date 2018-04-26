BEGIN TRAN
GO
ALTER TABLE [dbo].[Hareketler] ADD CONSTRAINT [FK_Hareketler_Gelisler] FOREIGN KEY ([dosyaNo],[gelisNo]) REFERENCES [dbo].[Gelisler]([dosyaNo],[gelisNo])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Hareketler_Gelisler'
GO
COMMIT
GO
