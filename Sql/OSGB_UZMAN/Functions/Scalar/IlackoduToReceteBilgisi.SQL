BEGIN TRAN
GO
-- [CMPTR] - [26.09.2017 01:39:55]
--Bos
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'IlackoduToReceteBilgisi'
GO
COMMIT
GO
