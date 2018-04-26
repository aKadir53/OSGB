BEGIN TRAN
GO
ALTER TABLE [dbo].[UserGroupMenuSettings] ADD CONSTRAINT [FK_UserGroupMenuSettings_MenuIslem] FOREIGN KEY ([ID]) REFERENCES [dbo].[MenuIslem]([KAYITID])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_UserGroupMenuSettings_MenuIslem'
GO
COMMIT
GO
