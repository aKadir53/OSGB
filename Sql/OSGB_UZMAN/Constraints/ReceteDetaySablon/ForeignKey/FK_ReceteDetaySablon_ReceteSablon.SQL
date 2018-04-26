BEGIN TRAN
GO
ALTER TABLE [dbo].[ReceteDetaySablon] ADD CONSTRAINT [FK_ReceteDetaySablon_ReceteSablon] FOREIGN KEY ([ReceteSablonID]) REFERENCES [dbo].[ReceteSablon]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_ReceteDetaySablon_ReceteSablon'
GO
COMMIT
GO
