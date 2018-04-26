BEGIN TRAN
GO
ALTER TABLE [dbo].[SahaGozlemSorular] ADD CONSTRAINT [FK_SahaGozlemSorular_SahaGozlemSoruGrup] FOREIGN KEY ([GozlemGrup]) REFERENCES [dbo].[SahaGozlemSoruGrup]([GozlemGrup])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SahaGozlemSorular_SahaGozlemSoruGrup'
GO
COMMIT
GO
