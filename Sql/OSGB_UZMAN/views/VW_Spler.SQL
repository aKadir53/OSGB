BEGIN TRAN
GO
-- [CMPTR] - [19.10.2017 19:26:49]
--Bos
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'VW_Spler'
GO
COMMIT
GO
