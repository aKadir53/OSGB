BEGIN TRAN
GO
('H')
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_HastaKart_Tip'
GO
COMMIT
GO
