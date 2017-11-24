BEGIN TRAN
GO
-- [CMPTR] - [27.10.2017 11:23:31]
alter -- ALTER
  procedure dbo.sp_IsKazalariRaporlari
as
begin
  select *
  from dbo.IsKazalari
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_IsKazalariRaporlari'
GO
COMMIT
GO
