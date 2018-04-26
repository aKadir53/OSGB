BEGIN TRAN
GO
ALTER TABLE [dbo].[Egitim_Tnm] ADD CONSTRAINT [FK_Egitim_Tnm_EgitimGrup_tnm] FOREIGN KEY ([grup]) REFERENCES [dbo].[EgitimGrup_Tnm]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Egitim_Tnm_EgitimGrup_tnm'
GO
COMMIT
GO
