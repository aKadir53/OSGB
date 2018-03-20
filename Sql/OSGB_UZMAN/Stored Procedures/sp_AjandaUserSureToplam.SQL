BEGIN TRAN
GO
ALTER
  PROCEDURE [dbo].[sp_AjandaUserSureToplam] @userID varchar(20) = ''
AS

select e.ResourceId,U.ADISOYADI,convert(date,e.start) Tarih,sum(DATEDIFF(MInute,e.start,e.finish)) HizmetSure_Dakika,
(sum(DATEDIFF(MInute,e.start,e.finish)) / 60) HizmetSure_Saat,
(sum(DATEDIFF(MInute,e.start,e.finish))%60) HizmetSure_Dk
from events e
left join SIRKETLER_TNM S on s.sirketKod = substring(e.Location,1,6)
join USERS U on U.kullanici = e.ResourceId
where e.ResourceId = @userID or @userID = ''
group by e.ResourceId,U.ADISOYADI,convert(date,e.start)
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_AjandaUserSureToplam'
GO
COMMIT
GO
