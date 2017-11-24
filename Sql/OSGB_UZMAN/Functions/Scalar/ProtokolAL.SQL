BEGIN TRAN
GO
-- [CMPTR] - [29.10.2017 15:08:25]
--Bos
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'ProtokolAL'
GO
COMMIT
GO
