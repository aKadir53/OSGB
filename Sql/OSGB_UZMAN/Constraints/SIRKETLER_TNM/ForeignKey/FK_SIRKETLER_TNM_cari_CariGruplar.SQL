BEGIN TRAN
GO
ALTER TABLE [dbo].[SIRKETLER_TNM] ADD CONSTRAINT [FK_SIRKETLER_TNM_cari_CariGruplar] FOREIGN KEY ([CariGrup]) REFERENCES [dbo].[cari_CariGruplar]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SIRKETLER_TNM_cari_CariGruplar'
GO
COMMIT
GO
