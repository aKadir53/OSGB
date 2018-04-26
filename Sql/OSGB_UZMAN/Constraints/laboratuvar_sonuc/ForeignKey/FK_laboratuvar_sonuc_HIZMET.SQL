BEGIN TRAN
GO
ALTER TABLE [dbo].[laboratuvar_sonuc] ADD CONSTRAINT [FK_laboratuvar_sonuc_HIZMET] FOREIGN KEY ([testno]) REFERENCES [dbo].[HIZMET]([CODE])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_laboratuvar_sonuc_HIZMET'
GO
COMMIT
GO
