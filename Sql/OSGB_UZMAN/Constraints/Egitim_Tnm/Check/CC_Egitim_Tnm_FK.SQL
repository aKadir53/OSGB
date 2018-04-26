BEGIN TRAN
GO
([dbo].[fn_Egitim_Tnm_Constraint]()=(1))
GO
exec sp_vw_sys_upd 'C ', 'dbo', 'CC_Egitim_Tnm_FK'
GO
COMMIT
GO
