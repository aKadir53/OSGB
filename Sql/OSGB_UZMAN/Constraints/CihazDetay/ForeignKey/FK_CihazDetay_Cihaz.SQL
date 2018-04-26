BEGIN TRAN
GO
ALTER TABLE [dbo].[CihazDetay] ADD CONSTRAINT [FK_CihazDetay_Cihaz] FOREIGN KEY ([cihazKod]) REFERENCES [dbo].[Cihaz]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_CihazDetay_Cihaz'
GO
COMMIT
GO
