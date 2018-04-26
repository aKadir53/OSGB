BEGIN TRAN
GO
ALTER TABLE [dbo].[TetkikIstemSablonItem] ADD CONSTRAINT [FK_TetkikIstemSablonItem_HIZMET] FOREIGN KEY ([kod]) REFERENCES [dbo].[HIZMET]([CODE])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_TetkikIstemSablonItem_HIZMET'
GO
COMMIT
GO
