BEGIN TRAN
GO
ALTER TABLE [dbo].[FormCaption] ADD CONSTRAINT [FK_FormCaption_UserGroups] FOREIGN KEY ([UserGroup]) REFERENCES [dbo].[UserGroups]([KODU])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_FormCaption_UserGroups'
GO
COMMIT
GO
