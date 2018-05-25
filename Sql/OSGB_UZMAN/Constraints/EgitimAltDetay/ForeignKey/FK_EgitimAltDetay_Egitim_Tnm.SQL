BEGIN TRAN
GO
ALTER TABLE [dbo].[EgitimAltDetay] ADD CONSTRAINT [FK_EgitimAltDetay_Egitim_Tnm] FOREIGN KEY ([kod]) REFERENCES [dbo].[Egitim_Tnm]([Kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_EgitimAltDetay_Egitim_Tnm'
GO
COMMIT
GO
