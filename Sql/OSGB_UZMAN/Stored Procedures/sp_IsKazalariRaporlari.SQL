BEGIN TRAN
GO
-- [CMPTR] - [27.10.2017 11:22:14]
alter -- ALTER
  procedure dbo.sp_IsKazalariRaporlari
as
begin
  select 1
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_IsKazalariRaporlari'
GO
COMMIT
GO
