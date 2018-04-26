BEGIN TRAN
GO
ALTER TABLE [dbo].[SIRKET_SUBE_TNM] ADD CONSTRAINT [FK_SIRKET_SUBE_TNM_DigerSaglikPersonel] FOREIGN KEY ([DigerSaglikPers]) REFERENCES [dbo].[DigerSaglikPersonel]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SIRKET_SUBE_TNM_DigerSaglikPersonel'
GO
COMMIT
GO
