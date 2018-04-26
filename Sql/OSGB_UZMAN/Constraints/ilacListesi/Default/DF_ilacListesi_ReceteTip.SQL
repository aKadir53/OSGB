BEGIN TRAN
GO
('A')
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_ilacListesi_ReceteTip'
GO
COMMIT
GO
