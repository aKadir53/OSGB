BEGIN TRAN
GO
ALTER -- create -- drop
 TRIGGER [dbo].[egitim_Tnm_CheckConstraint]
   ON  [dbo].[Egitim_Tnm]
   AFTER DELETE
AS 
BEGIN
  set nocount on
  if dbo.fn_Egitim_Tnm_Constraint () = 0 ROLLBACK
  set nocount off
END
GO
exec sp_vw_sys_upd 'TR', 'dbo', 'egitim_Tnm_CheckConstraint'
GO
COMMIT
GO
