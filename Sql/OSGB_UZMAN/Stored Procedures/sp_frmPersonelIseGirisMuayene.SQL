BEGIN TRAN
GO
-- [CMPTR] - [30.09.2017 19:09:57]
--Bos
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmPersonelIseGirisMuayene'
GO
COMMIT
GO
