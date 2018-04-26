BEGIN TRAN
GO
ALTER TABLE [dbo].[Gelisler] ADD CONSTRAINT [FK_gelisler_SERVIS_TNM] FOREIGN KEY ([SEVKBRANS]) REFERENCES [dbo].[SERVIS_TNM]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_gelisler_SERVIS_TNM'
GO
COMMIT
GO
