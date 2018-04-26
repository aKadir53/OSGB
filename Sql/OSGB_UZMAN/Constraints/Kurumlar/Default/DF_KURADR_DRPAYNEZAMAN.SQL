BEGIN TRAN
GO
('O')
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_KURADR_DRPAYNEZAMAN'
GO
COMMIT
GO
