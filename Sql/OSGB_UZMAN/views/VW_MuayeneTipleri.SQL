BEGIN TRAN
GO
-- [CMPTR] - [11.10.2017 15:29:25]
--Bos
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'VW_MuayeneTipleri'
GO
COMMIT
GO
