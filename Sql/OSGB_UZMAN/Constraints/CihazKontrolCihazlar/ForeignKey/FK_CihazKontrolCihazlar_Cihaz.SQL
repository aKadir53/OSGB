BEGIN TRAN
GO
ALTER TABLE [dbo].[CihazKontrolCihazlar] ADD CONSTRAINT [FK_CihazKontrolCihazlar_Cihaz] FOREIGN KEY ([cihazKod]) REFERENCES [dbo].[Cihaz]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_CihazKontrolCihazlar_Cihaz'
GO
COMMIT
GO
