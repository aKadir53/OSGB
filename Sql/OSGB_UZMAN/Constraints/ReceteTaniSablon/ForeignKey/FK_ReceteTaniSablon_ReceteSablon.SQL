BEGIN TRAN
GO
ALTER TABLE [dbo].[ReceteTaniSablon] ADD CONSTRAINT [FK_ReceteTaniSablon_ReceteSablon] FOREIGN KEY ([ReceteSablonID]) REFERENCES [dbo].[ReceteSablon]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_ReceteTaniSablon_ReceteSablon'
GO
COMMIT
GO
