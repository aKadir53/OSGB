BEGIN TRAN
GO
ALTER TABLE [dbo].[RDS_SirketRisk] ADD CONSTRAINT [FK_RDS_SirketRisk_SIRKET_SUBE_TNM] FOREIGN KEY ([sirketKod],[subeKod]) REFERENCES [dbo].[SIRKET_SUBE_TNM]([sirketKod],[subeKod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_RDS_SirketRisk_SIRKET_SUBE_TNM'
GO
COMMIT
GO
