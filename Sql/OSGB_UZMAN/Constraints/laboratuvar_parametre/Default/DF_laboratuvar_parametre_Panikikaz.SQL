BEGIN TRAN
GO
('H')
GO
exec sp_vw_sys_upd 'D ', 'dbo', 'DF_laboratuvar_parametre_Panikikaz'
GO
COMMIT
GO
