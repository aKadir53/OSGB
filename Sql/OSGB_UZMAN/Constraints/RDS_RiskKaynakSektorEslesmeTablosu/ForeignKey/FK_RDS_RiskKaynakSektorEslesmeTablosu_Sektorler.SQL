BEGIN TRAN
GO
ALTER TABLE [dbo].[RDS_RiskKaynakSektorEslesmeTablosu] ADD CONSTRAINT [FK_RDS_RiskKaynakSektorEslesmeTablosu_Sektorler] FOREIGN KEY ([sektorid]) REFERENCES [dbo].[RDS_Sektorler]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_RDS_RiskKaynakSektorEslesmeTablosu_Sektorler'
GO
COMMIT
GO
