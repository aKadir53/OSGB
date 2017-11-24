BEGIN TRAN
GO
-- [CMPTR] - [11.10.2017 17:30:20]
--Bos
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'VW_Sys'
GO
COMMIT
GO
