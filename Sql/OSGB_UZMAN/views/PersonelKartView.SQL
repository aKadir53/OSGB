BEGIN TRAN
GO
-- [CMPTR] - [23.10.2017 12:21:07]
--Bos
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'PersonelKartView'
GO
COMMIT
GO
