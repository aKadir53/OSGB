BEGIN TRAN
GO
-- [CMPTR] - [16.11.2017 12:06:07]
--Bos
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'Doktorlar'
GO
COMMIT
GO
