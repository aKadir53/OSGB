BEGIN TRAN
GO
ALTER TABLE [dbo].[TurkceKarakterInsertTest] ADD CONSTRAINT [FK_TurkceKarakterInsertTest_TurkceKarakterTest] FOREIGN KEY ([test]) REFERENCES [dbo].[TurkceKarakterTest]([test])
GO
exec sp_vw_sys_upd 'F ', 'dbo', 'FK_TurkceKarakterInsertTest_TurkceKarakterTest'
GO
COMMIT
GO
