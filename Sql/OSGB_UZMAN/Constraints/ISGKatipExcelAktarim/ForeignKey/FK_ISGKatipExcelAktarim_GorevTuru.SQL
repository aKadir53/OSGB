BEGIN TRAN
GO
ALTER TABLE [dbo].[ISGKatipExcelAktarim] ADD CONSTRAINT [FK_ISGKatipExcelAktarim_GorevTuru] FOREIGN KEY ([GorevTuru]) REFERENCES [dbo].[DisAktarim_ISGKatipExcel_GorevTuru]([GorevTuru])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_ISGKatipExcelAktarim_GorevTuru'
GO
COMMIT
GO
