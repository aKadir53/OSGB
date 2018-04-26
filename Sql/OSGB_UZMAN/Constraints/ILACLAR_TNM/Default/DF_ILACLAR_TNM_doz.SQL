BEGIN TRAN
GO
('1x1')
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_ILACLAR_TNM_doz'
GO
COMMIT
GO
