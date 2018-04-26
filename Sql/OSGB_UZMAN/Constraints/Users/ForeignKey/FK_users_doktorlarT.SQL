BEGIN TRAN
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [FK_users_doktorlarT] FOREIGN KEY ([doktor]) REFERENCES [dbo].[DoktorlarT]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_users_doktorlarT'
GO
COMMIT
GO
