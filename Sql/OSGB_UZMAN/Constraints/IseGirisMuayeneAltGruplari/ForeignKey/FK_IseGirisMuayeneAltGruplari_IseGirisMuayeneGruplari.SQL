BEGIN TRAN
GO
ALTER TABLE [dbo].[IseGirisMuayeneAltGruplari] ADD CONSTRAINT [FK_IseGirisMuayeneAltGruplari_IseGirisMuayeneGruplari] FOREIGN KEY ([grupKod]) REFERENCES [dbo].[IseGirisMuayeneGruplari]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_IseGirisMuayeneAltGruplari_IseGirisMuayeneGruplari'
GO
COMMIT
GO
