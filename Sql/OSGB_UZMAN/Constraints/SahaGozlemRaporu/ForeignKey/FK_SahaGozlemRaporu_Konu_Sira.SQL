BEGIN TRAN
GO
ALTER TABLE [dbo].[SahaGozlemRaporu] ADD CONSTRAINT [FK_SahaGozlemRaporu_Konu_Sira] FOREIGN KEY ([Konu_Sira]) REFERENCES [dbo].[SahaGozlemSorular]([ID])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SahaGozlemRaporu_Konu_Sira'
GO
COMMIT
GO
