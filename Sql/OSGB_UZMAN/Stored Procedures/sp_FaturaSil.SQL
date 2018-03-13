BEGIN TRAN
GO
ALTER procedure [dbo].[sp_FaturaSil] @faturaId int
as
begin
  delete from faturaHareket where faturaId = @faturaId

  delete from faturalar where sira = @faturaId



end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_FaturaSil'
GO
COMMIT
GO
