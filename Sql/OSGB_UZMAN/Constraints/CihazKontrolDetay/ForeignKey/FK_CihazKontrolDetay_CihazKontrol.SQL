BEGIN TRAN
GO
ALTER TABLE [dbo].[CihazKontrolDetay] ADD CONSTRAINT [FK_CihazKontrolDetay_CihazKontrol] FOREIGN KEY ([kontrolid]) REFERENCES [dbo].[CihazKontrol]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_CihazKontrolDetay_CihazKontrol'
GO
COMMIT
GO
