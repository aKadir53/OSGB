BEGIN TRAN
GO
ALTER TABLE [dbo].[RDS_SirketRisk] ADD CONSTRAINT [FK_RDS_SirketRisk_RDS_Method] FOREIGN KEY ([Method]) REFERENCES [dbo].[RDS_Method]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_RDS_SirketRisk_RDS_Method'
GO
COMMIT
GO
