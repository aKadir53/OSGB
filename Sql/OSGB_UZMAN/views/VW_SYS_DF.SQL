BEGIN TRAN
GO
-- [CMPTR] - [11.10.2017 17:50:30]
--Bos
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'VW_SYS_DF'
GO
COMMIT
GO
