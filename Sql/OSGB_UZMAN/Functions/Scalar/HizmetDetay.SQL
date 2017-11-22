BEGIN TRAN
GO
ALTER FUNCTION [dbo].[HizmetDetay] (@takipno varchar(20))
RETURNS varchar(500)
AS
BEGIN

declare @knr varchar(6), @snr varchar(3),@Tel varchar(100),@sonuc varchar(500),
        @doktor varchar(10),@serviskodu varchar(10),@servis varchar(50),@tarih varchar(10),
        @ambu varchar(1),@CikisTarih varchar(10),@TaburcuKodu varchar(2),
        @Sonucu varchar(1000),@IstisnaiDurum varchar(2) , @Sonucaciklama varchar(1000),
        @TesisKodu varchar(10) ,@kod varchar(7) , @hastatip varchar(1),@FirmaAdi varchar(100),@SUT varchar(10),@ICDCount int,
        @diyalizBilgileri varchar(1000)   ,@kg varchar(10)  ,@EA varchar(100) ,@ss int,@ilkD varchar(10),@hepatitler varchar(100),
        @geldimerkez varchar(100),@PD varchar(100) ,@ktv varchar(50),@tip varchar(1),@apm INT,@ikilo FLOAT,
        @heparin VARCHAR(10),@d VARCHAR(20),@soy VARCHAR(200)
--,@TakipNo varchar(8), @DataSet varchar(15)

--set @TakipNo = '12345678'
set @PD = 'PD Takibi Yapýlmýþtýr.' 
set @ICDCount = 0
select @SUT = SLXX from parametreler where SLB = 'SUT' and SLK = '33'


select @TesisKodu = slb from Parametreler
where slk = '99'

select @EA = SLVV from Parametreler
where slk = 'EA' and slb = '00'


select @knr = g.dosyaNo ,@snr = g.gelisNo , @hastaTip = h.hastatip , @tip = h.tip,
       @tarih = g.BHDAT,@TaburcuKodu = g.taburcu , 
       @tel = isnull(h.EV_TEL1,'')+' ' +isnull(h.EV_TEL2,'')+' '+isnull(IS_TEL1,'')+' '+isnull(Is_TEL2,'') + ' ' + isnull(ev_adres,''),   
       @kg =(case h.kangrubu
         when 0 then 'A RH(+)'
         when 1 then 'A RH(-)'
         when 2 then 'AB RH(+)'
         when 3 then 'AB RH(-)'
         when 4 then 'B RH(+)'
         when 5 then 'B RH(-)'
         when 6 then '0 RH(+)'
         when 7 then '0 RH(-)'
        else '' end),
        @ilkD = dbo.formattedTarih(BASLANGIC),
        @geldimerkez = (case when h.aktif = 2 then
                           (select top 1 tarih + ' ' + aciklama from hastaKartDurum where dosyaNo = g.dosyaNo order by date_create desc)
                        else '' end),
        @apm = h.aktif,  
      @diyalizbilgileri = isnull(aciklama,''),
      @ktv = cast(KT_v as varchar) + ' / URR : '+cast(Urr as varchar) ,
      @ikilo = h.IdealKilo,
      @heparin = h.H,
      @d = h.D  ,
      @soy = 'Soy Geçmiþ : ' + isnull(cast(h.soygecmis AS VARCHAR(200)),'') + ' - Tedavi Geçmiþ :' + isnull(cast(h.hastaNot AS VARCHAR(200)),'')                          
                            
from Gelisler g
    left join HastaKart h on h.dosyaNo = g.dosyaNo 
    left join LabsonucDegerlendirme D on d.dosyaNO = g.dosyaNO and D.gelisNo = g.gelisNO
where g.takIpno = @takipno or g.basvuruNo = @takipNo



set @hepatitler = ''
select @hepatitler =  
       'HbsAg :(' + replace(replace(HbsAg,'-1','-'),'1','+') + ')' + 
       ' AntiHbs :(' + replace(replace(AntiHbs,'-1','-'),'1','+') + ')' +
       ' AntiHCV :(' + replace(replace(AntiHCV,'-1','-'),'1','+') + ')' +
       ' AntiHIV :(' + replace(replace(Hiv,'-1','-'),'1','+') + ')'
from hastakart h
--join labtestler t on t.butkodu = h.code and t.hepatitmarker = 'E'
where dosyaNo = @knr --and gelisNO = @snr

select @ss = count(*) from gelisdetay
where dosyaNo = @knr and gelisNo = @snr and durum = 1


--select @knr = dosyaNo , @snr = gelisNo from gelisdetay where TakipNo = @takipno

select @FirmaAdi = merkezAdi from merkezBilgisi


select @servis = (case when isnull(SLXX,'') = '' then '1062' else SLXX end)
from parametreler 
where SLK = '33' and SLB = 'BRANS' 


select @sonuc =
        (case when charindex('0',@EA)>0 then 'Ýlk Diyaliz Tarihi : ' + isnull(@ilkD,'') else '' end) + ' ' + char(13) +
        (case when charindex('1',@EA)>0 then ' Kan Grubu : ' + isnull(@kg,'') else '' end) + ' ' +char(13)+
        (case when charindex('2',@EA)>0 then ' Ktv : ' + isnull(@ktv,'') else '' end) + ' ' + char(13)+
        (case when charindex('9',@EA)>0 then ' Ýdeal Kilo : ' + cast(isnull(@ikilo,0) AS VARCHAR) + 
                                             ' - Heparin : ' + isnull(@heparin,'') +
                                             ' - Diyalizat : ' + isnull(@d,'') else '' end) + ' ' +char(13)+

        (case when charindex('3',@EA)>0 then ' Hepatit : ' + isnull(@hepatitler,'') else '' end) + ' ' + char(13)  +    
        (case when (charindex('6',@EA)>0 and @apm = '2') then ' Geldiði Merkez : '  + isnull(@geldimerkez,'')  else '' end) + ' '+ char(13)+
        (case when (charindex('5',@EA)>0 and @tip = 'H') then cast(@ss as varchar) + ' Seans Diyalize Girmiþtir.' else '' end) + ' ' +char(13)+
        (case when (charindex('7',@EA)>0 and @tip <> 'H') then @PD else '' end) + ' ' +char(13) +
        (case when charindex('4',@EA)>0 then ' Ýletiþim : ' + @Tel else '' end) + ' ' +CHAR(13) +
        (case when charindex('A',@EA)>0 then @soy else '' end)
                          

     from gelisler g
     left join kurumFatura K on k.takipNo = g.takýpNo
     where g.basvuruNo = @takipNo  --and isnull(k.GSSFaturaTeslimNo,'') = ''



return @sonuc

end
GO
exec sp_vw_sys_upd 'FN', 'dbo', 'HizmetDetay'
GO
COMMIT
GO
