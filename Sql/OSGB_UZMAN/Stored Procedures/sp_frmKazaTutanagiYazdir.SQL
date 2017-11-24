BEGIN TRAN
GO
-- [CMPTR] - [23.10.2017 13:35:07]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmKazaTutanagiYazdir'
GO
COMMIT
GO
