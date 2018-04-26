BEGIN TRAN
GO
ALTER TABLE [dbo].[SahaGozlemSorular] ADD CONSTRAINT [FK_SahaGozlemSorular_SahaGozlemSoruAltGrup] FOREIGN KEY ([GozlemGrup],[GozlemAltGrup]) REFERENCES [dbo].[SahaGozlemSoruAltGrup]([GozlemGrup],[GozlemAltGrup])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SahaGozlemSorular_SahaGozlemSoruAltGrup'
GO
COMMIT
GO
