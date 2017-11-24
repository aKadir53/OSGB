BEGIN TRAN
GO
-- [CMPTR] - [14.09.2017 15:23:57]
--Bos
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'ILACLAR_TNM_V'
GO
COMMIT
GO
