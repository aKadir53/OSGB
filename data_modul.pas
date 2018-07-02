
unit data_modul;

interface

uses
  SysUtils, Classes, ADODB, DB,  IdBaseComponent,iniFiles,
  windows,Forms,StdCtrls,TlHelp32,XSBuiltIns,WinInet,KadirType,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, InvokeRegistry, Rio,SOAPHTTPTrans,
  SOAPHTTPClient,  ImgList, Controls, XMLDoc, FileCtrl,HizmetKayitIslemleriWS,
  Dialogs, cxGraphics, dxmdaset, ExtCtrls, xmldom, Provider, Xmlxform, DBClient,XMLIntf,
  RxMemDS,strUtils,Registry, SQLMemMain, KadirLabel,jpeg,Graphics,PNGImage;


type
  TDATALAR = class(TDataModule)
    ADOConnection2: TADOConnection;
    ADO_SQL: TADOQuery;
    ADO_SQL1: TADOQuery;
    ADO_SQL2: TADOQuery;
    ADO_SQL3: TADOQuery;
    RxHastaTakip_: TRxMemoryData;
    RxHastaTakipleri_: TRxMemoryData;
    ADO_RAPORLAR: TADOTable;
    ADO_SQL7: TADOQuery;
    ADO_SQL11: TADOQuery;
    TempConnection: TADOConnection;
    ADO_SQL4: TADOQuery;
    ADO_FOTO: TADOQuery;
    DataSource3: TDataSource;
    ADO_PERSONEL: TADOQuery;
    global_img_list4: TImageList;
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
    ADO_RAPORLAR1: TADOTable;
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
    ADO_TANILAR: TADOQuery;
    ADO_ILACSARF: TADOQuery;
    imag32png: TcxImageList;
    imag24png: TcxImageList;
    ilacList: THTTPRIO;
    ReceteKayit: THTTPRIO;
    RxYesilKart_: TRxMemoryData;
    ADO_TESHISLER: TADOQuery;
    imag48png: TcxImageList;
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
    RxRadIslemTakipNo: TStringField;
    RxRadIslemname: TStringField;
    Ulkeler: TADOTable;
    HTTP1: TIdHTTP;
    memData_DamarIzi: TdxMemData;
    memData_DamarIziTc: TStringField;
    memData_DamarIziHasta: TStringField;
    memData_DamarIziTarih: TStringField;
    memData_DamarIzibrans: TStringField;
    Ado_Sorgulamalar: TADOQuery;
    RxMalzemeBilgisitakipNo: TStringField;
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
    Ado_Guncellemeler: TADOQuery;
    Master: TADOConnection;
    RxHastaTakipbasvuruNo: TStringField;
    ReceteKullanimYollari: TADOQuery;
    ReceteKullanimYollari_Datasource: TDataSource;
    RxDigerIslemraporNo: TStringField;
    RxDigerIslemname: TStringField;
    Ado_Doktorlar: TADOQuery;
    Doktorlar_DataSource: TDataSource;
    ado_HastaRaporlarSource: TDataSource;
    ado_HastaRaporlar: TADOQuery;
    ADO_DiyalizKodlariSource: TDataSource;
    ADO_DiyalizKodlari: TADOQuery;
    RxMemoryData2: TRxMemoryData;
    KontrolZorunlu: TADOQuery;
    KontrolZorunlu_DataSource: TDataSource;
    ADOConnection1: TADOConnection;
    LoginInOut: Tlogin;
    Ado_IGU: TADOQuery;
    IGU_DataSource: TDataSource;
    TehlikeSiniflari_DataSource: TDataSource;
    ADO_TehlikeSiniflari: TADOQuery;
    Ado_DSP: TADOQuery;
    DSP_DataSource: TDataSource;
    FotoImage: TcxImageList;
    CSGBSoap: THTTPRIO;
    procedure pcarihareketlerAfterScroll(DataSet: TDataSet);
    procedure TempConnectionAfterConnect(Sender: TObject);
    procedure TakipHTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
      Data: Pointer);
    procedure HizmetKayitHTTPWebNode1BeforePost(
      const HTTPReqResp: THTTPReqResp; Data: Pointer);
    procedure LabVBeforeExecute(const MethodName: String;
      var SOAPRequest: WideString);
    procedure LisansAlBeforeExecute(const MethodName: String;
      var SOAPRequest: WideString);
    procedure DataModuleCreate(Sender: TObject);
    procedure HizmetKayitAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure HizmetKayitBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure DuzenHTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
      Data: Pointer);
    procedure HastaKabulBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure HastaKabulAfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure AlisHTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
      Data: Pointer);
    procedure ADOConnection2AfterConnect(Sender: TObject);
    function Baglan(db : string = '' ; Server : string = ''; username : String = ''; pSQLUserName : String = ''; pSQLPassword : String = '') : Boolean;
    function MasterBaglan(MasterKod : string ; var DB, OSGBDesc : string ; var YazilimGelistirici : integer; Server : string = ''; pSQLUserName : String = ''; pSQLPassword : String = '') : boolean;
    procedure ADOConnection2WillExecute(Connection: TADOConnection;
      var CommandText: WideString; var CursorType: TCursorType;
      var LockType: TADOLockType; var CommandType: TCommandType;
      var ExecuteOptions: TExecuteOptions; var EventStatus: TEventStatus;
      const Command: _Command; const Recordset: _Recordset);
    procedure DataModuleDestroy(Sender: TObject);
  private

    { Private declarations }
  public
   servername,username, usersifre , _username , _sifre , _donemuser , _donemsifre , usernameAdi ,
   _tesisKodu , _labusername , _labsifre , doktor ,doktorKodu, SonReceteDoktorKodu,SonImzaDoktorKodu,sirketKodu,
   IGU, DSPers, _dosyaNo_,_gelisNo_,kontrolKod,RiskTanimBilgiEkle,
   _labkurumkod , _labkurumkodText, _laburl , _labfirma ,  _SKRS , _saglikNetUser ,
   _saglikNetPass , _firmaSKRS , _usermernis , _passmernis, UserGroup, UserGroupName : string;
   _doktorReceteUser,_doktorRecetePas,_KurumSKRS_, _userSaglikNet_ , _passSaglikNet_ , _userSaglikNet2_ , _passSaglikNet2_ , itsGLN , itsUser , itsPass: string;
   _merkezAdi , _DyobKurumKodu_,_DyobSifre_,_DyobServiceKodu_ , doktorTip , bashekimKodu,hekimKodu,ImajFTPServer : string;
   _medulaOrtam_ , WanIp,WanIpURL ,_firmaKod_ , osgbKodu : string;
   TakipDevam : boolean;
   AktifSirketAdi,AktifSirket ,AktifSube ,AktifSubeAdi,_donemSonlandir_ ,TenayMNTRequest , TenayBIORequest , DyobRequest , _database , _Tip : string;
   CentroResponse ,SMSHesapFrom,SMSHesapUser,SMSHesapSifre , AlpemixRun,AlpemixGrupAdi,AlpemixGrupParola : string;
   SMTPSunucu,SMTPUserName,SMTPPassword,SMTPPort : string;
   _kurumKod  , _donemgoster : integer;
   _YazilimGelistirici : integer;
   LisansBitis,LisansBasla,LisansTarih : string;
   LisansLimit : integer;
   Bilgi : THastaKabul;
   TarihAralik : TTarihAralik;
   GelisDuzenleRecord : TGelisDuzenle;
   SeansBilgi : TDigerIslemTalep;
   ReceteSatir : TReceteSatir;
   ReceteAciklama : TAck;
   YeniRecete : TYeniRecete;
   Risk : TRiskRecord;
   SahaDenetim : TSahaDenetim;
   KKD : TKKDREcord;
   SeansOlusturPrm : TSeansOlusturPrm;
   TeleEkg : TTeleEKG;
   PersonelTetkikler : TPersonelTetkikler;
   yardimciIslemMethod: string;
   DigerIslemTalebi : TDigerIslemTalep;
   ProgTarih : string;
   HastaBil : THasta;
   YillikCalismaPlan : TYillikCalismaPlani;
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
   eFaturaUrl : string;
   portalUrl : string;
   efaturaUsername : string;
   efaturaSifre : string;
   portalUser : string;
   portalSifre : string;
   sirketlerUserFilter : string;
   GirisFormRecord : TGirisFormRecord;
   StandartFormCaption : String;
   YazilimFirma : String;
 //  Foto : TPngImage;
   Foto : TJpegImage;
   userTanimi : String;


   function QuerySelect (Q: TADOQuery; sql:string) : Boolean;overload;
  // function QuerySelect (sql:string;Q: TADOQuery = nil) : Boolean;overload;
   function QuerySelect (sql:string) : TADOQuery; overload;
   procedure QueryExec (sql : string = '');overload;
   function QueryExec (var Q: TADOQuery; const sql : string): Boolean;overload;
   function FindData (Q: TADOQuery; sql: string): integer;
   procedure Login;
 //  function WebErisimBilgi(slk,slb : string) : string;
   function KillTaskw(Dosyadi: string): integer;
   function UygulamaBaglantiTanimi : String;
    { Public declarations }
  end;

var
  DATALAR: TDATALAR;
  CommandLog : TstringList;

implementation

uses AnaUnit,kadir, NThermo;

{$R *.dfm}

function TDatalar.MasterBaglan(MasterKod : string ; var DB, OSGBDesc : string ; var YazilimGelistirici : integer; Server : string = ''; pSQLUserName : String = ''; pSQLPassword : String = '') : Boolean;
var
  ado : TADOQuery;
begin
  servername := Server;
  Master.Connected := false;
  Master.ConnectionString :=
  'Provider=SQLOLEDB.1;Password='+pSQLPassword+';Persist Security Info=True;User ID='+pSQLUserName+';Initial Catalog=OSGB_MASTER;Data Source='+servername+';Application Name=' + UygulamaBaglantiTanimi;
  Master.Connected := True;

  if Master.Connected = True then
  begin
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := Master;
      QuerySelect(ado,'select db, Tanimi, YazilimGelistirici from OSGB_TNM where OSGB_KOD = ' + QuotedStr(MasterKod));
      if not ado.Eof
      then Begin
        DB := ado.Fields[0].AsString;
        OSGBDesc := ado.Fields[1].AsString;
        YazilimGelistirici := ado.Fields[2].AsInteger;
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
        'Provider=SQLOLEDB.1;Password='+pSQLPassword+';Persist Security Info=True;User ID='+pSQLUserName+';Initial Catalog=' + _db_ +';Data Source='+servername+';Application Name=' + UygulamaBaglantiTanimi;
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

function TDATALAR.KillTaskw(Dosyadi: string): integer;
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
  iThermo : Integer;
begin
  try
    ShowThermo (iThermo, 'Parametreler ve ayarlar yükleniyor', 0, 23, 0);
    try
      ado := TADOQuery.Create(nil);
      try
        ado.Connection := datalar.ADOConnection2;
        if not UpdateThermo (0, iThermo, 'Wan IP URL') then Exit;
        WanIpURL := WebErisimBilgi('WIP','00');
        if not UpdateThermo (1, iThermo, 'Medula Ortamý') then Exit;
        _medulaOrtam_ := WebErisimBilgi('98','00');
        if not UpdateThermo (2, iThermo, 'Reçete URL Adresi') then Exit;
        if _medulaOrtam_ = 'Gerçek'
        Then begin
          receteURL := WebErisimBilgi('MDL','05');
        end
        Else
        begin
          receteURL := WebErisimBilgi('MDL','15');
        end;

        if WebErisimBilgi('EF','00') = 'Gerçek'
        Then begin
          efaturaURL := WebErisimBilgi('EF','02');
          efaturaUsername := WebErisimBilgi('EF','03');
          efaturaSifre := WebErisimBilgi('EF','04');
        end
        Else
        begin
          efaturaURL := WebErisimBilgi('EF','05');
          efaturaUsername := WebErisimBilgi('EF','06');
          efaturaSifre := WebErisimBilgi('EF','07');
        end;
        portalURL := WebErisimBilgi('EF','08');
        portalUSer := WebErisimBilgi('EF','09');
        portalSifre := WebErisimBilgi('EF','10');


        if not UpdateThermo (3, iThermo, 'Kurum Tesis Kodu') then Exit;
        _tesisKodu := WebErisimBilgi('99','00');
        _Kurumkod := strtoint(_tesisKodu);

        if not UpdateThermo (4, iThermo, 'Kullanýcý Adý') then Exit;
        _username := WebErisimBilgi('99','02');
        if not UpdateThermo (5, iThermo, 'Þifre') then Exit;
        _sifre := WebErisimBilgi('99','01');

        if not UpdateThermo (6, iThermo, 'Dönem Kullanýcýsý') then Exit;
        _donemuser := WebErisimBilgi('991','00');
        if not UpdateThermo (7, iThermo, 'Dönem Þifresi') then Exit;
        _donemsifre := WebErisimBilgi('991','01');
        if not UpdateThermo (8, iThermo, 'Dönem Göster / Gösterme') then Exit;
        _donemGoster := strtoint(ifThen(WebErisimBilgi('99','02') = 'Evet','1','0'));
        if not UpdateThermo (9, iThermo, 'Kurum SKRS') then Exit;
        _KurumSKRS_ := WebErisimBilgi('90','02');
        //_userSaglikNet_ := WebErisimBilgi('90','00');
        //_passSaglikNet_ := WebErisimBilgi('90','01');


        if not UpdateThermo (10, iThermo, 'Doktor bilgileri') then Exit;
        sql := 'select * from DoktorlarT where Kod = ' + QuotedStr(datalar.doktorKodu);
        datalar.QuerySelect(ado,sql);
        _doktorReceteUser := ado.fieldbyname('eReceteKullanici').AsString;
        _doktorRecetePas :=  ado.fieldbyname('eReceteSifre').AsString;



        if not UpdateThermo (11, iThermo, 'Kurum Bilgisi') then Exit;
        sql := 'SELECT MerkezKodu,MerkezAdi FROM merkezBilgisi';
        datalar.QuerySelect(ado,sql);
        _merkezAdi := ado.fieldbyname('merkezAdi').AsString;
        osgbKodu := ado.fieldbyname('merkezKodu').AsString;

        if not UpdateThermo (12, iThermo, 'Lisans Bilgileri') then Exit;
        LisansBilgileri(LisansTarih,LisansBasla,LisansBitis,kurum,LisansLimit);

        if not UpdateThermo (13, iThermo, 'lisans bilgileri 2') then Exit;
        sql := 'select SLVV from parametreler where slk = ''GA'' and SLB = ''00''';
        datalar.QuerySelect(ado,sql);
        LisansALUrl := ado.fieldbyname('SLVV').AsString;

        if not UpdateThermo (14, iThermo, 'SMS Kullanýcý Adý') then Exit;
        SMSHesapUser := WebErisimBilgi('SMS','00');
        if not UpdateThermo (15, iThermo, 'SMS Þifre') then Exit;
        SMSHesapSifre := WebErisimBilgi('SMS','01');
        if not UpdateThermo (16, iThermo, 'SMS Kimden') then Exit;
        SMSHesapFrom := WebErisimBilgi('SMS','02');


        if not UpdateThermo (17, iThermo, 'Alpemix 1') then Exit;
        sql := 'select SLX from parametreler where slk = ''00'' and SLB = ''UD''';
        datalar.QuerySelect(ado,sql);
        AlpemixRun := ado.fieldbyname('SLX').AsString;

        //sql := 'select SLXX from parametreler where slk = ''00'' and SLB = ''IS''';
        //datalar.QuerySelect(ado,sql);
        //ImajFTPServer := ado.fieldbyname('SLXX').AsString;

        if not UpdateThermo (18, iThermo, 'Alpemix grup adý') then Exit;
        AlpemixGrupAdi := WebErisimBilgi('UD','00');
        if AlpemixGrupAdi <> ''
        then begin
         // AlpemixGrupAdi := WebErisimBilgi('UD','00');
          if not UpdateThermo (19, iThermo, 'Alpemix Grup Parolasý') then Exit;
          AlpemixGrupParola := WebErisimBilgi('UD','01');
        end
        else
        begin
          AlpemixGrupAdi := 'DIYALIZLER';
          AlpemixGrupParola := 'Diyaliz123';
        end;

        if not UpdateThermo (20, iThermo, 'SMTP Suncu') then Exit;
        SMTPSunucu := WebErisimBilgi('EML','01');
        if not UpdateThermo (21, iThermo, 'SMTP User') then Exit;
        SMTPUserName := WebErisimBilgi('EML','02');
        if not UpdateThermo (22, iThermo, 'SMTP Password') then Exit;
        SMTPPassword := WebErisimBilgi('EML','03');
        //SMTPPort
      finally
        ado.Free;
      end;
    finally
      FreeThermo (iThermo);
    end;
  except

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
    try
      Result.Connection := ADOConnection2;

      Result.Close;
      Result.SQL.Clear ;
      if Copy(AnsiUppercase(sql) ,1, 6) = 'SELECT'
      Then sql := 'SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  '+ sql;
      Result.SQL.Add (sql);
  //    Q.Prepare;
      Result.Open;
    except
      FreeAndNil (Result);
      raise;
    end;
end;

function TDATALAR.UygulamaBaglantiTanimi: String;
begin
  Result := 'Mavi Nokta e-Reçete Masaüstü Uyg. v.'+versiyon;
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

procedure TDATALAR.AlisHTTPWebNode1BeforePost(const HTTPReqResp: THTTPReqResp;
  Data: Pointer);
var
 TimeOut : integer;
begin
  TimeOut := 0;
  InternetSetOption(Data, INTERNET_OPTION_RECEIVE_TIMEOUT,Pointer(@TimeOut),SizeOf(TimeOut));
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
