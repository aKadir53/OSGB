BEGIN TRAN
GO
ALTER TABLE [dbo].[Kontrol_IslemDetay] ADD CONSTRAINT [FK_Kontrol_IslemDetay_Kontrol_Islem_Puan] FOREIGN KEY ([puan]) REFERENCES [dbo].[Kontrol_Islem_Puan]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Kontrol_IslemDetay_Kontrol_Islem_Puan'
GO
COMMIT
GO
