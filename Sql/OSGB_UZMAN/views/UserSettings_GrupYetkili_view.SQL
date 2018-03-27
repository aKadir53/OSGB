BEGIN TRAN
GO
ALTER -- CREATE
  view dbo.UserSettings_GrupYetkili_view
with schemabinding
as
select Grubu, Kullanici, Modul, Islem, cast (MAX (cast (Izin as int)) as bit) Izin
from
(
select ug.ADI Grubu, us.Kullanici, Modul, Islem, Izin
from dbo.usersettings us
left join dbo.Users u on u.Kullanici = us.Kullanici
left join dbo.usergroups ug on ug.kodu = u.Grup
union all
select uz.ADI Grubu, u.Kullanici, Modul, Islem, Izin
from dbo.userGroupsettings ug
inner join dbo.Users u on u.grup = ug.Kullanici
inner join dbo.UserGroups uz on uz.KODU = ug.kullanici
)
w
group by Grubu, Kullanici, Modul, Islem
GO
exec sp_vw_sys_upd 'V ', 'dbo', 'UserSettings_GrupYetkili_view'
GO
COMMIT
GO
