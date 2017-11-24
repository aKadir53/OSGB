BEGIN TRAN
GO
-- [CMPTR] - [05.10.2017 11:01:15]
--Bos
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'fn_FormattedTarih'
GO
COMMIT
GO
