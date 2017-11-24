BEGIN TRAN
GO
-- [CMPTR] - [31.10.2017 16:47:57]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_YeniReceteProtokol'
GO
COMMIT
GO
