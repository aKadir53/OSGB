BEGIN TRAN
GO
ALTER TABLE [dbo].[SirketSahaGozetimDetay] ADD CONSTRAINT [FK_SirketSahaGozetimDetay_RiskBolum] FOREIGN KEY ([Bolum]) REFERENCES [dbo].[RDS_RiskBolum]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SirketSahaGozetimDetay_RiskBolum'
GO
COMMIT
GO
