BEGIN TRAN
GO
/****** Object:  StoredProcedure [dbo].[sp_Ajanda]    Script Date: 19.03.2018 11:16:52 ******/
ALTER -- 
--CREATE
  PROCEDURE [dbo].[sp_Ajanda] @userID varchar(20) = '',@tarih1 datetime,@tarih2 datetime
AS
select e.Location, S.tanimi,IK.ADI ILCE, DATEDIFF(MInute,e.start,e.finish) HizmetSure,
convert(varchar,e.start,108) GirisSaat,
convert(varchar,e.finish,108) CikisSaat,
convert(date,e.start) PlanlananTarih,SB.semtlokasyon,
e.ResourceId,U.ADISOYADI,e.Message,e.Caption
--e.* 
from events e
left join SIRKETLER_TNM S on s.sirketKod = substring(e.Location,1,6)
left join SIRKET_SUBE_TNM SB on SB.sirketKod = S.sirketKod and SB.subeKod = substring(e.Location,8,2)
join USERS U on U.kullanici = e.ResourceId
left join SKRS_ILCE_KODLARI IK on IK.KODU = S.ILCE
where (e.ResourceId = @userID or @userID = '') and convert(date,e.Start) between @tarih1 and @tarih2 
order by e.Start
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_Ajanda'
GO
COMMIT
GO
