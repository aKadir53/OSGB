BEGIN TRAN
GO
-- [CMPTR] - [25.10.2017 16:09:36]
alter -- ALTER
  procedure dbo.sp_frmPersonelEgitim @EgitimId int, @PersonelDosyaNo varchar (6) = null
as 
begin
  select * 
  from dbo.Egitimler E
  where E.id = @EgitimId
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_frmPersonelEgitim'
GO
COMMIT
GO
