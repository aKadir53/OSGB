BEGIN TRAN
GO
ALTER TABLE [dbo].[Hareketler] ADD CONSTRAINT [FK_Hareketler_HIZMET] FOREIGN KEY ([CODE]) REFERENCES [dbo].[HIZMET]([CODE])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Hareketler_HIZMET'
GO
COMMIT
GO
