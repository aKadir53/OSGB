BEGIN TRAN
GO
ALTER TABLE [dbo].[firmaYillikEgitimPlanDetay] ADD CONSTRAINT [FK_firmaYillikEgitimPlanDetay_IGU] FOREIGN KEY ([egitimVerenIGU]) REFERENCES [dbo].[IGU]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_firmaYillikEgitimPlanDetay_IGU'
GO
COMMIT
GO
