BEGIN TRAN
GO
('B')
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_ADRES_MEDENI_1'
GO
COMMIT
GO
