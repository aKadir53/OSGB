BEGIN TRAN
GO
ALTER TABLE [dbo].[SahaGozlemRaporlari] ADD CONSTRAINT [FK_SahaGozlemRaporlari_GozlemGrup] FOREIGN KEY ([GozlemGrup]) REFERENCES [dbo].[SahaGozlemSoruGrup]([GozlemGrup])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SahaGozlemRaporlari_GozlemGrup'
GO
COMMIT
GO
