BEGIN TRAN
GO
ALTER --
 --CREATE
  PROCEDURE [dbo].[sp_CariHesapExtresi] @cariKod varchar(10) = '',@Tarih1 varchar(10) = '' ,@Tarih2 varchar(10)= ''
AS
  if @Tarih1 = ''
  begin 
    set @Tarih1 = convert(varchar,getdate(),112) 
    set @Tarih2 = convert(varchar,getdate(),112) 
  end
declare @borc float,@alacak float,@bakiye float,@bakiyetip varchar(1)

select @borc = isnull(sum(borc),0),@alacak = isnull(sum(alacak),0),
@bakiye = isnull(sum(borc-alacak),0),@bakiyetip = case when isnull(sum(borc-alacak),0)>0 then 'B' else 'A' end 
from carihareketler 
where cariKod = @cariKod and convert(varchar,tarih,112)  < @tarih1


select [iD], [TARiH],[evrakNo],[tanimi] evrakTipi,[BORC], [ALACAK],abs(Sum([BORC] - [ALACAK]) OVER (ORDER BY [TARiH], [iD])) AS [BAKIYE],
case when Sum([BORC] - [ALACAK]) OVER (ORDER BY [TARiH], [iD]) > 0 then 'B' else 'A' end BAKIYETIPI
from
(
select 0 id,null Tarih,'Devir' evrakNo,'' evrakTipi,@borc borc ,@alacak alacak 
--from carihareketler 
--where convert(varchar,tarih,112) < @tarih1

union all

SELECT [iD], [TARiH],[evrakNo],[evrakTipi],[BORC], [ALACAK]
FROM carihareketler ch
where cariKod = @cariKod and convert(varchar,tarih,112)  between @tarih1  and @tarih2
) tmp 
left join evrakTipleri et on et.kod = tmp.evrakTipi
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_CariHesapExtresi'
GO
COMMIT
GO
