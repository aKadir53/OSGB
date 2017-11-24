BEGIN TRAN
GO
-- [CMPTR] - [08.11.2017 17:42:27]
--Bos
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'SIRKETLER_TNM_view'
GO
COMMIT
GO
