BEGIN TRAN
GO
ALTER TABLE [dbo].[SIRKETLER_TNM] ADD CONSTRAINT [FK_SIRKETLER_TNM_FaturaGonderimTipleri] FOREIGN KEY ([FaturaGonderimTipi]) REFERENCES [dbo].[FaturaGonderimTipleri]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SIRKETLER_TNM_FaturaGonderimTipleri'
GO
COMMIT
GO
