BEGIN TRAN
GO
ALTER TABLE [dbo].[Hareketler] ADD CONSTRAINT [FK_Hareketler_doktorlarT_1] FOREIGN KEY ([isteyenDoktor]) REFERENCES [dbo].[DoktorlarT]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Hareketler_doktorlarT_1'
GO
COMMIT
GO
