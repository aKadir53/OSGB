BEGIN TRAN
GO
ALTER TABLE [dbo].[DisAktarim_Parametre] ADD CONSTRAINT [FK_DisAktarim_Parametre_DoktorlarT] FOREIGN KEY ([Doktor]) REFERENCES [dbo].[DoktorlarT]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_DisAktarim_Parametre_DoktorlarT'
GO
COMMIT
GO
