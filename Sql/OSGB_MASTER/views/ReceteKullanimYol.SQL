BEGIN TRAN
GO
-- [CMPTR] - [10.10.2017 15:33:39]
--Bos
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'ReceteKullanimYol'
GO
COMMIT
GO
