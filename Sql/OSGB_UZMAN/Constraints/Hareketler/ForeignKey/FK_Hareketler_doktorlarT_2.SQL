BEGIN TRAN
GO
ALTER TABLE [dbo].[Hareketler] ADD CONSTRAINT [FK_Hareketler_doktorlarT_2] FOREIGN KEY ([yapanDoktor]) REFERENCES [dbo].[DoktorlarT]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Hareketler_doktorlarT_2'
GO
COMMIT
GO
