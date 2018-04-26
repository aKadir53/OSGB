BEGIN TRAN
GO
ALTER TABLE [dbo].[Kontrol_Islem] ADD CONSTRAINT [FK_Kontrol_Islem_IGU] FOREIGN KEY ([IGU]) REFERENCES [dbo].[IGU]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Kontrol_Islem_IGU'
GO
COMMIT
GO
