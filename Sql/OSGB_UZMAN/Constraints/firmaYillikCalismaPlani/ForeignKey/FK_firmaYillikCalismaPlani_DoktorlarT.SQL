BEGIN TRAN
GO
ALTER TABLE [dbo].[firmaYillikCalismaPlani] ADD CONSTRAINT [FK_firmaYillikCalismaPlani_DoktorlarT] FOREIGN KEY ([doktor]) REFERENCES [dbo].[DoktorlarT]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_firmaYillikCalismaPlani_DoktorlarT'
GO
COMMIT
GO
