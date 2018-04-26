BEGIN TRAN
GO
ALTER TABLE [dbo].[DisAktarim_ISGKatipExcel_PersonelKategoriAdi] ADD CONSTRAINT [FK_DisAktarim_ISgKAtipExcel_PersonelKategoriAdi_UserGroups] FOREIGN KEY ([UserGroup]) REFERENCES [dbo].[UserGroups]([KODU])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_DisAktarim_ISgKAtipExcel_PersonelKategoriAdi_UserGroups'
GO
COMMIT
GO
