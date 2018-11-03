unit KadirType;


interface

uses HizmetKayitIslemleriWS,DB,sysUtils,XSBuiltIns,Classes,cxImage,ADODB,
     Vcl.Graphics,jpeg,ExtCtrls;

type TprintTip = (pTYazdir,pTOnIzle,pTDizayn,pTNone,pTPDF);
type sqlType = (sql_Select,sql_Exec,sql_sp,sql_fn,sql_new,sql_edit,sql_delete,sql_none);
type showDialog = (OFShow,OFShowModal);
type userGroup = (ugUser,ugGroup);
type izinKontrol = (ikEvet,ikHayir);


type
   TDataSetKadir = record
     Dataset0 : TDataset;
     Dataset1 : TDataSet;
     Dataset2 : TDataSet;
     Dataset3 : TDataSet;
     Dataset4 : TDataSet;
     Dataset5 : TDataSet;
     Dataset6 : TDataSet;
     Dataset7 : TDataSet;
     Dataset8 : TDataSet;
     Dataset9 : TDataSet;
     Dataset10 : TDataSet;
     Dataset11 : TDataSet;
     Dataset12 : TDataSet;
     Dataset00 : Tdataset;
   end;


type
   ListeSecimler = record
    kolon1 : string;
    kolon2 : string;
    kolon3 : string;
    kolon4 : string;
   end;
   ArrayListeSecimler = array of ListeSecimler;


type
    TYas = record
     yil : integer;
     ay : integer;
     gun : integer;
    End;

type
  THizmetVeriSeti = Record
    Muayene : MuayeneBilgisiDVO;
    Tahlil : Array_Of_TahlilBilgisiDVO;
    Rad : Array_Of_TetkikveRadyolojiBilgisiDVO;
    Tani : Array_Of_TaniBilgisiDVO;
    Ameliyat : Array_Of_AmeliyatveGirisimBilgisiDVO;
    Kons : Array_Of_KonsultasyonBilgisiDVO;
    Ilac : Array_Of_IlacBilgisiDVO;
    Malzeme : Array_Of_MalzemeBilgisiDVO;
    Yatis : Array_Of_HastaYatisBilgisiDVO;
    Diger : Array_Of_DigerIslemBilgisiDVO;
    Dis : Array_Of_DisBilgisiDVO;
    KayitliIslem : Array_Of_KayitliIslemBilgisiDVO;
    HataliIslem : Array_Of_HataliIslemBilgisiDVO;
  End;

type
   TDiyalizTedavi = record
    HCOOO : string;
    K : string;
    GU : string;
    Ca : string;
    Doktor : string;
    Sure : string;
    Heparin : string;
    HeparinUyg : string;
    HeparinTip : string;
    Diyalizor : string;
    Dializat : string;
    GirisYolu : string;
    idealKilo : string;
    SeansNo : string;
    APH : String;
    MalzemeSablon : string;
    DiyalizCins : string;
    Na : string;
    YuzeyAlan : string;
    GirisKiko : string;
    CikisKilo : string;
    MNo : string;
    Igne : string;
    IgneV : string;
end;

type
   THizmetler = record
     Liste : TDataSet;
   end;

type
   THasta = record
    Adi : string;
    SoyAdi : string;
    BabaAdi : string;
    AnaAdi : string;
    Tarih : string;
    TcKimlik : string;
    Yasi : string;
    sicil : string;
    karne : string;
    Cinsiyet : string;
    Durum : integer;
    DogumYeri : string;
    vatandasTip : integer;
    DT : TXSDateTime;
    gelisNo : string;
    dosyaNO : string;
end;




type
   TDigerIslemTalep = record
    TakipNo : string;
    saglikTesisKodu : integer;
    sutKodu : string;
    adet : integer;
    islemTarihi : string;
    drTescilNo : string;
    bransKodu : string;
    hizmetSunucuRefNo : string;
    islemDurum : string;
    raporTakipNo : string;
    basvuruNo : string;
   end;

type
  TAdliGecmis = Record
    provTarihi: WideString;
    provTipi: WideString;
    tckNo: WideString;
  End;

type
    THastaKabul = record
      tckimlikNo : string;
      muayeneAcilisTarihi : string;
      sosyalGuvenlikNo : string;
      karneNo : string;
      yakinlikKodu : string;
      TakipTuru : string;
      provizyonTuru : string;
      devredilenKurum : string;
      Durum : string;
      Adi : string;
      Sadi : string;
      DTarihi : string;
      Cinsiyet : string;
      Doktor : string;
      yas : string;
      tedaviTuru : string;
      tedaviTipi : string;
      TakipNo : string;
      YatisBitisTarihi : string;
      donorTc : string;
      BransKodu : string;
      ProvizyonTarihi : string;
      BasvuruNo : string;
      ilkTakip : string;
      dosyaNo : string;
      gelisNo : string;
      bebekSira : string;
      BebekDTarihi : string;
      ArrayOfAdliGecmis : array of TAdliGecmis;
      sevkedenTesisKodu : integer;
      kilo : string;
      boy : string;
      diyalizTedaviTipi : integer;
      DT : TXSDateTime;
      id : integer;
      telefon : string;
      adres : string;
    End;


type
    TGelisDuzenle = record
      TedaviTuru : string;
      GirisTarihi : Tdate;
      dosyaNo : string;
      gelisNo : string;
      TakipNo : string;
      BransKodu : string;
      doktor : string;
      ProtokolNo : string;
      Tetkikler : string;
      ProtokolNoGuncelle : boolean;
    end;


type
    TTakipBilgisi = record
      Takip : String;
      MuayeneTarihi : String;
      KayitTarihi : string;
      TesisKodu : String;
      GidecegiTesisTuru : string;
      SevkEdenTesis : string;
      SevkEdilenBrans : string;
      SevkEdilisTarihi : string;
      SevkEdenDoktor : string;
      TalipDurumu : string;
      HastaAdi : string;
      TcKimlik : string;
      yas : string;
      ilkTakip : string;
      BasvuruNo : string;
      donerTcKimlik : string;
      TakipTipi : string;
      tedaviTuru : string;
      provizyonTipi : string;
      tedaviTipi : string;
      bransKodu : string;
      dosyaNo : string;
      gelisNo : string;
      faturaTeslimNo : string;
    end;

type
    TTakip = record
      TesisKodu : integer;
      TCKimlik : string;
      SosyalGuvenlikNo : string;
      KarneNo : string;
    end;

type
   THaksahiplikBilgileri = record
     TcKimlikNo : string;
     karneNo : string;
     sosyalGuvenlikNo : string;
     yakinlikKodu : string;
     sigortaliTuru : string;
     devredilenKurum : string;
     provizyonTipi : string;
     provizyontarihi : string;
     Adi : string;
     dosyaNo : string;
   end;

type
   TserverBilgi = record
     servername : string;
     ip : string;
     cs : string;
     user : string;
   end;

type
   TOdemeSorguOku = record
     DigerIslemler : TDataSet;
     Taniler : TDataSet;
   end;

type
   TRapor = record
     raporTarihi : string;
     raporGecerlilik : string;
     sevkEdenTesis : string;
     raporNo : string;
     muayeneAcilis : string;
   end;

type
  TReceteIlacBilgisi = record
    kodu: string;
    adi: string;
    aktif: integer;
    adoz: real;
    tekdoz: real;
  End;

type
  DiyabetFormDoktor = record
    drTescilNo: string;
    brans: string;
    egitimVarmi: string;
  End;

  DiyabetFormDoktorlar = array of DiyabetFormDoktor;

type
  TakipFormu = record
    DosyaNo: string;
    GelisNo: string;
    DetayNo: string;
    Tckimilk: string;
    Ad: string;
    Soyad: string;
    CepTel: string;
    Protokol: string;
    Cinsiyet: string;
    doktor: DiyabetFormDoktorlar;
    vizitTarihi: string;
    formNo: string;
    Tani: string;
    TaniTarihi: string;
    Tesis: string;
  End;

  TakipFormlari = array of TakipFormu;

  BasvuruTakipBilgisi = record
    takipNo: string;
    Basvuruno: string;
    sigortaliTuru: string;
    bransKodu: string;
    devredilenKurum: string;
    provizyonTarihi: string;
    provizyonTipi: string;
    takipTipi: string;
    yeniDoganBilgisi: string;
    yeniDoganCS: string;
    yatisBitisTarihi: string;
    tedaviTuru: string;
    tedaviTipi: string;
    ilktakipNo: string;
    SonucKodu: string;
  end;

  OrneklenenTakip = record
    Takip: string;
  end;

  OrneklenenTakipler = array of OrneklenenTakip;

  KesintiTakip = record
    Takip: string;
    islemSiraNo: string;
    Tarih: string;
    sutKodu: string;
    islemAdi: string;
    tutar: double;
    kesintiTutari: double;
    aciklama: string;
    grupturu: string;
    grupAdi: string;
  end;

  KesintiTakipler = array of KesintiTakip;

  KatilimPayi = record
    Takip: string;
    muayeneKatilimTutari: double;
    malzemeKatilimTutari: double;
    tupBebekKatilimTutari: double;
  end;

  KatilimPaylari = array of KatilimPayi;

type
  TKareBarkod = record
    barkodNo: string;
    seriNo: string;
    SKT: string;
    partiNo: string;
  end;

type
  TSGKBilgileri = record
    devredilenKurumKodu: string;
    devredilenKurum: string;
    durumKodu: string;
    durum: string;
  end;

type
  TTarihAralik = record
    ilkTarih: TDate;
    sonTarih : TDate;
  end;



type
  TSeansOlusturPrm = record
     ilkSeansTarihi : Tdate;
     sonSeansTarihi : Tdate;
     gunSayisi : integer;
     HizmetTip : Boolean;
     araSeans : Boolean;
     SeansKodu : string;
  end;

type
  TReceteSatir = record
     barkod : string;
     barkodadi : string;
     kutuadet : integer;
     peryot : integer;
     peryotAdet : integer;
     doz : string;
     doz1 : integer;
     doz2 : integer;
     kulyol : string;
  end;

type
  TYeniRecete = record
    Tarih : string;
    ReceteTuru : string;
    ReceteAltTuru : string;
    doktor : string;
    doktorAdi : string;
    protokolNo : string;
end;

type
  TAck = Record
     ackKod : string;
     ack : string;
  End;

type
  TTeleEKG = Record
    Tarih : Tdate;
    ack : string;
    code : string;
  End;

type
 TPersonelTetkikler = Record
   Tetkik : String;
 End;

type
  TFirmaBilgi = Record
    SirketKodu : String;
    SubeKodu : string;
    SirketAdi : String;
    Yetkili : string;
    YetkiliMail : String;
    YetkiliMobil : String;
    IGU : string;
    IGUMail : string;
    doktor : string;
    doktorMail : string;
    calisanTemsilci : string;
    calisanTemsilciMail : string;
    BascalisanTemsilci : string;
    BascalisanTemsilciMail : string;
    destekElemani : string;
    destekElemaniMail : string;
    isveren : string;
    ilgiliMailBilgileri : string;
    firmaYetkiliMailBilgileri : string;
    isgKurulEkibiMailBilgileri : string;
  End;

type
  TGirisFormRecord = Record
    F_dosyaNO_ : string;
    F_gelisNO_ : string;
    F_provizyonTarihi_ : string;
    F_TakipNo_ : string;
    F_ilkTakipNo_ : string;
    F_BasvuruNo_ : string;
    F_DiyalizTedaviTipi_ : string;
    F_Doktor_ : string;
    F_Igu_ : string;
    F_Makina_ : string;
    F_Seans_ : string;
    F_TalepSira_ : string;
    F_TC_ : string;
    F_DevKurum_ : string;
    F_SigortaliTur_ : string;
    F_HastaAdSoyad_ : string;
    FformID : integer;
    F_HastaBilgileriniCaptionGoster_ : Boolean;
    F_SeansTarihi_ : string;
    F_Yupass_ : string;
    F_SeansSira_ : string;
    F_IlacEtkenMadde_ : string;
    F_firmaKod_ : string;
    F_firmaAdi_ : string;
    F_mobilTel_ : string;
    F_sp_ : string;
    F_kod_ : string;
    F_sube_ : string;
    F_MuayeneProtokolNo_ : string;
    F_FaturaNO_ : string;
    F_Tarih1_ : string;
    F_Tarih2_ : string;
    F_ResourceID_ : string;
  End;

type
  TKKDRecord = Record
    KKDID : string;
    SirketRiskID : string;
    VucutKisim : string;
    VucutUzuv : string;
    KKD : string;
    TSE : string;
    KullanilacakIs : string;
    Bolum : string;
  End;

type
  TRiskRecord = Record
    RiskID : string;
    SirketRiskID : string;
    Method : Variant;
    Bolum : Variant;
    TehlikeKaynagi : Variant;
    Tehlike : Variant;
    Etkilenecek : Variant;
    Risk_tanim : Variant;
    Onlemler : string;
    Olasilik : Variant;
    Frekans : Variant;
    Siddet : Variant;
    Risk : Variant;
    RDS : Variant;
    MevcutOnlem : string;
    Sorumlu : string;
    TerminSure : Variant;
    Termin : string;
    Gerceklesme : Variant;
    Olasilik_2 : Variant;
    Frekans_2 : Variant;
    Siddet_2 : Variant;
    Risk_2 : Variant;
    RDS_2 : Variant;
    yasalDayanak : string;
    Image : TcxImage;
    Stream : TMemoryStream;
    SektorId : string;
    SSGBolum: integer;
    SSGYapilacakFaliyetTuru: Integer;
    SSGKokNeden: String;
    SSGFaliyetPlan: String;
    SSGUygulanacakFaliyetTarihi: String;
    SSGBolumYetkilisi : String;
    SSGSonuc : Variant;
    SSGYapilanFaliyet: String;
    SSGFaliyetKapamaTarihi : String;
    SSGTakipSüresi : String;
    SSGKapamaOnayi : Variant;
  End;

  TDOF = record
    SSGBolum: integer;
    SSGYapilacakFaliyetTuru: Integer;
    SSGKokNeden: String;
    SSGFaliyetPlan: String;
    SSGUygulanacakFaliyetTarihi: String;
    SSGBolumYetkilisi : String;
    SSGSonuc : Variant;
    SSGYapilanFaliyet: String;
    SSGFaliyetKapamaTarihi : String;
    SSGTakipSüresi : String;
    SSGKapamaOnayi : Variant;
  end;

  TSahaDenetim = record
    Bolum : integer;
    TehlikeliDurum : String;
    Yonetmelik : String;
    IlgiliKisi : String;
    isinDurumu : Variant;
    Image : TcxImage;
  end;

  TSifreDegistir = record
    KullaniciAdi : String;
    Sifre : String;
    SifreyiDoldur : Boolean;
  end;

  TSahaDenetimler = record
    KullaniciAdi : String;
    FirmaKod : String;
    SubeKod : String;
    GozlemGrubu : String;
    DenetimTarihi : String;
    DenetimDefterNo : String;
  end;

  TYillikCalismaPlani = record
    faliyetid : integer;
    peryod : integer;
    ocak : integer;
    subat : integer;
    mart : integer;
    nisan : integer;
    mayis : integer;
    haziran : integer;
    temmuz : integer;
    agustos : integer;
    eylul : integer;
    ekim : integer;
    kasim : integer;
    aralik : integer;
    ocakR : integer;
    subatR : integer;
    martR : integer;
    nisanR : integer;
    mayisR : integer;
    haziranR : integer;
    temmuzR : integer;
    agustosR : integer;
    eylulR : integer;
    ekimR : integer;
    kasimR : integer;
    aralikR : integer;
    sorumlu1 : integer;
    konu1 : integer;
    sorumlu2 : integer;
    konu2 : integer;
  end;


  TIntegerArray = array of Integer;
Const
  TagfrmHastaKart = 90;
  TagfrmFirmaKart = 100;
  TagfrmMerkezBilgisi = 105;
  TagfrmHizmetKart = 735;
  TagfrmUsers = 110;
  TagfrmBolum = 9010;
  TagfrmBirim = 9011;
  TagfrmSube = 9012;
  TagfrmFirmaISGEkip = 9013;
  TagfrmEkipmanTuru = 9014;
  TagfrmEkipmanTuruOzellik = 9015;
  TagfrmRaporDetay = -20;
  TagfrmTakipNo = -10;
  TagfrmAsiKarti = 9020;
  TagfrmDoktorlar = 80;
  TagfrmTedaviBilgisi = 70;
  TagfrmGridListeForm = 120;
  TagfrmDestekTalep = 121;
  TagYeniOSGBVeriTabani = 127;
  TagfrmHastaRecete = 130;
  TagfrmHastaIlacTedavi = 140;
  TagfrmTeleEkg = 150;
  TagfrmSifreDegis = 160;
  TagfrmReceteSablon = 170;
  TagfrmSon6AylikTetkikSonuc = 180;
  TagfrmHastaTetkikEkle = 190;
  TagfrmKanTetkikTakip = 200;
  TagfrmKtvListesi = 210;
  TagfrmKanTetkikTakipDegerlendir = 220;
  TagfrmKontrolUserSet = 230;
  TagfrmHastaListe = 240;
  TagfrmDoktorHastaListe = 241;
  TagfrmFirmaListe = 242;
  TagfrmIlacSarf = 250;
  TagfrmSeansDetayKart = 260;
  TagfrmPopupDBGridForm = 270;
  TagfrmPopupDBVerticalGridForm = 275;
  TagfrmSaglikNetOnline = 280;
  TagfrmSeansDagilimi = 290;
  TagfrmFatura = 300;
  TagfrmTakipBilgisiOku = 310;
  TagfrmPopup = 320;
  TagfrmTaniKarti = 330;
  TagfrmTakipKontrol = 340;
  TagfrmHastaDiyalizIzlem = 350;
  TagfrmTopluGelis = 360;
  TagfrmDamarIzi = 370;
  TagfrmKurumBilgi = 380;
  TagKurumSifreDegisForm = 390;
  TagfrmDonemSonlandir = 400;
  TagfrmGonderilmis = 410;
  TagfrmTahliltakip = 420;
  TagfrmTahlilsonucGir = 430;
  TagfrmHemsireler = 440;
  TagfrmMakina = 450;
  TagfrmMakinaBakim = 460;
  TagfrmTestAyarlari = 470;
  TagfrmKiloOrder = 480;
  TagfrmHizliKayitPersonel = 490;
  TagfrmTedaviListP = 500;
  TagfrmHemsiraTakip = 510;
  TagfrmIlaclar = 520;
  TagfrmIlacAnaGrup = 530;
  TagfrmIlacEtkenMadde = 540;
  TagfrmIlacEtkenMaddeDetay = 550;
  TagfrmReceteler = 560;
  TagfrmUpdate = 570;
  TagfrmPersonelEgitim = 580;

  TagfrmSorgulamalar = 590;
  TagfrmSorguCalistir = 600;
  TagfrmIsKazasi = 610;
  TagfrmAbout = 620;
  TagfrmSahaSaglikGozetim = 630;
  TagfrmCihazKontrol = 635;
  TagfrmFirmaKontrol = 636;
  TagfrmIGU = 640;
  TagFirmaCalismalari = 650;
  TagfrmPersonelTetkikIstem = 660;
  TagfrmFirmaBolumTetkikIstemSablon = 670;
  TagfrmFirmaBolumTanim = 680;
  TagfrmLabParametreleri = 690;
  TagfrmLabKabul = 700;
  TagfrmLabSonucGir = 710;
  TagfrmAnamnez = 720;
  TagfrmTetkikIstemSablon = 730;
  TagfrmHizliKayitDisAktarimlar = 740;
  TagfrmDokumanYonetim = 750;
  TagfrmIseGiris = 760;
  TagfrmFaturalar = 780;
  TagfrmDigerSaglikPers = 790;
  TagfrmSirketSozlesme = 800;
  TagfrmSirketSozlesmeler = 810;
  TagfrmCariHareketGiris = 820;
  TagfrmCariHesapEkstre = 830;
  TagfrmRDS = 840;
  TagfrmAjandaOzet = 850;
  TagfrmSirketSahaGozetim = 860;
  TagfrmCariHesapBorcAlacakToplam = 870;
  TagfrmISGKurulToplanti = 880;
  TagfrmKKD = 890;
  TagfrmTedarikci = 900;
  TagfrmCekler = 910;
  TagfrmKasaBanka = 920;
  TagfrmCSGBveriGonder = 930;
  TagfrmRTFSablon = 940;
  TagfrmSirketSahaDenetim = 950;
  TagfrmSirketEkipmanList = 960;
  TagfrmSirketYillikCalismaPlan = 970;
  TagfrmFirmaYetkili = 980;
  TagfrmSirketYillikEgitimPlan = 990;
  TagfrmKroki = 1000;


  Kaydet = 0;
  Sil = 1;
  Yeni = 2;

  ExceleGonder = 9997;
  SeansTarihiUpdate = 0;
  SeansDoktorUpdate = 1;
  SeansInsert = 2;
  ReceteIlacEkle = 3;
  ReceteAckEkle = 4;
  ReceteIlacDuzenle = 5;
  ReceteAckDuzenle = 6;
  ReceteIlacAckDuzenle = 7;
  ReceteIlacAckEkle = 8;
  ReceteYeni = 9;
  ReceteYeniRecete = 10;
  ReceteMedulaKaydet = 11;
  ReceteMedulaSil = 12;
  ReceteMedulaOnay = 13;
  TeleEkgDuzenle = 14;
  ReceteSifre = 15;
  PrgSifre = 16;
  ReceteYeniSablon = 17;
  AylikTetkik = -1;
  UcAylikTetkik = -3;
  AltiAylikTetkik = -6;
  YillikTetkik = -12;
  ReceteIlacEkleIlacTedavi = 17;
  ReceteIlacAckEkleMedula = 18;
  ReceteTaniEkleMedula = 19;
  ReceteDuzenle = 20;
  ClckListele = 21;
  gdgelisDuzenle = 22;
  gdgelisAc = 23;
  gdPeryodikgelisAc = 30;
  ptPersonelTetkikleri = 31;
  yeniGozlem = 24;
  gozlemSil = 25;
  GozlemDuzenle = 26;
  Imzali = 0;
  Imzasiz = 1;
  yeniFatura = 1;
  faturaDuzenle = 2;
  faturaSil = 3;
  faturaYazdir = 4;
  faturaE_Arsiv = 5;
  sozlesmedenFatura = 6;
  yeniRisk = 27;
  riskDuzenle = 28;
  yeniGozetim = 40;
  gozetimDuzenle = 41;
  yeniRiskBolum = 42;
  yeniTehlikeKaynak = 43;
  yeniTehlike = 59;
  yeniEkilenecekler = 60;
  riskRaporuPaylas = 44;
  sahaGozetimPaylas = 45;
  yeniKKD = 46;
  KKDDuzenle = 47;
  yeniKKDEkle = 48;
  FaturaTahsilatEkle = 49;
  CekTahsilat = 50;
  OdemeEkle = 51;
  yeniDenetim = 52;
  denetimDuzenle = 53;
  RDP_FineKenny = '10';
  RDP_Matris = '11';
  RDP_Fmea = '12';
  RDSonuc_FineKenny = '20';
  RDSonuc_Matris = '21';
  RDEkipTutanagi = '30';
  yeniFaaliyet = 54;
  FaaliyetDuzenle = 55;
  FirmaUzmanDegistir = 56;
  FirmaDoktorDegistir = 57;
  PersonelSirketDegistir = 58;
  PersonelTetkisIste = 61;


  sp_HastaGelis = 'exec sp_HastaGelisleri ';

implementation


end.
