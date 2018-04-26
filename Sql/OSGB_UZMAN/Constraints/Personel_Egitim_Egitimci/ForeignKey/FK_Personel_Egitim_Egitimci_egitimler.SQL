BEGIN TRAN
GO
ALTER TABLE [dbo].[Personel_Egitim_Egitimci] ADD CONSTRAINT [FK_Personel_Egitim_Egitimci_egitimler] FOREIGN KEY ([EgitimID]) REFERENCES [dbo].[Egitimler]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Personel_Egitim_Egitimci_egitimler'
GO
COMMIT
GO
