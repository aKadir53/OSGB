BEGIN TRAN
GO
-- sp_labSonucGir ALTER proc
ALTER PROCEDURE [dbo].[sp_labSonucGir] @tarih varchar(10),@hasta varchar(10),@kod varchar(20),
                                @yas int ,@cinsiyet varchar(1)
AS
--declare
--set @tarih = '20080404'
--set @hasta = '011247'
begin
insert into laboratuvar_sonuc (sira,dosyaNo,gelisno,testno,barkodNo,parametreadi,parametrebirim,doktorno1,
             normal1,normal2,ref_aciklama,parametre_sira,yas1,yas2,cinsi,doktorNo2,kullanici,aciklama,code,sonuc1,sonuc2,tip,sonuc3,hareketSira,OZELKOD,dec)

select k.sira,k.dosyaNo as DosyaNo,k.gelisNo as GelisNo,
       k.code as TestKodu,k.barkodNo as KabulNo,
       lp.parametreadi,lp.parametrebirim,k.doktor,
       nd.normal1,nd.normal2,nd.ref_aciklama,
       lp.sira,
       nd.yas1,nd.yas2,'NORMAL','','',nd.aciklama,
       k.Icode,
       (case when lp.[type] = 'F' then '  ' else lp.parametreadi1 end),
       lp.parametreadi2,lp.[type],parametreadi3,k.hareketlersira,k.OZELKOD,lp.duyarlik

from LaboratuvarKabul k
    left join laboratuvar_parametre lp on lp.kodu = k.code
	left join lab_normaldeger nd on nd.sira = lp.sira and isnull(nd.aCiklama,'') = ''
                                    and nd.testkodu = lp.kodu and (@yas between nd.yas1 and nd.yas2)      
   -- JOIN HIZMET H ON H.CODE = K.ICODE
 and 
 (substring(nd.cinsiyet,1,1) = replace(substring(@cinsiyet,1,1),'B','K') or substring(nd.cinsiyet,1,1) = 'H') 
    --inner join gelisler g on g.dosyaNo = k.dosyaNo and g.gelisNo = k.gelisNo and g.YTakýpNo = k.detayNo
	left join laboratuvar_sonuc ls on ls.dosyaNo = k.dosyaNo and ls.gelisno = k.gelisNo and ls.hareketSira = k.hareketlerSira
              and ls.parametreadi = lp.parametreadi   and ls.testno=lp.kodu
                      	
where k.kabulTarihi >= @tarih 
      and k.dosyaNo = @hasta --and (@yas between nd.yas1 and nd.yas2) 
      and lp.kodu = @kod 
	  and ls.parametreadi is null

  order by lp.sira	

end
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_labSonucGir'
GO
COMMIT
GO
