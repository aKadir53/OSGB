BEGIN TRAN
GO
-- [CMPTR] - [25.09.2017 14:46:14]
--Bos
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'KODAL'
GO
COMMIT
GO
