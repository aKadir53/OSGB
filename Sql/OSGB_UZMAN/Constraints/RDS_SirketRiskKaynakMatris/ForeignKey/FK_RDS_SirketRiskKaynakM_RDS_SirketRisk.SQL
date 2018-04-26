BEGIN TRAN
GO
ALTER TABLE [dbo].[RDS_SirketRiskKaynakMatris] ADD CONSTRAINT [FK_RDS_SirketRiskKaynakM_RDS_SirketRisk] FOREIGN KEY ([SirketRiskID]) REFERENCES [dbo].[RDS_SirketRisk]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_RDS_SirketRiskKaynakM_RDS_SirketRisk'
GO
COMMIT
GO
