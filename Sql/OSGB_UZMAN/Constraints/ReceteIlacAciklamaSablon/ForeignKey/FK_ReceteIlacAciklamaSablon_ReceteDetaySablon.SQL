BEGIN TRAN
GO
ALTER TABLE [dbo].[ReceteIlacAciklamaSablon] ADD CONSTRAINT [FK_ReceteIlacAciklamaSablon_ReceteDetaySablon] FOREIGN KEY ([ReceteDetaySablonID]) REFERENCES [dbo].[ReceteDetaySablon]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_ReceteIlacAciklamaSablon_ReceteDetaySablon'
GO
COMMIT
GO
