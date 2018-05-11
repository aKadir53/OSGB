BEGIN TRAN
GO
ALTER TABLE [dbo].[RDS_SirketRiskKaynakFK] ADD CONSTRAINT [FK_RDS_SirketRiskKaynakFK_RDS_Etkilenecekler] FOREIGN KEY ([Etkilenecekler]) REFERENCES [dbo].[RDS_Etkilenecekler]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_RDS_SirketRiskKaynakFK_RDS_Etkilenecekler'
GO
COMMIT
GO
