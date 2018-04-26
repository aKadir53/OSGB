BEGIN TRAN
GO
ALTER TABLE [dbo].[PersoneliseGirisMuayene] ADD CONSTRAINT [FK_PersoneliseGirisMuayene_IseGirisMuayeneSorulari] FOREIGN KEY ([SoruId]) REFERENCES [dbo].[IseGirisMuayeneSorulari]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_PersoneliseGirisMuayene_IseGirisMuayeneSorulari'
GO
COMMIT
GO
