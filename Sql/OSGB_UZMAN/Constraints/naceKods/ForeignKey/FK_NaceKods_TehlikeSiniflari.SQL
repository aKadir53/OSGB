BEGIN TRAN
GO
ALTER TABLE [dbo].[naceKods] ADD CONSTRAINT [FK_NaceKods_TehlikeSiniflari] FOREIGN KEY ([TEHLIKESINIFI]) REFERENCES [dbo].[TehlikeSiniflari]([TehlikeSinifi])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_NaceKods_TehlikeSiniflari'
GO
COMMIT
GO
