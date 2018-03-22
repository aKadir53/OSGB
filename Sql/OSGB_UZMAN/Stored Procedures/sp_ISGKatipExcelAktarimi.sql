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
    Select 0 RowsetHata, 0 Rowset, 'Di�er Sa�l�k Personeli tan�mlar� olu�turuluyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, '�� g�rev sat�rlar� ay�klan�yor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Hizmet alan kurum �nvan alan� i�in ilk kelimelerden se�im yap' Aciklama, null HataMesaji
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
    Select 0 RowsetHata, 0 Rowset, '�ube Kartlar�na Di�er Sa�l�k Personeli ve ayl�k �al��ma dakika bilgileri g�ncelleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Kullan�c� kartlar�na olu�turulacak doktor tan�mlar� haz�rlan�yor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, '�ift Kullan�c� isimleri eleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji, RowsetEditInput) 
    Select 0 RowsetHata, 1 Rowset, 'Kullan�c� kartlar�na olu�turulacak doktor tan�mlar� girdiriliyor' Aciklama, 'Doktor Kullan�c� Kart� Onay�' HataMesaji, 1 RowsetEditInput
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Kullan�c� kartlar�na doktor tan�mlar�ndan doktor kullan�c�lar� olu�turuluyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Ge�ici tablo kald�r�l�yor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Kullan�c� kartlar�na olu�turulacak i� g�venli�i uzman� tan�mlar� haz�rlan�yor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, '�ift Kullan�c� isimleri eleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji, RowsetEditInput) 
    Select 0 RowsetHata, 1 Rowset, 'Kullan�c� kartlar�na olu�turulacak i� g�venli�i uzman� tan�mlar� girdiriliyor' Aciklama, '�� G�venlik Uzman� Kullan�c� Kart� Onay�' HataMesaji, 1 RowsetEditInput
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Kullan�c� kartlar�na �� g�venli�i uzman� tan�mlar�ndan i� g�venli�i uzman� kullan�c�lar� olu�turuluyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Ge�ici tablo kald�r�l�yor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Kullan�c� kartlar�na olu�turulacak di�er sa�l�k personeli tan�mlar� haz�rlan�yor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, '�ift Kullan�c� isimleri eleniyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji, RowsetEditInput) 
    Select 0 RowsetHata, 1 Rowset, 'Kullan�c� kartlar�na olu�turulacak di�er sa�l�k personeli tan�mlar� girdiriliyor' Aciklama, 'Di�er Sa�l�k Personeli Kullan�c� Kart� Onay�' HataMesaji, 1 RowsetEditInput
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Kullan�c� kartlar�na di�er sa�l�k personeli tan�mlar�ndan di�er sa�l�k personeli kullan�c�lar� olu�turuluyor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Ge�ici tablo kald�r�l�yor' Aciklama, null HataMesaji
    insert into #t (RowsetHata, Rowset, Aciklama, HataMesaji) 
    Select 0 RowsetHata, 0 Rowset, 'Firma kartlar�na SGK sicil numaralar�ndan hesaplanan nace kodlar� yaz�l�yor' Aciklama, null HataMesaji

    set nocount off
    select * 
    from #t
    order by iTip
    set nocount on

    drop table #t
  end

  set @iTipInt = @iTipInt + 1
  -- ��e g�revlendirme olanlar�n hizmet alan kurum ad�n� ve �ubelerini, tekrarlayan kay�t olarak g�rmemesi i�in doldur...
  if @iTip = @iTipInt or @iTip is Null
  begin
    update ss set HizmetAlanKurum = 'sil', HizmetAlanKurumSGKSicilNo = TCKimlikNo
    from ISGKatipExcelAktarim ss
    inner join DisAktarim_IsgKatipExcel_GorevTuru ssgt on ssgt.GorevTuru = ss.GorevTuru
    where ssgt.GorevTuruSinifi = 2
      and LTRIM (RTRIM (IsNull (HizmetAlanKurumSGKSicilNo, ''))) = ''
      and LTRIM (RTRIM (IsNull (HizmetalanKurum, ''))) = ''
  end

  set @iTipInt = @iTipInt + 1
  -- Ayr�ld� durumunda olanlar�n silinmesi
  if @iTip = @iTipInt or @iTip is Null
  begin
    delete d
    from ISGKatipExcelAktarim d
    inner join DisAktarim_ISGKatipExcel_CalismaDurumu dcd on dcd.CalismaDurumu = d.CalismaDurumu
    where dcd.CalismaDurumuSinifi = 1
  end

  set @iTipInt = @iTipInt + 1
  -- g�rev ba�lama tarihi ayn� olan ayn� sicildeki ayn� kategoride olan kay�tlar�n bire indirilmesi. eski ID siliniyor
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
  -- �ube sgk baz�nda ayn� kategoride tek personel b�rak�l�yor
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
    select substring (cast (10000 + IsNull ((select max (cast (kod as int)) from doktorlarT where IsNumeric (Kod) = 1), 0) + row_number () over (order by AdiSoyadi) as varchar (5)), 2, 4) Kod, 
      AdiSoyadi tanimi, null tescilNo, pa.TCKimlikNo tcKimlikNo, null bransKodu, 
      max (case when pcs.CalismaSekliSinifi = 1 then 1 else null end) calismaTipi, 
      'Aktif' durum, 
      MAX (case when LTRIM (RTRIM (SertifikaNo)) = '' then NULL else SertifikaNo end) sertifika, 
      null receteBrans, null TDisID, null uzman, pa.TCKimlikNo eReceteKullanici, null eReceteSifre, null pin, 
      null pazartesi, null sali, null carsamba, null persembe, null cuma, null cumartesi, 
      IsNull (tk.Ilkodu, '11349903') TesisKodu, 
      null GSM, null EPosta, null cardType
    from dbo.ISGKatipExcelAktarim pa
    inner join DisAktarim_IsgKatipExcel_PersonelKategoriAdi pka on pka.PersonelKategoriAdi = pa.PersonelKategoriAdi
    inner join DisAktarim_ISGKatipExcel_CalismaSekli pcs on pcs.CalismaSekli = pa.CalismaSekli
    left outer join 
      (select TCKimlikNo, '11' +substring (cast (100 + max (IlKodu) as varchar (10)), 2, 3) + '9903' Ilkodu
       from
        (select TCKimlikNo, IlKodu, count (*) sayi, max (count (*)) over (partition by TcKimlikNo) d
         from ISGKatipExcelAktarim
         where not IlKodu is null
         group by TCKimlikNo, Ilkodu) w
       where sayi = d
       group by TCKimlikNo) tk on tk.TCKimlikNo = pa.TCKimlikNo
    where pka.KategoriSinifi = 1
      and not exists (Select 1 from dbo.DoktorlarT dt where dt.tcKimlikNo = pa.TCKimlikNo)
    group by AdiSoyadi, pa.TCKimlikNo, IsNull (tk.Ilkodu, '11349903')
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
      max (case when pcs.CalismaSekliSinifi = 1 then 1 else null end) calismaTipi, 
      'Aktif' durum, 
      MAX (case when LTRIM (RTRIM (SertifikaNo)) = '' then NULL else SertifikaNo end) sertifika, null pin, null TesisKodu, null GSM, null EPosta, null cardType, 
      case
        when pka.KategoriSinifi = 2 then 'A'
        when pka.KategoriSinifi = 3 then 'B'
        when pka.KategoriSinifi = 4 then 'C'
        else null
      end Sinifi
    from dbo.ISGKatipExcelAktarim pa
    inner join DisAktarim_IsgKatipExcel_PersonelKategoriAdi pka on pka.PersonelKategoriAdi = pa.PersonelKategoriAdi
    inner join DisAktarim_ISGKatipExcel_CalismaSekli pcs on pcs.CalismaSekli = pa.CalismaSekli
    where pka.KategoriSinifi in (2, 3, 4)
      and not exists (Select 1 from dbo.IGU dt where dt.tcKimlikNo = pa.TCKimlikNo)
    group by AdiSoyadi, TCKimlikNo,
      case
        when pka.KategoriSinifi = 2 then 'A'
        when pka.KategoriSinifi = 3 then 'B'
        when pka.KategoriSinifi = 4 then 'C'
        else null
      end
    order by AdiSoyadi
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    insert into dbo.DigerSaglikPersonel (kod, tanimi, tcKimlikNo, calismaTipi, durum, sertifika, pin, TesisKodu, GSM, EPosta, cardType)
    select substring (cast (10000 + IsNull ((select max (cast (kod as int)) from DigerSaglikPersonel where IsNumeric (Kod) = 1), 0) + row_number () over (order by AdiSoyadi) as varchar (5)), 2, 4) kod, 
      AdiSoyadi tanimi, TCKimlikNo tcKimlikNo, 
      max (case when pcs.CalismaSekliSinifi = 1 then 1 else null end) calismaTipi, 
      'Aktif' durum, 
      MAX (case when LTRIM (RTRIM (SertifikaNo)) = '' then NULL else SertifikaNo end) sertifika, null pin, null TesisKodu, null GSM, null EPosta, null cardType
    from dbo.ISGKatipExcelAktarim pa
    inner join DisAktarim_IsgKatipExcel_PersonelKategoriAdi pka on pka.PersonelKategoriAdi = pa.PersonelKategoriAdi
    inner join DisAktarim_ISGKatipExcel_CalismaSekli pcs on pcs.CalismaSekli = pa.CalismaSekli
    where pka.KategoriSinifi in (5)
      and not exists (Select 1 from dbo.DigerSaglikPersonel dt where dt.tcKimlikNo = pa.TCKimlikNo)
    group by AdiSoyadi, TCKimlikNo
    order by AdiSoyadi
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin  
    delete ss
    from ISGKatipExcelAktarim ss
    inner join DisAktarim_IsgKatipExcel_GorevTuru ssgt on ssgt.GorevTuru = ss.GorevTuru
    where ssgt.GorevTuruSinifi = 2
      and LTRIM (RTRIM (IsNull (HizmetalanKurum, ''))) = 'sil'
      and LTRIM (RTRIM (IsNull (HizmetAlanKurumSGKSicilNo, ''))) = TCKimlikNo
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin
    -- Hizmet alan kurum �nvan alan� null olanlar i�in ilk kelimelerden se�im yap
    update ISGKatipExcelAktarim SET HizmetAlanKurumUnvan = dbo.fn_KelimeAl (HizmetAlanKurum, 4, './\=(){}[]+*-_,;<>', 1) where HizmetAlanKurumUnvan Is NULL
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin
    -- merkez subeler otomatik insert olmas�n diye triggeri kapat ge�ici s�re
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
    -- triggeri geri a�
    alter table dbo.SIRKETLER_TNM enable Trigger SIRKETLER_TNM_TRG
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
  begin
    -- son �irketin koduna g�re numarat�r� g�ncelle
    declare @dn varchar (10)
    select @dn = max (cast (SirketKod as int)) from SIRKETLER_TNM where IsNumeric (SirketKod) = 1
    exec sp_DosyaNoYaz @dn, 'FN'
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin
    insert into dbo.SIRKET_SUBE_TNM (sirketKod, subeKod, subeTanim, subeSiciNo, subeDoktor, BolgeMudurlukSicilNo, MuayeneProtokolNo, IGU, DigerSaglikPers)
    select srk.SirketKod SirketKod, 
      UPPER (right (master.dbo.fn_varbintohexstr( 
              IsNull ((select max (cast (SubeKod as int)) from SIRKET_SUBE_TNM sb where sb.SirketKod = srk.SirketKod and IsNumeric (SubeKod) = 1), -1) + 
              row_number () over (Partition by srk.SirketKod order by HizmetAlanKurumSGKSicilNo) ), 2)) subeKod, 
      IsNull (HizmetAlanKurumSubeTanimi, Replace (HizmetAlanKurumSGKSicilNo, ' ', '')) subeTanim, HizmetAlanKurumSGKSicilNo subeSiciNo, null subeDoktor, null BolgeMudurlukSicilNo, null MuayeneProtokolNo, null IGU, null DigerSaglikPers
    -- select *
    from dbo.ISGKatipExcelAktarim pa
    inner join dbo.SIRKETLER_TNM srk on srk.tanimi = substring (LTRIM (RTRIM (ISNULL (pa.HizmetAlanKurumUnvan, pa.HizmetAlanKurum))), 1, 100)
    where not exists (Select 1 from dbo.SIRKET_SUBE_TNM dt where dt.subeSiciNo = pa.HizmetAlanKurumSGKSicilNo)
    group by srk.SirketKod, substring (LTRIM (RTRIM (ISNULL (pa.HizmetAlanKurumUnvan, pa.HizmetAlanKurum))), 1, 100), IsNull (HizmetAlanKurumSubeTanimi, Replace (HizmetAlanKurumSGKSicilNo, ' ', '')), HizmetAlanKurumSGKSicilNo
    order by srk.SirketKod, IsNull (HizmetAlanKurumSubeTanimi, Replace (HizmetAlanKurumSGKSicilNo, ' ', '')), HizmetAlanKurumSGKSicilNo
  end

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
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

  set @iTipInt = @iTipInt + 1

  if @iTip = @iTipInt or @iTip is Null
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

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
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

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin  
    -- �� g�venli�i uzman� ayl�k �al��ma dakika bilgisi g�ncelleniyor
    update ssb set DigerSaglikPers = dt.kod, DigerSaglikPersCalismaDakika = AylikCalismaDakika
    from dbo.ISGKatipExcelAktarim pa
    inner join dbo.DigerSaglikPersonel dt on dt.TCKimlikNo = pa.TCKimlikNo
    inner join SIRKETLER_TNM srk on srk.Tanimi = substring (LTRIM (RTRIM (ISNULL (pa.HizmetAlanKurumUnvan, pa.HizmetAlanKurum))), 1, 100)
    inner join SIRKET_SUBE_TNM ssb on ssb.sirketKod = srk.sirketKod
      and ssb.subeSiciNo = pa.HizmetAlanKurumSGKSicilNo
    where IsNull (DigerSaglikPers, '') <> IsNull (dt.kod, '')
      or IsNull (DigerSaglikPersCalismaDakika, 0) <> IsNull (AylikCalismaDakika, 0)
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin  
    select IDENTITY (int, 1, 1) ID, IsNull (pkx.UserPrefix, 'dr') + dbo.TurkCharToEng (case when CHARINDEX (' ', tanimi) <= 0 then Tanimi else substring (tanimi, 1, CHARINDEX (' ', tanimi)-1) end) kullanici, 
      Tanimi ADISOYADI, kod doktor
    into dbo.tmpUsr
    from dbo.DoktorlarT dt
    left outer join
      ((select TCKimlikNo, PersonelKategoriAdi
        FROM dbo.ISGKatipExcelaktarim
        GROup by TCKimlikNo, PersonelKategoriAdi) igk
       inner join DisAktarim_ISGKatipExcel_PersonelKategoriAdi pkx on pkx.PersonelKategoriAdi = igk.PersonelKategoriAdi) 
       on igk.TCKimlikNo = dt.tcKimlikNo
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
    insert into dbo.Users (kullanici, password, [default], donem, parametreler, yet1, yet2, ADISOYADI, doktor, grup, Saat, userSkin, email, ustUser, sirketKodu, IGU, DigerSaglikPers)
    select uuu.kullanici kullanici, 
      dt.tcKimlikNo password, 0 [default], null donem, null parametreler, null yet1, null yet2, Tanimi ADISOYADI, kod doktor, IsNull (pkx.UserGroup, 2) grup, getdate () Saat, 'iMaginary' userSkin, null email, null ustUser, null sirketKodu, null IGU, null DigerSaglikPers
    -- select *
    from dbo.DoktorlarT dt
    left outer join
      ((select TCKimlikNo, PersonelKategoriAdi
        FROM dbo.ISGKatipExcelaktarim
        GROup by TCKimlikNo, PersonelKategoriAdi) igk
       inner join DisAktarim_ISGKatipExcel_PersonelKategoriAdi pkx on pkx.PersonelKategoriAdi = igk.PersonelKategoriAdi) 
       on igk.TCKimlikNo = dt.tcKimlikNo
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
    select IDENTITY (int, 1, 1) ID, ISNULL (pkx.UserPrefix, 'isg') + dbo.TurkCharToEng (case when CHARINDEX (' ', tanimi) <= 0 then Tanimi else substring (tanimi, 1, CHARINDEX (' ', tanimi)-1) end) kullanici, 
      Tanimi ADISOYADI, kod IsGuvUzm
    into dbo.tmpUsr
    from dbo.IGU dt
    left outer join
      ((select TCKimlikNo, PersonelKategoriAdi
        FROM dbo.ISGKatipExcelaktarim
        GROup by TCKimlikNo, PersonelKategoriAdi) igk
       inner join DisAktarim_ISGKatipExcel_PersonelKategoriAdi pkx on pkx.PersonelKategoriAdi = igk.PersonelKategoriAdi) 
       on igk.TCKimlikNo = dt.tcKimlikNo
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
    select ID, kullanici, cast (IsGuvUzm as varchar (4)) as [�� G�v. Uzm. Kodu], cast (ADISOYADI as varchar (50)) [ADI SOYADI]
    from dbo.tmpUsr
    order by ID
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin  
    insert into dbo.Users (kullanici, password, [default], donem, parametreler, yet1, yet2, ADISOYADI, doktor, grup, Saat, userSkin, email, ustUser, sirketKodu, IGU, DigerSaglikPers)
    select uuu.Kullanici kullanici, 
      dt.tcKimlikNo password, 0 [default], null donem, null parametreler, null yet1, null yet2, Tanimi ADISOYADI, null doktor, IsNull (pkx.UserGroup, 11) grup, getdate () Saat, 'iMaginary' userSkin, null email, null ustUser, null sirketKodu, kod IGU, null DigerSaglikPers
    -- select *
    from dbo.IGU dt
    left outer join
      ((select TCKimlikNo, PersonelKategoriAdi
        FROM dbo.ISGKatipExcelaktarim
        GROup by TCKimlikNo, PersonelKategoriAdi) igk
       inner join DisAktarim_ISGKatipExcel_PersonelKategoriAdi pkx on pkx.PersonelKategoriAdi = igk.PersonelKategoriAdi) 
       on igk.TCKimlikNo = dt.tcKimlikNo
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
    select IDENTITY (int, 1, 1) ID, ISNULL (pkx.UserPrefix, 'sp') + dbo.TurkCharToEng (case when CHARINDEX (' ', tanimi) <= 0 then Tanimi else substring (tanimi, 1, CHARINDEX (' ', tanimi)-1) end) kullanici, 
      Tanimi ADISOYADI, kod DigerSglPers
    into dbo.tmpUsr
    from dbo.DigerSaglikPersonel dt 
    left outer join
      ((select TCKimlikNo, PersonelKategoriAdi
        FROM dbo.ISGKatipExcelaktarim
        GROup by TCKimlikNo, PersonelKategoriAdi) igk
       inner join DisAktarim_ISGKatipExcel_PersonelKategoriAdi pkx on pkx.PersonelKategoriAdi = igk.PersonelKategoriAdi) 
       on igk.TCKimlikNo = dt.tcKimlikNo
    where not Exists (Select 1 from dbo.Users U where U.DigerSaglikPers = dt.kod)
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
    select ID, kullanici, cast (DigerSglPers as varchar (4)) as [Di�.Sa�.Pers. Kodu], cast (ADISOYADI as varchar (50)) [ADI SOYADI]
    from dbo.tmpUsr
    order by ID
  end

  set @iTipInt = @iTipInt + 1
  
  if @iTip = @iTipInt or @iTip is Null
  begin  
    insert into dbo.Users (kullanici, password, [default], donem, parametreler, yet1, yet2, ADISOYADI, doktor, grup, Saat, userSkin, email, ustUser, sirketKodu, IGU, DigerSaglikPers)
    select uuu.Kullanici kullanici, 
      dt.tcKimlikNo password, 0 [default], null donem, null parametreler, null yet1, null yet2, Tanimi ADISOYADI, null doktor, IsNull (pkx.UserGroup, 3) grup, getdate () Saat, 'iMaginary' userSkin, null email, null ustUser, null sirketKodu, null IGU, kod DigerSaglikPers
    -- select *
    from dbo.DigerSaglikPersonel dt
    left outer join
      ((select TCKimlikNo, PersonelKategoriAdi
        FROM dbo.ISGKatipExcelaktarim
        GROup by TCKimlikNo, PersonelKategoriAdi) igk
       inner join DisAktarim_ISGKatipExcel_PersonelKategoriAdi pkx on pkx.PersonelKategoriAdi = igk.PersonelKategoriAdi) 
       on igk.TCKimlikNo = dt.tcKimlikNo
    inner join dbo.tmpUsr uuu on uuu.DigerSglPers = dt.Kod
    where not Exists (Select 1 from dbo.Users U where U.DigerSaglikPers = dt.kod)
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
GO
exec sp_vw_sys_upd 'P ', 'dbo', 'sp_ISGKatipExcelAktarimi'
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
    select srk.SirketKod SirketKod, 
      UPPER (right (master.dbo.fn_varbintohexstr( 
              IsNull ((select max (cast (SubeKod as int)) from SIRKET_SUBE_TNM sb where sb.SirketKod = srk.SirketKod and IsNumeric (SubeKod) = 1), -1) + 
              row_number () over (Partition by srk.SirketKod order by HizmetAlanKurumSGKSicilNo) ), 2)) subeKod, 
      IsNull (HizmetAlanKurumSubeTanimi, Replace (HizmetAlanKurumSGKSicilNo, ' ', '')) subeTanim, HizmetAlanKurumSGKSicilNo subeSiciNo, null subeDoktor, null BolgeMudurlukSicilNo, null MuayeneProtokolNo, null IGU, null DigerSaglikPers
    -- select *
    from dbo.ISGKatipExcelAktarim pa
    inner join dbo.SIRKETLER_TNM srk on srk.tanimi = substring (LTRIM (RTRIM (ISNULL (pa.HizmetAlanKurumUnvan, pa.HizmetAlanKurum))), 1, 100)
    where not exists (Select 1 from dbo.SIRKET_SUBE_TNM dt where dt.subeSiciNo = pa.HizmetAlanKurumSGKSicilNo)
    group by srk.SirketKod, substring (LTRIM (RTRIM (ISNULL (pa.HizmetAlanKurumUnvan, pa.HizmetAlanKurum))), 1, 100), IsNull (HizmetAlanKurumSubeTanimi, Replace (HizmetAlanKurumSGKSicilNo, ' ', '')), HizmetAlanKurumSGKSicilNo
    order by srk.SirketKod, IsNull (HizmetAlanKurumSubeTanimi, Replace (HizmetAlanKurumSGKSicilNo, ' ', '')), HizmetAlanKurumSGKSicilNo
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
exec dbo.sp_ISGKatipExcelAktarimi 21
go
exec dbo.sp_ISGKatipExcelAktarimi 22
go
--update #tempUser set Kullanici = Kullanici + 'XX' where ID in (1, 2)
go
--update #tempUser set Kullanici = 'XX' where ID in (1, 2)
go
--update #tempUser set Kullanici = 'YY' where ID in (3, 4)
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
exec dbo.sp_ISGKatipExcelAktarimi 29
go
exec dbo.sp_ISGKatipExcelAktarimi 30
go
exec dbo.sp_ISGKatipExcelAktarimi 31
go
exec dbo.sp_ISGKatipExcelAktarimi 32
go
exec dbo.sp_ISGKatipExcelAktarimi 33
go
exec dbo.sp_ISGKatipExcelAktarimi 34
go
exec dbo.sp_ISGKatipExcelAktarimi 35
go
select * from Users
go
ROLLBACK -- COMMIT
GO
select cast (cast (65 as varbinary (1)) as varchar (2))

