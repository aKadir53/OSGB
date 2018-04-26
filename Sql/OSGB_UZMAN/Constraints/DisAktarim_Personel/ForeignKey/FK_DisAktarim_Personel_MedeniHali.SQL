BEGIN TRAN
GO
ALTER TABLE [dbo].[DisAktarim_Personel] ADD CONSTRAINT [FK_DisAktarim_Personel_MedeniHali] FOREIGN KEY ([MedeniHali]) REFERENCES [dbo].[DisAktarim_Personel_MedeniHali]([MedeniHali])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_DisAktarim_Personel_MedeniHali'
GO
COMMIT
GO
