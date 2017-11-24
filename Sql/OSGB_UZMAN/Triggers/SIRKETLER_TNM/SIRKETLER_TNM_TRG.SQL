BEGIN TRAN
GO
-- [CMPTR] - [17.10.2017 15:38:42]
--Bos
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'SIRKETLER_TNM_TRG'
GO
COMMIT
GO
