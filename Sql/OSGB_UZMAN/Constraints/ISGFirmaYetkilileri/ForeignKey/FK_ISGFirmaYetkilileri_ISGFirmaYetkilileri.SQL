BEGIN TRAN
GO
ALTER TABLE [dbo].[ISGFirmaYetkilileri] ADD CONSTRAINT [FK_ISGFirmaYetkilileri_ISGFirmaYetkilileri] FOREIGN KEY ([sirketKod]) REFERENCES [dbo].[SIRKETLER_TNM]([SirketKod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_ISGFirmaYetkilileri_ISGFirmaYetkilileri'
GO
COMMIT
GO
