BEGIN TRAN
GO
ALTER TABLE [dbo].[CihazKontrolSorulari] ADD CONSTRAINT [FK_CihazKontrolSorulari_CihazTurleri] FOREIGN KEY ([cihazTurKod]) REFERENCES [dbo].[CihazTurleri]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_CihazKontrolSorulari_CihazTurleri'
GO
COMMIT
GO
