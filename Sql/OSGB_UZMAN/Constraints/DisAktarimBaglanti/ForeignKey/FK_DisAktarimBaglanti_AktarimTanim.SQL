BEGIN TRAN
GO
ALTER TABLE [dbo].[DisAktarimBaglanti] ADD CONSTRAINT [FK_DisAktarimBaglanti_AktarimTanim] FOREIGN KEY ([AktarimTanimID]) REFERENCES [dbo].[DisAktarimTanim]([ID])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_DisAktarimBaglanti_AktarimTanim'
GO
COMMIT
GO
