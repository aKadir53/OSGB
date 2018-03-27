BEGIN TRAN
GO
ALTER -- create 
  view dbo.UserSettings_ModulBaglanti_view
with schemabinding
as
select mi.Modul, mi.Islem, us.Grubu, us.Kullanici, cast (us.Izin as int) Izin
from dbo.ModulIslem mi
left outer join dbo.UserSettings_GrupYetkili_view us on us.Modul = mi.Modul
  and us.Islem  = mi.Islem
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'UserSettings_ModulBaglanti_view'
GO
COMMIT
GO
