BEGIN TRAN
GO
ALTER TABLE [dbo].[ReceteTani] ADD CONSTRAINT [FK_ReceteTani_Recete] FOREIGN KEY ([receteId]) REFERENCES [dbo].[Recete]([id])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_ReceteTani_Recete'
GO
COMMIT
GO
