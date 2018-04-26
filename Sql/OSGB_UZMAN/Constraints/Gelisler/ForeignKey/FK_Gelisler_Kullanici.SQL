BEGIN TRAN
GO
ALTER TABLE [dbo].[Gelisler] ADD CONSTRAINT [FK_Gelisler_Kullanici] FOREIGN KEY ([Kullanici]) REFERENCES [dbo].[Users]([kullanici])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Gelisler_Kullanici'
GO
COMMIT
GO
