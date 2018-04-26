BEGIN TRAN
GO
ALTER TABLE [dbo].[Cihaz] ADD CONSTRAINT [FK_Cihaz_CihazTurleri] FOREIGN KEY ([cihazTurKod]) REFERENCES [dbo].[CihazTurleri]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Cihaz_CihazTurleri'
GO
COMMIT
GO
