BEGIN TRAN
GO
ALTER TABLE [dbo].[SirketSahaDenetimDetay] ADD CONSTRAINT [FK_SirketSahaDenetimDetay_RiskBolum] FOREIGN KEY ([Bolum]) REFERENCES [dbo].[RDS_RiskBolum]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SirketSahaDenetimDetay_RiskBolum'
GO
COMMIT
GO
