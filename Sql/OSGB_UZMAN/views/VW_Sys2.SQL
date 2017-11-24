BEGIN TRAN
GO
-- [CMPTR] - [11.10.2017 17:28:55]
--Bos
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'VW_Sys2'
GO
COMMIT
GO
