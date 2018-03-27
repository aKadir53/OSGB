BEGIN TRAN
GO
ALTER -- create 
  view dbo.UserGroupSettings_ModulBaglanti_view
with schemabinding
as
select mi.Modul, mi.Islem, us.GrupAdi, cast (us.Izin as int) Izin
from dbo.ModulIslem mi
left outer join dbo.UserGroupSettings_view us on us.Modul = mi.Modul
  and us.Islem = mi.Islem
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'UserGroupSettings_ModulBaglanti_view'
GO
COMMIT
GO
