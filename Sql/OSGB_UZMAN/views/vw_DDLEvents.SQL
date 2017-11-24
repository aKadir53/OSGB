BEGIN TRAN
GO
-- [CMPTR] - [23.10.2017 11:43:25]
--Bos
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'vw_DDLEvents'
GO
COMMIT
GO
