BEGIN TRAN
GO
ALTER TABLE [dbo].[firmaYillikEgitimPlanDetay] ADD CONSTRAINT [FK_firmaYillikEgitimPlanDetay_firmaYillikEgitimPlani] FOREIGN KEY ([FirmaYillikEgitimPlanID]) REFERENCES [dbo].[firmaYillikEgitimPlani]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_firmaYillikEgitimPlanDetay_firmaYillikEgitimPlani'
GO
COMMIT
GO
