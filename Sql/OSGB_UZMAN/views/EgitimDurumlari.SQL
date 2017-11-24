BEGIN TRAN
GO
-- [CMPTR] - [29.07.2017 01:34:32]
--Bos
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'EgitimDurumlari'
GO
COMMIT
GO
