// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://www.noktayazilim.net/noktaservice.asmx?wsdl
//  >Import : https://www.noktayazilim.net/noktaservice.asmx?wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (24.08.2016 17:29:21 - - $Rev: 25127 $)
// ************************************************************************ //

unit noktaservice;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
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

  TestTotal            = class;                 { "http://tempuri.org/"[GblCplx] }
  SonucDurum           = class;                 { "http://tempuri.org/"[GblCplx] }
  KurumBilgiGrs        = class;                 { "http://tempuri.org/"[GblCplx] }
  KurumBilgi           = class;                 { "http://tempuri.org/"[GblCplx] }
  FaturaHastaCount     = class;                 { "http://tempuri.org/"[GblCplx] }
  mesajBilgi           = class;                 { "http://tempuri.org/"[GblCplx] }
  serverTarih          = class;                 { "http://tempuri.org/"[GblCplx] }
  HastaKayitGrs        = class;                 { "http://tempuri.org/"[GblCplx] }
  Test                 = class;                 { "http://tempuri.org/"[GblCplx] }
  HastaKayitCikis      = class;                 { "http://tempuri.org/"[GblCplx] }
  TestC                = class;                 { "http://tempuri.org/"[GblCplx] }

  ArrayOfTestTotal = array of TestTotal;        { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : TestTotal, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  TestTotal = class(TRemotable)
  private
    FTEST: string;
    FTEST_Specified: boolean;
    Fay: string;
    Fay_Specified: boolean;
    Ft: Integer;
    FA: Integer;
    FB: Integer;
    FC: Integer;
    FKurum: string;
    FKurum_Specified: boolean;
    FTest_: string;
    FTest__Specified: boolean;
    procedure SetTEST(Index: Integer; const Astring: string);
    function  TEST_Specified(Index: Integer): boolean;
    procedure Setay(Index: Integer; const Astring: string);
    function  ay_Specified(Index: Integer): boolean;
    procedure SetKurum(Index: Integer; const Astring: string);
    function  Kurum_Specified(Index: Integer): boolean;
    procedure SetTest_(Index: Integer; const Astring: string);
    function  Test__Specified(Index: Integer): boolean;
  published
    property TEST:  string   Index (IS_OPTN) read FTEST write SetTEST stored TEST_Specified;
    property ay:    string   Index (IS_OPTN) read Fay write Setay stored ay_Specified;
    property t:     Integer  Index (IS_NLBL) read Ft write Ft;
    property A:     Integer  Index (IS_NLBL) read FA write FA;
    property B:     Integer  Index (IS_NLBL) read FB write FB;
    property C:     Integer  Index (IS_NLBL) read FC write FC;
    property Kurum: string   Index (IS_OPTN) read FKurum write SetKurum stored Kurum_Specified;
    property Test_: string   Index (IS_OPTN) read FTest_ write SetTest_ stored Test__Specified;
  end;



  // ************************************************************************ //
  // XML       : SonucDurum, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  SonucDurum = class(TRemotable)
  private
    FSonucMsj: string;
    FSonucMsj_Specified: boolean;
    FSonucKod: string;
    FSonucKod_Specified: boolean;
    FSonucKayitSayi: string;
    FSonucKayitSayi_Specified: boolean;
    procedure SetSonucMsj(Index: Integer; const Astring: string);
    function  SonucMsj_Specified(Index: Integer): boolean;
    procedure SetSonucKod(Index: Integer; const Astring: string);
    function  SonucKod_Specified(Index: Integer): boolean;
    procedure SetSonucKayitSayi(Index: Integer; const Astring: string);
    function  SonucKayitSayi_Specified(Index: Integer): boolean;
  published
    property SonucMsj:       string  Index (IS_OPTN) read FSonucMsj write SetSonucMsj stored SonucMsj_Specified;
    property SonucKod:       string  Index (IS_OPTN) read FSonucKod write SetSonucKod stored SonucKod_Specified;
    property SonucKayitSayi: string  Index (IS_OPTN) read FSonucKayitSayi write SetSonucKayitSayi stored SonucKayitSayi_Specified;
  end;



  // ************************************************************************ //
  // XML       : KurumBilgiGrs, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  KurumBilgiGrs = class(TRemotable)
  private
    FKurumKod: string;
    FKurumKod_Specified: boolean;
    procedure SetKurumKod(Index: Integer; const Astring: string);
    function  KurumKod_Specified(Index: Integer): boolean;
  published
    property KurumKod: string  Index (IS_OPTN) read FKurumKod write SetKurumKod stored KurumKod_Specified;
  end;



  // ************************************************************************ //
  // XML       : KurumBilgi, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  KurumBilgi = class(TRemotable)
  private
    Fusername: string;
    Fusername_Specified: boolean;
    Fpassword: string;
    Fpassword_Specified: boolean;
    FLisans: string;
    FLisans_Specified: boolean;
    FSonucKodu: string;
    FSonucKodu_Specified: boolean;
    FSonucMesaj: string;
    FSonucMesaj_Specified: boolean;
    Ffirma: string;
    Ffirma_Specified: boolean;
    Fkurumkod: string;
    Fkurumkod_Specified: boolean;
    procedure Setusername(Index: Integer; const Astring: string);
    function  username_Specified(Index: Integer): boolean;
    procedure Setpassword(Index: Integer; const Astring: string);
    function  password_Specified(Index: Integer): boolean;
    procedure SetLisans(Index: Integer; const Astring: string);
    function  Lisans_Specified(Index: Integer): boolean;
    procedure SetSonucKodu(Index: Integer; const Astring: string);
    function  SonucKodu_Specified(Index: Integer): boolean;
    procedure SetSonucMesaj(Index: Integer; const Astring: string);
    function  SonucMesaj_Specified(Index: Integer): boolean;
    procedure Setfirma(Index: Integer; const Astring: string);
    function  firma_Specified(Index: Integer): boolean;
    procedure Setkurumkod(Index: Integer; const Astring: string);
    function  kurumkod_Specified(Index: Integer): boolean;
  published
    property username:   string  Index (IS_OPTN) read Fusername write Setusername stored username_Specified;
    property password:   string  Index (IS_OPTN) read Fpassword write Setpassword stored password_Specified;
    property Lisans:     string  Index (IS_OPTN) read FLisans write SetLisans stored Lisans_Specified;
    property SonucKodu:  string  Index (IS_OPTN) read FSonucKodu write SetSonucKodu stored SonucKodu_Specified;
    property SonucMesaj: string  Index (IS_OPTN) read FSonucMesaj write SetSonucMesaj stored SonucMesaj_Specified;
    property firma:      string  Index (IS_OPTN) read Ffirma write Setfirma stored firma_Specified;
    property kurumkod:   string  Index (IS_OPTN) read Fkurumkod write Setkurumkod stored kurumkod_Specified;
  end;



  // ************************************************************************ //
  // XML       : FaturaHastaCount, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  FaturaHastaCount = class(TRemotable)
  private
    FKurumKod: string;
    FKurumKod_Specified: boolean;
    FHastaCount: string;
    FHastaCount_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaj: string;
    FsonucMesaj_Specified: boolean;
    procedure SetKurumKod(Index: Integer; const Astring: string);
    function  KurumKod_Specified(Index: Integer): boolean;
    procedure SetHastaCount(Index: Integer; const Astring: string);
    function  HastaCount_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaj(Index: Integer; const Astring: string);
    function  sonucMesaj_Specified(Index: Integer): boolean;
  published
    property KurumKod:   string  Index (IS_OPTN) read FKurumKod write SetKurumKod stored KurumKod_Specified;
    property HastaCount: string  Index (IS_OPTN) read FHastaCount write SetHastaCount stored HastaCount_Specified;
    property sonucKodu:  string  Index (IS_OPTN) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaj: string  Index (IS_OPTN) read FsonucMesaj write SetsonucMesaj stored sonucMesaj_Specified;
  end;



  // ************************************************************************ //
  // XML       : mesajBilgi, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  mesajBilgi = class(TRemotable)
  private
    Fid: string;
    Fid_Specified: boolean;
    FmesajTip: string;
    FmesajTip_Specified: boolean;
    Fmesaj: string;
    Fmesaj_Specified: boolean;
    procedure Setid(Index: Integer; const Astring: string);
    function  id_Specified(Index: Integer): boolean;
    procedure SetmesajTip(Index: Integer; const Astring: string);
    function  mesajTip_Specified(Index: Integer): boolean;
    procedure Setmesaj(Index: Integer; const Astring: string);
    function  mesaj_Specified(Index: Integer): boolean;
  published
    property id:       string  Index (IS_OPTN) read Fid write Setid stored id_Specified;
    property mesajTip: string  Index (IS_OPTN) read FmesajTip write SetmesajTip stored mesajTip_Specified;
    property mesaj:    string  Index (IS_OPTN) read Fmesaj write Setmesaj stored mesaj_Specified;
  end;



  // ************************************************************************ //
  // XML       : serverTarih, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  serverTarih = class(TRemotable)
  private
    FTarih: string;
    FTarih_Specified: boolean;
    procedure SetTarih(Index: Integer; const Astring: string);
    function  Tarih_Specified(Index: Integer): boolean;
  published
    property Tarih: string  Index (IS_OPTN) read FTarih write SetTarih stored Tarih_Specified;
  end;

  ArrayOfTest = array of Test;                  { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : HastaKayitGrs, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaKayitGrs = class(TRemotable)
  private
    FKurumKod: string;
    FKurumKod_Specified: boolean;
    FHastaNo: string;
    FHastaNo_Specified: boolean;
    FGelisNo: string;
    FGelisNo_Specified: boolean;
    FTcKimlikNo: string;
    FTcKimlikNo_Specified: boolean;
    Ftarih: string;
    Ftarih_Specified: boolean;
    Ftestler: ArrayOfTest;
    Ftestler_Specified: boolean;
    procedure SetKurumKod(Index: Integer; const Astring: string);
    function  KurumKod_Specified(Index: Integer): boolean;
    procedure SetHastaNo(Index: Integer; const Astring: string);
    function  HastaNo_Specified(Index: Integer): boolean;
    procedure SetGelisNo(Index: Integer; const Astring: string);
    function  GelisNo_Specified(Index: Integer): boolean;
    procedure SetTcKimlikNo(Index: Integer; const Astring: string);
    function  TcKimlikNo_Specified(Index: Integer): boolean;
    procedure Settarih(Index: Integer; const Astring: string);
    function  tarih_Specified(Index: Integer): boolean;
    procedure Settestler(Index: Integer; const AArrayOfTest: ArrayOfTest);
    function  testler_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property KurumKod:   string       Index (IS_OPTN) read FKurumKod write SetKurumKod stored KurumKod_Specified;
    property HastaNo:    string       Index (IS_OPTN) read FHastaNo write SetHastaNo stored HastaNo_Specified;
    property GelisNo:    string       Index (IS_OPTN) read FGelisNo write SetGelisNo stored GelisNo_Specified;
    property TcKimlikNo: string       Index (IS_OPTN) read FTcKimlikNo write SetTcKimlikNo stored TcKimlikNo_Specified;
    property tarih:      string       Index (IS_OPTN) read Ftarih write Settarih stored tarih_Specified;
    property testler:    ArrayOfTest  Index (IS_OPTN) read Ftestler write Settestler stored testler_Specified;
  end;



  // ************************************************************************ //
  // XML       : Test, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Test = class(TRemotable)
  private
    FTestKodu: string;
    FTestKodu_Specified: boolean;
    FIslemKodu: string;
    FIslemKodu_Specified: boolean;
    FTestAdi: string;
    FTestAdi_Specified: boolean;
    FTip: string;
    FTip_Specified: boolean;
    procedure SetTestKodu(Index: Integer; const Astring: string);
    function  TestKodu_Specified(Index: Integer): boolean;
    procedure SetIslemKodu(Index: Integer; const Astring: string);
    function  IslemKodu_Specified(Index: Integer): boolean;
    procedure SetTestAdi(Index: Integer; const Astring: string);
    function  TestAdi_Specified(Index: Integer): boolean;
    procedure SetTip(Index: Integer; const Astring: string);
    function  Tip_Specified(Index: Integer): boolean;
  published
    property TestKodu:  string  Index (IS_OPTN) read FTestKodu write SetTestKodu stored TestKodu_Specified;
    property IslemKodu: string  Index (IS_OPTN) read FIslemKodu write SetIslemKodu stored IslemKodu_Specified;
    property TestAdi:   string  Index (IS_OPTN) read FTestAdi write SetTestAdi stored TestAdi_Specified;
    property Tip:       string  Index (IS_OPTN) read FTip write SetTip stored Tip_Specified;
  end;

  ArrayOfTestC = array of TestC;                { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : HastaKayitCikis, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HastaKayitCikis = class(TRemotable)
  private
    FKurumKod: string;
    FKurumKod_Specified: boolean;
    FHastaNo: string;
    FHastaNo_Specified: boolean;
    FTcKimlikNo: string;
    FTcKimlikNo_Specified: boolean;
    FgelisNo: string;
    FgelisNo_Specified: boolean;
    FgelisId: string;
    FgelisId_Specified: boolean;
    Ftestler: ArrayOfTestC;
    Ftestler_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaj: string;
    FsonucMesaj_Specified: boolean;
    procedure SetKurumKod(Index: Integer; const Astring: string);
    function  KurumKod_Specified(Index: Integer): boolean;
    procedure SetHastaNo(Index: Integer; const Astring: string);
    function  HastaNo_Specified(Index: Integer): boolean;
    procedure SetTcKimlikNo(Index: Integer; const Astring: string);
    function  TcKimlikNo_Specified(Index: Integer): boolean;
    procedure SetgelisNo(Index: Integer; const Astring: string);
    function  gelisNo_Specified(Index: Integer): boolean;
    procedure SetgelisId(Index: Integer; const Astring: string);
    function  gelisId_Specified(Index: Integer): boolean;
    procedure Settestler(Index: Integer; const AArrayOfTestC: ArrayOfTestC);
    function  testler_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaj(Index: Integer; const Astring: string);
    function  sonucMesaj_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property KurumKod:   string        Index (IS_OPTN) read FKurumKod write SetKurumKod stored KurumKod_Specified;
    property HastaNo:    string        Index (IS_OPTN) read FHastaNo write SetHastaNo stored HastaNo_Specified;
    property TcKimlikNo: string        Index (IS_OPTN) read FTcKimlikNo write SetTcKimlikNo stored TcKimlikNo_Specified;
    property gelisNo:    string        Index (IS_OPTN) read FgelisNo write SetgelisNo stored gelisNo_Specified;
    property gelisId:    string        Index (IS_OPTN) read FgelisId write SetgelisId stored gelisId_Specified;
    property testler:    ArrayOfTestC  Index (IS_OPTN) read Ftestler write Settestler stored testler_Specified;
    property sonucKodu:  string        Index (IS_OPTN) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaj: string        Index (IS_OPTN) read FsonucMesaj write SetsonucMesaj stored sonucMesaj_Specified;
  end;



  // ************************************************************************ //
  // XML       : TestC, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  TestC = class(TRemotable)
  private
    FTestKodu: string;
    FTestKodu_Specified: boolean;
    FIslemKodu: string;
    FIslemKodu_Specified: boolean;
    FTestAdi: string;
    FTestAdi_Specified: boolean;
    FTip: string;
    FTip_Specified: boolean;
    FSiraNo: string;
    FSiraNo_Specified: boolean;
    FSonucMesaj: string;
    FSonucMesaj_Specified: boolean;
    procedure SetTestKodu(Index: Integer; const Astring: string);
    function  TestKodu_Specified(Index: Integer): boolean;
    procedure SetIslemKodu(Index: Integer; const Astring: string);
    function  IslemKodu_Specified(Index: Integer): boolean;
    procedure SetTestAdi(Index: Integer; const Astring: string);
    function  TestAdi_Specified(Index: Integer): boolean;
    procedure SetTip(Index: Integer; const Astring: string);
    function  Tip_Specified(Index: Integer): boolean;
    procedure SetSiraNo(Index: Integer; const Astring: string);
    function  SiraNo_Specified(Index: Integer): boolean;
    procedure SetSonucMesaj(Index: Integer; const Astring: string);
    function  SonucMesaj_Specified(Index: Integer): boolean;
  published
    property TestKodu:   string  Index (IS_OPTN) read FTestKodu write SetTestKodu stored TestKodu_Specified;
    property IslemKodu:  string  Index (IS_OPTN) read FIslemKodu write SetIslemKodu stored IslemKodu_Specified;
    property TestAdi:    string  Index (IS_OPTN) read FTestAdi write SetTestAdi stored TestAdi_Specified;
    property Tip:        string  Index (IS_OPTN) read FTip write SetTip stored Tip_Specified;
    property SiraNo:     string  Index (IS_OPTN) read FSiraNo write SetSiraNo stored SiraNo_Specified;
    property SonucMesaj: string  Index (IS_OPTN) read FSonucMesaj write SetSonucMesaj stored SonucMesaj_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : NoktaServiceSoap12
  // service   : NoktaService
  // port      : NoktaServiceSoap12
  // URL       : https://www.noktayazilim.net/noktaservice.asmx
  // ************************************************************************ //
  NoktaServiceSoap = interface(IInvokable)
  ['{E5C2888B-C977-FEB4-5E27-F9F015F03468}']
    function  TestTotalCvp(const K: ArrayOfTestTotal): SonucDurum; stdcall;
    function  LisansBitis(const K: KurumBilgiGrs): KurumBilgi; stdcall;
    function  Skrs(const K: KurumBilgiGrs): KurumBilgi; stdcall;
    function  FaturaHastaSayi(const FHC: FaturaHastaCount): KurumBilgi; stdcall;
    function  BackupLogGonder(const kurumKodu: string): string; stdcall;
    function  MesajOku(const id: string): mesajBilgi; stdcall;
    function  TarihAl(const kurumKodu: string): serverTarih; stdcall;
    function  HastaKayit(const HH: HastaKayitGrs; const HastaNo: string; const tarih: string; const gNo: string): HastaKayitCikis; stdcall;
  end;

function GetNoktaServiceSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): NoktaServiceSoap;


implementation
  uses SysUtils;

function GetNoktaServiceSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): NoktaServiceSoap;
const
  defWSDL = 'https://www.noktayazilim.net/noktaservice.asmx?wsdl';
  defURL  = 'https://www.noktayazilim.net/noktaservice.asmx';
  defSvc  = 'NoktaService';
  defPrt  = 'NoktaServiceSoap12';
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
    Result := (RIO as NoktaServiceSoap);
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


procedure TestTotal.SetTEST(Index: Integer; const Astring: string);
begin
  FTEST := Astring;
  FTEST_Specified := True;
end;

function TestTotal.TEST_Specified(Index: Integer): boolean;
begin
  Result := FTEST_Specified;
end;

procedure TestTotal.Setay(Index: Integer; const Astring: string);
begin
  Fay := Astring;
  Fay_Specified := True;
end;

function TestTotal.ay_Specified(Index: Integer): boolean;
begin
  Result := Fay_Specified;
end;

procedure TestTotal.SetKurum(Index: Integer; const Astring: string);
begin
  FKurum := Astring;
  FKurum_Specified := True;
end;

function TestTotal.Kurum_Specified(Index: Integer): boolean;
begin
  Result := FKurum_Specified;
end;

procedure TestTotal.SetTest_(Index: Integer; const Astring: string);
begin
  FTest_ := Astring;
  FTest__Specified := True;
end;

function TestTotal.Test__Specified(Index: Integer): boolean;
begin
  Result := FTest__Specified;
end;

procedure SonucDurum.SetSonucMsj(Index: Integer; const Astring: string);
begin
  FSonucMsj := Astring;
  FSonucMsj_Specified := True;
end;

function SonucDurum.SonucMsj_Specified(Index: Integer): boolean;
begin
  Result := FSonucMsj_Specified;
end;

procedure SonucDurum.SetSonucKod(Index: Integer; const Astring: string);
begin
  FSonucKod := Astring;
  FSonucKod_Specified := True;
end;

function SonucDurum.SonucKod_Specified(Index: Integer): boolean;
begin
  Result := FSonucKod_Specified;
end;

procedure SonucDurum.SetSonucKayitSayi(Index: Integer; const Astring: string);
begin
  FSonucKayitSayi := Astring;
  FSonucKayitSayi_Specified := True;
end;

function SonucDurum.SonucKayitSayi_Specified(Index: Integer): boolean;
begin
  Result := FSonucKayitSayi_Specified;
end;

procedure KurumBilgiGrs.SetKurumKod(Index: Integer; const Astring: string);
begin
  FKurumKod := Astring;
  FKurumKod_Specified := True;
end;

function KurumBilgiGrs.KurumKod_Specified(Index: Integer): boolean;
begin
  Result := FKurumKod_Specified;
end;

procedure KurumBilgi.Setusername(Index: Integer; const Astring: string);
begin
  Fusername := Astring;
  Fusername_Specified := True;
end;

function KurumBilgi.username_Specified(Index: Integer): boolean;
begin
  Result := Fusername_Specified;
end;

procedure KurumBilgi.Setpassword(Index: Integer; const Astring: string);
begin
  Fpassword := Astring;
  Fpassword_Specified := True;
end;

function KurumBilgi.password_Specified(Index: Integer): boolean;
begin
  Result := Fpassword_Specified;
end;

procedure KurumBilgi.SetLisans(Index: Integer; const Astring: string);
begin
  FLisans := Astring;
  FLisans_Specified := True;
end;

function KurumBilgi.Lisans_Specified(Index: Integer): boolean;
begin
  Result := FLisans_Specified;
end;

procedure KurumBilgi.SetSonucKodu(Index: Integer; const Astring: string);
begin
  FSonucKodu := Astring;
  FSonucKodu_Specified := True;
end;

function KurumBilgi.SonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FSonucKodu_Specified;
end;

procedure KurumBilgi.SetSonucMesaj(Index: Integer; const Astring: string);
begin
  FSonucMesaj := Astring;
  FSonucMesaj_Specified := True;
end;

function KurumBilgi.SonucMesaj_Specified(Index: Integer): boolean;
begin
  Result := FSonucMesaj_Specified;
end;

procedure KurumBilgi.Setfirma(Index: Integer; const Astring: string);
begin
  Ffirma := Astring;
  Ffirma_Specified := True;
end;

function KurumBilgi.firma_Specified(Index: Integer): boolean;
begin
  Result := Ffirma_Specified;
end;

procedure KurumBilgi.Setkurumkod(Index: Integer; const Astring: string);
begin
  Fkurumkod := Astring;
  Fkurumkod_Specified := True;
end;

function KurumBilgi.kurumkod_Specified(Index: Integer): boolean;
begin
  Result := Fkurumkod_Specified;
end;

procedure FaturaHastaCount.SetKurumKod(Index: Integer; const Astring: string);
begin
  FKurumKod := Astring;
  FKurumKod_Specified := True;
end;

function FaturaHastaCount.KurumKod_Specified(Index: Integer): boolean;
begin
  Result := FKurumKod_Specified;
end;

procedure FaturaHastaCount.SetHastaCount(Index: Integer; const Astring: string);
begin
  FHastaCount := Astring;
  FHastaCount_Specified := True;
end;

function FaturaHastaCount.HastaCount_Specified(Index: Integer): boolean;
begin
  Result := FHastaCount_Specified;
end;

procedure FaturaHastaCount.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function FaturaHastaCount.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure FaturaHastaCount.SetsonucMesaj(Index: Integer; const Astring: string);
begin
  FsonucMesaj := Astring;
  FsonucMesaj_Specified := True;
end;

function FaturaHastaCount.sonucMesaj_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaj_Specified;
end;

procedure mesajBilgi.Setid(Index: Integer; const Astring: string);
begin
  Fid := Astring;
  Fid_Specified := True;
end;

function mesajBilgi.id_Specified(Index: Integer): boolean;
begin
  Result := Fid_Specified;
end;

procedure mesajBilgi.SetmesajTip(Index: Integer; const Astring: string);
begin
  FmesajTip := Astring;
  FmesajTip_Specified := True;
end;

function mesajBilgi.mesajTip_Specified(Index: Integer): boolean;
begin
  Result := FmesajTip_Specified;
end;

procedure mesajBilgi.Setmesaj(Index: Integer; const Astring: string);
begin
  Fmesaj := Astring;
  Fmesaj_Specified := True;
end;

function mesajBilgi.mesaj_Specified(Index: Integer): boolean;
begin
  Result := Fmesaj_Specified;
end;

procedure serverTarih.SetTarih(Index: Integer; const Astring: string);
begin
  FTarih := Astring;
  FTarih_Specified := True;
end;

function serverTarih.Tarih_Specified(Index: Integer): boolean;
begin
  Result := FTarih_Specified;
end;

destructor HastaKayitGrs.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ftestler)-1 do
    SysUtils.FreeAndNil(Ftestler[I]);
  System.SetLength(Ftestler, 0);
  inherited Destroy;
end;

procedure HastaKayitGrs.SetKurumKod(Index: Integer; const Astring: string);
begin
  FKurumKod := Astring;
  FKurumKod_Specified := True;
end;

function HastaKayitGrs.KurumKod_Specified(Index: Integer): boolean;
begin
  Result := FKurumKod_Specified;
end;

procedure HastaKayitGrs.SetHastaNo(Index: Integer; const Astring: string);
begin
  FHastaNo := Astring;
  FHastaNo_Specified := True;
end;

function HastaKayitGrs.HastaNo_Specified(Index: Integer): boolean;
begin
  Result := FHastaNo_Specified;
end;

procedure HastaKayitGrs.SetGelisNo(Index: Integer; const Astring: string);
begin
  FGelisNo := Astring;
  FGelisNo_Specified := True;
end;

function HastaKayitGrs.GelisNo_Specified(Index: Integer): boolean;
begin
  Result := FGelisNo_Specified;
end;

procedure HastaKayitGrs.SetTcKimlikNo(Index: Integer; const Astring: string);
begin
  FTcKimlikNo := Astring;
  FTcKimlikNo_Specified := True;
end;

function HastaKayitGrs.TcKimlikNo_Specified(Index: Integer): boolean;
begin
  Result := FTcKimlikNo_Specified;
end;

procedure HastaKayitGrs.Settarih(Index: Integer; const Astring: string);
begin
  Ftarih := Astring;
  Ftarih_Specified := True;
end;

function HastaKayitGrs.tarih_Specified(Index: Integer): boolean;
begin
  Result := Ftarih_Specified;
end;

procedure HastaKayitGrs.Settestler(Index: Integer; const AArrayOfTest: ArrayOfTest);
begin
  Ftestler := AArrayOfTest;
  Ftestler_Specified := True;
end;

function HastaKayitGrs.testler_Specified(Index: Integer): boolean;
begin
  Result := Ftestler_Specified;
end;

procedure Test.SetTestKodu(Index: Integer; const Astring: string);
begin
  FTestKodu := Astring;
  FTestKodu_Specified := True;
end;

function Test.TestKodu_Specified(Index: Integer): boolean;
begin
  Result := FTestKodu_Specified;
end;

procedure Test.SetIslemKodu(Index: Integer; const Astring: string);
begin
  FIslemKodu := Astring;
  FIslemKodu_Specified := True;
end;

function Test.IslemKodu_Specified(Index: Integer): boolean;
begin
  Result := FIslemKodu_Specified;
end;

procedure Test.SetTestAdi(Index: Integer; const Astring: string);
begin
  FTestAdi := Astring;
  FTestAdi_Specified := True;
end;

function Test.TestAdi_Specified(Index: Integer): boolean;
begin
  Result := FTestAdi_Specified;
end;

procedure Test.SetTip(Index: Integer; const Astring: string);
begin
  FTip := Astring;
  FTip_Specified := True;
end;

function Test.Tip_Specified(Index: Integer): boolean;
begin
  Result := FTip_Specified;
end;

destructor HastaKayitCikis.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ftestler)-1 do
    SysUtils.FreeAndNil(Ftestler[I]);
  System.SetLength(Ftestler, 0);
  inherited Destroy;
end;

procedure HastaKayitCikis.SetKurumKod(Index: Integer; const Astring: string);
begin
  FKurumKod := Astring;
  FKurumKod_Specified := True;
end;

function HastaKayitCikis.KurumKod_Specified(Index: Integer): boolean;
begin
  Result := FKurumKod_Specified;
end;

procedure HastaKayitCikis.SetHastaNo(Index: Integer; const Astring: string);
begin
  FHastaNo := Astring;
  FHastaNo_Specified := True;
end;

function HastaKayitCikis.HastaNo_Specified(Index: Integer): boolean;
begin
  Result := FHastaNo_Specified;
end;

procedure HastaKayitCikis.SetTcKimlikNo(Index: Integer; const Astring: string);
begin
  FTcKimlikNo := Astring;
  FTcKimlikNo_Specified := True;
end;

function HastaKayitCikis.TcKimlikNo_Specified(Index: Integer): boolean;
begin
  Result := FTcKimlikNo_Specified;
end;

procedure HastaKayitCikis.SetgelisNo(Index: Integer; const Astring: string);
begin
  FgelisNo := Astring;
  FgelisNo_Specified := True;
end;

function HastaKayitCikis.gelisNo_Specified(Index: Integer): boolean;
begin
  Result := FgelisNo_Specified;
end;

procedure HastaKayitCikis.SetgelisId(Index: Integer; const Astring: string);
begin
  FgelisId := Astring;
  FgelisId_Specified := True;
end;

function HastaKayitCikis.gelisId_Specified(Index: Integer): boolean;
begin
  Result := FgelisId_Specified;
end;

procedure HastaKayitCikis.Settestler(Index: Integer; const AArrayOfTestC: ArrayOfTestC);
begin
  Ftestler := AArrayOfTestC;
  Ftestler_Specified := True;
end;

function HastaKayitCikis.testler_Specified(Index: Integer): boolean;
begin
  Result := Ftestler_Specified;
end;

procedure HastaKayitCikis.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function HastaKayitCikis.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure HastaKayitCikis.SetsonucMesaj(Index: Integer; const Astring: string);
begin
  FsonucMesaj := Astring;
  FsonucMesaj_Specified := True;
end;

function HastaKayitCikis.sonucMesaj_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaj_Specified;
end;

procedure TestC.SetTestKodu(Index: Integer; const Astring: string);
begin
  FTestKodu := Astring;
  FTestKodu_Specified := True;
end;

function TestC.TestKodu_Specified(Index: Integer): boolean;
begin
  Result := FTestKodu_Specified;
end;

procedure TestC.SetIslemKodu(Index: Integer; const Astring: string);
begin
  FIslemKodu := Astring;
  FIslemKodu_Specified := True;
end;

function TestC.IslemKodu_Specified(Index: Integer): boolean;
begin
  Result := FIslemKodu_Specified;
end;

procedure TestC.SetTestAdi(Index: Integer; const Astring: string);
begin
  FTestAdi := Astring;
  FTestAdi_Specified := True;
end;

function TestC.TestAdi_Specified(Index: Integer): boolean;
begin
  Result := FTestAdi_Specified;
end;

procedure TestC.SetTip(Index: Integer; const Astring: string);
begin
  FTip := Astring;
  FTip_Specified := True;
end;

function TestC.Tip_Specified(Index: Integer): boolean;
begin
  Result := FTip_Specified;
end;

procedure TestC.SetSiraNo(Index: Integer; const Astring: string);
begin
  FSiraNo := Astring;
  FSiraNo_Specified := True;
end;

function TestC.SiraNo_Specified(Index: Integer): boolean;
begin
  Result := FSiraNo_Specified;
end;

procedure TestC.SetSonucMesaj(Index: Integer; const Astring: string);
begin
  FSonucMesaj := Astring;
  FSonucMesaj_Specified := True;
end;

function TestC.SonucMesaj_Specified(Index: Integer): boolean;
begin
  Result := FSonucMesaj_Specified;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(NoktaServiceSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(NoktaServiceSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(NoktaServiceSoap), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(NoktaServiceSoap), ioSOAP12);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTestTotal), 'http://tempuri.org/', 'ArrayOfTestTotal');
  RemClassRegistry.RegisterXSClass(TestTotal, 'http://tempuri.org/', 'TestTotal');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(TestTotal), 'Test_', 'Test');
  RemClassRegistry.RegisterXSClass(SonucDurum, 'http://tempuri.org/', 'SonucDurum');
  RemClassRegistry.RegisterXSClass(KurumBilgiGrs, 'http://tempuri.org/', 'KurumBilgiGrs');
  RemClassRegistry.RegisterXSClass(KurumBilgi, 'http://tempuri.org/', 'KurumBilgi');
  RemClassRegistry.RegisterXSClass(FaturaHastaCount, 'http://tempuri.org/', 'FaturaHastaCount');
  RemClassRegistry.RegisterXSClass(mesajBilgi, 'http://tempuri.org/', 'mesajBilgi');
  RemClassRegistry.RegisterXSClass(serverTarih, 'http://tempuri.org/', 'serverTarih');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTest), 'http://tempuri.org/', 'ArrayOfTest');
  RemClassRegistry.RegisterXSClass(HastaKayitGrs, 'http://tempuri.org/', 'HastaKayitGrs');
  RemClassRegistry.RegisterXSClass(Test, 'http://tempuri.org/', 'Test');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTestC), 'http://tempuri.org/', 'ArrayOfTestC');
  RemClassRegistry.RegisterXSClass(HastaKayitCikis, 'http://tempuri.org/', 'HastaKayitCikis');
  RemClassRegistry.RegisterXSClass(TestC, 'http://tempuri.org/', 'TestC');

end.