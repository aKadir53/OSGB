BEGIN TRAN
GO
ALTER TABLE [dbo].[UserSettings] ADD CONSTRAINT [FK_UserSettings_ModulIslem] FOREIGN KEY ([Modul],[Islem]) REFERENCES [dbo].[ModulIslem]([Modul],[Islem])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_UserSettings_ModulIslem'
GO
COMMIT
GO
