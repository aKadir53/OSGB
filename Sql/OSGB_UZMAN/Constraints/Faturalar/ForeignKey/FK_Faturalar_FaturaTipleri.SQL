BEGIN TRAN
GO
ALTER TABLE [dbo].[Faturalar] ADD CONSTRAINT [FK_Faturalar_FaturaTipleri] FOREIGN KEY ([faturatip]) REFERENCES [dbo].[FaturaTipleri]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Faturalar_FaturaTipleri'
GO
COMMIT
GO
