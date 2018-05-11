BEGIN TRAN
GO
ALTER TABLE [dbo].[CihazKontrol] ADD CONSTRAINT [FK_cihazKontrol_IGU] FOREIGN KEY ([IGU]) REFERENCES [dbo].[IGU]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_cihazKontrol_IGU'
GO
COMMIT
GO
