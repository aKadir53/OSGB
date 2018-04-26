BEGIN TRAN
GO
ALTER TABLE [dbo].[Kontrol_IslemDetay] ADD CONSTRAINT [FK_Kontrol_IslemDetay_Kontrol_Konulari] FOREIGN KEY ([SoruId]) REFERENCES [dbo].[Kontrol_Konulari]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Kontrol_IslemDetay_Kontrol_Konulari'
GO
COMMIT
GO
