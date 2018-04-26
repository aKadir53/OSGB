BEGIN TRAN
GO
('0000')
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_Recete_eReceteNo'
GO
COMMIT
GO
