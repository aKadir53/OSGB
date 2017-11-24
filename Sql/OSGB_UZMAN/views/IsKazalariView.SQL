BEGIN TRAN
GO
-- [CMPTR] - [23.10.2017 10:53:37]
--Bos
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'IsKazalariView'
GO
COMMIT
GO
