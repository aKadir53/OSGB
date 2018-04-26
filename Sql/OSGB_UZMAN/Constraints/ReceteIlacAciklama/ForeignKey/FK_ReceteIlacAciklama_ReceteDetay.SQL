BEGIN TRAN
GO
ALTER TABLE [dbo].[ReceteIlacAciklama] ADD CONSTRAINT [FK_ReceteIlacAciklama_ReceteDetay] FOREIGN KEY ([receteDetayId]) REFERENCES [dbo].[ReceteDetay]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_ReceteIlacAciklama_ReceteDetay'
GO
COMMIT
GO
