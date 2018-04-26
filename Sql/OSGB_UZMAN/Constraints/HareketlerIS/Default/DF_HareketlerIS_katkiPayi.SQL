BEGIN TRAN
GO
('H')
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_HareketlerIS_katkiPayi'
GO
COMMIT
GO
