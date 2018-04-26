BEGIN TRAN
GO
ALTER TABLE [dbo].[SirketSahaGozetimDetay] ADD CONSTRAINT [FK_SirketSahaGozetimDetay_SahaGozetimTakipTetkikSonuc] FOREIGN KEY ([Sonuc]) REFERENCES [dbo].[SahaGozetimTakipTetkikSonuc]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SirketSahaGozetimDetay_SahaGozetimTakipTetkikSonuc'
GO
COMMIT
GO
