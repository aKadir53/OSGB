BEGIN TRAN
GO
('YTL')
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_Tahsilat_KasaTip'
GO
COMMIT
GO
