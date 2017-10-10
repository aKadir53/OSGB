unit KadirType;


interface

uses HizmetKayitIslemleriWS,DB,sysUtils,XSBuiltIns;

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




implementation

end.
