BEGIN TRAN
GO
ALTER TABLE [dbo].[MenuIslem_SK] ADD CONSTRAINT [FK_MenuIslem_SK_Users] FOREIGN KEY ([Kullanici]) REFERENCES [dbo].[Users]([kullanici])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_MenuIslem_SK_Users'
GO
COMMIT
GO
