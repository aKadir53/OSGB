BEGIN TRAN
GO
ALTER PROCEDURE [dbo].[sp_LabSonucYazdir] @dosyaNo varchar(10),@gelis int , @tip varchar(1) = '1' , 
                                          @code varchar(10) = '',@sec varchar(1) = '' 

AS
--declare @dosyaNo varchar(10),@gelis int , @detayNo int 
--set @dosyaNo = '002535'
--set @gelis = 3
--set @detayNo = 0 
--

declare @Onay int
select @Onay = SLX from parametreler where SLk = '31' and SLB = '24'

--set @code = char(39) + @code + char(39)

if @tip = ''
Begin

select *
from

(

select Distinct 
  ls.dosyaNo,ls.gelisno,ls.testno,ls.Aciklama,lk.doktor,
  lk.hastaAdi,lk.Cinsiyet,lk.yas,lk.kabulTarihi,
  h.name1,nd.aciklama as aciklamasi,nd.ref_aciklama,
  hk.TCKIMLIKNO,k.Tanimi ADI1,dbo.doktorBul(g.doktor) as DoktorAdi,
 'ÝÞYERÝ HEKÝMLÝÐÝ' as servisAdi,
  isnull(convert(varchar,nd.normal1),'') as normal1,
  isnull(convert(varchar,nd.normal2),'') as normal2,
  (case when nd.aCiklama <> '' then '' else ls.parametreadi end) as ad,
  
  (case when nd.aCiklama <> '' then '' else ls.parametrebirim end) as birim,
  (case when nd.aCiklama <> '' then '' else ls.sonuc1 end) as sonuc11,
  (case when nd.aCiklama <> '' then '' else ls.sonuc2 end) as sonuc22,
  (case when nd.aCiklama <> '' then '' else ls.sonuc3 end) as sonuc33,ls.parametre_sira,nd.ndSira,ls.hareketsira,
  h.OZELKOD,LG.SLT,ls.tip,lk.sonuc,ls.olusturmatarihi,lk.date_create,ls.ikaz,(ls.normal1+' - ' +ls.normal2) as Panik
, dbo.labsonucNormalDurum(ls.sonuc1, ls.ref_aciklama) NormalTip
  


--((CONVERT(INT,GETDATE())-CONVERT(INT,CAST(ISNULL(Hk.DOGUMTARIHI,'')AS DATETIME)))/365) as yas
--0 as yas
from laboratuvar_sonuc ls
	left join LaboratuvarKabul lk on lk.dosyaNo = ls.dosyaNo and lk.gelisNo = ls.gelisNo and lk.code = ls.testNo and ls.hareketSira = lk.hareketlerSira	
    --left join laboratuvar_parametre lp on lp.kodu = lk.Icode    
    left join lab_normaldeger nd on ls.parametre_sira = nd.sira  and lk.Icode = nd.testkodu
 --and nd.aCiklama <> ''  --(@yas between nd.yas1 and nd.yas2) and nd.aCiklama = ''	
 --   inner join hastaKart hk on hk.dosyaNo = ls.dosyaNo
  and  (lk.yas between nd.yas1 and nd.yas2) and 
 (substring(nd.cinsiyet,1,1) =replace(substring(lk.cinsiyet,1,1),'B','K') or substring(nd.cinsiyet,1,1) = 'H')

	left join hýzmet h on h.code = ls.code
    left join personelKart hk on hk.dosyano=ls.dosyano
    left join SIRKETLER_TNM k on k.SirketKod=hk.SirketKod
    left join gelisler g on g.dosyano = ls.dosyano and g.gelisno = ls.gelisno 
    left join lab_gruplari lg on lg.SLB = ls.OZELKOD
where ls.dosyaNo = @dosyaNo and ls.gelisNo = @gelis and
--
      ((lk.sec = 1 or lk.sec = @Onay) and yazdirildi <> 1)
      --(case when @sec = '' then lk.sec else 1 end) = 1
      and ((ls.tip = 'P' and ls.sonuc1 <> '') or (ls.tip = 'B'))

) as tmp
join personelKart hk on tmp.dosyaNO = hk.dosyaNo

 
ORDER BY tmp.OZELKOD,tmp.testno,tmp.parametre_sira,tmp.olusturmatarihi,tmp.hareketsira,tmp.ndSira


end






if @tip = '1'
begin

select *
from

(

select Distinct 
  ls.dosyaNo,ls.testno,ls.Aciklama,lk.doktor,
  lk.hastaAdi,lk.Cinsiyet,lk.yas,lk.kabulTarihi,
  h.name1,nd.aciklama as aciklamasi,nd.ref_aciklama,
  hk.TCKIMLIKNO,k.tanimi ADI1,dbo.doktorBul(g.doktor) as DoktorAdi,
 'ÝÞYERÝ HEKÝMLÝÐÝ' as servisAdi,
  isnull(convert(varchar,nd.normal1),'') as normal1,
  isnull(convert(varchar,nd.normal2),'') as normal2,
  (case when nd.aCiklama <> '' then '' else ls.parametreadi end) as ad,
  
  (case when nd.aCiklama <> '' then '' else ls.parametrebirim end) as birim,
  (case when nd.aCiklama <> '' then '' else ls.sonuc1 end) as sonuc11,
  (case when nd.aCiklama <> '' then '' else ls.sonuc2 end) as sonuc22,
  (case when nd.aCiklama <> '' then '' else ls.sonuc3 end) as sonuc33,ls.parametre_sira,nd.ndSira,h.OZELKOD,ls.olusturmatarihi,lk.date_create,ls.ikaz,(ls.normal1+' - ' +ls.normal2) as Panik
  
  


--((CONVERT(INT,GETDATE())-CONVERT(INT,CAST(ISNULL(Hk.DOGUMTARIHI,'')AS DATETIME)))/365) as yas
--0 as yas
from laboratuvar_sonuc ls
	left join LaboratuvarKabul lk on lk.dosyaNo = ls.dosyaNo and lk.gelisNo = ls.gelisNo and lk.code = ls.testNo	
    --left join laboratuvar_parametre lp on lp.kodu = lk.Icode    
    left join lab_normaldeger nd on ls.parametre_sira = nd.sira  and lk.Icode = nd.testkodu
 --and nd.aCiklama <> ''  --(@yas between nd.yas1 and nd.yas2) and nd.aCiklama = ''	
  and  (lk.yas between nd.yas1 and nd.yas2) and 
 (substring(nd.cinsiyet,1,1) =replace(substring(lk.cinsiyet,1,1),'B','K') or substring(nd.cinsiyet,1,1) = 'H')
    inner join personelKart hk on hk.dosyaNo = ls.dosyaNo
    left join SIRKETLER_TNM k on k.SirketKod=hk.SirketKod
	left join hýzmet h on h.code = ls.code
    inner join gelisler g on g.dosyano=ls.dosyano and g.gelisno=ls.gelisno
where ls.dosyaNo = @dosyaNo and ls.gelisNo = @gelis 
      and lk.Icode = @code
      and ((ls.tip = 'P' and ls.sonuc1 <> '') or (ls.tip = 'B'))
      AND (lk.sec = 1)
) as tmp
join perosnelKart hk on tmp.dosyaNO = hk.dosyaNo

 
ORDER BY tmp.OZELKOd,tmp.parametre_sira,tmp.olusturmatarihi,tmp.ndSira 

end



if @tip = 'E'
Begin

select *
from

(

select Distinct 
  ls.dosyaNo,ls.gelisno,ls.testno,ls.Aciklama,lk.doktor,
  lk.hastaAdi,lk.Cinsiyet,lk.yas,lk.kabulTarihi,
  h.name1,nd.aciklama as aciklamasi,nd.ref_aciklama,
  hk.TCKIMLIKNO,k.tanimi ADI1,dbo.doktorBul(g.doktor) as DoktorAdi,
 'ÝÞYERÝ HEKÝMLÝÐÝ' as servisAdi,
  isnull(convert(varchar,nd.normal1),'') as normal1,
  isnull(convert(varchar,nd.normal2),'') as normal2,
  (case when nd.aCiklama <> '' then '' else ls.parametreadi end) as ad,
  
  (case when nd.aCiklama <> '' then '' else ls.parametrebirim end) as birim,
  (case when nd.aCiklama <> '' then '' else ls.sonuc1 end) as sonuc11,
  (case when nd.aCiklama <> '' then '' else ls.sonuc2 end) as sonuc22,
  (case when nd.aCiklama <> '' then '' else ls.sonuc3 end) as sonuc33,ls.parametre_sira,nd.ndSira,ls.hareketsira,h.OZELKOD,LG.SLT,ls.tip,ls.olusturmatarihi,lk.date_create,ls.ikaz,(ls.normal1+' - ' +ls.normal2) as Panik
  
  


--((CONVERT(INT,GETDATE())-CONVERT(INT,CAST(ISNULL(Hk.DOGUMTARIHI,'')AS DATETIME)))/365) as yas
--0 as yas
from laboratuvar_sonuc ls
	inner join LaboratuvarKabul lk on lk.dosyaNo = ls.dosyaNo and lk.gelisNo = ls.gelisNo and lk.code = ls.testNo and ls.hareketSira = lk.hareketlerSira	
    --left join laboratuvar_parametre lp on lp.kodu = lk.Icode    
    left join lab_normaldeger nd on ls.parametre_sira = nd.sira  and lk.Icode = nd.testkodu
 --and nd.aCiklama <> ''  --(@yas between nd.yas1 and nd.yas2) and nd.aCiklama = ''	
 --   inner join hastaKart hk on hk.dosyaNo = ls.dosyaNo
  and  (lk.yas between nd.yas1 and nd.yas2) and 
 (substring(nd.cinsiyet,1,1) =replace(substring(lk.cinsiyet,1,1),'B','K') or substring(nd.cinsiyet,1,1) = 'H')
	inner join hýzmet h on h.code = ls.code
    inner join PersonelKart hk on hk.dosyano=ls.dosyano
    left join SIRKETLER_TNM k on k.SirketKod=hk.SirketKod
    inner join gelisler g on g.dosyano=ls.dosyano and g.gelisno=ls.gelisno  
    left join lab_gruplari lg on lg.SLB = ls.OZELKOD
where ls.dosyaNo = @dosyaNo and ls.gelisNo = @gelis --and
--
--      ((lk.sec = 1 or lk.sec = @Onay) and yazdirildi <> 1)
      --(case when @sec = '' then lk.sec else 1 end) = 1
    --  and ((ls.tip = 'P' and ls.sonuc1 <> '') or (ls.tip = 'B'))

) as tmp
join PersonelKart hk on tmp.dosyaNO = hk.dosyaNo

 
ORDER BY tmp.OZELKOD,tmp.parametre_sira,tmp.olusturmatarihi,tmp.testno,tmp.hareketsira,tmp.ndSira
end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_LabSonucYazdir'
GO
COMMIT
GO
