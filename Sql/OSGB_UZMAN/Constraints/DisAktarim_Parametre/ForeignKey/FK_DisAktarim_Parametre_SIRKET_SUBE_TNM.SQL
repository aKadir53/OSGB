BEGIN TRAN
GO
ALTER TABLE [dbo].[DisAktarim_Parametre] ADD CONSTRAINT [FK_DisAktarim_Parametre_SIRKET_SUBE_TNM] FOREIGN KEY ([SirketKod],[SubeKod]) REFERENCES [dbo].[SIRKET_SUBE_TNM]([sirketKod],[subeKod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_DisAktarim_Parametre_SIRKET_SUBE_TNM'
GO
COMMIT
GO
