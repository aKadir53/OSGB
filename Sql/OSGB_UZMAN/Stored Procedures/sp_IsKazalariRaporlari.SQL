BEGIN TRAN
GO
-- [CMPTR] - [27.10.2017 11:31:36]
alter -- ALTER
  procedure dbo.sp_IsKazalariRaporlari @IlkTarih datetime, @SonTarih datetime
as
begin
  select BL.tanimi, *
  from dbo.IsKazalari IK
  left outer join Bolumler BL on BL.kod = IK.KazaninMeydanaGelBolum
  where IK.KazaTarihi between @IlkTarih and @SonTarih
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_IsKazalariRaporlari'
GO
COMMIT
GO
