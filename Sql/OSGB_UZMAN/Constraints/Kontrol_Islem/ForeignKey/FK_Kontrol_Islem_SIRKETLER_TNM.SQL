BEGIN TRAN
GO
ALTER TABLE [dbo].[Kontrol_Islem] ADD CONSTRAINT [FK_Kontrol_Islem_SIRKETLER_TNM] FOREIGN KEY ([sirketKod]) REFERENCES [dbo].[SIRKETLER_TNM]([SirketKod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Kontrol_Islem_SIRKETLER_TNM'
GO
COMMIT
GO
