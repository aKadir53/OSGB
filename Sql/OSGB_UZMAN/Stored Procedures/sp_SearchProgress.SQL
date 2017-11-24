BEGIN TRAN
GO
-- [CMPTR] - [24.10.2017 10:41:18]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_SearchProgress'
GO
COMMIT
GO
