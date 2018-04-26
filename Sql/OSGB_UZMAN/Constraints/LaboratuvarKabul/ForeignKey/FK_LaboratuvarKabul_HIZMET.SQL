BEGIN TRAN
GO
ALTER TABLE [dbo].[LaboratuvarKabul] ADD CONSTRAINT [FK_LaboratuvarKabul_HIZMET] FOREIGN KEY ([code]) REFERENCES [dbo].[HIZMET]([CODE])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_LaboratuvarKabul_HIZMET'
GO
COMMIT
GO
