BEGIN TRAN
GO
ALTER TABLE [dbo].[UserMenuSettings] ADD CONSTRAINT [FK_UserMenuSettings_MenuIslem] FOREIGN KEY ([ID]) REFERENCES [dbo].[MenuIslem]([KAYITID])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_UserMenuSettings_MenuIslem'
GO
COMMIT
GO
