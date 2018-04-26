BEGIN TRAN
GO
ALTER TABLE [dbo].[Personel_Egitim] ADD CONSTRAINT [FK_Personel_Egitim_Egitimler] FOREIGN KEY ([EgitimID]) REFERENCES [dbo].[Egitimler]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Personel_Egitim_Egitimler'
GO
COMMIT
GO
