BEGIN TRAN
GO
-- [CMPTR] - [25.10.2017 15:59:34]
ALTER
  procedure dbo.sp_frmPersonelEgitim 
as 
begin
  select 1
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmPersonelEgitim'
GO
COMMIT
GO
