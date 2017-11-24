BEGIN TRAN
GO
-- [CMPTR] - [26.09.2017 00:50:04]
--Bos
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'ProtokolUret'
GO
COMMIT
GO
