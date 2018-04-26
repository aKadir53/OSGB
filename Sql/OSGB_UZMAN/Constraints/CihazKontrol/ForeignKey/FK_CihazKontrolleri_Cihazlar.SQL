BEGIN TRAN
GO
ALTER TABLE [dbo].[CihazKontrol] ADD CONSTRAINT [FK_CihazKontrolleri_Cihazlar] FOREIGN KEY ([KontrolCihaz]) REFERENCES [dbo].[Cihaz]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_CihazKontrolleri_Cihazlar'
GO
COMMIT
GO
