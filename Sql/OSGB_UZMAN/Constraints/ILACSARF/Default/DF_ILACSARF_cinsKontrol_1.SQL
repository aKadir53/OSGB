BEGIN TRAN
GO
('H')
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_ILACSARF_cinsKontrol_1'
GO
COMMIT
GO
