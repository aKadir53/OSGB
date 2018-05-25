BEGIN TRAN
GO
ALTER TABLE [dbo].[EgitimAltDetay] ADD CONSTRAINT [FK_EgitimAltDetay_Egitimler] FOREIGN KEY ([egitimID]) REFERENCES [dbo].[Egitimler]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_EgitimAltDetay_Egitimler'
GO
COMMIT
GO
