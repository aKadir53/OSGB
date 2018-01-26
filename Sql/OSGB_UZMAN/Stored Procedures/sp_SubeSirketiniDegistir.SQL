BEGIN TRAN
go
ALTER -- create 
  procedure dbo.sp_SubeSirketiniDegistir @iTip tinyint
as
begin
  -- Ümit ÖZTÜRK 2018-01-15 ÝSG Kâtip Excel'i aktarým tablosundan doktor, iþ güvenlik uzmaný, firma, þube ve kullanýcý kartlarýnýn açýlmasý vazifelerini üstlenmiþ olan sp
  if @@TRANCOUNT <= 0
  begin
    raiserror ('Bu prosedür transaction içinde çalýþýr', 18, 1)
    return (0)
  end

  set nocount on

  declare @iTipInt int = 0

  if @iTip = 0
  begin
    create table #t 
      (iTip int identity (1, 1) not null, 
       primary key clustered (iTip),
       RowsetHata bit,
       Rowset Bit,
       RowsetEditInput bit default 0,
       Aciklama varchar (200),
       HataMesaji varchar (200))
       
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Ýçe Görevlendirmeler Ayarlanýyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Çalýþma Durumu "Ayrýldý" olanlar ayýklanýyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Göreve Baþlama Tarihi ayný olan ayný þube ayný kategori personel' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Þube Sicili bazýnda ayný kategoride tek personel (en yenisi) býrakýlýyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Doktor Tanýmlarý oluþturuluyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Doktor Tanýmlarý ayarlanýyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Ýþ Güvenlik Uzmaný tanýmlarý oluþturuluyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Ýç görev satýrlarý ayýklanýyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Hizmet alan kurum ünvan alaný için ilk kelimelerden seçim yap' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Firma Tanýmlarý tablosu eklenecek firma tanýmlarý için hazýrlanýyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'ÝSG Kâtip Hizmet Alan Kurum bilgisi üzerinden Firma kartlarý oluþturuluyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Firma Tanýmlarý Tablosu iþlemleri Tamamlanýyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Firma kartlarý numaratörü güncelleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Firma þubeleri SGK Sicilleri üzerinden oluþturuluyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 1 RowsetHata, 1 Rowset, 'Ayný sicil numarasýndan birden çok oluþan Þube kartý kontrolü yapýlýyor' Aciklama, 'Çiftlenen Þube SGK Sicil numarasý oluþtu' HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Þube Kartlarýna doktor ve aylýk çalýþma dakika bilgileri güncelleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Þube Kartlarýna Ýþ Güvenliði Uzmaný ve aylýk çalýþma dakika bilgileri güncelleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Kullanýcý kartlarýna oluþturulacak doktor tanýmlarý hazýrlanýyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Çift Kullanýcý isimleri eleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji, RowsetEditInput) 
    Select 0 RowsetHata, 1 Rowset, 'Kullanýcý kartlarýna oluþturulacak doktor tanýmlarý girdiriliyor' Aciklama, 'Doktor Kullanýcý Kartý Onayý' HataMesaji, 1 RowsetEditInput
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Kullanýcý kartlarýna doktor tanýmlarýndan doktor kullanýcýlarý oluþturuluyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Geçici tablo kaldýrýlýyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Kullanýcý kartlarýna oluþturulacak iþ güvenliði uzmaný tanýmlarý hazýrlanýyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Çift Kullanýcý isimleri eleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji, RowsetEditInput) 
    Select 0 RowsetHata, 1 Rowset, 'Kullanýcý kartlarýna oluþturulacak iþ güvenliði uzmaný tanýmlarý girdiriliyor' Aciklama, 'Ýþ Güvenlik Uzmaný Kullanýcý Kartý Onayý' HataMesaji, 1 RowsetEditInput
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Kullanýcý kartlarýna Ýþ güvenliði uzmaný tanýmlarýndan iþ güvenliði uzmaný kullanýcýlarý oluþturuluyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Geçici tablo kaldýrýlýyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Firma kartlarýna SGK sicil numaralarýndan hesaplanan nace kodlarý yazýlýyor' Aciklama, null HataMesaji

    set nocount off
    select * 
    from #t
    order by iTip
    set nocount on

    drop table #t
  end

  set @iTipInt = @iTipInt + 1
  -- Ýçe görevlendirme olanlarýn hizmet alan kurum adýný ve þubelerini, tekrarlayan kayýt olarak görmemesi için doldur...
  if @iTip = @iTipInt or @iTip is Null
  begin
    update ss set HizmetAlanKurum = 'sil', HizmetAlanKurumSGKSicilNo = TCKimlikNo
    from ISGKatipExcelAktarim ss
    where GorevTuru = 'Ýçe Grv.'
      and LTRIM (RTRIM (IsNull (HizmetAlanKurumSGKSicilNo, ''))) = ''
      and LTRIM (RTRIM (IsNull (HizmetalanKurum, ''))) = ''
  end

  set @iTipInt = @iTipInt + 1
  -- Ayrýldý durumunda olanlarýn silinmesi
  if @iTip = @iTipInt or @iTip is Null
  begin
    delete d
    from ISGKatipExcelAktarim d
    where CalismaDurumu = 'Ayrýldý'
  end

  set nocount off

end
GO
--exec sp_vw_sys_upd 'P ', 'dbo', 'sp_SubeSirketiniDegistir'
GO
exec dbo.sp_SubeSirketiniDegistir 0
go
select * from Users
go
ROLLBACK -- COMMIT
GO
use osgb_kalIbre
go
begin tran
go
alter table personelkart nocheck constraint FK_PersonelKart_PersonelKart
go
alter table personelkart nocheck constraint FK_PersonelKart_SIRKETLER_TNM
go
alter table Gelisler nocheck constraint FK_Gelisler_SirketKod
go
alter table Gelisler nocheck constraint FK_Gelisler_PersonelKart
go
select sss.* 
-- update sss set SirketKod = '000054', SubeKod = '01', SubeTanim = 'SANCAKTEPE'
-- delete ss
from SIRKETLER_TNM ss
left join SIRKET_SUBE_TNM sss on sss.SirketKod = ss.SirketKod
where tanimi like '%CEMKEN%'
  and ss.SirketKod = '000055'
go
select * 
-- update sss set SirketKod = '000054', Sube = '01'
from PersonelKart sss
where SirketKod = '000055'
  and Sube = '00'
go
select * 
-- update sss set SirketKod = '000054'
from Gelisler sss
where SirketKod = '000055'
  and Sube = '00'
go
alter table personelkart check constraint FK_PersonelKart_PersonelKart
go
alter table personelkart check constraint FK_PersonelKart_SIRKETLER_TNM
go
alter table Gelisler check constraint FK_Gelisler_SirketKod
go
alter table Gelisler check constraint FK_Gelisler_PersonelKart
go
rollback -- commit
go
