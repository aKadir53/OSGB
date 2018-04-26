BEGIN TRAN
GO
ALTER TABLE [dbo].[SahaGozlemRaporlari] ADD CONSTRAINT [FK_SahaGozlemRaporlari_DenetimiYapanKullanici] FOREIGN KEY ([DenetimiYapanKullanici]) REFERENCES [dbo].[Users]([kullanici])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SahaGozlemRaporlari_DenetimiYapanKullanici'
GO
COMMIT
GO
