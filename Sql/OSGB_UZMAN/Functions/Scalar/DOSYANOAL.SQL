BEGIN TRAN
GO
-- [CMPTR] - [25.09.2017 13:24:54]
--Bos
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'DOSYANOAL'
GO
COMMIT
GO
