BEGIN TRAN
GO
ALTER TABLE [dbo].[SirketSozlesmeDetay] ADD CONSTRAINT [FK_SirketSozlesmeDetay_SirketSozlesme] FOREIGN KEY ([SirketSozlesmeID]) REFERENCES [dbo].[SirketSozlesme]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SirketSozlesmeDetay_SirketSozlesme'
GO
COMMIT
GO
