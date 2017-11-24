BEGIN TRAN
GO
-- [CMPTR] - [27.09.2017 22:45:02]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_PersonelGelis'
GO
COMMIT
GO
