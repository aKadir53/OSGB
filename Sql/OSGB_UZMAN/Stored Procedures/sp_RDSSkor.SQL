BEGIN TRAN
GO
--ALTER -- 
ALTER
  PROCEDURE [dbo].[sp_RDSSkor] @risk float,@method int = 1
AS



declare @skor float
set @skor = @risk
select * from
(
select *,case when @skor between altDeger and ustDeger then kod else null end skor
from RDS_SKOR where metod = @method
) skors 
where skor is not null
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_RDSSkor'
GO
COMMIT
GO
