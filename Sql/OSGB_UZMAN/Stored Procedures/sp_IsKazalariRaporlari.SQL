BEGIN TRAN
GO
-- [CMPTR] - [27.10.2017 11:28:57]
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
