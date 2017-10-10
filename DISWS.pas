// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\Dializ2007_M3\DIS.TREATMENTSERVICE.wsdl
//  >Import : C:\Dializ2007_M3\DIS.TREATMENTSERVICE.wsdl>0
// Encoding : utf-8
// Version  : 1.0
// (27.05.2016 17:25:15 - - $Rev: 25127 $)
// ************************************************************************ //

unit DISWS;

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
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  CODE                 = class;                 { "http://tempuri.org/"[GblCplx] }
  LABTEST              = class;                 { "http://tempuri.org/"[GblCplx] }
  HASTAKAYIT           = class;                 { "http://tempuri.org/"[GblCplx] }
  HASTA                = class;                 { "http://tempuri.org/"[GblCplx] }
  DIYALIZTEDAVI        = class;                 { "http://tempuri.org/"[GblCplx] }
  DIYALIZTEDAVI_KOD    = class;                 { "http://tempuri.org/"[GblCplx] }
  SEANS                = class;                 { "http://tempuri.org/"[GblCplx] }
  HASTATEST            = class;                 { "http://tempuri.org/"[GblCplx] }
  SONUC                = class;                 { "http://tempuri.org/"[GblCplx] }
  DIYALIZTEDAVISONUC   = class;                 { "http://tempuri.org/"[GblCplx] }
  HEKIMSONUC           = class;                 { "http://tempuri.org/"[GblCplx] }
  HEKIM                = class;                 { "http://tempuri.org/"[GblCplx] }

  ArrayOfCODE = array of CODE;                  { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : CODE, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  CODE = class(TRemotable)
  private
    FID: Int64;
    FCODESET: string;
    FCODESET_Specified: boolean;
    FCODESETDESCRIPTION: string;
    FCODESETDESCRIPTION_Specified: boolean;
    FADI: string;
    FADI_Specified: boolean;
    procedure SetCODESET(Index: Integer; const Astring: string);
    function  CODESET_Specified(Index: Integer): boolean;
    procedure SetCODESETDESCRIPTION(Index: Integer; const Astring: string);
    function  CODESETDESCRIPTION_Specified(Index: Integer): boolean;
    procedure SetADI(Index: Integer; const Astring: string);
    function  ADI_Specified(Index: Integer): boolean;
  published
    property ID:                 Int64   read FID write FID;
    property CODESET:            string  Index (IS_OPTN) read FCODESET write SetCODESET stored CODESET_Specified;
    property CODESETDESCRIPTION: string  Index (IS_OPTN) read FCODESETDESCRIPTION write SetCODESETDESCRIPTION stored CODESETDESCRIPTION_Specified;
    property ADI:                string  Index (IS_OPTN) read FADI write SetADI stored ADI_Specified;
  end;

  ArrayOfLABTEST = array of LABTEST;            { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : LABTEST, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  LABTEST = class(TRemotable)
  private
    FID: Int64;
    FADI: string;
    FADI_Specified: boolean;
    FOLCUBIRIMI: string;
    FOLCUBIRIMI_Specified: boolean;
    FHDZORUNLU: Boolean;
    FPDZORUNLU: Boolean;
    FTESTYAPILMAPERYODU: Integer;
    FISHEMODIYALIZ: Boolean;
    FISPERITONDIYALIZ: Boolean;
    FTIPI: string;
    FTIPI_Specified: boolean;
    procedure SetADI(Index: Integer; const Astring: string);
    function  ADI_Specified(Index: Integer): boolean;
    procedure SetOLCUBIRIMI(Index: Integer; const Astring: string);
    function  OLCUBIRIMI_Specified(Index: Integer): boolean;
    procedure SetTIPI(Index: Integer; const Astring: string);
    function  TIPI_Specified(Index: Integer): boolean;
  published
    property ID:                 Int64    read FID write FID;
    property ADI:                string   Index (IS_OPTN) read FADI write SetADI stored ADI_Specified;
    property OLCUBIRIMI:         string   Index (IS_OPTN) read FOLCUBIRIMI write SetOLCUBIRIMI stored OLCUBIRIMI_Specified;
    property HDZORUNLU:          Boolean  read FHDZORUNLU write FHDZORUNLU;
    property PDZORUNLU:          Boolean  read FPDZORUNLU write FPDZORUNLU;
    property TESTYAPILMAPERYODU: Integer  read FTESTYAPILMAPERYODU write FTESTYAPILMAPERYODU;
    property ISHEMODIYALIZ:      Boolean  read FISHEMODIYALIZ write FISHEMODIYALIZ;
    property ISPERITONDIYALIZ:   Boolean  read FISPERITONDIYALIZ write FISPERITONDIYALIZ;
    property TIPI:               string   Index (IS_OPTN) read FTIPI write SetTIPI stored TIPI_Specified;
  end;

  ArrayOfHASTAKAYIT = array of HASTAKAYIT;      { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : HASTAKAYIT, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HASTAKAYIT = class(TRemotable)
  private
    FID: Int64;
    FHASTA_ID: Int64;
    FKAYITTARIHI: TXSDateTime;
    FHASTA: HASTA;
    FHASTA_Specified: boolean;
    procedure SetHASTA(Index: Integer; const AHASTA: HASTA);
    function  HASTA_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ID:          Int64        read FID write FID;
    property HASTA_ID:    Int64        read FHASTA_ID write FHASTA_ID;
    property KAYITTARIHI: TXSDateTime  read FKAYITTARIHI write FKAYITTARIHI;
    property HASTA:       HASTA        Index (IS_OPTN) read FHASTA write SetHASTA stored HASTA_Specified;
  end;



  // ************************************************************************ //
  // XML       : HASTA, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HASTA = class(TRemotable)
  private
    FID: Int64;
    FADI: string;
    FADI_Specified: boolean;
    FSOYADI: string;
    FSOYADI_Specified: boolean;
    FTCKIMLIK: Int64;
    FMISAFIR: Boolean;
    FEVHEMODIYALIZI: Boolean;
    procedure SetADI(Index: Integer; const Astring: string);
    function  ADI_Specified(Index: Integer): boolean;
    procedure SetSOYADI(Index: Integer; const Astring: string);
    function  SOYADI_Specified(Index: Integer): boolean;
  published
    property ID:             Int64    read FID write FID;
    property ADI:            string   Index (IS_OPTN) read FADI write SetADI stored ADI_Specified;
    property SOYADI:         string   Index (IS_OPTN) read FSOYADI write SetSOYADI stored SOYADI_Specified;
    property TCKIMLIK:       Int64    read FTCKIMLIK write FTCKIMLIK;
    property MISAFIR:        Boolean  read FMISAFIR write FMISAFIR;
    property EVHEMODIYALIZI: Boolean  read FEVHEMODIYALIZI write FEVHEMODIYALIZI;
  end;

  ArrayOfDIYALIZTEDAVI_KOD = array of DIYALIZTEDAVI_KOD;   { "http://tempuri.org/"[GblCplx] }
  ArrayOfHASTATEST = array of HASTATEST;        { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : DIYALIZTEDAVI, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  DIYALIZTEDAVI = class(TRemotable)
  private
    FHASTAKAYIT: HASTAKAYIT;
    FHASTAKAYIT_Specified: boolean;
    FID: Int64;
    FDIYALIZTEDAVIYONTEMI_ID: Int64;
    FDIYALIZTEDAVIKODLIST: ArrayOfDIYALIZTEDAVI_KOD;
    FDIYALIZTEDAVIKODLIST_Specified: boolean;
    FHASTATESTLER: ArrayOfHASTATEST;
    FHASTATESTLER_Specified: boolean;
    FSEANS: SEANS;
    FSEANS_Specified: boolean;
    FTARIH: TXSDateTime;
    procedure SetHASTAKAYIT(Index: Integer; const AHASTAKAYIT: HASTAKAYIT);
    function  HASTAKAYIT_Specified(Index: Integer): boolean;
    procedure SetDIYALIZTEDAVIKODLIST(Index: Integer; const AArrayOfDIYALIZTEDAVI_KOD: ArrayOfDIYALIZTEDAVI_KOD);
    function  DIYALIZTEDAVIKODLIST_Specified(Index: Integer): boolean;
    procedure SetHASTATESTLER(Index: Integer; const AArrayOfHASTATEST: ArrayOfHASTATEST);
    function  HASTATESTLER_Specified(Index: Integer): boolean;
    procedure SetSEANS(Index: Integer; const ASEANS: SEANS);
    function  SEANS_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property HASTAKAYIT:              HASTAKAYIT                Index (IS_OPTN) read FHASTAKAYIT write SetHASTAKAYIT stored HASTAKAYIT_Specified;
    property ID:                      Int64                     read FID write FID;
    property DIYALIZTEDAVIYONTEMI_ID: Int64                     read FDIYALIZTEDAVIYONTEMI_ID write FDIYALIZTEDAVIYONTEMI_ID;
    property DIYALIZTEDAVIKODLIST:    ArrayOfDIYALIZTEDAVI_KOD  Index (IS_OPTN) read FDIYALIZTEDAVIKODLIST write SetDIYALIZTEDAVIKODLIST stored DIYALIZTEDAVIKODLIST_Specified;
    property HASTATESTLER:            ArrayOfHASTATEST          Index (IS_OPTN) read FHASTATESTLER write SetHASTATESTLER stored HASTATESTLER_Specified;
    property SEANS:                   SEANS                     Index (IS_OPTN) read FSEANS write SetSEANS stored SEANS_Specified;
    property TARIH:                   TXSDateTime               read FTARIH write FTARIH;
  end;



  // ************************************************************************ //
  // XML       : DIYALIZTEDAVI_KOD, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  DIYALIZTEDAVI_KOD = class(TRemotable)
  private
    FDIYALIZTEDAVI_ID: Int64;
    FKOD_ID: Int64;
    FNUMERICVALUE: TXSDecimal;
  public
    destructor Destroy; override;
  published
    property DIYALIZTEDAVI_ID: Int64       read FDIYALIZTEDAVI_ID write FDIYALIZTEDAVI_ID;
    property KOD_ID:           Int64       read FKOD_ID write FKOD_ID;
    property NUMERICVALUE:     TXSDecimal  read FNUMERICVALUE write FNUMERICVALUE;
  end;



  // ************************************************************************ //
  // XML       : SEANS, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  SEANS = class(TRemotable)
  private
    FSEANSSURESI: TXSDecimal;
    FTARIH: TXSDateTime;
    FDIYALIZONCESIVUCUTAGIRLIGI: TXSDecimal;
    FDIYALIZSONRASIVUCUTAGIRLIGI: TXSDecimal;
    FPERSONEL_ID: Int64;
    FDOKTORACIKLAMA: string;
    FDOKTORACIKLAMA_Specified: boolean;
    FDIYALIZATURE: TXSDecimal;
    FDIYALIZATDRENAJVOLUMU: TXSDecimal;
    FIDRARURE: TXSDecimal;
    FIDRARVOLUMU: TXSDecimal;
    FBOY: TXSDecimal;
    procedure SetDOKTORACIKLAMA(Index: Integer; const Astring: string);
    function  DOKTORACIKLAMA_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property SEANSSURESI:                 TXSDecimal   read FSEANSSURESI write FSEANSSURESI;
    property TARIH:                       TXSDateTime  read FTARIH write FTARIH;
    property DIYALIZONCESIVUCUTAGIRLIGI:  TXSDecimal   read FDIYALIZONCESIVUCUTAGIRLIGI write FDIYALIZONCESIVUCUTAGIRLIGI;
    property DIYALIZSONRASIVUCUTAGIRLIGI: TXSDecimal   read FDIYALIZSONRASIVUCUTAGIRLIGI write FDIYALIZSONRASIVUCUTAGIRLIGI;
    property PERSONEL_ID:                 Int64        Index (IS_NLBL) read FPERSONEL_ID write FPERSONEL_ID;
    property DOKTORACIKLAMA:              string       Index (IS_OPTN) read FDOKTORACIKLAMA write SetDOKTORACIKLAMA stored DOKTORACIKLAMA_Specified;
    property DIYALIZATURE:                TXSDecimal   Index (IS_NLBL) read FDIYALIZATURE write FDIYALIZATURE;
    property DIYALIZATDRENAJVOLUMU:       TXSDecimal   read FDIYALIZATDRENAJVOLUMU write FDIYALIZATDRENAJVOLUMU;
    property IDRARURE:                    TXSDecimal   Index (IS_NLBL) read FIDRARURE write FIDRARURE;
    property IDRARVOLUMU:                 TXSDecimal   Index (IS_NLBL) read FIDRARVOLUMU write FIDRARVOLUMU;
    property BOY:                         TXSDecimal   Index (IS_NLBL) read FBOY write FBOY;
  end;



  // ************************************************************************ //
  // XML       : HASTATEST, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HASTATEST = class(TRemotable)
  private
    FID: Int64;
    FTEST_ID: Int64;
    FISPOZITIF: Boolean;
    FSONUCSTR: string;
    FSONUCSTR_Specified: boolean;
    FTARIH: TXSDateTime;
    FSONUC: TXSDecimal;
    FOLCUBIRIMI: string;
    FOLCUBIRIMI_Specified: boolean;
    procedure SetSONUCSTR(Index: Integer; const Astring: string);
    function  SONUCSTR_Specified(Index: Integer): boolean;
    procedure SetOLCUBIRIMI(Index: Integer; const Astring: string);
    function  OLCUBIRIMI_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ID:         Int64        read FID write FID;
    property TEST_ID:    Int64        read FTEST_ID write FTEST_ID;
    property ISPOZITIF:  Boolean      Index (IS_NLBL) read FISPOZITIF write FISPOZITIF;
    property SONUCSTR:   string       Index (IS_OPTN) read FSONUCSTR write SetSONUCSTR stored SONUCSTR_Specified;
    property TARIH:      TXSDateTime  read FTARIH write FTARIH;
    property SONUC:      TXSDecimal   Index (IS_NLBL) read FSONUC write FSONUC;
    property OLCUBIRIMI: string       Index (IS_OPTN) read FOLCUBIRIMI write SetOLCUBIRIMI stored OLCUBIRIMI_Specified;
  end;



  // ************************************************************************ //
  // XML       : SONUC, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  SONUC = class(TRemotable)
  private
    FKOD: string;
    FKOD_Specified: boolean;
    FHATAKODU: string;
    FHATAKODU_Specified: boolean;
    FHATAVAR: Boolean;
    FHATAMESAJI: string;
    FHATAMESAJI_Specified: boolean;
    FACIKLAMA: string;
    FACIKLAMA_Specified: boolean;
    procedure SetKOD(Index: Integer; const Astring: string);
    function  KOD_Specified(Index: Integer): boolean;
    procedure SetHATAKODU(Index: Integer; const Astring: string);
    function  HATAKODU_Specified(Index: Integer): boolean;
    procedure SetHATAMESAJI(Index: Integer; const Astring: string);
    function  HATAMESAJI_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA(Index: Integer; const Astring: string);
    function  ACIKLAMA_Specified(Index: Integer): boolean;
  published
    property KOD:        string   Index (IS_OPTN) read FKOD write SetKOD stored KOD_Specified;
    property HATAKODU:   string   Index (IS_OPTN) read FHATAKODU write SetHATAKODU stored HATAKODU_Specified;
    property HATAVAR:    Boolean  read FHATAVAR write FHATAVAR;
    property HATAMESAJI: string   Index (IS_OPTN) read FHATAMESAJI write SetHATAMESAJI stored HATAMESAJI_Specified;
    property ACIKLAMA:   string   Index (IS_OPTN) read FACIKLAMA write SetACIKLAMA stored ACIKLAMA_Specified;
  end;

  ArrayOfDIYALIZTEDAVI = array of DIYALIZTEDAVI;   { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : DIYALIZTEDAVISONUC, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  DIYALIZTEDAVISONUC = class(TRemotable)
  private
    FHATAKODU: string;
    FHATAKODU_Specified: boolean;
    FHATAVAR: Boolean;
    FHATAMESAJI: string;
    FHATAMESAJI_Specified: boolean;
    FACIKLAMA: string;
    FACIKLAMA_Specified: boolean;
    FDIYALIZTEDAVILIST: ArrayOfDIYALIZTEDAVI;
    FDIYALIZTEDAVILIST_Specified: boolean;
    procedure SetHATAKODU(Index: Integer; const Astring: string);
    function  HATAKODU_Specified(Index: Integer): boolean;
    procedure SetHATAMESAJI(Index: Integer; const Astring: string);
    function  HATAMESAJI_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA(Index: Integer; const Astring: string);
    function  ACIKLAMA_Specified(Index: Integer): boolean;
    procedure SetDIYALIZTEDAVILIST(Index: Integer; const AArrayOfDIYALIZTEDAVI: ArrayOfDIYALIZTEDAVI);
    function  DIYALIZTEDAVILIST_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property HATAKODU:          string                Index (IS_OPTN) read FHATAKODU write SetHATAKODU stored HATAKODU_Specified;
    property HATAVAR:           Boolean               read FHATAVAR write FHATAVAR;
    property HATAMESAJI:        string                Index (IS_OPTN) read FHATAMESAJI write SetHATAMESAJI stored HATAMESAJI_Specified;
    property ACIKLAMA:          string                Index (IS_OPTN) read FACIKLAMA write SetACIKLAMA stored ACIKLAMA_Specified;
    property DIYALIZTEDAVILIST: ArrayOfDIYALIZTEDAVI  Index (IS_OPTN) read FDIYALIZTEDAVILIST write SetDIYALIZTEDAVILIST stored DIYALIZTEDAVILIST_Specified;
  end;

  ArrayOfHEKIM = array of HEKIM;                { "http://tempuri.org/"[GblCplx] }


  // ************************************************************************ //
  // XML       : HEKIMSONUC, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HEKIMSONUC = class(TRemotable)
  private
    FHEKIMLIST: ArrayOfHEKIM;
    FHEKIMLIST_Specified: boolean;
    FHATAKODU: string;
    FHATAKODU_Specified: boolean;
    FHATAVAR: Boolean;
    FHATAMESAJI: string;
    FHATAMESAJI_Specified: boolean;
    FACIKLAMA: string;
    FACIKLAMA_Specified: boolean;
    procedure SetHEKIMLIST(Index: Integer; const AArrayOfHEKIM: ArrayOfHEKIM);
    function  HEKIMLIST_Specified(Index: Integer): boolean;
    procedure SetHATAKODU(Index: Integer; const Astring: string);
    function  HATAKODU_Specified(Index: Integer): boolean;
    procedure SetHATAMESAJI(Index: Integer; const Astring: string);
    function  HATAMESAJI_Specified(Index: Integer): boolean;
    procedure SetACIKLAMA(Index: Integer; const Astring: string);
    function  ACIKLAMA_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property HEKIMLIST:  ArrayOfHEKIM  Index (IS_OPTN) read FHEKIMLIST write SetHEKIMLIST stored HEKIMLIST_Specified;
    property HATAKODU:   string        Index (IS_OPTN) read FHATAKODU write SetHATAKODU stored HATAKODU_Specified;
    property HATAVAR:    Boolean       read FHATAVAR write FHATAVAR;
    property HATAMESAJI: string        Index (IS_OPTN) read FHATAMESAJI write SetHATAMESAJI stored HATAMESAJI_Specified;
    property ACIKLAMA:   string        Index (IS_OPTN) read FACIKLAMA write SetACIKLAMA stored ACIKLAMA_Specified;
  end;



  // ************************************************************************ //
  // XML       : HEKIM, global, <complexType>
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  HEKIM = class(TRemotable)
  private
    FID: Int64;
    FTCKIMLIK: string;
    FTCKIMLIK_Specified: boolean;
    FADI: string;
    FADI_Specified: boolean;
    FSOYADI: string;
    FSOYADI_Specified: boolean;
    procedure SetTCKIMLIK(Index: Integer; const Astring: string);
    function  TCKIMLIK_Specified(Index: Integer): boolean;
    procedure SetADI(Index: Integer; const Astring: string);
    function  ADI_Specified(Index: Integer): boolean;
    procedure SetSOYADI(Index: Integer; const Astring: string);
    function  SOYADI_Specified(Index: Integer): boolean;
  published
    property ID:       Int64   read FID write FID;
    property TCKIMLIK: string  Index (IS_OPTN) read FTCKIMLIK write SetTCKIMLIK stored TCKIMLIK_Specified;
    property ADI:      string  Index (IS_OPTN) read FADI write SetADI stored ADI_Specified;
    property SOYADI:   string  Index (IS_OPTN) read FSOYADI write SetSOYADI stored SOYADI_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : KRIZMA_DIS_TREATMENTSERVICESoap12
  // service   : KRIZMA_DIS_TREATMENTSERVICE
  // port      : KRIZMA_DIS_TREATMENTSERVICESoap12
  // URL       : http://wsdis.saglik.gov.tr/KRIZMA.DIS.TREATMENTSERVICE.asmx
  // ************************************************************************ //
  KRIZMA_DIS_TREATMENTSERVICESoap = interface(IInvokable)
  ['{4F94F0F9-49BA-FE2A-BA72-ABB8A39F1B9A}']
    function  LOADHEMODIYALIZKOD(const KURUMKODU: string; const KURUMPAROLA: string; const WEBSERVICEKODU: string): ArrayOfCODE; stdcall;
    function  LOADHEMODIYALIZTESTSAYLIK(const KURUMKODU: string; const KURUMPAROLA: string; const WEBSERVICEKODU: string): ArrayOfLABTEST; stdcall;
    function  LOADHEMODIYALIZTESTSUCAYLIK(const KURUMKODU: string; const KURUMPAROLA: string; const WEBSERVICEKODU: string): ArrayOfLABTEST; stdcall;
    function  LOADHEMODIYALIZTESTSALTIAYLIK(const KURUMKODU: string; const KURUMPAROLA: string; const WEBSERVICEKODU: string): ArrayOfLABTEST; stdcall;
    function  LOADHEMODIYALIZTESTSBIRYILLIK(const KURUMKODU: string; const KURUMPAROLA: string; const WEBSERVICEKODU: string): ArrayOfLABTEST; stdcall;
    function  LOADPERITONDIYALIZKOD(const KURUMKODU: string; const KURUMPAROLA: string; const WEBSERVICEKODU: string): ArrayOfCODE; stdcall;
    function  LOADPERITONDIYALIZTESTSAYLIK(const KURUMKODU: string; const KURUMPAROLA: string; const WEBSERVICEKODU: string): ArrayOfLABTEST; stdcall;
    function  LOADPERITONDIYALIZTESTSUCAYLIK(const KURUMKODU: string; const KURUMPAROLA: string; const WEBSERVICEKODU: string): ArrayOfLABTEST; stdcall;
    function  LOADPERITONDIYALIZTESTSALTIAYLIK(const KURUMKODU: string; const KURUMPAROLA: string; const WEBSERVICEKODU: string): ArrayOfLABTEST; stdcall;
    function  LOADPERITONDIYALIZTESTSBIRYILLIK(const KURUMKODU: string; const KURUMPAROLA: string; const WEBSERVICEKODU: string): ArrayOfLABTEST; stdcall;
    function  LOADHASTALIST(const KURUMKODU: string; const KURUMPAROLA: string; const WEBSERVICEKODU: string): ArrayOfHASTAKAYIT; stdcall;
    function  INSERTDIYALIZTEDAVI(const KURUMKODU: string; const KURUMPAROLA: string; const WEBSERVICEKODU: string; const DIYALIZTEDAVI: DIYALIZTEDAVI): SONUC; stdcall;
    function  UPDATEDIYALIZTEDAVI(const KURUMKODU: string; const KURUMPAROLA: string; const WEBSERVICEKODU: string; const DIYALIZTEDAVI: DIYALIZTEDAVI): SONUC; stdcall;
    function  GETHASTADIYALIZTEDAVILIST(const KURUMKODU: string; const KURUMPAROLA: string; const WEBSERVICEKODU: string; const TCKIMLIK: Int64): DIYALIZTEDAVISONUC; stdcall;
    function  GETHEKIMLIST(const KURUMKODU: string; const KURUMPAROLA: string; const WEBSERVICEKODU: string): HEKIMSONUC; stdcall;
  end;

function GetKRIZMA_DIS_TREATMENTSERVICESoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): KRIZMA_DIS_TREATMENTSERVICESoap;


implementation
  uses SysUtils;

function GetKRIZMA_DIS_TREATMENTSERVICESoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): KRIZMA_DIS_TREATMENTSERVICESoap;
const
  defWSDL = 'C:\Dializ2007_M3\DIS.TREATMENTSERVICE.wsdl';
  defURL  = 'http://wsdis.saglik.gov.tr/KRIZMA.DIS.TREATMENTSERVICE.asmx';
  defSvc  = 'KRIZMA_DIS_TREATMENTSERVICE';
  defPrt  = 'KRIZMA_DIS_TREATMENTSERVICESoap12';
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
    Result := (RIO as KRIZMA_DIS_TREATMENTSERVICESoap);
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


procedure CODE.SetCODESET(Index: Integer; const Astring: string);
begin
  FCODESET := Astring;
  FCODESET_Specified := True;
end;

function CODE.CODESET_Specified(Index: Integer): boolean;
begin
  Result := FCODESET_Specified;
end;

procedure CODE.SetCODESETDESCRIPTION(Index: Integer; const Astring: string);
begin
  FCODESETDESCRIPTION := Astring;
  FCODESETDESCRIPTION_Specified := True;
end;

function CODE.CODESETDESCRIPTION_Specified(Index: Integer): boolean;
begin
  Result := FCODESETDESCRIPTION_Specified;
end;

procedure CODE.SetADI(Index: Integer; const Astring: string);
begin
  FADI := Astring;
  FADI_Specified := True;
end;

function CODE.ADI_Specified(Index: Integer): boolean;
begin
  Result := FADI_Specified;
end;

procedure LABTEST.SetADI(Index: Integer; const Astring: string);
begin
  FADI := Astring;
  FADI_Specified := True;
end;

function LABTEST.ADI_Specified(Index: Integer): boolean;
begin
  Result := FADI_Specified;
end;

procedure LABTEST.SetOLCUBIRIMI(Index: Integer; const Astring: string);
begin
  FOLCUBIRIMI := Astring;
  FOLCUBIRIMI_Specified := True;
end;

function LABTEST.OLCUBIRIMI_Specified(Index: Integer): boolean;
begin
  Result := FOLCUBIRIMI_Specified;
end;

procedure LABTEST.SetTIPI(Index: Integer; const Astring: string);
begin
  FTIPI := Astring;
  FTIPI_Specified := True;
end;

function LABTEST.TIPI_Specified(Index: Integer): boolean;
begin
  Result := FTIPI_Specified;
end;

destructor HASTAKAYIT.Destroy;
begin
  SysUtils.FreeAndNil(FKAYITTARIHI);
  SysUtils.FreeAndNil(FHASTA);
  inherited Destroy;
end;

procedure HASTAKAYIT.SetHASTA(Index: Integer; const AHASTA: HASTA);
begin
  FHASTA := AHASTA;
  FHASTA_Specified := True;
end;

function HASTAKAYIT.HASTA_Specified(Index: Integer): boolean;
begin
  Result := FHASTA_Specified;
end;

procedure HASTA.SetADI(Index: Integer; const Astring: string);
begin
  FADI := Astring;
  FADI_Specified := True;
end;

function HASTA.ADI_Specified(Index: Integer): boolean;
begin
  Result := FADI_Specified;
end;

procedure HASTA.SetSOYADI(Index: Integer; const Astring: string);
begin
  FSOYADI := Astring;
  FSOYADI_Specified := True;
end;

function HASTA.SOYADI_Specified(Index: Integer): boolean;
begin
  Result := FSOYADI_Specified;
end;

destructor DIYALIZTEDAVI.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FDIYALIZTEDAVIKODLIST)-1 do
    SysUtils.FreeAndNil(FDIYALIZTEDAVIKODLIST[I]);
  System.SetLength(FDIYALIZTEDAVIKODLIST, 0);
  for I := 0 to System.Length(FHASTATESTLER)-1 do
    SysUtils.FreeAndNil(FHASTATESTLER[I]);
  System.SetLength(FHASTATESTLER, 0);
  SysUtils.FreeAndNil(FHASTAKAYIT);
  SysUtils.FreeAndNil(FSEANS);
  SysUtils.FreeAndNil(FTARIH);
  inherited Destroy;
end;

procedure DIYALIZTEDAVI.SetHASTAKAYIT(Index: Integer; const AHASTAKAYIT: HASTAKAYIT);
begin
  FHASTAKAYIT := AHASTAKAYIT;
  FHASTAKAYIT_Specified := True;
end;

function DIYALIZTEDAVI.HASTAKAYIT_Specified(Index: Integer): boolean;
begin
  Result := FHASTAKAYIT_Specified;
end;

procedure DIYALIZTEDAVI.SetDIYALIZTEDAVIKODLIST(Index: Integer; const AArrayOfDIYALIZTEDAVI_KOD: ArrayOfDIYALIZTEDAVI_KOD);
begin
  FDIYALIZTEDAVIKODLIST := AArrayOfDIYALIZTEDAVI_KOD;
  FDIYALIZTEDAVIKODLIST_Specified := True;
end;

function DIYALIZTEDAVI.DIYALIZTEDAVIKODLIST_Specified(Index: Integer): boolean;
begin
  Result := FDIYALIZTEDAVIKODLIST_Specified;
end;

procedure DIYALIZTEDAVI.SetHASTATESTLER(Index: Integer; const AArrayOfHASTATEST: ArrayOfHASTATEST);
begin
  FHASTATESTLER := AArrayOfHASTATEST;
  FHASTATESTLER_Specified := True;
end;

function DIYALIZTEDAVI.HASTATESTLER_Specified(Index: Integer): boolean;
begin
  Result := FHASTATESTLER_Specified;
end;

procedure DIYALIZTEDAVI.SetSEANS(Index: Integer; const ASEANS: SEANS);
begin
  FSEANS := ASEANS;
  FSEANS_Specified := True;
end;

function DIYALIZTEDAVI.SEANS_Specified(Index: Integer): boolean;
begin
  Result := FSEANS_Specified;
end;

destructor DIYALIZTEDAVI_KOD.Destroy;
begin
  SysUtils.FreeAndNil(FNUMERICVALUE);
  inherited Destroy;
end;

destructor SEANS.Destroy;
begin
  SysUtils.FreeAndNil(FSEANSSURESI);
  SysUtils.FreeAndNil(FTARIH);
  SysUtils.FreeAndNil(FDIYALIZONCESIVUCUTAGIRLIGI);
  SysUtils.FreeAndNil(FDIYALIZSONRASIVUCUTAGIRLIGI);
  SysUtils.FreeAndNil(FDIYALIZATURE);
  SysUtils.FreeAndNil(FDIYALIZATDRENAJVOLUMU);
  SysUtils.FreeAndNil(FIDRARURE);
  SysUtils.FreeAndNil(FIDRARVOLUMU);
  SysUtils.FreeAndNil(FBOY);
  inherited Destroy;
end;

procedure SEANS.SetDOKTORACIKLAMA(Index: Integer; const Astring: string);
begin
  FDOKTORACIKLAMA := Astring;
  FDOKTORACIKLAMA_Specified := True;
end;

function SEANS.DOKTORACIKLAMA_Specified(Index: Integer): boolean;
begin
  Result := FDOKTORACIKLAMA_Specified;
end;

destructor HASTATEST.Destroy;
begin
  SysUtils.FreeAndNil(FTARIH);
  SysUtils.FreeAndNil(FSONUC);
  inherited Destroy;
end;

procedure HASTATEST.SetSONUCSTR(Index: Integer; const Astring: string);
begin
  FSONUCSTR := Astring;
  FSONUCSTR_Specified := True;
end;

function HASTATEST.SONUCSTR_Specified(Index: Integer): boolean;
begin
  Result := FSONUCSTR_Specified;
end;

procedure HASTATEST.SetOLCUBIRIMI(Index: Integer; const Astring: string);
begin
  FOLCUBIRIMI := Astring;
  FOLCUBIRIMI_Specified := True;
end;

function HASTATEST.OLCUBIRIMI_Specified(Index: Integer): boolean;
begin
  Result := FOLCUBIRIMI_Specified;
end;

procedure SONUC.SetKOD(Index: Integer; const Astring: string);
begin
  FKOD := Astring;
  FKOD_Specified := True;
end;

function SONUC.KOD_Specified(Index: Integer): boolean;
begin
  Result := FKOD_Specified;
end;

procedure SONUC.SetHATAKODU(Index: Integer; const Astring: string);
begin
  FHATAKODU := Astring;
  FHATAKODU_Specified := True;
end;

function SONUC.HATAKODU_Specified(Index: Integer): boolean;
begin
  Result := FHATAKODU_Specified;
end;

procedure SONUC.SetHATAMESAJI(Index: Integer; const Astring: string);
begin
  FHATAMESAJI := Astring;
  FHATAMESAJI_Specified := True;
end;

function SONUC.HATAMESAJI_Specified(Index: Integer): boolean;
begin
  Result := FHATAMESAJI_Specified;
end;

procedure SONUC.SetACIKLAMA(Index: Integer; const Astring: string);
begin
  FACIKLAMA := Astring;
  FACIKLAMA_Specified := True;
end;

function SONUC.ACIKLAMA_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA_Specified;
end;

destructor DIYALIZTEDAVISONUC.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FDIYALIZTEDAVILIST)-1 do
    SysUtils.FreeAndNil(FDIYALIZTEDAVILIST[I]);
  System.SetLength(FDIYALIZTEDAVILIST, 0);
  inherited Destroy;
end;

procedure DIYALIZTEDAVISONUC.SetHATAKODU(Index: Integer; const Astring: string);
begin
  FHATAKODU := Astring;
  FHATAKODU_Specified := True;
end;

function DIYALIZTEDAVISONUC.HATAKODU_Specified(Index: Integer): boolean;
begin
  Result := FHATAKODU_Specified;
end;

procedure DIYALIZTEDAVISONUC.SetHATAMESAJI(Index: Integer; const Astring: string);
begin
  FHATAMESAJI := Astring;
  FHATAMESAJI_Specified := True;
end;

function DIYALIZTEDAVISONUC.HATAMESAJI_Specified(Index: Integer): boolean;
begin
  Result := FHATAMESAJI_Specified;
end;

procedure DIYALIZTEDAVISONUC.SetACIKLAMA(Index: Integer; const Astring: string);
begin
  FACIKLAMA := Astring;
  FACIKLAMA_Specified := True;
end;

function DIYALIZTEDAVISONUC.ACIKLAMA_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA_Specified;
end;

procedure DIYALIZTEDAVISONUC.SetDIYALIZTEDAVILIST(Index: Integer; const AArrayOfDIYALIZTEDAVI: ArrayOfDIYALIZTEDAVI);
begin
  FDIYALIZTEDAVILIST := AArrayOfDIYALIZTEDAVI;
  FDIYALIZTEDAVILIST_Specified := True;
end;

function DIYALIZTEDAVISONUC.DIYALIZTEDAVILIST_Specified(Index: Integer): boolean;
begin
  Result := FDIYALIZTEDAVILIST_Specified;
end;

destructor HEKIMSONUC.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FHEKIMLIST)-1 do
    SysUtils.FreeAndNil(FHEKIMLIST[I]);
  System.SetLength(FHEKIMLIST, 0);
  inherited Destroy;
end;

procedure HEKIMSONUC.SetHEKIMLIST(Index: Integer; const AArrayOfHEKIM: ArrayOfHEKIM);
begin
  FHEKIMLIST := AArrayOfHEKIM;
  FHEKIMLIST_Specified := True;
end;

function HEKIMSONUC.HEKIMLIST_Specified(Index: Integer): boolean;
begin
  Result := FHEKIMLIST_Specified;
end;

procedure HEKIMSONUC.SetHATAKODU(Index: Integer; const Astring: string);
begin
  FHATAKODU := Astring;
  FHATAKODU_Specified := True;
end;

function HEKIMSONUC.HATAKODU_Specified(Index: Integer): boolean;
begin
  Result := FHATAKODU_Specified;
end;

procedure HEKIMSONUC.SetHATAMESAJI(Index: Integer; const Astring: string);
begin
  FHATAMESAJI := Astring;
  FHATAMESAJI_Specified := True;
end;

function HEKIMSONUC.HATAMESAJI_Specified(Index: Integer): boolean;
begin
  Result := FHATAMESAJI_Specified;
end;

procedure HEKIMSONUC.SetACIKLAMA(Index: Integer; const Astring: string);
begin
  FACIKLAMA := Astring;
  FACIKLAMA_Specified := True;
end;

function HEKIMSONUC.ACIKLAMA_Specified(Index: Integer): boolean;
begin
  Result := FACIKLAMA_Specified;
end;

procedure HEKIM.SetTCKIMLIK(Index: Integer; const Astring: string);
begin
  FTCKIMLIK := Astring;
  FTCKIMLIK_Specified := True;
end;

function HEKIM.TCKIMLIK_Specified(Index: Integer): boolean;
begin
  Result := FTCKIMLIK_Specified;
end;

procedure HEKIM.SetADI(Index: Integer; const Astring: string);
begin
  FADI := Astring;
  FADI_Specified := True;
end;

function HEKIM.ADI_Specified(Index: Integer): boolean;
begin
  Result := FADI_Specified;
end;

procedure HEKIM.SetSOYADI(Index: Integer; const Astring: string);
begin
  FSOYADI := Astring;
  FSOYADI_Specified := True;
end;

function HEKIM.SOYADI_Specified(Index: Integer): boolean;
begin
  Result := FSOYADI_Specified;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(KRIZMA_DIS_TREATMENTSERVICESoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(KRIZMA_DIS_TREATMENTSERVICESoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(KRIZMA_DIS_TREATMENTSERVICESoap), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(KRIZMA_DIS_TREATMENTSERVICESoap), ioSOAP12);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfCODE), 'http://tempuri.org/', 'ArrayOfCODE');
  RemClassRegistry.RegisterXSClass(CODE, 'http://tempuri.org/', 'CODE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfLABTEST), 'http://tempuri.org/', 'ArrayOfLABTEST');
  RemClassRegistry.RegisterXSClass(LABTEST, 'http://tempuri.org/', 'LABTEST');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfHASTAKAYIT), 'http://tempuri.org/', 'ArrayOfHASTAKAYIT');
  RemClassRegistry.RegisterXSClass(HASTAKAYIT, 'http://tempuri.org/', 'HASTAKAYIT');
  RemClassRegistry.RegisterXSClass(HASTA, 'http://tempuri.org/', 'HASTA');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDIYALIZTEDAVI_KOD), 'http://tempuri.org/', 'ArrayOfDIYALIZTEDAVI_KOD');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfHASTATEST), 'http://tempuri.org/', 'ArrayOfHASTATEST');
  RemClassRegistry.RegisterXSClass(DIYALIZTEDAVI, 'http://tempuri.org/', 'DIYALIZTEDAVI');
  RemClassRegistry.RegisterXSClass(DIYALIZTEDAVI_KOD, 'http://tempuri.org/', 'DIYALIZTEDAVI_KOD');
  RemClassRegistry.RegisterXSClass(SEANS, 'http://tempuri.org/', 'SEANS');
  RemClassRegistry.RegisterXSClass(HASTATEST, 'http://tempuri.org/', 'HASTATEST');
  RemClassRegistry.RegisterXSClass(SONUC, 'http://tempuri.org/', 'SONUC');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDIYALIZTEDAVI), 'http://tempuri.org/', 'ArrayOfDIYALIZTEDAVI');
  RemClassRegistry.RegisterXSClass(DIYALIZTEDAVISONUC, 'http://tempuri.org/', 'DIYALIZTEDAVISONUC');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfHEKIM), 'http://tempuri.org/', 'ArrayOfHEKIM');
  RemClassRegistry.RegisterXSClass(HEKIMSONUC, 'http://tempuri.org/', 'HEKIMSONUC');
  RemClassRegistry.RegisterXSClass(HEKIM, 'http://tempuri.org/', 'HEKIM');

end.