BEGIN TRAN
GO
ALTER TABLE [dbo].[RDS_RiskKaynakSektorEslesmeTablosu] ADD CONSTRAINT [FK_RDS_RiskKaynakSektorEslesmeTablosu_TehlikeKaynak] FOREIGN KEY ([TehlikeKaynagi]) REFERENCES [dbo].[RDS_TehlikeKaynak]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_RDS_RiskKaynakSektorEslesmeTablosu_TehlikeKaynak'
GO
COMMIT
GO
