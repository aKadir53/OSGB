BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_MenuGetir] @kullanici varchar(20)
AS
begin
declare @t table (Kullanici varchar(20),Menu varchar(200),ID int,Izin int,KAYITID int,MainMenu varchar(200),
					Kapsam int,imageIndex int,ShortCut varchar(10),ShowTip int,FormTag int,Sira int)


insert into @t
select U.Kullanici,U.Menu,U.ID,U.Izin,M.KAYITID,M.MainMenu,M.Kapsam,M.imageIndex,M.ShortCut,M.ShowTip,M.FormTag,M.Sira 
from UserMenuSettings U 
join MenuIslem M on M.KAYITID = U.ID 
left join @t t on t.ID = U.ID 
where U.Kullanici = @kullanici and U.Izin = 1 and M.Kapsam not in(0,500) and t.ID is null


insert into @t
select U.Kullanici,U.Menu,U.ID,U.Izin,M.KAYITID,M.MainMenu,M.Kapsam,M.imageIndex,M.ShortCut,M.ShowTip,M.FormTag,M.Sira 
from UserMenuSettings U 
join MenuIslem_SK M on M.KAYITID = U.ID 
left join @t t on t.ID = U.ID and t.Kapsam = 500
where M.Kullanici = @kullanici and U.Izin = 1 and t.ID is null


insert into @t
select K.Kullanici,U.Menu,U.ID,U.Izin,M.KAYITID,M.MainMenu,M.Kapsam,M.imageIndex,M.ShortCut,M.ShowTip,M.FormTag,M.Sira 
from UserGroupMenuSettings U 
join MenuIslem M on M.KAYITID = U.ID 
join Users K on K.grup = U.kullanici 
left join @t t on t.ID = U.ID 
where K.Kullanici = @kullanici and U.Izin = 1 and M.Kapsam not in(0,500) and t.ID is null

insert into @t
select K.Kullanici,U.Menu,U.ID,U.Izin,M.KAYITID,M.MainMenu,M.Kapsam,M.imageIndex,M.ShortCut,M.ShowTip,M.FormTag,M.Sira 
from UserGroupMenuSettings U 
join MenuIslem_SK M on M.KAYITID = U.ID 
join Users K on K.grup = U.kullanici 
left join @t t on t.ID = U.ID and t.Kapsam = 500
where K.Kullanici = @kullanici and U.Izin = 1 and t.ID is null


insert into @t
select @kullanici,M.Menu,M.KAYITID,0,M.KAYITID,M.MainMenu,M.Kapsam,M.imageIndex,M.ShortCut,M.ShowTip,M.FormTag,M.Sira 
from MenuIslem  M
--join MenuIslem M on M.KAYITID = U.ID 
--left join @t t on t.ID = U.ID and U.Izin = 1
where --U.Kullanici = @kullanici and 
M.Kapsam in (0) --and t.ID is null


update @t
 set Izin = 1
 where ID in (
select ID from (
select K.Kullanici,M.Menu,U.ID,U.Izin,M.KAYITID,M.MainMenu,M.Kapsam,M.imageIndex,M.ShortCut,M.ShowTip,M.FormTag,M.Sira 
from UserGroupMenuSettings U 
join MenuIslem M on M.KAYITID = U.ID
join Users K on K.grup = U.kullanici  
where K.Kullanici = @kullanici and M.Kapsam in (0) 
union all
select U.Kullanici,U.Menu,U.ID,U.Izin,M.KAYITID,M.MainMenu,M.Kapsam,M.imageIndex,M.ShortCut,M.ShowTip,M.FormTag,M.Sira 
from UserMenuSettings U 
join MenuIslem M on M.KAYITID = U.ID 
where U.Kullanici = @kullanici and M.Kapsam in (0)
) tt
where tt.Izin = 1)






select * from @t where Kullanici = @kullanici
order by Izin
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_MenuGetir'
GO
COMMIT
GO
