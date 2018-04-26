BEGIN TRAN
GO
ALTER TABLE [dbo].[Kontrol_Konulari] ADD CONSTRAINT [FK_Kontrol_Konulari_Kontrolislemleri] FOREIGN KEY ([kontrolislemID]) REFERENCES [dbo].[Kontrolislemleri]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_Kontrol_Konulari_Kontrolislemleri'
GO
COMMIT
GO
