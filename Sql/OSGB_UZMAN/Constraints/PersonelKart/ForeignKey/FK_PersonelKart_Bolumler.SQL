BEGIN TRAN
GO
ALTER TABLE [dbo].[PersonelKart] ADD CONSTRAINT [FK_PersonelKart_Bolumler] FOREIGN KEY ([Bolum]) REFERENCES [dbo].[Bolumler]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_PersonelKart_Bolumler'
GO
COMMIT
GO
