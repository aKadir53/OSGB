BEGIN TRAN
GO
ALTER FUNCTION [dbo].[LabhastaSayi] (@t1 varchar(10),@t2 varchar(10),@donem varchar(2),@tedaviY varchar(1))
RETURNS float
AS
BEGIN
declare @sayi float
   set @sayi = cast((select count(*) from (
     select hr.dosyaNo,hr.gelisNo from gelisler g
       join hareketler hr on hr.dosyaNo = g.dosyaNo and hr.gelisNo = g.gelisNo 
       join hastakart hk on hk.dosyaNo = hr.dosyaNo
        where BHDAT between @t1 AND @t2  and aktif < 2
         and substring(bhdat,5,2) = @donem
          AND (case when g.diyalizTedaviYontemi = '2' then '1' else g.diyalizTedaviYontemi end) = @tedaviY 
          and (cast(BHDAT as datetime) - CAST(HK.BASLANGIC AS DATETIME) > 90)
         -- AND hr.dosyaNo IS NOT NULL     
     group by hr.dosyaNo,hr.gelisNo) tmp  
      ) as float)


return(@sayi)

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'LabhastaSayi'
GO
COMMIT
GO
