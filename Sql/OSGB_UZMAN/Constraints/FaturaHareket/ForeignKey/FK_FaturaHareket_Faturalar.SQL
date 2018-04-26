BEGIN TRAN
GO
ALTER TABLE [dbo].[FaturaHareket] ADD CONSTRAINT [FK_FaturaHareket_Faturalar] FOREIGN KEY ([faturaId]) REFERENCES [dbo].[Faturalar]([sira])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_FaturaHareket_Faturalar'
GO
COMMIT
GO
