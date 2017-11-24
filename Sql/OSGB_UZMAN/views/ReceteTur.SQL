BEGIN TRAN
GO
-- [CMPTR] - [14.09.2017 13:44:41]
--Bos
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'ReceteTur'
GO
COMMIT
GO
