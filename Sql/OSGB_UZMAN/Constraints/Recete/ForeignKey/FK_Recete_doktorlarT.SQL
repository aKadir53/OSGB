BEGIN TRAN
GO
ALTER TABLE [dbo].[Recete] ADD CONSTRAINT [FK_Recete_doktorlarT] FOREIGN KEY ([doktor]) REFERENCES [dbo].[DoktorlarT]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Recete_doktorlarT'
GO
COMMIT
GO
