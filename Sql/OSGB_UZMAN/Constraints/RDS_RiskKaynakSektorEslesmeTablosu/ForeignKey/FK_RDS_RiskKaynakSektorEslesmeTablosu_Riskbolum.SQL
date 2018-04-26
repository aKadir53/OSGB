BEGIN TRAN
GO
ALTER TABLE [dbo].[RDS_RiskKaynakSektorEslesmeTablosu] ADD CONSTRAINT [FK_RDS_RiskKaynakSektorEslesmeTablosu_Riskbolum] FOREIGN KEY ([Bolum]) REFERENCES [dbo].[RDS_RiskBolum]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_RDS_RiskKaynakSektorEslesmeTablosu_Riskbolum'
GO
COMMIT
GO
