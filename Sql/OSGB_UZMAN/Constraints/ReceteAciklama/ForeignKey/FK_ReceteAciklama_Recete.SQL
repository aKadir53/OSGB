BEGIN TRAN
GO
ALTER TABLE [dbo].[ReceteAciklama] ADD CONSTRAINT [FK_ReceteAciklama_Recete] FOREIGN KEY ([receteId]) REFERENCES [dbo].[Recete]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_ReceteAciklama_Recete'
GO
COMMIT
GO
