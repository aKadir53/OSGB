BEGIN TRAN
GO
ALTER TABLE [dbo].[CalismaKonulari] ADD CONSTRAINT [FK_CalismaKonulari_CalismaKonuGruplari] FOREIGN KEY ([grup]) REFERENCES [dbo].[CalismaKonuGruplari]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_CalismaKonulari_CalismaKonuGruplari'
GO
COMMIT
GO
