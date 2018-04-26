BEGIN TRAN
GO
ALTER TABLE [dbo].[Kontrol_Islem] ADD CONSTRAINT [FK_Kontrol_Islem_DoktorlarT] FOREIGN KEY ([doktor]) REFERENCES [dbo].[DoktorlarT]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Kontrol_Islem_DoktorlarT'
GO
COMMIT
GO
