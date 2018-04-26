BEGIN TRAN
GO
ALTER TABLE [dbo].[SahaGozlemRaporu] ADD CONSTRAINT [FK_SahaGozlemRaporu_RaporlarID] FOREIGN KEY ([RaporlarID]) REFERENCES [dbo].[SahaGozlemRaporlari]([ID])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SahaGozlemRaporu_RaporlarID'
GO
COMMIT
GO
