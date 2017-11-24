BEGIN TRAN
GO
-- [CMPTR] - [11.10.2017 17:35:47]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_KilitliKullanicilar'
GO
COMMIT
GO
