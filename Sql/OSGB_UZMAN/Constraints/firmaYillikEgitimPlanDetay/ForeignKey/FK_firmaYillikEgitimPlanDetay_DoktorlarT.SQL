BEGIN TRAN
GO
ALTER TABLE [dbo].[firmaYillikEgitimPlanDetay] ADD CONSTRAINT [FK_firmaYillikEgitimPlanDetay_DoktorlarT] FOREIGN KEY ([egitimVerenDoktor]) REFERENCES [dbo].[DoktorlarT]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_firmaYillikEgitimPlanDetay_DoktorlarT'
GO
COMMIT
GO
