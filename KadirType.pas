unit KadirType;


interface

uses HizmetKayitIslemleriWS,DB,sysUtils,XSBuiltIns;

type TprintTip = (pTYazdir,pTOnIzle,pTDizayn,pTNone);
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
      TedaviYontemi : string;
      GirisTarihi : Tdate;
      CikisTarih : TDate;
      dosyaNo : string;
      gelisNo : string;
      TakipNo : string;
      basvuruNo : string;
      BransKodu : string;
      TaburcuKodu : string;
      doktor : string;
      ProtokolNo : string;
      Yupass : string;
      IdealKilo : string;
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
  TGirisFormRecord = Record
    F_dosyaNO_ : string;
    F_gelisNO_ : string;
    F_provizyonTarihi_ : string;
    F_TakipNo_ : string;
    F_ilkTakipNo_ : string;
    F_BasvuruNo_ : string;
    F_DiyalizTedaviTipi_ : string;
    F_Doktor_ : string;
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
  End;

  TSifreDegistir = record
    KullaniciAdi : String;
    Sifre : String;
  end;

Const
  TagfrmHastaKart = 90;
  TagfrmFirmaKart = 100;
  TagfrmUsers = 110;
  TagfrmBolum = 9010;
  TagfrmBirim = 9011;
  TagfrmRaporDetay = -20;
  TagfrmTakipNo = -10;
  TagfrmAsiKarti = 9020;
  TagfrmDoktorlar = 80;
  TagfrmTedaviBilgisi = 70;
  TagfrmGridListeForm = 120;
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
  TagfrmIlacSarf = 250;
  TagfrmSeansDetayKart = 260;
  TagfrmPopupDBGridForm = 270;
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
  TagfrmHizliKayit = 490;
  TagfrmTedaviListP = 500;
  TagfrmHemsiraTakip = 510;
  TagfrmIlaclar = 520;
  TagfrmIlacAnaGrup = 530;
  TagfrmIlacEtkenMadde = 540;
  TagfrmIlacEtkenMaddeDetay = 550;
  TagfrmReceteler = 560;

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


  sp_HastaGelis = 'exec sp_HastaGelisleri ';



implementation





end.
