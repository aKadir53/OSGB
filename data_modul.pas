
unit data_modul;

interface

uses
  SysUtils, Classes, ADODB, DB,  IdBaseComponent,iniFiles,
  windows,Forms,StdCtrls,TlHelp32,XSBuiltIns,WinInet,KadirType,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, InvokeRegistry, Rio,SOAPHTTPTrans,
  SOAPHTTPClient,  ImgList, Controls, XMLDoc, FileCtrl,HizmetKayitIslemleriWS,
  Dialogs, cxGraphics, dxmdaset, ExtCtrls, xmldom, Provider, Xmlxform, DBClient,XMLIntf,
  RxMemDS,strUtils,Registry, SQLMemMain;


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
    function Baglan(db : string = '' ; Server : string = '') : Boolean;
    function MasterBaglan(MasterKod : string ; var DB : string ; Server : string = '') : boolean;
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
   servername,username, usersifre , _username , _sifre , _donemuser , _donemsifre , _tesisKodu , _labusername , _labsifre , doktor ,doktorKodu, _dosyaNo_,_gelisNo_,kontrolKod,
   _labkurumkod , _labkurumkodText, _laburl , _labfirma ,  _SKRS , _saglikNetUser , _saglikNetPass , _firmaSKRS , _usermernis , _passmernis : string;
   _doktorReceteUser,_doktorRecetePas,_KurumSKRS_, _userSaglikNet_ , _passSaglikNet_ , _userSaglikNet2_ , _passSaglikNet2_ , itsGLN , itsUser , itsPass: string;
   _merkezAdi , _DyobKurumKodu_,_DyobSifre_,_DyobServiceKodu_ , doktorTip , bashekimKodu,hekimKodu,ImajFTPServer : string;
   _medulaOrtam_ : string;
   TakipDevam : boolean;
   AktifSirketAdi,AktifSirket ,_donemSonlandir_ ,TenayMNTRequest , TenayBIORequest , DyobRequest , _database , _Tip : string;
   CentroResponse ,SMSHesapFrom,SMSHesapUser,SMSHesapSifre , AlpemixRun,AlpemixGrupAdi,AlpemixGrupParola : string;
   _kurumKod  , _donemgoster : integer;
   Bilgi : THastaKabul;
   GelisDuzenleRecord : TGelisDuzenle;
   SeansBilgi : TDigerIslemTalep;
   ReceteSatir : TReceteSatir;
   ReceteAciklama : TAck;
   YeniRecete : TYeniRecete;
   SeansOlusturPrm : TSeansOlusturPrm;
   TeleEkg : TTeleEKG;
   HastaYas , yardimciIslemMethod: string;
   DigerIslemTalebi : TDigerIslemTalep;
   ProgTarih : string;
   ProgBitis : string;
   forum , SOAPRequestText ,Skin : string;
   HastaBil : THasta;
   bt:integer;
   HkA : integer;
   VeriSeti : THizmetVeriSeti;
   islemSiralari : Array_Of_string;
   _Program_ , _takip_ : string;
   protokolIslemTip , DosyaNOONEK: string;
   vatandasTip : integer;
   _kilo_ : double;
   browserOk : integer;
   browserTime : integer;
   duyuruPanel : string;
   Cup_Specified : boolean;
   LisansAlURL,ftpUrl : string;
   ftpUser,ftpPassword,versiyon: string;
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
   raporURL :string;
   DyopURL :string;
   DonemSonlandir :string;
   ButtonEditSecimlist : ArrayListeSecimler;

   function QuerySelect (Q: TADOQuery; sql:string) : Boolean;overload;
  // function QuerySelect (sql:string;Q: TADOQuery = nil) : Boolean;overload;
   function QuerySelect (sql:string) : TADOQuery; overload;
   procedure QueryExec (Q: TADOQuery = nil ; sql : string = '');
   function FindData (Q: TADOQuery; sql: string): integer;
   procedure Login;
   function WebErisimBilgi(slk,slb : string) : string;
   function KillTask(Dosyadi: string): integer;

    { Public declarations }
  end;


var
  DATALAR: TDATALAR;
  CommandLog : TstringList;

implementation

uses AnaUnit,kadir;



{$R *.dfm}



function TDatalar.MasterBaglan(MasterKod : string ; var DB : string ; Server : string = '') : Boolean;
var
 ado : TADOQuery;
begin
     servername := Server;
     Master.Connected := false;
     Master.ConnectionString :=
     'Provider=SQLOLEDB.1;Password=5353;Persist Security Info=True;User ID=Nokta;Initial Catalog=OSGB_MASTER;Data Source='+servername;
     Master.Connected := True;

      if Master.Connected = True then
      begin
         ado := TADOQuery.Create(nil);
         ado.Connection := Master;
         QuerySelect(ado,'select db from OSGB_TNM where OSGB_KOD = ' + QuotedStr(MasterKod));
         if not ado.Eof
         then Begin
             DB := ado.Fields[0].AsString;
         End;
         Result := True;
         ado.Free;
      end
      else
      ShowMessageSkin('Master Sunucu Baðlantýsý Saðlanamadý','','','info');
end;


function TDatalar.Baglan(db : string = '' ; Server : string = '') : Boolean;
var
 iniFiles : TIniFile;
 _db_ : string;
begin
  Result := False;
  try
   _db_ := RegOku('OSGB_db_name');
   _db_ := Decode64(_db_);
   servername := ifThen(Server = '', Decode64(RegOku('servername')),Server);
   _db_ := ifThen(db = '', Decode64(RegOku('OSGB_db_name')),db);

   if (_db_ <> '')
   Then Begin
     ADOConnection2.Connected := false;
     ADOConnection2.ConnectionString :=
     'Provider=SQLOLEDB.1;Password=5353;Persist Security Info=True;User ID=Nokta;Initial Catalog=' + _db_ +';Data Source='+servername;
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

function TDatalar.WebErisimBilgi(slk,slb : string) : string;
var
  sql : string;
  ado : TADOQuery;
begin
   WebErisimBilgi := '';
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   sql := 'select Value from WebServisErisimBilgileri '  +
          'where slk = ' + QuotedStr(slk) + ' and slb = ' + QuotedStr(slb);
   datalar.QuerySelect(ado,sql);
   WebErisimBilgi := ado.Fields[0].AsString;
   ado.Free;
end;

procedure TDATALAR.Login;
var
  sql : string;
  ado : TADOQuery;
begin

  try
    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;

    _medulaOrtam_ := WebErisimBilgi('98','01');
   if _medulaOrtam_ = 'Gerçek'
   Then begin
     //yardimciIslemURL := WebErisimBilgi('MDL','04');
     //DiabetFormURL := WebErisimBilgi('MDL','09');
     //hastaKabulURL := WebErisimBilgi('MDL','01');
     //faturaKayitURL := WebErisimBilgi('MDL','03');
     //hizmetKayitURL := WebErisimBilgi('MDL','02');
     receteURL := WebErisimBilgi('MDL','05');
     //raporIlacURL := WebErisimBilgi('MDL','06');
     //raporURL := WebErisimBilgi('MDL','07');
   end
   Else
   begin
     //yardimciIslemURL := WebErisimBilgi('MDL','14');
     //DiabetFormURL := WebErisimBilgi('MDL','19');
     //hastaKabulURL := WebErisimBilgi('MDL','11');
     //faturaKayitURL := WebErisimBilgi('MDL','13');
     //hizmetKayitURL := WebErisimBilgi('MDL','12');
     receteURL := WebErisimBilgi('MDL','15');
     //raporIlacURL := WebErisimBilgi('MDL','16');
     //raporURL := WebErisimBilgi('MDL','17');
   end;
     //DyopURL := WebErisimBilgi('TDS','01');
     //DonemSonlandir := WebErisimBilgi('MDL','08');;

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


    //_userSaglikNet2_ := WebErisimBilgi('90','00');
    //_passSaglikNet2_ := WebErisimBilgi('90','01');

    (*
    _SKRS := datalar.ADO_SQL2.fieldbyname('SLYY').AsString;
    _saglikNetUser := datalar.ADO_SQL2.fieldbyname('SLZZ').AsString;
    _saglikNetPass := datalar.ADO_SQL2.fieldbyname('SLXXX').AsString;
    _firmaSKRS := datalar.ADO_SQL2.fieldbyname('SLXXv').AsString;
      *)


    //_labusername := WebErisimBilgi('LA','00');
    //_labsifre := WebErisimBilgi('LA','01');
    //_labkurumkod := WebErisimBilgi('LA','02');
    //_laburl := WebErisimBilgi('LA','04');
    //_labfirma := WebErisimBilgi('LA','05');
    //_labkurumkodText := WebErisimBilgi('LA','03');
    //kontrolKod := WebErisimBilgi('LA','06');
  //  dosyaNoONEK := ado.fieldbyname('slxxx').AsString;


    //_usermernis := WebErisimBilgi('97','00');
    //_passmernis := WebErisimBilgi('97','01');


    //itsGLN := WebErisimBilgi('IT','02');
    //itsUser := WebErisimBilgi('IT','00');
    //itsPass := WebErisimBilgi('IT','01');

    //_DyobKurumKodu_ := WebErisimBilgi('DY','00');
    //_DyobSifre_ := WebErisimBilgi('DY','02');
    //_DyobServiceKodu_ := WebErisimBilgi('DY','01');

    sql := 'SELECT MerkezAdi FROM merkezBilgisi';
    datalar.QuerySelect(ado,sql);
    _merkezAdi := ado.fieldbyname('merkezAdi').AsString;


    sql := 'select SLVV from parametreler where slk = ''GA'' and SLB = ''00''';
    datalar.QuerySelect(ado,sql);
    LisansALUrl := ado.fieldbyname('SLVV').AsString;

    //sql := 'select SLVV,SLXX,SLYY,SLZZ from parametreler where slk = ''GA'' and SLB = ''02''';
    //datalar.QuerySelect(ado,sql);
    //ftpUrl := ado.fieldbyname('SLVV').AsString;
    //ftpUser := ado.fieldbyname('SLXX').AsString;
    //ftpPassword := ado.fieldbyname('SLYY').AsString;


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

  except

  end;


  ado.Free;

end;



procedure TDATALAR.MalAlimBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   m := TStringList.Create;
   m.Add(FormatXMLData(R));
   m.SaveToFile('MalAlim.XML');
   m.Free;
end;

procedure TDATALAR.MetdataAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
 T : TstringList;
begin
   T := TstringList.Create;
   SOAPResponse.Position := 0;
   t.LoadFromStream(SOAPResponse);
   t.SaveToFile('MetdataCvp.xml');
   t.Free;
end;


procedure TDATALAR.MetdataBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  Request1: UTF8String;
  StrList1: TStringList;
  I : integer;
  HeaderBegin , HeaderEnd : integer;
  Header  : Widestring;
  BodyBegin , BodyEnd , ii ,s : integer;
  Body , xmlKaydet: TStringList;
begin

  StrList1 := TStringList.Create;
  Body := TStringList.Create;

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


  StrList1.Free;

   *)

  // T := TstringList.Create;
  // SOAPRequest.Position := 0;
 //  t.LoadFromStream(SOAPRequest);
 //  t.SaveToFile('Metdata.xml');
 //  t.Free;
end;

procedure TDATALAR.MetDataCAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
 T : TstringList;
begin
   T := TstringList.Create;
   SOAPResponse.Position := 0;
   t.LoadFromStream(SOAPResponse);
   t.SaveToFile('MetdataCikisCvp.xml');
   t.Free;
end;
procedure TDATALAR.MetDataCBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
 T : TstringList;
begin
   T := TstringList.Create;
   SOAPRequest.Position := 0;
   t.LoadFromStream(SOAPRequest);
   t.SaveToFile('MetdataCikis.xml');
   t.Free;
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
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   m := TStringList.Create;
   m.Add(FormatXMLData(R));
   m.SaveToFile('GemsoftCevap.XML');
   TenayMNTRequest := m.Text;
   m.Free;

end;
procedure TDATALAR.GemsoftBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('Gemsoft.XML');
   memo.Free;
end;
procedure Tdatalar.QueryExec (Q: TADOQuery = nil ; sql : string = '');
var
   sql2 :string;
begin
    if Q = nil then Q := TADOQuery.Create(nil);
    if Q.Connection = nil then Q.Connection := ADOConnection2;

    sql2 := sql;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add (sql);
//    Q.Prepare;
    Q.ExecSQL;
    Q := nil;
    //Çalýþan SQL li tutar

    try
     sql := StringReplace(sql,'''','`',[rfReplaceAll]);
     sql := '`' + sql + '`';
 //    Q_LogADO.SQL.Text := 'INSERT INTO MUHQLog (SIRGUM_KUL,DATA_NESNESI,SQL_TEXT) '
 //                       + 'VALUES ('''  + ''',''' + Q.Name + ''',''' + Copy(sql,1,8000) + ''')';
     //ShowMessage(Q_LogADO.SQL.Text);
 //    Q_LogADO.ExecSQL;
    except end;

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

end;

function Tdatalar.QuerySelect (sql:string) : TADOQuery;
var
  Q : TADOQuery;
begin
//    if Pos ('WHERE',AnsiUpperCase(sql)) <> 0
//    Then sql := StringReplace(sql,'WHERE','WITH(NOLOCK) WHERE',[rfReplaceAll,rfIgnoreCase])
//    else
//      if  (Pos ('GROUP BY',AnsiUpperCase(sql)) = 0)
//      and (Pos ('ORDER BY',AnsiUpperCase(sql)) = 0)
//      Then sql := sql + ' WITH(NOLOCK) ';
    Q := TADOQuery.Create(nil);
    Q.Connection := ADOConnection2;

    Q.Close;
    Q.SQL.Clear ;
    if Copy(AnsiUppercase(sql) ,1, 6) = 'SELECT'
    Then sql := 'SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  '+ sql;
    Q.SQL.Add (sql);
//    Q.Prepare;
    Q.Open;
    QuerySelect := Q;
end;

procedure TDATALAR.pcarihareketlerAfterScroll(DataSet: TDataSet);
var
bk1:real;
begin


end;
procedure TDATALAR.TempConnectionAfterConnect(Sender: TObject);
begin
    bt := 1;
end;

procedure TDATALAR.TenayBIOAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('BIOCevap.XML');
   TenayBIORequest := memo.Lines.Text;
   memo.Free;
end;
procedure TDATALAR.TenayBIOBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('BIO.XML');
   memo.Free;
end;
procedure TDATALAR.TenayMNTAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('MNTCevap.XML');
   TenayMNTRequest := memo.Lines.Text;
   memo.Free;
end;

procedure TDATALAR.TenayMNTBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
  met : string;
begin
   met := MethodName;
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('MNT.XML');
   memo.Free;
end;

procedure TDATALAR.TenayV2AfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('TenayV2Cvp.XML');
   memo.Free;
end;

procedure TDATALAR.TenayV2BeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('TenayV2.XML');
   memo.Free;
end;

procedure TDATALAR.UmitHastBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('UmitHast.XML');
   memo.Free;
end;

procedure TDATALAR.VenturaAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('VenturaCevap.XML');
   TenayMNTRequest := memo.Lines.Text;
   memo.Free;
end;
procedure TDATALAR.VenturaBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('Ventura.XML');
   memo.Free;
end;

procedure TDATALAR.WinsoftAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
 T : TstringList;
begin
   T := TstringList.Create;
   SOAPResponse.Position := 0;
   t.LoadFromStream(SOAPResponse);
   t.SaveToFile('winsoftCvp.xml');
   t.Free;
end;

procedure TDATALAR.WinsoftBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
 T : TstringList;
begin
   T := TstringList.Create;
   SOAPRequest.Position := 0;
   t.LoadFromStream(SOAPRequest);
   t.SaveToFile('winsoft.xml');
   t.Free;
end;

procedure TDATALAR.yardimciIslemAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
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
  Request1: UTF8String;
  StrList1: TStringList;
  I : integer;
  HeaderBegin , HeaderEnd : integer;
  Header  : Widestring;
  BodyBegin , BodyEnd , ii ,s : integer;
  Body , xmlKaydet: TStringList;
begin

  StrList1 := TStringList.Create;
  Body := TStringList.Create;

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



  StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',Header,[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<takipAra xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:takipAra>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</takipAra>','</ser:takipAra>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<yurtDisiYardimHakkiGetir xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:yurtDisiYardimHakkiGetir>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</yurtDisiYardimHakkiGetir>','</ser:yurtDisiYardimHakkiGetir>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<damarIziDogrulamaSorgu xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:damarIziDogrulamaSorgu>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</damarIziDogrulamaSorgu>','</ser:damarIziDogrulamaSorgu>',[RfReplaceAll]);


  StrList1.text := StringReplace(StrList1.text,'<etkinMaddeSutKuraliGetir xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:etkinMaddeSutKuraliGetir>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</etkinMaddeSutKuraliGetir>','</ser:etkinMaddeSutKuraliGetir>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<getOrneklenmisTakipler xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:getOrneklenmisTakipler>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</getOrneklenmisTakipler>','</ser:getOrneklenmisTakipler>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<katilimPayiUcreti xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:katilimPayiUcreti>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</katilimPayiUcreti>','</ser:katilimPayiUcreti>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<kisiTakipDetayBilgisiGetir xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:kisiTakipDetayBilgisiGetir>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</kisiTakipDetayBilgisiGetir>','</ser:kisiTakipDetayBilgisiGetir>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<kesintiYapilmisIslemler xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:kesintiYapilmisIslemler>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</kesintiYapilmisIslemler>','</ser:kesintiYapilmisIslemler>',[RfReplaceAll]);



  StrList1.text := StringReplace(StrList1.text,' xmlns=""','',[RfReplaceAll]);
  StrList1.text := UTF8Encode(StrList1.text);



  SOAPRequest.Position := 0;
  StrList1.SaveToStream(SOAPRequest);

  SetLength(Request, SOAPRequest.Size);
  SOAPRequest.Position := 0;
  SOAPRequest.Read(Request[1], Length(Request));

 // StrList1.add(FormatXMLData(Request));
  StrList1.SaveToFile('wsYardimciIslem.xml');


  StrList1.Free;
 // xmlKaydet.Free;
  Body.Free;



end;

procedure TDATALAR.yardimciIslemlerAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));

   m := TStringList.Create;
 //  memo := Tmemo.Create(nil);
 //  memo.Parent := AnaForm;
   m.Add(FormatXMLData(R));
   //memo.Lines.Add(FormatXMLData(R));
   //memo.Lines.SaveToFile('yardimciIslemCevap.XML');
   //memo.Free;
   m.SaveToFile('WSyardimciIslemCevap.XML');
   m.Free;

end;

procedure TDATALAR.yardimciIslemlerBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   m := TStringList.Create;
   m.Add(FormatXMLData(R));
   m.SaveToFile('yardimciIslem.XML');
   m.Free;
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
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('TakipCvp.XML');
   memo.Free;

end;

procedure TDATALAR.TakipBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('Takip.XML');
   memo.Free;
end;

procedure TDATALAR.TakipformuAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('DiabetTakipCvp.XML');
   memo.Free;
end;

procedure TDATALAR.TakipformuBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  Request1: UTF8String;
  StrList1: TStringList;
  I : integer;
  HeaderBegin , HeaderEnd : integer;
  Header  : Widestring;
  BodyBegin , BodyEnd , ii ,s : integer;
  Body , xmlKaydet: TStringList;
begin

  StrList1 := TStringList.Create;
  Body := TStringList.Create;

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

  StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',Header,[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<takipFormuOku xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:takipFormuOku>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</takipFormuOku>','</ser:takipFormuOku>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<takipFormuSil xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:takipFormuSil>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</takipFormuSil>','</ser:takipFormuSil>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<takipFormuKaydet xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:takipFormuKaydet>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</takipFormuKaydet>','</ser:takipFormuKaydet>',[RfReplaceAll]);


  StrList1.text := StringReplace(StrList1.text,' xmlns=""','',[RfReplaceAll]);
  StrList1.text := UTF8Encode(StrList1.text);



  SOAPRequest.Position := 0;
  StrList1.SaveToStream(SOAPRequest);

  SetLength(Request, SOAPRequest.Size);
  SOAPRequest.Position := 0;
  SOAPRequest.Read(Request[1], Length(Request));

 // StrList1.add(FormatXMLData(Request));
  StrList1.SaveToFile('wsDiabetTakipForm.xml');


  StrList1.Free;
 // xmlKaydet.Free;
  Body.Free;





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
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo := TStringList.Create;
   memo.Add(FormatXMLData(R));
   memo.SaveToFile('DYOBCVP.XML');
   DyobRequest := memo.Text;
   memo.Free;
end;
procedure TDATALAR.DYOBBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  Request1: UTF8String;
  StrList1: TStringList;
  I : integer;
  HeaderBegin , HeaderEnd : integer;
  Header  : Widestring;
  BodyBegin , BodyEnd , ii ,s : integer;
  Body , xmlKaydet: TStringList;
  memo : TStringList;
begin
   memo := TStringList.Create;
   SetLength(Request, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(Request[1], Length(Request));
   memo.Add(FormatXMLData(Request));
   memo.SaveToFile('DYOB.xml');
   memo.Free;
end;

procedure TDATALAR.ErguvanHttpAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  XMLDoc: IXMLDocument;
  memo : Tmemo;
  m,StrList1 : TStringList;
  R: UTF8String;
  x , i: integer;
  s : string;
  sil : boolean;
//  Bilgi : IXMLTestSonuclariType;
begin
   StrList1 := TStringList.Create;
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));

   StrList1.add(R);
   StrList1.SaveToFile('ErguvanCvp.XML');
   StrList1.Free;






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
  XMLDoc: IXMLDocument;
  memo : Tmemo;
  m,StrList1 : TStringList;
  R: UTF8String;
  x , i: integer;
  s : string;
  sil : boolean;
begin
   StrList1 := TStringList.Create;
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));

   StrList1.add(R);
   StrList1.SaveToFile('ESYCvp.XML');
   StrList1.Free;
end;

procedure TDATALAR.ESYBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
 T : TstringList;
begin
   T := TstringList.Create;
   SOAPRequest.Position := 0;
   t.LoadFromStream(SOAPRequest);
   t.SaveToFile('ESY.xml');
   t.Free;
end;

procedure TDATALAR.FaturaKaydetAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
  Response: UTF8String;
  StrList1: TStringList;
begin
   StrList1 := TStringList.Create;

   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   StrList1.add(R);

  StrList1.SaveToFile('wsFaturaCvp.XML');
  StrList1.Free;
end;

procedure TDATALAR.FaturaKaydetBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  Request1: UTF8String;
  R: UTF8String;
  StrList1: TStringList;
  I : integer;
  HeaderBegin , HeaderEnd : integer;
  Header  : Widestring;
  BodyBegin , BodyEnd , ii ,s : integer;
  Body , xmlKaydet: TStringList;
begin

  StrList1 := TStringList.Create;
  Body := TStringList.Create;

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

  StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Body>','<soapenv:Body>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</SOAP-ENV:Body>','</soapenv:Body>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</SOAP-ENV:Envelope>','</soapenv:Envelope>',[RfReplaceAll]);



  StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',Header,[RfReplaceAll]);


  StrList1.text := StringReplace(StrList1.text,'<faturaTutarOku xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:faturaTutarOku>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</faturaTutarOku>','</ser:faturaTutarOku>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<faturaOku xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:faturaOku>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</faturaOku>','</ser:faturaOku>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<faturaKayit xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:faturaKayit>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</faturaKayit>','</ser:faturaKayit>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<faturaIptal xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:faturaIptal>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</faturaIptal>','</ser:faturaIptal>',[RfReplaceAll]);



  StrList1.text := StringReplace(StrList1.text,' xmlns=""','',[RfReplaceAll]);
  StrList1.text := UTF8Encode(StrList1.text);



  SOAPRequest.Position := 0;
  StrList1.SaveToStream(SOAPRequest);

  SetLength(Request, SOAPRequest.Size);
  SOAPRequest.Position := 0;
  SOAPRequest.Read(Request[1], Length(Request));

 // StrList1.add(FormatXMLData(Request));
  StrList1.SaveToFile('wsFatura.xml');


  StrList1.Free;
 // xmlKaydet.Free;
  Body.Free;
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
  m : TStringList;
  R: UTF8String;
  met : string;
begin
   met := MethodName;
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('MNT.XML');
   memo.Free;
end;


procedure TDATALAR.IlacRapor_AfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('RaporKayitCvp.XML');
   memo.Free;
end;

procedure TDATALAR.IlacRapor_BeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  Request1: UTF8String;
  R: UTF8String;
  StrList1: TStringList;
  I : integer;
  HeaderBegin , HeaderEnd : integer;
  Header  : Widestring;
  BodyBegin , BodyEnd , ii ,s : integer;
  Body , xmlKaydet: TStringList;
begin

  StrList1 := TStringList.Create;
  Body := TStringList.Create;

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

  StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Body>','<soapenv:Body>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</SOAP-ENV:Body>','</soapenv:Body>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</SOAP-ENV:Envelope>','</soapenv:Envelope>',[RfReplaceAll]);


  StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',Header,[RfReplaceAll]);


  StrList1.text := StringReplace(StrList1.text,'<raporBilgisiBul xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:raporBilgisiBul>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</ser:raporBilgisiBul>','</ser:raporBilgisiBul>',[RfReplaceAll]);




end;
procedure TDATALAR.IntermediaAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
 T : TstringList;
begin
   T := TstringList.Create;
   SOAPResponse.Position := 0;
   t.LoadFromStream(SOAPResponse);
   t.SaveToFile('IntermediaCvp.xml');
   t.Free;
end;
procedure TDATALAR.IntermediaBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
 T : TstringList;
begin
   T := TstringList.Create;
   SOAPRequest.Position := 0;
   t.LoadFromStream(SOAPRequest);
   t.SaveToFile('Intermedia.xml');
   t.Free;
end;

procedure TDATALAR.ITSBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('ITS.XML');
   memo.Free;
end;

procedure TDATALAR.LabVBeforeExecute(const MethodName: String;
  var SOAPRequest: WideString);
 var
  memo : Tmemo;
begin
   memo := TMemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Text := SOAPRequest;
   memo.Lines.SaveToFile('sorgu.XML');
   memo.Free;
end;

procedure TDATALAR.LabVAfterExecute(const MethodName: String;
  SOAPResponse: TStream);
 var
  memo : Tmemo;
begin

end;

procedure TDATALAR.LabAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
 T : TstringList;
begin
   T := TstringList.Create;
   SOAPResponse.Position := 0;
   t.LoadFromStream(SOAPResponse);
   t.SaveToFile('medilisCvp.xml');
   t.Free;
end;
procedure TDATALAR.LabBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
 T : TstringList;
begin
   T := TstringList.Create;
   SOAPRequest.Position := 0;
   t.LoadFromStream(SOAPRequest);
   t.SaveToFile('medilis.xml');
   t.Free;
end;

procedure TDATALAR.LabHTTPWebNode1ReceivingData(Read, Total: Integer);
var
  x : integer;
begin

end;

procedure TDATALAR.LiosAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  XMLDoc: IXMLDocument;
  memo : Tmemo;
  m,StrList1 : TStringList;
  R: UTF8String;
  x , i: integer;
  s : string;
  sil : boolean;
begin
   StrList1 := TStringList.Create;
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));

   StrList1.add(R);
   StrList1.SaveToFile('LiosCvp.XML');
   StrList1.Free;
end;

procedure TDATALAR.LiosBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
 T : TstringList;
begin
   T := TstringList.Create;
   SOAPRequest.Position := 0;
   t.LoadFromStream(SOAPRequest);
   t.SaveToFile('Lios.xml');
   t.Free;
end;

procedure TDATALAR.LisansAlBeforeExecute(const MethodName: String;
  var SOAPRequest: WideString);
 var
  memo : Tmemo;
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
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
  Response: UTF8String;
  StrList1: TStringList;
begin
   StrList1 := TStringList.Create;

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
  StrList1.Free;
end;

procedure TDATALAR.HastaKabulBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  Request1: UTF8String;
  StrList1: TStringList;
  I : integer;
  HeaderBegin , HeaderEnd : integer;
  Header  : Widestring;
  BodyBegin , BodyEnd , ii ,s : integer;
  Body , xmlKaydet: TStringList;
begin

  StrList1 := TStringList.Create;
  Body := TStringList.Create;

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

  StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Body>','<soapenv:Body>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</SOAP-ENV:Body>','</soapenv:Body>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</SOAP-ENV:Envelope>','</soapenv:Envelope>',[RfReplaceAll]);



  StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',Header,[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'<hastaKabul xmlns="http://servisler.ws.gss.sgk.gov.tr">','<tns5:hastaKabul>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</hastaKabul>','</tns5:hastaKabul>',[RfReplaceAll]);


  StrList1.text := StringReplace(StrList1.text,'<hastaKabulIptal xmlns="http://servisler.ws.gss.sgk.gov.tr">','<tns5:hastaKabulIptal>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</hastaKabulIptal>','</tns5:hastaKabulIptal>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<hastaKabulOku xmlns="http://servisler.ws.gss.sgk.gov.tr">','<tns5:hastaKabulOku>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</hastaKabulOku>','</tns5:hastaKabulOku>',[RfReplaceAll]);



  StrList1.text := StringReplace(StrList1.text,'<basvuruTakipOku xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:basvuruTakipOku>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</basvuruTakipOku>','</ser:basvuruTakipOku>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<hastaKabulKimlikDogrulama xmlns="http://servisler.ws.gss.sgk.gov.tr">','<tns5:hastaKabulKimlikDogrulama>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</hastaKabulKimlikDogrulama>','</tns5:hastaKabulKimlikDogrulama>',[RfReplaceAll]);





  StrList1.text := StringReplace(StrList1.text,' xmlns=""','',[RfReplaceAll]);
  StrList1.text := UTF8Encode(StrList1.text);



  SOAPRequest.Position := 0;
  StrList1.SaveToStream(SOAPRequest);

  SetLength(Request, SOAPRequest.Size);
  SOAPRequest.Position := 0;
  SOAPRequest.Read(Request[1], Length(Request));

 // StrList1.add(FormatXMLData(Request));
  StrList1.SaveToFile('wsHastaKabul.xml');


  StrList1.Free;
 // xmlKaydet.Free;
  Body.Free;

end;

procedure TDATALAR.HizmetKayitAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('C:\Noktav3\HttpCvp\wsHizmetKayitCvp_' + inttostr(HizmetKayit.tag) + '_' + FormatDateTime('DDMMYYYY_HHMMSS',now)  + '_.XML');
   memo.Free;



end;



procedure TDATALAR.HizmetKayitBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  Request1: UTF8String;
  StrList1: TStringList;
  I : integer;
  HeaderBegin , HeaderEnd : integer;
  Header  : Widestring;
  BodyBegin , BodyEnd , ii ,s : integer;
  Body , xmlKaydet: TStringList;
begin

  StrList1 := TStringList.Create;
  Body := TStringList.Create;

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

  StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',Header,[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'<hizmetKayit xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:hizmetKayit>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</hizmetKayit>','</ser:hizmetKayit>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<hizmetOku xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:hizmetOku>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</hizmetOku>','</ser:hizmetOku>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<hizmetIptal xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:hizmetIptal>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</hizmetIptal>','</ser:hizmetIptal>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,' xmlns=""','',[RfReplaceAll]);
  StrList1.text := UTF8Encode(StrList1.text);

  SOAPRequest.Position := 0;
  StrList1.SaveToStream(SOAPRequest);

  SetLength(Request, SOAPRequest.Size);
  SOAPRequest.Position := 0;
  SOAPRequest.Read(Request[1], Length(Request));

 // StrList1.add(FormatXMLData(Request));
  StrList1.SaveToFile('wsHizmetKayit.xml');

  StrList1.Free;
 // xmlKaydet.Free;
  Body.Free;
end;

procedure TDATALAR.Rapor_AfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
  x , i: integer;
  s : string;
  sil : boolean;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   try
     memo.Lines.Add(FormatXMLData(R));
   except
     memo.Lines.Add(R);
   end;
   memo.Lines.SaveToFile('wsRaporCvp.XML');

   memo.free;
end;


procedure TDATALAR.Rapor_BeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  Request1: UTF8String;
  R: UTF8String;
  StrList1: TStringList;
  I : integer;
  HeaderBegin , HeaderEnd : integer;
  Header  : Widestring;
  BodyBegin , BodyEnd , ii ,s : integer;
  Body , xmlKaydet: TStringList;
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
  Body := TStringList.Create;

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

  StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Body>','<soapenv:Body>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</SOAP-ENV:Body>','</soapenv:Body>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</SOAP-ENV:Envelope>','</soapenv:Envelope>',[RfReplaceAll]);


  StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',Header,[RfReplaceAll]);


  StrList1.text := StringReplace(StrList1.text,'<raporBilgisiBul xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:raporBilgisiBul>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</raporBilgisiBul>','</ser:raporBilgisiBul>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<eraporGiris xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:eraporGiris>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</eraporGiris>','</ser:eraporGiris>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<eraporSorgula xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:eraporSorgula>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</eraporSorgula>','</ser:eraporSorgula>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<eraporSil xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:eraporSil>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</eraporSil>','</ser:eraporSil>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<eraporBashekimOnay xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:eraporBashekimOnay>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</eraporBashekimOnay>','</ser:eraporBashekimOnay>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<eraporBashekimOnayRed xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:eraporBashekimOnayRed>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</eraporBashekimOnayRed>','</ser:eraporBashekimOnayRed>',[RfReplaceAll]);


  StrList1.text := StringReplace(StrList1.text,'<takipNoileRaporBilgisiKaydet xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:takipNoileRaporBilgisiKaydet>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</takipNoileRaporBilgisiKaydet>','</ser:takipNoileRaporBilgisiKaydet>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<raporBilgisiSil xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:raporBilgisiSil>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</raporBilgisiSil>','</ser:raporBilgisiSil>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<raporBilgisiBulTCKimlikNodan xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:raporBilgisiBulTCKimlikNodan>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</raporBilgisiBulTCKimlikNodan>','</ser:raporBilgisiBulTCKimlikNodan>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<raporBilgisiBulRaporTakipNodan xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:raporBilgisiBulRaporTakipNodan>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</raporBilgisiBulRaporTakipNodan>','</ser:raporBilgisiBulRaporTakipNodan>',[RfReplaceAll]);



  StrList1.text := StringReplace(StrList1.text,' xmlns=""','',[RfReplaceAll]);
  StrList1.text := UTF8Encode(StrList1.text);



  SOAPRequest.Position := 0;
  StrList1.SaveToStream(SOAPRequest);

  SetLength(Request, SOAPRequest.Size);
  SOAPRequest.Position := 0;
  SOAPRequest.Read(Request[1], Length(Request));

 // StrList1.add(FormatXMLData(Request));
  StrList1.SaveToFile('wsRapor.xml');


  StrList1.Free;
 // xmlKaydet.Free;
  Body.Free;




end;


procedure TDATALAR.Rapor_MBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  Request1: UTF8String;
  R: UTF8String;
  StrList1: TStringList;
  I : integer;
  HeaderBegin , HeaderEnd : integer;
  Header  : Widestring;
  BodyBegin , BodyEnd , ii ,s : integer;
  Body , xmlKaydet: TStringList;
  u,p , ns : string;
begin

  ns := 'http://servisler.ws.gss.sgk.gov.tr';

  StrList1 := TStringList.Create;
  Body := TStringList.Create;

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

  StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Body>','<soapenv:Body>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</SOAP-ENV:Body>','</soapenv:Body>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</SOAP-ENV:Envelope>','</soapenv:Envelope>',[RfReplaceAll]);


  StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',Header,[RfReplaceAll]);


  StrList1.text := StringReplace(StrList1.text,'<raporBilgisiBul xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:raporBilgisiBul>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</raporBilgisiBul>','</ser:raporBilgisiBul>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<eraporGiris xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:eraporGiris>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</eraporGiris>','</ser:eraporGiris>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<eraporSorgula xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:eraporSorgula>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</eraporSorgula>','</ser:eraporSorgula>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<eraporSil xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:eraporSil>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</eraporSil>','</ser:eraporSil>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<eraporBashekimOnay xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:eraporBashekimOnay>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</eraporBashekimOnay>','</ser:eraporBashekimOnay>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<eraporBashekimOnayRed xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:eraporBashekimOnayRed>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</eraporBashekimOnayRed>','</ser:eraporBashekimOnayRed>',[RfReplaceAll]);


  StrList1.text := StringReplace(StrList1.text,'<takipNoileRaporBilgisiKaydet xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:takipNoileRaporBilgisiKaydet>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</takipNoileRaporBilgisiKaydet>','</ser:takipNoileRaporBilgisiKaydet>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<raporBilgisiSil xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:raporBilgisiSil>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</raporBilgisiSil>','</ser:raporBilgisiSil>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<raporBilgisiBulTCKimlikNodan xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:raporBilgisiBulTCKimlikNodan>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</raporBilgisiBulTCKimlikNodan>','</ser:raporBilgisiBulTCKimlikNodan>',[RfReplaceAll]);




  StrList1.text := StringReplace(StrList1.text,' xmlns=""','',[RfReplaceAll]);
  StrList1.text := UTF8Encode(StrList1.text);



  SOAPRequest.Position := 0;
  StrList1.SaveToStream(SOAPRequest);

  SetLength(Request, SOAPRequest.Size);
  SOAPRequest.Position := 0;
  SOAPRequest.Read(Request[1], Length(Request));

 // StrList1.add(FormatXMLData(Request));
  StrList1.SaveToFile('wsRapor.xml');


  StrList1.Free;
 // xmlKaydet.Free;
  Body.Free;


end;

procedure TDATALAR.ReferansAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
  x , i: integer;
  s : string;
  sil : boolean;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
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



   memo.Free;
end;
procedure TDATALAR.ReferansBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('Referans.XML');
   memo.Free;
end;

procedure TDATALAR.servis_AfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  XMLDoc: IXMLDocument;
  memo : Tmemo;
  m,StrList1 : TStringList;
  R: UTF8String;
  x , i: integer;
  s : string;
  sil : boolean;
begin
   StrList1 := TStringList.Create;
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));

   StrList1.add(R);
   StrList1.SaveToFile('onlineProtokolCvp.XML');
   StrList1.Free;
end;
procedure TDATALAR.servis_BeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
 T : TstringList;
begin
   T := TstringList.Create;
   SOAPRequest.Position := 0;
   t.LoadFromStream(SOAPRequest);
   t.SaveToFile('onlineProtokol.xml');
   t.Free;
end;

procedure TDATALAR.SistemAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('SistemCvp.XML');
   memo.Free;
end;


procedure TDATALAR.SistemBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('Sistem.XML');
   memo.Free;
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
var
  t : TstringList;
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
   SOAPResponse.Position := 0;
   t.LoadFromStream(SOAPResponse);
   t.SaveToFile('AENCvp.xml');
   t.Free;
end;

procedure TDATALAR.AENBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
 T : TstringList;
begin
   T := TstringList.Create;
   SOAPRequest.Position := 0;
   t.LoadFromStream(SOAPRequest);
   t.SaveToFile('AEN.xml');
   t.Free;
end;

procedure TDATALAR.AhenkAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
 T : TstringList;
begin
   T := TstringList.Create;
   SOAPResponse.Position := 0;
   t.LoadFromStream(SOAPResponse);
   t.SaveToFile('medilisCvp.xml');
   t.Free;
end;
procedure TDATALAR.AhenkBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
 T : TstringList;
begin
   T := TstringList.Create;
   SOAPRequest.Position := 0;
   t.LoadFromStream(SOAPRequest);
   t.SaveToFile('medilis.xml');
   t.Free;
end;

procedure TDATALAR.AlisAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
 T : TstringList;
begin
   T := TstringList.Create;
   SOAPResponse.Position := 0;
   t.LoadFromStream(SOAPResponse);
   t.SaveToFile('AlisCvp.xml');
   t.Free;
end;
procedure TDATALAR.AlisBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
 T : TstringList;
begin
   T := TstringList.Create;
   SOAPRequest.Position := 0;
   t.LoadFromStream(SOAPRequest);
   t.SaveToFile('Alis.xml');
   t.Free;
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
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('BioCvp.XML');
   memo.Free;
end;

procedure TDATALAR.BioBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('Bio.XML');
   memo.Free;
end;
procedure TDATALAR.CentroAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('CentroCevap.XML');
   CentroResponse := memo.Lines.Text;
   memo.Free;
end;

procedure TDATALAR.CentroBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  Request: UTF8String;
  Request1: UTF8String;
  StrList1: TStringList;
  I : integer;
  HeaderBegin , HeaderEnd : integer;
  Header  : Widestring;
  BodyBegin , BodyEnd , ii ,s : integer;
  Body , xmlKaydet: TStringList;
begin
  StrList1 := TStringList.Create;
  Body := TStringList.Create;

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
  StrList1.Free;

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
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('DermanCevap.XML');
   TenayBIORequest := memo.Lines.Text;
   memo.Free;
end;
procedure TDATALAR.DermanBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('Derman.XML');
   memo.Free;
end;
procedure TDATALAR.DuzenAfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('DuzenCevap.XML');
   TenayMNTRequest := memo.Lines.Text;
   memo.Free;

end;
procedure TDATALAR.DuzenBeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   memo.Parent := AnaForm;
   memo.Lines.Add(FormatXMLData(R));
   memo.Lines.SaveToFile('Duzen.XML');
   memo.Free;
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
