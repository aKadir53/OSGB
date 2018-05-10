BEGIN TRAN
GO
ALTER TABLE [dbo].[firmaYillikCalismaPlanDetay] ADD CONSTRAINT [FK_firmaYillikCalismaPlanDetay_firmaYillikCalismaPlani] FOREIGN KEY ([FirmaYillikCalismaPlanID]) REFERENCES [dbo].[firmaYillikCalismaPlani]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_firmaYillikCalismaPlanDetay_firmaYillikCalismaPlani'
GO
COMMIT
GO
