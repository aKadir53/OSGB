BEGIN TRAN
GO
ALTER TABLE [dbo].[HIZMET] ADD CONSTRAINT [FK_HIZMET_Hizmet_Gruplari] FOREIGN KEY ([TANIM]) REFERENCES [dbo].[Hizmet_Gruplari]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_HIZMET_Hizmet_Gruplari'
GO
COMMIT
GO
