BEGIN TRAN
GO
ALTER TABLE [dbo].[DisAktarim_Personel] ADD CONSTRAINT [FK_DisAktarim_Personel_DisAktarim_Parametre] FOREIGN KEY ([DisAktarimParametreID]) REFERENCES [dbo].[DisAktarim_Parametre]([ID])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_DisAktarim_Personel_DisAktarim_Parametre'
GO
COMMIT
GO
