BEGIN TRAN
GO
ALTER TABLE [dbo].[Egitimler] ADD CONSTRAINT [FK_Egitimler_Sirket] FOREIGN KEY ([SirketKod]) REFERENCES [dbo].[SIRKETLER_TNM]([SirketKod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Egitimler_Sirket'
GO
COMMIT
GO
