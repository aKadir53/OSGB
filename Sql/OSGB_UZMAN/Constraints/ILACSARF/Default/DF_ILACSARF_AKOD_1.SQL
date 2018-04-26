BEGIN TRAN
GO
('00')
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_ILACSARF_AKOD_1'
GO
COMMIT
GO
