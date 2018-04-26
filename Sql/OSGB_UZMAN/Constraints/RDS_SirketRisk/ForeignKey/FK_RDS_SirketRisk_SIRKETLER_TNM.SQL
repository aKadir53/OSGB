BEGIN TRAN
GO
ALTER TABLE [dbo].[RDS_SirketRisk] ADD CONSTRAINT [FK_RDS_SirketRisk_SIRKETLER_TNM] FOREIGN KEY ([sirketKod]) REFERENCES [dbo].[SIRKETLER_TNM]([SirketKod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_RDS_SirketRisk_SIRKETLER_TNM'
GO
COMMIT
GO
