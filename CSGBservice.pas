// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://213.159.30.6/CSGBservice.asmx?wsdl
//  >Import : http://213.159.30.6/CSGBservice.asmx?wsdl>0
//  >Import : http://213.159.30.6/CSGBservice.asmx?wsdl>1
// Encoding : utf-8
// Version  : 1.0
// (29.01.2019 16:37:12 - - $Rev: 45757 $)
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
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]

  egitimListesiBilgisi = class;                 { "http://tempuri.org/"[GblCplx] }
  egitimBilgisiCevap   = class;                 { "http://tempuri.org/"[GblCplx] }
  egitimBilgisi        = class;                 { "http://tempuri.org/"[GblCplx] }
  isyeriCevapDVO       = class;                 { "http://ws.ibys.ailevecalisma.gov.tr/"[GblCplx] }
  isyeriCevapBilgisi   = class;                 { "http://tempuri.org/"[GblCplx] }
  egitimKodu           = class;                 { "http://ws.ibys.ailevecalisma.gov.tr/"[GblCplx] }
  egitimObject         = class;                 { "http://ws.ibys.ailevecalisma.gov.tr/"[GblCplx] }
  calisanObject        = class;                 { "http://ws.ibys.ailevecalisma.gov.tr/"[GblCplx] }

  Array_Of_calisanObject = array of calisanObject;   { "http://ws.ibys.ailevecalisma.gov.tr/"[GblUbnd] }
  Array_Of_egitimObject = array of egitimObject;   { "http://ws.ibys.ailevecalisma.gov.tr/"[GblUbnd] }
  Array_Of_egitimKodu = array of egitimKodu;    { "http://ws.ibys.ailevecalisma.gov.tr/"[GblUbnd] }


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
  // XML       : egitimBilgisiCevap, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  egitimBilgisiCevap = class(TRemotable)
  private
    Fmessage_: string;
    Fmessage__Specified: boolean;
    FsorguNo: string;
    FsorguNo_Specified: boolean;
    Fstatus: Integer;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
    procedure SetsorguNo(Index: Integer; const Astring: string);
    function  sorguNo_Specified(Index: Integer): boolean;
  published
    property message_: string   Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
    property sorguNo:  string   Index (IS_OPTN or IS_UNQL) read FsorguNo write SetsorguNo stored sorguNo_Specified;
    property status:   Integer  Index (IS_UNQL) read Fstatus write Fstatus;
  end;

  ArrayOfEgitimBilgisiCevap = array of egitimBilgisiCevap;   { "http://tempuri.org/"[GblCplx] }
  ArrayOfString = array of string;              { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : egitimBilgisi, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  egitimBilgisi = class(TRemotable)
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
  // XML       : isyeriCevapDVO, global, <complexType>
  // Namespace : http://ws.ibys.ailevecalisma.gov.tr/
  // ************************************************************************ //
  isyeriCevapDVO = class(TRemotable)
  private
    FadUnvan: string;
    FadUnvan_Specified: boolean;
    FcalisanSayisi: Int64;
    Fmessage_: string;
    Fmessage__Specified: boolean;
    FnaceKodu: string;
    FnaceKodu_Specified: boolean;
    Fstatus: Integer;
    FtehlikeSinifi: string;
    FtehlikeSinifi_Specified: boolean;
    procedure SetadUnvan(Index: Integer; const Astring: string);
    function  adUnvan_Specified(Index: Integer): boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
    procedure SetnaceKodu(Index: Integer; const Astring: string);
    function  naceKodu_Specified(Index: Integer): boolean;
    procedure SettehlikeSinifi(Index: Integer; const Astring: string);
    function  tehlikeSinifi_Specified(Index: Integer): boolean;
  published
    property adUnvan:       string   Index (IS_OPTN or IS_UNQL) read FadUnvan write SetadUnvan stored adUnvan_Specified;
    property calisanSayisi: Int64    Index (IS_UNQL) read FcalisanSayisi write FcalisanSayisi;
    property message_:      string   Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
    property naceKodu:      string   Index (IS_OPTN or IS_UNQL) read FnaceKodu write SetnaceKodu stored naceKodu_Specified;
    property status:        Integer  Index (IS_UNQL) read Fstatus write Fstatus;
    property tehlikeSinifi: string   Index (IS_OPTN or IS_UNQL) read FtehlikeSinifi write SettehlikeSinifi stored tehlikeSinifi_Specified;
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
  // Namespace : http://ws.ibys.ailevecalisma.gov.tr/
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



  // ************************************************************************ //
  // XML       : egitimObject, global, <complexType>
  // Namespace : http://ws.ibys.ailevecalisma.gov.tr/
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
  // XML       : calisanObject, global, <complexType>
  // Namespace : http://ws.ibys.ailevecalisma.gov.tr/
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
    function  egitimKodlariGetir(const CSGBurl: string): egitimListesiBilgisi; stdcall;
    function  isyeriBilgisi(const isyeriSgk: string; const iguTc: string): isyeriCevapBilgisi; stdcall;
    function  isyeriBilgisiSOAP(const isyeriSgk: string; const iguTc: string; const CSGBurl: string): isyeriCevapDVO; stdcall;
    function  egitimBilgisiDVOToXML(const egitimBilgisi: egitimBilgisi): string; stdcall;
    function  egitimKaydetREST(const egitimBilgisi: egitimBilgisi; const SOAPmesaj: string; const imzaliDeger: string; const imzalananXML: string): egitimBilgisiCevap; stdcall;
    function  egitimKaydetSOAP(const egitimBilgisi: egitimBilgisi; const imzaliDeger: string; const imzalananXML: string; const DbName: string; const osgbKodu: string; const egitimID: string;
                               const CSGBurl: string): egitimBilgisiCevap; stdcall;
    function  egitimKaydetMASTER(const egitimBilgisi: egitimBilgisi; const imzaliDeger: string; const imzalananXML: string; const DbName: string; const osgbKodu: string): string; stdcall;
    function  egitimSorgula(const sorguNo: ArrayOfString; const CSGBurl: string): ArrayOfEgitimBilgisiCevap; stdcall;
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

procedure egitimBilgisiCevap.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function egitimBilgisiCevap.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure egitimBilgisiCevap.SetsorguNo(Index: Integer; const Astring: string);
begin
  FsorguNo := Astring;
  FsorguNo_Specified := True;
end;

function egitimBilgisiCevap.sorguNo_Specified(Index: Integer): boolean;
begin
  Result := FsorguNo_Specified;
end;

destructor egitimBilgisi.Destroy;
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

procedure egitimBilgisi.SetbelgeTipi(Index: Integer; const AInt64: Int64);
begin
  FbelgeTipi := AInt64;
  FbelgeTipi_Specified := True;
end;

function egitimBilgisi.belgeTipi_Specified(Index: Integer): boolean;
begin
  Result := FbelgeTipi_Specified;
end;

procedure egitimBilgisi.Setcalisan(Index: Integer; const AArray_Of_calisanObject: Array_Of_calisanObject);
begin
  Fcalisan := AArray_Of_calisanObject;
  Fcalisan_Specified := True;
end;

function egitimBilgisi.calisan_Specified(Index: Integer): boolean;
begin
  Result := Fcalisan_Specified;
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

procedure egitimBilgisi.Setegitim(Index: Integer; const AArray_Of_egitimObject: Array_Of_egitimObject);
begin
  Fegitim := AArray_Of_egitimObject;
  Fegitim_Specified := True;
end;

function egitimBilgisi.egitim_Specified(Index: Integer): boolean;
begin
  Result := Fegitim_Specified;
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

procedure egitimBilgisi.SetimzaliDeger(Index: Integer; const Astring: string);
begin
  FimzaliDeger := Astring;
  FimzaliDeger_Specified := True;
end;

function egitimBilgisi.imzaliDeger_Specified(Index: Integer): boolean;
begin
  Result := FimzaliDeger_Specified;
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

procedure isyeriCevapDVO.SetadUnvan(Index: Integer; const Astring: string);
begin
  FadUnvan := Astring;
  FadUnvan_Specified := True;
end;

function isyeriCevapDVO.adUnvan_Specified(Index: Integer): boolean;
begin
  Result := FadUnvan_Specified;
end;

procedure isyeriCevapDVO.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function isyeriCevapDVO.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure isyeriCevapDVO.SetnaceKodu(Index: Integer; const Astring: string);
begin
  FnaceKodu := Astring;
  FnaceKodu_Specified := True;
end;

function isyeriCevapDVO.naceKodu_Specified(Index: Integer): boolean;
begin
  Result := FnaceKodu_Specified;
end;

procedure isyeriCevapDVO.SettehlikeSinifi(Index: Integer; const Astring: string);
begin
  FtehlikeSinifi := Astring;
  FtehlikeSinifi_Specified := True;
end;

function isyeriCevapDVO.tehlikeSinifi_Specified(Index: Integer): boolean;
begin
  Result := FtehlikeSinifi_Specified;
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

procedure egitimObject.SetegitimKoduId(Index: Integer; const AInt64: Int64);
begin
  FegitimKoduId := AInt64;
  FegitimKoduId_Specified := True;
end;

function egitimObject.egitimKoduId_Specified(Index: Integer): boolean;
begin
  Result := FegitimKoduId_Specified;
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
  { CSGBServiceSoap.isyeriBilgisiSOAP }
  InvRegistry.RegisterMethodInfo(TypeInfo(CSGBServiceSoap), 'isyeriBilgisiSOAP', '',
                                 '[ReturnName="isyeriBilgisiSOAPResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(CSGBServiceSoap), 'isyeriBilgisiSOAP', 'isyeriBilgisiSOAPResult', '',
                                '[Namespace="http://ws.ibys.ailevecalisma.gov.tr/"]');
  { CSGBServiceSoap.egitimBilgisiDVOToXML }
  InvRegistry.RegisterMethodInfo(TypeInfo(CSGBServiceSoap), 'egitimBilgisiDVOToXML', '',
                                 '[ReturnName="egitimBilgisiDVOToXMLResult"]', IS_OPTN);
  { CSGBServiceSoap.egitimKaydetREST }
  InvRegistry.RegisterMethodInfo(TypeInfo(CSGBServiceSoap), 'egitimKaydetREST', '',
                                 '[ReturnName="egitimKaydetRESTResult"]', IS_OPTN);
  { CSGBServiceSoap.egitimKaydetSOAP }
  InvRegistry.RegisterMethodInfo(TypeInfo(CSGBServiceSoap), 'egitimKaydetSOAP', '',
                                 '[ReturnName="egitimKaydetSOAPResult"]', IS_OPTN);
  { CSGBServiceSoap.egitimKaydetMASTER }
  InvRegistry.RegisterMethodInfo(TypeInfo(CSGBServiceSoap), 'egitimKaydetMASTER', '',
                                 '[ReturnName="egitimKaydetMASTERResult"]', IS_OPTN);
  { CSGBServiceSoap.egitimSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(CSGBServiceSoap), 'egitimSorgula', '',
                                 '[ReturnName="egitimSorgulaResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(CSGBServiceSoap), 'egitimSorgula', 'sorguNo', '',
                                '[ArrayItemName="string"]');
  InvRegistry.RegisterParamInfo(TypeInfo(CSGBServiceSoap), 'egitimSorgula', 'egitimSorgulaResult', '',
                                '[ArrayItemName="egitimBilgisiCevap"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_calisanObject), 'http://ws.ibys.ailevecalisma.gov.tr/', 'Array_Of_calisanObject');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_egitimObject), 'http://ws.ibys.ailevecalisma.gov.tr/', 'Array_Of_egitimObject');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_egitimKodu), 'http://ws.ibys.ailevecalisma.gov.tr/', 'Array_Of_egitimKodu');
  RemClassRegistry.RegisterXSClass(egitimListesiBilgisi, 'http://tempuri.org/', 'egitimListesiBilgisi');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(egitimListesiBilgisi), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(egitimBilgisiCevap, 'http://tempuri.org/', 'egitimBilgisiCevap');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(egitimBilgisiCevap), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfEgitimBilgisiCevap), 'http://tempuri.org/', 'ArrayOfEgitimBilgisiCevap');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfString), 'http://tempuri.org/', 'ArrayOfString');
  RemClassRegistry.RegisterXSClass(egitimBilgisi, 'http://tempuri.org/', 'egitimBilgisi');
  RemClassRegistry.RegisterXSClass(isyeriCevapDVO, 'http://ws.ibys.ailevecalisma.gov.tr/', 'isyeriCevapDVO');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(isyeriCevapDVO), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(isyeriCevapBilgisi, 'http://tempuri.org/', 'isyeriCevapBilgisi');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(isyeriCevapBilgisi), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(egitimKodu, 'http://ws.ibys.ailevecalisma.gov.tr/', 'egitimKodu');
  RemClassRegistry.RegisterXSClass(egitimObject, 'http://ws.ibys.ailevecalisma.gov.tr/', 'egitimObject');
  RemClassRegistry.RegisterXSClass(calisanObject, 'http://ws.ibys.ailevecalisma.gov.tr/', 'calisanObject');

end.
