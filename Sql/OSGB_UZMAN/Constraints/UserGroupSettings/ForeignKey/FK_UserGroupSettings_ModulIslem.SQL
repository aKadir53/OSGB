BEGIN TRAN
GO
ALTER TABLE [dbo].[UserGroupSettings] ADD CONSTRAINT [FK_UserGroupSettings_ModulIslem] FOREIGN KEY ([Modul],[Islem]) REFERENCES [dbo].[ModulIslem]([Modul],[Islem])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_UserGroupSettings_ModulIslem'
GO
COMMIT
GO
