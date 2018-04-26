BEGIN TRAN
GO
ALTER TABLE [dbo].[laboratuvar_sonuc] ADD CONSTRAINT [FK_laboratuvar_sonuc_doktorlarT_2] FOREIGN KEY ([doktorno2]) REFERENCES [dbo].[DoktorlarT]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_laboratuvar_sonuc_doktorlarT_2'
GO
COMMIT
GO
