BEGIN TRAN
GO
ALTER TABLE [dbo].[DisAktarim_Parametre] ADD CONSTRAINT [FK_DisAktarim_Parametre_Users] FOREIGN KEY ([Kullanici]) REFERENCES [dbo].[Users]([kullanici])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_DisAktarim_Parametre_Users'
GO
COMMIT
GO
