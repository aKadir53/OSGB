BEGIN TRAN
GO
ALTER TABLE [dbo].[SirketSahaGozetimDetay] ADD CONSTRAINT [FK_SirketSahaGozetimDetay_SahaGozetimFaaliyetTuru] FOREIGN KEY ([YapilacakFaliyetTuru]) REFERENCES [dbo].[SahaGozetimFaaliyetTuru]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_SirketSahaGozetimDetay_SahaGozetimFaaliyetTuru'
GO
COMMIT
GO
