BEGIN TRAN
GO
--ALTER 
ALTER
PROCEDURE [dbo].[sp_LabKabulListesi]
            @tarih1 varchar(10),--,@tarih2 varchar(10)
            @dosyaNo varchar(10) = '',@gelisNo int = 0,@tip varchar(1) = ''
AS
BEGIN
--declare @tarih1 varchar(10),@tarih2 varchar(10)
--set tarih1


if @tip = ''
BEGIN
---	if @dosyaNo = ''
--	begin
		select (hk.hastaAdý+' '+hk.hastasoyadý) as Hasta,g.dosyaNo,
		g.TEDAVITURU as Tedavi,g.Date_create as HastaGelis,
		h.date_create as ÝslemGiris,
		g.SERVIS,h.code as HizmetKodu,h.NAME1 as HizmetAdý,dbo.DoktorBul(g.Doktor) as Doktor,
		lk.Durum as Durum,g.dosyaNo,g.gelisNo,h.code,h.SIRANO,
        ((CONVERT(INT,GETDATE())-CONVERT(INT,CAST(ISNULL(hk.DOGUMTARIHI,'')AS DATETIME)))/365)  as yas,
       (case when CINSIYETI = 1 then 'Bayan' else 'Erkek' end) as cinsiyet
 
		 from gelisler g
			inner join hareketler h on h.dosyaNo = g.dosyaNo and h.gelisNo = g.gelisNo 
			inner join PersonelKart hk on hk.dosyaNo = g.dosyaNo
			left join hizmet_gruplari hg on hg.kod = h.tip
			left join LaboratuvarKabul lk on lk.dosyaNo = h.dosyaNo and lk.gelisNo = h.gelisNo and lk.HareketlerSira = h.SIRANO
			 and h.code = lk.ýcode 
		where hg.kod = '02' and 
		convert(varchar,h.date_create,112) >= @tarih1
		--and h.tarýh <= @tarih2
		and lk.dosyaNo is null and g.dosyaNo = @dosyaNo AND g.gelisNo = @gelisNo
--	end
	--else
	--begin
		
/*
        select count(*)
		 from gelisler g
			inner join labhareketler h on h.dosyaNo = g.dosyaNo and h.gelisNo = g.gelisNo and h.gelisDetayNo = g.YTakýpno
			inner join hastakart hk on hk.dosyaNo = g.dosyaNo
			--left join hizmet_gruplari hg on hg.SLB = h.TANIM
			left join LaboratuvarKabul lk on lk.dosyaNo = h.dosyaNo and lk.gelisNo = h.gelisNo and lk.detayNo = h.gelisDetayNo 
			 and h.code = lk.code 
		where --substring(hg.SLXX,1,1) = 2 and 
		convert(varchar,h.date_create,112) >= @tarih1
		--and h.tarýh <= @tarih2
		and h.dosyaNo = @dosyaNo and h.gelisNo = @gelisNo and h.gelisDetayNo = @detayNo
		and lk.dosyaNo is null
*/
--	end

END

if @tip = '1'
BEGIN
        select DISTINCT (hk.hastaAdý+' '+hk.hastasoyadý) as Hasta,h.dosyaNo,
		g.TEDAVITURU as Tedavi,g.date_create as HastaGelis,
	--	h.DATE_CREATE as ÝslemGiris,
        ((CONVERT(INT,GETDATE())-CONVERT(INT,CAST(ISNULL(hk.DOGUMTARIHI,'')AS DATETIME)))/365)  as yas,
       (case when CINSIYETI = 1 then 'Bayan' else 'Erkek' end) as cinsiyet ,g.gelisNo
        from hareketler h
    --    join hizmet_gruplari hg on hg.SLB = h.TANIM 			        
		join gelisler g on h.dosyaNo = g.dosyaNo and h.gelisNo = g.gelisNo
			inner join PersonelKart hk on hk.dosyaNo = h.dosyaNo						
            left join LaboratuvarKabul lk on lk.dosyaNo = h.dosyaNo and lk.gelisNo = h.gelisNo and lk.HareketlerSira = h.SIRANO
			 and h.code = lk.ýcode 
		where --bhdat >= @tarih1 and
        --substring(hg.SLXX,1,1) = 2	
        --h.TANIM = '02'and 
		convert(varchar,h.date_create,112) >= @tarih1 
		AND convert(varchar,h.date_create,112) <= CONVERT(VARCHAR,GETDATE(),112)
		--and substring(hg.SLXXV,1,1) = 2 
		--and h.tarýh <= @tarih2
		and lk.dosyaNo is null
END

if @tip = '3'
BEGIN
        select DISTINCT (hk.hastaAdý+' '+hk.hastasoyadý) as Hasta,g.dosyaNo,
		g.TEDAVITURU as Tedavi,g.date_create as HastaGelis,
	--	h.DATE_CREATE as ÝslemGiris,
        ((CONVERT(INT,GETDATE())-CONVERT(INT,CAST(ISNULL(hk.DOGUMTARIHI,'')AS DATETIME)))/365)  as yas,
       (case when CINSIYETI = 1 then 'Bayan' else 'Erkek' end) as cinsiyet ,g.gelisNo
        from hareketler h
        join hizmet_gruplari hg on hg.kod = h.tip 			        
		join gelisler g on h.dosyaNo = g.dosyaNo and h.gelisNo = g.gelisNo   
			inner join PersonelKart hk on hk.dosyaNo = g.dosyaNo						
            left join LaboratuvarKabul lk on lk.dosyaNo = h.dosyaNo and lk.gelisNo = h.gelisNo and lk.HareketlerSira = h.SIRANO
			 and h.code = lk.ýcode 
		where --bhdat >= @tarih1 and
        --substring(hg.SLXX,1,1) = 2	
        --h.TANIM = '02'and 
		convert(varchar,h.date_create,112) = @tarih1
		--and h.tarýh <= @tarih2
		and lk.dosyaNo is null
END




END
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_LabKabulListesi'
GO
COMMIT
GO
