BEGIN TRAN
GO
-- [CMPTR] - [25.09.2017 12:31:30]
--Bos
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'NaceKodsView'
GO
COMMIT
GO
