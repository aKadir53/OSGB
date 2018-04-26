BEGIN TRAN
GO
ALTER TABLE [dbo].[naceKods] ADD CONSTRAINT [FK_naceKods_NaceKodsGrups] FOREIGN KEY ([Grup]) REFERENCES [dbo].[NaceKodsGrups]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_naceKods_NaceKodsGrups'
GO
COMMIT
GO
