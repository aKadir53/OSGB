ALTER PROCEDURE [dbo].[sp_SeansGostergesi] @donem varchar(10) , @donem1 varchar(10),@tip varchar(1) = 'G'
AS


--declare @donem varchar(10) , @donem1 varchar(10)
declare @SGK Table (adi varchar(40),a1 int,a2 int,a3 int,a4 int,a5 int,a6 int,
                    a7 int,a8 int,a9 int,a10 int,a11 int,a12 int,a13 int,
                    a14 int,a15 int,a16 int,a17 int,a18 int,a19 int,
                    a20 int,a21 int,a22 int,a23 int,a24 int,a25 int,a26 int,
                    a27 int,a28 int,a29 int,a30 int,a31 int,d int,d1 varchar(20),sicil varchar(20),ktip int)   

declare @SSK Table (adi varchar(40),a1 int,a2 int,a3 int,a4 int,a5 int,a6 int,
                    a7 int,a8 int,a9 int,a10 int,a11 int,a12 int,a13 int,
                    a14 int,a15 int,a16 int,a17 int,a18 int,a19 int,
                    a20 int,a21 int,a22 int,a23 int,a24 int,a25 int,a26 int,
                    a27 int,a28 int,a29 int,a30 int,a31 int,d int,d1 varchar(20),sicil varchar(20),ktip int)   

declare @DM Table (adi varchar(40),a1 int,a2 int,a3 int,a4 int,a5 int,a6 int,
                    a7 int,a8 int,a9 int,a10 int,a11 int,a12 int,a13 int,
                    a14 int,a15 int,a16 int,a17 int,a18 int,a19 int,
                    a20 int,a21 int,a22 int,a23 int,a24 int,a25 int,a26 int,
                    a27 int,a28 int,a29 int,a30 int,a31 int,d int,d1 varchar(20),sicil varchar(20),ktip int) 
  
declare @b Table (adi varchar(40),a1 int,a2 int,a3 int,a4 int,a5 int,a6 int,
                    a7 int,a8 int,a9 int,a10 int,a11 int,a12 int,a13 int,
                    a14 int,a15 int,a16 int,a17 int,a18 int,a19 int,
                    a20 int,a21 int,a22 int,a23 int,a24 int,a25 int,a26 int,
                    a27 int,a28 int,a29 int,a30 int,a31 int,d int,d1 varchar(20),sicil varchar(20),ktip int) 

declare @ES Table (adi varchar(40),a1 int,a2 int,a3 int,a4 int,a5 int,a6 int,
                    a7 int,a8 int,a9 int,a10 int,a11 int,a12 int,a13 int,
                    a14 int,a15 int,a16 int,a17 int,a18 int,a19 int,
                    a20 int,a21 int,a22 int,a23 int,a24 int,a25 int,a26 int,
                    a27 int,a28 int,a29 int,a30 int,a31 int,d int,d1 varchar(20),sicil varchar(20),ktip int) 

--set @donem = '20070101'
--set @donem = '20070930'

--AS

--select 'SSK HASTALARI' ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,0
--UNION ALL

insert into @SSK

select
HK.HASTAADI + ' ' + HK.HASTASOYADI as AdiSoyadi,
sum((case when substring(Utarih,7,2) = '01' then GD.Durum else 0 end)) as '01',sum((case when substring(Utarih,7,2) = '02' then GD.Durum else 0 end)) as '02',
sum((case when substring(Utarih,7,2) = '03' then GD.Durum else 0 end)) as '03',sum((case when substring(Utarih,7,2) = '04' then GD.Durum else 0 end)) as '04',
sum((case when substring(Utarih,7,2) = '05' then GD.Durum else 0 end)) as '05',sum((case when substring(Utarih,7,2) = '06' then GD.Durum else 0 end)) as '06',
sum((case when substring(Utarih,7,2) = '07' then GD.Durum else 0 end)) as '07',sum((case when substring(Utarih,7,2) = '08' then GD.Durum else 0 end)) as '08',
sum((case when substring(Utarih,7,2) = '09' then GD.Durum else 0 end)) as '09',sum((case when substring(Utarih,7,2) = '10' then GD.Durum else 0 end)) as '10',
sum((case when substring(Utarih,7,2) = '11' then GD.Durum else 0 end)) as '11',sum((case when substring(Utarih,7,2) = '12' then GD.Durum else 0 end)) as '12',
sum((case when substring(Utarih,7,2) = '13' then GD.Durum else 0 end)) as '13',sum((case when substring(Utarih,7,2) = '14' then GD.Durum else 0 end)) as '14',
sum((case when substring(Utarih,7,2) = '15' then GD.Durum else 0 end)) as '15',sum((case when substring(Utarih,7,2) = '16' then GD.Durum else 0 end)) as '16',
sum((case when substring(Utarih,7,2) = '17' then GD.Durum else 0 end)) as '17',sum((case when substring(Utarih,7,2) = '18' then GD.Durum else 0 end)) as '18',
sum((case when substring(Utarih,7,2) = '19' then GD.Durum else 0 end)) as '19',sum((case when substring(Utarih,7,2) = '20' then GD.Durum else 0 end)) as '20',
sum((case when substring(Utarih,7,2) = '21' then GD.Durum else 0 end)) as '21',sum((case when substring(Utarih,7,2) = '22' then GD.Durum else 0 end)) as '22',
sum((case when substring(Utarih,7,2) = '23' then GD.Durum else 0 end)) as '23',sum((case when substring(Utarih,7,2) = '24' then GD.Durum else 0 end)) as '24',
sum((case when substring(Utarih,7,2) = '25' then GD.Durum else 0 end)) as '25',sum((case when substring(Utarih,7,2) = '26' then GD.Durum else 0 end)) as '26',
sum((case when substring(Utarih,7,2) = '27' then GD.Durum else 0 end)) as '27',sum((case when substring(Utarih,7,2) = '28' then GD.Durum else 0 end)) as '28',
sum((case when substring(Utarih,7,2) = '29' then GD.Durum else 0 end)) as '29',sum((case when substring(Utarih,7,2) = '30' then GD.Durum else 0 end)) as '30',
sum((case when substring(Utarih,7,2) = '31' then GD.Durum else 0 end)) as '31',0 as x,

(sum((case when substring(Utarih,7,2) = '01' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '02' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '03' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '04' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '05' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '06' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '07' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '08' then GD.Durum else 0 end))+
sum((case when substring(Utarih,7,2) = '09' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '10' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '11' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '12' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '13' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '14' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '15' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '16' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '17' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '18' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '19' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '20' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '21' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '22' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '23' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '24' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '25' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '26' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '27' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '28' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '29' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '30' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '31' then GD.Durum else 0 end))) as y
,HK.SicilNo,1
from GelisDetay GD
 inner join HastaKart HK on HK.dosyaNo = GD.dosyaNo
where HK.Kurumtip = '1'
and Utarih >= @donem and Utarih <= @donem1
group by HK.HASTAADI + ' ' + HK.HASTASOYADI ,Gd.GelisNo,HK.sicilNo
order by HK.HASTAADI + ' ' + HK.HASTASOYADI
/*
UNION ALL
select 'TOPLAM' ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0
UNION ALL
select 'DEVLET MEMURLARI' ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,0
UNION ALL
*/

insert into @DM
select
HK.HASTAADI + ' ' + HK.HASTASOYADI, --as AdiSoyadi,
sum((case when substring(Utarih,7,2) = '01' then GD.Durum else 0 end)) as '01',sum((case when substring(Utarih,7,2) = '02' then GD.Durum else 0 end)) as '02',
sum((case when substring(Utarih,7,2) = '03' then GD.Durum else 0 end)) as '03',sum((case when substring(Utarih,7,2) = '04' then GD.Durum else 0 end)) as '04',
sum((case when substring(Utarih,7,2) = '05' then GD.Durum else 0 end)) as '05',sum((case when substring(Utarih,7,2) = '06' then GD.Durum else 0 end)) as '06',
sum((case when substring(Utarih,7,2) = '07' then GD.Durum else 0 end)) as '07',sum((case when substring(Utarih,7,2) = '08' then GD.Durum else 0 end)) as '08',
sum((case when substring(Utarih,7,2) = '09' then GD.Durum else 0 end)) as '09',sum((case when substring(Utarih,7,2) = '10' then GD.Durum else 0 end)) as '10',
sum((case when substring(Utarih,7,2) = '11' then GD.Durum else 0 end)) as '11',sum((case when substring(Utarih,7,2) = '12' then GD.Durum else 0 end)) as '12',
sum((case when substring(Utarih,7,2) = '13' then GD.Durum else 0 end)) as '13',sum((case when substring(Utarih,7,2) = '14' then GD.Durum else 0 end)) as '14',
sum((case when substring(Utarih,7,2) = '15' then GD.Durum else 0 end)) as '15',sum((case when substring(Utarih,7,2) = '16' then GD.Durum else 0 end)) as '16',
sum((case when substring(Utarih,7,2) = '17' then GD.Durum else 0 end)) as '17',sum((case when substring(Utarih,7,2) = '18' then GD.Durum else 0 end)) as '18',
sum((case when substring(Utarih,7,2) = '19' then GD.Durum else 0 end)) as '19',sum((case when substring(Utarih,7,2) = '20' then GD.Durum else 0 end)) as '20',
sum((case when substring(Utarih,7,2) = '21' then GD.Durum else 0 end)) as '21',sum((case when substring(Utarih,7,2) = '22' then GD.Durum else 0 end)) as '22',
sum((case when substring(Utarih,7,2) = '23' then GD.Durum else 0 end)) as '23',sum((case when substring(Utarih,7,2) = '24' then GD.Durum else 0 end)) as '24',
sum((case when substring(Utarih,7,2) = '25' then GD.Durum else 0 end)) as '25',sum((case when substring(Utarih,7,2) = '26' then GD.Durum else 0 end)) as '26',
sum((case when substring(Utarih,7,2) = '27' then GD.Durum else 0 end)) as '27',sum((case when substring(Utarih,7,2) = '28' then GD.Durum else 0 end)) as '28',
sum((case when substring(Utarih,7,2) = '29' then GD.Durum else 0 end)) as '29',sum((case when substring(Utarih,7,2) = '30' then GD.Durum else 0 end)) as '30',
sum((case when substring(Utarih,7,2) = '31' then GD.Durum else 0 end)) as '31',0,

(sum((case when substring(Utarih,7,2) = '01' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '02' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '03' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '04' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '05' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '06' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '07' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '08' then GD.Durum else 0 end))+
sum((case when substring(Utarih,7,2) = '09' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '10' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '11' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '12' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '13' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '14' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '15' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '16' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '17' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '18' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '19' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '20' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '21' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '22' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '23' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '24' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '25' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '26' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '27' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '28' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '29' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '30' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '31' then GD.Durum else 0 end)))
,HK.SicilNo,6
from GelisDetay GD
inner join HastaKart HK on HK.dosyaNo = GD.dosyaNo
where (HK.KurumTip in ('6','7','10'))
and Utarih >= @donem and Utarih <= @donem1
group by HK.HASTAADI + ' ' + HK.HASTASOYADI ,Gd.GelisNo,HK.sicilNo
order by HK.HASTAADI + ' ' + HK.HASTASOYADI

/*
UNION ALL
select 'TOPLAM' ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0

UNION ALL
select 'BAGKUR' ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,0
UNION ALL
*/

insert into @b

select
HK.HASTAADI + ' ' + HK.HASTASOYADI, --as AdiSoyadi,
sum((case when substring(Utarih,7,2) = '01' then GD.Durum else 0 end)) as '01',sum((case when substring(Utarih,7,2) = '02' then GD.Durum else 0 end)) as '02',
sum((case when substring(Utarih,7,2) = '03' then GD.Durum else 0 end)) as '03',sum((case when substring(Utarih,7,2) = '04' then GD.Durum else 0 end)) as '04',
sum((case when substring(Utarih,7,2) = '05' then GD.Durum else 0 end)) as '05',sum((case when substring(Utarih,7,2) = '06' then GD.Durum else 0 end)) as '06',
sum((case when substring(Utarih,7,2) = '07' then GD.Durum else 0 end)) as '07',sum((case when substring(Utarih,7,2) = '08' then GD.Durum else 0 end)) as '08',
sum((case when substring(Utarih,7,2) = '09' then GD.Durum else 0 end)) as '09',sum((case when substring(Utarih,7,2) = '10' then GD.Durum else 0 end)) as '10',
sum((case when substring(Utarih,7,2) = '11' then GD.Durum else 0 end)) as '11',sum((case when substring(Utarih,7,2) = '12' then GD.Durum else 0 end)) as '12',
sum((case when substring(Utarih,7,2) = '13' then GD.Durum else 0 end)) as '13',sum((case when substring(Utarih,7,2) = '14' then GD.Durum else 0 end)) as '14',
sum((case when substring(Utarih,7,2) = '15' then GD.Durum else 0 end)) as '15',sum((case when substring(Utarih,7,2) = '16' then GD.Durum else 0 end)) as '16',
sum((case when substring(Utarih,7,2) = '17' then GD.Durum else 0 end)) as '17',sum((case when substring(Utarih,7,2) = '18' then GD.Durum else 0 end)) as '18',
sum((case when substring(Utarih,7,2) = '19' then GD.Durum else 0 end)) as '19',sum((case when substring(Utarih,7,2) = '20' then GD.Durum else 0 end)) as '20',
sum((case when substring(Utarih,7,2) = '21' then GD.Durum else 0 end)) as '21',sum((case when substring(Utarih,7,2) = '22' then GD.Durum else 0 end)) as '22',
sum((case when substring(Utarih,7,2) = '23' then GD.Durum else 0 end)) as '23',sum((case when substring(Utarih,7,2) = '24' then GD.Durum else 0 end)) as '24',
sum((case when substring(Utarih,7,2) = '25' then GD.Durum else 0 end)) as '25',sum((case when substring(Utarih,7,2) = '26' then GD.Durum else 0 end)) as '26',
sum((case when substring(Utarih,7,2) = '27' then GD.Durum else 0 end)) as '27',sum((case when substring(Utarih,7,2) = '28' then GD.Durum else 0 end)) as '28',
sum((case when substring(Utarih,7,2) = '29' then GD.Durum else 0 end)) as '29',sum((case when substring(Utarih,7,2) = '30' then GD.Durum else 0 end)) as '30',
sum((case when substring(Utarih,7,2) = '31' then GD.Durum else 0 end)) as '31',0,

(sum((case when substring(Utarih,7,2) = '01' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '02' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '03' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '04' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '05' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '06' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '07' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '08' then GD.Durum else 0 end))+
sum((case when substring(Utarih,7,2) = '09' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '10' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '11' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '12' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '13' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '14' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '15' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '16' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '17' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '18' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '19' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '20' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '21' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '22' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '23' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '24' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '25' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '26' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '27' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '28' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '29' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '30' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '31' then GD.Durum else 0 end)))
,HK.SicilNo,2
from GelisDetay GD
inner join HastaKart HK on HK.dosyaNo = GD.dosyaNo
where HK.KurumTip = '2'
and Utarih >= @donem and Utarih <= @donem1
group by HK.HASTAADI + ' ' + HK.HASTASOYADI ,Gd.GelisNo,HK.sicilNo
order by HK.HASTAADI + ' ' + HK.HASTASOYADI

/*
UNION ALL
select 'TOPLAM' ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0
UNION ALL

select 'EMEKLI SANDIGI' ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,0
UNION ALL
*/

insert into @ES
select
HK.HASTAADI + ' ' + HK.HASTASOYADI, --as AdiSoyadi,
sum((case when substring(Utarih,7,2) = '01' then GD.Durum else 0 end)) as '01',sum((case when substring(Utarih,7,2) = '02' then GD.Durum else 0 end)) as '02',
sum((case when substring(Utarih,7,2) = '03' then GD.Durum else 0 end)) as '03',sum((case when substring(Utarih,7,2) = '04' then GD.Durum else 0 end)) as '04',
sum((case when substring(Utarih,7,2) = '05' then GD.Durum else 0 end)) as '05',sum((case when substring(Utarih,7,2) = '06' then GD.Durum else 0 end)) as '06',
sum((case when substring(Utarih,7,2) = '07' then GD.Durum else 0 end)) as '07',sum((case when substring(Utarih,7,2) = '08' then GD.Durum else 0 end)) as '08',
sum((case when substring(Utarih,7,2) = '09' then GD.Durum else 0 end)) as '09',sum((case when substring(Utarih,7,2) = '10' then GD.Durum else 0 end)) as '10',
sum((case when substring(Utarih,7,2) = '11' then GD.Durum else 0 end)) as '11',sum((case when substring(Utarih,7,2) = '12' then GD.Durum else 0 end)) as '12',
sum((case when substring(Utarih,7,2) = '13' then GD.Durum else 0 end)) as '13',sum((case when substring(Utarih,7,2) = '14' then GD.Durum else 0 end)) as '14',
sum((case when substring(Utarih,7,2) = '15' then GD.Durum else 0 end)) as '15',sum((case when substring(Utarih,7,2) = '16' then GD.Durum else 0 end)) as '16',
sum((case when substring(Utarih,7,2) = '17' then GD.Durum else 0 end)) as '17',sum((case when substring(Utarih,7,2) = '18' then GD.Durum else 0 end)) as '18',
sum((case when substring(Utarih,7,2) = '19' then GD.Durum else 0 end)) as '19',sum((case when substring(Utarih,7,2) = '20' then GD.Durum else 0 end)) as '20',
sum((case when substring(Utarih,7,2) = '21' then GD.Durum else 0 end)) as '21',sum((case when substring(Utarih,7,2) = '22' then GD.Durum else 0 end)) as '22',
sum((case when substring(Utarih,7,2) = '23' then GD.Durum else 0 end)) as '23',sum((case when substring(Utarih,7,2) = '24' then GD.Durum else 0 end)) as '24',
sum((case when substring(Utarih,7,2) = '25' then GD.Durum else 0 end)) as '25',sum((case when substring(Utarih,7,2) = '26' then GD.Durum else 0 end)) as '26',
sum((case when substring(Utarih,7,2) = '27' then GD.Durum else 0 end)) as '27',sum((case when substring(Utarih,7,2) = '28' then GD.Durum else 0 end)) as '28',
sum((case when substring(Utarih,7,2) = '29' then GD.Durum else 0 end)) as '29',sum((case when substring(Utarih,7,2) = '30' then GD.Durum else 0 end)) as '30',
sum((case when substring(Utarih,7,2) = '31' then GD.Durum else 0 end)) as '31',0,

(sum((case when substring(Utarih,7,2) = '01' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '02' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '03' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '04' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '05' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '06' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '07' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '08' then GD.Durum else 0 end))+
sum((case when substring(Utarih,7,2) = '09' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '10' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '11' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '12' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '13' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '14' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '15' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '16' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '17' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '18' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '19' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '20' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '21' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '22' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '23' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '24' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '25' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '26' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '27' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '28' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '29' then GD.Durum else 0 end)) +sum((case when substring(Utarih,7,2) = '30' then GD.Durum else 0 end)) +
sum((case when substring(Utarih,7,2) = '31' then GD.Durum else 0 end)))
,HK.SicilNo,3

from GelisDetay GD
inner join HastaKart HK on HK.dosyaNo = GD.dosyaNo
where HK.KurumTip = '3'
and Utarih >= @donem and Utarih <= @donem1
group by HK.HASTAADI + ' ' + HK.HASTASOYADI ,Gd.GelisNo,HK.sicilNo
order by HK.HASTAADI + ' ' + HK.HASTASOYADI


if @tip = 'G'
begin
	select 'SSK HASTALARI' ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,0,'',0
	UNION ALL
	select * from @SSK

	UNION ALL
	select 'TOPLAM' ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,'',0
	UNION ALL
	select 'Diger Sgk Hak' ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,0,'',0
	UNION ALL
	--
	select * from @DM
	--
	UNION ALL
	select 'TOPLAM' ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,'',0
	--
	UNION ALL
	select 'BAGKUR' ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,0,'',0
	UNION ALL
	--
	select * from @b
	--
	UNION ALL
	select 'TOPLAM' ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,'',0
	UNION ALL
	--
	select 'EMEKLI SANDIGI' ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,0,'',0
	UNION ALL
	--
	select * from @ES
	--
	UNION ALL
	select 'TOPLAM' ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,'',0
	--
end
else begin
	 
    insert into @sgk
    select ' SGK HASTALARI' ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,0,'',0
    insert into @sgk
    select * from @ssk
    insert into @sgk
    select * from @b
    insert into @sgk
	select * from @DM
    insert into @sgk
    select * from @ES
    
    --select ' SGK HASTALARI' ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,0,'',0
    select * from @SgK
    order by adi
--	UNION ALL
--	select * from @DM
--	UNION ALL
--	select * from @b
--	UNION ALL
--	select * from @ES
end






