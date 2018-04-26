BEGIN TRAN
GO
ALTER TABLE [dbo].[DisAktarim_Personel] ADD CONSTRAINT [FK_DisAktarim_Personel_Cinsiyeti] FOREIGN KEY ([Cinsiyeti]) REFERENCES [dbo].[DisAktarim_Personel_Cinsiyeti]([Cinsiyeti])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_DisAktarim_Personel_Cinsiyeti'
GO
COMMIT
GO
