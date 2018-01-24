BEGIN TRAN
go
ALTER -- create 
  procedure dbo.sp_ISGKatipExcelAktarimi @iTip tinyint
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

  set @iTipInt = @iTipInt + 1
  -- görev baþlama tarihi ayný olan ayný sicildeki ayný kategoride olan kayýtlarýn bire indirilmesi. eski ID siliniyor
  if @iTip = @iTipInt or @iTip is Null
  begin  
    delete ee
    from dbo.ISGKatipExcelAktarim ee
    inner join 
       (select ROW_NUMBER () over (order by HizmetAlanKurumSGKSicilNo) SiraNo, PersonelKategoriAdi,HizmetAlanKurumSGKSicilNo, count (*) sayi, GorevBaslamaTarihi, min (ID) ID
        from dbo.ISGKatipExcelAktarim
        group by PersonelKategoriAdi,HizmetAlanKurumSGKSicilNo, GorevBaslamaTarihi
        having count (*) > 1) ww on ww.HizmetAlanKurumSGKSicilNo = ee.HizmetAlanKurumSGKSicilNo
    and ww.GorevBaslamaTarihi = ee.GorevBaslamaTarihi
    and ww.PersonelKategoriAdi = ee.PersonelKategoriAdi
    and ww.ID = ee.ID
  end

  set @iTipInt = @iTipInt + 1
  -- þube sgk bazýnda ayný kategoride tek personel býrakýlýyor
  if @iTip = @iTipInt or @iTip is Null
  begin
    delete ee
    from dbo.ISGKatipExcelAktarim ee
    inner join 
        (select ROW_NUMBER () over (order by HizmetAlanKurumSGKSicilNo) SiraNo, PersonelKategoriAdi, HizmetAlanKurumSGKSicilNo, count (*) sayi, min (GorevBaslamaTarihi) GorevBaslamaTarihi
         from dbo.ISGKatipExcelAktarim
         group by HizmetAlanKurumSGKSicilNo, PersonelKategoriAdi
         having count (*) > 1) ww on ww.HizmetAlanKurumSGKSicilNo = ee.HizmetAlanKurumSGKSicilNo
    and ww.GorevBaslamaTarihi = ee.GorevBaslamaTarihi
    and ww.PersonelKategoriAdi = ee.PersonelKategoriAdi
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    insert into dbo.doktorlarT (kod, tanimi, tescilNo, tcKimlikNo, bransKodu, calismaTipi, durum, sertifika, receteBrans, TDisID, uzman, eReceteKullanici, eReceteSifre, pin, pazartesi, sali, carsamba, persembe, cuma, cumartesi, TesisKodu, GSM, EPosta, cardType)
    select substring (cast (10000 + IsNull ((select max (cast (kod as int)) from doktorlarT where IsNumeric (Kod) = 1), 0) + row_number () over (order by AdiSoyadi) as varchar (5)), 2, 4) Kod, AdiSoyadi tanimi, null tescilNo, TCKimlikNo tcKimlikNo, null bransKodu, 
      max (case when CalismaSekli = 'Kýsmi Süreli' then 1 else null end) calismaTipi, 
      case when IsNull (CalismaDurumu, 'Devam Ediyor') = 'Devam Ediyor' then 'Aktif' else null end durum, 
      MAX (case when LTRIM (RTRIM (SertifikaNo)) = '' then NULL else SertifikaNo end) sertifika, 
      null receteBrans, null TDisID, null uzman, TCKimlikNo eReceteKullanici, null eReceteSifre, null pin, 
      null pazartesi, null sali, null carsamba, null persembe, null cuma, null cumartesi, 
      '11349903' TesisKodu, 
      null GSM, null EPosta, null cardType
    from dbo.ISGKatipExcelAktarim pa
    where PersonelKategoriAdi = 'Ýþyeri Hekimi'
      and not exists (Select 1 from dbo.DoktorlarT dt where dt.tcKimlikNo = pa.TCKimlikNo)
    group by AdiSoyadi, TCKimlikNo,
      case when IsNull (CalismaDurumu, 'Devam Ediyor') = 'Devam Ediyor' then 'Aktif' else null end
    order by AdiSoyadi
  end
  
  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin  
    update doktorlart set Durum = 'Aktif' where Durum is null
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin
    insert into dbo.IGU (kod, tanimi, tcKimlikNo, calismaTipi, durum, sertifika, pin, TesisKodu, GSM, EPosta, cardType, Sinifi)
    select substring (cast (10000 + IsNull ((select max (cast (kod as int)) from IGU where IsNumeric (Kod) = 1), 0) + row_number () over (order by AdiSoyadi) as varchar (5)), 2, 4) kod, 
      AdiSoyadi tanimi, TCKimlikNo tcKimlikNo, 
      max (case when CalismaSekli = 'Kýsmi Süreli' then 1 else null end) calismaTipi, 
      case when IsNull (CalismaDurumu, 'Devam Ediyor') = 'Devam Ediyor' then 'Aktif' else null end durum, 
      MAX (case when LTRIM (RTRIM (SertifikaNo)) = '' then NULL else SertifikaNo end) sertifika, null pin, null TesisKodu, null GSM, null EPosta, null cardType, substring (PersonelKategoriAdi, 1, 1) Sinifi
    from dbo.ISGKatipExcelAktarim pa
    where PersonelKategoriAdi like '_ Sýnýfý Ýþ Güvenliði Uzmaný'
      and not exists (Select 1 from dbo.IGU dt where dt.tcKimlikNo = pa.TCKimlikNo)
    group by AdiSoyadi, TCKimlikNo,
      case when IsNull (CalismaDurumu, 'Devam Ediyor') = 'Devam Ediyor' then 'Aktif' else null end,
      substring (PersonelKategoriAdi, 1, 1)
    order by AdiSoyadi
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin  
    delete ss
    from ISGKatipExcelAktarim ss
    where GorevTuru = 'Ýçe Grv.'
      and LTRIM (RTRIM (IsNull (HizmetalanKurum, ''))) = 'sil'
      and LTRIM (RTRIM (IsNull (HizmetAlanKurumSGKSicilNo, ''))) = TCKimlikNo
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin
    -- Hizmet alan kurum ünvan alaný null olanlar için ilk kelimelerden seçim yap
    update ISGKatipExcelAktarim SET HizmetAlanKurumUnvan = dbo.fn_KelimeAl (HizmetAlanKurum, 4, './\=(){}[]+*-_,;<>') where HizmetAlanKurumUnvan Is NULL
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin
    -- merkez subeler otomatik insert olmasýn diye triggeri kapat geçici süre
    alter table dbo.SIRKETLER_TNM disable Trigger SIRKETLER_TNM_TRG
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin  
    insert into dbo.SIRKETLER_TNM (SirketKod, tanimi, NaceKod, anaFaliyet, tehlikeSinifi, SGKKod, calisanSayisi, Tel1, Tel2, Fax, Yetkili, yetkiliTel, yetkilimail, SEHIR, ILCE, MAHALLE, CADDE, BUCAK, KOY, SOKAK, Adres, VD, VN, Istigal, IsguvenlikUzman, SorunluRevirPersonel, Aktif, User_ID, Date_Create, IsyeriSicilNo, BolgeMudurlukSicilNo)
    select substring (cast (1000000 + IsNull ((select max (cast (SirketKod as int)) from SIRKETLER_TNM where IsNumeric (SirketKod) = 1), 0) + row_number () over (order by substring (LTRIM (RTRIM (ISNULL (pa.HizmetAlanKurumUnvan, pa.HizmetAlanKurum))), 1, 100)) as varchar (7)), 2, 6) SirketKod, substring (LTRIM (RTRIM (ISNULL (pa.HizmetAlanKurumUnvan, pa.HizmetAlanKurum))), 1, 100) tanimi, 
      null NaceKod, null anaFaliyet, null tehlikeSinifi, null SGKKod, null calisanSayisi, null Tel1, null Tel2, null Fax, null Yetkili, null yetkiliTel, null yetkilimail, null SEHIR, null ILCE, null MAHALLE, null CADDE, null BUCAK, null KOY, null SOKAK, null Adres, MAX (HizmetAlanKurumVD) VD, MAX (HizmetAlanKurumVKN) VN, null Istigal, null IsguvenlikUzman, null SorunluRevirPersonel, 1 Aktif, 'Admin' [User_ID], getdate () Date_Create, null IsyeriSicilNo, null BolgeMudurlukSicilNo
    from dbo.ISGKatipExcelAktarim pa
    where not exists (Select 1 from dbo.SIRKETLER_TNM dt where dt.tanimi = substring (LTRIM (RTRIM (ISNULL (pa.HizmetAlanKurumUnvan, pa.HizmetAlanKurum))), 1, 100))
      and not exists (Select 1 from dbo.SIRKET_Sube_TNM dt where dt.SubeSiciNo = pa.HizmetAlanKurumSGKSicilNo)
    group by substring (LTRIM (RTRIM (ISNULL (pa.HizmetAlanKurumUnvan, pa.HizmetAlanKurum))), 1, 100)
    order by substring (LTRIM (RTRIM (ISNULL (pa.HizmetAlanKurumUnvan, pa.HizmetAlanKurum))), 1, 100)
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin
    -- triggeri geri aç
    alter table dbo.SIRKETLER_TNM enable Trigger SIRKETLER_TNM_TRG
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    -- son þirketin koduna göre numaratörü güncelle
    declare @dn varchar (10)
    select @dn = max (cast (SirketKod as int)) from SIRKETLER_TNM where IsNumeric (SirketKod) = 1
    exec sp_DosyaNoYaz @dn, 'FN'
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin
    insert into dbo.SIRKET_SUBE_TNM (sirketKod, subeKod, subeTanim, subeSiciNo, subeDoktor, BolgeMudurlukSicilNo, MuayeneProtokolNo, IGU)
    select srk.SirketKod SirketKod, 
      substring (
        cast (100 + 
              IsNull ((select max (cast (SubeKod as int)) from SIRKET_SUBE_TNM sb where sb.SirketKod = srk.SirketKod and IsNumeric (SubeKod) = 1), -1) + 
              row_number () over (Partition by srk.SirketKod order by HizmetAlanKurumSGKSicilNo) as varchar (3)), 2, 2) subeKod, 
      IsNull (HizmetAlanKurumSubeTanimi, Replace (HizmetAlanKurumSGKSicilNo, ' ', '')) subeTanim, HizmetAlanKurumSGKSicilNo subeSiciNo, null subeDoktor, null BolgeMudurlukSicilNo, null MuayeneProtokolNo, null IGU
    -- select *
    from dbo.ISGKatipExcelAktarim pa
    inner join dbo.SIRKETLER_TNM srk on srk.tanimi = substring (LTRIM (RTRIM (ISNULL (pa.HizmetAlanKurumUnvan, pa.HizmetAlanKurum))), 1, 100)
    where not exists (Select 1 from dbo.SIRKET_SUBE_TNM dt where dt.sirketKod = srk.SirketKod and dt.subeSiciNo = pa.HizmetAlanKurumSGKSicilNo)
    group by srk.SirketKod, substring (LTRIM (RTRIM (ISNULL (pa.HizmetAlanKurumUnvan, pa.HizmetAlanKurum))), 1, 100), IsNull (HizmetAlanKurumSubeTanimi, Replace (HizmetAlanKurumSGKSicilNo, ' ', '')), HizmetAlanKurumSGKSicilNo
    order by srk.SirketKod, IsNull (HizmetAlanKurumSubeTanimi, Replace (HizmetAlanKurumSGKSicilNo, ' ', '')), HizmetAlanKurumSGKSicilNo
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    -- ayný þube sicili iki kere insert olmuþ, muhtemelen farklý þirketlerde...
    select s.tanimi, w.*, dd.*
    from dbo.SIRKET_SUBE_TNM dd
    inner join 
        (select dd.subeSiciNo, count (*) TekrarSayi
        from dbo.SIRKET_SUBE_TNM dd
        group by dd.subeSiciNo
        having count (*) > 1) w on w.subeSiciNo = dd.subeSiciNo
    inner join SIRKETLER_TNM s on s.SirketKod = dd.sirketKod
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin  
    --doktor aylýk çalýþma dakika bilgilerinin güncellenmesi
    update ssb set subeDoktor = dt.kod, DoktorCalismaDakika = AylikCalismaDakika
    from dbo.ISGKatipExcelAktarim pa
    inner join dbo.doktorlarT dt on dt.TCKimlikNo = pa.TCKimlikNo
    inner join SIRKETLER_TNM srk on srk.Tanimi = substring (LTRIM (RTRIM (ISNULL (pa.HizmetAlanKurumUnvan, pa.HizmetAlanKurum))), 1, 100)
    inner join SIRKET_SUBE_TNM ssb on ssb.sirketKod = srk.sirketKod
      and ssb.subeSiciNo = pa.HizmetAlanKurumSGKSicilNo
    where IsNull (subeDoktor, '') <> IsNull (dt.kod, '')
      or IsNull (DoktorCalismaDakika, 0) <> IsNull (AylikCalismaDakika, 0)
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin  
    -- Ýþ güvenliði uzmaný aylýk çalýþma dakika bilgisi güncelleniyor
    update ssb set IGU = dt.kod, IGUCalismaDakika = AylikCalismaDakika
    from dbo.ISGKatipExcelAktarim pa
    inner join dbo.IGU dt on dt.TCKimlikNo = pa.TCKimlikNo
    inner join SIRKETLER_TNM srk on srk.Tanimi = substring (LTRIM (RTRIM (ISNULL (pa.HizmetAlanKurumUnvan, pa.HizmetAlanKurum))), 1, 100)
    inner join SIRKET_SUBE_TNM ssb on ssb.sirketKod = srk.sirketKod
      and ssb.subeSiciNo = pa.HizmetAlanKurumSGKSicilNo
    where IsNull (IGU, '') <> IsNull (dt.kod, '')
      or IsNull (IGUCalismaDakika, 0) <> IsNull (AylikCalismaDakika, 0)
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin  
    select IDENTITY (int, 1, 1) ID, 'dr' + dbo.TurkCharToEng (case when CHARINDEX (' ', tanimi) <= 0 then Tanimi else substring (tanimi, 1, CHARINDEX (' ', tanimi)-1) end) kullanici, 
      Tanimi ADISOYADI, kod doktor
    into dbo.tmpUsr
    from dbo.DoktorlarT dt
    where not Exists (Select 1 from dbo.Users U where U.doktor = dt.kod)
    order by dt.Tanimi
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin  
    while exists (select Kullanici, count (*) Sayi from dbo.tmpUsr group by Kullanici having count (*) > 1)
    begin
      update tu2 set tu2.Kullanici = tw.YK
      from dbo.tmpUsr tu2
      inner join
      (
      Select tu.Kullanici + cast (row_Number () over (partition by tu.kullanici order by tu.ID) as varchar (10)) YK, tu.ID
      from dbo.tmpUsr tu
      inner join
        (select Kullanici, count (*) Sayi from dbo.tmpUsr group by Kullanici having count (*) > 1) w on w.Kullanici = tu.Kullanici
      ) tw on tw.ID = tu2.ID
    end
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin  
    select ID, kullanici, cast (doktor as varchar (4)) as [Doktor Kodu], cast (ADISOYADI as varchar (50)) [ADI SOYADI]
    from dbo.tmpUsr
    order by ID
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin  
    insert into dbo.Users (kullanici, password, [default], donem, parametreler, yet1, yet2, ADISOYADI, doktor, grup, Saat, userSkin, email, ustUser, sirketKodu, IGU)
    select uuu.kullanici kullanici, 
      tcKimlikNo password, 0 [default], null donem, null parametreler, null yet1, null yet2, Tanimi ADISOYADI, kod doktor, 2 grup, getdate () Saat, 'iMaginary' userSkin, null email, null ustUser, null sirketKodu, null IGU
    -- select *
    from dbo.DoktorlarT dt
    inner join dbo.tmpUsr uuu on uuu.Doktor = dt.Kod
    where not Exists (Select 1 from dbo.Users U where U.doktor = dt.kod)
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin  
    drop table dbo.tmpUsr
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin  
    select IDENTITY (int, 1, 1) ID, 'isg' + dbo.TurkCharToEng (case when CHARINDEX (' ', tanimi) <= 0 then Tanimi else substring (tanimi, 1, CHARINDEX (' ', tanimi)-1) end) kullanici, 
      Tanimi ADISOYADI, kod IsGuvUzm
    into dbo.tmpUsr
    from dbo.IGU dt
    where not Exists (Select 1 from dbo.Users U where U.IGU = dt.kod)
    order by dt.Tanimi
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin  
    while exists (select Kullanici, count (*) Sayi from dbo.tmpUsr group by Kullanici having count (*) > 1)
    begin
      update tu2 set tu2.Kullanici = tw.YK
      from dbo.tmpUsr tu2
      inner join
      (
      Select tu.Kullanici + cast (row_Number () over (partition by tu.kullanici order by tu.ID) as varchar (10)) YK, tu.ID
      from dbo.tmpUsr tu
      inner join
        (select Kullanici, count (*) Sayi from dbo.tmpUsr group by Kullanici having count (*) > 1) w on w.Kullanici = tu.Kullanici
      ) tw on tw.ID = tu2.ID
    end
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin  
    select ID, kullanici, cast (IsGuvUzm as varchar (4)) as [Ýþ Güv. Uzm. Kodu], cast (ADISOYADI as varchar (50)) [ADI SOYADI]
    from dbo.tmpUsr
    order by ID
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin  
    insert into dbo.Users (kullanici, password, [default], donem, parametreler, yet1, yet2, ADISOYADI, doktor, grup, Saat, userSkin, email, ustUser, sirketKodu, IGU)
    select uuu.Kullanici kullanici, 
      tcKimlikNo password, 0 [default], null donem, null parametreler, null yet1, null yet2, Tanimi ADISOYADI, null doktor, 11 grup, getdate () Saat, 'iMaginary' userSkin, null email, null ustUser, null sirketKodu, kod IGU
    -- select *
    from dbo.IGU dt
    inner join dbo.tmpUsr uuu on uuu.IsGuvUzm = dt.Kod
    where not Exists (Select 1 from dbo.Users U where U.IGU = dt.kod)
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin  
    drop table dbo.tmpUsr
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin  
    update ss set ss.NaceKod =  nnn.NACEKODU, ss.anaFaliyet = nnn.NACETANIMI, ss.tehlikeSinifi = nnn.TEHLIKESINIFI
    from
    (
    select SirketKod, substring (subeSiciNo, 3, 2) + '.' + substring (subeSiciNo, 5, 2) NaceCalculated
    from SIRKET_SUBE_TNM sss
    group by SirketKod, substring (subeSiciNo, 3, 2) + '.' + substring (subeSiciNo, 5, 2)
    ) www 
    inner join SIRKETLER_TNM ss on ss.SirketKod = www.sirketKod
    inner join naceKods nnn on nnn.nacekodu = www.NaceCalculated
    where (ISNULL (ss.NaceKod, '') <> ISNULL (nnn.NACEKODU, ''))
      or (ISNULL (ss.anaFaliyet, '') <> ISNULL (nnn.NACETANIMI, ''))
      or (ISNULL (ss.tehlikeSinifi, '') <> ISNULL (nnn.TEHLIKESINIFI, ''))
  end
  
  /*
  if @iTip = 20 or @iTip is Null
  begin  
    -- isgexcel aktarýmýndan gelen nace kodu
    update ss set ss.NaceKod =  nnn.NACEKODU, ss.anaFaliyet = nnn.NACETANIMI, ss.tehlikeSinifi = nnn.TEHLIKESINIFI
    from
    (
    select sirketKod, substring (NaceCalculated, 1, 2) + '.'  + substring (NaceCalculated, 3, 2) + '.' + substring (NaceCalculated, 5, 2) NaceCalculated
    from SIRKET_SUBE_TNM  ss
    inner join 
    (
    select HizmetAlanKurumSGKSicilNo, nacekod, 
      replicate ('0', 6 - len (ltrim (rtrim (substring (nacekod, 1, charIndex ('(', nacekod) - 1))))) + ltrim (rtrim (substring (nacekod, 1, charIndex ('(', nacekod) - 1))) NaceCalculated
    --- delete
    from ISGKatipExcelAktarim 
    ) w on w.HizmetAlanKurumSGKSicilNo = ss.subeSiciNo
    group by sirketKod, NaceCalculated
    ) www 
    inner join SIRKETLER_TNM ss on ss.SirketKod = www.sirketKod
    inner join naceKods nnn on nnn.nacekodu = www.NaceCalculated
    where (ISNULL (ss.NaceKod, '') <> ISNULL (nnn.NACEKODU, ''))
      or (ISNULL (ss.anaFaliyet, '') <> ISNULL (nnn.NACETANIMI, ''))
      or (ISNULL (ss.tehlikeSinifi, '') <> ISNULL (nnn.TEHLIKESINIFI, ''))
  end
  
  if @iTip = 21 or @iTip is Null
  begin  
    SELECT 1
  end
  
  if @iTip = 22 or @iTip is Null
  begin  
    SELECT 1
  end
  --*/
  set nocount off

end
GO
--exec sp_vw_sys_upd 'P ', 'dbo', 'sp_ISGKatipExcelAktarimi'
GO
exec dbo.sp_ISGKatipExcelAktarimi 0
go
exec dbo.sp_ISGKatipExcelAktarimi 1
go
exec dbo.sp_ISGKatipExcelAktarimi 2
go
exec dbo.sp_ISGKatipExcelAktarimi 3
go
exec dbo.sp_ISGKatipExcelAktarimi 4
go
exec dbo.sp_ISGKatipExcelAktarimi 5
go
exec dbo.sp_ISGKatipExcelAktarimi 6
go
exec dbo.sp_ISGKatipExcelAktarimi 7
go
exec dbo.sp_ISGKatipExcelAktarimi 8
go
exec dbo.sp_ISGKatipExcelAktarimi 9
go
exec dbo.sp_ISGKatipExcelAktarimi 10
go
exec dbo.sp_ISGKatipExcelAktarimi 11
go
exec dbo.sp_ISGKatipExcelAktarimi 12
go
exec dbo.sp_ISGKatipExcelAktarimi 13
go
exec dbo.sp_ISGKatipExcelAktarimi 14
go
exec dbo.sp_ISGKatipExcelAktarimi 15
go
exec dbo.sp_ISGKatipExcelAktarimi 16
go
exec dbo.sp_ISGKatipExcelAktarimi 17
go
exec dbo.sp_ISGKatipExcelAktarimi 18
go
exec dbo.sp_ISGKatipExcelAktarimi 19
go
exec dbo.sp_ISGKatipExcelAktarimi 20
go
update #tempUser set Kullanici = Kullanici + 'XX' where ID in (1, 2)
go
update #tempUser set Kullanici = 'XX' where ID in (1, 2)
go
update #tempUser set Kullanici = 'YY' where ID in (3, 4)
go
exec dbo.sp_ISGKatipExcelAktarimi 21
go
exec dbo.sp_ISGKatipExcelAktarimi 22
go
exec dbo.sp_ISGKatipExcelAktarimi 23
go
exec dbo.sp_ISGKatipExcelAktarimi 24
go
exec dbo.sp_ISGKatipExcelAktarimi 25
go
exec dbo.sp_ISGKatipExcelAktarimi 26
go
exec dbo.sp_ISGKatipExcelAktarimi 27
go
exec dbo.sp_ISGKatipExcelAktarimi 28
go
select * from Users
go
ROLLBACK -- COMMIT
GO
