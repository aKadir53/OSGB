BEGIN TRAN
GO
ALTER TABLE [dbo].[PersonelKart] ADD CONSTRAINT [FK_PersonelKart_Birimler] FOREIGN KEY ([Birim]) REFERENCES [dbo].[Birimler]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_PersonelKart_Birimler'
GO
COMMIT
GO
