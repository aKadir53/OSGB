BEGIN TRAN
GO
ALTER TABLE [dbo].[laboratuvar_sonuc] ADD CONSTRAINT [FK_laboratuvar_sonuc_doktorlarT_1] FOREIGN KEY ([doktorno1]) REFERENCES [dbo].[DoktorlarT]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_laboratuvar_sonuc_doktorlarT_1'
GO
COMMIT
GO
