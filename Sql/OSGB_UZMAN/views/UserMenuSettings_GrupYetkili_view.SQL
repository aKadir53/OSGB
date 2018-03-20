BEGIN TRAN
GO
ALTER -- CREATE
  view dbo.UserMenuSettings_GrupYetkili_view
with schemabinding
as
select Kullanici, ID, MAX (Izin) Izin
from
(
select Kullanici, ID, Izin
from dbo.usermenusettings
union all
select u.Kullanici, ID, Izin
from dbo.userGroupmenusettings ug
inner join dbo.Users u on u.grup = ug.Kullanici
)
w
group by Kullanici, ID
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'UserMenuSettings_GrupYetkili_view'
GO
COMMIT
GO
