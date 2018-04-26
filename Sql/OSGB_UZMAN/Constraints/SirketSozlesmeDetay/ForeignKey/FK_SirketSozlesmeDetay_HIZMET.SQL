BEGIN TRAN
GO
ALTER TABLE [dbo].[SirketSozlesmeDetay] ADD CONSTRAINT [FK_SirketSozlesmeDetay_HIZMET] FOREIGN KEY ([HizmetKodu]) REFERENCES [dbo].[HIZMET]([CODE])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SirketSozlesmeDetay_HIZMET'
GO
COMMIT
GO
