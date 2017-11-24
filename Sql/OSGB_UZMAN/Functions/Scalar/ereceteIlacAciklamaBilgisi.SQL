BEGIN TRAN
GO
-- [CMPTR] - [05.10.2017 10:56:23]
--Bos
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'ereceteIlacAciklamaBilgisi'
GO
COMMIT
GO
