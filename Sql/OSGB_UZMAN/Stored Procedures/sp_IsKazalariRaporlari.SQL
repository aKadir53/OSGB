BEGIN TRAN
GO
-- [CMPTR] - [27.10.2017 11:30:16]
alter -- ALTER
  procedure dbo.sp_IsKazalariRaporlari @IlkTarih datetime, @SonTarih datetime
as
begin
  select *
  from dbo.IsKazalari IK
  where IK.KazaTarihi between @IlkTarih and @SonTarih
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_IsKazalariRaporlari'
GO
COMMIT
GO
