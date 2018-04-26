BEGIN TRAN
GO
ALTER TABLE [dbo].[ISGKatipExcelAktarim] ADD CONSTRAINT [FK_ISGKatipExcelAktarim_OnayDurumu] FOREIGN KEY ([OnayDurumu]) REFERENCES [dbo].[DisAktarim_ISGKatipExcel_OnayDurumu]([OnayDurumu])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_ISGKatipExcelAktarim_OnayDurumu'
GO
COMMIT
GO
