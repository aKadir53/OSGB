BEGIN TRAN
GO
ALTER TABLE [dbo].[FirmaISGEkipGorevTnm] ADD CONSTRAINT [FK_FirmaISGEkipGorevTnm_FirmaISGEkipTnm] FOREIGN KEY ([ISGEkipId]) REFERENCES [dbo].[FirmaISGEkipTnm]([kod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_FirmaISGEkipGorevTnm_FirmaISGEkipTnm'
GO
COMMIT
GO
