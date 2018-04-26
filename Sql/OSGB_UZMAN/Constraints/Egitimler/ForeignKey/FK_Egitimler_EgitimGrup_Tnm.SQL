BEGIN TRAN
GO
ALTER TABLE [dbo].[Egitimler] ADD CONSTRAINT [FK_Egitimler_EgitimGrup_Tnm] FOREIGN KEY ([EgitimTuru]) REFERENCES [dbo].[EgitimGrup_Tnm]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Egitimler_EgitimGrup_Tnm'
GO
COMMIT
GO
