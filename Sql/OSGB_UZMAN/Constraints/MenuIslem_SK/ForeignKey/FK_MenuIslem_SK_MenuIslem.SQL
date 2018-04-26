BEGIN TRAN
GO
ALTER TABLE [dbo].[MenuIslem_SK] ADD CONSTRAINT [FK_MenuIslem_SK_MenuIslem] FOREIGN KEY ([KAYITID]) REFERENCES [dbo].[MenuIslem]([KAYITID])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_MenuIslem_SK_MenuIslem'
GO
COMMIT
GO
