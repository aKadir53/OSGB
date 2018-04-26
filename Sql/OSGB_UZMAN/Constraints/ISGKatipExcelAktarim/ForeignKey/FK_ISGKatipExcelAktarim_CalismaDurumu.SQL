BEGIN TRAN
GO
ALTER TABLE [dbo].[ISGKatipExcelAktarim] ADD CONSTRAINT [FK_ISGKatipExcelAktarim_CalismaDurumu] FOREIGN KEY ([CalismaDurumu]) REFERENCES [dbo].[DisAktarim_ISGKatipExcel_CalismaDurumu]([CalismaDurumu])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_ISGKatipExcelAktarim_CalismaDurumu'
GO
COMMIT
GO
