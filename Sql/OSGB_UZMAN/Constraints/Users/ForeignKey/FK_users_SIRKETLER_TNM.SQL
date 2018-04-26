BEGIN TRAN
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [FK_users_SIRKETLER_TNM] FOREIGN KEY ([sirketKodu]) REFERENCES [dbo].[SIRKETLER_TNM]([SirketKod])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_users_SIRKETLER_TNM'
GO
COMMIT
GO
