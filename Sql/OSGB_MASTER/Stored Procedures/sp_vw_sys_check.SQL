BEGIN TRAN
GO
-- [CMPTR] - [11.10.2017 17:42:56]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_vw_sys_check'
GO
COMMIT
GO
