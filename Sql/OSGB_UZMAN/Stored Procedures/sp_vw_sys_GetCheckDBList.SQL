BEGIN TRAN
GO
-- [CMPTR] - [11.10.2017 17:37:45]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_vw_sys_GetCheckDBList'
GO
COMMIT
GO
