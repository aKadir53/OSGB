BEGIN TRAN
GO
ALTER TABLE [dbo].[TetkikIstemSablonItem] ADD CONSTRAINT [FK_TetkikIstemSablonItem_Sablon] FOREIGN KEY ([SablonGrupKod]) REFERENCES [dbo].[TetkikIstemGrupSablon]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_TetkikIstemSablonItem_Sablon'
GO
COMMIT
GO
