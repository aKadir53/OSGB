BEGIN TRAN
GO
ALTER TABLE [dbo].[Gelisler] ADD CONSTRAINT [FK_Gelisler_MuayeneTipleri] FOREIGN KEY ([TEDAVITURU]) REFERENCES [dbo].[MuayeneTipleri]([Kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Gelisler_MuayeneTipleri'
GO
COMMIT
GO
