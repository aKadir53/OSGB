BEGIN TRAN
GO
ALTER TABLE [dbo].[IseGirisMuayeneSorulari] ADD CONSTRAINT [FK_IseGirisMuayeneSorulari_IseGirisMuayeneAltGruplari] FOREIGN KEY ([grupKod],[altGrupKod]) REFERENCES [dbo].[IseGirisMuayeneAltGruplari]([grupKod],[kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_IseGirisMuayeneSorulari_IseGirisMuayeneAltGruplari'
GO
COMMIT
GO
