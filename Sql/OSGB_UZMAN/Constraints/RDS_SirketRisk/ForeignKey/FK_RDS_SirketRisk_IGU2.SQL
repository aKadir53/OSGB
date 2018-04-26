BEGIN TRAN
GO
ALTER TABLE [dbo].[RDS_SirketRisk] ADD CONSTRAINT [FK_RDS_SirketRisk_IGU2] FOREIGN KEY ([paylasilan]) REFERENCES [dbo].[IGU]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_RDS_SirketRisk_IGU2'
GO
COMMIT
GO
