BEGIN TRAN
GO
ALTER TABLE [dbo].[CihazDetay] ADD CONSTRAINT [FK_CihazDetay_CihazBilgileri] FOREIGN KEY ([OzellikKod]) REFERENCES [dbo].[CihazBilgileri]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_CihazDetay_CihazBilgileri'
GO
COMMIT
GO
