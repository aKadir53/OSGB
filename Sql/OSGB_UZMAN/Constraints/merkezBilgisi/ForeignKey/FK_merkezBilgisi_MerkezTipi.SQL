BEGIN TRAN
GO
ALTER TABLE [dbo].[merkezBilgisi] ADD CONSTRAINT [FK_merkezBilgisi_MerkezTipi] FOREIGN KEY ([MerkezTipi]) REFERENCES [dbo].[MerkezTipleri]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_merkezBilgisi_MerkezTipi'
GO
COMMIT
GO
