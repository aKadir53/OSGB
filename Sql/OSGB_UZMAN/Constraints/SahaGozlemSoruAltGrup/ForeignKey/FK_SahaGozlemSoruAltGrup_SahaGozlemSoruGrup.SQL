BEGIN TRAN
GO
ALTER TABLE [dbo].[SahaGozlemSoruAltGrup] ADD CONSTRAINT [FK_SahaGozlemSoruAltGrup_SahaGozlemSoruGrup] FOREIGN KEY ([GozlemGrup]) REFERENCES [dbo].[SahaGozlemSoruGrup]([GozlemGrup])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SahaGozlemSoruAltGrup_SahaGozlemSoruGrup'
GO
COMMIT
GO
