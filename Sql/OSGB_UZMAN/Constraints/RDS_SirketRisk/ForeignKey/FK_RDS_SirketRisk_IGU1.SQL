BEGIN TRAN
GO
ALTER TABLE [dbo].[RDS_SirketRisk] ADD CONSTRAINT [FK_RDS_SirketRisk_IGU1] FOREIGN KEY ([hazirlayan]) REFERENCES [dbo].[IGU]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_RDS_SirketRisk_IGU1'
GO
COMMIT
GO
