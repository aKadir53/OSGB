BEGIN TRAN
GO
ALTER TABLE [dbo].[ISGKatipExcelAktarim] ADD CONSTRAINT [FK_ISGKatipExcelAktarim_CalismaSekli] FOREIGN KEY ([CalismaSekli]) REFERENCES [dbo].[DisAktarim_ISGKatipExcel_CalismaSekli]([CalismaSekli])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_ISGKatipExcelAktarim_CalismaSekli'
GO
COMMIT
GO
