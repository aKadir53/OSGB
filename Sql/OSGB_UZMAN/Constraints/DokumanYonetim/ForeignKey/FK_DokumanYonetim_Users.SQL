BEGIN TRAN
GO
ALTER TABLE [dbo].[DokumanYonetim] ADD CONSTRAINT [FK_DokumanYonetim_Users] FOREIGN KEY ([YukleyenUser]) REFERENCES [dbo].[Users]([kullanici])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_DokumanYonetim_Users'
GO
COMMIT
GO
