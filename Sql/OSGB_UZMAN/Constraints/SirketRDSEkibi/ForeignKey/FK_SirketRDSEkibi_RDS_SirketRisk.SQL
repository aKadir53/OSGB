BEGIN TRAN
GO
ALTER TABLE [dbo].[SirketRDSEkibi] ADD CONSTRAINT [FK_SirketRDSEkibi_RDS_SirketRisk] FOREIGN KEY ([SirketRiskID]) REFERENCES [dbo].[RDS_SirketRisk]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SirketRDSEkibi_RDS_SirketRisk'
GO
COMMIT
GO
