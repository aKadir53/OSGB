
unit data_modul;

interface

uses
  SysUtils, Classes, ADODB, DB,  IdBaseComponent,iniFiles,
  windows,Forms,StdCtrls,TlHelp32,XSBuiltIns,WinInet,KadirType,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, InvokeRegistry, Rio,SOAPHTTPTrans,
  SOAPHTTPClient,  ImgList, Controls, XMLDoc, FileCtrl,HizmetKayitIslemleriWS,
  Dialogs, cxGraphics, dxmdaset, ExtCtrls, xmldom, Provider, Xmlxform, DBClient,XMLIntf,
  RxMemDS,strUtils,Registry, SQLMemMain, KadirLabel;


type
  TDATALAR = class(TDataModule)
    ADOConnection2: TADOConnection;
    ADO_SQL: TADOQuery;
    ADO_SQL1: TADOQuery;
    ADO_SQL2: TADOQuery;
    ADO_SQL3: TADOQuery;
    Q_LogADO: TADOQuery;
    HTTP2: TIdHTTP;
    Takip: THTTPRIO;
    OdemeBilgi: THTTPRIO;
    OdemeBilgiTest: THTTPRIO;
    yardimciIslemler: THTTPRIO;
    RxHastaTakip_: TRxMemoryData;
    RxHastaTakipleri_: TRxMemoryData;
    ADO_RAPORLAR: TADOTable;
    ADO_SQL5: TADOQuery;
    ADO_SQL7: TADOQuery;
    ADO_SQL8: TADOQuery;
    ADO_SQL9: TADOQuery;
    ADO_SQL10: TADOQuery;
    ADO_SQL11: TADOQuery;
    ADO_SQL6: TADOQuery;
    SQL_Tarih: TADOQuery;
    TempConnection: TADOConnection;
    ADO_SQL4: TADOQuery;
    ADO_FOTO: TADOQuery;
    DataSource3: TDataSource;
    ADO_PERSONEL: TADOQuery;
    global_img_list4: TImageList;
    ADO_CARIKAYITLAR: TADOQuery;
    RxTaniBilgisi_: TRxMemoryData;
    RxTaniData: TDataSource;
    RxDigerIslemData: TDataSource;
    RxYatakData: TDataSource;
    RxAmeliyatData: TDataSource;
    RxIlacData: TDataSource;
    RxMalzemeData: TDataSource;
    RxTahlilData: TDataSource;
    RxMalzemeBilgisi_: TRxMemoryData;
    RxMuayeneData: TDataSource;
    RxRadData: TDataSource;
    RxKayitliIslem_: TRxMemoryData;
    HizmetKayit: THTTPRIO;
    RxKonsultasyon_: TRxMemoryData;
    RxKonsultasyonData: TDataSource;
    ImageList1: TImageList;
    Rapor_: THTTPRIO;
    ADO_RAPORLAR1: TADOTable;
    LabV: THTTPRIO;
    RxTahlilSonucData: TDataSource;
    RxMuayeneBilgisi_: TRxMemoryData;
    RxIlacBilgisi_: TRxMemoryData;
    RxMemoryData1: TRxMemoryData;
    RxTahlilSonuc_: TRxMemoryData;
    RxAmeliyatBilgisi_: TRxMemoryData;
    RxYatakBilgisi_: TRxMemoryData;
    RxTahlilIslem_: TRxMemoryData;
    RxRadIslem_: TRxMemoryData;
    RxDigerIslem_: TRxMemoryData;
    LabT: THTTPRIO;
    LisansAl: THTTPRIO;
    Lab: THTTPRIO;
    Stok_IlacSarf: TADOQuery;
    ADO_TANILAR: TADOQuery;
    ADO_ILACSARF: TADOQuery;
    imag32png: TcxImageList;
    SaveDialog1: TSaveDialog;
    imag24png: TcxImageList;
    LabInVitro: THTTPRIO;
    LabInVitroTest: THTTPRIO;
    LabsonucAlInVitro: THTTPRIO;
    Ahenk: THTTPRIO;
    UmitHast: THTTPRIO;
    ilacList: THTTPRIO;
    OnSecim: THTTPRIO;
    ReceteKayit: THTTPRIO;
    RxYesilKart_: TRxMemoryData;
    ADO_TESHISLER: TADOQuery;
    Takipformu: THTTPRIO;
    imag48png: TcxImageList;
    FaturaKaydet: THTTPRIO;
    RxKayitliIslem: TdxMemData;
    RxKayitliIslemislemSiraNo: TStringField;
    RxKayitliIslemHizmetSunucuRefNo: TStringField;
    RxKayitliIslemTip: TStringField;
    RxTaniBilgisi: TdxMemData;
    RxTaniBilgisihizmetSunucuRefNo: TStringField;
    RxTaniBilgisiislemSiraNo: TStringField;
    RxTaniBilgisibirincilTani: TStringField;
    RxTaniBilgisitaniKodu: TStringField;
    RxTaniBilgisitaniTipi: TStringField;
    RxRadIslem: TdxMemData;
    RxRadIslemsutKodu: TStringField;
    RxRadIslemislemTarihi: TStringField;
    RxRadIslembransKodu: TStringField;
    RxRadIslemhizmetSunucuRefNo: TStringField;
    RxRadIslemislemSiraNo: TStringField;
    RxRadIslemdrTescilNo: TStringField;
    RxRadIslemadet: TStringField;
    RxRadIslemozeldurum: TStringField;
    RxRadIslembirim: TStringField;
    RxRadIslemaciklama: TStringField;
    RxRadIslemsonuc: TStringField;
    RxRadIslemaynifaklikesi: TStringField;
    RxMuayeneBilgisi: TdxMemData;
    RxMuayeneBilgisisutKodu: TStringField;
    RxMuayeneBilgisiislemTarihi: TStringField;
    RxMuayeneBilgisibransKodu: TStringField;
    RxMuayeneBilgisihizmetSunucuRefNo: TStringField;
    RxMuayeneBilgisiislemSiraNo: TStringField;
    RxMuayeneBilgisidrTescilNo: TStringField;
    RxMuayeneBilgisiozelDurum: TStringField;
    RxDigerIslem: TdxMemData;
    RxDigerIslemTakipNo: TStringField;
    RxDigerIslemsutKodu: TStringField;
    RxDigerIslemislemTarihi: TStringField;
    RxDigerIslembransKodu: TStringField;
    RxDigerIslemhizmetSunucuRefNo: TStringField;
    RxDigerIslemislemSiraNo: TStringField;
    RxDigerIslemdrTescilNo: TStringField;
    RxDigerIslemraporTakipNo: TStringField;
    RxDigerIslemadet: TIntegerField;
    RxDigerIslemsiraNo: TIntegerField;
    RxDigerIslemozeldurum: TStringField;
    RxDigerIslemaynifarklikesi: TStringField;
    RxYatakBilgisi: TdxMemData;
    RxYatakBilgisisutKodu: TStringField;
    RxYatakBilgisiislemTarihi: TStringField;
    RxYatakBilgisibransKodu: TStringField;
    RxYatakBilgisihizmetsunucuRefNo: TStringField;
    RxYatakBilgisiislemSiraNo: TStringField;
    RxYatakBilgisidrTescilNo: TStringField;
    RxYatakBilgisirefakatciGunsayisi: TStringField;
    RxYatakBilgisiyatisBaslangicTarihi: TStringField;
    RxYatakBilgisiyatisBitisTarihi: TStringField;
    RxAmeliyatBilgisi: TdxMemData;
    RxAmeliyatBilgisisutKodu: TStringField;
    RxAmeliyatBilgisiislemTarihi: TStringField;
    RxAmeliyatBilgisibransKodu: TStringField;
    RxAmeliyatBilgisihizmetSunucuRefNo: TStringField;
    RxAmeliyatBilgisiislemSiraNo: TStringField;
    RxAmeliyatBilgisidrTescilNo: TStringField;
    RxAmeliyatBilgisiaciklama: TStringField;
    RxAmeliyatBilgisiayniFarkliKesi: TStringField;
    RxAmeliyatBilgisisagSol: TStringField;
    RxAmeliyatBilgisiadet: TIntegerField;
    RxIlacBilgisi: TdxMemData;
    RxIlacBilgisiislemTarihi: TStringField;
    RxIlacBilgisihizmetSunucuRefNo: TStringField;
    RxIlacBilgisiislemSiraNo: TStringField;
    RxIlacBilgisiaciklama: TStringField;
    RxIlacBilgisiadet: TIntegerField;
    RxIlacBilgisiilacTuru: TStringField;
    RxIlacBilgisitutar: TFloatField;
    RxIlacBilgisipaketHaric: TStringField;
    RxIlacBilgisibarkod: TStringField;
    RxIlacBilgisiozelDurum: TStringField;
    RxMalzemeBilgisi: TdxMemData;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField1: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    RxMalzemeBilgisikodsuzMalzemeAdi: TStringField;
    RxMalzemeBilgisikodsuzMalzemeFiyati: TFloatField;
    RxMalzemeBilgisimalzemeKodu: TStringField;
    RxTahlilIslem: TdxMemData;
    StringField4: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField16: TStringField;
    RxTahlilIslemname: TStringField;
    RxTahlilIslembirim: TStringField;
    RxTahlilSonuc: TdxMemData;
    RxTahlilSonucTakipNo: TStringField;
    RxTahlilSonucislemSiraNo: TStringField;
    RxTahlilSonucsonuc: TStringField;
    RxTahlilSonuctip: TStringField;
    RxTahlilSonucbirim: TStringField;
    RxTahlilSonuccode: TStringField;
    RxTahlilSonucTanim: TStringField;
    RxHastaTakip: TdxMemData;
    RxHastaTakipTakipNo: TStringField;
    RxHastaTakipSevkEdenTesis: TStringField;
    RxHastaTakipsevkEdilenBrans: TStringField;
    RxHastaTakipsevkEdilisTarihi: TStringField;
    RxHastaTakipTcKimlik: TStringField;
    RxHastaTakipTakipTarihi: TStringField;
    RxHastaTakiptakipTuru: TStringField;
    RxHastaTakipDurum: TBooleanField;
    RxHastaTakiptakipDurum: TStringField;
    RxHastaTakipdosyaNo: TStringField;
    RxHastaTakipsevkBildirimi: TStringField;
    RxHastaTakipTesis: TIntegerField;
    RxYesilKart: TdxMemData;
    RxYesilKartTakipNo: TStringField;
    RxYesilKartSevkEdenTesis: TStringField;
    RxYesilKartsevkEdilenBrans: TStringField;
    RxYesilKartsevkEdilisTarihi: TStringField;
    RxKonsultasyon: TdxMemData;
    RxKonsultasyonsutKodu: TStringField;
    RxKonsultasyonislemTarihi: TStringField;
    RxKonsultasyonbransKodu: TStringField;
    RxKonsultasyonhizmetsunucuRefNo: TStringField;
    RxKonsultasyonislemSiraNo: TStringField;
    RxKonsultasyondrTescilNo: TStringField;
    RxHastaTakipleri: TdxMemData;
    RxHastaTakipleriTakipNo: TStringField;
    RxHastaTakipleriSevkEdenTesis: TStringField;
    RxHastaTakiplerisevkEdilenBrans: TStringField;
    RxHastaTakiplerisevkEdilisTarihi: TStringField;
    RxHastaTakipleritakipTuru: TStringField;
    RxHastaTakipleritakipDurumu: TStringField;
    RxHastaTakipleriCinsiyet: TStringField;
    RxHastaTakipleriTakipTarihi: TStringField;
    servis_: THTTPRIO;
    RxRadIslemTakipNo: TStringField;
    RxRadIslemname: TStringField;
    Ulkeler: TADOTable;
    HTTP1: TIdHTTP;
    ITS: THTTPRIO;
    MalAlim: THTTPRIO;
    Ventura: THTTPRIO;
    Sistem: THTTPRIO;
    Referans: THTTPRIO;
    DYOB: THTTPRIO;
    IlacRapor_: THTTPRIO;
    memData_DamarIzi: TdxMemData;
    memData_DamarIziTc: TStringField;
    memData_DamarIziHasta: TStringField;
    memData_DamarIziTarih: TStringField;
    memData_DamarIzibrans: TStringField;
    Ado_Sorgulamalar: TADOQuery;
    RxMalzemeBilgisitakipNo: TStringField;
    Bio: THTTPRIO;
    Birlab: THTTPRIO;
    Duzen: THTTPRIO;
    memData_yurtDisiYardimHakki: TdxMemData;
    memData_yurtDisiYardimHakkiid: TIntegerField;
    memData_yurtDisiYardimHakkiTarih: TStringField;
    memData_yurtDisiYardimHakkiaciklama: TStringField;
    memData_yurtDisiYardimHakkikisiNo: TStringField;
    memData_yurtDisiYardimHakkiodemeTuru: TStringField;
    memData_yurtDisiYardimHakkitedaviKapsami: TStringField;
    memData_yurtDisiYardimHakkiformulAdi: TStringField;
    DataSource1: TDataSource;
    HastaKabul: THTTPRIO;
    ClientDataSet1: TClientDataSet;
    XMLTransformProvider1: TXMLTransformProvider;
    yardimciIslem: THTTPRIO;
    TenayV2: THTTPRIO;
    Rapor_M: THTTPRIO;
    Alis: THTTPRIO;
    Winsoft: THTTPRIO;
    Ado_Guncellemeler: TADOQuery;
    Master: TADOConnection;
    RxHastaTakipbasvuruNo: TStringField;
    ReceteKullanimYollari: TADOQuery;
    ReceteKullanimYollari_Datasource: TDataSource;
    Metdata: THTTPRIO;
    MetDataC: THTTPRIO;
    ErguvanHttp: THTTPRIO;
    ESY: THTTPRIO;
    TenayBio: THTTPRIO;
    TenayMNT: THTTPRIO;
    HTTPRIO1: THTTPRIO;
    RxDigerIslemraporNo: TStringField;
    RxDigerIslemname: TStringField;
    Derman: THTTPRIO;
    Centro: THTTPRIO;
    Intermedia: THTTPRIO;
    Gemsoft: THTTPRIO;
    Ado_Doktorlar: TADOQuery;
    Doktorlar_DataSource: TDataSource;
    ado_HastaRaporlarSource: TDataSource;
    ado_HastaRaporlar: TADOQuery;
    ADO_DiyalizKodlariSource: TDataSource;
    ADO_DiyalizKodlari: TADOQuery;
    AEN: THTTPRIO;
    Lios: THTTPRIO;
    RxMemoryData2: TRxMemoryData;
    KontrolZorunlu: TADOQuery;
    KontrolZorunlu_DataSource: TDataSource;
    ADOConnection1: TADOConnection;
    LoginInOut: Tlogin;
    Ado_IGU: TADOQuery;
    IGU_DataSource: TDataSource;
    TehlikeSiniflari_DataSource: TDataSource;
    ADO_TehlikeSiniflari: TADOQuery;
    procedure pcarihareketlerAfterScroll(DataSet: TDataSet);
    procedure TempConnectionAfterConnect(Sender: TObject);
    procedure TakipHTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
      Data: Pointer);
    procedure FaturaKaydetHTTPWebNode1BeforePost(
      const HTTPReqResp: THTTPReqResp; Data: Pointer);
    procedure HizmetKayitHTTPWebNode1BeforePost(
      const HTTPReqResp: THTTPReqResp; Data: Pointer);
    procedure LabVBeforeExecute(const MethodName: String;
      var SOAPRequest: WideString);
    procedure LabVAfterExecute(const MethodName: String;
      SOAPResponse: TStream);
    procedure LabHTTPWebNode1ReceivingData(Read, Total: Integer);
    procedure LisansAlBeforeExecute(const MethodName: String;
      var SOAPRequest: WideString);
    procedure DataModuleCreate(Sender: TObject);
    procedure FaturaKaydetBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure TakipBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure UmitHastBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure LisansAlHTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
      Data: Pointer);
    procedure HizmetKayitAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure HizmetKayitBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure MalAlimBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure ITSBeforeExecute(const MethodName: string; SOAPRequest: TStream);
    procedure VenturaBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure SistemHTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
      Data: Pointer);
    procedure SistemBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure ReferansBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure DYOBBeforeExecute(const MethodName: string; SOAPRequest: TStream);
    procedure IlacRapor_BeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure TenayMNTBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure TenayMNTAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure DYOBAfterExecute(const MethodName: string; SOAPResponse: TStream);
    procedure SistemAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure BioAfterExecute(const MethodName: string; SOAPResponse: TStream);
    procedure BioBeforeExecute(const MethodName: string; SOAPRequest: TStream);
    procedure ReferansAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure VenturaAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure DuzenAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure DuzenBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure DuzenHTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
      Data: Pointer);
    procedure Rapor_AfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure yardimciIslemlerBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure yardimciIslemlerAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure IlacRapor_AfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure HastaKabulBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure HastaKabulAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure TakipAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure FaturaKaydetAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure TakipformuBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure TakipformuAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure Rapor_BeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure yardimciIslemAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure yardimciIslemBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure TenayV2BeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure TenayV2AfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure Rapor_MBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure AlisHTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
      Data: Pointer);
    procedure AlisBeforeExecute(const MethodName: string; SOAPRequest: TStream);
    procedure AlisAfterExecute(const MethodName: string; SOAPResponse: TStream);
    procedure WinsoftBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure WinsoftAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure LabBeforeExecute(const MethodName: string; SOAPRequest: TStream);
    procedure LabAfterExecute(const MethodName: string; SOAPResponse: TStream);
    procedure AhenkBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure AhenkAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure MetdataAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure MetdataBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure MetDataCAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure MetDataCBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure ErguvanHttpAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure ADOConnection2AfterConnect(Sender: TObject);
    procedure ESYAfterExecute(const MethodName: string; SOAPResponse: TStream);
    procedure ESYBeforeExecute(const MethodName: string; SOAPRequest: TStream);
    procedure servis_BeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure servis_AfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure TenayBIOAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure TenayBIOBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure HTTPRIO1BeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure DermanAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure DermanBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure CentroAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure CentroBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure IntermediaBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure IntermediaAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure GemsoftAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure GemsoftBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure AENAfterExecute(const MethodName: string; SOAPResponse: TStream);
    procedure AENBeforeExecute(const MethodName: string; SOAPRequest: TStream);
    procedure LiosBeforeExecute(const MethodName: string; SOAPRequest: TStream);
    procedure LiosAfterExecute(const MethodName: string; SOAPResponse: TStream);
    function Baglan(db : string = '' ; Server : string = ''; username : String = ''; pSQLUserName : String = ''; pSQLPassword : String = '') : Boolean;
    function MasterBaglan(MasterKod : string ; var DB, OSGBDesc : string ; Server : string = ''; pSQLUserName : String = ''; pSQLPassword : String = '') : boolean;
    procedure ADOConnection2WillExecute(Connection: TADOConnection;
      var CommandText: WideString; var CursorType: TCursorType;
      var LockType: TADOLockType; var CommandType: TCommandType;
      var ExecuteOptions: TExecuteOptions; var EventStatus: TEventStatus;
      const Command: _Command; const Recordset: _Recordset);
    procedure DataModuleDestroy(Sender: TObject);
  private

    { Private declarations }
  public
   loginLog : boolean;
   servername,username, usersifre , _username , _sifre , _donemuser , _donemsifre ,
   _tesisKodu , _labusername , _labsifre , doktor ,doktorKodu,sirketKodu,
   IGU, _dosyaNo_,_gelisNo_,kontrolKod,
   _labkurumkod , _labkurumkodText, _laburl , _labfirma ,  _SKRS , _saglikNetUser ,
   _saglikNetPass , _firmaSKRS , _usermernis , _passmernis, UserGroup : string;
   _doktorReceteUser,_doktorRecetePas,_KurumSKRS_, _userSaglikNet_ , _passSaglikNet_ , _userSaglikNet2_ , _passSaglikNet2_ , itsGLN , itsUser , itsPass: string;
   _merkezAdi , _DyobKurumKodu_,_DyobSifre_,_DyobServiceKodu_ , doktorTip , bashekimKodu,hekimKodu,ImajFTPServer : string;
   _medulaOrtam_ , WanIp,WanIpURL ,_firmaKod_ , osgbKodu : string;
   TakipDevam : boolean;
   AktifSirketAdi,AktifSirket ,AktifSube ,AktifSubeAdi,_donemSonlandir_ ,TenayMNTRequest , TenayBIORequest , DyobRequest , _database , _Tip : string;
   CentroResponse ,SMSHesapFrom,SMSHesapUser,SMSHesapSifre , AlpemixRun,AlpemixGrupAdi,AlpemixGrupParola : string;
   _kurumKod  , _donemgoster : integer;
   LisansBitis,LisansBasla,LisansTarih : string;
   LisansLimit : integer;
   Bilgi : THastaKabul;
   GelisDuzenleRecord : TGelisDuzenle;
   SeansBilgi : TDigerIslemTalep;
   ReceteSatir : TReceteSatir;
   ReceteAciklama : TAck;
   YeniRecete : TYeniRecete;
   SeansOlusturPrm : TSeansOlusturPrm;
   TeleEkg : TTeleEKG;
   yardimciIslemMethod: string;
   DigerIslemTalebi : TDigerIslemTalep;
   ProgTarih : string;
   HastaBil : THasta;
   VeriSeti : THizmetVeriSeti;
   islemSiralari : Array_Of_string;
   _Program_ : string;
   browserOk : integer;
   LisansAlURL : string;
   versiyon: string;
   KontrolUserSet : Boolean;
   ZorunluAlanVar : Boolean;
   SifreDegistir : TSifreDegistir;
   yardimciIslemURL : string;
   DiabetFormURL : string;
   hastaKabulURL : string;
   faturaKayitURL : string;
   hizmetKayitURL : string;
   receteURL :string;
   raporIlacURL :string;
   DonemSonlandir :string;
   ButtonEditSecimlist : ArrayListeSecimler;
   aSahaDenetimVeri : TSahaDenetimler;

   function QuerySelect (Q: TADOQuery; sql:string) : Boolean;overload;
  // function QuerySelect (sql:string;Q: TADOQuery = nil) : Boolean;overload;
   function QuerySelect (sql:string) : TADOQuery; overload;
   procedure QueryExec (sql : string = '');overload;
   function QueryExec (var Q: TADOQuery; const sql : string): Boolean;overload;
   function FindData (Q: TADOQuery; sql: string): integer;
   procedure Login;
 //  function WebErisimBilgi(slk,slb : string) : string;
   function KillTask(Dosyadi: string): integer;

    { Public declarations }
  end;

var
  DATALAR: TDATALAR;
  CommandLog : TstringList;

implementation

uses AnaUnit,kadir;

{$R *.dfm}

function TDatalar.MasterBaglan(MasterKod : string ; var DB, OSGBDesc : string ; Server : string = ''; pSQLUserName : String = ''; pSQLPassword : String = '') : Boolean;
var
  ado : TADOQuery;
begin
  servername := Server;
  Master.Connected := false;
  Master.ConnectionString :=
  'Provider=SQLOLEDB.1;Password='+pSQLPassword+';Persist Security Info=True;User ID='+pSQLUserName+';Initial Catalog=OSGB_MASTER;Data Source='+servername;
  Master.Connected := True;

  if Master.Connected = True then
  begin
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := Master;
      QuerySelect(ado,'select db, Tanimi from OSGB_TNM where OSGB_KOD = ' + QuotedStr(MasterKod));
      if not ado.Eof
      then Begin
        DB := ado.Fields[0].AsString;
        OSGBDesc := ado.Fields[1].AsString;
      End;
      Result := True;
    finally
      ado.Free;
    end;
  end
  else
    ShowMessageSkin('Master Sunucu Baðlantýsý Saðlanamadý','','','info');
end;


function TDatalar.Baglan(db : string = '' ; Server : string = ''; username : String = ''; pSQLUserName : String = ''; pSQLPassword : String = '') : Boolean;
var
  _db_ : string;
begin
  //Result := False;
  try
    _db_ := RegOku('OSGB_db_name');
    _db_ := Decode64(_db_);
    servername := ifThen(Server = '', Decode64(RegOku('OSGB_servername')),Server);
    _db_ := ifThen(db = '', Decode64(RegOku('OSGB_db_name')),db);

    if username = 'demo' then begin
      _db_ := 'OSGB_UZMAN';
      servername := '213.159.30.6';
      pSQLPassword := '5353';
      pSQLUserName := 'Nokta';
    end;
    if (_db_ <> '')
    Then Begin
      ADOConnection2.Connected := false;
      ADOConnection2.ConnectionString :=
        'Provider=SQLOLEDB.1;Password='+pSQLPassword+';Persist Security Info=True;User ID='+pSQLUserName+';Initial Catalog=' + _db_ +';Data Source='+servername;
      ADOConnection2.Connected := True;
      Result := True;
    End
    Else
    Begin
     Result := False;
    End;
  except on e : Exception do
   begin
      ShowMessageSkin(e.Message,'','','info');
      Result := False;
   end;
  end;
end;

function TDATALAR.KillTask(Dosyadi: string): integer;
const
   PROCESS_TERMINATE=$0001;
var
   devam: BOOL;
   fyakhandle: THandle;
   islem32: TProcessEntry32;
begin
   result := 0;

   fyakhandle := CreateToolhelp32Snapshot
                      (TH32CS_SNAPPROCESS, 0);
   islem32.dwSize := Sizeof(islem32);
   devam := Process32First(fyakhandle,
                                 islem32);

   while integer(devam) <> 0 do
   begin
     if ((UpperCase(ExtractFileName(islem32.szExeFile)) =
         UpperCase(Dosyadi))
      or (UpperCase(islem32.szExeFile) =
         UpperCase(Dosyadi))) then
      Result := Integer(TerminateProcess(OpenProcess(
                        PROCESS_TERMINATE, BOOL(0),
                        islem32.th32ProcessID), 0));
    devam := Process32Next(fyakhandle,
                                  islem32);
   end;

  CloseHandle(fyakhandle);
end;



procedure TDATALAR.Login;
var
  sql,kurum : string;
  ado : TADOQuery;
begin
  try
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;
      WanIpURL := WebErisimBilgi('WIP','00');
      _medulaOrtam_ := WebErisimBilgi('98','00');
      if _medulaOrtam_ = 'Gerçek'
      Then begin
        receteURL := WebErisimBilgi('MDL','05');
      end
      Else
      begin
        receteURL := WebErisimBilgi('MDL','15');
      end;
      _tesisKodu := WebErisimBilgi('99','00');
      _Kurumkod := strtoint(_tesisKodu);

      _username := WebErisimBilgi('99','02');
      _sifre := WebErisimBilgi('99','01');

      _donemuser := WebErisimBilgi('991','00');
      _donemsifre := WebErisimBilgi('991','01');
      _donemGoster := strtoint(ifThen(WebErisimBilgi('99','02') = 'Evet','1','0'));
      _KurumSKRS_ := WebErisimBilgi('90','02');
      //_userSaglikNet_ := WebErisimBilgi('90','00');
      //_passSaglikNet_ := WebErisimBilgi('90','01');


      sql := 'select * from DoktorlarT where Kod = ' + QuotedStr(datalar.doktorKodu);
      datalar.QuerySelect(ado,sql);
      _doktorReceteUser := ado.fieldbyname('eReceteKullanici').AsString;
      _doktorRecetePas :=  ado.fieldbyname('eReceteSifre').AsString;



      sql := 'SELECT MerkezKodu,MerkezAdi FROM merkezBilgisi';
      datalar.QuerySelect(ado,sql);
      _merkezAdi := ado.fieldbyname('merkezAdi').AsString;
      osgbKodu := ado.fieldbyname('merkezKodu').AsString;

      LisansBilgileri(LisansTarih,LisansBasla,LisansBitis,kurum,LisansLimit);

      sql := 'select SLVV from parametreler where slk = ''GA'' and SLB = ''00''';
      datalar.QuerySelect(ado,sql);
      LisansALUrl := ado.fieldbyname('SLVV').AsString;

      SMSHesapUser := WebErisimBilgi('SMS','00');
      SMSHesapSifre := WebErisimBilgi('SMS','01');
      SMSHesapFrom := WebErisimBilgi('SMS','02');


      sql := 'select SLX from parametreler where slk = ''00'' and SLB = ''UD''';
      datalar.QuerySelect(ado,sql);
      AlpemixRun := ado.fieldbyname('SLX').AsString;

      //sql := 'select SLXX from parametreler where slk = ''00'' and SLB = ''IS''';
      //datalar.QuerySelect(ado,sql);
      //ImajFTPServer := ado.fieldbyname('SLXX').AsString;

      AlpemixGrupAdi := WebErisimBilgi('UD','00');
      if AlpemixGrupAdi <> ''
      then begin
       // AlpemixGrupAdi := WebErisimBilgi('UD','00');
        AlpemixGrupParola := WebErisimBilgi('UD','01');
      end
      else
      begin
        AlpemixGrupAdi := 'DIYALIZLER';
        AlpemixGrupParola := 'Diyaliz123';
      end;
    finally
      ado.Free;
    end;
  except

  end;
end;



procedure TDATALAR.MalAlimBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   m := TStringList.Create;
   try
     m.Add(FormatXMLData(R));
     m.SaveToFile('MalAlim.XML');
   finally
     m.Free;
   end;
end;

procedure TDATALAR.MetdataAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  T : TstringList;
begin
  T := TstringList.Create;
  try
    SOAPResponse.Position := 0;
    t.LoadFromStream(SOAPResponse);
    t.SaveToFile('MetdataCvp.xml');
  finally
    t.Free;
  end;
end;


procedure TDATALAR.MetdataBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  StrList1: TStringList;
begin

  StrList1 := TStringList.Create;
  try
    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));
    StrList1.add(Request);


    //StrList1.LoadFromFile('met.xml');
    StrList1.SaveToFile('Metdata.xml');

   // SOAPRequest.Position := 0;
   // StrList1.SaveToStream(SOAPRequest);

   (*

    StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Body SOAP-ENV:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/" xmlns:NS2="urn:MeddataLabServiceIntf">',
                                                 '<SOAP-ENV:Body xmlns:NS1="urn:MeddataLabServiceIntf-IMeddataLabService" xmlns:NS2="urn:MeddataLabServiceIntf" SOAP-ENV:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/">',[RfReplaceAll]);

    StrList1.text := StringReplace(StrList1.text,'<NS1:istekyap xmlns:NS1="urn:MeddataLabServiceIntf-IMeddataLabService">',
                                                 '<NS1:istekyap>',[RfReplaceAll]);


    StrList1.text := UTF8Encode(StrList1.text);



    SOAPRequest.Position := 0;
    StrList1.SaveToStream(SOAPRequest);

    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));

   // StrList1.add(FormatXMLData(Request));
    StrList1.SaveToFile('Metdata1.xml');



     *)

    // T := TstringList.Create;
    // SOAPRequest.Position := 0;
    //  t.LoadFromStream(SOAPRequest);
    //  t.SaveToFile('Metdata.xml');
    //  t.Free;
  finally
    StrList1.Free;
  end;
end;

procedure TDATALAR.MetDataCAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
 T : TstringList;
begin
   T := TstringList.Create;
   try
     SOAPResponse.Position := 0;
     t.LoadFromStream(SOAPResponse);
     t.SaveToFile('MetdataCikisCvp.xml');
   finally
     t.Free;
   end;
end;
procedure TDATALAR.MetDataCBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
 T : TstringList;
begin
   T := TstringList.Create;
   try
     SOAPRequest.Position := 0;
     t.LoadFromStream(SOAPRequest);
     t.SaveToFile('MetdataCikis.xml');
   finally
     t.Free;
   end;
end;

function TDatalar.FindData (Q: TADOQuery; sql: string): integer;
begin
   QuerySelect (Q, sql);
   Q.First;
   if ( Q.Eof )
   Then FindData := 0
   Else FindData := 1;
end;

procedure TDATALAR.GemsoftAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   m := TStringList.Create;
   try
     m.Add(FormatXMLData(R));
     m.SaveToFile('GemsoftCevap.XML');
     TenayMNTRequest := m.Text;
   finally
     m.Free;
   end;
end;

procedure TDATALAR.GemsoftBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   try
     memo.Parent := AnaForm;
     memo.Lines.Add(FormatXMLData(R));
     memo.Lines.SaveToFile('Gemsoft.XML');
   finally
     memo.Free;
   end;
end;

procedure TDATALAR.QueryExec (sql : string = '');
var
  b: Boolean;
  Q: TADOQuery;
begin
  try
   Q := TADOQuery.Create(nil);
   Q.Connection := datalar.ADOConnection2;
   b:= queryExec (Q, sql);
   if not b then ;;;
  finally
   Q.Free;
  end;
end;

function TDATALAR.QueryExec (var Q: TADOQuery; const sql : string): Boolean;
var
  //sql2 :string;
  bLocalCreated: Boolean;
begin
  bLocalCreated := False;
  //Result := False;
  if Q = nil then
  begin
    Q := TADOQuery.Create(nil);
    bLocalCreated := True;
  end;
  try
    if Q.Connection = nil then Q.Connection := ADOConnection2;

    //sql2 := sql;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add (sql);
    //    Q.Prepare;
    Q.ExecSQL;
    Result := True;
  finally
    if bLocalCreated then
    begin
      FreeAndNil (Q);
    end;
  end;

  //Çalýþan SQL li tutar

  try
    //sql := StringReplace(sql,'''','`',[rfReplaceAll]);
    //sql := '`' + sql + '`';
    //    Q_LogADO.SQL.Text := 'INSERT INTO MUHQLog (SIRGUM_KUL,DATA_NESNESI,SQL_TEXT) '
    //                       + 'VALUES ('''  + ''',''' + Q.Name + ''',''' + Copy(sql,1,8000) + ''')';
        //ShowMessage(Q_LogADO.SQL.Text);
    //    Q_LogADO.ExecSQL;
  except
  end;

  //    if Pos('DELETE FROM muh_fis_hareket ',UPPERCASE(sql2)) <> 0
  //    Then begin
  //      sql2 := StringReplace(sql2, 'DELETE FROM muh_fis_hareket ','DELETE FROM ' +  'muh_fis_hareket ',[rfIgnoreCase]);
  //      QueryExec(Q, sql2);
  //    end;

end;



function Tdatalar.QuerySelect (Q: TADOQuery ; sql:string) : Boolean;
begin
//    if Pos ('WHERE',AnsiUpperCase(sql)) <> 0
//    Then sql := StringReplace(sql,'WHERE','WITH(NOLOCK) WHERE',[rfReplaceAll,rfIgnoreCase])
//    else
//      if  (Pos ('GROUP BY',AnsiUpperCase(sql)) = 0)
//      and (Pos ('ORDER BY',AnsiUpperCase(sql)) = 0)
//      Then sql := sql + ' WITH(NOLOCK) ';
    if Assigned(Q) = false then Q := TADOQuery.Create(nil);
    if Q.Connection = nil then Q.Connection := ADOConnection2;

    Q.Close;
    Q.SQL.Clear ;
    if Copy(AnsiUppercase(sql) ,1, 6) = 'SELECT'
    Then sql := 'SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  '+ sql;
    Q.SQL.Add (sql);
//    Q.Prepare;
    Q.Open;
    Result := True;
end;

function Tdatalar.QuerySelect (sql:string) : TADOQuery;
begin
//    if Pos ('WHERE',AnsiUpperCase(sql)) <> 0
//    Then sql := StringReplace(sql,'WHERE','WITH(NOLOCK) WHERE',[rfReplaceAll,rfIgnoreCase])
//    else
//      if  (Pos ('GROUP BY',AnsiUpperCase(sql)) = 0)
//      and (Pos ('ORDER BY',AnsiUpperCase(sql)) = 0)
//      Then sql := sql + ' WITH(NOLOCK) ';
    Result := TADOQuery.Create(nil);
    Result.Connection := ADOConnection2;

    Result.Close;
    Result.SQL.Clear ;
    if Copy(AnsiUppercase(sql) ,1, 6) = 'SELECT'
    Then sql := 'SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  '+ sql;
    Result.SQL.Add (sql);
//    Q.Prepare;
    Result.Open;
end;

procedure TDATALAR.pcarihareketlerAfterScroll(DataSet: TDataSet);
begin
//
end;

procedure TDATALAR.TempConnectionAfterConnect(Sender: TObject);
begin
  //bt := 1;
end;

procedure TDATALAR.TenayBIOAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
  SetLength(R, SOAPResponse.Size);
  SOAPResponse.Position := 0;
  SOAPResponse.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Add(FormatXMLData(R));
    memo.Lines.SaveToFile('BIOCevap.XML');
    TenayBIORequest := memo.Lines.Text;
  finally
    memo.Free;
  end;
end;

procedure TDATALAR.TenayBIOBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   try
     memo.Parent := AnaForm;
     memo.Lines.Add(FormatXMLData(R));
     memo.Lines.SaveToFile('BIO.XML');
   finally
     memo.Free;
   end;
end;
procedure TDATALAR.TenayMNTAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   try
     memo.Parent := AnaForm;
     memo.Lines.Add(FormatXMLData(R));
     memo.Lines.SaveToFile('MNTCevap.XML');
     TenayMNTRequest := memo.Lines.Text;
   finally
     memo.Free;
   end;
end;

procedure TDATALAR.TenayMNTBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  R: UTF8String;
  met : string;
begin
  met := MethodName;
  SetLength(R, SOAPRequest.Size);
  SOAPRequest.Position := 0;
  SOAPRequest.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Add(FormatXMLData(R));
    memo.Lines.SaveToFile('MNT.XML');
  finally
    memo.Free;
  end;
end;

procedure TDATALAR.TenayV2AfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
  SetLength(R, SOAPResponse.Size);
  SOAPResponse.Position := 0;
  SOAPResponse.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Add(FormatXMLData(R));
    memo.Lines.SaveToFile('TenayV2Cvp.XML');
  finally
    memo.Free;
  end;
end;

procedure TDATALAR.TenayV2BeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
  SetLength(R, SOAPRequest.Size);
  SOAPRequest.Position := 0;
  SOAPRequest.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Add(FormatXMLData(R));
    memo.Lines.SaveToFile('TenayV2.XML');
  finally
    memo.Free;
  end;
end;

procedure TDATALAR.UmitHastBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
  SetLength(R, SOAPRequest.Size);
  SOAPRequest.Position := 0;
  SOAPRequest.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Add(FormatXMLData(R));
    memo.Lines.SaveToFile('UmitHast.XML');
  finally
    memo.Free;
  end;
end;

procedure TDATALAR.VenturaAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   try
     memo.Parent := AnaForm;
     memo.Lines.Add(FormatXMLData(R));
     memo.Lines.SaveToFile('VenturaCevap.XML');
     TenayMNTRequest := memo.Lines.Text;
   finally
     memo.Free;
   end;
end;

procedure TDATALAR.VenturaBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
  SetLength(R, SOAPRequest.Size);
  SOAPRequest.Position := 0;
  SOAPRequest.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Add(FormatXMLData(R));
    memo.Lines.SaveToFile('Ventura.XML');
  finally
    memo.Free;
  end;
end;

procedure TDATALAR.WinsoftAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
 T : TstringList;
begin
  T := TstringList.Create;
  try
    SOAPResponse.Position := 0;
    t.LoadFromStream(SOAPResponse);
    t.SaveToFile('winsoftCvp.xml');
  finally
    t.Free;
  end;
end;

procedure TDATALAR.WinsoftBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  T : TstringList;
begin
  T := TstringList.Create;
  try
    SOAPRequest.Position := 0;
    t.LoadFromStream(SOAPRequest);
    t.SaveToFile('winsoft.xml');
  finally
    t.Free;
  end;
end;

procedure TDATALAR.yardimciIslemAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  XMLDoc: IXMLDocument;

begin


      SOAPResponse.Position := 0;
      XMLDoc := NewXMLDocument;
      XMLDoc.Encoding := 'UTF8';
      SOAPResponse.Position := 0;
      //XMLDoc.LoadFromFile('yardimciIslemCevap.XML');
      XMLDoc.LoadFromStream(SOAPResponse);
      XMLDoc.SaveToFile('WsYardimciIslemCvp.XML');

(*
  if yardimciIslemMethod = 'DamarIzi'
  then begin
      ClientDataset1.Active := FALSE;
      SOAPResponse.Position := 0;
      XMLDoc := NewXMLDocument;
      XMLDoc.Encoding := 'UTF8';
      SOAPResponse.Position := 0;
      //XMLDoc.LoadFromFile('yardimciIslemCevap.XML');
      XMLDoc.LoadFromStream(SOAPResponse);
      XMLDoc.SaveToFile('DamarIziDogrula.XML');
      XMLTransformProvider1.TransformRead.TransformationFile := 'DamarIziDogrula.xtr';
      XMLTransformProvider1.TransformRead.SourceXmlDocument := XMLDoc.GetDOMDocument;
      ClientDataset1.Active := TRUE;
  end;
  *)

end;
procedure TDATALAR.yardimciIslemBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  StrList1: TStringList;
  Header  : Widestring;
begin

  StrList1 := TStringList.Create;
  try
    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));
    StrList1.add(Request);


    Header := '<SOAP-ENV:Envelope'+
    ' xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/"'+
    ' xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"'+
    ' xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing"'+
    ' xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"'+
    ' xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"'+
    ' xmlns:ser="http://servisler.ws.gss.sgk.gov.tr">'+
    ' <SOAP-ENV:Header>'+
    '  <wsse:Security>'+
    '    <wsse:UsernameToken wsu:Id="SecurityToken-04ce24bd-9c7c-4ca9-9764-92c53b0662c5">'+
    '      <wsse:Username>'+_username+'</wsse:Username>'+
    '      <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">'+_sifre+'</wsse:Password>'+
    '    </wsse:UsernameToken>'+
    '  </wsse:Security>'+
    ' </SOAP-ENV:Header>';



    StrList1.Text := StringReplace(StrList1.Text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',Header,[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<takipAra xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:takipAra>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</takipAra>','</ser:takipAra>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<yurtDisiYardimHakkiGetir xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:yurtDisiYardimHakkiGetir>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</yurtDisiYardimHakkiGetir>','</ser:yurtDisiYardimHakkiGetir>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<damarIziDogrulamaSorgu xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:damarIziDogrulamaSorgu>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</damarIziDogrulamaSorgu>','</ser:damarIziDogrulamaSorgu>',[RfReplaceAll]);


    StrList1.Text := StringReplace(StrList1.Text,'<etkinMaddeSutKuraliGetir xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:etkinMaddeSutKuraliGetir>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</etkinMaddeSutKuraliGetir>','</ser:etkinMaddeSutKuraliGetir>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<getOrneklenmisTakipler xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:getOrneklenmisTakipler>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</getOrneklenmisTakipler>','</ser:getOrneklenmisTakipler>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<katilimPayiUcreti xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:katilimPayiUcreti>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</katilimPayiUcreti>','</ser:katilimPayiUcreti>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<kisiTakipDetayBilgisiGetir xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:kisiTakipDetayBilgisiGetir>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</kisiTakipDetayBilgisiGetir>','</ser:kisiTakipDetayBilgisiGetir>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<kesintiYapilmisIslemler xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:kesintiYapilmisIslemler>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</kesintiYapilmisIslemler>','</ser:kesintiYapilmisIslemler>',[RfReplaceAll]);



    StrList1.Text := StringReplace(StrList1.Text,' xmlns=""','',[RfReplaceAll]);
    StrList1.Text := UTF8Encode(StrList1.Text);



    SOAPRequest.Position := 0;
    StrList1.SaveToStream(SOAPRequest);

    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));

   // StrList1.add(FormatXMLData(Request));
    StrList1.SaveToFile('wsYardimciIslem.xml');


   // xmlKaydet.Free;

  finally
    StrList1.Free;
  end;



end;

procedure TDATALAR.yardimciIslemlerAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  m : TStringList;
  R: UTF8String;
begin
  SetLength(R, SOAPResponse.Size);
  SOAPResponse.Position := 0;
  SOAPResponse.Read(R[1], Length(R));

  m := TStringList.Create;
  try
  //  memo := Tmemo.Create(nil);
  //  memo.Parent := AnaForm;
    m.Add(FormatXMLData(R));
    //memo.Lines.Add(FormatXMLData(R));
    //memo.Lines.SaveToFile('yardimciIslemCevap.XML');
    //memo.Free;
    m.SaveToFile('WSyardimciIslemCevap.XML');
  finally
    m.Free;
  end;
end;

procedure TDATALAR.yardimciIslemlerBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   m := TStringList.Create;
   try
     m.Add(FormatXMLData(R));
     m.SaveToFile('yardimciIslem.XML');
   finally
     m.Free;
   end;
  (*
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('yardimciIslem.XML');
   memo.Free;
    *)
end;

procedure TDATALAR.TakipAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   try
     memo.Parent := AnaForm;
     memo.Lines.Add(FormatXMLData(R));
     memo.Lines.SaveToFile('TakipCvp.XML');
   finally
     memo.Free;
   end;
end;

procedure TDATALAR.TakipBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   try
     memo.Parent := AnaForm;
     memo.Lines.Add(FormatXMLData(R));
     memo.Lines.SaveToFile('Takip.XML');
   finally
     memo.Free;
   end;
end;

procedure TDATALAR.TakipformuAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   try
     memo.Parent := AnaForm;
     memo.Lines.Add(FormatXMLData(R));
     memo.Lines.SaveToFile('DiabetTakipCvp.XML');
   finally
     memo.Free;
   end;
end;

procedure TDATALAR.TakipformuBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  StrList1: TStringList;
  Header  : Widestring;
begin

  StrList1 := TStringList.Create;
  try
    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));
    StrList1.add(Request);


    Header := '<SOAP-ENV:Envelope'+
    ' xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/"'+
    ' xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"'+
    ' xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing"'+
    ' xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"'+
    ' xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"'+
    ' xmlns:ser="http://servisler.ws.gss.sgk.gov.tr">'+
    ' <SOAP-ENV:Header>'+
    '  <wsse:Security>'+
    '    <wsse:UsernameToken wsu:Id="SecurityToken-04ce24bd-9c7c-4ca9-9764-92c53b0662c5">'+
    '      <wsse:Username>'+_username+'</wsse:Username>'+
    '      <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">'+_sifre+'</wsse:Password>'+
    '    </wsse:UsernameToken>'+
    '  </wsse:Security>'+
    ' </SOAP-ENV:Header>';

    StrList1.Text := StringReplace(StrList1.Text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',Header,[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<takipFormuOku xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:takipFormuOku>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</takipFormuOku>','</ser:takipFormuOku>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<takipFormuSil xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:takipFormuSil>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</takipFormuSil>','</ser:takipFormuSil>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<takipFormuKaydet xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:takipFormuKaydet>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</takipFormuKaydet>','</ser:takipFormuKaydet>',[RfReplaceAll]);


    StrList1.Text := StringReplace(StrList1.Text,' xmlns=""','',[RfReplaceAll]);
    StrList1.Text := UTF8Encode(StrList1.Text);



    SOAPRequest.Position := 0;
    StrList1.SaveToStream(SOAPRequest);

    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));

   // StrList1.add(FormatXMLData(Request));
    StrList1.SaveToFile('wsDiabetTakipForm.xml');


   // xmlKaydet.Free;
  finally
    StrList1.Free;
  end;

(*
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := frmMessage_y;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('DiabetTakipForm.XML');
   memo.Free;*)
end;

procedure TDATALAR.TakipHTTPWebNode1BeforePost(
  const HTTPReqResp: THTTPReqResp; Data: Pointer);
var
  Timeout : integer;
begin
      TimeOut := 40000; // in milleseconds.

      InternetSetOption(Data,
      INTERNET_OPTION_RECEIVE_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(TimeOut));

      InternetSetOption(Data,
      INTERNET_OPTION_SEND_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(TimeOut));

end;

procedure TDATALAR.DYOBAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : TStringList;
  R: UTF8String;
begin
  SetLength(R, SOAPResponse.Size);
  SOAPResponse.Position := 0;
  SOAPResponse.Read(R[1], Length(R));
  memo := TStringList.Create;
  try
    memo.Add(FormatXMLData(R));
    memo.SaveToFile('DYOBCVP.XML');
    DyobRequest := memo.Text;
  finally
    memo.Free;
  end;
end;

procedure TDATALAR.DYOBBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  memo : TStringList;
begin
  memo := TStringList.Create;
  try
    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));
    memo.Add(FormatXMLData(Request));
    memo.SaveToFile('DYOB.xml');
  finally
    memo.Free;
  end;
end;

procedure TDATALAR.ErguvanHttpAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  StrList1 : TStringList;
  R: UTF8String;
//  Bilgi : IXMLTestSonuclariType;
begin
  StrList1 := TStringList.Create;
  try
    SetLength(R, SOAPResponse.Size);
    SOAPResponse.Position := 0;
    SOAPResponse.Read(R[1], Length(R));

    StrList1.add(R);
    StrList1.SaveToFile('ErguvanCvp.XML');
  finally
    StrList1.Free;
  end;

(*
  ClientDataset1.Active := FALSE;
  SOAPResponse.Position := 0;
  XMLDoc := NewXMLDocument;
  XMLDoc.Encoding := 'UTF8';
  SOAPResponse.Position := 0;
  XMLDoc.LoadFromStream(SOAPResponse);

  XMLTransformProvider1.TransformRead.TransformationFile := 'Erguvan.xtr';

  XMLTransformProvider1.TransformRead.SourceXmlDocument := XMLDoc.GetDOMDocument;
  ClientDataset1.Active := TRUE;
  *)
end;

procedure TDATALAR.ESYAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  StrList1 : TStringList;
  R: UTF8String;
begin
   StrList1 := TStringList.Create;
   try
     SetLength(R, SOAPResponse.Size);
     SOAPResponse.Position := 0;
     SOAPResponse.Read(R[1], Length(R));

     StrList1.add(R);
     StrList1.SaveToFile('ESYCvp.XML');
   finally
     StrList1.Free;
   end;
end;

procedure TDATALAR.ESYBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
 T : TstringList;
begin
   T := TstringList.Create;
   try
     SOAPRequest.Position := 0;
     t.LoadFromStream(SOAPRequest);
     t.SaveToFile('ESY.xml');
   finally
     t.Free;
   end;
end;

procedure TDATALAR.FaturaKaydetAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  R: UTF8String;
  StrList1: TStringList;
begin
   StrList1 := TStringList.Create;
   try
     SetLength(R, SOAPResponse.Size);
     SOAPResponse.Position := 0;
     SOAPResponse.Read(R[1], Length(R));
     StrList1.add(R);

     StrList1.SaveToFile('wsFaturaCvp.XML');
   finally
     StrList1.Free;
   end;
end;

procedure TDATALAR.FaturaKaydetBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  StrList1: TStringList;
  Header  : Widestring;
begin

  StrList1 := TStringList.Create;
  try
    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));
    StrList1.add(Request);


   Header := '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ser="http://servisler.ws.gss.sgk.gov.tr">'+
    ' <soapenv:Header>'+
    '  <wsse:Security xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" soapenv:mustUnderstand="0">' +
    '   <wsse:UsernameToken xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" wsu:Id="UsernameToken-13669775">'+
    '    <wsse:Username>'+_username + '</wsse:Username>' +
    '    <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">' + _sifre + '</wsse:Password>'+
    '   </wsse:UsernameToken>' +
    '  </wsse:Security>'+
    ' </soapenv:Header>';

    StrList1.Text := StringReplace(StrList1.Text,'<SOAP-ENV:Body>','<soapenv:Body>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</SOAP-ENV:Body>','</soapenv:Body>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</SOAP-ENV:Envelope>','</soapenv:Envelope>',[RfReplaceAll]);



    StrList1.Text := StringReplace(StrList1.Text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',Header,[RfReplaceAll]);


    StrList1.Text := StringReplace(StrList1.Text,'<faturaTutarOku xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:faturaTutarOku>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</faturaTutarOku>','</ser:faturaTutarOku>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<faturaOku xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:faturaOku>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</faturaOku>','</ser:faturaOku>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<faturaKayit xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:faturaKayit>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</faturaKayit>','</ser:faturaKayit>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<faturaIptal xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:faturaIptal>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</faturaIptal>','</ser:faturaIptal>',[RfReplaceAll]);



    StrList1.Text := StringReplace(StrList1.Text,' xmlns=""','',[RfReplaceAll]);
    StrList1.Text := UTF8Encode(StrList1.Text);



    SOAPRequest.Position := 0;
    StrList1.SaveToStream(SOAPRequest);

    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));

   // StrList1.add(FormatXMLData(Request));
    StrList1.SaveToFile('wsFatura.xml');
  finally
    StrList1.Free;
  end;
 // xmlKaydet.Free;
end;

procedure TDATALAR.FaturaKaydetHTTPWebNode1BeforePost(
  const HTTPReqResp: THTTPReqResp; Data: Pointer);
var
  TimeOut : integer;
begin

      TimeOut := 60000 * 2; // in milleseconds.

      InternetSetOption(Data,
      INTERNET_OPTION_RECEIVE_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(TimeOut));

      InternetSetOption(Data,
      INTERNET_OPTION_SEND_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(TimeOut));

end;

procedure TDATALAR.HizmetKayitHTTPWebNode1BeforePost(
  const HTTPReqResp: THTTPReqResp; Data: Pointer);
var
  TimeOut : integer;
begin

      TimeOut := 60000; // in milleseconds.

      InternetSetOption(Data,
      INTERNET_OPTION_RECEIVE_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(TimeOut));

      InternetSetOption(Data,
      INTERNET_OPTION_SEND_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(TimeOut));

end;

procedure TDATALAR.HTTPRIO1BeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  R: UTF8String;
  met : string;
begin
  met := MethodName;
  SetLength(R, SOAPRequest.Size);
  SOAPRequest.Position := 0;
  SOAPRequest.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Add(FormatXMLData(R));
    memo.Lines.SaveToFile('MNT.XML');
  finally
    memo.Free;
  end;
end;


procedure TDATALAR.IlacRapor_AfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
  SetLength(R, SOAPResponse.Size);
  SOAPResponse.Position := 0;
  SOAPResponse.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Add(FormatXMLData(R));
    memo.Lines.SaveToFile('RaporKayitCvp.XML');
  finally
    memo.Free;
  end;
end;

procedure TDATALAR.IlacRapor_BeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  StrList1: TStringList;
  Header  : Widestring;
begin

  StrList1 := TStringList.Create;
  try
    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));
    StrList1.add(Request);


   Header := '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ser="http://servisler.ws.gss.sgk.gov.tr">'+
    ' <soapenv:Header>'+
    '  <wsse:Security xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" soapenv:mustUnderstand="0">' +
    '   <wsse:UsernameToken xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" wsu:Id="UsernameToken-13669775">'+
    '    <wsse:Username>'+_username + '</wsse:Username>' +
    '    <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">' + _sifre + '</wsse:Password>'+
    '   </wsse:UsernameToken>' +
    '  </wsse:Security>'+
    ' </soapenv:Header>';

    StrList1.Text := StringReplace(StrList1.Text,'<SOAP-ENV:Body>','<soapenv:Body>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</SOAP-ENV:Body>','</soapenv:Body>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</SOAP-ENV:Envelope>','</soapenv:Envelope>',[RfReplaceAll]);


    StrList1.Text := StringReplace(StrList1.Text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',Header,[RfReplaceAll]);


    StrList1.Text := StringReplace(StrList1.Text,'<raporBilgisiBul xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:raporBilgisiBul>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</ser:raporBilgisiBul>','</ser:raporBilgisiBul>',[RfReplaceAll]);
  finally
    StrList1.Free;
  end;
end;

procedure TDATALAR.IntermediaAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  T : TstringList;
begin
  T := TstringList.Create;
  try
    SOAPResponse.Position := 0;
    t.LoadFromStream(SOAPResponse);
    t.SaveToFile('IntermediaCvp.xml');
  finally
    t.Free;
  end;
end;

procedure TDATALAR.IntermediaBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
 T : TstringList;
begin
  T := TstringList.Create;
  try
    SOAPRequest.Position := 0;
    t.LoadFromStream(SOAPRequest);
    t.SaveToFile('Intermedia.xml');
  finally
    t.Free;
  end;
end;

procedure TDATALAR.ITSBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
  SetLength(R, SOAPRequest.Size);
  SOAPRequest.Position := 0;
  SOAPRequest.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Add(FormatXMLData(R));
    memo.Lines.SaveToFile('ITS.XML');
  finally
    memo.Free;
  end;
end;

procedure TDATALAR.LabVBeforeExecute(const MethodName: String;
  var SOAPRequest: WideString);
 var
  memo : Tmemo;
begin
  memo := TMemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Text := SOAPRequest;
    memo.Lines.SaveToFile('sorgu.XML');
  finally
    memo.Free;
  end;
end;

procedure TDATALAR.LabVAfterExecute(const MethodName: String;
  SOAPResponse: TStream);
begin
//
end;

procedure TDATALAR.LabAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
 T : TstringList;
begin
  T := TstringList.Create;
  try
    SOAPResponse.Position := 0;
    t.LoadFromStream(SOAPResponse);
    t.SaveToFile('medilisCvp.xml');
  finally
    t.Free;
  end;
end;
procedure TDATALAR.LabBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
 T : TstringList;
begin
  T := TstringList.Create;
  try
    SOAPRequest.Position := 0;
    t.LoadFromStream(SOAPRequest);
    t.SaveToFile('medilis.xml');
  finally
    t.Free;
  end;
end;

procedure TDATALAR.LabHTTPWebNode1ReceivingData(Read, Total: Integer);
begin
  //
end;

procedure TDATALAR.LiosAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  StrList1 : TStringList;
  R: UTF8String;
begin
  StrList1 := TStringList.Create;
  try
    SetLength(R, SOAPResponse.Size);
    SOAPResponse.Position := 0;
    SOAPResponse.Read(R[1], Length(R));

    StrList1.add(R);
    StrList1.SaveToFile('LiosCvp.XML');
  finally
    StrList1.Free;
  end;
end;

procedure TDATALAR.LiosBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
 T : TstringList;
begin
  T := TstringList.Create;
  try
    SOAPRequest.Position := 0;
    t.LoadFromStream(SOAPRequest);
    t.SaveToFile('Lios.xml');
  finally
    t.Free;
  end;
end;

procedure TDATALAR.LisansAlBeforeExecute(const MethodName: String;
  var SOAPRequest: WideString);
begin
   (*
   memo := TMemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Text := SOAPRequest;
   memo.Lines.SaveToFile('TestTotal.XML');
   memo.Free;
     *)
end;

procedure TDATALAR.LisansAlHTTPWebNode1BeforePost(
  const HTTPReqResp: THTTPReqResp; Data: Pointer);
var
  Timeout : integer;
begin
      TimeOut := 10000; // in milleseconds.

      InternetSetOption(Data,
      INTERNET_OPTION_RECEIVE_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(TimeOut));

      InternetSetOption(Data,
      INTERNET_OPTION_SEND_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(TimeOut));
end;

procedure TDATALAR.HastaKabulAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  R: UTF8String;
  StrList1: TStringList;
begin
   StrList1 := TStringList.Create;
   try

     SetLength(R, SOAPResponse.Size);
     SOAPResponse.Position := 0;
     SOAPResponse.Read(R[1], Length(R));
     StrList1.add(R);

  (*   StrList1.text := StringReplace(StrList1.text,
     '<p305:hastaKabulIptalResponse xmlns:p305="http://servisler.ws.gss.sgk.gov.tr">',
     '<hastaKabulIptalResponse xmlns="http://servisler.ws.gss.sgk.gov.tr">',[RfReplaceAll]);

    SOAPResponse.Position := 0;
    StrList1.SaveToStream(SOAPResponse);

    SetLength(R, SOAPResponse.Size);
    SOAPResponse.Position := 0;
    SOAPResponse.Read(R[1], Length(R));
    StrList1.Clear;
    StrList1.add(R);
    *)


    StrList1.SaveToFile('wsHastaKabulCvpCvp.XML');
   finally
     StrList1.Free;
   end;
end;

procedure TDATALAR.HastaKabulBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  StrList1: TStringList;
  Header  : Widestring;
begin

  StrList1 := TStringList.Create;
  try
    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));
    StrList1.add(Request);


    (*
    Header := '<SOAP-ENV:Envelope'+
    ' xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/"'+
    ' xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"'+
    ' xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing"'+
    ' xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"'+
    ' xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"'+
    ' xmlns:tns5="http://servisler.ws.gss.sgk.gov.tr">'+
    ' <SOAP-ENV:Header>'+
    '  <wsse:Security>'+
    '    <wsse:UsernameToken wsu:Id="SecurityToken-04ce24bd-9c7c-4ca9-9764-92c53b0662c5">'+
    '      <wsse:Username>'+_username+'</wsse:Username>'+
    '      <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">'+_sifre+'</wsse:Password>'+
    '    </wsse:UsernameToken>'+
    '  </wsse:Security>'+
    ' </SOAP-ENV:Header>';
      *)

    Header := '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tns5="http://servisler.ws.gss.sgk.gov.tr">'+
    ' <soapenv:Header>'+
    '  <wsse:Security xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" soapenv:mustUnderstand="0">' +
    '   <wsse:UsernameToken xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" wsu:Id="UsernameToken-13669775">'+
    '    <wsse:Username>'+_username + '</wsse:Username>' +
    '    <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">' + _sifre + '</wsse:Password>'+
    '   </wsse:UsernameToken>' +
    '  </wsse:Security>'+
    ' </soapenv:Header>';

    StrList1.Text := StringReplace(StrList1.Text,'<SOAP-ENV:Body>','<soapenv:Body>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</SOAP-ENV:Body>','</soapenv:Body>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</SOAP-ENV:Envelope>','</soapenv:Envelope>',[RfReplaceAll]);



    StrList1.Text := StringReplace(StrList1.Text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',Header,[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'<hastaKabul xmlns="http://servisler.ws.gss.sgk.gov.tr">','<tns5:hastaKabul>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</hastaKabul>','</tns5:hastaKabul>',[RfReplaceAll]);


    StrList1.Text := StringReplace(StrList1.Text,'<hastaKabulIptal xmlns="http://servisler.ws.gss.sgk.gov.tr">','<tns5:hastaKabulIptal>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</hastaKabulIptal>','</tns5:hastaKabulIptal>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<hastaKabulOku xmlns="http://servisler.ws.gss.sgk.gov.tr">','<tns5:hastaKabulOku>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</hastaKabulOku>','</tns5:hastaKabulOku>',[RfReplaceAll]);



    StrList1.Text := StringReplace(StrList1.Text,'<basvuruTakipOku xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:basvuruTakipOku>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</basvuruTakipOku>','</ser:basvuruTakipOku>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<hastaKabulKimlikDogrulama xmlns="http://servisler.ws.gss.sgk.gov.tr">','<tns5:hastaKabulKimlikDogrulama>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</hastaKabulKimlikDogrulama>','</tns5:hastaKabulKimlikDogrulama>',[RfReplaceAll]);





    StrList1.Text := StringReplace(StrList1.Text,' xmlns=""','',[RfReplaceAll]);
    StrList1.Text := UTF8Encode(StrList1.Text);



    SOAPRequest.Position := 0;
    StrList1.SaveToStream(SOAPRequest);

    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));

   // StrList1.add(FormatXMLData(Request));
    StrList1.SaveToFile('wsHastaKabul.xml');
  finally
    StrList1.Free;
  end;
   // xmlKaydet.Free;
end;

procedure TDATALAR.HizmetKayitAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
  SetLength(R, SOAPResponse.Size);
  SOAPResponse.Position := 0;
  SOAPResponse.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Add(FormatXMLData(R));
    memo.Lines.SaveToFile('C:\Noktav3\HttpCvp\wsHizmetKayitCvp_' + inttostr(HizmetKayit.tag) + '_' + FormatDateTime('DDMMYYYY_HHMMSS',now)  + '_.XML');
  finally
    memo.Free;
  end;
end;



procedure TDATALAR.HizmetKayitBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  StrList1: TStringList;
  Header  : Widestring;
begin

  StrList1 := TStringList.Create;
  try
    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));
    StrList1.add(Request);


    Header := '<SOAP-ENV:Envelope'+
    ' xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/"'+
    ' xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"'+
    ' xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing"'+
    ' xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"'+
    ' xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"'+
    ' xmlns:ser="http://servisler.ws.gss.sgk.gov.tr">'+
    ' <SOAP-ENV:Header>'+
    '  <wsse:Security>'+
    '    <wsse:UsernameToken wsu:Id="SecurityToken-04ce24bd-9c7c-4ca9-9764-92c53b0662c5">'+
    '      <wsse:Username>'+_username+'</wsse:Username>'+
    '      <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">'+_sifre+'</wsse:Password>'+
    '    </wsse:UsernameToken>'+
    '  </wsse:Security>'+
    ' </SOAP-ENV:Header>';

    StrList1.Text := StringReplace(StrList1.Text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',Header,[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'<hizmetKayit xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:hizmetKayit>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</hizmetKayit>','</ser:hizmetKayit>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<hizmetOku xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:hizmetOku>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</hizmetOku>','</ser:hizmetOku>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<hizmetIptal xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:hizmetIptal>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</hizmetIptal>','</ser:hizmetIptal>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,' xmlns=""','',[RfReplaceAll]);
    StrList1.Text := UTF8Encode(StrList1.Text);

    SOAPRequest.Position := 0;
    StrList1.SaveToStream(SOAPRequest);

    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));

   // StrList1.add(FormatXMLData(Request));
    StrList1.SaveToFile('wsHizmetKayit.xml');
  finally
    StrList1.Free;
  end;
   // xmlKaydet.Free;
end;

procedure TDATALAR.Rapor_AfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
  SetLength(R, SOAPResponse.Size);
  SOAPResponse.Position := 0;
  SOAPResponse.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    try
      memo.Lines.Add(FormatXMLData(R));
    except
      memo.Lines.Add(R);
    end;
    memo.Lines.SaveToFile('wsRaporCvp.XML');
  finally
    memo.free;
  end;
end;


procedure TDATALAR.Rapor_BeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  StrList1: TStringList;
  Header  : Widestring;
  u,p , ns : string;
begin

  if datalar.Rapor_.URL = raporIlacURL
  Then begin
    doktorEReceteUser(datalar.doktorKodu,u,p);
    _username := u;
    _sifre := p;
    ns := 'http://servisler.ws.eczane.gss.sgk.gov.tr';
  end
  else ns := 'http://servisler.ws.gss.sgk.gov.tr';

  StrList1 := TStringList.Create;
  try
    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));
    StrList1.add(Request);


   Header := '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ser="'+ ns + '">'+//servisler.ws.gss.sgk.gov.tr">'+
    ' <soapenv:Header>'+
    '  <wsse:Security xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" soapenv:mustUnderstand="0">' +
    '   <wsse:UsernameToken xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" wsu:Id="UsernameToken-13669775">'+
    '    <wsse:Username>'+_username + '</wsse:Username>' +
    '    <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">' + _sifre + '</wsse:Password>'+
    '   </wsse:UsernameToken>' +
    '  </wsse:Security>'+
    ' </soapenv:Header>';

    StrList1.Text := StringReplace(StrList1.Text,'<SOAP-ENV:Body>','<soapenv:Body>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</SOAP-ENV:Body>','</soapenv:Body>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</SOAP-ENV:Envelope>','</soapenv:Envelope>',[RfReplaceAll]);


    StrList1.Text := StringReplace(StrList1.Text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',Header,[RfReplaceAll]);


    StrList1.Text := StringReplace(StrList1.Text,'<raporBilgisiBul xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:raporBilgisiBul>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</raporBilgisiBul>','</ser:raporBilgisiBul>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<eraporGiris xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:eraporGiris>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</eraporGiris>','</ser:eraporGiris>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<eraporSorgula xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:eraporSorgula>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</eraporSorgula>','</ser:eraporSorgula>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<eraporSil xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:eraporSil>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</eraporSil>','</ser:eraporSil>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<eraporBashekimOnay xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:eraporBashekimOnay>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</eraporBashekimOnay>','</ser:eraporBashekimOnay>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<eraporBashekimOnayRed xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:eraporBashekimOnayRed>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</eraporBashekimOnayRed>','</ser:eraporBashekimOnayRed>',[RfReplaceAll]);


    StrList1.Text := StringReplace(StrList1.Text,'<takipNoileRaporBilgisiKaydet xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:takipNoileRaporBilgisiKaydet>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</takipNoileRaporBilgisiKaydet>','</ser:takipNoileRaporBilgisiKaydet>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<raporBilgisiSil xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:raporBilgisiSil>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</raporBilgisiSil>','</ser:raporBilgisiSil>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<raporBilgisiBulTCKimlikNodan xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:raporBilgisiBulTCKimlikNodan>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</raporBilgisiBulTCKimlikNodan>','</ser:raporBilgisiBulTCKimlikNodan>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<raporBilgisiBulRaporTakipNodan xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:raporBilgisiBulRaporTakipNodan>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</raporBilgisiBulRaporTakipNodan>','</ser:raporBilgisiBulRaporTakipNodan>',[RfReplaceAll]);



    StrList1.Text := StringReplace(StrList1.Text,' xmlns=""','',[RfReplaceAll]);
    StrList1.Text := UTF8Encode(StrList1.Text);



    SOAPRequest.Position := 0;
    StrList1.SaveToStream(SOAPRequest);

    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));

   // StrList1.add(FormatXMLData(Request));
    StrList1.SaveToFile('wsRapor.xml');
  finally
    StrList1.Free;
  end;
 // xmlKaydet.Free;
end;


procedure TDATALAR.Rapor_MBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  StrList1: TStringList;
  Header  : Widestring;
  ns : string;
begin

  ns := 'http://servisler.ws.gss.sgk.gov.tr';

  StrList1 := TStringList.Create;
  try
    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));
    StrList1.add(Request);


   Header := '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ser="'+ ns + '">'+//servisler.ws.gss.sgk.gov.tr">'+
    ' <soapenv:Header>'+
    '  <wsse:Security xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" soapenv:mustUnderstand="0">' +
    '   <wsse:UsernameToken xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" wsu:Id="UsernameToken-13669775">'+
    '    <wsse:Username>'+_username + '</wsse:Username>' +
    '    <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">' + _sifre + '</wsse:Password>'+
    '   </wsse:UsernameToken>' +
    '  </wsse:Security>'+
    ' </soapenv:Header>';

    StrList1.Text := StringReplace(StrList1.Text,'<SOAP-ENV:Body>','<soapenv:Body>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</SOAP-ENV:Body>','</soapenv:Body>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</SOAP-ENV:Envelope>','</soapenv:Envelope>',[RfReplaceAll]);


    StrList1.Text := StringReplace(StrList1.Text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',Header,[RfReplaceAll]);


    StrList1.Text := StringReplace(StrList1.Text,'<raporBilgisiBul xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:raporBilgisiBul>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</raporBilgisiBul>','</ser:raporBilgisiBul>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<eraporGiris xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:eraporGiris>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</eraporGiris>','</ser:eraporGiris>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<eraporSorgula xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:eraporSorgula>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</eraporSorgula>','</ser:eraporSorgula>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<eraporSil xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:eraporSil>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</eraporSil>','</ser:eraporSil>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<eraporBashekimOnay xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:eraporBashekimOnay>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</eraporBashekimOnay>','</ser:eraporBashekimOnay>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<eraporBashekimOnayRed xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:eraporBashekimOnayRed>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</eraporBashekimOnayRed>','</ser:eraporBashekimOnayRed>',[RfReplaceAll]);


    StrList1.Text := StringReplace(StrList1.Text,'<takipNoileRaporBilgisiKaydet xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:takipNoileRaporBilgisiKaydet>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</takipNoileRaporBilgisiKaydet>','</ser:takipNoileRaporBilgisiKaydet>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<raporBilgisiSil xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:raporBilgisiSil>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</raporBilgisiSil>','</ser:raporBilgisiSil>',[RfReplaceAll]);

    StrList1.Text := StringReplace(StrList1.Text,'<raporBilgisiBulTCKimlikNodan xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:raporBilgisiBulTCKimlikNodan>',[RfReplaceAll]);
    StrList1.Text := StringReplace(StrList1.Text,'</raporBilgisiBulTCKimlikNodan>','</ser:raporBilgisiBulTCKimlikNodan>',[RfReplaceAll]);




    StrList1.Text := StringReplace(StrList1.Text,' xmlns=""','',[RfReplaceAll]);
    StrList1.Text := UTF8Encode(StrList1.Text);



    SOAPRequest.Position := 0;
    StrList1.SaveToStream(SOAPRequest);

    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));

   // StrList1.add(FormatXMLData(Request));
    StrList1.SaveToFile('wsRapor.xml');
  finally
    StrList1.Free;
  end;
 // xmlKaydet.Free;


end;

procedure TDATALAR.ReferansAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
  SetLength(R, SOAPResponse.Size);
  SOAPResponse.Position := 0;
  SOAPResponse.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Add(FormatXMLData(R));
    memo.Lines.SaveToFile('ReferansCvp.XML');




    (*
       s:= '<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '<xs:element name="NewDataSet" msdata:IsDataSet="true" msdata:UseCurrentLocale="true">';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '<xs:complexType>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '<xs:choice minOccurs="0" maxOccurs="unbounded">';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '<xs:element name="hstsonuclar">';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '<xs:complexType>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '<xs:sequence>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '<xs:element name="GELISREF" type="xs:int" minOccurs="0"/>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '<xs:element name="HASTAADI" type="xs:string" minOccurs="0"/>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '<xs:element name="HASTAREF" type="xs:int" minOccurs="0"/>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '<xs:element name="HASTATCKNO" type="xs:string" minOccurs="0"/>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '<xs:element name="RAPORTARIHI" type="xs:dateTime" minOccurs="0"/>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '<xs:element name="GELISTARIHI" type="xs:dateTime" minOccurs="0"/>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '<xs:element name="TESTADI" type="xs:string" minOccurs="0"/>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '<xs:element name="TESTREF" type="xs:short" minOccurs="0"/>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '<xs:element name="SONUC" type="xs:string" minOccurs="0"/>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '<xs:element name="SONUCBIRIM" type="xs:string" minOccurs="0"/>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '<xs:element name="SONUCTEXT" type="xs:string" minOccurs="0"/>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '<xs:element name="GONDERENBARKOD" type="xs:string" minOccurs="0"/>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '</xs:sequence>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '</xs:complexType>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '</xs:element>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '</xs:choice>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '</xs:complexType>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s :='</xs:element>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

       s := '</xs:schema>';
       memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

    memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

    s := '<diffgr:diffgram xmlns:msdata="urn:schemas-microsoft-com:xml-msdata" xmlns:diffgr="urn:schemas-microsoft-com:xml-diffgram-v1">';
    memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

    s := '<NewDataSet xmlns="">';
    memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

    s := '</NewDataSet>';
    memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

    s := '</diffgr:diffgram>';
    memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);

    for x := 0 to 200 do
    begin
     s := ' diffgr:id="hstsonuclar'+ inttostr(x+1) +'" msdata:rowOrder="'+ inttostr(x) + '" diffgr:hasChanges="inserted"';
     memo.Lines.Text := StringReplace(memo.Lines.Text,s,'',[rfReplaceAll]);
    end;

    for x := 0 to memo.Lines.Count - 1 do
    begin
    sil := True;
     for i := 1 to length(memo.Lines[x]) do
     begin
        if copy(memo.Lines[x],i,1) <> ' '
        Then sil := false;
     end;
     if sil = True Then memo.Lines.Delete(x);

    end;



    memo.Lines.SaveToFile('ReferansCvp.XML');

    *)
  finally
    memo.Free;
  end;
end;

procedure TDATALAR.ReferansBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
  SetLength(R, SOAPRequest.Size);
  SOAPRequest.Position := 0;
  SOAPRequest.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Add(FormatXMLData(R));
    memo.Lines.SaveToFile('Referans.XML');
  finally
    memo.Free;
  end;
end;

procedure TDATALAR.servis_AfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  StrList1 : TStringList;
  R: UTF8String;
begin
  StrList1 := TStringList.Create;
  try
    SetLength(R, SOAPResponse.Size);
    SOAPResponse.Position := 0;
    SOAPResponse.Read(R[1], Length(R));

    StrList1.add(R);
    StrList1.SaveToFile('onlineProtokolCvp.XML');
  finally
    StrList1.Free;
  end;
end;

procedure TDATALAR.servis_BeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
 T : TstringList;
begin
  T := TstringList.Create;
  try
    SOAPRequest.Position := 0;
    t.LoadFromStream(SOAPRequest);
    t.SaveToFile('onlineProtokol.xml');
  finally
    t.Free;
  end;
end;

procedure TDATALAR.SistemAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
  SetLength(R, SOAPResponse.Size);
  SOAPResponse.Position := 0;
  SOAPResponse.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Add(FormatXMLData(R));
    memo.Lines.SaveToFile('SistemCvp.XML');
  finally
    memo.Free;
  end;
end;


procedure TDATALAR.SistemBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
  SetLength(R, SOAPRequest.Size);
  SOAPRequest.Position := 0;
  SOAPRequest.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Add(FormatXMLData(R));
    memo.Lines.SaveToFile('Sistem.XML');
  finally
    memo.Free;
  end;
end;

procedure TDATALAR.SistemHTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
  Data: Pointer);
var
  Timeout : integer;
begin
      TimeOut := 120000; // in milleseconds.

      InternetSetOption(Data,
      INTERNET_OPTION_RECEIVE_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(TimeOut));

      InternetSetOption(Data,
      INTERNET_OPTION_SEND_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(TimeOut));
end;

procedure TDATALAR.ADOConnection2AfterConnect(Sender: TObject);
begin
//  login;
end;

procedure TDATALAR.ADOConnection2WillExecute(Connection: TADOConnection;
  var CommandText: WideString; var CursorType: TCursorType;
  var LockType: TADOLockType; var CommandType: TCommandType;
  var ExecuteOptions: TExecuteOptions; var EventStatus: TEventStatus;
  const Command: _Command; const Recordset: _Recordset);
begin
 //   SendQueryString('**************'+FormatDateTime('DD-MM-YYYY HH:MM:SS:ZZZ',now)+'**************');
    SendQueryString(CommandText);
    (*
    if FileExists('C:\NoktaV3\ConnLog.txt')
    then begin
       t := TstringList.Create;
       t.LoadFromFile('C:\NoktaV3\ConnLog.txt');
       if t.Text = ''
         then CommandLog.Clear;
       t.Free;

       CommandLog.Add('**************'+FormatDateTime('DD-MM-YYYY HH:MM:SS:ZZZ',now)+'**************');
       CommandLog.Add(CommandText);
       CommandLog.SaveToFile('C:\NoktaV3\ConnLog.txt');
    end;
      *)

end;

procedure TDATALAR.AENAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
 T : TstringList;
begin
  T := TstringList.Create;
  try
    SOAPResponse.Position := 0;
    t.LoadFromStream(SOAPResponse);
    t.SaveToFile('AENCvp.xml');
  finally
    t.Free;
  end;
end;

procedure TDATALAR.AENBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
 T : TstringList;
begin
  T := TstringList.Create;
  try
    SOAPRequest.Position := 0;
    t.LoadFromStream(SOAPRequest);
    t.SaveToFile('AEN.xml');
  finally
    t.Free;
  end;
end;

procedure TDATALAR.AhenkAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  T : TstringList;
begin
   T := TstringList.Create;
   try
     SOAPResponse.Position := 0;
     t.LoadFromStream(SOAPResponse);
     t.SaveToFile('medilisCvp.xml');
   finally
     t.Free;
   end;
end;

procedure TDATALAR.AhenkBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
 T : TstringList;
begin
  T := TstringList.Create;
  try
    SOAPRequest.Position := 0;
    t.LoadFromStream(SOAPRequest);
    t.SaveToFile('medilis.xml');
  finally
    t.Free;
  end;
end;

procedure TDATALAR.AlisAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
 T : TstringList;
begin
  T := TstringList.Create;
  try
    SOAPResponse.Position := 0;
    t.LoadFromStream(SOAPResponse);
    t.SaveToFile('AlisCvp.xml');
  finally
    t.Free;
  end;
end;

procedure TDATALAR.AlisBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
 T : TstringList;
begin
  T := TstringList.Create;
  try
    SOAPRequest.Position := 0;
    t.LoadFromStream(SOAPRequest);
    t.SaveToFile('Alis.xml');
  finally
    t.Free;
  end;
end;

procedure TDATALAR.AlisHTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
  Data: Pointer);
var
 TimeOut : integer;
begin
  TimeOut := 0;
  InternetSetOption(Data, INTERNET_OPTION_RECEIVE_TIMEOUT,Pointer(@TimeOut),SizeOf(TimeOut));
end;

procedure TDATALAR.BioAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
  SetLength(R, SOAPResponse.Size);
  SOAPResponse.Position := 0;
  SOAPResponse.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Add(FormatXMLData(R));
    memo.Lines.SaveToFile('BioCvp.XML');
  finally
    memo.Free;
  end;
end;

procedure TDATALAR.BioBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   try
     memo.Parent := AnaForm;
     memo.Lines.Add(FormatXMLData(R));
     memo.Lines.SaveToFile('Bio.XML');
   finally
     memo.Free;
   end;
end;

procedure TDATALAR.CentroAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
  SetLength(R, SOAPResponse.Size);
  SOAPResponse.Position := 0;
  SOAPResponse.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Add(FormatXMLData(R));
    memo.Lines.SaveToFile('CentroCevap.XML');
    CentroResponse := memo.Lines.Text;
  finally
    memo.Free;
  end;
end;

procedure TDATALAR.CentroBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  StrList1: TStringList;
begin
  StrList1 := TStringList.Create;
  try
    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));

    Request := StringReplace(Request,'<Job','<Job xmlns="http://lis.sesam.com.tr/BridgeJob"',[RfReplaceAll]);

    SOAPRequest.Position := 0;
    SOAPRequest.Write(Request[1], Length(Request));

    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));

    StrList1.add(Request);
    StrList1.SaveToFile('Centro.XML');
  finally
    StrList1.Free;
  end;

end;
procedure TDATALAR.DataModuleCreate(Sender: TObject);
begin
 ADOConnection2.Connected := false;
 Master.Connected := false;
 CommandLog := TStringList.Create;
end;

procedure TDATALAR.DataModuleDestroy(Sender: TObject);
begin
  CommandLog.Free;
end;

procedure TDATALAR.DermanAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
  SetLength(R, SOAPResponse.Size);
  SOAPResponse.Position := 0;
  SOAPResponse.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Add(FormatXMLData(R));
    memo.Lines.SaveToFile('DermanCevap.XML');
    TenayBIORequest := memo.Lines.Text;
  finally
    memo.Free;
  end;
end;
procedure TDATALAR.DermanBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
  SetLength(R, SOAPRequest.Size);
  SOAPRequest.Position := 0;
  SOAPRequest.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Add(FormatXMLData(R));
    memo.Lines.SaveToFile('Derman.XML');
  finally
    memo.Free;
  end;
end;

procedure TDATALAR.DuzenAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
  SetLength(R, SOAPResponse.Size);
  SOAPResponse.Position := 0;
  SOAPResponse.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Add(FormatXMLData(R));
    memo.Lines.SaveToFile('DuzenCevap.XML');
    TenayMNTRequest := memo.Lines.Text;
  finally
    memo.Free;
  end;
end;

procedure TDATALAR.DuzenBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  R: UTF8String;
begin
  SetLength(R, SOAPRequest.Size);
  SOAPRequest.Position := 0;
  SOAPRequest.Read(R[1], Length(R));
  memo := Tmemo.Create(nil);
  try
    memo.Parent := AnaForm;
    memo.Lines.Add(FormatXMLData(R));
    memo.Lines.SaveToFile('Duzen.XML');
  finally
    memo.Free;
  end;
end;

procedure TDATALAR.DuzenHTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
  Data: Pointer);
var
  Timeout : integer;
begin
      TimeOut := 120000; // in milleseconds.

      InternetSetOption(Data,
      INTERNET_OPTION_RECEIVE_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(TimeOut));

      InternetSetOption(Data,
      INTERNET_OPTION_SEND_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(TimeOut));
end;

end.
