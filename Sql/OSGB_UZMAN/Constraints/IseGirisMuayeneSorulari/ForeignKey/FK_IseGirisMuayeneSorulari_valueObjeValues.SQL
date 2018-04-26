BEGIN TRAN
GO
ALTER TABLE [dbo].[IseGirisMuayeneSorulari] ADD CONSTRAINT [FK_IseGirisMuayeneSorulari_valueObjeValues] FOREIGN KEY ([valueObjevalues]) REFERENCES [dbo].[valueObjeValues]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_IseGirisMuayeneSorulari_valueObjeValues'
GO
COMMIT
GO
