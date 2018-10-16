// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://213.159.30.6/CSGBservice.asmx?wsdl
//  >Import : http://213.159.30.6/CSGBservice.asmx?wsdl>0
//  >Import : http://213.159.30.6/CSGBservice.asmx?wsdl>1
// Encoding : utf-8
// Version  : 1.0
// (15.10.2018 20:18:04 - - $Rev: 45757 $)
// ************************************************************************ //

unit CSGBservice;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_UNQL = $0008;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  kayitBilgisi         = class;                 { "http://ws.csgbwebservices.csgb.gov.tr/"[GblCplx] }
  egitimListesiBilgisi = class;                 { "http://tempuri.org/"[GblCplx] }
  cokluEgitimCevapDVO  = class;                 { "http://ws.csgbwebservices.csgb.gov.tr/"[GblCplx] }
  isyeriCevapBilgisi   = class;                 { "http://tempuri.org/"[GblCplx] }
  egitimKodu           = class;                 { "http://ws.csgbwebservices.csgb.gov.tr/"[GblCplx] }
  egitimBildirimSorgu  = class;                 { "http://tempuri.org/"[GblCplx] }
  profesyonelYetkilimiCevap = class;            { "http://tempuri.org/"[GblCplx] }
  egitimObject         = class;                 { "http://ws.csgbwebservices.csgb.gov.tr/"[GblCplx] }
  egitimBildirimSorgulaCevap = class;           { "http://tempuri.org/"[GblCplx] }
  egitimBilgisi        = class;                 { "http://tempuri.org/"[GblCplx] }
  egitimBilgisiCevap   = class;                 { "http://tempuri.org/"[GblCplx] }
  calisanObject        = class;                 { "http://ws.csgbwebservices.csgb.gov.tr/"[GblCplx] }
  cokluEgitimBilgisi   = class;                 { "http://tempuri.org/"[GblCplx] }

  Array_Of_egitimObject = array of egitimObject;   { "http://ws.csgbwebservices.csgb.gov.tr/"[GblUbnd] }
  Array_Of_kayitBilgisi = array of kayitBilgisi;   { "http://ws.csgbwebservices.csgb.gov.tr/"[GblUbnd] }
  Array_Of_calisanObject = array of calisanObject;   { "http://ws.csgbwebservices.csgb.gov.tr/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : kayitBilgisi, global, <complexType>
  // Namespace : http://ws.csgbwebservices.csgb.gov.tr/
  // ************************************************************************ //
  kayitBilgisi = class(TRemotable)
  private
    Fcalisan: calisanObject;
    Fcalisan_Specified: boolean;
    Fegitim: egitimObject;
    Fegitim_Specified: boolean;
    Fmessage_: string;
    Fmessage__Specified: boolean;
    Fstatus: Integer;
    procedure Setcalisan(Index: Integer; const AcalisanObject: calisanObject);
    function  calisan_Specified(Index: Integer): boolean;
    procedure Setegitim(Index: Integer; const AegitimObject: egitimObject);
    function  egitim_Specified(Index: Integer): boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property calisan:  calisanObject  Index (IS_OPTN or IS_UNQL) read Fcalisan write Setcalisan stored calisan_Specified;
    property egitim:   egitimObject   Index (IS_OPTN or IS_UNQL) read Fegitim write Setegitim stored egitim_Specified;
    property message_: string         Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
    property status:   Integer        Index (IS_UNQL) read Fstatus write Fstatus;
  end;

  Array_Of_egitimKodu = array of egitimKodu;    { "http://ws.csgbwebservices.csgb.gov.tr/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : egitimListesiBilgisi, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  egitimListesiBilgisi = class(TRemotable)
  private
    FegitimListesi: Array_Of_egitimKodu;
    FegitimListesi_Specified: boolean;
    Fmessage_: string;
    Fmessage__Specified: boolean;
    Fstatus: Integer;
    procedure SetegitimListesi(Index: Integer; const AArray_Of_egitimKodu: Array_Of_egitimKodu);
    function  egitimListesi_Specified(Index: Integer): boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property egitimListesi: Array_Of_egitimKodu  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FegitimListesi write SetegitimListesi stored egitimListesi_Specified;
    property message_:      string               Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
    property status:        Integer              Index (IS_UNQL) read Fstatus write Fstatus;
  end;



  // ************************************************************************ //
  // XML       : cokluEgitimCevapDVO, global, <complexType>
  // Namespace : http://ws.csgbwebservices.csgb.gov.tr/
  // ************************************************************************ //
  cokluEgitimCevapDVO = class(TRemotable)
  private
    FbasariliKayitBilgisi: Array_Of_kayitBilgisi;
    FbasariliKayitBilgisi_Specified: boolean;
    Fmessage_: string;
    Fmessage__Specified: boolean;
    FsorguNo: Int64;
    FsorguNo_Specified: boolean;
    Fstatus: Integer;
    procedure SetbasariliKayitBilgisi(Index: Integer; const AArray_Of_kayitBilgisi: Array_Of_kayitBilgisi);
    function  basariliKayitBilgisi_Specified(Index: Integer): boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
    procedure SetsorguNo(Index: Integer; const AInt64: Int64);
    function  sorguNo_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property basariliKayitBilgisi: Array_Of_kayitBilgisi  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FbasariliKayitBilgisi write SetbasariliKayitBilgisi stored basariliKayitBilgisi_Specified;
    property message_:             string                 Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
    property sorguNo:              Int64                  Index (IS_OPTN or IS_UNQL) read FsorguNo write SetsorguNo stored sorguNo_Specified;
    property status:               Integer                Index (IS_UNQL) read Fstatus write Fstatus;
  end;



  // ************************************************************************ //
  // XML       : isyeriCevapBilgisi, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  isyeriCevapBilgisi = class(TRemotable)
  private
    FcalisanSayisi: Int64;
    Fmessage_: string;
    Fmessage__Specified: boolean;
    FnaceKodu: string;
    FnaceKodu_Specified: boolean;
    FsorguNo: Int64;
    Fstatus: Integer;
    FtehlikeSinifi: string;
    FtehlikeSinifi_Specified: boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
    procedure SetnaceKodu(Index: Integer; const Astring: string);
    function  naceKodu_Specified(Index: Integer): boolean;
    procedure SettehlikeSinifi(Index: Integer; const Astring: string);
    function  tehlikeSinifi_Specified(Index: Integer): boolean;
  published
    property calisanSayisi: Int64    Index (IS_UNQL) read FcalisanSayisi write FcalisanSayisi;
    property message_:      string   Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
    property naceKodu:      string   Index (IS_OPTN or IS_UNQL) read FnaceKodu write SetnaceKodu stored naceKodu_Specified;
    property sorguNo:       Int64    Index (IS_UNQL) read FsorguNo write FsorguNo;
    property status:        Integer  Index (IS_UNQL) read Fstatus write Fstatus;
    property tehlikeSinifi: string   Index (IS_OPTN or IS_UNQL) read FtehlikeSinifi write SettehlikeSinifi stored tehlikeSinifi_Specified;
  end;



  // ************************************************************************ //
  // XML       : egitimKodu, global, <complexType>
  // Namespace : http://ws.csgbwebservices.csgb.gov.tr/
  // ************************************************************************ //
  egitimKodu = class(TRemotable)
  private
    Faciklama: string;
    Faciklama_Specified: boolean;
    Faktif: Int64;
    Faktif_Specified: boolean;
    Fkodu: Int64;
    Fkodu_Specified: boolean;
    procedure Setaciklama(Index: Integer; const Astring: string);
    function  aciklama_Specified(Index: Integer): boolean;
    procedure Setaktif(Index: Integer; const AInt64: Int64);
    function  aktif_Specified(Index: Integer): boolean;
    procedure Setkodu(Index: Integer; const AInt64: Int64);
    function  kodu_Specified(Index: Integer): boolean;
  published
    property aciklama: string  Index (IS_OPTN or IS_UNQL) read Faciklama write Setaciklama stored aciklama_Specified;
    property aktif:    Int64   Index (IS_OPTN or IS_UNQL) read Faktif write Setaktif stored aktif_Specified;
    property kodu:     Int64   Index (IS_OPTN or IS_UNQL) read Fkodu write Setkodu stored kodu_Specified;
  end;

  ArrayOfEgitimBildirimSorgulaCevap = array of egitimBildirimSorgulaCevap;   { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : egitimBildirimSorgu, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  egitimBildirimSorgu = class(TRemotable)
  private
    FbaslangicTarihi: string;
    FbaslangicTarihi_Specified: boolean;
    FbitisTarihi: string;
    FbitisTarihi_Specified: boolean;
    FcalisanTckNo: Int64;
    FisgProfTckNo: Int64;
    FsorguNo: Int64;
    procedure SetbaslangicTarihi(Index: Integer; const Astring: string);
    function  baslangicTarihi_Specified(Index: Integer): boolean;
    procedure SetbitisTarihi(Index: Integer; const Astring: string);
    function  bitisTarihi_Specified(Index: Integer): boolean;
  published
    property baslangicTarihi: string  Index (IS_OPTN or IS_UNQL) read FbaslangicTarihi write SetbaslangicTarihi stored baslangicTarihi_Specified;
    property bitisTarihi:     string  Index (IS_OPTN or IS_UNQL) read FbitisTarihi write SetbitisTarihi stored bitisTarihi_Specified;
    property calisanTckNo:    Int64   Index (IS_UNQL) read FcalisanTckNo write FcalisanTckNo;
    property isgProfTckNo:    Int64   Index (IS_UNQL) read FisgProfTckNo write FisgProfTckNo;
    property sorguNo:         Int64   Index (IS_UNQL) read FsorguNo write FsorguNo;
  end;



  // ************************************************************************ //
  // XML       : profesyonelYetkilimiCevap, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  profesyonelYetkilimiCevap = class(TRemotable)
  private
    Fmessage_: string;
    Fmessage__Specified: boolean;
    FsorguNo: Int64;
    FsorguNo_Specified: boolean;
    Fstatus: Integer;
    FyetkilimiBoolean: Boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
    procedure SetsorguNo(Index: Integer; const AInt64: Int64);
    function  sorguNo_Specified(Index: Integer): boolean;
  published
    property message_:         string   Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
    property sorguNo:          Int64    Index (IS_OPTN or IS_UNQL) read FsorguNo write SetsorguNo stored sorguNo_Specified;
    property status:           Integer  Index (IS_UNQL) read Fstatus write Fstatus;
    property yetkilimiBoolean: Boolean  Index (IS_UNQL) read FyetkilimiBoolean write FyetkilimiBoolean;
  end;



  // ************************************************************************ //
  // XML       : egitimObject, global, <complexType>
  // Namespace : http://ws.csgbwebservices.csgb.gov.tr/
  // ************************************************************************ //
  egitimObject = class(TRemotable)
  private
    FegitimKoduId: Int64;
    FegitimKoduId_Specified: boolean;
    FegitimSuresi: Double;
    procedure SetegitimKoduId(Index: Integer; const AInt64: Int64);
    function  egitimKoduId_Specified(Index: Integer): boolean;
  published
    property egitimKoduId: Int64   Index (IS_OPTN or IS_UNQL) read FegitimKoduId write SetegitimKoduId stored egitimKoduId_Specified;
    property egitimSuresi: Double  Index (IS_UNQL) read FegitimSuresi write FegitimSuresi;
  end;



  // ************************************************************************ //
  // XML       : egitimBildirimSorgulaCevap, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  egitimBildirimSorgulaCevap = class(TRemotable)
  private
    FcalisanTcNo: Int64;
    FcalisanTcNo_Specified: boolean;
    FegitimKoduId: Int64;
    FegitimKoduId_Specified: boolean;
    FegitimSuresi: Double;
    FegitimTarihi: string;
    FegitimTarihi_Specified: boolean;
    Fmessage_: string;
    Fmessage__Specified: boolean;
    FsorguNo: Int64;
    FsorguNo_Specified: boolean;
    Fstatus: Integer;
    procedure SetcalisanTcNo(Index: Integer; const AInt64: Int64);
    function  calisanTcNo_Specified(Index: Integer): boolean;
    procedure SetegitimKoduId(Index: Integer; const AInt64: Int64);
    function  egitimKoduId_Specified(Index: Integer): boolean;
    procedure SetegitimTarihi(Index: Integer; const Astring: string);
    function  egitimTarihi_Specified(Index: Integer): boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
    procedure SetsorguNo(Index: Integer; const AInt64: Int64);
    function  sorguNo_Specified(Index: Integer): boolean;
  published
    property calisanTcNo:  Int64    Index (IS_OPTN or IS_UNQL) read FcalisanTcNo write SetcalisanTcNo stored calisanTcNo_Specified;
    property egitimKoduId: Int64    Index (IS_OPTN or IS_UNQL) read FegitimKoduId write SetegitimKoduId stored egitimKoduId_Specified;
    property egitimSuresi: Double   Index (IS_UNQL) read FegitimSuresi write FegitimSuresi;
    property egitimTarihi: string   Index (IS_OPTN or IS_UNQL) read FegitimTarihi write SetegitimTarihi stored egitimTarihi_Specified;
    property message_:     string   Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
    property sorguNo:      Int64    Index (IS_OPTN or IS_UNQL) read FsorguNo write SetsorguNo stored sorguNo_Specified;
    property status:       Integer  Index (IS_UNQL) read Fstatus write Fstatus;
  end;



  // ************************************************************************ //
  // XML       : egitimBilgisi, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  egitimBilgisi = class(TRemotable)
  private
    FbelgeTipi: Int64;
    FbelgeTipi_Specified: boolean;
    FcalisanTckNo: Int64;
    FcalisanTckNo_Specified: boolean;
    FegiticiTckNo: Int64;
    FegiticiTckNo_Specified: boolean;
    FegitimKoduId: Int64;
    FegitimKoduId_Specified: boolean;
    FegitimSuresi: Double;
    FegitimTarihi: string;
    FegitimTarihi_Specified: boolean;
    FegitimTur: Integer;
    FegitimYer: Integer;
    FfirmaKodu: string;
    FfirmaKodu_Specified: boolean;
    FisgProfTckNo: Int64;
    FisgProfTckNo_Specified: boolean;
    FisyeriId: Int64;
    FisyeriId_Specified: boolean;
    FsgkTescilNo: string;
    FsgkTescilNo_Specified: boolean;
    FsorguNo: Int64;
    FsorguNo_Specified: boolean;
    procedure SetbelgeTipi(Index: Integer; const AInt64: Int64);
    function  belgeTipi_Specified(Index: Integer): boolean;
    procedure SetcalisanTckNo(Index: Integer; const AInt64: Int64);
    function  calisanTckNo_Specified(Index: Integer): boolean;
    procedure SetegiticiTckNo(Index: Integer; const AInt64: Int64);
    function  egiticiTckNo_Specified(Index: Integer): boolean;
    procedure SetegitimKoduId(Index: Integer; const AInt64: Int64);
    function  egitimKoduId_Specified(Index: Integer): boolean;
    procedure SetegitimTarihi(Index: Integer; const Astring: string);
    function  egitimTarihi_Specified(Index: Integer): boolean;
    procedure SetfirmaKodu(Index: Integer; const Astring: string);
    function  firmaKodu_Specified(Index: Integer): boolean;
    procedure SetisgProfTckNo(Index: Integer; const AInt64: Int64);
    function  isgProfTckNo_Specified(Index: Integer): boolean;
    procedure SetisyeriId(Index: Integer; const AInt64: Int64);
    function  isyeriId_Specified(Index: Integer): boolean;
    procedure SetsgkTescilNo(Index: Integer; const Astring: string);
    function  sgkTescilNo_Specified(Index: Integer): boolean;
    procedure SetsorguNo(Index: Integer; const AInt64: Int64);
    function  sorguNo_Specified(Index: Integer): boolean;
  published
    property belgeTipi:    Int64    Index (IS_OPTN or IS_UNQL) read FbelgeTipi write SetbelgeTipi stored belgeTipi_Specified;
    property calisanTckNo: Int64    Index (IS_OPTN or IS_UNQL) read FcalisanTckNo write SetcalisanTckNo stored calisanTckNo_Specified;
    property egiticiTckNo: Int64    Index (IS_OPTN or IS_UNQL) read FegiticiTckNo write SetegiticiTckNo stored egiticiTckNo_Specified;
    property egitimKoduId: Int64    Index (IS_OPTN or IS_UNQL) read FegitimKoduId write SetegitimKoduId stored egitimKoduId_Specified;
    property egitimSuresi: Double   Index (IS_UNQL) read FegitimSuresi write FegitimSuresi;
    property egitimTarihi: string   Index (IS_OPTN or IS_UNQL) read FegitimTarihi write SetegitimTarihi stored egitimTarihi_Specified;
    property egitimTur:    Integer  Index (IS_UNQL) read FegitimTur write FegitimTur;
    property egitimYer:    Integer  Index (IS_UNQL) read FegitimYer write FegitimYer;
    property firmaKodu:    string   Index (IS_OPTN or IS_UNQL) read FfirmaKodu write SetfirmaKodu stored firmaKodu_Specified;
    property isgProfTckNo: Int64    Index (IS_OPTN or IS_UNQL) read FisgProfTckNo write SetisgProfTckNo stored isgProfTckNo_Specified;
    property isyeriId:     Int64    Index (IS_OPTN or IS_UNQL) read FisyeriId write SetisyeriId stored isyeriId_Specified;
    property sgkTescilNo:  string   Index (IS_OPTN or IS_UNQL) read FsgkTescilNo write SetsgkTescilNo stored sgkTescilNo_Specified;
    property sorguNo:      Int64    Index (IS_OPTN or IS_UNQL) read FsorguNo write SetsorguNo stored sorguNo_Specified;
  end;



  // ************************************************************************ //
  // XML       : egitimBilgisiCevap, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  egitimBilgisiCevap = class(TRemotable)
  private
    Fmessage_: string;
    Fmessage__Specified: boolean;
    FsorguNo: Int64;
    FsorguNo_Specified: boolean;
    Fstatus: Integer;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
    procedure SetsorguNo(Index: Integer; const AInt64: Int64);
    function  sorguNo_Specified(Index: Integer): boolean;
  published
    property message_: string   Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
    property sorguNo:  Int64    Index (IS_OPTN or IS_UNQL) read FsorguNo write SetsorguNo stored sorguNo_Specified;
    property status:   Integer  Index (IS_UNQL) read Fstatus write Fstatus;
  end;



  // ************************************************************************ //
  // XML       : calisanObject, global, <complexType>
  // Namespace : http://ws.csgbwebservices.csgb.gov.tr/
  // ************************************************************************ //
  calisanObject = class(TRemotable)
  private
    FcalisanTckNo: Int64;
    FcalisanTckNo_Specified: boolean;
    procedure SetcalisanTckNo(Index: Integer; const AInt64: Int64);
    function  calisanTckNo_Specified(Index: Integer): boolean;
  published
    property calisanTckNo: Int64  Index (IS_OPTN or IS_UNQL) read FcalisanTckNo write SetcalisanTckNo stored calisanTckNo_Specified;
  end;



  // ************************************************************************ //
  // XML       : cokluEgitimBilgisi, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  cokluEgitimBilgisi = class(TRemotable)
  private
    FbelgeTipi: Int64;
    FbelgeTipi_Specified: boolean;
    Fcalisan: Array_Of_calisanObject;
    Fcalisan_Specified: boolean;
    FegiticiTckNo: Int64;
    FegiticiTckNo_Specified: boolean;
    Fegitim: Array_Of_egitimObject;
    Fegitim_Specified: boolean;
    FegitimTarihi: string;
    FegitimTarihi_Specified: boolean;
    FegitimTur: Integer;
    FegitimYer: Integer;
    FfirmaKodu: string;
    FfirmaKodu_Specified: boolean;
    FimzaliDeger: string;
    FimzaliDeger_Specified: boolean;
    FisgProfTckNo: Int64;
    FisgProfTckNo_Specified: boolean;
    FisyeriId: Int64;
    FisyeriId_Specified: boolean;
    FsgkTescilNo: string;
    FsgkTescilNo_Specified: boolean;
    FsorguNo: Int64;
    FsorguNo_Specified: boolean;
    procedure SetbelgeTipi(Index: Integer; const AInt64: Int64);
    function  belgeTipi_Specified(Index: Integer): boolean;
    procedure Setcalisan(Index: Integer; const AArray_Of_calisanObject: Array_Of_calisanObject);
    function  calisan_Specified(Index: Integer): boolean;
    procedure SetegiticiTckNo(Index: Integer; const AInt64: Int64);
    function  egiticiTckNo_Specified(Index: Integer): boolean;
    procedure Setegitim(Index: Integer; const AArray_Of_egitimObject: Array_Of_egitimObject);
    function  egitim_Specified(Index: Integer): boolean;
    procedure SetegitimTarihi(Index: Integer; const Astring: string);
    function  egitimTarihi_Specified(Index: Integer): boolean;
    procedure SetfirmaKodu(Index: Integer; const Astring: string);
    function  firmaKodu_Specified(Index: Integer): boolean;
    procedure SetimzaliDeger(Index: Integer; const Astring: string);
    function  imzaliDeger_Specified(Index: Integer): boolean;
    procedure SetisgProfTckNo(Index: Integer; const AInt64: Int64);
    function  isgProfTckNo_Specified(Index: Integer): boolean;
    procedure SetisyeriId(Index: Integer; const AInt64: Int64);
    function  isyeriId_Specified(Index: Integer): boolean;
    procedure SetsgkTescilNo(Index: Integer; const Astring: string);
    function  sgkTescilNo_Specified(Index: Integer): boolean;
    procedure SetsorguNo(Index: Integer; const AInt64: Int64);
    function  sorguNo_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property belgeTipi:    Int64                   Index (IS_OPTN or IS_UNQL) read FbelgeTipi write SetbelgeTipi stored belgeTipi_Specified;
    property calisan:      Array_Of_calisanObject  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fcalisan write Setcalisan stored calisan_Specified;
    property egiticiTckNo: Int64                   Index (IS_OPTN or IS_UNQL) read FegiticiTckNo write SetegiticiTckNo stored egiticiTckNo_Specified;
    property egitim:       Array_Of_egitimObject   Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fegitim write Setegitim stored egitim_Specified;
    property egitimTarihi: string                  Index (IS_OPTN or IS_UNQL) read FegitimTarihi write SetegitimTarihi stored egitimTarihi_Specified;
    property egitimTur:    Integer                 Index (IS_UNQL) read FegitimTur write FegitimTur;
    property egitimYer:    Integer                 Index (IS_UNQL) read FegitimYer write FegitimYer;
    property firmaKodu:    string                  Index (IS_OPTN or IS_UNQL) read FfirmaKodu write SetfirmaKodu stored firmaKodu_Specified;
    property imzaliDeger:  string                  Index (IS_OPTN or IS_UNQL) read FimzaliDeger write SetimzaliDeger stored imzaliDeger_Specified;
    property isgProfTckNo: Int64                   Index (IS_OPTN or IS_UNQL) read FisgProfTckNo write SetisgProfTckNo stored isgProfTckNo_Specified;
    property isyeriId:     Int64                   Index (IS_OPTN or IS_UNQL) read FisyeriId write SetisyeriId stored isyeriId_Specified;
    property sgkTescilNo:  string                  Index (IS_OPTN or IS_UNQL) read FsgkTescilNo write SetsgkTescilNo stored sgkTescilNo_Specified;
    property sorguNo:      Int64                   Index (IS_OPTN or IS_UNQL) read FsorguNo write SetsorguNo stored sorguNo_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : CSGBServiceSoap12
  // service   : CSGBService
  // port      : CSGBServiceSoap12
  // URL       : http://213.159.30.6/CSGBservice.asmx
  // ************************************************************************ //
  CSGBServiceSoap = interface(IInvokable)
  ['{BAF09A16-C601-BE75-CF3C-640BC3A39E57}']
    function  egitimKodlariGetir: egitimListesiBilgisi; stdcall;
    function  isyeriBilgisi(const isyeriSgk: string; const iguTc: string): isyeriCevapBilgisi; stdcall;
    function  egitimBilgisiDVOToXML(const egitimBilgisi: egitimBilgisi): string; stdcall;
    function  egitimKaydet(const egitimBilgisi: egitimBilgisi; const imzaliDeger: string): egitimBilgisiCevap; stdcall;
    function  egitimKaydetCoklu(const egitimBilgisi: cokluEgitimBilgisi; const imzaliDeger: string): cokluEgitimCevapDVO; stdcall;
    function  egitimSorgula(const egitimSorgu: egitimBildirimSorgu): ArrayOfEgitimBildirimSorgulaCevap; stdcall;
    function  profYetkilimi(const isyeriSgkNo: string; const isgProfTc: Int64): profesyonelYetkilimiCevap; stdcall;
  end;

function GetCSGBServiceSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): CSGBServiceSoap;


implementation
  uses SysUtils;

function GetCSGBServiceSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): CSGBServiceSoap;
const
  defWSDL = 'http://213.159.30.6/CSGBservice.asmx?wsdl';
  defURL  = 'http://213.159.30.6/CSGBservice.asmx';
  defSvc  = 'CSGBService';
  defPrt  = 'CSGBServiceSoap12';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as CSGBServiceSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor kayitBilgisi.Destroy;
begin
  SysUtils.FreeAndNil(Fcalisan);
  SysUtils.FreeAndNil(Fegitim);
  inherited Destroy;
end;

procedure kayitBilgisi.Setcalisan(Index: Integer; const AcalisanObject: calisanObject);
begin
  Fcalisan := AcalisanObject;
  Fcalisan_Specified := True;
end;

function kayitBilgisi.calisan_Specified(Index: Integer): boolean;
begin
  Result := Fcalisan_Specified;
end;

procedure kayitBilgisi.Setegitim(Index: Integer; const AegitimObject: egitimObject);
begin
  Fegitim := AegitimObject;
  Fegitim_Specified := True;
end;

function kayitBilgisi.egitim_Specified(Index: Integer): boolean;
begin
  Result := Fegitim_Specified;
end;

procedure kayitBilgisi.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function kayitBilgisi.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

destructor egitimListesiBilgisi.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FegitimListesi)-1 do
    SysUtils.FreeAndNil(FegitimListesi[I]);
  System.SetLength(FegitimListesi, 0);
  inherited Destroy;
end;

procedure egitimListesiBilgisi.SetegitimListesi(Index: Integer; const AArray_Of_egitimKodu: Array_Of_egitimKodu);
begin
  FegitimListesi := AArray_Of_egitimKodu;
  FegitimListesi_Specified := True;
end;

function egitimListesiBilgisi.egitimListesi_Specified(Index: Integer): boolean;
begin
  Result := FegitimListesi_Specified;
end;

procedure egitimListesiBilgisi.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function egitimListesiBilgisi.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

destructor cokluEgitimCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FbasariliKayitBilgisi)-1 do
    SysUtils.FreeAndNil(FbasariliKayitBilgisi[I]);
  System.SetLength(FbasariliKayitBilgisi, 0);
  inherited Destroy;
end;

procedure cokluEgitimCevapDVO.SetbasariliKayitBilgisi(Index: Integer; const AArray_Of_kayitBilgisi: Array_Of_kayitBilgisi);
begin
  FbasariliKayitBilgisi := AArray_Of_kayitBilgisi;
  FbasariliKayitBilgisi_Specified := True;
end;

function cokluEgitimCevapDVO.basariliKayitBilgisi_Specified(Index: Integer): boolean;
begin
  Result := FbasariliKayitBilgisi_Specified;
end;

procedure cokluEgitimCevapDVO.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function cokluEgitimCevapDVO.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure cokluEgitimCevapDVO.SetsorguNo(Index: Integer; const AInt64: Int64);
begin
  FsorguNo := AInt64;
  FsorguNo_Specified := True;
end;

function cokluEgitimCevapDVO.sorguNo_Specified(Index: Integer): boolean;
begin
  Result := FsorguNo_Specified;
end;

procedure isyeriCevapBilgisi.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function isyeriCevapBilgisi.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure isyeriCevapBilgisi.SetnaceKodu(Index: Integer; const Astring: string);
begin
  FnaceKodu := Astring;
  FnaceKodu_Specified := True;
end;

function isyeriCevapBilgisi.naceKodu_Specified(Index: Integer): boolean;
begin
  Result := FnaceKodu_Specified;
end;

procedure isyeriCevapBilgisi.SettehlikeSinifi(Index: Integer; const Astring: string);
begin
  FtehlikeSinifi := Astring;
  FtehlikeSinifi_Specified := True;
end;

function isyeriCevapBilgisi.tehlikeSinifi_Specified(Index: Integer): boolean;
begin
  Result := FtehlikeSinifi_Specified;
end;

procedure egitimKodu.Setaciklama(Index: Integer; const Astring: string);
begin
  Faciklama := Astring;
  Faciklama_Specified := True;
end;

function egitimKodu.aciklama_Specified(Index: Integer): boolean;
begin
  Result := Faciklama_Specified;
end;

procedure egitimKodu.Setaktif(Index: Integer; const AInt64: Int64);
begin
  Faktif := AInt64;
  Faktif_Specified := True;
end;

function egitimKodu.aktif_Specified(Index: Integer): boolean;
begin
  Result := Faktif_Specified;
end;

procedure egitimKodu.Setkodu(Index: Integer; const AInt64: Int64);
begin
  Fkodu := AInt64;
  Fkodu_Specified := True;
end;

function egitimKodu.kodu_Specified(Index: Integer): boolean;
begin
  Result := Fkodu_Specified;
end;

procedure egitimBildirimSorgu.SetbaslangicTarihi(Index: Integer; const Astring: string);
begin
  FbaslangicTarihi := Astring;
  FbaslangicTarihi_Specified := True;
end;

function egitimBildirimSorgu.baslangicTarihi_Specified(Index: Integer): boolean;
begin
  Result := FbaslangicTarihi_Specified;
end;

procedure egitimBildirimSorgu.SetbitisTarihi(Index: Integer; const Astring: string);
begin
  FbitisTarihi := Astring;
  FbitisTarihi_Specified := True;
end;

function egitimBildirimSorgu.bitisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FbitisTarihi_Specified;
end;

procedure profesyonelYetkilimiCevap.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function profesyonelYetkilimiCevap.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure profesyonelYetkilimiCevap.SetsorguNo(Index: Integer; const AInt64: Int64);
begin
  FsorguNo := AInt64;
  FsorguNo_Specified := True;
end;

function profesyonelYetkilimiCevap.sorguNo_Specified(Index: Integer): boolean;
begin
  Result := FsorguNo_Specified;
end;

procedure egitimObject.SetegitimKoduId(Index: Integer; const AInt64: Int64);
begin
  FegitimKoduId := AInt64;
  FegitimKoduId_Specified := True;
end;

function egitimObject.egitimKoduId_Specified(Index: Integer): boolean;
begin
  Result := FegitimKoduId_Specified;
end;

procedure egitimBildirimSorgulaCevap.SetcalisanTcNo(Index: Integer; const AInt64: Int64);
begin
  FcalisanTcNo := AInt64;
  FcalisanTcNo_Specified := True;
end;

function egitimBildirimSorgulaCevap.calisanTcNo_Specified(Index: Integer): boolean;
begin
  Result := FcalisanTcNo_Specified;
end;

procedure egitimBildirimSorgulaCevap.SetegitimKoduId(Index: Integer; const AInt64: Int64);
begin
  FegitimKoduId := AInt64;
  FegitimKoduId_Specified := True;
end;

function egitimBildirimSorgulaCevap.egitimKoduId_Specified(Index: Integer): boolean;
begin
  Result := FegitimKoduId_Specified;
end;

procedure egitimBildirimSorgulaCevap.SetegitimTarihi(Index: Integer; const Astring: string);
begin
  FegitimTarihi := Astring;
  FegitimTarihi_Specified := True;
end;

function egitimBildirimSorgulaCevap.egitimTarihi_Specified(Index: Integer): boolean;
begin
  Result := FegitimTarihi_Specified;
end;

procedure egitimBildirimSorgulaCevap.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function egitimBildirimSorgulaCevap.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure egitimBildirimSorgulaCevap.SetsorguNo(Index: Integer; const AInt64: Int64);
begin
  FsorguNo := AInt64;
  FsorguNo_Specified := True;
end;

function egitimBildirimSorgulaCevap.sorguNo_Specified(Index: Integer): boolean;
begin
  Result := FsorguNo_Specified;
end;

procedure egitimBilgisi.SetbelgeTipi(Index: Integer; const AInt64: Int64);
begin
  FbelgeTipi := AInt64;
  FbelgeTipi_Specified := True;
end;

function egitimBilgisi.belgeTipi_Specified(Index: Integer): boolean;
begin
  Result := FbelgeTipi_Specified;
end;

procedure egitimBilgisi.SetcalisanTckNo(Index: Integer; const AInt64: Int64);
begin
  FcalisanTckNo := AInt64;
  FcalisanTckNo_Specified := True;
end;

function egitimBilgisi.calisanTckNo_Specified(Index: Integer): boolean;
begin
  Result := FcalisanTckNo_Specified;
end;

procedure egitimBilgisi.SetegiticiTckNo(Index: Integer; const AInt64: Int64);
begin
  FegiticiTckNo := AInt64;
  FegiticiTckNo_Specified := True;
end;

function egitimBilgisi.egiticiTckNo_Specified(Index: Integer): boolean;
begin
  Result := FegiticiTckNo_Specified;
end;

procedure egitimBilgisi.SetegitimKoduId(Index: Integer; const AInt64: Int64);
begin
  FegitimKoduId := AInt64;
  FegitimKoduId_Specified := True;
end;

function egitimBilgisi.egitimKoduId_Specified(Index: Integer): boolean;
begin
  Result := FegitimKoduId_Specified;
end;

procedure egitimBilgisi.SetegitimTarihi(Index: Integer; const Astring: string);
begin
  FegitimTarihi := Astring;
  FegitimTarihi_Specified := True;
end;

function egitimBilgisi.egitimTarihi_Specified(Index: Integer): boolean;
begin
  Result := FegitimTarihi_Specified;
end;

procedure egitimBilgisi.SetfirmaKodu(Index: Integer; const Astring: string);
begin
  FfirmaKodu := Astring;
  FfirmaKodu_Specified := True;
end;

function egitimBilgisi.firmaKodu_Specified(Index: Integer): boolean;
begin
  Result := FfirmaKodu_Specified;
end;

procedure egitimBilgisi.SetisgProfTckNo(Index: Integer; const AInt64: Int64);
begin
  FisgProfTckNo := AInt64;
  FisgProfTckNo_Specified := True;
end;

function egitimBilgisi.isgProfTckNo_Specified(Index: Integer): boolean;
begin
  Result := FisgProfTckNo_Specified;
end;

procedure egitimBilgisi.SetisyeriId(Index: Integer; const AInt64: Int64);
begin
  FisyeriId := AInt64;
  FisyeriId_Specified := True;
end;

function egitimBilgisi.isyeriId_Specified(Index: Integer): boolean;
begin
  Result := FisyeriId_Specified;
end;

procedure egitimBilgisi.SetsgkTescilNo(Index: Integer; const Astring: string);
begin
  FsgkTescilNo := Astring;
  FsgkTescilNo_Specified := True;
end;

function egitimBilgisi.sgkTescilNo_Specified(Index: Integer): boolean;
begin
  Result := FsgkTescilNo_Specified;
end;

procedure egitimBilgisi.SetsorguNo(Index: Integer; const AInt64: Int64);
begin
  FsorguNo := AInt64;
  FsorguNo_Specified := True;
end;

function egitimBilgisi.sorguNo_Specified(Index: Integer): boolean;
begin
  Result := FsorguNo_Specified;
end;

procedure egitimBilgisiCevap.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function egitimBilgisiCevap.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure egitimBilgisiCevap.SetsorguNo(Index: Integer; const AInt64: Int64);
begin
  FsorguNo := AInt64;
  FsorguNo_Specified := True;
end;

function egitimBilgisiCevap.sorguNo_Specified(Index: Integer): boolean;
begin
  Result := FsorguNo_Specified;
end;

procedure calisanObject.SetcalisanTckNo(Index: Integer; const AInt64: Int64);
begin
  FcalisanTckNo := AInt64;
  FcalisanTckNo_Specified := True;
end;

function calisanObject.calisanTckNo_Specified(Index: Integer): boolean;
begin
  Result := FcalisanTckNo_Specified;
end;

destructor cokluEgitimBilgisi.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fcalisan)-1 do
    SysUtils.FreeAndNil(Fcalisan[I]);
  System.SetLength(Fcalisan, 0);
  for I := 0 to System.Length(Fegitim)-1 do
    SysUtils.FreeAndNil(Fegitim[I]);
  System.SetLength(Fegitim, 0);
  inherited Destroy;
end;

procedure cokluEgitimBilgisi.SetbelgeTipi(Index: Integer; const AInt64: Int64);
begin
  FbelgeTipi := AInt64;
  FbelgeTipi_Specified := True;
end;

function cokluEgitimBilgisi.belgeTipi_Specified(Index: Integer): boolean;
begin
  Result := FbelgeTipi_Specified;
end;

procedure cokluEgitimBilgisi.Setcalisan(Index: Integer; const AArray_Of_calisanObject: Array_Of_calisanObject);
begin
  Fcalisan := AArray_Of_calisanObject;
  Fcalisan_Specified := True;
end;

function cokluEgitimBilgisi.calisan_Specified(Index: Integer): boolean;
begin
  Result := Fcalisan_Specified;
end;

procedure cokluEgitimBilgisi.SetegiticiTckNo(Index: Integer; const AInt64: Int64);
begin
  FegiticiTckNo := AInt64;
  FegiticiTckNo_Specified := True;
end;

function cokluEgitimBilgisi.egiticiTckNo_Specified(Index: Integer): boolean;
begin
  Result := FegiticiTckNo_Specified;
end;

procedure cokluEgitimBilgisi.Setegitim(Index: Integer; const AArray_Of_egitimObject: Array_Of_egitimObject);
begin
  Fegitim := AArray_Of_egitimObject;
  Fegitim_Specified := True;
end;

function cokluEgitimBilgisi.egitim_Specified(Index: Integer): boolean;
begin
  Result := Fegitim_Specified;
end;

procedure cokluEgitimBilgisi.SetegitimTarihi(Index: Integer; const Astring: string);
begin
  FegitimTarihi := Astring;
  FegitimTarihi_Specified := True;
end;

function cokluEgitimBilgisi.egitimTarihi_Specified(Index: Integer): boolean;
begin
  Result := FegitimTarihi_Specified;
end;

procedure cokluEgitimBilgisi.SetfirmaKodu(Index: Integer; const Astring: string);
begin
  FfirmaKodu := Astring;
  FfirmaKodu_Specified := True;
end;

function cokluEgitimBilgisi.firmaKodu_Specified(Index: Integer): boolean;
begin
  Result := FfirmaKodu_Specified;
end;

procedure cokluEgitimBilgisi.SetimzaliDeger(Index: Integer; const Astring: string);
begin
  FimzaliDeger := Astring;
  FimzaliDeger_Specified := True;
end;

function cokluEgitimBilgisi.imzaliDeger_Specified(Index: Integer): boolean;
begin
  Result := FimzaliDeger_Specified;
end;

procedure cokluEgitimBilgisi.SetisgProfTckNo(Index: Integer; const AInt64: Int64);
begin
  FisgProfTckNo := AInt64;
  FisgProfTckNo_Specified := True;
end;

function cokluEgitimBilgisi.isgProfTckNo_Specified(Index: Integer): boolean;
begin
  Result := FisgProfTckNo_Specified;
end;

procedure cokluEgitimBilgisi.SetisyeriId(Index: Integer; const AInt64: Int64);
begin
  FisyeriId := AInt64;
  FisyeriId_Specified := True;
end;

function cokluEgitimBilgisi.isyeriId_Specified(Index: Integer): boolean;
begin
  Result := FisyeriId_Specified;
end;

procedure cokluEgitimBilgisi.SetsgkTescilNo(Index: Integer; const Astring: string);
begin
  FsgkTescilNo := Astring;
  FsgkTescilNo_Specified := True;
end;

function cokluEgitimBilgisi.sgkTescilNo_Specified(Index: Integer): boolean;
begin
  Result := FsgkTescilNo_Specified;
end;

procedure cokluEgitimBilgisi.SetsorguNo(Index: Integer; const AInt64: Int64);
begin
  FsorguNo := AInt64;
  FsorguNo_Specified := True;
end;

function cokluEgitimBilgisi.sorguNo_Specified(Index: Integer): boolean;
begin
  Result := FsorguNo_Specified;
end;

initialization
  { CSGBServiceSoap }
  InvRegistry.RegisterInterface(TypeInfo(CSGBServiceSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(CSGBServiceSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(CSGBServiceSoap), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(CSGBServiceSoap), ioSOAP12);
  { CSGBServiceSoap.egitimKodlariGetir }
  InvRegistry.RegisterMethodInfo(TypeInfo(CSGBServiceSoap), 'egitimKodlariGetir', '',
                                 '[ReturnName="egitimKodlariGetirResult"]', IS_OPTN);
  { CSGBServiceSoap.isyeriBilgisi }
  InvRegistry.RegisterMethodInfo(TypeInfo(CSGBServiceSoap), 'isyeriBilgisi', '',
                                 '[ReturnName="isyeriBilgisiResult"]', IS_OPTN);
  { CSGBServiceSoap.egitimBilgisiDVOToXML }
  InvRegistry.RegisterMethodInfo(TypeInfo(CSGBServiceSoap), 'egitimBilgisiDVOToXML', '',
                                 '[ReturnName="egitimBilgisiDVOToXMLResult"]', IS_OPTN);
  { CSGBServiceSoap.egitimKaydet }
  InvRegistry.RegisterMethodInfo(TypeInfo(CSGBServiceSoap), 'egitimKaydet', '',
                                 '[ReturnName="egitimKaydetResult"]', IS_OPTN);
  { CSGBServiceSoap.egitimKaydetCoklu }
  InvRegistry.RegisterMethodInfo(TypeInfo(CSGBServiceSoap), 'egitimKaydetCoklu', '',
                                 '[ReturnName="egitimKaydetCokluResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(CSGBServiceSoap), 'egitimKaydetCoklu', 'egitimKaydetCokluResult', '',
                                '[Namespace="http://ws.csgbwebservices.csgb.gov.tr/"]');
  { CSGBServiceSoap.egitimSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(CSGBServiceSoap), 'egitimSorgula', '',
                                 '[ReturnName="egitimSorgulaResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(CSGBServiceSoap), 'egitimSorgula', 'egitimSorgulaResult', '',
                                '[ArrayItemName="egitimBildirimSorgulaCevap"]');
  { CSGBServiceSoap.profYetkilimi }
  InvRegistry.RegisterMethodInfo(TypeInfo(CSGBServiceSoap), 'profYetkilimi', '',
                                 '[ReturnName="profYetkilimiResult"]', IS_OPTN);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_egitimObject), 'http://ws.csgbwebservices.csgb.gov.tr/', 'Array_Of_egitimObject');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_kayitBilgisi), 'http://ws.csgbwebservices.csgb.gov.tr/', 'Array_Of_kayitBilgisi');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_calisanObject), 'http://ws.csgbwebservices.csgb.gov.tr/', 'Array_Of_calisanObject');
  RemClassRegistry.RegisterXSClass(kayitBilgisi, 'http://ws.csgbwebservices.csgb.gov.tr/', 'kayitBilgisi');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(kayitBilgisi), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_egitimKodu), 'http://ws.csgbwebservices.csgb.gov.tr/', 'Array_Of_egitimKodu');
  RemClassRegistry.RegisterXSClass(egitimListesiBilgisi, 'http://tempuri.org/', 'egitimListesiBilgisi');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(egitimListesiBilgisi), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(cokluEgitimCevapDVO, 'http://ws.csgbwebservices.csgb.gov.tr/', 'cokluEgitimCevapDVO');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(cokluEgitimCevapDVO), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(isyeriCevapBilgisi, 'http://tempuri.org/', 'isyeriCevapBilgisi');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(isyeriCevapBilgisi), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(egitimKodu, 'http://ws.csgbwebservices.csgb.gov.tr/', 'egitimKodu');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfEgitimBildirimSorgulaCevap), 'http://tempuri.org/', 'ArrayOfEgitimBildirimSorgulaCevap');
  RemClassRegistry.RegisterXSClass(egitimBildirimSorgu, 'http://tempuri.org/', 'egitimBildirimSorgu');
  RemClassRegistry.RegisterXSClass(profesyonelYetkilimiCevap, 'http://tempuri.org/', 'profesyonelYetkilimiCevap');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(profesyonelYetkilimiCevap), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(egitimObject, 'http://ws.csgbwebservices.csgb.gov.tr/', 'egitimObject');
  RemClassRegistry.RegisterXSClass(egitimBildirimSorgulaCevap, 'http://tempuri.org/', 'egitimBildirimSorgulaCevap');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(egitimBildirimSorgulaCevap), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(egitimBilgisi, 'http://tempuri.org/', 'egitimBilgisi');
  RemClassRegistry.RegisterXSClass(egitimBilgisiCevap, 'http://tempuri.org/', 'egitimBilgisiCevap');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(egitimBilgisiCevap), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(calisanObject, 'http://ws.csgbwebservices.csgb.gov.tr/', 'calisanObject');
  RemClassRegistry.RegisterXSClass(cokluEgitimBilgisi, 'http://tempuri.org/', 'cokluEgitimBilgisi');

end.
