BEGIN TRAN
GO
ALTER -- create 
  view dbo.UserGroupMenuSettings_MenuBaglanti_view
with schemabinding
as
select mi.KAYITID, mi.Kapsam, mi.Menu, us.GrupAdi, us.Izin
from dbo.MenuIslem mi
left outer join dbo.UserGroupMenuSettings_view us on us.ID = mi.KAYITID
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'UserGroupMenuSettings_MenuBaglanti_view'
GO
COMMIT
GO
