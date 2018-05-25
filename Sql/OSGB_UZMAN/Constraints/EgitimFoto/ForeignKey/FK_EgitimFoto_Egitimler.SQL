BEGIN TRAN
GO
ALTER TABLE [dbo].[EgitimFoto] ADD CONSTRAINT [FK_EgitimFoto_Egitimler] FOREIGN KEY ([egitimID]) REFERENCES [dbo].[Egitimler]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_EgitimFoto_Egitimler'
GO
COMMIT
GO
