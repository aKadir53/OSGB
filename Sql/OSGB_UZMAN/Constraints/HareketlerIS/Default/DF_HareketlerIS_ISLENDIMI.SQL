BEGIN TRAN
GO
('H')
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_HareketlerIS_ISLENDIMI'
GO
COMMIT
GO
