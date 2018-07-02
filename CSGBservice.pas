// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://213.159.30.6/CSGBservice.asmx?wsdl
//  >Import : http://213.159.30.6/CSGBservice.asmx?wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (29.06.2018 16:02:13 - - $Rev: 45757 $)
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
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  isyeriCevapBilgisi   = class;                 { "http://tempuri.org/"[GblCplx] }
  egitimBilgisiCevap   = class;                 { "http://tempuri.org/"[GblCplx] }
  egitimBildirimSorgu  = class;                 { "http://tempuri.org/"[GblCplx] }
  egitimBilgisi        = class;                 { "http://tempuri.org/"[GblCplx] }
  egitimBildirimSorgulaCevap = class;           { "http://tempuri.org/"[GblCplx] }

  ArrayOfEgitimBildirimSorgulaCevap = array of egitimBildirimSorgulaCevap;   { "http://tempuri.org/"[GblCplx] }


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
    function  isyeriBilgisi(const isyeriSgk: string; const iguTc: string): isyeriCevapBilgisi; stdcall;
    function  egitimKaydet(const egitimBilgisi: egitimBilgisi): egitimBilgisiCevap; stdcall;
    function  egitimSorgula(const egitimSorgu: egitimBildirimSorgu): ArrayOfEgitimBildirimSorgulaCevap; stdcall;
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

initialization
  { CSGBServiceSoap }
  InvRegistry.RegisterInterface(TypeInfo(CSGBServiceSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(CSGBServiceSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(CSGBServiceSoap), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(CSGBServiceSoap), ioSOAP12);
  { CSGBServiceSoap.isyeriBilgisi }
  InvRegistry.RegisterMethodInfo(TypeInfo(CSGBServiceSoap), 'isyeriBilgisi', '',
                                 '[ReturnName="isyeriBilgisiResult"]', IS_OPTN);
  { CSGBServiceSoap.egitimKaydet }
  InvRegistry.RegisterMethodInfo(TypeInfo(CSGBServiceSoap), 'egitimKaydet', '',
                                 '[ReturnName="egitimKaydetResult"]', IS_OPTN);
  { CSGBServiceSoap.egitimSorgula }
  InvRegistry.RegisterMethodInfo(TypeInfo(CSGBServiceSoap), 'egitimSorgula', '',
                                 '[ReturnName="egitimSorgulaResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(CSGBServiceSoap), 'egitimSorgula', 'egitimSorgulaResult', '',
                                '[ArrayItemName="egitimBildirimSorgulaCevap"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfEgitimBildirimSorgulaCevap), 'http://tempuri.org/', 'ArrayOfEgitimBildirimSorgulaCevap');
  RemClassRegistry.RegisterXSClass(isyeriCevapBilgisi, 'http://tempuri.org/', 'isyeriCevapBilgisi');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(isyeriCevapBilgisi), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(egitimBilgisiCevap, 'http://tempuri.org/', 'egitimBilgisiCevap');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(egitimBilgisiCevap), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(egitimBildirimSorgu, 'http://tempuri.org/', 'egitimBildirimSorgu');
  RemClassRegistry.RegisterXSClass(egitimBilgisi, 'http://tempuri.org/', 'egitimBilgisi');
  RemClassRegistry.RegisterXSClass(egitimBildirimSorgulaCevap, 'http://tempuri.org/', 'egitimBildirimSorgulaCevap');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(egitimBildirimSorgulaCevap), 'message_', '[ExtName="message"]');

end.
