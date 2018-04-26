BEGIN TRAN
GO
ALTER TABLE [dbo].[LaboratuvarKabul] ADD CONSTRAINT [FK_LaboratuvarKabul_doktorlarT_1] FOREIGN KEY ([doktor]) REFERENCES [dbo].[DoktorlarT]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_LaboratuvarKabul_doktorlarT_1'
GO
COMMIT
GO
