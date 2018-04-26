BEGIN TRAN
GO
ALTER TABLE [dbo].[CihazBilgileri] ADD CONSTRAINT [FK_CihazlarBilgileri_CihazlarTurleri] FOREIGN KEY ([cihazTurKod]) REFERENCES [dbo].[CihazTurleri]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_CihazlarBilgileri_CihazlarTurleri'
GO
COMMIT
GO
