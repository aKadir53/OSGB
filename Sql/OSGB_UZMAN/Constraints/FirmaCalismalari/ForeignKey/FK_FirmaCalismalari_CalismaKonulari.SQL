BEGIN TRAN
GO
ALTER TABLE [dbo].[FirmaCalismalari] ADD CONSTRAINT [FK_FirmaCalismalari_CalismaKonulari] FOREIGN KEY ([KonuID]) REFERENCES [dbo].[CalismaKonulari]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_FirmaCalismalari_CalismaKonulari'
GO
COMMIT
GO
