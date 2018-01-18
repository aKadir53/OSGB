BEGIN TRAN
go
ALTER -- create 
  procedure dbo.sp_ISGKatipExcelAktarimi @iTip tinyint
as
begin
  -- �mit �ZT�RK 2018-01-15 �SG K�tip Excel'i aktar�m tablosundan doktor, i� g�venlik uzman�, firma, �ube ve kullan�c� kartlar�n�n a��lmas� vazifelerini �stlenmi� olan sp
  if @@TRANCOUNT <= 0
  begin
    raiserror ('Bu prosed�r transaction i�inde �al���r', 18, 1)
    return (0)
  end

  set nocount on
  if @iTip = 0
  begin
    create table #t 
      (iTip int identity (1, 1) not null, 
       primary key clustered (iTip),
       RowsetHata bit,
       Rowset Bit,
       Aciklama varchar (200),
       HataMesaji varchar (200))
       
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, '��e G�revlendirmeler Ayarlan�yor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, '�al��ma Durumu "Ayr�ld�" olanlar ay�klan�yor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'G�reve Ba�lama Tarihi ayn� olan ayn� �ube ayn� kategori personel' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, '�ube Sicili baz�nda ayn� kategoride tek personel (en yenisi) b�rak�l�yor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Doktor Tan�mlar� olu�turuluyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Doktor Tan�mlar� ayarlan�yor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, '�� G�venlik Uzman� tan�mlar� olu�turuluyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, '�� g�rev sat�rlar� ay�klan�yor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Firma Tan�mlar� tablosu eklenecek firma tan�mlar� i�in haz�rlan�yor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, '�SG K�tip Hizmet Alan Kurum bilgisi �zerinden Firma kartlar� olu�turuluyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Firma Tan�mlar� Tablosu i�lemleri Tamamlan�yor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Firma kartlar� numarat�r� g�ncelleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Firma �ubeleri SGK Sicilleri �zerinden olu�turuluyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 1 RowsetHata, 1 Rowset, 'Ayn� sicil numaras�ndan birden �ok olu�an �ube kart� kontrol� yap�l�yor' Aciklama, '�iftlenen �ube SGK Sicil numaras� olu�tu' HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, '�ube Kartlar�na doktor ve ayl�k �al��ma dakika bilgileri g�ncelleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, '�ube Kartlar�na �� G�venli�i Uzman� ve ayl�k �al��ma dakika bilgileri g�ncelleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Kullan�c� kartlar�na doktor tan�mlar�ndan doktor kullan�c�lar� olu�turuluyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Kullan�c� kartlar�na �� g�venli�i uzman� tan�mlar�ndan i� g�venli�i uzman� kullan�c�lar� olu�turuluyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Firma kartlar�na SGK sicil numaralar�ndan hesaplanan nace kodlar� yaz�l�yor' Aciklama, null HataMesaji

    set nocount off
    select * 
    from #t
    order by iTip
    set nocount on

    drop table #t
  end
  -- ��e g�revlendirme olanlar�n hizmet alan kurum ad�n� ve �ubelerini, tekrarlayan kay�t olarak g�rmemesi i�in doldur...
  if @iTip = 1 or @iTip is Null
  begin
    update ss set HizmetAlanKurum = 'sil', HizmetAlanKurumSGKSicilNo = TCKimlikNo
    from ISGKatipExcelAktarim ss
    where GorevTuru = '��e Grv.'
      and LTRIM (RTRIM (IsNull (HizmetAlanKurumSGKSicilNo, ''))) = ''
      and LTRIM (RTRIM (IsNull (HizmetalanKurum, ''))) = ''
  end
  -- Ayr�ld� durumunda olanlar�n silinmesi
  if @iTip = 2 or @iTip is Null
  begin
    delete d
    from ISGKatipExcelAktarim d
    where CalismaDurumu = 'Ayr�ld�'
  end
  -- g�rev ba�lama tarihi ayn� olan ayn� sicildeki ayn� kategoride olan kay�tlar�n bire indirilmesi. eski ID siliniyor
  if @iTip = 3 or @iTip is Null
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
  -- �ube sgk baz�nda ayn� kategoride tek personel b�rak�l�yor
  if @iTip = 4 or @iTip is Null
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

  if @iTip = 5 or @iTip is Null
  begin
    insert into dbo.doktorlarT (kod, tanimi, tescilNo, tcKimlikNo, bransKodu, calismaTipi, durum, sertifika, receteBrans, TDisID, uzman, eReceteKullanici, eReceteSifre, pin, pazartesi, sali, carsamba, persembe, cuma, cumartesi, TesisKodu, GSM, EPosta, cardType)
    select substring (cast (10000 + IsNull ((select max (cast (kod as int)) from doktorlarT where IsNumeric (Kod) = 1), 0) + row_number () over (order by AdiSoyadi) as varchar (5)), 2, 4) Kod, AdiSoyadi tanimi, null tescilNo, TCKimlikNo tcKimlikNo, null bransKodu, 
      max (case when CalismaSekli = 'K�smi S�reli' then 1 else null end) calismaTipi, 
      case when IsNull (CalismaDurumu, 'Devam Ediyor') = 'Devam Ediyor' then 'Aktif' else null end durum, 
      MAX (case when LTRIM (RTRIM (SertifikaNo)) = '' then NULL else SertifikaNo end) sertifika, 
      null receteBrans, null TDisID, null uzman, TCKimlikNo eReceteKullanici, null eReceteSifre, null pin, 
      null pazartesi, null sali, null carsamba, null persembe, null cuma, null cumartesi, 
      '11349903' TesisKodu, 
      null GSM, null EPosta, null cardType
    from dbo.ISGKatipExcelAktarim pa
    where PersonelKategoriAdi = '��yeri Hekimi'
      and not exists (Select 1 from dbo.DoktorlarT dt where dt.tcKimlikNo = pa.TCKimlikNo)
    group by AdiSoyadi, TCKimlikNo,
      case when IsNull (CalismaDurumu, 'Devam Ediyor') = 'Devam Ediyor' then 'Aktif' else null end
    order by AdiSoyadi
  end
  
  if @iTip = 6 or @iTip is Null
  begin  
    update doktorlart set Durum = 'Aktif' where Durum is null
  end
  
  if @iTip = 7 or @iTip is Null
  begin
    insert into dbo.IGU (kod, tanimi, tcKimlikNo, calismaTipi, durum, sertifika, pin, TesisKodu, GSM, EPosta, cardType, Sinifi)
    select substring (cast (10000 + IsNull ((select max (cast (kod as int)) from IGU where IsNumeric (Kod) = 1), 0) + row_number () over (order by AdiSoyadi) as varchar (5)), 2, 4) kod, 
      AdiSoyadi tanimi, TCKimlikNo tcKimlikNo, 
      max (case when CalismaSekli = 'K�smi S�reli' then 1 else null end) calismaTipi, 
      case when IsNull (CalismaDurumu, 'Devam Ediyor') = 'Devam Ediyor' then 'Aktif' else null end durum, 
      MAX (case when LTRIM (RTRIM (SertifikaNo)) = '' then NULL else SertifikaNo end) sertifika, null pin, null TesisKodu, null GSM, null EPosta, null cardType, substring (PersonelKategoriAdi, 1, 1) Sinifi
    from dbo.ISGKatipExcelAktarim pa
    where PersonelKategoriAdi like '_ S�n�f� �� G�venli�i Uzman�'
      and not exists (Select 1 from dbo.IGU dt where dt.tcKimlikNo = pa.TCKimlikNo)
    group by AdiSoyadi, TCKimlikNo,
      case when IsNull (CalismaDurumu, 'Devam Ediyor') = 'Devam Ediyor' then 'Aktif' else null end,
      substring (PersonelKategoriAdi, 1, 1)
    order by AdiSoyadi
  end

  if @iTip = 8 or @iTip is Null
  begin  
    delete ss
    from ISGKatipExcelAktarim ss
    where GorevTuru = '��e Grv.'
      and LTRIM (RTRIM (IsNull (HizmetalanKurum, ''))) = 'sil'
      and LTRIM (RTRIM (IsNull (HizmetAlanKurumSGKSicilNo, ''))) = TCKimlikNo
end
  
  if @iTip = 9 or @iTip is Null
  begin
    -- merkez subeler otomatik insert olmas�n diye triggeri kapat ge�ici s�re
    alter table dbo.SIRKETLER_TNM disable Trigger SIRKETLER_TNM_TRG
  end

  if @iTip = 10 or @iTip is Null
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
  
  if @iTip = 11 or @iTip is Null
  begin
    -- triggeri geri a�
    alter table dbo.SIRKETLER_TNM enable Trigger SIRKETLER_TNM_TRG
  end

  if @iTip = 12 or @iTip is Null
  begin
    -- son �irketin koduna g�re numarat�r� g�ncelle
    declare @dn varchar (10)
    select @dn = max (cast (SirketKod as int)) from SIRKETLER_TNM where IsNumeric (SirketKod) = 1
    exec sp_DosyaNoYaz @dn, 'FN'
  end
  
  if @iTip = 13 or @iTip is Null
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

  if @iTip = 14 or @iTip is Null
  begin
    -- ayn� �ube sicili iki kere insert olmu�, muhtemelen farkl� �irketlerde...
    select s.tanimi, w.*, dd.*
    from dbo.SIRKET_SUBE_TNM dd
    inner join 
        (select dd.subeSiciNo, count (*) TekrarSayi
        from dbo.SIRKET_SUBE_TNM dd
        group by dd.subeSiciNo
        having count (*) > 1) w on w.subeSiciNo = dd.subeSiciNo
    inner join SIRKETLER_TNM s on s.SirketKod = dd.sirketKod
  end

  if @iTip = 15 or @iTip is Null
  begin  
    --doktor ayl�k �al��ma dakika bilgilerinin g�ncellenmesi
    update ssb set subeDoktor = dt.kod, DoktorCalismaDakika = AylikCalismaDakika
    from dbo.ISGKatipExcelAktarim pa
    inner join dbo.doktorlarT dt on dt.TCKimlikNo = pa.TCKimlikNo
    inner join SIRKETLER_TNM srk on srk.Tanimi = substring (LTRIM (RTRIM (ISNULL (pa.HizmetAlanKurumUnvan, pa.HizmetAlanKurum))), 1, 100)
    inner join SIRKET_SUBE_TNM ssb on ssb.sirketKod = srk.sirketKod
      and ssb.subeSiciNo = pa.HizmetAlanKurumSGKSicilNo
    where IsNull (subeDoktor, '') <> IsNull (dt.kod, '')
      or IsNull (DoktorCalismaDakika, 0) <> IsNull (AylikCalismaDakika, 0)
  end
  
  if @iTip = 16 or @iTip is Null
  begin  
    -- �� g�venli�i uzman� ayl�k �al��ma dakika bilgisi g�ncelleniyor
    update ssb set IGU = dt.kod, IGUCalismaDakika = AylikCalismaDakika
    from dbo.ISGKatipExcelAktarim pa
    inner join dbo.IGU dt on dt.TCKimlikNo = pa.TCKimlikNo
    inner join SIRKETLER_TNM srk on srk.Tanimi = substring (LTRIM (RTRIM (ISNULL (pa.HizmetAlanKurumUnvan, pa.HizmetAlanKurum))), 1, 100)
    inner join SIRKET_SUBE_TNM ssb on ssb.sirketKod = srk.sirketKod
      and ssb.subeSiciNo = pa.HizmetAlanKurumSGKSicilNo
    where IsNull (IGU, '') <> IsNull (dt.kod, '')
      or IsNull (IGUCalismaDakika, 0) <> IsNull (AylikCalismaDakika, 0)
  end
  
  if @iTip = 17 or @iTip is Null
  begin  
    insert into dbo.Users (kullanici, password, [default], donem, parametreler, yet1, yet2, ADISOYADI, doktor, grup, Saat, userSkin, email, ustUser, sirketKodu, IGU)
    select 'dr' + dbo.TurkCharToEng (case when CHARINDEX (' ', tanimi) <= 0 then Tanimi else substring (tanimi, 1, CHARINDEX (' ', tanimi)-1) end) kullanici, 
      tcKimlikNo password, 0 [default], null donem, null parametreler, null yet1, null yet2, Tanimi ADISOYADI, kod doktor, 2 grup, getdate () Saat, 'iMaginary' userSkin, null email, null ustUser, null sirketKodu, null IGU
    -- select *
    from dbo.DoktorlarT dt
    where not Exists (Select 1 from dbo.Users U where U.doktor = dt.kod)
  end
  
  if @iTip = 18 or @iTip is Null
  begin  
    insert into dbo.Users (kullanici, password, [default], donem, parametreler, yet1, yet2, ADISOYADI, doktor, grup, Saat, userSkin, email, ustUser, sirketKodu, IGU)
    select 'isg' + dbo.TurkCharToEng (case when CHARINDEX (' ', tanimi) <= 0 then Tanimi else substring (tanimi, 1, CHARINDEX (' ', tanimi)-1) end) kullanici, 
      tcKimlikNo password, 0 [default], null donem, null parametreler, null yet1, null yet2, Tanimi ADISOYADI, null doktor, 11 grup, getdate () Saat, 'iMaginary' userSkin, null email, null ustUser, null sirketKodu, kod IGU
    -- select *
    from dbo.IGU dt
    where not Exists (Select 1 from dbo.Users U where U.IGU = dt.kod)
  end
  
  if @iTip = 19 or @iTip is Null
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
    -- isgexcel aktar�m�ndan gelen nace kodu
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
go
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_ISGKatipExcelAktarimi'
go
COMMIT
GO
