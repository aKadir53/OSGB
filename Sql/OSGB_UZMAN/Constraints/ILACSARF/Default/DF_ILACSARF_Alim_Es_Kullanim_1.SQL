BEGIN TRAN
GO
((1))
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_ILACSARF_Alim_Es_Kullanim_1'
GO
COMMIT
GO
