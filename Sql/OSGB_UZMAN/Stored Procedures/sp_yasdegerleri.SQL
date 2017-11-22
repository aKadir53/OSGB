BEGIN TRAN
GO
ALTER PROCEDURE sp_yasdegerleri
AS
BEGIN

select '< 20' as Y ,count(*) as H
from HastaKart
where 
cast(substring(convert(varchar,getdate(),112),1,4) as int) -
cast(substring(dogumtarIhI,1,4) as int)  < 20

union all

select '20-44' as Y,count(*) as H
from HastaKart
where 
cast(substring(convert(varchar,getdate(),112),1,4) as int) -
cast(substring(dogumtarIhI,1,4) as int)  >= 20 and
cast(substring(convert(varchar,getdate(),112),1,4) as int) -
cast(substring(dogumtarIhI,1,4) as int)  <= 44

union all


select '45-64' as y ,count(*) as H
from HastaKart
where 
cast(substring(convert(varchar,getdate(),112),1,4) as int) -
cast(substring(dogumtarIhI,1,4) as int)  > 44 and
cast(substring(convert(varchar,getdate(),112),1,4) as int) -
cast(substring(dogumtarIhI,1,4) as int)  <= 64

union all

select '65-74' as y,count(*) as H
from HastaKart
where 
cast(substring(convert(varchar,getdate(),112),1,4) as int) -
cast(substring(dogumtarIhI,1,4) as int)  > 64 and
cast(substring(convert(varchar,getdate(),112),1,4) as int) -
cast(substring(dogumtarIhI,1,4) as int)  <= 75

--union all
--
--select '75 >' as Y,count(*) as H
--from HastaKart
--where 
--cast(substring(convert(varchar,getdate(),112),1,4) as int) -
--cast(substring(dogumtarIhI,1,4) as int)  > 75 

END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_yasdegerleri'
GO
COMMIT
GO
