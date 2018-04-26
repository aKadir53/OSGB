BEGIN TRAN
GO
ALTER TABLE [dbo].[PersonelKart] ADD CONSTRAINT [FK_PersonelKart_PersonelKart] FOREIGN KEY ([SirketKod],[Sube]) REFERENCES [dbo].[SIRKET_SUBE_TNM]([sirketKod],[subeKod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_PersonelKart_PersonelKart'
GO
COMMIT
GO
