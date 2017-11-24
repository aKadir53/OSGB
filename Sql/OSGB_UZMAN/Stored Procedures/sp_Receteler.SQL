BEGIN TRAN
GO
-- [CMPTR] - [23.04.2017 22:51:23]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_Receteler'
GO
COMMIT
GO
