BEGIN TRAN
GO
ALTER TABLE [dbo].[DisAktarim_Parametre] ADD CONSTRAINT [FK_DisAktarim_Parametre_SIRKETLER_TNM] FOREIGN KEY ([SirketKod]) REFERENCES [dbo].[SIRKETLER_TNM]([SirketKod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_DisAktarim_Parametre_SIRKETLER_TNM'
GO
COMMIT
GO
