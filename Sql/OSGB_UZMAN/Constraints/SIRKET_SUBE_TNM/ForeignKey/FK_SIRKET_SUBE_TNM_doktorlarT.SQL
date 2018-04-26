BEGIN TRAN
GO
ALTER TABLE [dbo].[SIRKET_SUBE_TNM] ADD CONSTRAINT [FK_SIRKET_SUBE_TNM_doktorlarT] FOREIGN KEY ([subeDoktor]) REFERENCES [dbo].[DoktorlarT]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SIRKET_SUBE_TNM_doktorlarT'
GO
COMMIT
GO
