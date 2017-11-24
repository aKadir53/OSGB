BEGIN TRAN
GO
-- [CMPTR] - [11.10.2017 17:51:05]
--Bos
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'VW_SYS_DF'
GO
COMMIT
GO
