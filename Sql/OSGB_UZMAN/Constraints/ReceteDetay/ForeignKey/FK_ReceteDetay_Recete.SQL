BEGIN TRAN
GO
ALTER TABLE [dbo].[ReceteDetay] ADD CONSTRAINT [FK_ReceteDetay_Recete] FOREIGN KEY ([ReceteID]) REFERENCES [dbo].[Recete]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_ReceteDetay_Recete'
GO
COMMIT
GO
