BEGIN TRAN
GO
-- [CMPTR] - [26.10.2017 12:38:57]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_IsKazalariListesi'
GO
COMMIT
GO
