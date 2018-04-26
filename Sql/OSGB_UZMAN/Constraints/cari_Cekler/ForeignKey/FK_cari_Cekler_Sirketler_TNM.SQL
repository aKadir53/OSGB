BEGIN TRAN
GO
ALTER TABLE [dbo].[cari_Cekler] ADD CONSTRAINT [FK_cari_Cekler_Sirketler_TNM] FOREIGN KEY ([sirketKod]) REFERENCES [dbo].[SIRKETLER_TNM]([SirketKod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_cari_Cekler_Sirketler_TNM'
GO
COMMIT
GO
