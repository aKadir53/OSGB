BEGIN TRAN
GO
ALTER -- create 
  view dbo.UserMenuSettings_MenuBaglanti_view
with schemabinding
as
select mi.KAYITID, mi.Kapsam, mi.Menu, us.Grubu, us.Kullanici, us.Izin
from dbo.MenuIslem mi
left outer join dbo.UserMenuSettings_GrupYetkili_view us on us.ID = mi.KAYITID
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'UserMenuSettings_MenuBaglanti_view'
GO
COMMIT
GO
