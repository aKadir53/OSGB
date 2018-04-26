BEGIN TRAN
GO
ALTER TABLE [dbo].[SIRKETLER_TNM] ADD CONSTRAINT [FK_SIRKETLER_TNM_cari_CariKartDurum] FOREIGN KEY ([Durum]) REFERENCES [dbo].[cari_CariKartDurum]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SIRKETLER_TNM_cari_CariKartDurum'
GO
COMMIT
GO
