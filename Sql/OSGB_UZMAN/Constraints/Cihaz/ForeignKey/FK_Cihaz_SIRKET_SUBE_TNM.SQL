BEGIN TRAN
GO
ALTER TABLE [dbo].[Cihaz] ADD CONSTRAINT [FK_Cihaz_SIRKET_SUBE_TNM] FOREIGN KEY ([sirketKod],[subeKod]) REFERENCES [dbo].[SIRKET_SUBE_TNM]([sirketKod],[subeKod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Cihaz_SIRKET_SUBE_TNM'
GO
COMMIT
GO
