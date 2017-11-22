BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_ZHastaDemografi] @tarih1 datetime, @tarih2 datetime ,@HastaTip VARCHAR(1) = 'H',@table VARCHAR(1) = 'E'
AS
BEGIN

declare @t1 varchar(10), @t2 varchar(10)
set @t1 = convert(varchar,@tarih1,112)
set @t2 = convert(varchar,@tarih2,112)


if @HastaTip = 'H'
begin
 set @HastaTip = '0'
end
else 
begin
 set @HastaTip = '1'
end


--set @t1 = '20130101'
--set @t2 = '20131231'

DECLARE @kurumKod VARCHAR(10),@yil int
SELECT @kurumKod = SLB FROM Parametreler WHERE SLK = '99'
SET @yil = SUBSTRING(@t2,1,4)

DELETE FROM RTSDemografi 
WHERE kurumKodu = @kurumKod AND yil = @yil AND donem IN 
   (
	SELECT dbo.aytoadi(substring(g.bhdat,5,2))
    from hastakart h
    join gelisler g on g.dosyano = h.dosyano
    where  g.bhdat between @t1 and @t2 and (case when g.diyalizTedaviYontemi = '2' then '1' else g.diyalizTedaviYontemi end) = @HastaTip 
    and h.aktif < 2
    group by substring(g.bhdat,5,2)
    )

INSERT INTO RTSDemografi
select  @kurumKod,@yil,dbo.aytoadi(substring(g.bhdat,5,2)) 'Dönem',count(*) as 'Aktif Hasta Sayisi' ,
        sum((case when CINSIYETI = 0 then 1 else 0 end)) Erkek,    
        sum((case when CINSIYETI = 1 then 1 else 0 end)) Kadýn,
        
        sum(case when dbo.fn_yasTarih(cast(DOGUMTARIHI as datetime),cast(bhdat as datetime)) <= 19 AND h.CINSIYETI= 0 then 1 else 0 end) '< 19 Yas Hasta Sayisi E',
        sum(case when dbo.fn_yasTarih(cast(DOGUMTARIHI as datetime),cast(bhdat as datetime)) <= 19 AND h.CINSIYETI= 1 then 1 else 0 end) '< 19 Yas Hasta Sayisi K',
        
        
        sum(case when (dbo.fn_yasTarih(cast(DOGUMTARIHI as datetime),cast(bhdat as datetime)) > 19 and
                       dbo.fn_yasTarih(cast(DOGUMTARIHI as datetime),cast(bhdat as datetime)) <= 44) and h.CINSIYETI= 0 then 1 else 0 end) '20-44 Yas Arasi Hasta Sayisi E', 
        
        sum(case when (dbo.fn_yasTarih(cast(DOGUMTARIHI as datetime),cast(bhdat as datetime)) > 19 and
                       dbo.fn_yasTarih(cast(DOGUMTARIHI as datetime),cast(bhdat as datetime)) <= 44) and h.CINSIYETI= 1 then 1 else 0 end) '20-44 Yas Arasi Hasta Sayisi K', 


        sum(case when (dbo.fn_yasTarih(cast(DOGUMTARIHI as datetime),cast(bhdat as datetime)) > 44 and
                       dbo.fn_yasTarih(cast(DOGUMTARIHI as datetime),cast(bhdat as datetime)) <= 64) and h.CINSIYETI= 0 then 1 else 0 end) '45-64 Yas Arasi Hasta Sayisi E', 
        
        sum(case when (dbo.fn_yasTarih(cast(DOGUMTARIHI as datetime),cast(bhdat as datetime)) > 44 and
                       dbo.fn_yasTarih(cast(DOGUMTARIHI as datetime),cast(bhdat as datetime)) <= 64) and h.CINSIYETI= 1 then 1 else 0 end) '45-64 Yas Arasi Hasta Sayisi K', 
        
        sum(case when (dbo.fn_yasTarih(cast(DOGUMTARIHI as datetime),cast(bhdat as datetime)) > 64 AND
                               dbo.fn_yasTarih(cast(DOGUMTARIHI as datetime),cast(bhdat as datetime)) <= 74) AND h.CINSIYETI= 0 then 1 else 0 end) '65-74 Yas Arasi Hasta Sayisi E',

        sum(case when (dbo.fn_yasTarih(cast(DOGUMTARIHI as datetime),cast(bhdat as datetime)) > 64 AND
                               dbo.fn_yasTarih(cast(DOGUMTARIHI as datetime),cast(bhdat as datetime)) <= 74) AND h.CINSIYETI= 1 then 1 else 0 end) '65-74 Yas Arasi Hasta Sayisi K',
        
        sum(case when dbo.fn_yasTarih(cast(DOGUMTARIHI as datetime),cast(bhdat as datetime)) > 74 AND h.CINSIYETI= 0 then 1 else 0 end) '75 >  Yas Hasta Sayisi E',

        sum(case when dbo.fn_yasTarih(cast(DOGUMTARIHI as datetime),cast(bhdat as datetime)) > 74 AND h.CINSIYETI= 1 then 1 else 0 end) '75 >  Yas Hasta Sayisi K',

        sum(case when charindex('5',h.GELHAST) > 0 then 1 else 0 end) 'Diabetik Hasta sayisi IDDM' ,
        sum(case when charindex('7',h.GELHAST) > 0 then 1 else 0 end) 'Diabetik Hasta sayisi NIDDM' ,
            
        sum(case when h.DG = 'AVF' then 1 else 0 end) 'AVF',
        sum(case when h.DG = 'AVG' then 1 else 0 end) 'AVG',
        sum(case when h.DG = 'GEÇÝCÝ KATATER' then 1 else 0 end) 'G KATATER',
        sum(case when h.DG = 'KALICI KATATER' then 1 else 0 end) 'K KATATER',

        sum(case when len(h.seansGunleri) - len(replace(h.seansGunleri,'1','')) = 1 then 1 else 0 end) 'Haftada 1 ',
        sum(case when len(h.seansGunleri) - len(replace(h.seansGunleri,'1','')) = 2 then 1 else 0 end) 'Haftada 2 ',
        sum(case when len(h.seansGunleri) - len(replace(h.seansGunleri,'1','')) = 3 then 1 else 0 end) 'Haftada 3 ',
        sum(case when len(h.seansGunleri) - len(replace(h.seansGunleri,'1','')) = 4 then 1 else 0 end) 'Haftada 4 ',

        sum(case when dbo.fn_yasTarih(cast(BASLANGIC as datetime),cast(bhdat as datetime)) < 6 then 1 else 0 end) '0-5 yýl',
        sum(case when (dbo.fn_yasTarih(cast(BASLANGIC as datetime),cast(bhdat as datetime)) >= 6 and
                       dbo.fn_yasTarih(cast(BASLANGIC as datetime),cast(bhdat as datetime)) < 11) then 1 else 0 end) '6-10 Yýl', 

        sum(case when (dbo.fn_yasTarih(cast(BASLANGIC as datetime),cast(bhdat as datetime)) >= 11 and
                       dbo.fn_yasTarih(cast(BASLANGIC as datetime),cast(bhdat as datetime)) < 16) then 1 else 0 end) '11-15 Yýl', 
        
        sum(case when (dbo.fn_yasTarih(cast(BASLANGIC as datetime),cast(bhdat as datetime)) >= 16 and
                       dbo.fn_yasTarih(cast(BASLANGIC as datetime),cast(bhdat as datetime)) < 21) then 1 else 0 end) '16-20 Yýl', 
        sum(case when dbo.fn_yasTarih(cast(BASLANGIC as datetime),cast(bhdat as datetime)) >= 21 then 1 else 0 end) '20> yýl', 

        sum(case when h.PBH = 'DIABET IDDM' then 1 else 0 end) 'DIABET IDDM',
        sum(case when h.PBH = 'DIABET NIDDM' then 1 else 0 end) 'DIABET NIDDM',
        sum(case when h.PBH = 'HIPERTANSIF NEFROSCLEROZ' then 1 else 0 end) 'HIPERTANSIF NEFROSCLEROZ',
        sum(case when h.PBH = 'GLOMERULONEFRIT' then 1 else 0 end) 'GLOMERULONEFRIT',
        sum(case when h.PBH = 'POLIKISTIK BÖBREK HASTALIÐI' then 1 else 0 end) 'POLIKISTIK BÖBREK HASTALIÐI',
        sum(case when h.PBH = 'AMÝLOÝDOZ' then 1 else 0 end) 'AMÝLOÝDOZ',
        sum(case when h.PBH = 'TÜBÜLOÝNTERSTÝSYEL NEFROPATÝ' then 1 else 0 end) 'TÜBÜLOÝNTERSTÝSYEL NEFROPATÝ',
        sum(case when h.PBH = 'RENAL VASKÜLER HASTALIK' then 1 else 0 end) 'RENAL VASKÜLER HASTALIK',
        sum(case when h.PBH = 'DÝÐER' then 1 else 0 end) 'DÝÐER',
        sum(case when h.PBH = 'ETYOLOJÝ BÝLÝNMEYEN' then 1 else 0 end) 'ETYOLOJÝ BÝLÝNMEYEN',
        
        
       sum(case when CHARINDEX('DÝABET IDDM',h.KH)>0 then 1 else 0 end) 'DIABET IDDM',
       sum(case when CHARINDEX('DÝABET NIDDM',h.KH)>0 then 1 else 0 end) 'DIABET NIDDM',       
       sum(case when CHARINDEX('ÝSKEMÝK KALP HASTALIÐI',h.KH)>0 then 1 else 0 end) 'ÝSKEMÝK KALP HASTALIÐI', 

       sum(case when CHARINDEX('KONJESTÝF KALP  YETMEZLÝÐÝ',h.KH)>0 then 1 else 0 end) 'KONJESTÝF KALP  YETMEZLÝÐÝ' ,
       sum(case when CHARINDEX('KRONÝK AKCÝÐER HASTALIÐI',h.KH)>0 then 1 else 0 end) 'KRONÝK AKCÝÐER HASTALIÐI', 
       sum(case when CHARINDEX('MALÝGNÝTE',h.KH)>0 then 1 else 0 end) 'MALÝGNÝTE', 
       sum(case when CHARINDEX('SEREBROVASKÜLER HASTALIK',h.KH)>0 then 1 else 0 end) 'SEREBROVASKÜLER HASTALIK', 
       sum(case when CHARINDEX('KRONÝK KARACÝÐER HASTALIÐI',h.KH)>0 then 1 else 0 end) 'KRONÝK KARACÝÐER HASTALIÐI' ,
       sum(case when CHARINDEX('HÝPERPARATROÝDÝ',h.KH)>0 then 1 else 0 end) 'HÝPERPARATROÝDÝ' ,
       sum(case when CHARINDEX('HÝPERTROÝDÝ',h.KH)>0 then 1 else 0 end) 'HÝPERTROÝDÝ', 
       sum(case when CHARINDEX('HÝPOTROÝDÝ',h.KH)>0 then 1 else 0 end) 'HÝPOTROÝDÝ', 
       sum(case when CHARINDEX('HÝPERTANSÝYON',h.KH)>0 then 1 else 0 end) 'HÝPERTANSÝYON' ,
       sum(case when CHARINDEX('FMF',h.KH)>0 then 1 else 0 end) 'FMF' ,
       sum(case when CHARINDEX('DÝÐER',h.KH)>0 then 1 else 0 end) 'DÝÐER' ,
       
       
       sum(case when (LEN(h.kh) - len(REPLACE(h.kh,',',''))) = 2 THEN 1 ELSE 0 END) '1 koborbit hastalýk',
       sum(case when (LEN(h.kh) - len(REPLACE(h.kh,',',''))) = 3 THEN 1 ELSE 0 END) '2 koborbit hastalýk',
       sum(case when (LEN(h.kh) - len(REPLACE(h.kh,',',''))) = 4 THEN 1 ELSE 0 END) '3 koborbit hastalýk',
       sum(case when (LEN(h.kh) - len(REPLACE(h.kh,',',''))) > 5 THEN 1 ELSE 0 END) '4 ve fazla koborbit hastalýk',
       
       sum(case when h.APH < 200 then 1 else 0 end) 'APH<200',
       sum(case when h.APH >= 200 AND h.APH < 300 then 1 else 0 end) 'APH >=200 - <300',
       sum(case when h.APH >= 300 AND h.APH < 400 then 1 else 0 end) 'APH >=300 - <400',
       sum(case when h.APH >= 400 then 1 else 0 end) 'APH >=400'  , 
       
       
       sum(case when h.HbsAg = '+' and h.AntiHCV = '-' then 1 else 0 end) 'HBsAg (+)',   
       sum(case when h.HbsAg = '-' and h.AntiHbs = '+' and h.AntiHCV = '-' then 1 else 0 end) 'HBsAg (-) - AntiHBs (+)',   
       sum(case when h.HbsAg = '-' and h.AntiHbs = '-' and h.AntiHCV = '-' then 1 else 0 end) 'HBsAg (-) - AntiHBs (-)',    
       sum(case when h.AntiHCV = '+' then 1 else 0 end) 'AntiHCV(+)',     
       sum(case when h.HbsAg = '+' and h.AntiHCV = '+' then 1 else 0 end) 'HBsAg(+) - AntiHCV(+)'  

from hastakart h
join gelisler g on g.dosyano = h.dosyano
where  g.bhdat between @t1 and @t2 and (case when g.diyalizTedaviYontemi = '2' then '1' else g.diyalizTedaviYontemi end) = @HastaTip 
and h.aktif < 2
group by substring(g.bhdat,5,2)
order by substring(g.bhdat,5,2)

IF @table = 'E'
SELECT * from RTSDemografi

end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_ZHastaDemografi'
GO
COMMIT
GO
