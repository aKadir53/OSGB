BEGIN TRAN
GO
ALTER TABLE [dbo].[RDS_SKOR] ADD CONSTRAINT [FK_RDS_SKOR_RDS_Method] FOREIGN KEY ([Metod]) REFERENCES [dbo].[RDS_Method]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_RDS_SKOR_RDS_Method'
GO
COMMIT
GO
