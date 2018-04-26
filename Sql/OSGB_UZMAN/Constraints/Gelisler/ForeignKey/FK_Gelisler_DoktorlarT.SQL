BEGIN TRAN
GO
ALTER TABLE [dbo].[Gelisler] ADD CONSTRAINT [FK_Gelisler_DoktorlarT] FOREIGN KEY ([doktor]) REFERENCES [dbo].[DoktorlarT]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Gelisler_DoktorlarT'
GO
COMMIT
GO
