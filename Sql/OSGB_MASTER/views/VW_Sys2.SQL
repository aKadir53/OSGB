BEGIN TRAN
GO
-- [CMPTR] - [11.10.2017 17:29:24]
--Bos
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'VW_Sys2'
GO
COMMIT
GO
