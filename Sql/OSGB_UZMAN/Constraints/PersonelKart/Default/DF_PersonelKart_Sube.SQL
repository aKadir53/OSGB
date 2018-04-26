BEGIN TRAN
GO
('00')
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_PersonelKart_Sube'
GO
COMMIT
GO
