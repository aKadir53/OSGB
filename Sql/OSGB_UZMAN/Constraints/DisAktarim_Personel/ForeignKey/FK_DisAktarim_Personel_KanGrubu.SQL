BEGIN TRAN
GO
ALTER TABLE [dbo].[DisAktarim_Personel] ADD CONSTRAINT [FK_DisAktarim_Personel_KanGrubu] FOREIGN KEY ([KanGrubu]) REFERENCES [dbo].[DisAktarim_Personel_KanGrubu]([KanGrubu])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_DisAktarim_Personel_KanGrubu'
GO
COMMIT
GO
