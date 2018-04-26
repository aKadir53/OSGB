BEGIN TRAN
GO
ALTER TABLE [dbo].[ReceteAciklamaSablon] ADD CONSTRAINT [FK_ReceteAciklamaSablon_ReceteSablon] FOREIGN KEY ([ReceteSablonID]) REFERENCES [dbo].[ReceteSablon]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_ReceteAciklamaSablon_ReceteSablon'
GO
COMMIT
GO
