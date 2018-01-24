unit kadir;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Vcl.Controls, Consts,
  Dialogs, ADODB, registry, ComCtrls, StdCtrls, db, ExtCtrls,comObj,
  ShellApi, forms, data_modul, Grids,  Rio, SOAPHTTPClient,cxGridExportLink,
  xsbuiltIns,  Mask, Math, Printers,   zlib, StrUtils, Menus, SHDocVw,
  ActiveX, Buttons,  WinSvc, ImgList,wininet, types, kadirType, KadirLabel,jpeg, AdvGrid,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  cxDBLookupComboBox,winsock,  DBCtrlsEh, EncdDecd,cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDropDownEdit,MedEczane,
  IdCoderMIME, cxDataStorage, cxEdit, cxControls, cxGridCustomView, cxGridDBTableView,
  cxCheckListBox,cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxClasses,
  cxGroupBox, cxRadioGroup,cxGridLevel, cxGrid, cxCheckBox, cxImageComboBox, cxTextEdit, cxButtonEdit,
  cxCalendar,dxLayoutContainer, dxLayoutControl,cxPC, cxImage;


procedure SMSSend(tel : string; Msj : string = '';Kisi : string ='');
function WanIp(url : string = 'http://bot.whatismyipaddress.com') : string;
procedure RegYaz(dizi , diziDegeri : string ; openKey : string = '');
function RegOku(dizi : string ; openKey : string = '') : Variant;
function Songelis(DosyaNo: string): string;
// function HGBal : string;
// function MesajKontrol(id : string) : mesajBilgi;
function dosyaNoToSGKBilgi(DosyaNo: string): TSGKBilgileri;
function TcdenYasHesapla(tc: string): TYas;
procedure DateToXsdate(var xsDate: Txsdatetime; date: Tdatetime);
function tarihFarki(tarih1, tarih2: Tdate): TYas;
function HareketSiraNoHizmetAdi(siraNo, Tip: string): string;
function KurumBransi: string;
function KurumKodu: string;
function KurumBilgi: TDataset;
function TakipSistemdeVarmi(Takip: string): string;
function TakipTuruAdi(turu: string): string;
function NoktasizTarih(t: string): string;
function ProgramKontrol(_Tarih: string): Boolean;
function TarihKayit: Boolean;
function mesaj: string;
function REV: string;
function TesisTuruAdi(deger: string): string;
function ZorunluTel(Tel: string): Boolean;
function IcmalBlok(Tel: string): integer;
function StringKarakterSurusuTemizle (const sHamString, sTemizlenecekKarakterler: String): String;
function AktarimTelefonNoTemizle (const sHamTelefon: String): String;
function AktarimUyrukDuzelt (const sHamUyruk: String): String;

procedure Login;


// procedure TakipOku(_Takip : string;var Hasta : TTakipBilgisi);
function kullanici: string;
function GetDataForMuavin: string;
function AnaHesapAdi(AnaNo: string): string;
function Bugun: string;
procedure StartWork;
procedure EndWork;
function ListResult: string;
procedure Grid_Temizle(grid_adi: TStringGrid);
procedure Grid_TemizleRowNotDelete(grid_adi: TStringGrid);
function NextKontrol(frm_: TForm; var Key: Char): Boolean;
procedure SetListResult(s: string);
function AddSpaceLeft(s: string; l: integer): string;
function AddSpaceRight(s: string; l: integer): string;
function Tarih(t: string): string;
function FormattedTarih(t: string): string;
function FormattedTarihYYMMGG(t, s: string): string;
function numTOtxt_M(d: extended; p: integer): string;
function ShowMessage(msg1, msg2, msg3: string; t: string): word;
function ShowMessageSkin(msg1, msg2, msg3: string; t: string): word;
function ShowPopupForm(Caption : string ; Tag : integer): word; overload;
function ShowPopupForm(Caption : string ; Tag : integer ; Form : TForm): word;overload;
function tarihyap(t: string): Tdate;
function tarihal(t: Tdate): string;
function SayisalVeri(alan: Tlabelededit; var Key: Char): Boolean;
function BuyukHarf(var Key: Char): Boolean;
Function yaz(islem: string; Tarih: Tdate; hesapkodu: string; tutarb: real;
  tutara: real; conn: string): string;
Function bakim(b: TADOConnection; donem: string): string;
Function serverismi(katalog: string): string; overload;
Function serverismi(Adres, katalog: string): string; overload;

Function servertip(): string;
function Zorunlu(_frm: TForm; var myhint: string): Boolean; overload;
function Zorunlu(_pnl: TPanel; var myhint: string): Boolean; overload;

procedure ItemsDoldurName(name: string; var c: TStrings);
procedure ItemsDoldurDoktorlar(name: string; var c: TStrings);

procedure ComboDoldurName(sql: string; c: TComboBox); overload;
procedure ComboDoldurName(sql: string; c: TcxComboBox); overload;

procedure ComboDoldur(Q: TADOQuery; sql: string; c: TComboBox); overload;



procedure ComboDoldur2(Q: TADOQuery; sql: string; c: TComboBox; alan: integer;
  alan2: integer); overload;


procedure ComboDoldur3(sql: string; c: TcxComboBox; alan: integer;
  alan2: integer);



function tariharalikkontrol(Tarih: Tdate; donem: string): string;
function aktifdonem: string;


function DonemSeansSayisi(kod, donem, durum: string): integer;
function TakipKontrolDonemSeansSayisi(donem: string; var P704230, P704233,
  P704234: integer): integer;

function secilisatirbilgisi(Grid: TAdvStringGrid; col: integer;
  col1: integer): string;
function notsecilisatirbilgisi(Grid: TAdvStringGrid; col: integer;
  col1: integer): string;

function secilisatirsayisiCx(Grid: TcxGridTableView; col: integer): integer;


procedure GorselAyar(_frm: TForm; image: TImageList);
function KucukHarfTRK(str: string): string;



function ControlTarih(t: string): integer;
procedure XlsBeginStream(XlsStream: TStream; const BuildNumber: word);
procedure XlsEndStream(XlsStream: TStream);
procedure XlsWriteCellRk(XlsStream: TStream; const ACol, ARow: word;
  const AValue: Integer);
procedure XlsWriteCellNumber(XlsStream: TStream; const ACol, ARow: word;
  const AValue: double);
procedure XlsWriteCellLabel(XlsStream: TStream; const ACol, ARow: word;
  const AValue: string);
function txtTOtxt_M(txt: string): string;
function AllignRight(s: string): string;
function hesapbakiye(hesap: string): real;
function _HesapAdi(hesapkodu: string): string;
function ayliktarih(Tarih: Tdate): Tdate; overload;
function ayliktarih(Tarih: Tdate; var t1: Tdate): Tdate; overload;
function ayliktarih(Tarih: Tdate; t1: TcxCustomDateEdit): Tdate; overload;
function ayliktarih2(ayadi: string; _yil_: string = ''): Tdate;
function ayaditoay(ayadi: string; yil: string = ''): Tdate;
function aytoayadi(_ay: Tdate): String;
function sirket(donem: string): string;
function HesapTanimGetir(_kod: string): string;
function PosHesapGetir(_kod: string): string;
function AktifYil(donem: string): string;
function CheckModulIslem (const pModul, pIslem: String):Boolean;
function UserRight(M, Islem: string): Boolean;
procedure UserRightInsert(M, Islem , User: string);
function Sifrele(s: string): string;
function bransAdi(_kod: string): string;
function tesisAdi(_kod: string): string;
procedure Disabled(_form: TForm);

procedure EnabledEdit(_form: TForm);
procedure ReadOnlyd(_form: TForm);
procedure ReadOnlydFalse(_form: TForm);
function Kurumadi(_kurum: string): string;
function merkezAdi(_kurum: string): string;
function CariAd(_cariKod: string): string;
procedure ilComboDoldur(combo: TComboBox);
function TarihKontrolu(_Tarih: String): Boolean;
Function DosyaKopyala(sSrc: string; sDest: string): integer;
procedure tarihata(tarih1, tarih2: TcxDateEditKadir; ayadlari: TcxComboBox);overload;
procedure tarihata(tarih1, tarih2: TDateTimePicker; ayadlari: TComboBox);
  overload;
procedure tarihata(tarih1, tarih2: TEdit; ayadlari: TComboBox);
  overload;

function GuncelKontrol: string;
function sorguTuruAdi(_kod: string): string;
function taburcuKoduAdi(_kod: string): string;
// procedure TakipBilgiOku(_Takip : string;var Hasta : TTakipBilgisi);

function TakiplerToHint(DosyaNo: string): String;
function gelisToTakip(DosyaNo, GelisNo: string): String;
// function TeyitNoBul(_Takip : string) : string;

function doktorTescil(kod: string): string;
function doktorTesciltokod(Tescil: string): string;
function doktorSertifika(kod: string): string;
function doktorSertifikaNo(kod: string): string;
function TescildoktorBul(doktor: string): string;
function doktorTescilToTC(kod: string): string;
function doktorSertifikaTescil(Tescil: string): string;
function doktorTCtoKod(tc: string): string;
function TaniKodToTaniAd(kod: string): string;
function doktorTC(kod: string): string;
function doktorAdi(kod: string): string;

function doktorEReceteUser(kod: string; var user: string;
  var pass: string): string;



function raporTakipNobul(DosyaNo: string): string;
function raporTakipNoToraporNo(raporTakipNo: string): string;
function doktorBrans(kod: string): string;
function doktorReceteBrans(kod: string): string;
function LocalIP(var IP: string): Boolean;
function GetLocalHostName(var pHostName: string): Boolean;
procedure HTTPbaglan(HTTP: THTTPRIO);
// procedure HastaTakipBulP(Bilgi : THastaKabul;tarih1,tarih2 : string);
//procedure datasetiDoldur(_takipNo, tedaviTuru, _basvuru: string);
function StringMaskele(pass: string; Mode: Boolean): String;
function InternetVarmi: Boolean;
function seansgun(_dosyaNo: string): string;
function EnSonRunTarih: Boolean;
function LisansBilgileri(var Tarih, basla, bitis, kurum: string;
  var limit: integer): Boolean;
function LisansKontrol(var fark: double): Boolean;
procedure EditTemizle(_form: TForm);
function ResimVarMi(DosyaNo, gonderenForm: string): Boolean;
function HizmetKoduToHizmetAdi(kod: string): string;
function HizmetFiyat(kod: string): real;
function EK10C(code: string): Boolean;
procedure Split(const Delimiter: Char; Input: string; const Strings: TStrings);
function medulaHataCozumBul(hatakodu: string): string;
function gunAdi(_gun: integer): string;

function idealKilo(_dosyaNo: string): double;
function SonSeansGCKilo(_dosyaNo, GelisNo: string; var g, c: double): double;
function BirOncekiSeansGCKilo(_dosyaNo, GelisNo, id: string;
  var g, c: double): double;
function HastaBilgiProtokolCaptionYaz(DosyaNo, GelisNo: string): string;

function KodEslestir(kod: string; var Tip: string; turId: string = '0'): string;
// function KodEslestir(kod : string ; var tip : string ; turId : string ; test : string ; parametre : string) : string;overload;

function KodEslestirNormalDeger(kod: string; turId: string;
  var minD, maxD, Tip: string): string;
function KodEslestirKod(kod: string; var ckod, turId: string): string;
function KodEslestirLabKodu(kod: string; var ckod: string): string;
procedure comboList(_form: TForm);
procedure ComboEkle(Tip, ifade: string);
procedure ComboSil(Tip, ifade: string);
procedure SeperatorDegis;
procedure YetkinizYok;

procedure KeyPressGrid(Sender: TcxGridDBTableView; var Key: Char;
  var arama: string; colum: integer);
function SaticiFirmaBul(cariKod: string): string;

function MuhasebeKayitTipi(cariKod: string): integer;
function HizmetFaturaBul(Id: string): Boolean;
function stokFaturaBul(Id: string): Boolean;

function kareBarkodOku(Kb: string; Gsindex: integer): TKareBarkod;
function TestKodToNormalDeger(kod, yas, cins: string; deger: double): Boolean;
function SgKTipEslestirKod(kod: string): string;
function DiyalizPaketiUygula(DosyaNo, GelisNo, sablonId: string): integer;
procedure EpikrizYaz(DosyaNo, GelisNo : string; QR: Boolean ; DataSet : Tdataset = nil);
procedure ImzaFoyleriYaz;
procedure MenuIDRun(MenuId : integer);
function sureKontrol: Boolean;
function RaporGecerlimi(_dosyaNo: string): double;
function IlacReceteAciklama(_dosyaNo, GelisNo, kod, doz: string): tstringlist;
function IlacReceteTaniEkle(_dosyaNo, GelisNo, kod: string): String;
function IlacKoduToUnite(code, dosya, gelis: string;
  var peryot, peryotAdet: string): real;
function SeansKontrol(s, mn, t: string; DosyaNo: string = ''): string;
function StokBul(_kodu: string; var Birim: string; var kdv: integer): string;
function DosyaNoTC(DosyaNo: string): string; overload;
function DosyaNoTC(DosyaNo: string; var idealKilo: string): string; overload;
function DosyaNoHastaAd(DosyaNo: string): string;
function DosyaNoTel(DosyaNo: string; Telefon : string = ''): string;

function receteIlacBilgisiGetir(barkod: string): TReceteIlacBilgisi;
function provizyonTakipTiptoReceteTip(Tip: string): integer;
function HastaBilgiProtokolCaptionYazSeans(DosyaNo, GelisNo, SeansNo: string)
  : string;
procedure KeyPressGridF(Sender: TcxGridDBTableView; var Key: Char;
  var arama: string; colum: integer; F: Boolean);
procedure FilterGrid(Sender: TcxGridDBTableView; var Key: string;
  var arama: string; colum: integer; F: Boolean);

function cxCheckListSecili(c: TcxCheckListBox): string;
procedure cxCheckListSec(cL: TcxCheckListBox; c: string);
function cxCheckListSecili01(c: TcxCheckListBox): string;
procedure cxCheckListSec01(cL: TcxCheckListBox; c: string);
function protokolGuncelle(Id, protokolNo, doktor: string): Boolean;
function doktorKlinikKoduSaglikNet(doktor: string): string;
function EnsonRaporProtokolNo: integer;
function EnsonSeansProtokolNo(SirketKod,SubeKod: string): string;
function InputBoxM(const ACaption, APrompt, ADefault: string): string;
function InputQueryM(const ACaption, APrompt: string;
  var Value: string): Boolean;
function TCKontrol(const tcId: string): Boolean;
function MernisUserPass(var userid: string; var pasword: string): Boolean;
procedure strtostrings(ayirac: string; text: string; const Strings: TStrings);
function YedeklemeUyari: integer;
procedure Sonucyaz(s, Takip: string; x: integer; hatalar: tstringlist);
function TCtoAd(tc: string): string;
function TCtoDosyaNo(tc: string): string;
function KanAlimTarihi(DosyaNo, GelisNo: string): string;
procedure GonderimMesaj(msj, filename: string);
function TCdenDosyaNoGelisNo(tc, tarih1, tarih2: string;
  var DosyaNo, GelisNo, id: string): integer;
function EncodeFile(const filename: string): AnsiString;
function FIleToByteArray(const filename: string): TByteDynArray;
function TrtoEng(str: string): string;
function Encode64(s: string): string;
function Decode64(s: string): string;
function sutKodu(Tip: string = '0'): string;
procedure GssOkuBilgisiTemizle(Takip: string);
procedure ScreenShot(DestBitmap: TBitmap);
function BMPtoJPG(var BMPpic, JPGpic: string): Boolean;
function SQL_Host(var server: string; var user: string; var password: string;
  var db: string): Boolean;
procedure SQL_Host_Baglan;
function ayinSonGunu(_now_: Tdate): Tdate;
procedure CompressFiles(Files: TStrings; const filename: String);
procedure DecompressFiles(const filename, DestDirectory: String);
procedure DosyaKopyalaAP(_from_, _to_: string);
procedure DosyaCopy(_from_, _to_: string);
function ServiceStart(sMachine, sService: string): Boolean;
function ServiceStop(sMachine, sService: string): Boolean;
function HastaKabul0543HatasiTakipAl(SonucMesaj: string): string;
function DoktorSeansHastaSayiKontrol(doktor, seans, Tarih: string): Boolean;
function HastaOlmusmu(DosyaNo: string): Boolean;
function TakipFaturadami(_Takip: string): Boolean;
function TurkCharKontrol(Text : string) : Boolean;
procedure GirisZamanYaz(KullaniciAdi : string);
function ListeAcCreate(TableName,kolonlar,kolonBasliklar,kolonGenislik,name,baslik,where : string;colcount : integer ; grup : boolean = false;Owner : TComponent = nil) : TListeAc;
procedure PopupMenuToToolBar(AOwner : TComponent; TB : TToolBar ; Menu : TPopupMenu);
procedure PopupMenuToToolBarEnabled(AOwner : TComponent ; TB : TToolbar ; Menu : TPopupMenu);
function KontrolUsers(FormTag,KontrolTag : string; kullanici : string) : Boolean;
function dosyaNoYeniNumaraAl(tip : string) : string;
function TakipMeduladanSil(TakipNo : string) : string;
function HastaKontrol(_dosyaNo : string) : boolean;
procedure BasvuruNoSistemeYaz(TakipNo,BasvuruNo : string);
procedure IlacTedaviKarti(dosyaNo,gelisNo,Tarih : string ; islem : integer = 99999);
function HastaGelis(dosyaNo : string ; var ado : TADOQuery) : integer;
function HastaGelisSelect(dosyaNo : string ; var ado : TADOQuery) : integer;
procedure ReceteForm(dosyaNo,gelisNo : string);
procedure ImageComboItemAdd(value,Description : string;ImageCombo : TcxImageComboBox);
procedure GetBuildInfo(const AppName: string; var V1, V2, V3,V4: Word);
procedure MedEczaneGit(user,pasword,Tc : string);
procedure cxExceleGonder(grid : TcxGrid ; dosyaName : string);
procedure SifreDegistir(newSifre : string ; sifreTip : integer);  overload;
procedure SifreDegistir;overload;
procedure HastaBilgiRecordSet(Adi,Soyadi,Tc,Yas : string);
procedure HastaRapor(dosyaNo,gelisNo : string);
procedure Son6AylikTetkikSonuc(dosyaNo,Tarih : string);
procedure TetkikEkle(dosyaNo,gelisNo,Tarih : string);
procedure AdoQueryActiveYenile(ado : TADOQuery);
procedure PrintYap(raporKodu,caption,formId : string; Data: TDataSetKadir; yazdirmaTipi : TprintTip = pTNone);
procedure KanTetkikleri(dosyaNo,Tarih : string);
procedure KanTetkikleriDegerlendir(dosyaNo,gelisNo : string);
procedure ReceteIlacAckTaniEkleMedula(islem : integer ; dosyaNo,gelisNo,ereceteNo,id,doktor,taniKodu,ackId : string);
procedure TaniIlaciliskilendir(TaniKodu,kulyol,doz,adet,barkod : string);
procedure SendQueryString(QueryString: string);
function KontrolZorunlumu(formTag : integer;KontrolName : string) : Boolean;

function FormInputZorunluKontrolPaint(form : Tform ; Renk : TColor) : Boolean;
function NewTab(Page : TcxPageControl ; Name : string) : TcxTabSheet;overload;
function NewTab(Page : TcxPageControl;Tag : integer) : TcxTabSheet;overload;
function FindTab(Page : TcxPageControl ; Name : string) : Boolean;overload;
function FindTab(Page : TcxPageControl ; Tag : integer) : Boolean;overload;
function FindTabSheet(Page : TcxPageControl ; Name : string) : TcxTabSheet;
function GetOwningForm(Control: TComponent): TForm;
function GelisDuzenle(GelisBilgisi : TGelisDuzenle ; var Hata : string) : Boolean;
procedure AdoGelisEnabledMenuItem(Bar : TToolBar;Item : TMenuItem;Enabled : Boolean = True);
function FindToolButton(Bar : TToolBar ; ButtonName : String) : TToolButtonKadir;
procedure SatiriRenklendir(Grid: TAdvStringGrid; Satir, ColonSayisi: integer;  renk: tcolor);
//procedure TDISDoktorIDGetir(Tc : string ; var ID : integer);
function GridCellToString(Grid : TcxGridDBTableView; ColonName : string ; Row : integer) : Variant;
procedure GridCellSetValue(Grid : TcxGridDBTableView; ColonName : string ; Row : integer ; Value : Variant);
function SQLSelectToDataSet(Columns,Table,Where : string) : TADOQuery;
procedure ExceldenPersonelYukle;
procedure OnlineDestekOpen;
function IsNull (const s: String): Boolean;
procedure LisansUzat;
function SahaSaglikGozlemSil(const GozlemID: integer): Boolean;
function VeritabaniAlaninaFotografYukle(const sTableName, sKeyField, sImageField, sKeyValue: String): Boolean;
function VeritabaniAlanindanFotografYukle(const sTableName, sKeyField, sImageField, sKeyValue: String; var aImage: TcxImage): Boolean;
function FotografGoruntule (const aPicture: TPicture) : TModalResult;
function CombodanSectir (const sFormCaption, sComboCaption, sItemsList: String; var iItemIndex : Integer): Boolean;
procedure AdSoyadAyir (const pAdSoyad: String; var pAd, pSoyad : String);
function WebErisimBilgi(slk,slb : string) : string;
function DoktorReceteMedulaGonderimTip(doktor : string) : integer;
procedure DBUpdate;
function SirketSubeTehlikeSinifi(Sirket,Sube : string) : string;
function DBGridDialog (const pCaption: String; const aDataset: TDataset; aButtons : TMsgDlgButtons; aDefaultButton : TMsgDlgBtn) : TModalResult;
procedure BeginTrans (const aQuery : TADOQuery);
procedure RollBackTrans (const aQuery : TADOQuery);
procedure CommitTrans (const aQuery : TADOQuery);
function TranCount (const aQuery : TADOQuery): Integer;
function GetUserDoktorFilter (pFieldName : String = ''): String;
function GetUserIGUFilter (pFieldName : String = ''): String;
function HakikiAktifSube: String;
function SQLValue (const sValue: String): String;

const
  _YTL_ = 'YTL';
  _OTL_ = 'TRL';
  harfler = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGGHIJKLMNOPQRSTUVWXYZXW';
  SirketC = clMoneyGreen;
  SirketRC = clSilver;
  SirketR = clGray;
  _Modul = '';
  htCaptionBtn = htSizeLast + 1;
  WherePCSettingsKey = 'Software\MicroSoft\Windows\CurrentVersion\Explorer';
  WhereIESettingsKey = 'Software\MicroSoft\Internet Explorer';
  WhereControlPanel = 'Control Panel';
  IEPageSetup = 'PageSetup';

  SettingsSection = 'Shell Folders';
  Key_Personal = 'Personal';
  _SqlSelect_ = 'Select %s from %s where %s';
  {_insertPersonel_ = 'sp_YeniPersonelHastaKarti ' +
                     '@SirketKod = %0:s,' +
                     '@TCKIMLIKNO = %1:s,'+
                     '@HASTAADI = %2:s,'+
                     '@HASTASOYADI = %3:s,'+
                     '@CINSIYETI = %4:s,'+
                     '@MEDENI = %5:s,'+
                     '@BABAADI = %6:s,'+
                     '@ANAADI = %7:s,'+
                     '@EV_SEHIR = %8:s,'+
                     '@EV_TEL1 = %9:s,'+
                     '@EV_TEL2 = %10:s,'+
                 //    '@EMAIL = %s,'+
                     '@DOGUMYERI = %11:s,'+
                     '@DOGUMTARIHI = %12:s,'+
                     '@UYRUGU = %13:s,'+
                     '@baslangic = %14:s,'+
                     '@kanGrubu = %15:s,'+
                     '@USER_ID = %16:s,'+
                     '@Aktif = %17:s';{}


var
  strList: string;
  AktifRenk: tcolor = clYellow;
  ZorunluRenk: tcolor = clSkyBlue;
  OpsiyonRenk: tcolor = clWhite;
  KapaliRenk: tcolor = clSilver;
  _pnlUst: tcolor = clBtnFace;
  _pnlBaslik: tcolor = clSilver; // clBlack;
  _pnlBaslikYazi: tcolor = clBlack; // clWhite;
  _pnlOnay: tcolor = $00BA7E5A; // 12222042; //$00A56E3A;//clBackground;
  _pnlOnayYazi: tcolor = clWhite;
  gridrenk: tcolor = clBtnFace;
  gridYaziRenk: tcolor = clBlack;
  gridAktif: tcolor = clSkyBlue; // 12222042;//$00A56E3A;//clBackground;
  gridAktifYaziRenk: tcolor = clRed;
  sec: integer;
  DataForMuavin: string;
  MAX_NUM_LENGTH: integer;
  _kurumKod: integer;
  _username, _sifre: string;
  AramaText: string;
  v,sayfa : Variant;

implementation

uses message,AnaUnit,message_y,popupForm,rapor,TedaviKart,Son6AylikTetkikSonuc,
             HastaRecete,sifreDegis,HastaTetkikEkle,GirisUnit,SMS,LisansUzat,Update_G, DBGrids;

procedure DBUpdate;
begin
   Application.CreateForm(TfrmUpdate, frmUpdate);
   try
     frmUpdate.ShowModal;
   finally
     FreeAndNil (frmUpdate);
   end;
end;

function DoktorReceteMedulaGonderimTip(doktor : string) : integer;
var
  sql : string;
  ado : TADOQuery;
begin
   DoktorReceteMedulaGonderimTip := 0;
   ado := TADOQuery.Create(nil);
   try
     ado.Connection := datalar.ADOConnection2;
     sql := 'select medulaGonderimTipi from doktorlarT '  +
            'where kod = ' + QuotedStr(doktor);
     datalar.QuerySelect(ado,sql);
     DoktorReceteMedulaGonderimTip := ado.Fields[0].AsInteger;
   finally
     ado.Free;
   end;
end;

function SirketSubeTehlikeSinifi(Sirket,Sube : string) : string;
var
  sql : string;
  ado : TADOQuery;
begin
   SirketSubeTehlikeSinifi := '';
   ado := TADOQuery.Create(nil);
   try
     ado.Connection := datalar.ADOConnection2;
     sql := 'select tehlikeSinifi from SIRKET_SUBE_TNM where sirketKod = ' + QuotedStr(Sirket) +
            ' and SubeKod = ' + QuotedStr(Sube);
     datalar.QuerySelect(ado,sql);
     SirketSubeTehlikeSinifi := ado.Fields[0].AsString;
   finally
     ado.Free;
   end;
end;


function WebErisimBilgi(slk,slb : string) : string;
var
  sql : string;
  ado : TADOQuery;
begin
   WebErisimBilgi := '';
   ado := TADOQuery.Create(nil);
   try
     ado.Connection := datalar.ADOConnection2;
     sql := 'select Value from WebServisErisimBilgileri '  +
            'where slk = ' + QuotedStr(slk) + ' and slb = ' + QuotedStr(slb);
     datalar.QuerySelect(ado,sql);
     WebErisimBilgi := ado.Fields[0].AsString;
   finally
     ado.Free;
   end;
end;

procedure LisansUzat;
begin
  Application.CreateForm(TfrmLisansBilgisi, frmLisansBilgisi);
  try
    frmLisansBilgisi.LisansBilgisi;
    frmLisansBilgisi.ShowModal;
  finally
    FreeAndNil (frmLisansBilgisi);
  end;
end;

procedure OnlineDestekOpen;
var
 filename : string;
 par : string;
 Handle : HWND;
begin
  filename := 'C:\OSGB\AlpemixCMX.exe';
  par :=  'Mavinoktabilgitek ' + datalar.AlpemixGrupAdi + ' ' + datalar.AlpemixGrupParola  + ' ' +  StringReplace((copy(merkezAdi(''),1,15) + ' - ' + datalar.username),' ','_',[rfReplaceAll]);
  ShellExecute(Handle,'open', pwidechar(filename),
                pwidechar(par), nil, SW_SHOWNORMAL);
end;

procedure ExceldenPersonelYukle;
var
  openD : TOpenDialog;
  dosya ,sql : string;
  sonsatir , x : integer;
begin
  openD := TOpenDialog.Create(nil);
  try
    if not openD.execute then Exit;
    dosya := openD.filename;
  finally
    openD.Free;
  end;

  v := CreateOleObject('Excel.Application');
  try
    v.Workbooks.Open(dosya);
    v.visible := true;//Exceli acip verileri goster
    sayfa := v.workbooks[1].worksheets[1];
  except
    v.DisplayAlerts := False;  //Excel mesajlarýný görünteleme
    v.Quit;
    v := Unassigned;
  end;

  sonsatir := v.Range[Char(96 + 1) + IntToStr(65536)].end[3].Rows.Row;

  {for x := 2 to sonsatir do
  begin

      sql := sql + ' ' + #13 + Format(_insertPersonel_,
                                       [datalar.AktifSirket,
                                       sayfa.cells[x,1],
                                       sayfa.cells[x,2],
                                       sayfa.cells[x,3],
                                       sayfa.cells[x,4],
                                       sayfa.cells[x,5],
                                       sayfa.cells[x,6],
                                       sayfa.cells[x,7],
                                       sayfa.cells[x,8],
                                       sayfa.cells[x,9],
                                       sayfa.cells[x,10],
                                       sayfa.cells[x,11],
                                       sayfa.cells[x,12],
                                       sayfa.cells[x,13],
                                       sayfa.cells[x,15],
                                       sayfa.cells[x,16],
                                       datalar.username,
                                       sayfa.cells[x,14]]);


  end;{}
end;

function RegOku(dizi : string ; openKey : string = '') : Variant;
var
   reg : tregistry;
   value : Variant;
begin
   reg := Tregistry.Create;
   try
     if isnull (openKey) then openkey := 'Software\NOKTA\NOKTA';

     reg.OpenKey(openKey,True);
     try
       value := reg.ReadString(dizi);
     finally
       reg.CloseKey;
     end;
   finally
     reg.Free;
   end;
   Result := value;
end;

procedure RegYaz(dizi , diziDegeri : string ; openKey : string = '');
var
  reg : tregistry;
begin
  reg := Tregistry.Create;
  try
    if IsNull (OpenKey) then OpenKey := 'Software\NOKTA\NOKTA';
    reg.OpenKey(openKey,True);
    try
      reg.WriteString(dizi,diziDegeri);
    finally
      reg.CloseKey;
    end;
  finally
    reg.Free;
  end;
end;

function WanIp(url : string = 'http://bot.whatismyipaddress.com') : string;
begin
    try
    datalar.WanIp := (datalar.HTTP1.Get(url));
  except
    datalar.WanIp := '';
  end;
  WanIp := datalar.WanIp;
end;

procedure SMSSend(tel : string; Msj : string = '';Kisi : string ='');
begin
  Application.CreateForm(TfrmSMS, frmSMS);
  try
    frmSMS.mesaj := Msj;
    frmSMS.MobilTel := tel;
    frmSMS.hasta := Kisi;
    frmSMS.ShowModal;
  finally
    freeandnil (frmSMS);
  end;
end;

function SQLSelectToDataSet(Columns,Table,Where : string) : TADOQuery;
var
  sql : string;
begin
  Result := TADOQuery.Create(nil);
  Result.Connection := datalar.ADOConnection2;
  sql := Format(_SqlSelect_,[Columns,Table,Where]);
  datalar.QuerySelect(Result,sql);
end;

function GridCellToString(Grid : TcxGridDBTableView; ColonName : string ; Row : integer) : Variant;
begin
  GridCellToString := '';
    GridCellToString := Grid.DataController.GetValue(
      Grid.Controller.SelectedRows[Row].RecordIndex,
        Grid.DataController.GetItemByFieldName(ColonName).Index);
end;
procedure GridCellSetValue(Grid : TcxGridDBTableView; ColonName : string ; Row : integer ; Value : Variant);
begin
 Grid.DataController.SetValue(
        Grid.Controller.SelectedRows[Row].RecordIndex,
          Grid.DataController.GetItemByFieldName(ColonName).Index,Value);
end;
(*
procedure TDISDoktorIDGetir(Tc : string ; var ID : integer);
var
  Cvp : DISWS.HEKIMSONUC;
  H : DISWS.HEKIM;
  sql : string;
  ado : TADOQuery;
begin
     //datalar.Login;
     datalar.DYOB.URL := datalar.DyopURL;
     try
         Cvp := (datalar.DYOB as KRIZMA_DIS_TREATMENTSERVICESoap).GETHEKIMLIST(datalar._DyobKurumKodu_,datalar._DyobSifre_,datalar._DyobServiceKodu_);
     except on e : Exception do
       begin
          ShowMessageSkin(e.Message,'','','info');
          exit;
       end;
     end;

     if Cvp.HATAVAR = True then
        ShowMessageSkin(Cvp.HATAMESAJI,'','','info');

     for H in Cvp.HEKIMLIST do
     begin
       if Tc = H.TCKIMLIK then ID := H.ID;
     end;
end;
  *)

procedure SatiriRenklendir(Grid: TAdvStringGrid; Satir, ColonSayisi: integer;
  renk: tcolor);
var
  x: integer;
begin
  for x := 0 to ColonSayisi do
  begin
    Grid.Colors[x, Satir] := renk;
  end;

end;

procedure AdoGelisEnabledMenuItem(Bar : TToolBar;Item : TMenuItem;Enabled : Boolean = True);
begin
   Item.Enabled := Enabled;
   TToolButton(Bar.FindComponent('ToolButton'+Item.Name)).Enabled := Enabled;
end;

function FindToolButton(Bar : TToolBar ; ButtonName : String) : TToolButtonKadir;
var
 I : integer;
begin
  FindToolButton := nil;
  for I := 0 to Bar.ButtonCount - 1 do
  begin
     if Bar.Buttons[I].Name = ButtonName
     then begin
       FindToolButton := TToolButtonKadir(Bar.Buttons[I]);
       Break;
     end;
  end;

end;

function GelisDuzenle(GelisBilgisi : TGelisDuzenle ; var Hata : string) : Boolean;
var
  ado : TADOQuery;
  sql : string;
begin
  try
   sql := 'update Gelisler set TakýpNo = ' + QuotedStr (GelisBilgisi.TakipNo) + ',' +
          'BHDAT = ' + QuotedStr (tarihal(GelisBilgisi.GirisTarihi)) + ',' +
          'CIKTAR = ' + QuotedStr (tarihal(gelisBilgisi.CikisTarih)) + ',' +
          'Doktor = ' + QuotedStr (gelisBilgisi.doktor) + ',' +
          'SERVIS = ' + QuotedStr(gelisBilgisi.BransKodu) + ',' +
          'taburcu = ' + QuotedStr(gelisBilgisi.TaburcuKodu) + ',' +
          'basvuruNo = ' + QuotedStr(GelisBilgisi.basvuruNo) + ',' +
          'PROTOKOLNO = ' + QuotedStr(gelisBilgisi.ProtokolNo) + ',' +
          'diyalizTedaviYontemi = ' + QuotedStr(gelisBilgisi.TedaviYontemi) + ',' +
          'yupass = ' + QuotedStr(gelisBilgisi.Yupass) +
          ' where dosyaNo = ' + QuotedStr (gelisBilgisi.dosyaNo) +
          ' and gelisNo = ' + gelisBilgisi.gelisNo;
   datalar.QueryExec(ado,sql);
   Result := True;
  Except on e : Exception do
   begin
    Hata := e.Message;
    Result := false;
   end;
  end;
end;

function GetOwningForm(Control: TComponent): TForm;
var
  LOwner: TComponent;
begin
  LOwner:= Control.Owner;
  while Assigned(LOwner) and not(LOwner is TCustomForm) do begin
    LOwner:= LOwner.Owner;
  end; {while}
  Result:= TForm(LOwner);
end;

function FindTab(Page : TcxPageControl ; Name : string) : Boolean;
var
  I: Integer;
begin
  FindTab := False;
  for I := 0 to Page.PageCount-1 do
  begin
    if Name = Page.Pages[I].Name then
    begin
      FindTab := True;
      Page.ActivePage := Page.Pages[I];
      Break;
    end;
  end;
end;

function FindTab(Page : TcxPageControl ; Tag : integer) : Boolean;
var
  I: Integer;
begin
  FindTab := False;
  for I := 0 to Page.PageCount-1 do
  begin
    if Tag = Page.Pages[I].Tag then
    begin
      FindTab := True;
      Page.ActivePage := Page.Pages[I];
      Break;
    end;
  end;
end;

function FindTabSheet(Page : TcxPageControl ; Name : string) : TcxTabSheet;
var
  I: Integer;
begin
  FindTabSheet := nil;
  for I := 0 to Page.PageCount-1 do
  begin
    if Name = Page.Pages[I].Name then
    begin
      FindTabSheet := Page.Pages[I];
      Page.ActivePage := Page.Pages[I];
      Break;
    end;
  end;
end;

function NewTab(Page : TcxPageControl;Name : string) : TcxTabSheet;
var
  Tab : TcxTabSheet;
begin
  Tab := TcxTabSheet.Create(Page);
  if Name <> '' Then Tab.Name := Name;
  Tab.Parent := Page;
  Page.ActivePage := Tab;
  NewTab := Tab;
end;

function NewTab(Page : TcxPageControl;Tag : integer) : TcxTabSheet;
var
  Tab : TcxTabSheet;
begin
  Tab := TcxTabSheet.Create(Page);
  if Tag <> 0 Then Tab.Tag := Tag;
  Tab.Parent := Page;
  Page.ActivePage := Tab;
  NewTab := Tab;
end;


function KontrolZorunlumu(formTag : integer;KontrolName : string) : Boolean;
var
  sql : string;
begin
   KontrolZorunlumu := False;
  // ado := TADOQuery.Create(nil);
  // ado.Connection := datalar.ADOConnection2;


   sql := 'select * from KontrolZorunlu where formTag = ' + inttostr(formTag) +
          ' and kontrolName = ' + QuotedStr(KontrolName);
   datalar.KontrolZorunlu.Filter := 'formTag = ' + inttostr(formTag) +
                                    ' and kontrolName = ' + QuotedStr(KontrolName);

 // KontrolZorunlumu := datalar.KontrolZorunlu.Eof;

  // datalar.QuerySelect(ado,sql);

   if not datalar.KontrolZorunlu.Eof
   then KontrolZorunlumu := True;

//   ado.Free;
end;




function FormInputZorunluKontrolPaint(form : Tform ; Renk : TColor) : Boolean;
var
 i : integer;
 _Obje_ : TcxCustomEdit;
begin
  for i := 0 to form.ComponentCount - 1 do
  begin
    if
       (form.Components[i].ClassName = 'TcxTextEdit') or
       (form.Components[i].ClassName = 'TcxTextEditKadir') or
       (form.Components[i].ClassName = 'TcxButtonEdit') or
       (form.Components[i].ClassName = 'TcxButtonEditKadir') or
       (form.Components[i].ClassName = 'TcxComboBox') or
       (form.Components[i].ClassName = 'TcxMemo') or
       (form.Components[i].ClassName = 'TcxImageComboBox') or
       (form.Components[i].ClassName = 'TcxImageComboKadir') or
       (form.Components[i].ClassName = 'TcxCheckBox') or
       (form.Components[i].ClassName = 'TcxCurrencyEdit') or
       (form.Components[i].ClassName = 'TcxDateEdit') or
       (form.Components[i].ClassName = 'TcxDateEditKadir') or
       (form.Components[i].ClassName = 'TcxCheckGroup')
    then Begin
        _obje_ := TcxCustomEdit(form.Components[i]);
        if KontrolZorunlumu(TForm(form).Tag,_Obje_.Name)
        then begin
          TcxCustomEdit(_Obje_).Style.Color := Renk;
        end;
    End;
   End; // for end

end;



procedure SendQueryString(QueryString: string);
var
  CopyDataStruct : TCopyDataStruct;
  receiverHandle: HWND;
  iTmpHandle : Integer;
begin
  receiverHandle := FindWindow(nil, 'NOKTA SQL MONITOR');
  if IsWindow(receiverHandle) then
  begin
    CopyDataStruct.dwData := 0;
    CopyDataStruct.cbData := 1 + Length(QueryString) ;
    CopyDataStruct.lpData := PChar(QueryString) ;
    iTmpHandle := 0;

    SendMessage(receiverHandle, WM_COPYDATA, Integer(Application.Handle) + iTmpHandle, Integer(@CopyDataStruct));
  end;
end;





procedure TaniIlaciliskilendir(TaniKodu,kulyol,doz,adet,barkod : string);
var
  sql : string;
  ado : TADOQuery;
begin
  try
    ado := TADOQuery.Create(nil);
    try
      sql := 'update ilacListesi set ICD = ' + QuotedStr(TaniKodu) +
             ',kulYol = ' + kulYol +
             ',doz = ' +  doz +
             ',adet = ' + adet +
             ' where barkod = ' + QuotedStr(barkod);
      datalar.QueryExec(ado,sql);
      ShowMessageSkin('Ýlaç Taný Ýliþkilendirildi','','','info');
    finally
      ado.Free;
    end;
  except on e : exception do
   begin
     ShowMessageSkin(e.Message,'','','info');
   end;
  end;
end;

procedure ReceteIlacAckTaniEkleMedula(islem : integer ; dosyaNo,gelisNo,ereceteNo,id,doktor,taniKodu,ackId : string);
var
  _dn_ ,_gn_ , _id_ , _d_ , _s , icd , _ackId_ : string;
  _exe : PAnsiChar;

begin
    _dn_ := dosyaNo;
    _gn_ := gelisNo;
    _s :=   ereceteNo;
    _id_ := id;
    _d_ := doktor;
    icd := taniKodu;
    _ackId_ := ackId;

    case islem of
    ReceteTaniEkleMedula :
       _exe :=  PAnsiChar(AnsiString('C:\NoktaV3\E-imza\imza.exe ' + 'EICD' + ' ' + _id_ + ' ' + _s + ' ' + _d_  + ' ' + datalar.AktifSirket + ' ' + icd));
    ReceteIlacAckEkleMedula :
       _exe :=  PAnsiChar(AnsiString('C:\NoktaV3\E-imza\imza.exe ' + 'EIACK' + ' ' + _id_ + ' ' + _s + ' ' + _d_  + ' ' + datalar.AktifSirket + ' ' + ackId));
    end;

    WinExec(_exe,SW_SHOW);

end;


procedure PrintYap(raporKodu,caption,formId : string; Data: TDataSetKadir; yazdirmaTipi : TprintTip = pTNone);
begin
  Application.CreateForm(TfrmRapor, frmRapor);
  try
    frmRapor.raporData1(Data ,raporKodu,caption,formId,yazdirmaTipi);
    if yazdirmaTipi = pTNone then frmRapor.ShowModal;
  finally
    FreeAndNil(frmRapor);
  end;
end;




procedure AdoQueryActiveYenile(ado : TADOQuery);
begin
 // bm := ado.Bookmark;
  ado.Active := false;
  ado.Active := True;
  //ado.GotoBookmark(bm);
end;

procedure KanTetkikleriDegerlendir(dosyaNo,gelisNo : string);
begin

end;

procedure KanTetkikleri(dosyaNo,Tarih : string);
begin

end;

procedure TetkikEkle(dosyaNo,gelisNo,Tarih : string);
begin
   (*
   if UserRight('TEDAVI KARTI', 'Tetkik Duzenle') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;
   *)
  Application.CreateForm(TfrmHastaTetkikEkle, frmHastaTetkikEkle);
  try
    frmHastaTetkikEkle._dosyaNo_ := dosyaNo;
    frmHastaTetkikEkle._gelisNO_ := gelisNo;
    frmHastaTetkikEkle.Sonuclar;
    frmHastaTetkikEkle._provizyonTarihi_ := Tarih;
    frmHastaTetkikEkle.ShowModal;
  finally
    freeAndNil(frmHastaTetkikEkle);
  end;
end;


procedure Son6AylikTetkikSonuc(dosyaNo,Tarih : string);
begin
  Application.CreateForm(TfrmSon6AylikTetkikSonuc, frmSon6AylikTetkikSonuc);
  try
    frmSon6AylikTetkikSonuc._dosyaNO_ := dosyaNo;
    frmSon6AylikTetkikSonuc._provizyonTarihi_ := Tarih;
    frmSon6AylikTetkikSonuc.Listele;
    frmSon6AylikTetkikSonuc.ShowModal;
  finally
    FreeAndNil(frmSon6AylikTetkikSonuc);
  end;
end;



procedure HastaBilgiRecordSet(Adi,Soyadi,Tc,Yas : string);
begin
  datalar.HastaBil.Adi := Adi;
  datalar.HastaBil.SoyAdi := Soyadi;
  datalar.HastaBil.TcKimlik := Tc;
  datalar.HastaBil.Yasi := Yas;
  datalar.Bilgi.Adi := Adi;
  datalar.Bilgi.tckimlikNo := Tc;
end;

procedure HastaRapor(dosyaNo,gelisNo : string);
begin
   if UserRight('Hasta Kartý', 'Rapor') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

end;


procedure SifreDegistir(newSifre : string ; sifreTip : integer);
begin
  Application.CreateForm(TfrmSifreDegis, frmSifreDegis);
  try
    frmSifreDegis.doktorKullanici := datalar.doktorKodu;
    frmSifreDegis.sifreTip := sifreTip;
    frmSifreDegis.ShowModal;
  finally
    FreeAndNil(frmSifreDegis);
  end;
end;

procedure cxExceleGonder(grid : TcxGrid ; dosyaName : string);
var
  SaveDlg : TSaveDialog;
begin
  SaveDlg := TSaveDialog.Create(nil);
  try
    SaveDlg.FileName := dosyaName;
    if not SaveDlg.Execute Then Exit;
    DosyaName := SaveDlg.FileName;
    try
      ExportGridToExcel(dosyaName,grid,False,True);
    except on e : Exception do
    begin
      ShowMessageSkin('Hata Oluþtu : ' + e.Message,'','','info');
      exit;
    end;
    end;
    ShowMessageSkin(DosyaName + ' ',' Baþarý ile Kaydedildi','','info');
  finally
    SaveDlg.Free;
  end;
end;


procedure MedEczaneGit(user,pasword,Tc : string);
begin
  Application.CreateForm(TfrmMedEczane, frmMedEczane);
  try
    frmMedEczane.yukle(user,pasword,Tc);
    frmMedEczane.ShowModal;
  finally
    freeandNil(frmMedEczane);
  end;
end;

procedure GetBuildInfo(const AppName: string; var V1, V2, V3,V4: Word);
var
  VerInfoSize, VerValueSize, Dummy: DWORD;
  VerInfo: Pointer;
  VerValue: PVSFixedFileInfo;
begin
  VerInfoSize:= GetFileVersionInfoSize(PChar(AppName), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(AppName), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
  V1:= dwFileVersionMS shr 16;
  V2:= dwFileVersionMS and $FFFF;
  V3:= dwFileVersionLS shr 16;
  V4:= dwFileVersionLS and $FFFF;
  end;
  FreeMem(VerInfo, VerInfoSize);
end;


procedure ImageComboItemAdd(value,Description : string;ImageCombo : TcxImageComboBox);
var
 ImageComboItem : TcxImageComboBoxItem;
begin
    ImageComboItem := ImageCombo.Properties.Items.Add as TcxImageComboBoxItem;
    ImageComboItem.Value := value;
    ImageComboItem.Description := Description;
end;

function HastaGelisSelect(dosyaNo : string ; var ado : TADOQuery) : integer;
var
  sql : string;
begin
   sql := 'select top 24 dosyaNo,gelisNo,cast(BHDAT as Datetime) Tarih,TakýpNo TakIpNo,TEDAVITURU,PROTOKOLNO from gelisler where dosyaNo = ' + QuotedStr(dosyaNo) + ' order by BHDAT desc';
   datalar.QuerySelect(ado,sql);
   HastaGelisSelect := ado.RecordCount;
end;

(*
procedure PersonelEgitimler;
begin
      IseGirisMuayene.Dataset.Connection := datalar.ADOConnection2;
      IseGirisMuayene.Dataset.SQL.Text := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(dosyaNo.Text)+ ',' +
                                                                         _gelisNO_ + ',' + QuotedStr('0');
      IseGirisMuayene.Dataset.Open;

end;
  *)

function HastaGelis(dosyaNo : string ; var ado : TADOQuery) : integer;
var
  sql : string;
begin
   sql := sp_HastaGelis + QuotedStr(dosyaNo);
   datalar.QuerySelect(ado,sql);
   HastaGelis := ado.RecordCount;
end;


procedure ReceteForm(dosyaNo,gelisNo : string);
begin
  (*
   if UserRight('TEDAVI KARTI', 'Reçete') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;
   *)
  // FormINIT(TagfrmSaglikNetOnline,OFShowModal);
  Application.CreateForm(TfrmHastaRecete, frmHastaRecete);
  try
    frmHastaRecete._dosyaNO_ := dosyaNo;
    frmHastaRecete._gelisNO_ := gelisNo;
    frmHastaRecete._HastaAdSoyad_ := datalar.Bilgi.Adi;
    frmHastaRecete._provizyonTarihi_ := datalar.Bilgi.ProvizyonTarihi;
    frmHastaRecete.ReceteGetir(dosyaNo,gelisNo);
    frmHastaRecete.ShowModal;
   // frmHastaRecete := nil;
  finally
    FreeAndNil(frmHastaRecete);
  end;
end;

procedure IlacTedaviKarti(dosyaNo,gelisNo,Tarih : string ; islem : integer = 99999);
begin



end;


procedure BasvuruNoSistemeYaz(TakipNo,BasvuruNo : string);
 var
  sql : string;
  ado : TADOQuery;
begin
  sql := 'update gelisler set basvuruNO = ' + QuotedStr(BasvuruNo) +
         ' where takýpNo = ' + QuotedStr(TakipNo);
  datalar.QueryExec(ado,sql);
end;

function HastaKontrol(_dosyaNo : string) : boolean;
var
  sql : string;
begin
   sql := 'select aktif from HastaKart where dosyaNo =  ' + QuotedStr (_dosyaNo);
   datalar.QuerySelect(datalar.ADO_SQL1,sql);
   if datalar.ADO_SQL1.FieldByName('Aktif').AsInteger > 0
   then result := True else result := false;
end;



function TakipMeduladanSil(TakipNo : string) : string;
begin

   if mrYes = ShowMessageSkin('Takip Ýptal Edilecek Emin misiniz ?','','','msg')
   then begin
  //       msg := TakipSil_3(TakipNo , datalar.HastaKabul);

   end;

end;

function dosyaNoYeniNumaraAl (tip : string) : string;
var
  ado : TADOQuery;
  sql : string;
begin
  ado := TADOQuery.Create(nil);
  try
    sql := 'declare @Dn varchar(6) set @Dn = DBO.KODAL('+ QuotedStr(tip) +') exec sp_DosyaNoYaz @Dn,@t = ' + QuotedStr(tip) +
           ' select @dn';
    datalar.QuerySelect(ado,sql);
    if not ado.Eof
    then
      dosyaNoYeniNumaraAl := ado.Fields[0].AsString
    else
      dosyaNoYeniNumaraAl := '0';
  finally
    ado.Free;
  end;
end;

function KontrolUsers(FormTag,KontrolTag : string ; kullanici : string) : Boolean;
var
  ado : TADOQuery;
  sql : string;
begin
  ado := TADOQuery.Create(nil);
  try
    sql := 'select * from KontrolUserSettings where kullanici = ' + QuotedStr(kullanici) +
           ' and formTag = ' + FormTag + ' and kontrolTag = ' + KontrolTag;
    datalar.QuerySelect(ado,sql);
    KontrolUsers := ado.Eof;
  finally
    ado.Free;
  end;
end;


procedure PopupMenuToToolBarEnabled(AOwner : TComponent ; TB : TToolbar ; Menu : TPopupMenu);
var
  mi : TMenuItem;
  TBBDown : TMenuItem;
  TBB : TToolButton;
  i,r : integer;
begin
  for mi in Menu.Items do
  begin
    if (mi.Visible = True) then
    begin
        for i := 0 to TB.ButtonCount - 1 do
        begin
          if mi.Tag = TB.Buttons[i].Tag then TB.Buttons[i].Enabled := mi.Enabled;
          if mi.Count > 0
          Then begin
            for r := 0 to mi.count - 1 do
            begin
              for TBBDown in TBB.DropdownMenu.Items do
              begin
                 if mi[r].Tag = TBBDown.Tag then TBBDown.Enabled := mi[r].Enabled;
              end;
            end;
          end;
        end;
    end;
  end;
end;

procedure PopupMenuToToolBar(AOwner : TComponent ; TB : TToolbar ; Menu : TPopupMenu);
var
  mi : TMenuItem;
  misub : TMenuItem;
  TBB : TToolButtonKadir;
  pmenu : TPopupMenu;
  i,r : integer;
begin

  TB.Images := Menu.Images;

  for r := 0 to Menu.Items.Count - 1 do
  begin
    mi := TMenuItem(Menu.Items[r]);
    TBB := FindToolButton(TB,'ToolButton'+mi.Name);
    if TBB <> nil
    then begin
     TBB.Enabled := mi.Enabled;
     Continue;
    end;
    if (mi.Visible = True) then
    begin
      TBB := TToolButtonKadir.Create(AOwner);
      if (mi.Caption = '-')
      then begin
        TBB.Style := tbsSeparator;
        TBB.Width := 10;
      end
      else begin
          TBB.Style := tbsButton;
          TBB.Height := 40;
          TBB.Width := 32;
          TBB.Hint := mi.Caption;
          TBB.ShowHint := True;
          TBB.Tag := mi.Tag;
          TBB.Enabled := mi.Enabled;
          TBB.Name := 'ToolButton'+mi.Name;
          TBB.ImageIndex := mi.ImageIndex;
          TBB.Modul := copy(mi.Hint,1,pos(',',mi.Hint)-1); //Modul
          TBB.Islem := copy(mi.Hint,pos(',',mi.Hint)+1,100); //Islem
          TBB.OnClick := mi.OnClick;
          TBB.Parent := TB;
        if mi.Count > 0
        Then begin
          TBB.Style := tbsDropDown;
          pmenu := TPopupMenu.Create(AOwner);
          pmenu.Images := menu.Images;
          for i := 0 to mi.count - 1 do
          begin
            misub := TMenuItem.Create(pmenu);
            misub.Caption := mi.Items[i].Caption;
            misub.ImageIndex := mi.Items[i].ImageIndex;
            misub.Tag := mi.Items[i].Tag;
            misub.Enabled := mi.Items[i].Enabled;
            //misub.Modul := mi.Items[i]. Modul;
          //  misub.Islem := mi.Islem;
            misub.hint := mi.Items[i].hint; //Modul,Islem
            misub.OnClick := mi.Items[i].OnClick;
            pmenu.Items.Add(misub);
           end;
          TBB.DropdownMenu := pmenu;
        end
        else  // if mi.count end
        begin

        end;
      end;
    end;
  end;
end;


function ListeAcCreate(TableName,kolonlar,kolonBasliklar,kolonGenislik,name,baslik,where : string;colcount : integer;Grup : boolean = false;Owner : TComponent = nil) : TListeAc;
var
  I : integer;
  lst : TstringList;
begin
  lst := TStringList.Create;
  try
    Result := TListeAc.Create(Owner);
    Result.Table := TableName;
    Result.ListeBaslik := baslik;
    Result.Kolonlar.Create;
    Split(',',kolonlar,lst);
    for I := 0 to lst.Count - 1 do Result.Kolonlar.Add(lst[I]);
    Result.Kolonlar.Create;
    lst.Clear;
    Split(',',kolonBasliklar,lst);
    for I := 0 to lst.Count - 1 do Result.KolonBasliklari.Add(lst[I]);
    Result.TColsW := kolonGenislik;
    Result.Name := name;
    Result.Where := where;
    Result.TColcount := colcount;
    Result.SkinName := AnaForm.dxSkinController1.SkinName;
    Result.Conn := datalar.ADOConnection2;
    Result.Filtercol := 1;
  finally
    lst.Free;
  end;
end;


procedure GirisZamanYaz(KullaniciAdi : string);
var
  sql : string;
  ADO : TadoQuery;
begin
  ado := TadoQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'UPDATE Users SET Saat = GETDATE() WHERE Kullanici = ' + QuotedStr(KullaniciAdi);
    datalar.QueryExec(ado,sql);
  finally
    ado.Free;
  end;
end;


function TurkCharKontrol(Text : string) : Boolean;
var
 I : integer;
begin
  for I := 1 to length(Text) do
  begin
    if pos(Text[I],harfler) = 0
    then result := True else result := false;
  end;

end;

function ServiceStart(sMachine, sService: string): Boolean;
var
  //
  // service control
  // manager handle
  schm,
  //
  // service handle
  schs: SC_Handle;
  //
  // service status
  ss: TServiceStatus;
  //
  // temp char pointer
  psTemp: PChar;
  //
  // check point
  dwChkP: DWord;
begin
  ss.dwCurrentState := 0;

  // connect to the service
  // control manager
  schm := OpenSCManager(PChar(sMachine), Nil, SC_MANAGER_CONNECT);

  // if successful...
  if (schm > 0) then
  begin
    // open a handle to
    // the specified service
    schs := OpenService(schm, PChar(sService),
      // we want to
      // start the service and
      SERVICE_START or
      // query service status
        SERVICE_QUERY_STATUS);

    // if successful...
    if (schs > 0) then
    begin
      psTemp := Nil;
      if (StartService(schs, 0, psTemp)) then
      begin
        // check status
        if (QueryServiceStatus(schs, ss)) then
        begin
          while (SERVICE_RUNNING <> ss.dwCurrentState) do
          begin
            //
            // dwCheckPoint contains a
            // value that the service
            // increments periodically
            // to report its progress
            // during a lengthy
            // operation.
            //
            // save current value
            //
            dwChkP := ss.dwCheckPoint;

            //
            // wait a bit before
            // checking status again
            //
            // dwWaitHint is the
            // estimated amount of time
            // the calling program
            // should wait before calling
            // QueryServiceStatus() again
            //
            // idle events should be
            // handled here...
            //
            Sleep(ss.dwWaitHint);

            if (not QueryServiceStatus(schs, ss)) then
            begin
              // couldn't check status
              // break from the loop
              break;
            end;

            if (ss.dwCheckPoint < dwChkP) then
            begin
              // QueryServiceStatus
              // didn't increment
              // dwCheckPoint as it
              // should have.
              // avoid an infinite
              // loop by breaking
              break;
            end;
          end;
        end;
      end;

      // close service handle
      CloseServiceHandle(schs);
    end;

    // close service control
    // manager handle
    CloseServiceHandle(schm);
  end;

  // return TRUE if
  // the service status is running
  Result := SERVICE_RUNNING = ss.dwCurrentState;
end;

function ServiceStop(sMachine, sService: string): Boolean;
var
  //
  // service control
  // manager handle
  schm,
  //
  // service handle
  schs: SC_Handle;
  //
  // service status
  ss: TServiceStatus;
  //
  // check point
  dwChkP: DWord;
begin
  // connect to the service
  // control manager
  schm := OpenSCManager(PChar(sMachine), Nil, SC_MANAGER_CONNECT);

  // if successful...
  if (schm > 0) then
  begin
    // open a handle to
    // the specified service
    schs := OpenService(schm, PChar(sService),
      // we want to
      // stop the service and
      SERVICE_STOP or
      // query service status
        SERVICE_QUERY_STATUS);

    // if successful...
    if (schs > 0) then
    begin
      if (ControlService(schs, SERVICE_CONTROL_STOP, ss)) then
      begin
        // check status
        if (QueryServiceStatus(schs, ss)) then
        begin
          while (SERVICE_STOPPED <> ss.dwCurrentState) do
          begin
            //
            // dwCheckPoint contains a
            // value that the service
            // increments periodically
            // to report its progress
            // during a lengthy
            // operation.
            //
            // save current value
            //
            dwChkP := ss.dwCheckPoint;

            //
            // wait a bit before
            // checking status again
            //
            // dwWaitHint is the
            // estimated amount of time
            // the calling program
            // should wait before calling
            // QueryServiceStatus() again
            //
            // idle events should be
            // handled here...
            //
            Sleep(ss.dwWaitHint);

            if (not QueryServiceStatus(schs, ss)) then
            begin
              // couldn't check status
              // break from the loop
              break;
            end;

            if (ss.dwCheckPoint < dwChkP) then
            begin
              // QueryServiceStatus
              // didn't increment
              // dwCheckPoint as it
              // should have.
              // avoid an infinite
              // loop by breaking
              break;
            end;
          end;
        end;
      end;

      // close service handle
      CloseServiceHandle(schs);
    end;

    // close service control
    // manager handle
    CloseServiceHandle(schm);
  end;

  // return TRUE if
  // the service status is stopped
  Result := SERVICE_STOPPED = ss.dwCurrentState;
end;

procedure DosyaCopy(_from_, _to_: string);
var
  FromF, ToF: File;
  NumRead, NumWritten: Longint;
  Buf: Array [1 .. 2048] of byte;
  //Total: Longint;
begin
  AssignFile(FromF, _from_);
  Reset(FromF, 1); { Record size = 1 }
  AssignFile(ToF, _to_); { Open output file }
  Rewrite(ToF, 1); { Record size = 1 }
  // Canvas.TextOut(10, 10, 'Copying ' + IntToStr(FileSize(FromF))
  // + ' bytes...');
  repeat
    BlockRead(FromF, Buf, SizeOf(Buf), NumRead);
    BlockWrite(ToF, Buf, NumRead, NumWritten);
    //inc(Total, NumWritten);
  until (NumRead = 0) or (NumWritten <> NumRead);
  CloseFile(FromF);
  CloseFile(ToF);

end;

procedure DosyaKopyalaAP(_from_, _to_: string);
Var
  FO: TSHFileOpStruct;
  Aborted: Boolean;
begin
  With FO Do
  Begin
    Wnd := Application.Handle;
    WFunc := FO_COPY;
    PFrom := PChar(_from_);
    pTo := PChar(_to_);
    FFlags := 0;
    fAnyOperationsAborted := Aborted;
  End;

  try
    SHFileOperation(FO);
  finally
  end;

end;

procedure DecompressFiles(const filename, DestDirectory: String);
var
  dest, s: String;
  decompr: TDecompressionStream;
  infile, outfile: TFilestream;
  i, l, c: Integer;
begin
  // IncludeTrailingPathDelimiter (D6/D7 only)
  dest := IncludeTrailingPathDelimiter(DestDirectory);
  infile := TFilestream.Create(filename, fmOpenRead);
  try
    { number of files }
    infile.Read(c, SizeOf(c));
    for i := 1 to c do
    begin
      { read filename }
      infile.Read(l, SizeOf(l));
      SetLength(s, l);
      infile.Read(s[1], l);
      { read filesize }
      infile.Read(l, SizeOf(l));
      { decompress the files and store it }
      s := dest + s; // include the path
      outfile := TFilestream.Create(s, fmCreate);
      try
        decompr := TDecompressionStream.Create(infile);
        try
          outfile.CopyFrom(decompr, l);
        finally
          decompr.Free;
        end;
      finally
        outfile.Free;
      end;
    end;
  finally
    infile.Free;
  end;
end;

procedure CompressFiles(Files: TStrings; const filename: String);
var
  infile, outfile, tmpFile: TFilestream;
  compr: TCompressionStream;
  i, l: Integer;
  s: String;
begin
  if Files.Count > 0 then
  begin
    outfile := TFilestream.Create(filename, fmCreate);
    try
      { the number of files }
      l := Files.Count;
      outfile.Write(l, SizeOf(l));
      for i := 0 to Files.Count - 1 do
      begin
        infile := TFilestream.Create(Files[i], fmOpenRead);
        try
          { the original filename }
          s := ExtractFilename(Files[i]);
          l := Length(s);
          outfile.Write(l, SizeOf(l));
          outfile.Write(s[1], l);
          { the original filesize }
          l := infile.Size;
          outfile.Write(l, SizeOf(l));
          { compress and store the file temporary }
          tmpFile := TFilestream.Create('tmp', fmCreate);
          try
            compr := TCompressionStream.Create(clMax, tmpFile);
            try
              compr.CopyFrom(infile, l);
            finally
              compr.Free;
            end;
          finally
            tmpFile.Free;
          end;
          { append the compressed file to the destination file }
          tmpFile := TFilestream.Create('tmp', fmOpenRead);
          try
            outfile.CopyFrom(tmpFile, 0);
          finally
            tmpFile.Free;
          end;
        finally
          infile.Free;
        end;
      end;
    finally
      outfile.Free;
    end;
    DeleteFile('tmp');
  end;
end;

function ayinSonGunu(_now_: Tdate): Tdate;
var
  y, M, d: word;
begin
  decodedate(_now_, y, M, d);
  M := M + 1;
  if M > 12 then
  begin
    y := y + 1;
    M := 1;
  end;
  Result := encodedate(y, M, 1) - 1;
end;

function BMPtoJPG(var BMPpic, JPGpic: string): Boolean;
var
  Bitmap: TBitmap;
  JpegImg: TJpegImage;
begin
  Result := False;
  if not Result then;;;
  Bitmap := TBitmap.Create;
  try
    Bitmap.LoadFromFile(BMPpic);
    JpegImg := TJpegImage.Create;
    try
      JpegImg.Assign(Bitmap);
      JpegImg.SaveToFile(JPGpic);
      Result := True;
    finally
      JpegImg.Free;
    end;
  finally
    Bitmap.Free;
  end;
end;

procedure ScreenShot(DestBitmap: TBitmap);
var
  DC: HDC;
begin
  DC := GetDC(GetDesktopWindow);
  try
    DestBitmap.Width := GetDeviceCaps(DC, HORZRES);
    DestBitmap.Height := GetDeviceCaps(DC, VERTRES);
    BitBlt(DestBitmap.Canvas.Handle, 0, 0, DestBitmap.Width, DestBitmap.Height,
      DC, 0, 0, SRCCOPY);
  finally
    ReleaseDC(GetDesktopWindow, DC);
  end;
end;

function FIleToByteArray(const filename: string): TByteDynArray;
const
  BLOCK_SIZE = 1024;
var
  BytesRead, BytesToWrite, Count: integer;
  F: FIle of byte;
  pTemp: Pointer;
begin
  AssignFile(F, filename);
  Reset(F);
  try
    Count := FileSize(F);
    SetLength(Result, Count);
    pTemp := @Result[0];
    BytesRead := BLOCK_SIZE;
    while (BytesRead = BLOCK_SIZE) do
    begin
      BytesToWrite := Min(Count, BLOCK_SIZE);
      BlockRead(F, pTemp^, BytesToWrite, BytesRead);
      pTemp := Pointer(LongInt(pTemp) + BLOCK_SIZE);
      Count := Count - BytesRead;
    end;
  finally
    CloseFile(F);
  end;
end;

procedure DateToXsdate(var xsDate: Txsdatetime; date: Tdatetime);
var
  yil: word;
  ay, gun: word;
begin
  decodedate(date, yil, ay, gun);
  xsDate.Year := yil;
  xsDate.Month := ay;
  xsDate.Day := gun;
end;

function EncodeFile(const filename: string): AnsiString;
var
  stream: TMemoryStream;

begin
  stream := TMemoryStream.Create;
  try
    stream.LoadFromFile(filename);

    Result := EncodeBase64(stream.Memory, stream.Size);
  finally
    stream.Free;
  end;
end;

function Encode64(s: string): string;
var
  IdEncoderMIME: TIdEncoderMIME;
begin
  IdEncoderMIME := TIdEncoderMIME.Create(nil);
  try
    Result := IdEncoderMIME.EncodeString(s);
  finally
    IdEncoderMIME.Free;
  end;
end;

function Decode64(s: string): string;
var
  IdDecoderMIME: TIdDecoderMIME;
begin
  IdDecoderMIME := TIdDecoderMIME.Create(nil);
  try
    Result := IdDecoderMIME.DecodeString(s);
  finally
    IdDecoderMIME.Free;
  end;
end;

function TrtoEng(str: string): string;
var
  s: string;
begin
  s := str;

  s := StringReplace(s, 'Ý', 'i', [rfReplaceAll]);
  s := StringReplace(s, 'Þ', 'S', [rfReplaceAll]);
  s := StringReplace(s, 'Ü', 'U', [rfReplaceAll]);
  s := StringReplace(s, 'Ð', 'G', [rfReplaceAll]);
  s := StringReplace(s, 'Ç', 'C', [rfReplaceAll]);
  s := StringReplace(s, 'Ö', 'O', [rfReplaceAll]);

  s := StringReplace(s, 'ý', 'i', [rfReplaceAll]);
  s := StringReplace(s, 'þ', 's', [rfReplaceAll]);
  s := StringReplace(s, 'ü', 'u', [rfReplaceAll]);
  s := StringReplace(s, 'ð', 'g', [rfReplaceAll]);
  s := StringReplace(s, 'ç', 'c', [rfReplaceAll]);
  s := StringReplace(s, 'ö', 'o', [rfReplaceAll]);

  Result := s;
end;

procedure GonderimMesaj(msj, filename: string);
begin
  if mryes = ShowMessageSkin('Hata : ' + msj,
    'Hatalý Gönderim Mesajýný Görmek Ýster misiniz', '', 'msg') then
    ShellExecute(0, 'open', PChar('iexplore.exe'), PChar(filename + '.xml'),
      nil, SW_SHOWNORMAL);
end;

function HastaOlmusmu(DosyaNo: string): Boolean;
var
  ado: TADOQuery;
  sql: string;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'SELECT * FROM hastakart WHERE dosyaNo = ' + QuotedStr(DosyaNo) +
      ' and substring(pasifSebeb,1,1) = ' + QuotedStr ('5');
    datalar.QuerySelect(ado, sql);

    if not ado.eof then
      HastaOlmusmu := True
    else
      HastaOlmusmu := False;
  finally
    ado.Free;
  end;
end;

function DoktorSeansHastaSayiKontrol(doktor, seans, Tarih: string): Boolean;
var
  ado: TADOQuery;
  sql: string;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select count(*) from gelisdetay where UTarih = ' + QuotedStr(Tarih)
      + ' and doktor = ' + QuotedStr(doktor) + ' and seans = ' + QuotedStr
      (seans) + ' and durum = 1';
    datalar.QuerySelect(ado, sql);

    if ado.Fields[0].Value >= 30 then
    begin
      DoktorSeansHastaSayiKontrol := False;
    end
    else
      DoktorSeansHastaSayiKontrol := True;
  finally
    ado.Free;
  end;
end;

function HastaKabul0543HatasiTakipAl(SonucMesaj: string): string;
var
  x1, x2: integer;
begin
  x1 := pos('[', SonucMesaj);
  x2 := pos(']', SonucMesaj);
  x1 := x1 + 1;

  HastaKabul0543HatasiTakipAl := copy(SonucMesaj, x1, x2 - x1);

end;

procedure GssOkuBilgisiTemizle(Takip: string);
var
  sql: string;
  ado: TADOQuery;
begin
  try
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;

      sql := 'delete from gssTakipOkuDiger where takipno = ' + QuotedStr(Takip);
      ado.sql.Clear;
      datalar.QueryExec(ado, sql);

      sql := 'delete from gssTakipOkuTahlil where takipno = ' + QuotedStr(Takip);
      ado.sql.Clear;
      datalar.QueryExec(ado, sql);

      sql :=
        'delete from gssTakipOkuTetkikvdRadyoloji where takipno = ' + QuotedStr
        (Takip);
      ado.sql.Clear;
      datalar.QueryExec(ado, sql);

      sql := 'delete from gssTakipOkuTahlilSonuc where takipno = ' + QuotedStr
        (Takip);
      ado.sql.Clear;
      datalar.QueryExec(ado, sql);
    finally
      ado.Free;
    end;
  except
    on e: exception do
    begin
      ShowMessageSkin(e.Message, '', '', 'info');
    end;
  end;
end;

function sutKodu(Tip: string = '0'): string;
var
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    if (Tip = '0') or (Tip = 'M') then
    begin
      datalar.DigerIslemTalebi.sutKodu := 'P704230';
      sutKodu := 'P704230';
    end
    else if (Tip = '4') or (Tip = '7') then
    begin
      datalar.DigerIslemTalebi.sutKodu := 'P704234';
      sutKodu := 'P704234';
    end
    else if (Tip = '3') or (Tip = 'E') then
    begin
      datalar.DigerIslemTalebi.sutKodu := 'P704233';
      sutKodu := 'P704233';
    end;
  finally
    ado.free;
  end;
  (*
    try
    sql := 'SELECT P704230 FROM GelisDetaySutKoduSayilari';
    datalar.QuerySelect(ado,sql);

    if ado.Fields[0].AsInteger >= 700
    then begin
    datalar.DigerIslemTalebi.sutKodu := 'P704234';
    SUTKODU := 'P704234';
    end
    else
    begin
    datalar.DigerIslemTalebi.sutKodu := 'P704230';
    SUTKODU := 'P704230';
    end;

    except
    ado.Close;
    ado.Free;
    exit;
    end;

    //  sql := 'select SLXX from parametreler where SLB = ''SUT'' and SLK = ''33''';
    //  datalar.QuerySelect(ado,sql);

    //    datalar.DigerIslemTalebi.sutKodu := ado.fieldbyname('SLXX').AsString;
    //    SUTKODU := ado.fieldbyname('SLXX').AsString;
    ado.Close;
    ado.Free;

    *)

end;

function TCdenDosyaNoGelisNo(tc, tarih1, tarih2: string;
  var DosyaNo, GelisNo, id: string): integer;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select h.dosyaNo,g.gelisNo,g.SIRANO from hastakart h ' +
      ' join gelisler g on g.dosyaNo = h.dosyaNo ' + ' where TCKIMLIKNO = ' +
      QuotedStr(tc) + ' and g.bhdat between ' + QuotedStr(tarih1)
      + ' and ' + QuotedStr(tarih2);
    datalar.QuerySelect(ado, sql);

    if not ado.eof then
    begin
      DosyaNo := ado.FieldByName('dosyaNo').AsString;
      GelisNo := ado.FieldByName('gelisNO').AsString;
      id := ado.FieldByName('SIRANO').AsString;
      TCdenDosyaNoGelisNo := 1;
    end
    else
      TCdenDosyaNoGelisNo := 0;
  finally
    ado.Free;
  end;
end;

function KanAlimTarihi(DosyaNo, GelisNo: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql :=
      'select UTarih from gelisDetay where KanAlindimi = 1 and dosyaNo = '
      + QuotedStr(DosyaNo) + ' and gelisNo = ' + GelisNo;

    datalar.QuerySelect(ado, sql);

    if not ado.eof then
      KanAlimTarihi := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;



function TCtoAd(tc: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'select HastaADI+'' '' +HASTASOYADI from hastakart where TCKIMLIKNO = ' + QuotedStr(tc);
    datalar.QuerySelect(ado, sql);

    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function TCtoDosyaNo(tc: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  Result := '';
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select dosyaNo from Personelkart where TCKIMLIKNO = ' + QuotedStr(tc);
    datalar.QuerySelect(ado, sql);
    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

procedure Sonucyaz(s, Takip: string; x: integer; hatalar: tstringlist);
var
  // hatali : TStringList;
  ado: TADOQuery;
  sql: string;

begin
  if s = '0000' Then
  Begin
    datalar.RxKayitliIslem.First;
    while not datalar.RxKayitliIslem.eof do
    Begin
      if datalar.RxKayitliIslem.FieldByName('hizmetSunucuRefNo')
        .AsString[1] = 'Y' Then
      Begin
        // gridYatak.Cells[8,gridYatak.row] := datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString;
        sql := 'update gelisDetay set islemSiraNoYatak = ' + QuotedStr
          (datalar.RxKayitliIslem.FieldByName('islemSiraNo').AsString)
          + ' where siraNoYatis = ' + QuotedStr
          (datalar.RxKayitliIslem.FieldByName('hizmetSunucuRefNo').AsString);
        datalar.QueryExec(ado, sql);
      End
      Else if datalar.RxKayitliIslem.FieldByName('hizmetSunucuRefNo')
        .AsString[1] = 'T' Then
      Begin
        sql := 'update Anamnez_Icd set islemSiraNo = ' + QuotedStr
          (datalar.RxKayitliIslem.FieldByName('islemSiraNo').AsString)
          + ' where ID = ' + copy(datalar.RxKayitliIslem.FieldByName
            ('hizmetSunucuRefNo').AsString, 2, 15);
        datalar.QueryExec(ado, sql);
      End
      Else if datalar.RxKayitliIslem.FieldByName('hizmetSunucuRefNo')
        .AsString[1] = 'L' Then
      Begin
        sql := 'update hareketler set islemSiraNo = ' + QuotedStr
          (datalar.RxKayitliIslem.FieldByName('islemSiraNo').AsString)
          + ' where SIRANO = ' + copy(datalar.RxKayitliIslem.FieldByName
            ('hizmetSunucuRefNo').AsString, 2, 15);
        datalar.QueryExec(ado, sql);
      End
      Else if datalar.RxKayitliIslem.FieldByName('hizmetSunucuRefNo')
        .AsString[1] = 'M' Then
      Begin
        sql := 'update hareketlerIS set islemSiraNo = ' + QuotedStr
          (datalar.RxKayitliIslem.FieldByName('islemSiraNo').AsString)
          + ' where SIRANO = ' + copy(datalar.RxKayitliIslem.FieldByName
            ('hizmetSunucuRefNo').AsString, 2, 15);
        datalar.QueryExec(ado, sql);
      End
      Else if datalar.RxKayitliIslem.FieldByName('hizmetSunucuRefNo')
        .AsString[1] = 'P' Then
      Begin
        // gridGelisler.Cells[8,gridGelisler.row] := datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString;
        sql := 'update gelisDetayPeriton set TalepSira = ' + QuotedStr
          (datalar.RxKayitliIslem.FieldByName('islemSiraNo').AsString)
          + ' where siraNo = ' + copy(datalar.RxKayitliIslem.FieldByName
            ('hizmetSunucuRefNo').AsString, 2, 15);
        datalar.QueryExec(ado, sql);
      End
      Else
      Begin
        // gridGelisler.Cells[8,gridGelisler.row] := datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString;
        sql := 'update gelisDetay set TalepSira = ' + QuotedStr
          (datalar.RxKayitliIslem.FieldByName('islemSiraNo').AsString)
          + ' where siraNo = ' + datalar.RxKayitliIslem.FieldByName
          ('hizmetSunucuRefNo').AsString;
        datalar.QueryExec(ado, sql);
      End;
      datalar.RxKayitliIslem.Next;
    End;
  End;
end;

function TcdenYasHesapla(tc: string): TYas;
var
  sql: string;
  ado: TADOQuery;
  Tarih: string;
  tt: Tdate;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    try
      sql := 'select DOGUMTARIHI from hastakart where TCKIMLIKNO = ' + QuotedStr
        (tc);
      datalar.QuerySelect(ado, sql);

      Tarih := ado.Fields[0].AsString;
      tt := tarihyap(Tarih);
      TcdenYasHesapla := tarihFarki(date, tt);
    except
    end;
  finally
    ado.Free;
  end;
end;

function tarihFarki(tarih1, tarih2: Tdate): TYas;
var
  aylik, gunluk: double;
  fyil, ay: integer;
  farkGun: double;
begin
  //yil1 := strtoint(copy(tarihal(tarih1), 1, 4));
  //yil2 := strtoint(copy(tarihal(tarih2), 1, 4));
  farkGun := (tarih1 - tarih2);

  fyil := floor((tarih1 - tarih2) / 365.25);
  aylik := (floor(farkGun) mod 365);
  ay := floor(aylik / 30);
  gunluk := (floor(aylik) mod 30);

  tarihFarki.yil := fyil;
  tarihFarki.ay := ay;
  tarihFarki.gun := floor(gunluk);

  // result := tarihFarki;
end;

function YedeklemeUyari: integer;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select slx , datediff(d,cast(SLVV as datetime),getdate()), ' +
      ' SLVV from parametreler where slk = ' + QuotedStr ('30') + ' and slb = ' + QuotedStr ('02');

    datalar.QuerySelect(ado, sql);

    if ado.Fields[1].asinteger >= ado.Fields[0].asinteger Then
      YedeklemeUyari := ado.Fields[1].asinteger
    Else
      YedeklemeUyari := 0;
  finally
    ado.Free;
  end;
end;

procedure strtostrings(ayirac: string; text: string; const Strings: TStrings);
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select datavalue from dbo.strtotable(' + QuotedStr(text)
      + ',' + QuotedStr(ayirac) + ')';
    datalar.QuerySelect(ado, sql);

    Strings.Clear;
    while not ado.eof do
    begin
      if Length(ado.Fields[0].AsString) > 0 then
        Strings.Add(ado.Fields[0].AsString);
      ado.Next;
    end;
  finally
    ado.Free;
  end;
end;

function Songelis(DosyaNo: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select max(gelisNo) from gelisler where dosyaNo = ' + QuotedStr
      (DosyaNo);
    datalar.QuerySelect(ado, sql);

    if ado.eof then
      Result := '1'
    else
      Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function MernisUserPass(var userid: string; var pasword: string): Boolean;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select SLB,SLT from parametreler where SLk = ' + QuotedStr ('97');
    datalar.QuerySelect(ado, sql);

    if ado.eof then
    begin
      Result := False;

    end
    else
    begin
      Result := True;
      userid := ado.FieldByName('SLB').AsString;
      pasword := ado.FieldByName('SLT').AsString;
    end;
    ado.close;
  finally
    ado.Free;
  end;
end;

function GetAveCharSize(Canvas: TCanvas): TPoint;
{$IF DEFINED(CLR)}
var
  I: Integer;
  Buffer: string;
  Size: TSize;
begin
  SetLength(Buffer, 52);
  for I := 0 to 25 do
    Buffer[I + 1] := Chr(I + Ord('A'));
  for I := 0 to 25 do
    Buffer[I + 27] := Chr(I + Ord('a'));
  GetTextExtentPoint(Canvas.Handle, Buffer, 52, Size);
  Result.x := Size.cx div 52;
  Result.y := Size.cy;
end;
{$ELSE}

var
  I: Integer;
  Buffer: array [0 .. 51] of Char;
begin
  for I := 0 to 25 do
    Buffer[I] := Chr(I + Ord('A'));
  for I := 0 to 25 do
    Buffer[I + 26] := Chr(I + Ord('a'));
  GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
  Result.x := Result.x div 52;
end;
{$IFEND}

function InputQueryM(const ACaption, APrompt: string;
  var Value: string): Boolean;
var
  Form: TForm;
  Prompt: TLabel;
  Edit: TEdit;
  DialogUnits: TPoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
begin
  Result := False;
  Form := TForm.Create(Application);
  with Form do
    try
      Canvas.Font := Font;
      DialogUnits := GetAveCharSize(Canvas);
      BorderStyle := bsDialog;
      Caption := ACaption;
      ClientWidth := MulDiv(180, DialogUnits.x, 4);
      PopupMode := pmAuto;
      Position := poScreenCenter;
      Prompt := TLabel.Create(Form);
      with Prompt do
      begin
        Parent := Form;
        Caption := APrompt;
        Left := MulDiv(8, DialogUnits.x, 4);
        Top := MulDiv(8, DialogUnits.y, 8);
        Constraints.MaxWidth := MulDiv(164, DialogUnits.x, 4);
        WordWrap := True;

      end;
      Edit := TEdit.Create(Form);
      with Edit do
      begin
        Parent := Form;
        Left := Prompt.Left;
        Top := Prompt.Top + Prompt.Height + 5;
        Width := MulDiv(164, DialogUnits.x, 4);
        MaxLength := 255;
        text := Value;
        PasswordChar := '*';
        SelectAll;
      end;
      ButtonTop := Edit.Top + Edit.Height + 15;
      ButtonWidth := MulDiv(50, DialogUnits.x, 4);
      ButtonHeight := MulDiv(14, DialogUnits.y, 8);
      with TButton.Create(Form) do
      begin
        Parent := Form;
        Caption := SMsgDlgOK;
        ModalResult := mrOk;
        Default := True;
        SetBounds(MulDiv(38, DialogUnits.x, 4), ButtonTop, ButtonWidth,
          ButtonHeight);
      end;
      with TButton.Create(Form) do
      begin
        Parent := Form;
        Caption := SMsgDlgCancel;
        ModalResult := mrCancel;
        Cancel := True;
        SetBounds(MulDiv(92, DialogUnits.x, 4), Edit.Top + Edit.Height + 15,
          ButtonWidth, ButtonHeight);
        Form.ClientHeight := Top + Height + 13;
      end;
      if ShowModal = mrOk then
      begin
        Value := Edit.text;
        Result := True;
      end;
    finally
      Form.Free;
    end;
end;

function InputBoxM(const ACaption, APrompt, ADefault: string): string;
begin
  Result := ADefault;
  InputQueryM(ACaption, APrompt, Result);
end;

function TCKontrol(const tcId: string): Boolean;
var
  l: Int64;
  tmp, tmp1: Int64;
  odd_sum, even_sum: Longint;
  Total: Longint;
  ChkDigit1, ChkDigit2: Longint;
  d: array [0 .. 9] of Longint;
  n: Integer;
begin
  try
    if Length(tcId) <> 11 then
    begin
      Result := False;
      Exit;
    end;

    l := StrToInt64(tcId);
    tmp := l div 100;
    tmp1 := l div 100;
    for n := 1 to 9 do
    begin
      d[n] := tmp1 mod 10;
      tmp1 := tmp1 div 10;
    end;
    odd_sum := d[9] + d[7] + d[5] + d[3] + d[1];
    even_sum := d[8] + d[6] + d[4] + d[2];
    Total := (odd_sum * 3) + even_sum;
    ChkDigit1 := (10 - (Total mod 10)) mod 10;
    odd_sum := ChkDigit1 + d[8] + d[6] + d[4] + d[2];
    even_sum := d[9] + d[7] + d[5] + d[3] + d[1];
    Total := (odd_sum * 3) + even_sum;
    ChkDigit2 := (10 - (Total mod 10)) mod 10;
    tmp := (tmp * 100) + (ChkDigit1 * 10) + ChkDigit2;
    Result := (tmp = l);
  except
    Result := False;
  End;
end;

function EnsonRaporProtokolNo: integer;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'declare @SLX int select @SLX = isnull(SLX,0) from parametreler where SLK = ' + QuotedStr ('00') + ' and SLB = ' + QuotedStr ('21') + ' update parametreler set SLX  = @SLX+1 from parametreler where SLK = ' + QuotedStr ('00') + ' and SLB = ' + QuotedStr ('21') + ' select @SLX+1 ';
    datalar.QuerySelect(ado, sql);
    EnsonRaporProtokolNo := ado.Fields[0].AsInteger;
  finally
    ado.Free;
  end;
end;

function EnsonSeansProtokolNo(SirketKod,SubeKod: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'sp_YeniReceteProtokol ' + QuotedStr(SirketKod) + ',' +
           QuotedStr(SubeKod);
    datalar.QuerySelect(ado, sql);

    if not ado.eof then
      EnsonSeansProtokolNo := ado.Fields[0].AsString
    else
      EnsonSeansProtokolNo := '0';
  finally
    ado.Free;
  end;
end;

function doktorKlinikKoduSaglikNet(doktor: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select isnull(SLZ,0) from doktorlar d ' +
      'join servIsler s on s.kodu = cast(d.Brans as varchar) ' +
      ' where d.kod = ' + QuotedStr(doktor);
    datalar.QuerySelect(ado, sql);
    if not ado.eof then
      doktorKlinikKoduSaglikNet := ado.Fields[0].AsString
    else
      doktorKlinikKoduSaglikNet := '0';
  finally
    ado.Free;
  end;
end;

function protokolGuncelle(Id, protokolNo, doktor: string): Boolean;
var
  sql, yil: string;
  ado: TADOQuery;
begin
  yil := copy(tarihal(date()), 1, 4);

  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'update gelisDetay set SNPROTOKOLNO = ' + QuotedStr(protokolNo)
      + ' where sirano = ' + Id + ' select @@error ';

    datalar.QuerySelect(ado, sql);

    if ado.Fields[0].AsInteger = 0 then
      Result := True
    Else
      Result := False;
  finally
    ado.Free;
  end;
end;

function IlacKoduToUnite(code, dosya, gelis: string;
  var peryot, peryotAdet: string): real;
var
  sql: string;
  ado: TADOQuery;
begin
  Result := 1;
  peryot := '3';
  peryotAdet := '1';
  try
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;
      sql :=
        'select unite = isnull(UNITE,1),isnull(dbo.IlackoduPeryot(' + QuotedStr
        (code) + ',' + QuotedStr(dosya) + ',' + gelis + '),3)' +
        ' ,isnull(dbo.IlackoduPeryotAdet(' + QuotedStr(code) + ',' + QuotedStr
        (dosya) + ',' + gelis + '),  1)' + ' from ILACLAR where code = ' +
        QuotedStr(code);
      datalar.QuerySelect(ado, sql);

      if not ado.eof then
      begin
        Result := ado.Fields[0].AsFloat;
        peryot := ado.Fields[1].AsString;
        peryotAdet := ado.Fields[2].AsString;
      end
      else
      begin
        Result := 1;
        peryot := '3';
        peryotAdet := '1';
      end;
    finally
      ado.Free;
    end;
  except

  end;
end;

function cxCheckListSecili01(c: TcxCheckListBox): string;
var
  r: integer;
  cs: string;
begin
  for r := 0 to c.Items.Count - 1 do
  begin
    if c.Items[r].Checked then
      cs := cs + '1'
    else
      cs := cs + '0';
  end;

  Result := cs;

end;

procedure cxCheckListSec01(cL: TcxCheckListBox; c: string);
var
  r: integer;
begin
  for r := 0 to cL.Items.Count - 1 do
  begin
    cL.Items[r].Checked := False;
  end;

  for r := 1 to Length(c) do
  begin
    cL.Items[r - 1].Checked := StrToBool(c[r]);
  end;
end;

function cxCheckListSecili(c: TcxCheckListBox): string;
var
  r: integer;
  cs: string;
begin
  for r := 0 to c.Items.Count - 1 do
  begin
    if c.Items[r].Checked then
      cs := cs + inttostr(r) + ',';
  end;

  Result := cs;

end;

procedure cxCheckListSec(cL: TcxCheckListBox; c: string);
var
  r: integer;
  t: tstringlist;
begin
  for r := 0 to cL.Items.Count - 1 do
  begin
    cL.Items[r].Checked := False;
  end;

  t := tstringlist.Create;
  try
    Split(',', c, t);

    for r := 0 to t.Count - 1 do
    begin
      if t[r] <> '' Then
        cL.Items[strtoint(t[r])].Checked := True;
    end;
  finally
    t.Free;
  end;
end;

function provizyonTakipTiptoReceteTip(Tip: string): integer;
var
  t: integer;
begin

  if Tip = 'N' then
    t := 1
  else if Tip = 'I' then
    t := 5
  else if Tip = 'D' then
    t := 3
  else if Tip = 'V' then
    t := 4
  else if Tip = 'T' then
    t := 2
  else if Tip = 'M' then
    t := 6
  else
    t := 1;

  Result := t;

end;

procedure FilterGrid(Sender: TcxGridDBTableView; var Key: string;
  var arama: string; colum: integer; F: Boolean);
var
  s: string;
begin
  AramaText := AramaText + s;

  if Key = '' then
  begin
    Sender.DataController.Filter.Root.Clear;
    Exit;
  end;

  if F = True Then
  Begin
    Sender.DataController.Filter.Root.AddItem(Sender.Columns[colum], foLike,
      Key + '%', Key);
  End;

end;

procedure KeyPressGridF(Sender: TcxGridDBTableView; var Key: Char;
  var arama: string; colum: integer; F: Boolean);
var
  s: string;
begin

  if Key = 'ý' Then
    Key := 'I';
  if Key = 'i' Then
    Key := 'Ý';

  s := AnsiUpperCase(Key);
  if s[1] in [#13, #10, #9, #14] Then
    Exit;
  // ['A'..'Z', '0'..'9', 'Ç','Þ','Ð','Ö','Ü','Ý']

  if (Key in [#27, #13]) Then
  Begin
    AramaText := '';
    arama := '';
    if F = True Then
    Begin
      Sender.DataController.Filter.Root.Clear;
      // sender.DataController.Filter.Root.AddItem(sender.Columns[colum],
      // foLike, aramaText+'%' , aramaText);
    End;
    Exit;
  End;

  if (Key in [#8]) Then
  begin

    if (Length(AramaText) > 0) Then
      AramaText := copy(AramaText, 1, Length(AramaText) - 1)
    else
      AramaText := '';
    // arama := arama + s;
    if F = True Then
    Begin
      Sender.DataController.Filter.Root.Clear;
      Sender.DataController.Filter.Root.AddItem(Sender.Columns[colum], foLike,
        AramaText + '%', AramaText);
    End;
  end
  else

    AramaText := AramaText + s;

  if F = True Then
  Begin
    Sender.DataController.Filter.Root.AddItem(Sender.Columns[colum], foLike,
      AramaText + '%', AramaText);
  End;

  s := arama + '*' + ';*' + arama + '*';
  arama := AramaText;

end;

function receteIlacBilgisiGetir(barkod: string): TReceteIlacBilgisi;
var
  sql: string;
  ado: TADOQuery;
begin

  try
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;

      sql := 'select * from ilacListesi where barkod = ' + QuotedStr(barkod);
      datalar.QuerySelect(ado, sql);

      if not ado.eof then
      begin
        Result.kodu := ado.FieldByName('barkod').AsString;
        Result.adi := ado.FieldByName('ilacAdi').AsString;
        Result.aktif := ado.FieldByName('aktif').AsInteger;
        Result.adoz := ado.FieldByName('ambalajMiktar').AsFloat;
        Result.tekdoz := ado.FieldByName('tekDozMiktar').AsFloat;
      end;
    finally
      ado.Free;
    end;

  except
  end;
end;

function DosyaNoTel(DosyaNo: string; Telefon : string = ''): string;
var
  sql, Tel: string;
  ado: TADOQuery;

begin
  Tel := '';
  if Telefon = '' then
  begin
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;
      sql := 'select EV_TEL1  from Personelkart where dosyaNO = ' + QuotedStr(DosyaNo);
      datalar.QuerySelect(ado, sql);
      Tel := ado.Fields[0].AsString;
    finally
      ado.Free;
    end;
  end
  Else
   Tel := Telefon;

  Tel := trim(Tel); // telefondan sað sol boþluk varsa at
  if copy(Tel, 1, 1) = '0' then
  Tel := copy(Tel, 2, 20); // telefon ilk deðeri 0 sa at
  Tel := StringReplace(Tel, ' ', '', [rfReplaceAll]);
  // telefon iinde boþluk varsa at
  Tel := '90' + Tel; // tel baþýna 90 ekle

  Result := Tel;


end;

function DosyaNoTC(DosyaNo: string): string; overload;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select TCKIMLIKNO  from hastakart where dosyaNO = ' + QuotedStr
      (DosyaNo);
    datalar.QuerySelect(ado, sql);

    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function DosyaNoTC(DosyaNo: string; var idealKilo: string): string; overload;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'select TCKIMLIKNO ,IDEALKiLO from hastakart where dosyaNO = ' + QuotedStr
      (DosyaNo);
    datalar.QuerySelect(ado, sql);
    idealKilo := ado.Fields[1].AsString;
    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function DosyaNoHastaAd(DosyaNo: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'select HASTAADI + '' '' + HASTASOYADI from hastakart where dosyaNO = ' + QuotedStr(DosyaNo);
    datalar.QuerySelect(ado, sql);

    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function StokBul(_kodu: string; var Birim: string; var kdv: integer): string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'select name1,ALIMBIRIM,TANIM,kdv from ILACSARF Where Code = ' + QuotedStr (_kodu);
    datalar.QuerySelect(ado, sql);

    if not ado.eof Then
    Begin
      Result := ado.Fields[0].AsString;
      Birim := ado.Fields[1].AsString;
      kdv := ado.Fields[3].AsInteger;
      // IlacSarf := datalar.ADO_SQL3.Fields[2].AsString;
    end
    else
      Result := '';
  finally
    ado.Free;
  end;
end;

function SeansKontrol(s, mn, t: string; DosyaNo: string = ''): string;
var
  ado: TADOQuery;
  sql: string;
begin

  if mn = '' then
  begin
    Result := '';
    Exit;
  end;

  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql :=
      'select * from gelisdetay g join hastakart h on h.dosyaNo = g.dosyaNo ' + ' where g.dosyaNo <> ' + QuotedStr(DosyaNo) + ' and g.seans = ' + QuotedStr(s) + ' and Utarih = ' + QuotedStr(t) + ' and g.makinaNo = ' + QuotedStr(mn) + ' and g.durum = 1';
    datalar.QuerySelect(ado, sql);

    if not ado.eof then
    begin
      Result := ado.FieldByName('dosyaNo').AsString + '-' + ado.FieldByName
        ('HASTAADI').AsString + ' ' + ado.FieldByName('HASTASOYADI').AsString;

    end;
  finally
    ado.Free;
  end;
end;

function IlacReceteTaniEkle(_dosyaNo, GelisNo, kod: string): String;
var
  ado: TADOQuery;
  sql: string;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select isnull(Tani,''''),icd.TANI from ILACLAR I ' +
      ' join icd_teshisleri icd on icd.ICDKODU = I.Tani ' + ' where code = ' +
      QuotedStr(kod);
    datalar.QuerySelect(ado, sql);

    Result := ado.Fields[0].AsString + ';' + ado.Fields[1].AsString;
  finally
    ado.Free;
  end;
end;

function IlacReceteAciklama(_dosyaNo, GelisNo, kod, doz: string): tstringlist;
var
  ado: TADOQuery;
  sql, s, d: string;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    Result := tstringlist.Create;
    try
      sql := 'select dbo.IlackoduToReceteBilgisi(' + QuotedStr(kod)
        + ',' + QuotedStr(_dosyaNo) + ',' + GelisNo + ',' + doz + ')';
      datalar.QuerySelect(ado, sql);

      if ado.Fields[0].AsString <> '' then
        Result.Add('2 ' + ado.Fields[0].AsString);

    except
    end;

    sql := 'exec sp_IlackoduToReceteBilgisiTetkikSonuc ' + QuotedStr(kod)
      + ',' + QuotedStr(_dosyaNo) + ',' + GelisNo;
    datalar.QuerySelect(ado, sql);
    d := '';
    s := '';
    while not ado.eof do
    begin
      if ado.Fields[0].AsString = '' Then
        d := ado.Fields[1].AsString
      Else
        d := ado.Fields[0].AsString + ':' + ado.Fields[1]
          .AsString + ' - ' + ado.Fields[2].AsString + ' - ';

      s := s + d;
      ado.Next;
    end;

    if s <> '' Then
      Result.Add('4 ' + s);

    (*
      s := '';

      sql := 'select isnull(Aciklama,'''') from ETkenMaddeSutKurallari ' +
      ' where EtkenMadde in (select ETKENMADDE from ILACLAR where code = ' + QuotedStr(kod) + ')';
      datalar.QuerySelect(ado,sql);
      s := ado.Fields[0].AsString;
      if s <> '' then
      List.Add('1 ' + s);
      *)

    s := '';

    sql :=
      'select isnull(Aciklama,'''') from ilacListesi '
      + '  where barkod = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);
    s := ado.Fields[0].AsString;
    if s <> '' then
      Result.Add('1 ' + s);
  finally
    ado.Free;
  end;
end;

function RaporGecerlimi(_dosyaNo: string): double;
var
  sql, _Tarih: string;
  gun, _kalangun: double;
  ado: TADOQuery;
begin
  Result := -2;
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select convert(varchar,BitisTarihi,112) from Raporlar where Aktif = ' + QuotedStr ('1') + ' and dosyaNo = ' + QuotedStr (_dosyaNo);
    datalar.QuerySelect(ado, sql);

    if ado.Fields[0].AsString = '' then
    begin
      Result := -2;
      Exit;
    end;
    _Tarih := FormattedTarih(ado.Fields[0].AsString);

    sql := 'select SLX from Parametreler  where SLK = ' + QuotedStr ('30') + ' and SLB = ' + QuotedStr ('01');
    datalar.QuerySelect(ado, sql);
    gun := ado.Fields[0].AsInteger;

    _kalangun := strtodate(_Tarih) - date();

    if _kalangun <= 0 then
    begin
      Result := 0;
      Exit;
    end;

    if _kalangun < gun then
    begin
      Result := _kalangun;
      Exit;
    end;

    if _kalangun >= gun then
      Result := -1;
  finally
    ado.Free;
  end;
end;

function sureKontrol: Boolean;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select SLY from Parametreler  where SLK = ' + QuotedStr ('30') + ' and SLB = ' + QuotedStr ('01');
    datalar.QuerySelect(ado, sql);
    if ado.Fields[0].AsFloat = 1 then
      Result := True
    else
      Result := False;
  finally
    ado.Free;
  end;
end;

(*
  function Hgbal : string;
  var
  Test : TestTotal;
  sonuc : SonucDurum;
  Testler : ArrayOfTestTotal;
  ado : TADOQuery;
  sql  , s : string;
  x : integer;
  begin


  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  sql := 'exec sp_HGB_Gonder';
  datalar.QuerySelect(ado,sql);

  SetLength(Testler,ado.RecordCount);
  x := 0;
  while not ado.Eof do
  begin
  Test := TestTotal.Create;
  Test.Test := ado.fieldbyname('NAME1').AsString;
  Test.ay := ado.fieldbyname('ay').AsString;
  Test.t := ado.fieldbyname('t').AsString;
  test.A := ado.fieldbyname('A').AsString;
  test.B := ado.fieldbyname('B').AsString;
  test.C := ado.fieldbyname('C').AsString;
  test.Kurum := ado.fieldbyname('Kurum').AsString;
  Testler[x] := test;
  ado.Next;
  x := x + 1;
  end;



  Sonuc := SonucDurum.Create;

  try
  Sonuc := (datalar.LisansAl as Service1Soap_).TestTotalCvp(Testler);
  except on e : Exception do
  begin
  ShowMessageSkin(e.Message,'','','info');
  end;

  end;

  Result := sonuc.SonucMsj;

  end;

  function MesajKontrol(id : string) : mesajBilgi;
  var
  msg : mesajBilgi;
  begin
  msg := mesajBilgi.Create;
  datalar.LisansAl.URL := 'http://www.noktayazilim.net/noktaservice.asmx';
  try
  msg := (datalar.LisansAl as Service1Soap_).MesajOku(id);
  except on e : Exception do
  begin
  ShowMessageSkin(e.Message,'','','info');
  msg.id := '0';
  end;

  end;

  Result := msg;

  end;
  *)


procedure MenuIDRun(MenuId : integer);
begin
  case MenuId of
   5 : ImzaFoyleriYaz;

  end;
end;

procedure ImzaFoyleriYaz;
var
  sql : string;
  TopluDataset : TDataSetKadir;
begin
  sql := 'exec sp_hastaListesi ' + QuotedStr ('1') + ','''', ' + QuotedStr(tarihal(date));
  TopluDataset.Dataset1 := datalar.QuerySelect(sql);
  TopluDataset.Dataset2 := kadir.KurumBilgi;
  PrintYap('039','\ImzaFoyu','',TopluDataset,pTNone);
end;



Procedure EpikrizYaz(DosyaNo, GelisNo : string; QR: Boolean ; DataSet : Tdataset = nil);
var
  sql: string;
  ado, ado1 , ado2 , ado3 , ado4 , ado5 , ado6 , ado7 , ado8 , ado9 : TADOQuery;
  TopluDataset : TDataSetKadir;
begin
(*
if DataSet = nil then
 begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  sql := 'sp_frmPersonelIseGirisMuayene  ' + QuotedStr(DosyaNo) + ',' + gelisNo;
  datalar.QuerySelect(ado, sql);
  TopluDataset.Dataset1 := ado;
 end
 else
 *)
//  TopluDataset.Dataset1 := DataSet;


  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(DosyaNo) + ',' + gelisNo + ',' + QuotedStr('PK');
    datalar.QuerySelect(ado, sql);
    TopluDataset.Dataset0 := ado;
    TopluDataset.Dataset0.name := 'IsyeriIsciBilgisi';

    ado1 := TADOQuery.Create(nil);
    try
      ado1.Connection := datalar.ADOConnection2;
      sql := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(DosyaNo) + ',' + gelisNo + ',' + QuotedStr('TA12');
      datalar.QuerySelect(ado1, sql);
      TopluDataset.Dataset1 := ado1;
      TopluDataset.Dataset1.name := 'TIBBIANAMNEZ12';

      ado2 := TADOQuery.Create(nil);
      try
        ado2.Connection := datalar.ADOConnection2;
        sql := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(DosyaNo) + ',' + gelisNo + ',' + QuotedStr('TA345678');
        datalar.QuerySelect(ado2, sql);
        TopluDataset.Dataset2 := ado2;
        TopluDataset.Dataset2.name := 'TIBBIANAMNEZ345678';

        ado3:= TADOQuery.Create(nil);
        try
          ado3.Connection := datalar.ADOConnection2;
          sql := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(DosyaNo) + ',' + gelisNo + ',' + QuotedStr('TA9');
          datalar.QuerySelect(ado3, sql);
          TopluDataset.Dataset3 := ado3;

          ado4:= TADOQuery.Create(nil);
          try
            ado4.Connection := datalar.ADOConnection2;
            sql := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(DosyaNo) + ',' + gelisNo + ',' + QuotedStr('TA10');
            datalar.QuerySelect(ado4, sql);
            TopluDataset.Dataset5 := ado4;

            ado5:= TADOQuery.Create(nil);
            try
              ado5.Connection := datalar.ADOConnection2;
              sql := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(DosyaNo) + ',' + gelisNo + ',' + QuotedStr('FM1-8');
              datalar.QuerySelect(ado5, sql);
              TopluDataset.Dataset6 := ado5;

              ado6:= TADOQuery.Create(nil);
              try
                ado6.Connection := datalar.ADOConnection2;
                sql := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(DosyaNo) + ',' + gelisNo + ',' + QuotedStr('FM9');
                datalar.QuerySelect(ado6, sql);
                TopluDataset.Dataset7 := ado6;

                ado7:= TADOQuery.Create(nil);
                try
                  ado7.Connection := datalar.ADOConnection2;
                  sql := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(DosyaNo) + ',' + gelisNo + ',' + QuotedStr('LB');
                  datalar.QuerySelect(ado7, sql);
                  TopluDataset.Dataset8 := ado7;

                  ado8:= TADOQuery.Create(nil);
                  try
                    ado8.Connection := datalar.ADOConnection2;
                    sql := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(DosyaNo) + ',' + gelisNo + ',' + QuotedStr('KS');
                    datalar.QuerySelect(ado8, sql);
                    TopluDataset.Dataset9 := ado8;


                    ado9 := TADOQuery.Create(nil);
                    try
                      ado9.Connection := datalar.ADOConnection2;
                      sql := 'select * from PersonelFoto where dosyaNo = ' + QuotedStr(DosyaNo);
                      datalar.QuerySelect(ado9, sql);
                      TopluDataset.Dataset4 := ado9;

                      PrintYap('001','Ýþe Giriþ Muayene Formu','',TopluDataset,pTNone);

                    //  if Assigned(ado) then ado.Free;
                    finally
                      ado9.free;
                    end;
                  finally
                    ado8.Free;
                  end;
                finally
                  ado7.Free;
                end;
              finally
                ado6.Free;
              end;
            finally
              ado5.Free;
            end;
          finally
            ado4.Free;
          end;
        finally
          ado3.Free;
        end;
      finally
        ado2.Free;
      end;
    finally
      ado1.Free;
    end;
  finally
    ado.Free;
  end;
end;

function DiyalizPaketiUygula(DosyaNo, GelisNo, sablonId: string): integer;
var
  sql: string;
  ado, ADO_ILACKULLANIM: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    ADO_ILACKULLANIM := TADOQuery.Create(nil);
    try
      ADO_ILACKULLANIM.Connection := datalar.ADOConnection2;

      sql := 'select distinct stokkodu,stokadi,DS.grup,miktar,I.medulaGitsin, ' +
        ' firmaTanimliyiciDef,ensonAlisTarihi from DiyalizPaketSablon DS ' +
        ' join ILACSARF I on I.code = DS.stokkodu ' + ' where sablonId = ' +
        sablonId;
      datalar.QuerySelect(ado, sql);

      sql := 'select * from hareketlerIS where dosyaNo = ' + QuotedStr(DosyaNo)
        + ' and gelisNO = ' + GelisNo;
      datalar.QuerySelect(ADO_ILACKULLANIM, sql);

      try
        while not ado.eof do
        begin

          ADO_ILACKULLANIM.Append;
          ADO_ILACKULLANIM.FieldByName('dosyaNo').AsString := DosyaNo;
          ADO_ILACKULLANIM.FieldByName('gelisNo').AsString := GelisNo;
          ADO_ILACKULLANIM.FieldByName('gelisDetayNo').AsString := GelisNo;

          ADO_ILACKULLANIM.FieldByName('Icode').AsString := ado.FieldByName
            ('stokkodu').AsString;
          ADO_ILACKULLANIM.FieldByName('code').AsString := ado.FieldByName
            ('stokkodu').AsString;

          ADO_ILACKULLANIM.FieldByName('name1').AsString := ado.FieldByName
            ('stokadi').AsString;
          ADO_ILACKULLANIM.FieldByName('TANIM').AsString := ado.FieldByName('grup')
            .AsString;
          ADO_ILACKULLANIM.FieldByName('AKOD').AsString := '00';
          ADO_ILACKULLANIM.FieldByName('Grup').AsString := '0';
          ADO_ILACKULLANIM.FieldByName('KDV').AsString := '8';
          ADO_ILACKULLANIM.FieldByName('Kurum').AsString := '0000';
          ADO_ILACKULLANIM.FieldByName('USER_ID').AsString := datalar.username;

          ADO_ILACKULLANIM.FieldByName('isteyenDoktor').AsString := '0000';
          ADO_ILACKULLANIM.FieldByName('yapandoktor').AsString := '0000';
          ADO_ILACKULLANIM.FieldByName('adet').AsFloat := ado.FieldByName('miktar')
            .AsFloat;
          ADO_ILACKULLANIM.FieldByName('partiKodu').AsString := '000000';
          ADO_ILACKULLANIM.FieldByName('seriNo').AsString := '0';
          ADO_ILACKULLANIM.FieldByName('firmaTanimlayiciNo')
            .AsString := ado.FieldByName('firmaTanimliyiciDef').AsString;
          ADO_ILACKULLANIM.FieldByName('malzemeSatinAlisTarihi').AsDateTime :=
            ado.FieldByName('ensonAlisTarihi').AsDateTime;
          ADO_ILACKULLANIM.FieldByName('TARIH').AsDateTime := date;
          ADO_ILACKULLANIM.FieldByName('ISLENDIMI').AsString := ifThen
            (ado.FieldByName('medulaGitsin').AsBoolean = False, 'E', 'H');

          ADO_ILACKULLANIM.post;
          ado.Next;
        end;

        Result := 0;

      except
        on e: exception do
        begin
          ShowMessage(e.Message, '', '', 'info');
          Result := 1;
        end;
      end;
    finally
      ADO_ILACKULLANIM.Free;
    end;
  finally
    ado.Free;
  end;
end;

function TestKodToNormalDeger(kod, yas, cins: string; deger: double): Boolean;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select mind,maxd from Labtestler ' + ' where butkodu = ' + QuotedStr
      (kod) + ' and ( ' + floattostr(deger) + ' between mind and maxd)';

    datalar.QuerySelect(ado, sql);
    if not ado.eof Then
      Result := True
    Else
      Result := False;
  finally
    ado.Free;
  end;
end;

function kareBarkodOku(Kb: string; Gsindex: integer): TKareBarkod;
var
  //b: integer;
  KbO: TKareBarkod;
begin
  //b := Length(Kb);
  KbO.barkodNo := copy(Kb, 3, 14);

  KbO.seriNo := copy(Kb, 19, Gsindex - 19);

  KbO.SKT := copy(Kb, Gsindex + 2, 6);

  KbO.partiNo := copy(Kb, Gsindex + 10, 20);

  Result := KbO;

end;

function HizmetFaturaBul(Id: string): Boolean;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select * from HizmetFaturalari where sira = ' + ifThen(Id = '', '0',
      Id);
    datalar.QuerySelect(ado, sql);
    if not ado.eof Then
      Result := True
    Else
      Result := False;
  finally
    ado.Free;
  end;
end;

function stokFaturaBul(Id: string): Boolean;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select * from stokFaturalari where sira = ' + ifThen(Id = '', '0',
      Id);
    datalar.QuerySelect(ado, sql);
    if not ado.eof Then
      Result := True
    Else
      Result := False;
  finally
   ado.Free;
  end;
end;

function MuhasebeKayitTipi(cariKod: string): integer;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select muhSorgu from carikartlar where carihesapKodu = ' + QuotedStr
      (cariKod);

    datalar.QuerySelect(ado, sql);
    Result := ado.Fields[0].AsInteger;
  finally
    ado.free;
  end;
end;

function SaticiFirmaBul(cariKod: string): string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select cariAd from saticilar where carikod = ' + QuotedStr(cariKod);
    datalar.QuerySelect(ado, sql);
    if not ado.eof Then
      Result := ado.Fields[0].AsString
    Else
      Result := '';
  finally
    ado.Free;
  end;
end;

procedure KeyPressGrid(Sender: TcxGridDBTableView; var Key: Char;
  var arama: string; colum: integer);
var
  s: string;
begin

  if Key = 'ý' Then
    Key := 'I';
  if Key = 'i' Then
    Key := 'Ý';

  s := AnsiUpperCase(Key);
  if s[1] in [#13, #10, #9, #14] Then
    Exit;
  // ['A'..'Z', '0'..'9', 'Ç','Þ','Ð','Ö','Ü','Ý']

  if (Key in [#27, #13]) Then
  Begin
    AramaText := '';
    Sender.DataController.Filter.Root.Clear;
    // sender.DataController.Filter.Root.AddItem(sender.Columns[colum],
    // foLike, aramaText+'%' , aramaText);
    Exit;
  End;

  if (Key in [#8]) Then
  begin

    if (Length(AramaText) > 0) Then
      AramaText := copy(AramaText, 1, Length(AramaText) - 1)
    else
      AramaText := '';
    // arama := arama + s;
    Sender.DataController.Filter.Root.Clear;
    Sender.DataController.Filter.Root.AddItem(Sender.Columns[colum], foLike,
      AramaText + '%', AramaText);

  end
  else

    AramaText := AramaText + s;
  // sender.DataController.Filter.Root.Clear;
  Sender.DataController.Filter.Root.AddItem(Sender.Columns[colum], foLike,
    AramaText + '%', AramaText);

  s := arama + '*' + ';*' + arama + '*';

end;

procedure YetkinizYok;
begin
  ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr', '', '', 'info');
end;

procedure ComboEkle(Tip, ifade: string);
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'insert into parametreler (SLK,SLB,SLT) values (' + QuotedStr ('40') +
      ',' + QuotedStr (Tip) + ',' + QuotedStr (ifade) + ')';
    datalar.QueryExec(ado, sql);
  finally
    ado.Free;
  end;
  // Combo;
end;


procedure ComboSil(Tip, ifade: string);
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'delete from parametreler where SLK = ' + QuotedStr ('40') +
      ' and SLB = ' + QuotedStr (Tip) + ' and SLT = ' + QuotedStr (ifade);
    datalar.QueryExec(ado, sql);
  finally
    ado.Free;
  end;
  // Combo;
end;

procedure comboList(_form: TForm);
var
  _say, x, y: integer;
  sql, deger: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    _say := _form.ComponentCount - 1;

    for x := 0 to _say do
    begin
      if (_form.Components[x].ClassType = TComboBox) then
      begin
        sql :=
          'select SLT from Parametreler where SLK = ' + QuotedStr ('40') + ' and SLB = ' +
          QuotedStr(TComboBox(_form.Components[x]).Name);
        ado.close;
        ado.sql.Clear;
        datalar.QuerySelect(ado, sql);
        deger := TComboBox(_form.Components[x]).text;
        TComboBox(_form.Components[x]).Clear;
        for y := 1 to ado.RecordCount do
        Begin
          TComboBox(_form.Components[x]).Items.Add
            (ado.Fields[0].AsString);
          ado.Next;
        End;
        TComboBox(_form.Components[x]).text := deger;
      end;

      if (_form.Components[x].ClassType = TcxComboBox) then
      begin
        sql :=
          'select SLT from Parametreler where SLK = ' + QuotedStr ('40') + ' and SLB = ' +
          QuotedStr(TcxComboBox(_form.Components[x]).Name);
        ado.close;
        ado.sql.Clear;
        datalar.QuerySelect(ado, sql);
        deger := TcxComboBox(_form.Components[x]).text;
        TcxComboBox(_form.Components[x]).Properties.Items.Clear;
        for y := 1 to ado.RecordCount do
        Begin
          TcxComboBox(_form.Components[x]).Properties.Items.Add
            (ado.Fields[0].AsString);
          ado.Next;
        End;
        TcxComboBox(_form.Components[x]).text := deger;
      end;

    end;
  finally
    ado.Free;
  end;
end;

function KodEslestir(kod: string; var Tip: string; turId: string = '0'): string;
var
  sql: string;
  ado: TADOQuery;
begin
  if turId = '147' then
    turId := '0';

  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'select butKodu,minD,maxD from Labtestler where islemkodu = ' + QuotedStr
      (kod) + ' and TurId = ' + turId;
    datalar.QuerySelect(ado, sql);

    if ado.eof Then
    Begin
      sql :=
        'select butKodu,minD,maxD from Labtestler where islemkoduC = ' +
        QuotedStr(kod) + ' and TurId = ' + turId;
      datalar.QuerySelect(ado, sql);
      if not ado.eof Then
      Begin
        Result := ado.Fields[0].AsString;
        if Tip = '' then
          Tip := 'Cd';
      End
      Else
        Result := '';

    End
    Else
    Begin
      Result := ado.Fields[0].AsString;
      if Tip = '' then
        Tip := 'Gd';
    End;
  finally
    ado.Free;
  end;
end;

(*
  function KodEslestir(kod : string ; var tip : string ; turId : string ; test,parametre : string) : string;
  var
  sql : string;
  ado : TADOQuery;
  begin
  if turId = '147' then turId := '0';


  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  sql := 'select butKodu,minD,maxD from Labtestler where islemkodu = ' + QuotedStr(kod+parametre) + ' and TurId = ' + turId;
  datalar.QuerySelect(ado,sql);

  if ado.Eof
  Then Begin
  sql := 'select butKodu,minD,maxD from Labtestler where islemkoduC = ' + QuotedStr(kod+parametre) + ' and TurId = ' + turId;
  datalar.QuerySelect(ado,sql);
  if not ado.Eof
  Then Begin
  result := ado.Fields[0].AsString;
  if tip = '' then tip := 'Cd';
  End
  Else
  result := '';

  End
  Else
  Begin
  result := ado.Fields[0].AsString;
  if tip = '' then tip := 'Gd';
  End;
  ado.Free;

  end;
*)

function KodEslestirNormalDeger(kod: string; turId: string;
  var minD, maxD, Tip: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  if turId = '147' then
    turId := '0';

  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select TurId from Labtestler where islemkodu = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);

    if ado.FieldByName('TurId').AsString <> '' then
    begin
      sql :=
        'select butKodu,minD,maxD from Labtestler where islemkodu = ' + QuotedStr
        (kod) + ' and TurId = ' + turId;
      datalar.QuerySelect(ado, sql);

      if ado.eof Then
      Begin
        sql :=
          'select butKodu,minD,maxD from Labtestler where islemkoduC = '
          + QuotedStr(kod);
        // + ' and TurId = ' + turId;
        datalar.QuerySelect(ado, sql);
        if not ado.eof Then
        Begin
          Result := ado.Fields[0].AsString;
          minD := ado.Fields[1].AsString;
          maxD := ado.Fields[2].AsString;
          Tip := 'Cd';
        End
        Else
          Result := '';
      End
      Else
      Begin
        Result := ado.Fields[0].AsString;
        minD := ado.Fields[1].AsString;
        maxD := ado.Fields[2].AsString;
        Tip := 'Gd';
      End;
    end
    else
    begin
      sql :=
        'select butKodu,minD,maxD from Labtestler where islemkodu = ' + QuotedStr
        (kod);
      datalar.QuerySelect(ado, sql);

      if ado.eof Then
      Begin
        sql :=
          'select butKodu,minD,maxD from Labtestler where islemkoduC = '
          + QuotedStr(kod);
        // + ' and TurId = ' + turId;
        datalar.QuerySelect(ado, sql);
        if not ado.eof Then
        Begin
          Result := ado.Fields[0].AsString;
          minD := ado.Fields[1].AsString;
          maxD := ado.Fields[2].AsString;
          Tip := 'Cd';
        End
        Else
          Result := '';
      End
      Else
      Begin
        Result := ado.Fields[0].AsString;
        minD := ado.Fields[1].AsString;
        maxD := ado.Fields[2].AsString;
        Tip := 'Gd';
      End;
    end;
  finally
    ado.Free;
  end;

end;

function KodEslestirKod(kod: string; var ckod, turId: string): string;
var
  sql: string;
  ado: TADOQuery;
  x: integer;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'select islemKodu,islemKoduC,isnull(TurId,0) from Labtestler where butKodu = ' + QuotedStr(kod);

    datalar.QuerySelect(ado, sql);

    turId := ado.Fields[2].AsString;

    x := pos('.', ado.Fields[1].AsString);
    if x > 0 Then
      ckod := copy(ado.Fields[1].AsString, x + 1, 20)
    else
      ckod := ado.Fields[1].AsString;

    x := pos('.', ado.Fields[0].AsString);
    if x > 0 Then
      Result := copy(ado.Fields[0].AsString, x + 1, 20)
    else
      Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function KodEslestirLabKodu(kod: string; var ckod: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select butkodu from Labtestler where islemKodu = ' + QuotedStr(kod);

    datalar.QuerySelect(ado, sql);
    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function SgKTipEslestirKod(kod: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select butKodu  from Labtestler where SGKTip = ' + QuotedStr(kod);

    datalar.QuerySelect(ado, sql);
    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function idealKilo(_dosyaNo: string): double;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := ' select IdealKilo from hastaKart where dosyaNo = ' + QuotedStr
      (_dosyaNo);
    datalar.QuerySelect(ado, sql);

    Result := ado.Fields[0].AsFloat;
  finally
    ado.Free;
  end;
end;

function SonSeansGCKilo(_dosyaNo, GelisNo: string; var g, c: double): double;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql :=
      'select GIRISKILO,CIKISKILO from gelisdetay where dosyaNo = ' + QuotedStr
      (_dosyaNo) + ' and gelisNo = ' + GelisNo + ' and KanAlindimi = 1';
    datalar.QuerySelect(ado, sql);

    g := ado.Fields[0].AsFloat;
    c := ado.Fields[1].AsFloat;

    Result := (g - c);
  finally
    ado.Free;
  end;
end;

function BirOncekiSeansGCKilo(_dosyaNo, GelisNo, id: string;
  var g, c: double): double;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select top 1 GIRISKILO,CIKISKILO from gelisdetay ' +
      ' where sirano < ' + id + ' and GIRISKILO > 0 and dosyaNO = ' + QuotedStr
      (_dosyaNo) + // ' and gelisNO = ' + gelisNo +
      ' order by sirano desc ';

    datalar.QuerySelect(ado, sql);

    g := ado.Fields[0].AsFloat;
    c := ado.Fields[1].AsFloat;

    Result := (g - c);
  finally
    ado.Free;
  end;
end;

function HastaBilgiProtokolCaptionYazSeans(DosyaNo, GelisNo, SeansNo: string)
  : string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql :=
      'select HASTAADI + '' '' +HASTASOYADI + '' '' + ''  Dosya Açýlýþ Tarihi : '' + dbo.formattedTarih(BHDAT)  ad ' + ' from Hastakart H ' + ' join gelisler g on g.dosyaNo = H.dosyaNo ' +
    // ' left join Kurumlar K on k.kurum = h.kurum  ' +
      ' where h.dosyaNo = ' + QuotedStr(DosyaNo) + ' and g.gelisNo = ' + GelisNo;

    datalar.QuerySelect(ado, sql);

    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function HastaBilgiProtokolCaptionYaz(DosyaNo, GelisNo: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql :=
      'select HASTAADI + '' '' +HASTASOYADI ad, PROTOKOLNO,K.AdI1 '
      + ' from Hastakart H ' +
      ' join gelisler g on g.dosyaNo = H.dosyaNo ' +
      ' left join Kurumlar K on k.kurum = h.kurum  ' + ' where h.dosyaNo = ' +
      QuotedStr(DosyaNo) + ' and g.gelisNo = ' + GelisNo;

    datalar.QuerySelect(ado, sql);

    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function medulaHataCozumBul(hatakodu: string): string;
var
  ado: TADOQuery;
  sql: string;
begin
  Result := '';
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select hataCozum from medulaHataCozum where hataKodu = ' + QuotedStr
      (hatakodu);
    datalar.QuerySelect(ado, sql);
    if not ado.eof Then
      Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function HareketSiraNoHizmetAdi(siraNo, Tip: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    if Tip = '0' Then
      sql := 'select tanimi from LabTestler where butkodu = ' + QuotedStr
        (siraNo)
    Else
      sql := 'select LT.tanimi+' + QuotedStr (' - ') + '+T.tanimi from LabTestler T ' +
        ' join LabTestler LT on substring(T.butkodu,1,6) = LT.butkodu ' +
        ' where T.sgkTip = ' + QuotedStr(Tip);

    datalar.QuerySelect(ado, sql);
    if ado.eof Then
    begin
      Result := '';
    End
    Else
      Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function EK10C(code: string): Boolean;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select * from EK10 where code = ' + QuotedStr(code);

    datalar.QuerySelect(ado, sql);
    if not ado.eof Then
      Result := True
    else
      Result := False;
  finally
    ado.free;
  end;
end;

function HizmetFiyat(kod: string): real;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select KSATISF00 from HIZMET where code = ' + QuotedStr('704230');
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('KSATISF00').AsFloat;
  finally
    ado.Free;
  end;
end;

function HizmetKoduToHizmetAdi(kod: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select Tanimi from labtestler where butKodu = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('Tanimi').AsString;
  finally
    ado.Free;
  end;
end;

function KurumBransi: string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select SLXX as brans from parametreler where slk = ' + QuotedStr ('33') + ' and slb = ' + QuotedStr ('BRANS');
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('brans').AsString;
  finally
    ado.Free;
  end;
end;

function ResimVarMi(DosyaNo, gonderenForm: string): Boolean;
var
  sql, sql1: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select * from PersonelFoto where dosyaNo = ' + QuotedStr(DosyaNo);

    if gonderenForm = 'frmHastaKarti' Then
    Begin
      sql1 := ' and tip = ' + QuotedStr ('H');
    End;
    if gonderenForm = 'frmPersonelKarti' Then
    Begin
      sql1 := ' and tip = ' + QuotedStr ('P');
    End;

    datalar.QuerySelect(ado, sql);

    if not ado.eof Then
      Result := True
    Else
      Result := False;
  finally
    ado.Free;
  end;
end;

procedure EditTemizle(_form: TForm);
var
  _say, x: integer;

begin
  _say := _form.ComponentCount - 1;

  for x := 0 to _say do
  begin
    if _form.Components[x].ClassType = TEdit then
    begin
      TEdit(_form.Components[x]).Clear;
    end;

    if _form.Components[x].ClassType = TcxTextEdit then
    begin
      TcxTextEdit(_form.Components[x]).Clear;
    end;

    if _form.Components[x].ClassType = TComboBox then
    begin
      TComboBox(_form.Components[x]).ItemIndex := -1;
    end;

    if _form.Components[x].ClassType = TcxComboBox then
    begin
      TcxComboBox(_form.Components[x]).ItemIndex := -1;
    end;

    if _form.Components[x].ClassType = TcxLookupComboBox then
    begin
      TcxLookupComboBox(_form.Components[x]).ItemIndex := -1;
    end;


    if _form.Components[x].ClassType = TMemo then
    begin
      TMemo(_form.Components[x]).Lines.Clear;
    end;

    if _form.Components[x].ClassType = TDBNumberEditEh then
    begin
      TDBNumberEditEh(_form.Components[x]).Value := 0;
    end;

  end;
end;

function KurumKodu: string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select * from parametreler where slk = ' + QuotedStr ('99');
    ado.close;
    ado.sql.Clear;
    datalar.QuerySelect(ado, sql);
    Result := ado.FieldByName('SLB').AsString;
  finally
    ado.free;
  end;
end;

function LisansBilgileri(var Tarih, basla, bitis, kurum: string;
  var limit: integer): Boolean;
var
  sql: string;
  Key: real;
  ado : TADOQuery;
begin
  Result := False;
  if not Result then;;;
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql :=
      'select SLVV,SLXX,SLYY,SLZ,SLZZ from parametreler where SLK = ' + QuotedStr ('GT') + ' and  SLB = ' + QuotedStr ('0004');

    datalar.QuerySelect(ado, sql);
    Result := True;
    Tarih := ado.FieldByName('SLYY').AsString;
    basla := ado.FieldByName('SLXX').AsString;
    bitis := ado.FieldByName('SLXX').AsString;
    limit := ado.FieldByName('SLZ').AsInteger;
    kurum := ado.FieldByName('SLZZ').AsString;

    //datalar.Login;
    Key := strtofloat(bitis) - strtofloat(datalar.osgbKodu);
    Key := Key / strtofloat(datalar.osgbKodu);
    bitis := floattostr(Key);
  finally
    ado.Free;
  end;
end;

function LisansKontrol(var fark: double): Boolean;
var
  _fark: double;
  _bitis: Tdate;
begin
//  LisansBilgileri(Tarih, basla, bitis, kurum, limit);

  if (datalar.ProgTarih = '') Then
  Begin
    Result := False;
    Exit;
  End;

  _bitis := strtodate(FormattedTarih(Datalar.LisansBitis));

  if _bitis < strtodate(datalar.ProgTarih) Then
  Begin
    Result := False;

    _fark := _bitis - strtodate(datalar.ProgTarih);
    fark := _fark;
    // ShowMessageskin('Kalan Lisans Süreniz : ' + floattostr(fark)+ ' Gün','','','info');

  End
  Else
  Begin

    _fark := _bitis - strtodate(datalar.ProgTarih);
    fark := _fark;
    Result := True;
  End;

end;

function EnSonRunTarih: Boolean;
//var
//  sql, _now, sistemnow, basla, bitis, kurum, s: string;
  //limit: integer;

begin
  (*
    LisansBilgileri(sistemnow , basla , bitis,kurum,limit);

    _now := datalar.ProgTarih;//tarihal(date());
    s :=  formattedtarih(datalar.ProgBitis);

    if strtodate(_now) >= strtodate(formattedtarih(s))
    Then Begin
    datalar.ADO_SQL11.Close;
    datalar.ADO_SQL11.SQL.Clear;
    sql := 'update parametreler set SLYY = ' + QuotedStr(StringMaskele(tarih(datalar.ProgTarih),True)) +
    ' where SLK = ''GT'' and SLB = ''0004''';
    datalar.QueryExec(datalar.ADO_SQL11,sql);
    result := True;
    End
    Else result := False;
    *)
end;

function gunAdi(_gun: integer): string;
begin
  case _gun of
    2:
      Result := 'PAZARTESÝ';
    3:
      Result := 'SALI';
    4:
      Result := 'ÇARÞAMBA';
    5:
      Result := 'PERÞEMBE';
    6:
      Result := 'CUMA';
    7:
      Result := 'CUMARTESÝ';
    1:
      Result := 'PAZAR';
  end;

end;


function seansgun(_dosyaNo: string): string;
var
  sql, seans, gunler: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'select seansgunleri from HastaKart where dosyaNo =  ' + QuotedStr (
      _dosyaNo);
    datalar.QuerySelect(ado, sql);

    seans := ado.FieldByName('seansgunleri').AsString;
    gunler := '';

    if copy(seans, 1, 1) = '1' then
      gunler := gunler + '1';
    if copy(seans, 2, 1) = '1' then
      gunler := gunler + '2';
    if copy(seans, 3, 1) = '1' then
      gunler := gunler + '3';
    if copy(seans, 4, 1) = '1' then
      gunler := gunler + '4';
    if copy(seans, 5, 1) = '1' then
      gunler := gunler + '5';
    if copy(seans, 6, 1) = '1' then
      gunler := gunler + '6';
    if copy(seans, 7, 1) = '1' then
      gunler := gunler + '7';

    // delete(gunler,1,1);

    Result := gunler;
  finally
    ado.Free;
  end;
end;



function KurumBilgi: TDataset;
var
  sql: string;
begin
  Result := TADOQuery.Create(nil);
  TADOQuery (Result).Connection := datalar.ADOConnection2;
  sql := 'select * from merkezBilgisi';
  datalar.QuerySelect(TADOQuery (Result), sql);
end;

function InternetVarmi: Boolean;
var
  connect_status: DWord;
begin
  try
    connect_status := 2 { lan } + 1 { modem } + 4 { proxy } ;
    Result := InternetGetConnectedState(@connect_status, 0);
  except
    Result := True;

  end;
end;

function StringMaskele(pass: string; Mode: Boolean): String;
Var
  Ch: Char;
  TempPass: String;
  Count: byte;
begin
  If Mode Then { Þifrele }
  Begin
    TempPass := '';
    Count := Length(pass);
    while Count > 0 do
    Begin
      If Count = Length(pass) Then
      Begin
        Ch := pass[Count];
        TempPass := Chr(Ord(Ch) + 31);
      End
    Else
    Begin
      TempPass := Chr(Ord(pass[Count]) + Ord(pass[Count + 1]) + 10) + TempPass;
    End;
    Dec(Count);
  End;
End
Else { Deþifre }
Begin
  TempPass := '';
  Count := Length(pass);
  while Count > 0 do
  Begin
    If Count = Length(pass) Then

    Begin
      Ch := pass[Count];
      TempPass := Chr(Ord(Ch) - 31);
    End
  Else
  Begin
    Ch := pass[Count];
    TempPass := Chr(Ord(Ch) - Ord(TempPass[1]) - 10) + TempPass;
  End;
  Dec(Count);
End;
End;
StringMaskele := TempPass;
end;

function TakipSistemdeVarmi(Takip: string): string;
//var
//  sql: string;
begin
 // datalar.ADO_SQL.close;
//  datalar.ADO_SQL.sql.Clear;
  (*
    sql :=  'select Medula_TakipNo from Poliklinikler_detay where Medula_TakipNo = ' + quatedstr(Takip);
    datalar.queryselect(
    *)
end;
{
procedure datasetiDoldur(_takipNo, tedaviTuru, _basvuru: string);
var
  sql: string;
begin
  datalar.ADO_SQL5.close;
  datalar.ADO_SQL5.sql.Clear;
  sql := 'exec sp_meduladataset_kl_m3 ' + QuotedStr(_takipNo) + ' ,''Giris''';
  datalar.QuerySelect(datalar.ADO_SQL5, sql);
  frmRapor.topluset.Dataset1 := datalar.ADO_SQL5;

  datalar.ADO_SQL6.close;
  datalar.ADO_SQL6.sql.Clear;
  sql := 'exec sp_meduladataset_kl_m3 ' + QuotedStr(_takipNo) + ',''Tani''';
  datalar.QuerySelect(datalar.ADO_SQL6, sql);
  frmRapor.topluset.Dataset2 := datalar.ADO_SQL6;

  (*
    datalar.ADO_SQL.close;
    datalar.ADO_SQL.SQL.Clear;
    sql := 'exec sp_meduladataset '+ QuotedStr(_takipNo)+ ',''Muayene''';
    datalar.QuerySelect(datalar.ADO_SQL,sql);
    frmRapor.topluset.Dataset3 := datalar.ADO_SQL;
    *)

  datalar.ADO_SQL7.close;
  datalar.ADO_SQL7.sql.Clear;
  sql := 'exec sp_meduladataset ' + QuotedStr(_takipNo) + ',''Diger''';
  datalar.QuerySelect(datalar.ADO_SQL7, sql);
  frmRapor.topluset.Dataset4 := datalar.ADO_SQL7;

  datalar.ADO_SQL8.close;
  datalar.ADO_SQL8.sql.Clear;
  sql := 'exec sp_meduladataset ' + QuotedStr(_takipNo) + ',''Tahlil''';
  datalar.QuerySelect(datalar.ADO_SQL8, sql);
  frmRapor.topluset.Dataset5 := datalar.ADO_SQL8;

  datalar.ADO_SQL.close;
  datalar.ADO_SQL.sql.Clear;
  sql := 'exec sp_meduladataset ' + QuotedStr(_takipNo) + ',''Malzeme''';
  datalar.QuerySelect(datalar.ADO_SQL, sql);
  frmRapor.topluset.Dataset6 := datalar.ADO_SQL;

  datalar.ADO_SQL9.close;
  datalar.ADO_SQL9.sql.Clear;
  sql := 'exec sp_meduladataset_kl_m3 ' + QuotedStr(_takipNo) + ',''Dosya''';
  datalar.QuerySelect(datalar.ADO_SQL9, sql);
  frmRapor.topluset.Dataset7 := datalar.ADO_SQL9;

  datalar.ADO_SQL10.close;
  datalar.ADO_SQL10.sql.Clear;
  sql := 'exec sp_meduladataset_kl_m3 ' + QuotedStr(_takipNo) + ',''Rapor''';
  datalar.QuerySelect(datalar.ADO_SQL10, sql);
  frmRapor.topluset.Dataset11 := datalar.ADO_SQL10;

  datalar.ADO_SQL4.close;
  datalar.ADO_SQL4.sql.Clear;
  sql := 'exec sp_meduladataset_kl_m3 ' + QuotedStr(_basvuru)
    + ',''HizmetDetay''';
  datalar.QuerySelect(datalar.ADO_SQL4, sql);
  frmRapor.topluset.Dataset8 := datalar.ADO_SQL4;

  (*
    datalar.ADO_SQL7.close;
    datalar.ADO_SQL7.SQL.Clear;
    sql := 'exec sp_meduladataset_KL '+ QuotedStr(_takipNo)+ ',''Ýlac''';
    datalar.QuerySelect(datalar.ADO_SQL7,sql);
    frmRapor.topluset.Dataset8 := datalar.ADO_SQL7;

    datalar.ADO_SQL9.close;
    datalar.ADO_SQL9.SQL.Clear;
    sql := 'exec sp_meduladataset_KL '+ QuotedStr(_takipNo)+ ',''Malzeme''';
    datalar.QuerySelect(datalar.ADO_SQL9,sql);
    frmRapor.topluset.Dataset10 := datalar.ADO_SQL9;
    *)

  (* datalar.ADO_SQL8.close;
    datalar.ADO_SQL8.SQL.Clear;
    sql := 'exec sp_meduladataset_KL '+ QuotedStr(_takipNo)+ ',''Radyoloji''';
    datalar.QuerySelect(datalar.ADO_SQL8,sql);
    frmRapor.topluset.Dataset9 := datalar.ADO_SQL8;

    datalar.ADO_SQL9.close;
    datalar.ADO_SQL9.SQL.Clear;
    sql := 'exec sp_meduladataset_KL '+ QuotedStr(_takipNo)+ ',''Malzeme''';
    datalar.QuerySelect(datalar.ADO_SQL9,sql);
    frmRapor.topluset.Dataset10 := datalar.ADO_SQL9;

    *)

end;
 }
function TakipTuruAdi(turu: string): string;
var
  Sonuc: string;
begin
  if turu = '1' Then
    Sonuc := 'Muayene Açýlýþ'
  Else if turu = '2' Then
    Sonuc := 'Sevk Kabul'
  Else if turu = '5' Then
    Sonuc := 'Saðlýk Kurulu Raporuna Ýstanaden'
  Else if turu = '6' Then
    Sonuc := 'Kontrol Muayenesi'
  Else if turu = '7' Then
    Sonuc := ''
  Else if turu = '8' Then
    Sonuc := ''
  Else if turu = '9' Then
    Sonuc := ''
  Else
    Sonuc := 'Diyaliz';

  Result := Sonuc;
end;
(*
  procedure HastaTakipBulP(Bilgi : THastaKabul;tarih1,tarih2 : string);
  var
  PrvGrs1 : TakipAraGirisDVO;
  PrvCvp1 : TakipAraCevapDVO;
  dizi , i: integer;
  ad : string;
  begin

  HTTPbaglan(datalar.yardimciIslemler);

  PrvGrs1 := TakipAraGirisDVO.Create;
  PrvCvp1 := TakipAraCevapDVO.Create;

  PrvGrs1.saglikTesisKodu := datalar._kurumKod;
  PrvGrs1.hastaTCK := Bilgi.tckimlikNo;
  //      PrvGrs1.hastaSosGuvNo := bilgi.sosyalGuvenlikNo;
  //      PrvGrs1.hastaKarne := bilgi.karneNo;
  PrvGrs1.baslangicTarihi := tarih1;
  PrvGrs1.bitisTarihi := tarih2;

  try
  PrvCvp1 := (datalar.YardimciIslemler as YardimciIslemler).takipAra(PrvGrs1);
  except
  on E: Exception do
  begin
  //Showmessage(E.Message,'','','info');
  end;
  end;

  if PrvCvp1.sonucKodu = '0000'
  then begin

  //                datalar.bilgi.Adi :=  PrvCvp1.hastaBilgileri.ad + ' ' + PrvCvp1.hastaBilgileri.soyad;
  //                datalar.bilgi.DTarihi :=  PrvCvp1.hastaBilgileri.dogumTarihi;
  //                datalar.bilgi.Cinsiyet :=  PrvCvp1.hastaBilgileri.cinsiyet;


  if length(PrvCvp1.Takipler) = 0
  then begin
  //showmessage('Bu Hastaya Ait Takip Bulunamadý','','','info');
  //    result := '';
  //  exit;
  end;
  datalar.RxHastaTakipleri.EmptyTable;
  for i := 1 to length(PrvCvp1.Takipler)  do
  begin

  datalar.RxHastaTakipleri.Append;

  datalar.RxHastaTakipleri.FieldByName('TakipNo').AsString :=  PrvCvp1.Takipler[i-1].takipNo;
  datalar.RxHastaTakipleri.FieldByName('TakipTarihi').AsString :=  PrvCvp1.Takipler[i-1].takipTarihi;
  datalar.RxHastaTakipleri.FieldByName('takipTuru').AsString :=
  TakipTuruAdi(PrvCvp1.Takipler[i-1].takipTuru);
  //                datalar.RxHastaTakipleri.FieldByName('Sistemde').AsString := sis



  if PrvCvp1.Takipler[i-1].takipDurumu = '1'
  Then
  datalar.RxHastaTakipleri.FieldByName('takipDurumu').AsString :=  'Ödeme Sorgusu Yapýlmýþ'
  Else
  datalar.RxHastaTakipleri.FieldByName('takipDurumu').AsString :=  'Ödeme Sorgusu Yapýlmamýþ';


  datalar.RxHastaTakipleri.FieldByName('sevkEdenTesis').AsString :=  PrvCvp1.Takipler[i-1].sevkEdenTesis;


  datalar.RxHastaTakipleri.Post;

  //                result := result + ',' + PrvCvp1.hastaTakipleri[i-1].takipNo;
  //gridDetay.Cells[1,i] := PrvCvp1.hastaTakipleri[i-1].takipNo;
  //gridDetay.Cells[2,i] := PrvCvp1.hastaTakipleri[i-1].sevkEdenTesisKodu;

  end;

  end else
  begin
  //result := '';
  //ShowMessageSkin(PrvCvp1.sonucMesaji,'','','info');
  end;

  end;
*)

procedure HTTPbaglan(HTTP: THTTPRIO);
begin
 //frmAna.Login;
 // HTTP.HTTPWebNode.username := frmAna._username;
 // HTTP.HTTPWebNode.password := frmAna._sifre;
 // datalar._kurumKod := frmAna._kurumKod;
end;

function LocalIP(var IP: string): Boolean;
var
  wsdata: TWSAData;
  hostName: array [0 .. 255] of Char;
  hostEnt: PHostEnt;
  addr: PChar;
begin
  WSAStartup($0101, wsdata);
  try
    gethostname(PAnsiChar(string(hostName)), SizeOf(hostName));
    hostEnt := gethostbyname(PAnsiChar(string(hostName)));
    if Assigned(hostEnt) then
      if Assigned(hostEnt^.h_addr_list) then
      begin
        addr := PChar(hostEnt^.h_addr_list^);
        if Assigned(addr) then
        begin
          IP := Format('%d.%d.%d.%d', [byte(addr[0]), byte(addr[1]),
            byte(addr[2]), byte(addr[3])]);
          Result := True;
        end
        else
          Result := False;
      end
      else
        Result := False
      else
      begin
        Result := False;
      end;
  finally
    WSACleanup;
  end
end;

function GetLocalHostName(var pHostName: string): Boolean;
var
  LocalMachine: PChar;
  Len: DWord;
begin
  Len := MAX_COMPUTERNAME_LENGTH + 1;
  GetMem(LocalMachine,Len);
  try
    result := GetComputerName(LocalMachine,Len);
    if Result then pHostName := LocalMachine;
  finally
    FreeMem(LocalMachine,Len);
  end;
end;

function raporTakipNobul(DosyaNo: string): string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select raporTakipno from raporlar ' +
    // ' inner join raporlar r on r.dosyaNo = h.dosyaNo and r.raporNo = h.raporNo' +
      ' where dosyaNo = ' + QuotedStr(DosyaNo) + ' and aktif = 1';

    datalar.QuerySelect(ado, sql);
    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;

function raporTakipNoToraporNo(raporTakipNo: string): string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select raporNo from raporlar ' +
    // ' inner join raporlar r on r.dosyaNo = h.dosyaNo and r.raporNo = h.raporNo' +
      ' where raporTakipNo = ' + QuotedStr(raporTakipNo);

    ado.close;
    ado.sql.Clear;
    datalar.QuerySelect(ado, sql);
    Result := ado.Fields[0].AsString;
  finally
    ado.Free;
  end;
end;



function doktorSertifika(kod: string): string;
var
  sql: string;
  x: integer;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select sertifika from Doktorlar where kod = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);

    x := pos('-', ado.FieldByName('sertifika').AsString);
    if x = 0 then
      x := 4;

    Result := copy(ado.FieldByName('sertifika').AsString, 1, x - 1);
  finally
    ado.Free;
  end;
end;

function doktorSertifikaNo(kod: string): string;
var
  sql: string;
  x: integer;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select sertifikaNo from Doktorlar where kod = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);

    x := pos('-', ado.FieldByName('sertifika').AsString);
    if x = 0 then
      x := 4;

    Result := copy(ado.FieldByName('sertifika').AsString, 1, x - 1);
  finally
    ado.Free;
  end;
end;

function doktorTesciltokod(Tescil: string): string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select kod from Doktorlar where TescilNo = ' + QuotedStr(Tescil);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('kod').AsString;
  finally
    ado.Free;
  end;
end;

function doktorTescil(kod: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select TescilNo from Doktorlar where kod = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('TescilNo').AsString;
  finally
    ado.Free;
  end;
end;

function TescildoktorBul(doktor: string): string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select kod from doktorlar where TescilNo = ' + QuotedStr (doktor);
    datalar.QuerySelect(ado, sql);

    Result := ado.Fields[0].AsString;
  finally
    ado.free;
  end;
end;

function doktorTescilToTC(kod: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select TcKimlik from Doktorlar where TescilNo = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('TcKimlik').AsString;
  finally
    ado.Free;
  end;
end;

function doktorSertifikaTescil(Tescil: string): string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select sertifika from Doktorlar where tescilNo = ' + QuotedStr
      (Tescil);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('sertifika').AsString;
  finally
    ado.Free;
  end;
end;

function doktorTCtoKod(tc: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select kod from Doktorlar where TCkimlik = ' + QuotedStr(tc);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('kod').AsString;
  finally
    ado.Free;
  end;
end;

function TaniKodToTaniAd(kod: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select top 1 TANI from icd_teshisleri where ICDKODU = ' + QuotedStr
      (kod);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('TANI').AsString;
  finally
    ado.Free;
  end;
end;

function doktorTC(kod: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select TcKimlik from Doktorlar where kod = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('TcKimlik').AsString;
  finally
    ado.Free;
  end;
end;

function doktorAdi(kod: string): string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select ADI from Doktorlar where kod = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('ADI').AsString;
  finally
    ado.Free;
  end;
end;

function dosyaNoToSGKBilgi(DosyaNo: string): TSGKBilgileri;
var
  sql: string;
  ado: TADOQuery;
  H: TSGKBilgileri;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select k.kod,k.ad,d.kod dkod,d.ad dad from HastaKart h ' +
      'join DevredilenKurum k on h.kurumTip = k.kod ' +
      'join DevredilenKurumDurum d on h.durum = d.kod ' + 'where dosyaNO = ' +
      QuotedStr(DosyaNo);
    datalar.QuerySelect(ado, sql);

    H.devredilenKurumKodu := ado.FieldByName('kod').AsString;
    H.devredilenKurum := ado.FieldByName('ad').AsString;
    H.durum := ado.FieldByName('dad').AsString;
    H.durumKodu := ado.FieldByName('dkod').AsString;

    dosyaNoToSGKBilgi := H;
  finally
    ado.Free;
  end;
end;

function doktorEReceteUser(kod: string; var user: string;
  var pass: string): string;
var
  sql: string;
  ado: TADOQuery;
begin

  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select doktorKodu,ereceteKullaniciAdi,ereceteSifre from DoktorEreceteSifre where doktorKodu = ' + QuotedStr(kod);
    datalar.QuerySelect(ado, sql);

    user := ado.FieldByName('ereceteKullaniciAdi').AsString;
    pass := ado.FieldByName('ereceteSifre').AsString;
    Result := ado.FieldByName('doktorKodu').AsString;
  finally
    ado.Free;
  end;
end;

function doktorBrans(kod: string): string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'select SLY FROM Parametreler WHERE SLK = ' + QuotedStr ('02') + ' and SLB = ' + QuotedStr
      (kod);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('SLY').AsString;
  finally
    ado.Free;
  end;
end;

function doktorReceteBrans(kod: string): string;
var
  sql: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql :=
      'select SLT1 FROM Parametreler WHERE SLK = ' + QuotedStr ('02') + ' and SLB = ' + QuotedStr
      (kod);
    datalar.QuerySelect(ado, sql);

    Result := ado.FieldByName('SLT1').AsString;
  finally
    ado.Free;
  end;
end;



function TarihKayit: Boolean;
var
  sql, sql1, _Tarih, _okunanTarih, _bitistarih: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select convert(varchar,getdate(),112) as kontrolTarih';
    datalar.QuerySelect(ado, sql);
    _Tarih := ado.FieldByName('kontrolTarih').AsString;

    sql1 := 'select SLT,SLVV from parametreler where SLK = ' + QuotedStr ('90');
    datalar.QuerySelect(ado, sql1);
    _okunanTarih := ado.FieldByName('SLT').AsString;
    _bitistarih := ado.FieldByName('SLVV').AsString;

    if _okunanTarih < _Tarih then
    begin

      if _bitistarih > _Tarih then
      begin
        sql := 'update parametreler set SLT = ' + QuotedStr (_Tarih) +
          ' where SLK = ' + QuotedStr ('90');
        datalar.QueryExec(ado, sql);
        Result := True;
        Exit;
      end
      else
        Result := False;
    end
    else
      Result := False;
  finally
    ado.Free;
  end;
end;

function ProgramKontrol(_Tarih: string): Boolean;
var
  sql, Tarih, kontrolTarih, bitisTarih: string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;


    sql := 'select SLB,SLT,SLVV from parametreler where SLK = ' + QuotedStr ('90');
    datalar.QuerySelect(ado, sql);

    Tarih := ado.FieldByName('SLB').AsString;
    kontrolTarih := ado.FieldByName('SLT').AsString;
    bitisTarih := ado.FieldByName('SLVV').AsString;
  finally
    ado.Free;
  end;
end;

(*
  function TeyitNoBul(_Takip : string) : string;
  var
  Ts_Gon1 : TakipOkuGirisDVO;
  Ts_Cvp1 : TakipDVO;
  sql : string;
  begin

  frmAna.Login;

  frmData.Takip.HTTPWebNode.UserName := frmAna._username;
  frmData.Takip.HTTPWebNode.Password := frmAna._sifre;

  Ts_gon1 := TakipOkuGirisDVO.Create;
  Ts_cvp1 := TakipDVO.Create;

  Ts_gon1.saglikTesisKodu := frmAna._Kurumkod;
  Ts_Gon1.takipNo := _Takip;

  try
  Ts_Cvp1 := (frmData.takip as ProvizyonIslemleri).takipOku(Ts_Gon1);
  except
  on E: Exception do Showmessage(E.Message,'','','info');
  end;

  if Ts_Cvp1.sonucKodu = '0000'
  then begin
  result := Ts_Cvp1.sonucMesaji;
  end;


  end;

*)

function TakiplerToHint(DosyaNo: string): String;
var
  sql, text: string;
  i: integer;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select TakýpNo from Gelisler where dosyaNo = ' + QuotedStr (DosyaNo);
    datalar.QuerySelect(ado, sql);
    if ado.eof then
      Exit;

    for i := 1 to ado.RecordCount do
    begin
      text := text + ',' + ado.Fields[0].AsString;
      ado.Next;
    end;

    Result := text;
  finally
    ado.Free;
  end;
end;

function gelisToTakip(DosyaNo, GelisNo: string): String;
var
  sql, text: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select TakýpNo from Gelisler where dosyaNo = ' + QuotedStr(DosyaNo)
      + ' and gelisNo = ' + GelisNo;
    datalar.QuerySelect(ado, sql);
    text := ado.Fields[0].AsString;
    Result := text;
  finally
    ado.Free;
  end;
end;



function sorguTuruAdi(_kod: string): string;
begin
  case strtoint(_kod) of
    0:
      Result := 'Normal';
    1:
      Result := 'Diyaliz';
    2:
      Result := 'FTR';
    3:
      Result := 'Tüp Bebek';
    4:
      Result := 'Kemeik Ýliði Nakli';
    5:
      Result := 'Kök Hücre Nakli';
  else
    Result := '';
  end;

end;

function taburcuKoduAdi(_kod: string): string;
begin
  case strtoint(_kod) of
    1:
      Result := 'Þifa ile Taburcu';
    2:
      Result := 'Haliyle Taburcu';
    3:
      Result := 'Tedaviden Vazgeçme';
    4:
      Result := 'Eve Geri Gönderme';
    5:
      Result := 'Ayný Kapsamlý baþka bir hastaneye sevk';
    6:
      Result := 'Daha kapsamlý baþka bir hastaneye sevk';
    7:
      Result := 'Orata dereceli baþka bir bakým kurumuna sevk';
    8:
      Result := 'Aile hekime bakýmý altýnda eve geri gönderme';
    9:
      Result := 'Hastane içinde baþka bir branþa sevk';
    10:
      Result := 'vefat';
  else
    Result := 'diðer';
  end;

end;

function GuncelKontrol: String;
begin
 Result := WebErisimBilgi('GT','00');
end;

(*
  procedure TakipBilgiOku(_Takip : string;var Hasta : TTakipBilgisi);
  var
  Ts_Gon1 : TakipOkuGirisDVO;
  Ts_Cvp1 : TakipDVO;
  sql : string;
  begin

  frmAna.Login;

  datalar.Takip.HTTPWebNode.UserName := frmAna._username;
  datalar.Takip.HTTPWebNode.Password := frmAna._sifre;

  Ts_gon1 := TakipOkuGirisDVO.Create;
  Ts_cvp1 := TakipDVO.Create;

  Ts_gon1.saglikTesisKodu := frmAna._kurumKod;
  Ts_Gon1.takipNo := _Takip;

  try
  Ts_Cvp1 := (datalar.takip as ProvizyonIslemleri).takipOku(Ts_Gon1);
  except
  on E: Exception do Showmessage(E.Message,'','','info');
  end;

  if Ts_Cvp1.sonucKodu = '0000'
  then begin

  Application.CreateForm(TfrmTakipBilgisiOku, frmTakipBilgisiOku);
  GorselAyar(frmTakipBilgisiOku,frmana.global_img_list4);


  frmTakipBilgisiOku.write(Ts_Cvp1.takipNo,Ts_Cvp1.takipTarihi,Ts_Cvp1.kayitTarihi,inttostr(Ts_Cvp1.tesisKodu),Ts_Cvp1.gidecegiTesisTuru,
  inttostr(Ts_Cvp1.sevkEdenTesis) ,Ts_Cvp1.sevkEdilenBransKodu,Ts_Cvp1.sevkEdilisTarihi,Ts_Cvp1.sevkEdenDrTescil,
  Ts_Cvp1.takipDurumu,datalar.hastaYas,'','');



  frmTakipBilgisiOku.ShowModal;
  frmTakipBilgisiOku.Release;
  frmTakipBilgisiOku := nil;

  end
  else begin
  ShowMessageSkin(Ts_Cvp1.sonucMesaji , '' ,'' ,'info');

  end;


  end;
*)



function TesisTuruAdi(deger: string): string;
begin
  case strtoint(deger) of
    1:
      Result := '1.Basamak kurum ve kuruluþlara sevk';
    2:
      Result := '2.Basamak kurum ve kuruluþlara sevk';
    3:
      Result := '3.Basamak kurum ve kuruluþlara sevk';
    4:
      Result := 'Aðýz ve diþ saðlýðý merkezleri';
    5:
      Result := 'Eczaneler';
    6:
      Result := 'Optik firmalarý';
    7:
      Result := 'Görüntüleme merkezleri';
    8:
      Result := 'Acil hizmet merkezleri';
    9:
      Result := 'Laboratuarlar';
    10:
      Result := 'Tedavi merkezleri';
    11:
      Result := 'Týbbi malzeme tedarikçileri';
  end;

end;

function REV: string;
var
  sql: string;
  _sonSQLID: integer;
  ado : TADOQuery;
begin
  try
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;
      sql := 'select SLX from parametreler where SLK = ' + QuotedStr ('GT');
      datalar.QuerySelect(ado, sql);
      _sonSQLID := strtoint(trim(datalar.http2.Get(
            'http://www.noktayazilim.net/OSGBupdate.txt')));
      if ado.Fields[0].AsInteger < _sonSQLID then
      begin
        Result := 'G';
      end;
    finally
      ado.free;
    end;
  except
    Result := 'Y';
  end;
end;

function mesaj: string;
var
  _mesaj, dosya: string;
begin
  dosya := 'http://www.noktayazilim.net/mesaj_' + tarihal(date()) + '.txt';
  datalar.http2.ConnectTimeout := 10000;
  try
    _mesaj := datalar.http2.Get(dosya);
    if _mesaj <> '' then
    begin
      Result := _mesaj;
    end;
  except
    Result := '';
  end;
end;

procedure Split(const Delimiter: Char; Input: string; const Strings: TStrings);
begin
  Assert(Assigned(Strings));
  Strings.Clear;
  Strings.Delimiter := Delimiter;
  Strings.DelimitedText := Input;
end;

function IcmalBlok(Tel: string): integer;
var
  sql: string;
begin
  datalar.ADO_SQL.close;
  datalar.ADO_SQL.sql.Clear;
  sql :=
    'select SLX from parametreler where SLK = ' + QuotedStr ('33') + ' and SLB = ' + QuotedStr (Tel);
  datalar.QuerySelect(datalar.ADO_SQL, sql);

  Result := datalar.ADO_SQL.Fields[0].AsInteger;

end;

function ZorunluTel(Tel: string): Boolean;
var
  sql: string;
begin
  datalar.ADO_SQL.close;
  datalar.ADO_SQL.sql.Clear;
  sql :=
    'select SLX from parametreler where SLK = ' + QuotedStr ('33') + ' and SLB = ' + QuotedStr (Tel);
  datalar.QuerySelect(datalar.ADO_SQL, sql);

  if datalar.ADO_SQL.Fields[0].AsInteger = 1 then
  begin
    Result := True;
  end
  else
    Result := False;

end;

Function DosyaKopyala(sSrc: string; sDest: string): integer;
var
  Sonuc: integer; // 0 Kopyalandý ; 1 Dosya Var ve Kopyalandý ; 2 Dosya Var ve Kopyalanamadý
begin
  if FileExists(sDest) then
  begin
    try
      DeleteFile(sDest);
      CopyFile(PChar(sSrc), PChar(sDest), False);
      // frmMain.txtKurulumGecmisi.Lines.Add(ZamanStr+sSrc + ' = ' +sDest + ' a kopyalandý' + #13);
      Sonuc := 1;
    except
      // frmMain.txtKurulumGecmisi.Lines.Add(ZamanStr+sDest + ' Dosyasý Zaten Var' + #13);
      Sonuc := 2;
    end;
  end
  else
  begin
    CopyFile(PChar(sSrc), PChar(sDest), False);
    // frmMain.txtKurulumGecmisi.Lines.Add(ZamanStr+sSrc + ' = ' +sDest + ' a kopyalandý' + #13);
    Sonuc := 0;
  end;
  Result := Sonuc;
end;

procedure tarihata(tarih1, tarih2: TcxDateEditKadir; ayadlari: TcxComboBox);
begin
  ayadlari.text := aytoayadi(date());
  tarih1.EditValue := ayaditoay(ayadlari.text);
  tarih2.EditValue := ayliktarih2(ayadlari.text);
end;

procedure tarihata(tarih1, tarih2: TDateTimePicker; ayadlari: TComboBox);
begin
  ayadlari.text := aytoayadi(date());
  tarih1.date := ayaditoay(ayadlari.text);
  tarih2.date := ayliktarih2(ayadlari.text);
end;

procedure tarihata(tarih1, tarih2: TEdit; ayadlari: TComboBox);
begin
  ayadlari.text := aytoayadi(date());
  tarih1.text := datetostr(ayaditoay(ayadlari.text));
  tarih2.text := datetostr(ayliktarih2(ayadlari.text));
end;

function TarihKontrolu(_Tarih: String): Boolean;
var
  Tarih: Tdate;
begin
  if _Tarih = '' then
  begin
    Result := False;
    Exit;
  end;

  try
    Tarih := strtodate(_Tarih);
    Result := Tarih > -1000000;
  except
    Result := False;

  end;

end;

procedure ilComboDoldur(combo: TComboBox);
var
  sql: string;
begin
  sql := 'select iladi from iller';
  ComboDoldur(datalar.ADO_SQL1, sql, combo);
end;

function CariAd(_cariKod: string): string;
var
  sql: string;
begin
  sql := 'select cariad from saticilar where carikod = ' + QuotedStr (_cariKod);
  datalar.QuerySelect(datalar.ADO_SQL3, sql);
  Result := datalar.ADO_SQL3.Fields[0].AsString;
end;

function merkezAdi(_kurum: string): string;
var
  sql: string;
begin
  sql := 'select merkezAdi from MerkezBilgisi';
  // where Kurum = ' + #39 + _kurum + #39;
  datalar.QuerySelect(datalar.ADO_SQL, sql);
  if not datalar.ADO_SQL.eof then
    Result := datalar.ADO_SQL.Fields[0].AsString;

end;

function Kurumadi(_kurum: string): string;
var
  sql: string;
begin
  sql := 'select ADI1 from kurumlar where Kurum = ' + QuotedStr (_kurum);
  datalar.QuerySelect(datalar.ADO_SQL, sql);
  if not datalar.ADO_SQL.eof then
    Result := datalar.ADO_SQL.Fields[0].AsString;

end;

procedure SeperatorDegis;
begin
  FormatSettings.DecimalSeparator := '.';
  FormatSettings.ThousandSeparator := ',';
  FormatSettings.DateSeparator := '.';
end;






procedure Disabled(_form: TForm);
var
  _say, x: integer;

begin
  _say := _form.ComponentCount - 1;

  for x := 0 to _say do
  begin
    if _form.Components[x].tag = -999 Then
      Continue;

    if ((_form.Components[x].ClassType = TEdit) or
        (_form.Components[x].ClassType = TKadirEdit)) and
      (_form.Components[x].tag <> 999) then
    begin
      if TEdit(_form.Components[x]).tag > 100 then
        TEdit(_form.Components[x]).Color := clBtnShadow
      else
        TEdit(_form.Components[x]).Color := clBtnFace;
      TEdit(_form.Components[x]).Enabled := False;
    end;

    if _form.Components[x].ClassType = TComboBox then
    begin
      if TComboBox(_form.Components[x]).tag > 100 then
        TComboBox(_form.Components[x]).Color := clBtnShadow
      else
        TComboBox(_form.Components[x]).Color := clBtnFace;
      TComboBox(_form.Components[x]).Enabled := False;
    end;

    if _form.Components[x].ClassType = TcxComboBox then
    begin
      if TcxComboBox(_form.Components[x]).tag > 100 then
        TcxComboBox(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxComboBox(_form.Components[x]).Style.Color := clWhite;
      TcxComboBox(_form.Components[x]).Enabled := False;
    end;

    if _form.Components[x].ClassType = TcxLookupComboBox then
    begin
      if TcxLookupComboBox(_form.Components[x]).tag > 100 then
        TcxLookupComboBox(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxLookupComboBox(_form.Components[x]).Style.Color := clWhite;
      TcxLookupComboBox(_form.Components[x]).Enabled := False;
    end;

    if _form.Components[x].ClassType = TcxTextEdit then
    begin
      if TcxComboBox(_form.Components[x]).tag > 100 then
        TcxComboBox(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxComboBox(_form.Components[x]).Style.Color := clWhite;
      TcxComboBox(_form.Components[x]).Enabled := False;
    end;

    if _form.Components[x].ClassType = TComboBox then
    begin
      if TComboBox(_form.Components[x]).tag > 100 then
        TComboBox(_form.Components[x]).Color := clBtnShadow
      else
        TComboBox(_form.Components[x]).Color := clBtnFace;
      TComboBox(_form.Components[x]).Enabled := False;
    end;

    (*
      if  (_form.Components[x].ClassType = TDateEdit) and (_form.Components[x].tag <> 999)
      then begin
      if TDateEdit(_form.Components[x]).tag > 100
      then TDateEdit(_form.Components[x]).Color := clBtnShadow
      else TDateEdit(_form.Components[x]).Color := clBtnFace;
      TDateEdit(_form.Components[x]).Enabled := False;
      end;
      *)
    if _form.Components[x].ClassType = TDBNumberEditEh then
    begin
      if TDBNumberEditEh(_form.Components[x]).tag > 100 then
        TDBNumberEditEh(_form.Components[x]).Color := clBtnShadow
      else
        TDBNumberEditEh(_form.Components[x]).Color := clBtnFace;
      TDBNumberEditEh(_form.Components[x]).Enabled := False;
    end;

    if _form.Components[x].ClassType = TMemo then
    begin
      if TComboBox(_form.Components[x]).tag > 100 then
        TComboBox(_form.Components[x]).Color := clBtnShadow
      else
        TComboBox(_form.Components[x]).Color := clBtnFace;
      if TComboBox(_form.Components[x]).tag <> 999 Then
        TComboBox(_form.Components[x]).Enabled := False;
    end;

    if _form.Components[x].ClassType = TRadioGroup Then
    Begin
      TRadioGroup(_form.Components[x]).Enabled := False;
    End;

    if _form.Components[x].ClassType = TListBox then
    begin
      if TListBox(_form.Components[x]).tag > 100 then
        TListBox(_form.Components[x]).Color := clBtnShadow
      else
        TListBox(_form.Components[x]).Color := clBtnFace;
      TListBox(_form.Components[x]).Enabled := False;
    end;

  end;
  _form.Refresh;
end;

procedure ReadOnlyd(_form: TForm);
var
  _say, x: integer;

begin
  _say := _form.ComponentCount - 1;

  for x := 0 to _say do
  begin
    if _form.Components[x].tag = -999 Then
      Continue;

    if ((_form.Components[x].ClassType = TEdit) or
        (_form.Components[x].ClassType = TKadirEdit)) and
      (_form.Components[x].tag <> 999)

      then
    begin
      if TEdit(_form.Components[x]).tag > 100 then
        TEdit(_form.Components[x]).Color := clBtnShadow
      else
        TEdit(_form.Components[x]).Color := clBtnFace;
      TEdit(_form.Components[x]).ReadOnly := True;
    end;

    if _form.Components[x].ClassType = TComboBox then
    begin
      if TComboBox(_form.Components[x]).tag > 100 then
        TComboBox(_form.Components[x]).Color := clBtnShadow
      else
        TComboBox(_form.Components[x]).Color := clBtnFace;
      TComboBox(_form.Components[x]).Enabled := False;
    end;

    if _form.Components[x].ClassType = TcxComboBox then
    begin
      if TcxComboBox(_form.Components[x]).tag > 100 then
        TcxComboBox(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxComboBox(_form.Components[x]).Style.Color := clWhite;
      TcxComboBox(_form.Components[x]).Enabled := False;
    end;

    if _form.Components[x].ClassType = TcxDateEdit then
    begin
      if TcxDateEdit(_form.Components[x]).tag > 100 then
        TcxDateEdit(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxDateEdit(_form.Components[x]).Style.Color := clWhite;
      if TcxDateEdit(_form.Components[x]).tag < 100 then
        TcxDateEdit(_form.Components[x]).Enabled := False;
    end;

    if _form.Components[x].ClassType = TcxTextEdit then
    begin
      if TcxTextEdit(_form.Components[x]).tag > 100 then
        TcxTextEdit(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxTextEdit(_form.Components[x]).Style.Color := clWhite;
      TcxTextEdit(_form.Components[x]).Properties.ReadOnly := True;
    end;

    if _form.Components[x].ClassType = TcxButtonEdit then
    begin
      if TcxButtonEdit(_form.Components[x]).tag > 100 then
        TcxButtonEdit(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxButtonEdit(_form.Components[x]).Style.Color := clWhite;
      TcxButtonEdit(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TComboBox then
    begin
      if TComboBox(_form.Components[x]).tag > 100 then
        TComboBox(_form.Components[x]).Color := clBtnShadow
      else
        TComboBox(_form.Components[x]).Color := clBtnFace;
      TComboBox(_form.Components[x]).Enabled := False;
    end;

    (*
      if  (_form.Components[x].ClassType = TDateEdit) and (_form.Components[x].tag <> 999)
      then begin
      if TDateEdit(_form.Components[x]).tag > 100
      then TDateEdit(_form.Components[x]).Color := clBtnShadow
      else TDateEdit(_form.Components[x]).Color := clBtnFace;
      TDateEdit(_form.Components[x]).Enabled := False;
      end;
      *)
    if _form.Components[x].ClassType = TDBNumberEditEh then
    begin
      if TDBNumberEditEh(_form.Components[x]).tag > 100 then
        TDBNumberEditEh(_form.Components[x]).Color := clBtnShadow
      else
        TDBNumberEditEh(_form.Components[x]).Color := clBtnFace;
      TDBNumberEditEh(_form.Components[x]).ReadOnly := True;
    end;

    if _form.Components[x].ClassType = TMemo then
    begin
      if TMemo(_form.Components[x]).tag > 100 then
        TMemo(_form.Components[x]).Color := clBtnShadow
      else
        TMemo(_form.Components[x]).Color := clBtnFace;
      if TMemo(_form.Components[x]).tag <> 999 Then
        TMemo(_form.Components[x]).ReadOnly := True;
    end;

    if _form.Components[x].ClassType = TRadioGroup Then
    Begin
      TRadioGroup(_form.Components[x]).Enabled := False;
    End;

    if _form.Components[x].ClassType = TListBox then
    begin
      if TListBox(_form.Components[x]).tag > 100 then
        TListBox(_form.Components[x]).Color := clBtnShadow
      else
        TListBox(_form.Components[x]).Color := clBtnFace;
      TListBox(_form.Components[x]).Enabled := False;
    end;

  end;
  _form.Refresh;
end;

procedure ReadOnlydFalse(_form: TForm);
var
  _say, x: integer;

begin
  _say := _form.ComponentCount - 1;

  for x := 0 to _say do
  begin
    if (_form.Components[x].ClassType = TEdit) or
      (_form.Components[x].ClassType = TKadirEdit) then
    begin
      if TEdit(_form.Components[x]).tag > 100 then
        TEdit(_form.Components[x]).Color := clSkyBlue
      else
        TEdit(_form.Components[x]).Color := clWhite;
      TEdit(_form.Components[x]).ReadOnly := False;
    end;

    if _form.Components[x].ClassType = TComboBox then
    begin
      if TComboBox(_form.Components[x]).tag > 100 then
        TComboBox(_form.Components[x]).Color := clSkyBlue
      else
        TComboBox(_form.Components[x]).Color := clWhite;
      TComboBox(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TcxComboBox then
    begin
      if TcxComboBox(_form.Components[x]).tag > 100 then
        TcxComboBox(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxComboBox(_form.Components[x]).Style.Color := clWhite;
      TcxComboBox(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TcxLookupComboBox then
    begin
      if TcxLookupComboBox(_form.Components[x]).tag > 100 then
        TcxLookupComboBox(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxLookupComboBox(_form.Components[x]).Style.Color := clWhite;
      TcxLookupComboBox(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TcxDateEdit then
    begin
      if TcxDateEdit(_form.Components[x]).tag > 100 then
        TcxDateEdit(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxDateEdit(_form.Components[x]).Style.Color := clWhite;
      TcxDateEdit(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TcxTextEdit then
    begin
      if TcxTextEdit(_form.Components[x]).tag > 100 then
        TcxTextEdit(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxTextEdit(_form.Components[x]).Style.Color := clWhite;
      TcxTextEdit(_form.Components[x]).Properties.ReadOnly := False;
    end;

    if _form.Components[x].ClassType = TcxButtonEdit then
    begin
      if TcxButtonEdit(_form.Components[x]).tag > 100 then
        TcxButtonEdit(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxButtonEdit(_form.Components[x]).Style.Color := clWhite;
      TcxButtonEdit(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TComboBox then
    begin
      if TComboBox(_form.Components[x]).tag > 100 then
        TComboBox(_form.Components[x]).Color := clSkyBlue
      else
        TComboBox(_form.Components[x]).Color := clWhite;
      TComboBox(_form.Components[x]).Enabled := True;
    end;

    (*
      if  _form.Components[x].ClassType = TDateEdit
      then begin
      if TDateEdit(_form.Components[x]).tag > 100
      then TDateEdit(_form.Components[x]).Color := clSkyBlue
      else TDateEdit(_form.Components[x]).Color := clWhite;;
      TDateEdit(_form.Components[x]).Enabled := True;
      end;
      *)
    if _form.Components[x].ClassType = TMemo then
    begin
      if (TMemo(_form.Components[x]).tag > 100) and
        (TComboBox(_form.Components[x]).tag <> 999) then
        TMemo(_form.Components[x]).Color := clSkyBlue
      else
        TMemo(_form.Components[x]).Color := clWhite;
      TMemo(_form.Components[x]).ReadOnly := False;
    end;

    if _form.Components[x].ClassType = TRadioGroup Then
    Begin
      TRadioGroup(_form.Components[x]).Enabled := True;
    End;

    if _form.Components[x].ClassType = TListBox then
    begin
      if TListBox(_form.Components[x]).tag > 100 then
        TListBox(_form.Components[x]).Color := clSkyBlue
      else
        TListBox(_form.Components[x]).Color := clWhite;
      TListBox(_form.Components[x]).Enabled := True;
    end;

  end;
end;

procedure EnabledEdit(_form: TForm);
var
  _say, x: integer;

begin
  _say := _form.ComponentCount - 1;

  for x := 0 to _say do
  begin
    if (_form.Components[x].ClassType = TEdit) or
      (_form.Components[x].ClassType = TKadirEdit) then
    begin
      if TEdit(_form.Components[x]).tag > 100 then
        TEdit(_form.Components[x]).Color := clSkyBlue
      else
        TEdit(_form.Components[x]).Color := clWhite;
      TEdit(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TComboBox then
    begin
      if TComboBox(_form.Components[x]).tag > 100 then
        TComboBox(_form.Components[x]).Color := clSkyBlue
      else
        TComboBox(_form.Components[x]).Color := clWhite;
      TComboBox(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TcxComboBox then
    begin
      if TcxComboBox(_form.Components[x]).tag > 100 then
        TcxComboBox(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxComboBox(_form.Components[x]).Style.Color := clWhite;
      TcxComboBox(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TcxLookupComboBox then
    begin
      if TcxLookupComboBox(_form.Components[x]).tag > 100 then
        TcxLookupComboBox(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxLookupComboBox(_form.Components[x]).Style.Color := clWhite;
      TcxLookupComboBox(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TcxTextEdit then
    begin
      if TcxComboBox(_form.Components[x]).tag > 100 then
        TcxComboBox(_form.Components[x]).Style.Color := clSkyBlue
      else
        TcxComboBox(_form.Components[x]).Style.Color := clWhite;
      TcxComboBox(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TComboBox then
    begin
      if TComboBox(_form.Components[x]).tag > 100 then
        TComboBox(_form.Components[x]).Color := clSkyBlue
      else
        TComboBox(_form.Components[x]).Color := clWhite;
      TComboBox(_form.Components[x]).Enabled := True;
    end;

    (*
      if  _form.Components[x].ClassType = TDateEdit
      then begin
      if TDateEdit(_form.Components[x]).tag > 100
      then TDateEdit(_form.Components[x]).Color := clSkyBlue
      else TDateEdit(_form.Components[x]).Color := clWhite;;
      TDateEdit(_form.Components[x]).Enabled := True;
      end;
      *)
    if _form.Components[x].ClassType = TMemo then
    begin
      if (TComboBox(_form.Components[x]).tag > 100) and
        (TComboBox(_form.Components[x]).tag <> 999) then
        TComboBox(_form.Components[x]).Color := clSkyBlue
      else
        TComboBox(_form.Components[x]).Color := clWhite;
      TComboBox(_form.Components[x]).Enabled := True;
    end;

    if _form.Components[x].ClassType = TRadioGroup Then
    Begin
      TRadioGroup(_form.Components[x]).Enabled := True;
    End;

    if _form.Components[x].ClassType = TListBox then
    begin
      if TListBox(_form.Components[x]).tag > 100 then
        TListBox(_form.Components[x]).Color := clSkyBlue
      else
        TListBox(_form.Components[x]).Color := clWhite;
      TListBox(_form.Components[x]).Enabled := True;
    end;

  end;
end;

function tesisAdi(_kod: string): string;
var
  sql: string;
begin
  sql := 'select UNVANI from SAGLIKTESIS where kodu = ' + QuotedStr (_kod);
  datalar.QuerySelect(datalar.ADO_SQL, sql);
  Result := datalar.ADO_SQL.FieldByName('UNVANI').AsString;
end;

function bransAdi(_kod: string): string;
var
  sql: string;
begin
  sql := 'select DALI from KLINIKKODLARI where kodu = ' + QuotedStr (_kod);
  datalar.QuerySelect(datalar.ADO_SQL, sql);
  Result := datalar.ADO_SQL.FieldByName('DALI').AsString;
end;



function Sifrele(s: string): string;
var
  i: integer;
  t: string;
begin
  t := s;
  for i := 1 to Length(s) do
    t[i] := Chr((Ord(s[i]) * 11 + 13) mod 256);
  Sifrele := t;
end;

procedure UserRightInsert(M, Islem , User: string);
var
  ado : TADOQuery;
  sql : string;
begin
  if not CheckmodulIslem (M, Islem) then Exit;

  datalar.QueryExec(ado,sql);
  sql := 'if not exists(select 1 from UserSettings where Kullanici = ' +
          QuotedStr(User) + ' and Modul = ' + QuotedStr(M) +
          ' and Islem = ' + QuotedStr(Islem) + ')' +
         ' insert into UserSettings(Kullanici,Modul,Islem,Izin) ' +
         ' values(' + QuotedStr(User) + ',' +
                      QuotedStr(M) + ',' +
                      QuotedStr(Islem) + ',' +
                      '0)';
  datalar.QueryExec(ado,sql);

end;

function CheckModulIslem (const pModul, pIslem: String):Boolean;
var
  ado : TADOQuery;
  sql : string;
begin
  Result := False;
  if IsNull (pModul) or IsNull (pIslem) then
  begin
    showmessageskin ('Modul veya Ýþlem bilgisi boþ olamaz', '', '', 'info');
    Exit;
  end;

  sql := 'if not exists(select 1 from ModulIslem where Modul = ' + QuotedStr(pModul) +
          ' and Islem = ' + QuotedStr(pIslem) + ')' +
         ' insert into ModulIslem(KAYITID,Modul,Islem) ' +
         ' SELECT ISNULL ((SELECT MAX (KAYITID) FROM ModulIslem), 0) + 1,' +
                      QuotedStr(pModul) + ',' +
                      QuotedStr(pIslem);
  datalar.QueryExec(ado,sql);
  Result := True;
end;

function UserRight(M, Islem: string): Boolean;
var
 adoUG : TADOQuery;
 izinUG : Boolean;
begin
  if not CheckModulIslem (M, Islem) then Exit;

  adoUG := TADOQuery.Create(nil);
  try
    datalar.QuerySelect(adoUG,
     'SELECT US.Izin FROM UserGroupSettings US ' +
     'join Users U on U.Grup = US.kullanici ' +
     'WHERE U.Kullanici = ' + QuotedStr (datalar.username) +
     ' AND US.Modul = ' + QuotedStr (M) +
     ' AND US.Islem = ' + QuotedStr (Islem));
    adoUG.First;
    if adoUG.eof Then
      izinUG := False
    Else
      izinUG := adoUG.Fields[0].AsBoolean;


    if izinUG = True then
    begin
      Result := True;
      exit;
    end;

    datalar.QuerySelect(adoUG,
      'SELECT Izin FROM UserSettings WHERE Kullanici = ' + QuotedStr (datalar.username) +
      ' AND Modul = ' + QuotedStr (M) +
      ' AND Islem = ' + QuotedStr (Islem));
    adoUG.First;
    if adoUG.eof Then
      Result := False
    Else
      Result := adoUG.Fields[0].AsBoolean;
  finally
    adoUG.free;
  end;

end;

function AktifYil(donem: string): string;
begin
  // sql := 'select * from muh_donemler where donem = ' + #39 + donem + #39;
  // datalar.QuerySelect(datalar.ADO_SQL2,sql);

  // result := copy(datalar.ADO_SQL2.fieldbyname('tarih1').AsString,1,4);

end;

function HesapTanimGetir(_kod: string): string;
begin
  datalar.QuerySelect(datalar.ADO_SQL3, 'select * from muh_Hesap_tanim');
  datalar.ADO_SQL3.Locate('TANIM', _kod, []);
  Result := datalar.ADO_SQL3.FieldByName('hesapkodu').AsString;
end;

function PosHesapGetir(_kod: string): string;
begin
  datalar.QuerySelect(datalar.ADO_SQL2,
    'select * from Keydat where slk = ' + QuotedStr ('53') + ' and slb = ' + QuotedStr (_kod));
  Result := datalar.ADO_SQL2.FieldByName('SLXX').AsString;
end;

function ayaditoay(ayadi: string; yil: string = ''): Tdate;
var
  Tarih: Tdate;
begin
  Tarih := Encodedate (1900, 1, 1);
  if yil = '' Then
    yil := copy(datetostr(date()), 7, 4);

  if ayadi = 'OCAK' then
    Tarih := strtodate('01.01.' + yil);
  if ayadi = 'SUBAT' then
    Tarih := strtodate('01.02.' + yil);
  if ayadi = 'MART' then
    Tarih := strtodate('01.03.' + yil);
  if ayadi = 'NISAN' then
    Tarih := strtodate('01.04.' + yil);
  if ayadi = 'MAYIS' then
    Tarih := strtodate('01.05.' + yil);
  if ayadi = 'HAZIRAN' then
    Tarih := strtodate('01.06.' + yil);
  if ayadi = 'TEMMUZ' then
    Tarih := strtodate('01.07.' + yil);
  if ayadi = 'AGUSTOS' then
    Tarih := strtodate('01.08.' + yil);
  if ayadi = 'EYLUL' then
    Tarih := strtodate('01.09.' + yil);
  if ayadi = 'EKIM' then
    Tarih := strtodate('01.10.' + yil);
  if ayadi = 'KASIM' then
    Tarih := strtodate('01.11.' + yil);
  if ayadi = 'ARALIK' then
    Tarih := strtodate('01.12.' + yil);

  Result := Tarih;

end;

function aytoayadi(_ay: Tdate): String;
var
  Tarih, ay: string;
begin
  Tarih := tarihal(_ay);
  ay := copy(Tarih, 5, 2);

  if ay = '01' then
    Tarih := 'OCAK';
  if ay = '02' then
    Tarih := 'ÞUBAT';
  if ay = '03' then
    Tarih := 'MART';
  if ay = '04' then
    Tarih := 'NÝSAN';
  if ay = '05' then
    Tarih := 'MAYIS';
  if ay = '06' then
    Tarih := 'HAZÝRAN';
  if ay = '07' then
    Tarih := 'TEMMUZ';
  if ay = '08' then
    Tarih := 'AÐUSTOS';
  if ay = '09' then
    Tarih := 'EYLÜL';
  if ay = '10' then
    Tarih := 'EKÝM';
  if ay = '11' then
    Tarih := 'KASIM';
  if ay = '12' then
    Tarih := 'ARALIK';

  Result := Tarih;

end;

function ayliktarih(Tarih: Tdate): Tdate;
var
  s: string;
  sp: Char;
  ay, yil, gun: word;

begin

  sp := FormatSettings.DateSeparator;
  s := '01' + sp + copy(tarihal(Tarih), 5, 2) + sp + copy(tarihal(Tarih), 1, 4);
  ay := strtoint(copy(tarihal(Tarih), 5, 2));

  inc(ay);
  if ay > 12 then
    ay := 1;
  yil := strtoint(copy(tarihal(Tarih), 1, 4));
  gun := 1;
  if (ay = 1) and (gun = 1) then
    inc(yil);
  Result := encodedate(yil, ay, gun) - 1;

end;

function ayliktarih(Tarih: Tdate; var t1: Tdate): Tdate; overload;
var
  s: string;
  sp: Char;
  ay, yil, gun: word;

begin

  sp := FormatSettings.DateSeparator;
  s := '01' + sp + copy(tarihal(Tarih), 5, 2) + sp + copy(tarihal(Tarih), 1, 4);

  ay := strtoint(copy(tarihal(Tarih), 5, 2));

  inc(ay);
  if ay > 12 then
    ay := 1;
  yil := strtoint(copy(tarihal(Tarih), 1, 4));
  gun := 1;
  if (ay = 1) and (gun = 1) then
    inc(yil);

  t1 := strtodate(s);
  Result := encodedate(yil, ay, gun) - 1;

end;

function ayliktarih(Tarih: Tdate; t1: TcxCustomDateEdit): Tdate; overload;
var
  s: string;
  sp: Char;
  ay, yil, gun: word;

begin

  sp := FormatSettings.DateSeparator;
  s := '01' + sp + copy(tarihal(Tarih), 5, 2) + sp + copy(tarihal(Tarih), 1, 4);

  ay := strtoint(copy(tarihal(Tarih), 5, 2));

  inc(ay);
  if ay > 12 then
    ay := 1;
  yil := strtoint(copy(tarihal(Tarih), 1, 4));
  gun := 1;
  if (ay = 1) and (gun = 1) then
    inc(yil);

  t1.Date := strtodate(s);
  Result := encodedate(yil, ay, gun) - 1;

end;


function ayliktarih2(ayadi: string; _yil_: string = ''): Tdate;
var
  s: string;
  sp: Char;
  Tarih: Tdate;
  ay, yil, gun: word;

begin
  if _yil_ = '' Then
    _yil_ := copy(datetostr(date()), 7, 4);
  Tarih := ayaditoay(ayadi, _yil_);

  sp := FormatSettings.DateSeparator;
  s := '01' + sp + copy(tarihal(Tarih), 5, 2) + sp + copy(tarihal(Tarih), 1, 4);
  ay := strtoint(copy(tarihal(Tarih), 5, 2));

  inc(ay);
  if ay > 12 then
    ay := 1;
  yil := strtoint(copy(tarihal(Tarih), 1, 4));
  gun := 1;
  if (ay = 1) and (gun = 1) then
    inc(yil);
  Result := encodedate(yil, ay, gun) - 1;

end;

function hesapbakiye(hesap: string): real;
var
  sql: string;
  borc, alacak: real;
begin
  if hesap <> '' then
  begin
    sql := 'exec hesap_bakiye  ' + QuotedStr (trim(hesap));
    datalar.QuerySelect(datalar.ADO_SQL, sql);
    borc := datalar.ADO_SQL.FieldByName('borc').AsFloat;
    alacak := datalar.ADO_SQL.FieldByName('alacak').AsFloat;

    Result := borc - alacak;
  end
  else
    Result := 0;

end;

procedure Grid_TemizleRowNotDelete(grid_adi: TStringGrid);
var
  i, j, k: integer;
begin
  if grid_adi.FixedRows = 0 then
    k := 0
  else
    k := grid_adi.FixedRows;
  for i := k to grid_adi.RowCount - 1 do
    for j := 0 to grid_adi.ColCount - 1 do
      grid_adi.Cells[j, i] := '';
  (*
    if Grid_Adi.FixedRows > 0
    Then Grid_Adi.RowCount := Grid_Adi.FixedRows + 1
    else Grid_Adi.RowCount := 1; *)
end;

procedure Grid_Temizle(grid_adi: TStringGrid);
var
  i, j, k: integer;
begin
  if grid_adi.FixedRows = 0 then
    k := 0
  else
    k := grid_adi.FixedRows;
  for i := k to grid_adi.RowCount - 1 do
    for j := 0 to grid_adi.ColCount - 1 do
      grid_adi.Cells[j, i] := '';
  if grid_adi.FixedRows > 0 Then
    grid_adi.RowCount := grid_adi.FixedRows + 1
  else
    grid_adi.RowCount := 1;
end;

function AllignRight(s: string): string;
var
  i: integer;
begin
  for i := 1 to MAX_NUM_LENGTH - Length(s) do
    if ((i mod 4) <> 0) then
      insert('  ', s, 1)
    else
      insert(' ', s, 1);
  AllignRight := s;
end;

function txtTOtxt_M(txt: string): string;
var
  i: integer;
  sp: Char;
begin
  sp := FormatSettings.ThousandSeparator;
  if (trim(txt) = '') OR (trim(txt) = '0.00') Then
    txt := '0'
  Else
    for i := 1 to Length(txt) do
      if ((txt[i] = sp) OR (txt[i] = ' ')) Then
        delete(txt, i, 1);
  txtTOtxt_M := txt;
end;

procedure XlsBeginStream(XlsStream: TStream; const BuildNumber: word);
begin

end;

procedure XlsEndStream(XlsStream: TStream);
begin

end;

procedure XlsWriteCellRk(XlsStream: TStream; const ACol, ARow: word;
  const AValue: Integer);


begin

end;

procedure XlsWriteCellNumber(XlsStream: TStream; const ACol, ARow: word;
  const AValue: double);
begin

end;

procedure XlsWriteCellLabel(XlsStream: TStream; const ACol, ARow: word;
  const AValue: string);

begin

end;

function kullanici: string;
begin
  Result := datalar.username;
end;

function ControlTarih(t: string): integer;
// tarih is given from the mask edit in the form __/__/____
var
  d, M, y: integer;
  x: string;
begin
  x := t;
  if ((x[1] = ' ') OR (x[2] = ' ') OR (x[4] = ' ') OR (x[5] = ' ') OR
      (x[7] = ' ') OR (x[8] = ' ') OR (x[9] = ' ') OR (x[10] = ' ')) Then
  begin
    ControlTarih := 0;
    Exit;
  end;

  delete(x, 3, 8);
  if (x[1] = '0') Then
    delete(x, 1, 1);
  d := StrToInt(x);
  if (d = 0) Then
  begin
    ControlTarih := 0;
    Exit;
  end;

  x := t;
  delete(x, 1, 3);
  delete(x, 3, 5);
  if (x[1] = '0') Then
    delete(x, 1, 1);
  M := StrToInt(x);
  if (M = 0) Then
  begin
    ControlTarih := 0;
    Exit;
  end;

  x := t;
  delete(x, 1, 6);
  y := StrToInt(x);

  if (y = 0) Then
  begin
    ControlTarih := 0;
    Exit;
  end;

  if (d > 31) Then
  begin
    ControlTarih := 0;
    Exit;
  end;

  if (M > 12) Then
  begin
    ControlTarih := 0;
    Exit;
  end;

  if (((M = 4) OR (M = 6) OR (M = 9) OR (M = 11)) AND (d = 31)) Then
  begin
    ControlTarih := 0;
    Exit
  end;

  if ((M = 2) AND (d > 29)) Then
  begin
    ControlTarih := 0;
    Exit;
  end;
  if ((M = 2) AND (y mod 4 <> 0) AND (d = 29)) Then
  begin
    ControlTarih := 0;
    Exit;
  end;

  ControlTarih := 1;
end;

function GetDataForMuavin: string;
begin
  GetDataForMuavin := DataForMuavin;
end;

function AnaHesapAdi(AnaNo: string): string;
var
  SQLstr: string;
begin
  SQLstr :=
    'SELECT hesap_adi FROM muh_hesap_plani WHERE hesap_kodu = ' + QuotedStr (AnaNo);
  datalar.QuerySelect(datalar.ADO_SQL3, SQLstr);
  AnaHesapAdi := datalar.ADO_SQL3.FieldByName('hesap_adi').AsString;
end;

function _HesapAdi(hesapkodu: string): string;
var
  SQLstr: string;
begin
  SQLstr :=
    'SELECT hesap_adi FROM muh_hesap_plani WHERE hesap_kodu = ' + QuotedStr (
    hesapkodu);
  datalar.QuerySelect(datalar.ADO_SQL3, SQLstr);
  _HesapAdi := datalar.ADO_SQL3.FieldByName('hesap_adi').AsString;
end;

function Bugun: string;
var
  y, M, d: word;
  yil, ay, gun: string;
  ds: Char;
begin
  decodedate(date, y, M, d);
  ds := FormatSettings.DateSeparator;
  yil := IntToStr(y);
  ay := IntToStr(M);
  gun := IntToStr(d);

  if (Length(ay) = 1) Then
    insert('0', ay, 1);
  if (Length(gun) = 1) Then
    insert('0', gun, 1);

  Bugun := gun + ds + ay + ds + yil;
end;

function Zorunlu(_frm: TForm; var myhint: string): Boolean;
var
  i: integer;
  tmp: string;
  TComp_: TComponent;
begin
  Result := False;
  if not Result then;;;

  for i := 0 to _frm.ComponentCount - 1 do
  begin
    TComp_ := _frm.Components[i];
    if TComp_ <> nil Then
    begin
      if TComp_ is TEdit Then
        if (TEdit(TComp_).Color = ZorunluRenk) and
          (TEdit(TComp_).Visible) Then
        begin
          if (trim(TEdit(TComp_).text) = '') Then
          begin
            if myhint = '' Then
              try
                TEdit(TComp_).SetFocus;
              except
              end;
            myhint := myhint + #13#10 + '   * ' + TEdit(TComp_).Hint;
            // exit;
          end;
          // (*
          if (TEdit(TComp_).Visible) Then
          begin
            tmp := TEdit(TComp_).text;
            tmp := StringReplace(tmp, ' ', '', [rfReplaceAll]);
            if (tmp <> TEdit(TComp_).text) or (tmp = '') Then
            begin
              if myhint = '' Then
                try
                  TEdit(TComp_).SetFocus;
                except
                end;
              myhint := myhint + #13#10 + '   * ' + TEdit(TComp_).Hint +
                ' -[GÝRÝÞ BÝÇÝMÝ HATALI olabilir.]';
              // exit;
            end;
          end;
          // *)
        end;
      if TComp_ is TMemo Then
        if (TMemo(TComp_).Color = ZorunluRenk) and (TMemo(TComp_).Visible) and
          (trim(TMemo(TComp_).text) = '') Then
        begin
          if myhint = '' Then
            try
              TMemo(TComp_).SetFocus;
            except
            end;
          myhint := myhint + #13#10 + '   * ' + TMemo(TComp_).Hint;
          // exit;
        end;

      if TComp_ is TListBox Then
        if (TListBox(TComp_).Color = ZorunluRenk) and
          (TListBox(TComp_).Visible) and (TListBox(TComp_).Items.Count = 0)
          Then
        begin
          if myhint = '' Then
            try
              TListBox(TComp_).SetFocus;
            except
            end;
          myhint := myhint + #13#10 + '   * ' + TListBox(TComp_).Hint;
          // exit;
        end;

      if TComp_ is TComboBox Then
        if (TComboBox(TComp_).Color = ZorunluRenk) and
          (TComboBox(TComp_).Visible) and (TComboBox(TComp_).text = '') Then
        begin
          if myhint = '' Then
            try
              TComboBox(TComp_).SetFocus;
            except
            end;
          myhint := myhint + #13#10 + '   * ' + TComboBox(TComp_).Hint;
          // exit;
        end;

      if TComp_ is TComboBox Then
        if (TComboBox(TComp_).Color = ZorunluRenk) and
          (TComboBox(TComp_).Visible) and (TComboBox(TComp_).text = '') Then
        begin
          if myhint = '' Then
            try
              TComboBox(TComp_).SetFocus;
            except
            end;
          myhint := myhint + #13#10 + '   * ' + TComboBox(TComp_).Hint;
          // exit;
        end;

      if TComp_ is TRadioGroup Then
        if (TRadioGroup(TComp_).ItemIndex = -1) and
          (TRadioGroup(TComp_).Visible) Then
        begin
          if myhint = '' Then
            try
              TRadioGroup(TComp_).SetFocus;
            except
            end;
          myhint := myhint + #13#10 + '   * ' + TRadioGroup(TComp_).Hint;
          // exit;
        end;

    end; // end of nil
  end; // end of for
  Result := True;
end;

function Zorunlu(_pnl: TPanel; var myhint: string): Boolean;
var
  i: integer;
  tmp: string;
  TComp_: TComponent;
begin
  Result := False;
  if not Result then;;;
  for i := 0 to _pnl.ControlCount - 1 do
  begin
    TComp_ := _pnl.Controls[i];
    if TComp_ <> nil Then
    begin
      if TComp_ is TEdit Then
        if (TEdit(TComp_).Color = ZorunluRenk) and
          (TEdit(TComp_).Visible) Then
        begin
          if(trim(TEdit(TComp_).text) = '') Then
          begin
            if myhint = '' Then
              try
                TEdit(TComp_).SetFocus;
              except
              end;
            myhint := myhint + #13#10 + '   * ' + TEdit(TComp_).Hint;
            // exit;
          end;
          // (*
          if (TEdit(TComp_).Visible) Then
          begin
            tmp := TEdit(TComp_).text;
            tmp := StringReplace(tmp, ' ', '', [rfReplaceAll]);
            if (tmp <> TEdit(TComp_).text) or (tmp = '') Then
            begin
              if myhint = '' Then
                try
                  TEdit(TComp_).SetFocus;
                except
                end;
              myhint := myhint + #13#10 + '   * ' + TEdit(TComp_).Hint +
                ' -[GÝRÝÞ BÝÇÝMÝ HATALI olabilir.]';
              // exit;
            end;
          end;
          // *)
        end;
      if TComp_ is TMemo Then
        if (TMemo(TComp_).Color = ZorunluRenk) and (TMemo(TComp_).Visible) and
          (trim(TMemo(TComp_).text) = '') Then
        begin
          if myhint = '' Then
            try
              TMemo(TComp_).SetFocus;
            except
            end;
          myhint := myhint + #13#10 + '   * ' + TMemo(TComp_).Hint;
          // exit;
        end;

      if TComp_ is TListBox Then
        if (TListBox(TComp_).Color = ZorunluRenk) and
          (TListBox(TComp_).Visible) and (TListBox(TComp_).Items.Count = 0)
          Then
        begin
          if myhint = '' Then
            try
              TListBox(TComp_).SetFocus;
            except
            end;
          myhint := myhint + #13#10 + '   * ' + TListBox(TComp_).Hint;
          // exit;
        end;

      if TComp_ is TComboBox Then
        if (TComboBox(TComp_).Color = ZorunluRenk) and
          (TComboBox(TComp_).Visible) and (TComboBox(TComp_).text = '') Then
        begin
          if myhint = '' Then
            try
              TComboBox(TComp_).SetFocus;
            except
            end;
          myhint := myhint + #13#10 + '   * ' + TComboBox(TComp_).Hint;
          // exit;
        end;

      if TComp_ is TRadioGroup Then
        if (TRadioGroup(TComp_).ItemIndex = -1) and
          (TRadioGroup(TComp_).Visible) Then
        begin
          if myhint = '' Then
            try
              TRadioGroup(TComp_).SetFocus;
            except
            end;
          myhint := myhint + #13#10 + '   * ' + TRadioGroup(TComp_).Hint;
          // exit;
        end;


      (*
        if TComp_ is TDBEditEh
        Then if  (TDBEditEh(TComp_).text = '') and (TDBEditEh(TComp_).Color = ZorunluRenk)
        and (TDBEditEh(TComp_).Visible)
        Then begin
        if myhint = '' Then try TDBEditEh(TComp_).SetFocus; except end;
        myhint := myhint + #13#10 + '   * ' + TDBEditEh(TComp_).Hint;
        //exit;
        end;

        if TComp_ is TDBDateTimeEditEh
        Then if  (TDBDateTimeEditEh(TComp_).text = '  .  .    ') and (TDBDateTimeEditEh(TComp_).Color = ZorunluRenk)
        and (TDBDateTimeEditEh(TComp_).Visible)
        Then begin
        if myhint = '' Then try TDBDateTimeEditEh(TComp_).SetFocus; except end;
        myhint := myhint + #13#10 + '   * ' + TDBDateTimeEditEh(TComp_).Hint;
        //exit;
        end;
        *)
      if TComp_ is TComboBox Then
        if (TComboBox(TComp_).text = '') and
          (TComboBox(TComp_).Color = ZorunluRenk) and
          (TComboBox(TComp_).Visible) Then
        begin
          if myhint = '' Then
            try
              TComboBox(TComp_).SetFocus;
            except
            end;
          myhint := myhint + #13#10 + '   * ' + TComboBox(TComp_).Hint;
          // exit;
        end;

    end; // end of nil
  end; // end of for
  Result := True;
end;





procedure GorselAyar(_frm: TForm; image: TImageList);
var
  say: word;
  _Kontrol: TComponent;
  _bmp: TBitmap;
begin
  // _bmp2 := TBitmap.Create;
  // BitBtn2ATBtn(_frm);

  {
    if _frm.KeyPreview = False
    Then begin
    _frm.OnKeyPress := OnKeyPress;
    if _frm.MethodAddress('FormKeyDown') = nil
    Then _frm.OnKeyDown := OnKeyDown;
    _frm.KeyPreview := True;
    end;
    _frm.OnKeyPress := OnKeyPress;
    if _frm.MethodAddress('FormKeyDown') = nil
    Then _frm.OnKeyDown := OnKeyDown;
    }
  {
    if _frm.FindComponent('_MAVIBTN_') <> nil
    Then begin
    _frm.FindComponent('_MAVIBTN_').KeyDown := frmData.NextKontrol;

    end;
    }
  {
    if APP_NAME = 'MUHASEBE'
    Then begin
    if (_frm.Height + 50 > Screen.Height)
    Then begin
    try
    if not (biMaximize in _frm.BorderIcons)
    Then _frm.BorderIcons := _frm.BorderIcons + [biMaximize];
    except
    end;
    _frm.WindowState := wsMaximized;
    end;
    end;
    }

  _frm.Caption := sirket('');

  for say := 0 to _frm.ComponentCount - 1 do
  begin
    _Kontrol := _frm.Components[say];


    if _Kontrol is TPanel Then
    begin
      if AnsiUpperCase(_Kontrol.Name) = 'PNLUST' Then
      begin
        TPanel(_Kontrol).Color := _pnlUst
      end
      else if AnsiUpperCase(_Kontrol.Name) = 'PNLTITLE' Then
      begin
        TPanel(_Kontrol).Color := _pnlBaslik;
        TPanel(_Kontrol).Font.Color := _pnlBaslikYazi;
        TPanel(_Kontrol).Alignment := taLeftJustify;
        TPanel(_Kontrol).BorderWidth := 5;
        TPanel(_Kontrol).Caption := KucukHarfTRK(TPanel(_Kontrol).Caption);
      end
      else if AnsiUpperCase(_Kontrol.Name) = 'PNLONAY' Then
      begin
        TPanel(_Kontrol).Color := _pnlOnay;
        TPanel(_Kontrol).Font.Color := _pnlOnayYazi;
      end
      else if AnsiUpperCase(_Kontrol.Name) = 'PNLTOOLBAR' Then
        TPanel(_Kontrol).Color := _pnlOnay;
      Continue;
    end;

    if (_Kontrol is TEdit) Then
    begin

      if TEdit(_Kontrol).Color = clSkyBlue Then
        TEdit(_Kontrol).Color := ZorunluRenk
      else if (TEdit(_Kontrol).Color = clWindow) or
        (TEdit(_Kontrol).Color = clWhite) Then
        TEdit(_Kontrol).Color := OpsiyonRenk
      else if (TEdit(_Kontrol).Color = clBtnFace) or
        (TEdit(_Kontrol).Color = clSilver) Then
        TEdit(_Kontrol).Color := KapaliRenk;

      if (TEdit(_Kontrol).ParentFont = False) and
        (TEdit(_Kontrol).Alignment = taLeftJustify) Then
      begin
        TEdit(_Kontrol).Alignment := taCenter;
        TEdit(_Kontrol).Alignment := taLeftJustify;
      end;

      if TEdit(_Kontrol).Width > 0 Then
      begin
        _bmp := TBitmap.Create;
        try
        //  TEdit(_Kontrol).NumGlyphs := 1;
          image.GetBitmap(0, _bmp);
     //     TEdit(_Kontrol).Glyph := _bmp;
        finally
          _bmp.Free;
        end;
        Continue;
      end;
    end;

    if (_Kontrol is TMemo) and (_Kontrol.tag <> 999) Then
    begin
      if TMemo(_Kontrol).Color = clSkyBlue Then
        TMemo(_Kontrol).Color := ZorunluRenk
      else if (TMemo(_Kontrol).Color = clBtnFace) or
        (TMemo(_Kontrol).Color = clSilver) Then
        TMemo(_Kontrol).Color := KapaliRenk
      else if (TMemo(_Kontrol).Color = clWhite) or
        (TMemo(_Kontrol).Color = clWindow) Then
        TMemo(_Kontrol).Color := OpsiyonRenk;
    end;

    {
      if (_Kontrol is TCheckBox)
      Then begin
      TCheckBox(_Kontrol).OnKeyPress :=   frmData.chkKeyPress;
      Continue;
      end;
      }

    if (_Kontrol is TComboBox) Then
    begin
      if TComboBox(_Kontrol).Color = clSkyBlue Then
        TComboBox(_Kontrol).Color := ZorunluRenk
      else if (TComboBox(_Kontrol).Color = clWindow) or
        (TComboBox(_Kontrol).Color = clWhite) Then
        TComboBox(_Kontrol).Color := OpsiyonRenk
      else if (TComboBox(_Kontrol).Color = clBtnFace) or
        (TComboBox(_Kontrol).Color = clSilver) Then
        TComboBox(_Kontrol).Color := KapaliRenk;
      Continue;
    end;



    if (_Kontrol.tag > 0) and (_Kontrol is TBitBtn) and
       (_Kontrol.tag <> 999) Then
    begin
      // {
      TBitBtn(_Kontrol).ShowHint := True;

      { if _Kontrol.Tag < 13
        Then begin
        {
        _comp := FindComponent('_' +  IntToStr(_Kontrol.Tag) );
        _ms.Position := 0;

        TAdvToolButton(_comp).GlyphDisabled.SaveToStream( _ms );
        _ms.Position := 0;
        TAdvToolButton(_Kontrol).GlyphDisabled.LoadFromStream( _ms );

        _ms.Position := 0;
        TAdvToolButton(_comp).Glyph.SaveToStream( _ms );
        _ms.Position := 0;
        TAdvToolButton(_Kontrol).Glyph.LoadFromStream( _ms );

        end
        else begin }
      // }
      _bmp := TBitmap.Create;
      try
        image.GetBitmap(_Kontrol.tag, _bmp);
        TBitBtn(_Kontrol).Glyph := _bmp;
      finally
        _bmp.Free;
      end;
      // end;
      Continue;
    end;

    if (_Kontrol.tag > 0) and (_Kontrol is TBitBtn)
       Then
    begin
      //_bmp := TBitmap.Create;
      //try
      //   global_img_list2.GetBitmap(_Kontrol.Tag, _bmp);
      //   if TBitBtn(_Kontrol).NumGlyphs = 2
      //   Then global_img_list2.GetBitmap(_Kontrol.Tag, _bmp)
      //   else global_img_list.GetBitmap(_Kontrol.Tag, _bmp);
      //   TBitBtn(_Kontrol).Glyph := _bmp;
      //finally
      //   _bmp.Free;
      //end;
      Continue;
    end
    else if (pos('BTNOK', AnsiUpperCase(_Kontrol.Name)) > 0) Then
    begin
      { _bmp := TBitmap.Create;
        global_img_list16.GetBitmap(0, _bmp);
        if _Kontrol is TAdvToolButton
        Then TAdvToolButton(_Kontrol).Glyph := _bmp
        else TBitBtn(_Kontrol).Glyph := _bmp;
        _bmp.Free;
        Continue; }
    end;
  end; // end of for
end;

function KucukHarfTRK(str: string): string;
var
  ln: word;
  str_: string;
begin
  Result := str;
  if Length(str) > 0 Then
  begin
    ln := 1;
    while ln <= Length(str) do
    begin
      str_ := str[ln];
      if (ln > 1) and (str[ln - 1] <> ' ') Then
      begin
        case str[ln] of
          'I':
            str[ln] := 'ý';
          'Ý':
            str[ln] := 'i'
          else
          begin
            str_ := AnsiLowerCase(str_);
            str[ln] := str_[1];
          end;
        end; // end of case
      end
      else
      begin
        case str[ln] of
          'ý':
            str[ln] := 'I';
          'i':
            str[ln] := 'Ý'
          else
          begin
            str_ := AnsiUpperCase(str_);
            str[ln] := str_[1];
          end;
        end; // end of case
      end;
      Inc(ln);
    end;
  end;
  Result := str;
end;




function DonemSeansSayisi(kod, donem, durum: string): integer;
var
  sql, kodsql, durumsql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    if kod = '' then
      kodsql := ''
    else
      kodsql := ' AND HemodiyalizTip = ' + QuotedStr(kod);
    if durum = '' then
      durumsql := ''
    else
      durumsql := 'AND g.durum = ' + durum;

    sql := 'SELECT COUNT(*) FROM GelisDetay g ' +
      ' JOIN hastakart h ON h.dosyaNo = g.dosyaNo ' +
      ' left join Kurumlar k on k.kurum = h.kurum ' +
      ' WHERE substring(RTarih,1,6) = ' + QuotedStr(donem) + kodsql + durumsql +
      ' AND k.KURUMTIPI in (' + QuotedStr ('1') + ',' + QuotedStr ('99') + ')';
    datalar.QuerySelect(ado, sql);

    Result := ado.Fields[0].AsInteger;
  finally
    ado.Free;
  end;
end;

function TakipKontrolDonemSeansSayisi(donem: string; var P704230, P704233,
  P704234: integer): integer;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'SELECT  sutKodu,count(*) SeansSayi ' +
      ' FROM gssTakipOkuDiger gtod ' +
      ' WHERE substring(dbo.fn_NoktaliTarihTovarchar(islemTarihi),1,6) = ' +
      QuotedStr(donem) +
      ' AND sutKodu IN (' + QuotedStr ('P704230') + ',' + QuotedStr ('P704234') + ',' + QuotedStr ('P704233') + ') ' + ' group BY sutKodu ';
    datalar.QuerySelect(ado, sql);

    while not ado.eof do
    begin
      if ado.FieldByName('sutKodu').AsString = 'P704230' then
        P704230 := ado.FieldByName('SeansSayi').AsInteger
      else if ado.FieldByName('sutKodu').AsString = 'P704233' then
        P704233 := ado.FieldByName('SeansSayi').AsInteger
      else if ado.FieldByName('sutKodu').AsString = 'P704234' then
        P704234 := ado.FieldByName('SeansSayi').AsInteger;
      ado.Next;
    end;

    Result := P704230 + P704233 + P704234;
  finally
    ado.Free;
  end;
end;

function secilisatirsayisiCx(Grid: TcxGridTableView; col: integer): integer;
var
  x, r, seciliadet: integer;
begin
  seciliadet := 0;
  for x := 0 to Grid.DataController.RowCount - 1 do
  begin
    Grid.DataController.FocusedRowIndex := x;
    r := Grid.DataController.GetFocusedRecordIndex;
    if Grid.DataController.Values[r, col] = True then
    begin
      seciliadet := seciliadet + 1;
    end;
  end;
  Result := seciliadet;
end;





function sirket(donem: string): string;
var
  sql: string;
begin
  sql := 'select merkezAdi from merkezBilgisi';
  datalar.QuerySelect(datalar.ADO_SQL2, sql);
  Result := datalar.ADO_SQL2.FieldByName('merkezAdi').AsString;

end;

function aktifdonem: string;
begin
  Result := RegOku ('DONEM', 'Software\NOKTA');
end;

Function tariharalikkontrol(Tarih: Tdate; donem: string): string;
begin
  datalar.ADO_SQL.close;
  datalar.ADO_SQL.sql.Clear;
  datalar.ADO_SQL.sql.Add('exec dbo.tarih_kilit ' + QuotedStr (tarihal(Tarih)
     ) + ',' + QuotedStr (donem));
  datalar.ADO_SQL.Open;

  if datalar.ADO_SQL.FieldByName('sonuc').AsString = 'ok' then
  begin
    // showmessage('Tarih Kilitli , Bu Tarihli Ýþlem Yapýlamaz ....','','','info');
    Result := 'ok';
  end;

  if datalar.ADO_SQL.FieldByName('sonuc').AsString = 'DONEMDISI' then
  begin
    // showmessage('Tarih Kilitli , Bu Tarihli Ýþlem Yapýlamaz ....','','','info');
    Result := 'DONEMDISI';
  end;

end;

function ListResult: string;
begin
  ListResult := strList;
end;

function NextKontrol(frm_: TForm; var Key: Char): Boolean;
begin
  if Key = #13 Then
  begin
    Key := #0;
    frm_.Perform(WM_NEXTDLGCTL, 0, 0);
    if frm_.ActiveControl.Name = '_MAVIBTN_' Then
      frm_.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure StartWork;
begin
  Screen.Cursor := crHourGlass;
end;

procedure EndWork;
begin
  Screen.Cursor := crDefault;
end;

procedure SetListResult(s: string);
begin
  strList := s;
end;

function AddSpaceLeft(s: string; l: integer): string;
var
  i: integer;
begin
  for i := 1 to l - Length(s) do
    insert(' ', s, 1);
  AddSpaceLeft := s;
end;

function AddSpaceRight(s: string; l: integer): string;
var
  i: integer;
begin
  for i := 1 to l - Length(s) do
    s := s + ' ';
  AddSpaceRight := s;
end;

function Tarih(t: string): string;
var
  d, M, y: string;
  ds: Char;
begin
  ds := FormatSettings.DateSeparator;
  if ((trim(StringReplace(t, ds, '', [rfReplaceAll])) = '') OR
      (t = '  /  /    ') OR (t = '  .  .    ')) Then
  begin
    Tarih := '';
    Exit;
  end;

  d := t;
  delete(d, 3, 8);
  M := t;
  delete(M, 1, 3);
  delete(M, 3, 5);
  y := t;
  delete(y, 1, 6);

  Tarih := y + M + d;
end;

function NoktasizTarih(t: string): string;
var
  d: string;
  ds: Char;
  i : Integer;
begin
  ds := FormatSettings.DateSeparator;
  if ((trim(StringReplace(t, ds, '', [rfReplaceAll])) = '') OR
      (t = '  /  /    ') OR (t = '  .  .    ')) Then
  begin
    Result := '';
    Exit;
  end;

  i := 0;
  Result := '';
  if copy (t, length (t), 1) <> ds then t := t + ds;
  while (Pos (ds, t) > 0) and (t <> '') do
  begin
    d:= Copy (t, 1, Pos (ds, t) - 1);
    while length (d) < 2 do
      d := '0' + d;
    if i = 2 then
      while length (d) < 4 do
        d := '0' + d;
    Result := d + Result;
    Delete (t, 1, Pos (ds, t));
    i := i + 1;
  end;
end;

function FormattedTarih(t: string): string;
var
  d, M, y: string;
  // sysDecimalSeparator :Char;
  ds: Char;
begin
  if trim(t) = '' Then
  begin
    FormattedTarih := '';
    Exit;
  end;
  ds := FormatSettings.DateSeparator;
  // sysDecimalSeparator := DecimalSeparator;
  // DecimalSeparator := '/';
  d := t;
  delete(d, 1, 6);
  M := t;
  delete(M, 1, 4);
  delete(M, 3, 2);
  y := t;
  delete(y, 5, 4);
  FormattedTarih := d + ds + M + ds + y;
  // DecimalSeparator := sysDecimalSeparator;
end;

function FormattedTarihYYMMGG(t, s: string): string;
var
  d, M, y: string;
  // sysDecimalSeparator :Char;
  //_ds: Char;
begin
  if trim(t) = '' Then
  begin
    FormattedTarihYYMMGG := '';
    Exit;
  end;
  //_ds := DateSeparator;
  // sysDecimalSeparator := DecimalSeparator;
  // DecimalSeparator := '/';
  d := t;
  delete(d, 1, 6);
  M := t;
  delete(M, 1, 4);
  delete(M, 3, 2);
  y := t;
  delete(y, 5, 4);
  FormattedTarihYYMMGG := y + s + M + s + d;
  // DecimalSeparator := sysDecimalSeparator;
end;

function numTOtxt_M(d: extended; p: integer): string;
var
  i: integer;
begin
  FormatSettings.DecimalSeparator := '.';
  FormatSettings.ThousandSeparator := ',';
  if (p = -3) Then
  begin
    i := trunc(d / 1000);
    numTOtxt_M := FloatToStrF(i, ffNumber, 18, 0);
  end
  Else
  begin
    if (p < 0) Then
      p := 0;
    numTOtxt_M := FloatToStrF(d, ffNumber, 18 - p, p)
  end;
end;



function ShowMessage(msg1, msg2, msg3: string; t: string): word;
begin
  Result := mrNone;
  if frmMessage = nil Then
  begin
    frmMessage := TfrmMessage.Create(Application);
  end
  else
  begin
    frmMessage.Height := 117;
    frmMessage.txtMsg.Clear;
  end;

  if (t = 'msg') // ask question, hayir is selected
    Then
    frmMessage.tag := 0
  Else if (t = 'info') Then
    frmMessage.tag := 1
  Else if (t = 'conf') // confirmation, ask question, evet is selected
    Then
    frmMessage.tag := 2
  Else if (t = 'chc') // give choice Tamam, vazgec, tamam is selected
    Then
    frmMessage.tag := 3
  Else if (t = 'chc2') // give choice Tamam, vazgec, vazgec is selected
    Then
    frmMessage.tag := 4
  Else if (t = 'ozel1') // give choice intaç/küþat is selected
    Then
    frmMessage.tag := 5
  Else if (t = 'varyok') // give choice Var, Yok, Yok is selected
    Then
    frmMessage.tag := 6
  Else
    Exit;

  frmMessage.txtMsg.Clear;
  msg1 := StringReplace(msg1, '|', #13#10, [rfReplaceAll]);
  msg2 := StringReplace(msg2, '|', #13#10, [rfReplaceAll]);
  msg3 := StringReplace(msg3, '|', #13#10, [rfReplaceAll]);
  // frmMessage.txtMsg.Lines.Add(Trim(msg2));
  // frmMessage.txtMsg.Clear;
  // frmMessage.Height := 116;
  // frmMessage.Width := 479;
  // frmMessage.txtMsg.Height := 59;

  frmMessage.txtMsg.text := msg2;

  frmMessage.txtMsg.text := msg2;

  if trim(msg1) <> '' Then
    frmMessage.txtMsg.Lines.Insert(0, msg1);
  if trim(msg3) <> '' Then
    frmMessage.txtMsg.Lines.Add(msg3);
  // Dialogs.ShowMessage (inttostr(frmMessage.txtMsg.Lines.Count));
  // if frmMessage.txtMsg.Lines.Count > 2
  // Then begin
  frmMessage.txtMsg.Height := frmMessage.txtMsg.Lines.Count * 14 + 18;
  frmMessage.Height := frmMessage.txtMsg.Height + 60;

  if frmMessage.Height > 550 Then
  begin
    frmMessage.Height := 550;
    frmMessage.txtMsg.Height := frmMessage.Height - 60;
  end;

  frmMessage.btnYes.Top := frmMessage.txtMsg.Height + 5;
  frmMessage.btnIptal.Top := frmMessage.txtMsg.Height + 5;
  // end;
  // Dialogs.ShowMessage (inttostr(frmMessage.txtMsg.Height));
  {
    for i:= 1 to length(msg) do
    if (msg[i] = '|')
    Then break;
    if ( i < Length(msg) )
    Then begin
    s := msg;
    delete (s,i,length(s)-i+1);
    frmMessage.lblMessage1.Caption := s;
    s := msg;
    delete (s,1,i);
    frmMessage.lblMessage2.Caption := s;
    end
    Else begin
    frmmessage.lblMessage1.Caption := msg;
    frmMessage.lblMessage2.Caption := '';
    end;
    frmmessage.Caption := frmData.CompanyName; }
  // frmMessage.Position := poDesktopCenter;
  frmMessage.ShowModal;
  Result := frmMessage.ModalResult;
end;

function ShowPopupForm(Caption : string ; Tag : integer ; Form : TForm): word;
begin
  Application.CreateForm(TfrmPopup, frmPopup);
  try
    frmPopup._islem_ := Tag;
    frmPopup._caption_ := Caption;
    frmPopup.FGirisForm := TGirisForm(Form);//Application.FindComponent(Form.name) as TGirisForm;
    TGirisForm(frmPopup)._SahaDenetimVeri_ := TGirisForm(Form)._SahaDenetimVeri_;
    frmPopup.ShowModal;
    Result := frmPopup.ModalResult;
  finally
    FreeAndNil (frmPopup);
  end;
end;

function ShowPopupForm(Caption : string; Tag : integer): word;
begin
  Application.CreateForm(TfrmPopup, frmPopup);
  try
    frmPopup._islem_ := Tag;
    frmPopup._caption_ := Caption;
    frmPopup.ShowModal;
    Result := frmPopup.ModalResult;
  finally
    FreeAndNil (frmPopup);
  end;
end;




function ShowMessageSkin(msg1, msg2, msg3: string; t: string): word;
var
  bBenActim: Boolean;
begin
  Result := mrNone;
  if frmMessage_y = nil Then
  begin
    frmMessage_y := TfrmMessage_y.Create(Application);
    bBenActim := True;
  end
  else
  begin
    frmMessage_y.Height := 117;
    frmMessage_y.txtMsg.Clear;
    bbenactim := False;
  end;
  try
    if (t = 'msg') // ask question, hayir is selected
      Then
      frmMessage_y.tag := 0
    Else if (t = 'info') Then
      frmMessage_y.tag := 1
    Else if (t = 'conf') // confirmation, ask question, evet is selected
      Then
      frmMessage_y.tag := 2
    Else if (t = 'chc') // give choice Tamam, vazgec, tamam is selected
      Then
      frmMessage_y.tag := 3
    Else if (t = 'chc2') // give choice Tamam, vazgec, vazgec is selected
      Then
      frmMessage_y.tag := 4
    Else if (t = 'ozel1') // give choice intaç/küþat is selected
      Then
      frmMessage_y.tag := 5
    Else if (t = 'varyok') // give choice Var, Yok, Yok is selected
      Then
      frmMessage_y.tag := 6
    Else
      Exit;

    frmMessage_y.txtMsg.Clear;
    msg1 := StringReplace(msg1, '|', #13#10, [rfReplaceAll]);
    msg2 := StringReplace(msg2, '|', #13#10, [rfReplaceAll]);
    msg3 := StringReplace(msg3, '|', #13#10, [rfReplaceAll]);
    // frmMessage.txtMsg.Lines.Add(Trim(msg2));
    // frmMessage.txtMsg.Clear;
    // frmMessage.Height := 116;
    // frmMessage.Width := 479;
    // frmMessage.txtMsg.Height := 59;

    frmMessage_y.txtMsg.text := msg2;

    frmMessage_y.txtMsg.text := msg2;

    if trim(msg1) <> '' Then
      frmMessage_y.txtMsg.Lines.Insert(0, msg1);
    if trim(msg3) <> '' Then
      frmMessage_y.txtMsg.Lines.Add(msg3);
    // Dialogs.ShowMessage (inttostr(frmMessage.txtMsg.Lines.Count));
    // if frmMessage.txtMsg.Lines.Count > 2
    // Then begin
    frmMessage_y.txtMsg.Height := frmMessage_y.txtMsg.Lines.Count * 14 + 18;
    frmMessage_y.Height := frmMessage_y.txtMsg.Height + 60;

    if frmMessage_y.Height > 550 Then
    begin
      frmMessage_y.Height := 550;
      frmMessage_y.txtMsg.Height := frmMessage_y.Height - 60;
    end;

    frmMessage_y.btnYes.Top := frmMessage_y.txtMsg.Height + 5;
    frmMessage_y.btnIptal.Top := frmMessage_y.txtMsg.Height + 5;
    // end;
    // Dialogs.ShowMessage (inttostr(frmMessage.txtMsg.Height));
    {
      for i:= 1 to length(msg) do
      if (msg[i] = '|')
      Then break;
      if ( i < Length(msg) )
      Then begin
      s := msg;
      delete (s,i,length(s)-i+1);
      frmMessage.lblMessage1.Caption := s;
      s := msg;
      delete (s,1,i);
      frmMessage.lblMessage2.Caption := s;
      end
      Else begin
      frmmessage.lblMessage1.Caption := msg;
      frmMessage.lblMessage2.Caption := '';
      end;
      frmmessage.Caption := frmData.CompanyName; }
    // frmMessage.Position := poDesktopCenter;
    frmMessage_y.ShowModal;
    Result := frmMessage_y.ModalResult;
  finally
    if bBenActim then FreeandNil (frmMessage_y);
  end;
end;


function tarihyap(t: string): Tdate;
var
  ds: Char;
  y, a, g: string;
begin
  ds := FormatSettings.DateSeparator;
  y := copy(t, 1, 4);
  a := copy(t, 5, 2);
  g := copy(t, 7, 2);

  Result := strtodate(g + ds + a + ds + y);

end;

function tarihal(t: Tdate): string;
var
  s: string;
begin
 // s := datetostr(t);
  s := FormatDateTime('dd.mm.yyyy',t);
  Result := copy(s, 7, 4) + copy(s, 4, 2) + copy(s, 1, 2);
end;



function SayisalVeri(alan: Tlabelededit; var Key: Char): Boolean;
begin
  if not(Key in ['0' .. '9', #13, #8, #10]) Then
    Key := #0;
  if (Key = '.') and (pos('.', alan.text) > 0) Then
    Key := #0;
end;

function BuyukHarf(var Key: Char): Boolean;
var
  s: string;
begin

  if Key in [#10, #39, #34] Then
    Key := #0;
  if (Key = '''') or (Key = '"') Then
    Key := #0180;
  if Key in ['a' .. 'z', 'ý', 'ü', 'ö', 'þ', 'ð', 'ç'] Then
  begin
    s := Key;
    if Key = 'ý' then
      Key := 'I'
    else if Key = 'i' then
      Key := 'Ý'
    else
    begin
      s := AnsiUpperCase(s);
      Key := s[1];
    end;
  end;
end;

procedure ComboDoldur(Q: TADOQuery; sql: string; c: TComboBox);
begin
  Q.sql.text := '';
  Q.sql.Add(sql);
  Q.Open;
  Q.First;
  c.Items.Clear;
  while not Q.eof do
  begin
    c.Items.Add(trim(Q.Fields[0].AsString));
    Q.Next;
  end;
  Q.close;
end;



procedure ComboDoldurName(sql: string; c: TcxComboBox);
var
  Q: TADOQuery;

begin
  if sql = '' then
    sql :=
      'select SLT from Parametreler where SLK = ' + QuotedStr ('40') + ' and SLB = ' + QuotedStr
      (c.Name);

  Q := TADOQuery.Create(nil);
  try
    Q.Connection := datalar.ADOConnection2;

    Q.sql.Add(sql);
    Q.Open;
    try
      Q.First;
      c.Properties.Items.Clear;
      while not Q.eof do
      begin
        c.Properties.Items.Add(trim(Q.Fields[0].AsString));
        Q.Next;
      end;
    finally
      Q.close;
    end;
  finally
    Q.Free;
  end;
end;

procedure ComboDoldurName(sql: string; c: TComboBox);
var
  Q: TADOQuery;

begin
  if sql = '' then
    sql :=
      'select SLT from Parametreler where SLK = ' + QuotedStr ('40') + ' and SLB = ' + QuotedStr
      (c.Name);

  Q := TADOQuery.Create(nil);
  try
    Q.Connection := datalar.ADOConnection2;

    Q.sql.Add(sql);
    Q.Open;
    try
      Q.First;
      c.Items.Clear;
      while not Q.eof do
      begin
        c.Items.Add(trim(Q.Fields[0].AsString));
        Q.Next;
      end;
    finally
      Q.close;
    end;
  finally
    Q.Free;
  end;
end;

procedure ComboDoldur2(Q: TADOQuery; sql: string; c: TComboBox; alan: integer;
  alan2: integer);
begin
  Q.sql.text := '';
  Q.sql.Add(sql);
  Q.Open;
  Q.First;
  c.Items.Clear;
  while not Q.eof do
  begin
    c.Items.Add(trim(Q.Fields[alan].AsString) + '-' + trim
        (Q.Fields[alan2].AsString));
    Q.Next;
  end;
  Q.close;
end;



procedure ComboDoldur3(sql: string; c: TcxComboBox; alan: integer;
  alan2: integer);
var
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    ado.sql.text := '';
    ado.sql.Add(sql);
    ado.Open;
    ado.First;
    c.Properties.Items.Clear;
    while not ado.eof do
    begin
      c.Properties.Items.Add(trim(ado.Fields[alan].AsString) + ' - ' + trim
          (ado.Fields[alan2].AsString));
      ado.Next;
    end;
    ado.close;
  finally
    ado.Free;
  end;
end;

procedure ItemsDoldurName(name: string; var c: TStrings);
var
  Q: TADOQuery;
  _sql_: string;
begin
  _sql_ :=
    'select SLT from Parametreler where SLK = ' + QuotedStr ('40') + ' and SLB = ' + QuotedStr
    (name);

  Q := TADOQuery.Create(nil);
  try
    Q.Connection := datalar.ADOConnection2;

    Q.sql.Add(_sql_);
    Q.Open;
    Q.First;
    c.Clear;
    while not Q.eof do
    begin
      c.Add(trim(Q.Fields[0].AsString));
      Q.Next;
    end;
    Q.close;
  finally
    Q.Free;
  end;
end;

procedure ItemsDoldurDoktorlar(name: string; var c: TStrings);
var
  Q: TADOQuery;
  _sql_: string;
begin
  _sql_ := 'select * from doktorlar where durum = ' + QuotedStr('Aktif');

  Q := TADOQuery.Create(nil);
  try
    Q.Connection := datalar.ADOConnection2;

    Q.sql.Add(_sql_);
    Q.Open;
    Q.First;
    c.Clear;
    while not Q.eof do
    begin
      c.Add(Q.FieldByName('kod').AsString + '-' + Q.FieldByName('ADI').AsString);
      Q.Next;
    end;
    Q.close;
  finally
    Q.Free;
  end;
end;

Function bakim(b: TADOConnection; donem: string): string;
VAR
  sql: string;
  alan, alan1: string;
  ay1: integer;
  // adoconnection1:tadoconnection1;
  kadir1: TADOCommand;
begin
  // hafýzada bir adocommand oluþturuluyor...
  kadir1 := TADOCommand.Create(kadir1);
  try
    kadir1.Connection := b;
    kadir1.ConnectionString := serverismi(donem);

    // --------
    try

      for ay1 := 1 to 12 do
      begin

        alan := 'ay' + inttostr(ay1) + 'topb';
        alan1 := 'ay' + inttostr(ay1) + 'topa';

        sql := 'update muh_hesap_plani set ' + alan +
          '= (select sum(borc) from muh_fis_hareket where hesapkodu=h.hesap_kodu'
          + ' and month(tarih)=' + inttostr(ay1) + '),' + alan1 +
          '= (select sum(alacak) from muh_fis_hareket where hesapkodu=h.hesap_kodu'
          + ' and month(tarih)=' + inttostr(ay1)
          + ')' + 'from muh_hesap_plani h';
        kadir1.CommandText := sql;

        // showmessage(sql);

        kadir1.Execute;

        sql := 'update muh_hesap_plani set  ' + alan + '=0' + ' where ' + alan +
          ' is null';
        kadir1.CommandText := sql;
        kadir1.Execute;

        sql := 'update muh_hesap_plani set  ' + alan1 + '=0' + ' where ' +
          alan1 + ' is null';
        kadir1.CommandText := sql;
        kadir1.Execute;

      end;
    except
      Result := 'H';
      Exit;
    end;
    Result := 'E';
  finally
    kadir1.Free;
  end;
end;

Function servertip(): string;
VAR
  CN: string;
begin
  CN := RegOku ('CS');
  if CN = 'ODBC' then
  begin
    Result := 'MSDASQL.1';
  end;
  if CN = 'SQL' then
  begin
    Result := 'SQLOLEDB.1';
  end;
end;

Function serverismi(Adres, katalog: string): string;
VAR
  s, s1, servername, sifre, user: string;

begin
  user := '';
  s := Adres;
  s1 := RegOku ('CS');

  user := RegOku ('dbuser');
  user := ifThen(user = '', 'Nokta', user);

  sifre := RegOku ('dbsifre');
  sifre := ifThen(sifre = '', '5353', sifre);

  if s1 = 'ODBC' then
  begin
    servername :=
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=' + user +
      ';Data Source=SQL SERVER;Initial Catalog=' + katalog;
  end;

  if s1 = 'SQL' then
  begin
    servername := 'Provider=SQLOLEDB.1;Password=' + sifre +
      ';Persist Security Info=False;User ID=' + user + ';Initial Catalog=' +
      katalog + ';Data Source=' + s;
  end;

  Result := servername;
end;

Function serverismi(katalog: string): string;
VAR
  s, s1, servername, sifre: string;

begin
  s := RegOku ('OSGB_servername');
  s1 := RegOku ('CS');
  sifre := RegOku ('sifre');

  if s1 = 'ODBC' then
  begin
    servername :=
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=SA;Data Source=SQL SERVER;Initial Catalog=' + katalog;
  end;

  if s1 = 'SQL' then
  begin
    servername := 'Provider=SQLOLEDB.1;Password=' + sifre +
      ';Persist Security Info=False;User ID=sa;Initial Catalog=' + katalog +
      ';Data Source=' + s;
  end;

  Result := servername;
end;

function SQL_Host(var server: string; var user: string; var password: string;
  var db: string): Boolean;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    Result := False;
    ado.Connection := datalar.ADOConnection2;

    sql :=
      'select SLVV s,SLXX u ,SLYY p , SLZZ db from parametreler where SLK = ' + QuotedStr ('GA') + ' and SLB = ' + QuotedStr ('00');
    datalar.QuerySelect(ado, sql);
    if not ado.eof then
    begin
      server := ado.FieldByName('s').AsString;
      user := ado.FieldByName('u').AsString;
      password := ado.FieldByName('p').AsString;
      db := ado.FieldByName('db').AsString;
    end;
    Result := True;
  finally
    ado.Free;
  end;
end;

procedure SQL_Host_Baglan;
var
  servername, s, u, p, db: string;
begin
  if SQL_Host(s, u, p, db) = True Then
  Begin
    try
      servername := 'Provider=SQLOLEDB.1;Password=' + p +
        ';Persist Security Info=False;User ID=' + u + ';Initial Catalog=' +
        db + ';Data Source=' + s;
      datalar.ADOConnection1.ConnectionString := servername;
      datalar.ADOConnection1.Connected := True;
    except
      on e: exception do
      begin
         ShowMessage(e.Message,'','','info');
      end;
    end;
  End;
end;

Function yaz(islem: string; Tarih: Tdate; hesapkodu: string; tutarb: real;
  tutara: real; conn: string): string;
VAR
  sql: string;
  ay: string;
  ay1: integer;
  // adoconnection1:tadoconnection1;
  kadir1: TADOCommand;
begin

  try
    // hafýzada bir adocommand oluþturuluyor...
    kadir1 := TADOCommand.Create(kadir1);
    try
      kadir1.ConnectionString := conn;
      // serverismi('MUHASEBE');

      ay := copy(datetostr(Tarih), 4, 2);
      ay1 := strtoint(ay);

      if islem = '+' then
      begin

        case ay1 of
          1:
            sql :=
              'update muh_hesap_plani set ay1topb=ay1topb+ :t,ay1topa=ay1topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          2:
            sql :=
              'update muh_hesap_plani set ay2topb=ay2topb+ :t,ay2topa=ay2topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          3:
            sql :=
              'update muh_hesap_plani set ay3topb=ay3topb+ :t,ay3topa=ay3topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          4:
            sql :=
              'update muh_hesap_plani set ay4topb=ay4topb+ :t,ay4topa=ay4topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          5:
            sql :=
              'update muh_hesap_plani set ay5topb=ay5topb+ :t,ay5topa=ay5topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          6:
            sql :=
              'update muh_hesap_plani set ay6topb=ay6topb+ :t,ay6topa=ay6topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          7:
            sql :=
              'update muh_hesap_plani set ay7topb=ay7topb+ :t,ay7topa=ay7topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          8:
            sql :=
              'update muh_hesap_plani set ay8topb=ay8topb+ :t,ay8topa=ay8topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          9:
            sql :=
              'update muh_hesap_plani set ay9topb=ay9topb+ :t,ay9topa=ay9topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          10:
            sql :=
              'update muh_hesap_plani set ay10topb=ay10topb+ :t,ay10topa=ay10topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          11:
            sql :=
              'update muh_hesap_plani set ay11topb=ay11topb+ :t,ay11topa=ay11topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          12:
            sql :=
              'update muh_hesap_plani set ay12topb=ay12topb+ :t,ay12topa=ay12topa+ :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
        else
          Exit;
        end;
      end;

      if islem = '-' then
      begin

        case ay1 of
          1:
            sql :=
              'update muh_hesap_plani set ay1topb=ay1topb- :t,ay1topa=ay1topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          2:
            sql :=
              'update muh_hesap_plani set ay2topb=ay2topb- :t,ay2topa=ay2topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          3:
            sql :=
              'update muh_hesap_plani set ay3topb=ay3topb- :t,ay3topa=ay3topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          4:
            sql :=
              'update muh_hesap_plani set ay4topb=ay4topb- :t,ay4topa=ay4topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          5:
            sql :=
              'update muh_hesap_plani set ay5topb=ay5topb- :t,ay5topa=ay5topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          6:
            sql :=
              'update muh_hesap_plani set ay6topb=ay6topb- :t,ay6topa=ay6topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          7:
            sql :=
              'update muh_hesap_plani set ay7topb=ay7topb- :t,ay7topa=ay7topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          8:
            sql :=
              'update muh_hesap_plani set ay8topb=ay8topb- :t,ay8topa=ay8topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          9:
            sql :=
              'update muh_hesap_plani set ay9topb=ay9topb- :t,ay9topa=ay9topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          10:
            sql :=
              'update muh_hesap_plani set ay10topb=ay10topb- :t,ay10topa=ay10topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          11:
            sql :=
              'update muh_hesap_plani set ay11topb=ay11topb- :t,ay11topa=ay11topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
          12:
            sql :=
              'update muh_hesap_plani set ay12topb=ay12topb- :t,ay12topa=ay12topa- :t1  where hesap_kodu=' + QuotedStr (hesapkodu);
        else
          Exit;
        end;
      end;

      // showmessage(sql);

      kadir1.CommandText := sql;
      kadir1.Parameters[0].DataType := ftFloat;
      kadir1.Parameters[0].Value := tutarb;
      kadir1.Parameters[1].DataType := ftFloat;
      kadir1.Parameters[1].Value := tutara;
      kadir1.Execute;
    finally
      kadir1.Free;
    end;

  except
    Result := 'H';
    Exit;
  end;
  Result := 'E';
end;

procedure Login;
var
  sql: string;
begin

  try
    sql := 'select slb,slt from parametreler where slk = ' + QuotedStr ('99');
    datalar.QuerySelect(datalar.ADO_SQL2, sql);
    _kurumKod := strtoint(datalar.ADO_SQL2.FieldByName('slb').AsString);
    _username := datalar.ADO_SQL2.FieldByName('slb').AsString;
    _sifre := datalar.ADO_SQL2.FieldByName('slt').AsString;

    (*
      sql := 'select slt from keydat where slk = ''00'' and  slb = ''INT_GSADI''';
      datalar.QuerySelect(datalar.ADO_SQL2,sql);
      _username := datalar.ADO_SQL2.fieldbyname('slt').AsString;

      sql := 'select slt from keydat where slk = ''00'' and  slb = ''INT_GSSSIF''';
      datalar.QuerySelect(datalar.ADO_SQL2,sql);
      _sifre := datalar.ADO_SQL2.fieldbyname('slt').AsString;

      *)
  except

  end;

end;

(*
  procedure TakipOku(_Takip : string;var Hasta : TTakipBilgisi);
  var
  Ts_Gon1 : TakipOkuGirisDVO;
  Ts_Cvp1 : TakipDVO;
  sql : string;
  begin


  frmAna.Login;

  Datalar.Takip.HTTPWebNode.UserName := frmAna._username;
  Datalar.Takip.HTTPWebNode.Password := frmAna._sifre;

  Ts_gon1 := TakipOkuGirisDVO.Create;
  Ts_cvp1 := TakipDVO.Create;

  Ts_gon1.saglikTesisKodu := frmAna._Kurumkod;
  Ts_Gon1.takipNo := _Takip;

  try
  Ts_Cvp1 := (Datalar.takip as ProvizyonIslemleri).takipOku(Ts_Gon1);
  except
  on E: Exception do Showmessage(E.Message,'','','info');
  end;

  if Ts_Cvp1.sonucKodu = '0000'
  then begin

  Application.CreateForm(TfrmTakipBilgisiOku, frmTakipBilgisiOku);
  GorselAyar(frmTakipBilgisiOku,frmana.global_img_list4);


  frmTakipBilgisiOku.write(Ts_Cvp1.takipNo,Ts_Cvp1.takipTarihi,Ts_Cvp1.kayitTarihi,inttostr(Ts_Cvp1.tesisKodu),Ts_Cvp1.gidecegiTesisTuru,
  inttostr(Ts_Cvp1.sevkEdenTesis) ,Ts_Cvp1.sevkEdilenBransKodu,Ts_Cvp1.sevkEdilisTarihi,Ts_Cvp1.sevkEdenDrTescil,
  Ts_Cvp1.takipDurumu,datalar.HastaYas,Ts_Cvp1.takipTuru,'');

  hasta.HastaAdi := Ts_Cvp1.hastaBilgileri.ad + Ts_Cvp1.hastaBilgileri.soyad;
  hasta.TcKimlik := Ts_Cvp1.hastaBilgileri.tcKimlikNo;
  //   datalar.Bilgi := hasta;

  frmTakipBilgisiOku.pnlTitle.Caption := trim(Ts_Cvp1.hastaBilgileri.ad) + ' ' + trim(Ts_Cvp1.hastaBilgileri.soyad)
  + '        ' + trim(Ts_Cvp1.hastaBilgileri.tcKimlikNo);

  frmTakipBilgisiOku.ShowModal;
  frmTakipBilgisiOku.Release;
  frmTakipBilgisiOku := nil;

  end
  else begin
  ShowMessageSkin(Ts_Cvp1.sonucMesaji , '' ,'' ,'info');

  end;


  end;
*)



procedure IcmalFaturaGonder(_faturaNo, _faturaTarihi: string; durum: integer);

begin

end;

function TakipFaturadami(_Takip: string): Boolean;
var
  sql: string;
  ado: TADOQuery;
begin
  if _Takip = '' Then
  begin
    Result := False;
  End
  Else
  begin
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;
      sql := 'select takipNo from kurumFatura ' + ' where takipNo = ' + QuotedStr
        (_Takip) + ' and isnull(GSSFaturaTeslimNo,'''') <> ''''';
      datalar.QuerySelect(ado, sql);

      if not ado.eof Then
        Result := True
      Else
        Result := False;
    finally
      ado.Free;
    end;
  end;

end;


function secilisatirbilgisi(Grid: TAdvStringGrid; col: integer;
  col1: integer): string;
var
  x, u: integer;
  doktorkod: string;
begin
  doktorkod := '';
  for x := 1 to Grid.RowCount - 1 do
  begin
    if Grid.Cells[col, x] = 'T' then
    begin
      doktorkod := doktorkod + Grid.Cells[col1, x] + ',';
    end;
  end;
  u := Length(doktorkod);
  if copy(doktorkod, u, 1) = ',' then
    delete(doktorkod, u, 1);

  Result := doktorkod;
end;

function notsecilisatirbilgisi(Grid: TAdvStringGrid; col: integer;
  col1: integer): string;
var
  x, u: integer;
  doktorkod: string;
begin
  doktorkod := '';
  for x := 1 to Grid.RowCount - 1 do
  begin
    if Grid.Cells[col, x] <> 'T' then
    begin
      doktorkod := doktorkod + Grid.Cells[col1, x] + ',';
    end;
  end;
  u := Length(doktorkod);
  if copy(doktorkod, u, 1) = ',' then
    delete(doktorkod, u, 1);

  Result := doktorkod;
end;

procedure SifreDegistir;
var
 ado : TadoQuery;
begin
  datalar.SifreDegistir.KullaniciAdi := DATALAR.username;
  datalar.SifreDegistir.Sifre := DATALAR.usersifre;

  if mrYes = ShowPopupForm('Þifre Deðiþtirme',PrgSifre)
  then begin
    //güncellemeleri yap
    sql := 'update Users set password = ' + QuotedStr(datalar.SifreDegistir.Sifre)
           + ' where Kullanici = ' + QuotedStr(datalar.username);
    ado := TADOQuery.Create(nil);
    try
      datalar.QueryExec(ado,sql);
      ShowMessageSkin('Þifreniz Deðiþtirildi','','','info');
      DATALAR.usersifre := datalar.SifreDegistir.Sifre
    finally
      ado.Free;
    end
  End
  else
      ShowMessageSkin('Ýþlem iptal edildi','','','info');
end;

function SahaSaglikGozlemSil(const GozlemID: integer): Boolean;
var
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    Result := False;
    DATALAR.ADOConnection2.BeginTrans;
    try
      datalar.QueryExec (ado, 'delete from SahaGozlemRaporu where RaporlarID = ' + IntToStr (GozlemID));
      datalar.QueryExec (ado, 'delete from SahaGozlemRaporlari where ID = ' + IntToStr (GozlemID));
      Result := True;
    finally
      if Result then
        DATALAR.ADOConnection2.CommitTrans
       else
        DATALAR.ADOConnection2.RollbackTrans;
    end;
  finally
    ado.Free;
  end;
end;

function VeritabaniAlaninaFotografYukle(const sTableName, sKeyField, sImageField, sKeyValue: String): Boolean;
var
 Fo : TFileOpenDialog;
 jp : TJPEGImage;
 adox : TADOQuery;
 tmpPicture : TcxImage;
 sFileName : String;
begin
  Result := False;
  Fo := TFileOpenDialog.Create(nil);
  try
    if not fo.Execute then Exit;
    sFileName := fo.FileName;
  finally
    fo.Free;
  end;
  if not FileExists (sFileName)  then
  begin
    ShowMessageSkin('Belirtilen dosya bulunamadý', '', '', 'info');
    Exit;
  end;
  tmpPicture := TcxImage.Create (nil);
  try
    tmpPicture.Picture.LoadFromFile(sfilename);
    jp := TJpegimage.Create;
    try
      jp.Assign(tmpPicture.Picture);
      adox := TADOQuery.Create (nil);
      try
        adox.Connection := DATALAR.ADOConnection2;
        adox.SQL.Text := 'SELECT ' + sKeyField + ', ' + sImageField + ' From ' + sTableName + ' where '+sKeyField + ' = ' + sKeyValue;
        adox.Open;
        try
          if adox.RecordCount = 0 then
          begin
            ShowMessageSkin('Kayýt açýlamadý','', '', 'info');
            Exit;
          end;
          Adox.Edit;
          try
            adox.FieldByName(sImageField).Assign(jp);
            adox.Post;
            Result := True;
          except
            adox.Cancel;
            raise;
          end;
        finally
          adox.close;
        end;
      finally
        adox.Free;
      end;
    finally
      jp.Free;
    end;
  finally
    tmpPicture.free;
  end;
end;

function VeritabaniAlanindanFotografYukle(const sTableName, sKeyField, sImageField, sKeyValue: String; var aImage: TcxImage): Boolean;
var
 jp : TJPEGImage;
 adox : TADOQuery;
begin
  Result := False;
  jp := TJpegimage.Create;
  try
    adox := TADOQuery.Create (nil);
    try
      adox.Connection := DATALAR.ADOConnection2;
      adox.SQL.Text := 'SELECT ' + sKeyField + ', ' + sImageField + ' From ' + sTableName + ' where '+sKeyField + ' = ' + sKeyValue;
      adox.Open;
      try
        if adox.RecordCount = 0 then
        begin
          ShowMessageSkin('Kayýt açýlamadý','', '', 'info');
          Exit;
        end;
        jp.Assign (adox.FieldByName(sImageField));
        aImage.Picture.Assign(jp);
        Result := True;
      finally
        adox.close;
      end;
    finally
      adox.Free;
    end;
  finally
    jp.Free;
  end;
end;

function FotografGoruntule (const aPicture: TPicture) : TModalResult;
var
  aForm : TForm;
  aImage: TcxImage;
  //aCheckBox: TCheckBox;
begin
  aForm := TForm.Create (Application);
  try
    aForm.BorderStyle := bsDialog;
    aForm.FormStyle := fsNormal;
    aImage := TcxImage.Create (aForm);
    try
      aImage.Parent := aForm;
      aImage.Align := alClient;
      aImage.Picture.Assign(aPicture);
      aImage.AutoSize := True;
      aForm.AutoSize := True;
      aImage.AutoSize := False;
      aForm.AutoSize := False;
      aForm.Position := poDesktopCenter;
      Result := aForm.ShowModal;
    finally
      aImage.Free;
    end;
  finally
    aForm.Free;
  end;
end;

function CombodanSectir (const sFormCaption, sComboCaption, sItemsList: String; var iItemIndex : Integer): Boolean;
var
  aForm : TForm;
  aComboBox: TComboBox;
  aPanel : TPanel;
  aButton : TButton;
  aLabel : TLabel;
begin
  aForm := TForm.Create (Application);
  try
    aForm.BorderStyle := bsDialog;
    aForm.FormStyle := fsNormal;
    aPanel := TPanel.Create (aForm);
    try
      aPanel.Parent := aForm;
      aPanel.Height := 35;
      aPanel.Caption := ' ';
      aPanel.Top := 50;

      aButton := TButton.Create (aForm);
      aButton.Parent := aPanel;
      aButton.name := 'btnTamam';
      aButton.Caption := 'Tamam';
      aButton.Left := 10;
      aButton.Top := 5;
      aButton.Width := 75;
      aButton.Default := True;
      aButton.ModalResult := mrYes;

      aButton := TButton.Create (aForm);
      aButton.Parent := aPanel;
      aButton.name := 'btnVazgec';
      aButton.Caption := 'Vazgeç';
      aButton.Left := 88;
      aButton.Top := 5;
      aButton.Width := 75;
      aButton.Cancel := True;
      aButton.ModalResult := mrCancel;


      aLabel := TLabel.Create (aForm);
      aLabel.Parent := aForm;
      aLabel.name := 'label1';
      aLabel.Caption := sComboCaption;
      aLabel.Left := 0;
      aLabel.Top := 16;
      aLabel.AutoSize := True;
      aLabel.AutoSize := False;

      aComboBox := TComboBox.Create (aForm);
      aComboBox.Parent := aForm;
      aComboBox.name := 'cb1';
      aComboBox.Left := aLabel.Left + aLabel.Width + 2;
      aComboBox.Top := 10;
      aComboBox.Width := 200;
      aComboBox.Items.Text := sItemsList;
      aComboBox.Style := csDropDownList;
      aComboBox.ItemIndex := iItemIndex;
      aLabel.FocusControl := aComboBox;
      aForm.AutoSize := True;
      aPanel.Align := alBottom;

      aForm.AutoSize := False;
      aForm.Position := poDesktopCenter;
      aForm.Caption := sFormCaption;
      aComboBox.TabOrder := 0;
      repeat
        Result := aForm.ShowModal = mrYes;
        iItemIndex := aComboBox.ItemIndex;
      until (not Result) or (iItemIndex <> -1);
    finally
      aPanel.Free;
    end;
  finally
    aForm.Free;
  end;
end;

procedure AdSoyadAyir (const pAdSoyad: String; var pAd, pSoyad : String);
var
  i :Integer;
  bBosluk : Boolean;
begin
  pSoyad := '';
  pAd := '';
  bBosluk := False;
  for i := Length (pAdSoyad) downto 1 do
  begin
    if (not bBosluk) and (pAdSoyad [i] = ' ') then
      bBosluk := True
     else
      if bBosluk then
        pAd := pAdSoyad [i] + pAd
       else
        pSoyad := pAdSoyad [i] + pSoyad;
  end;
  pAd := Trim (pAd);
  pSoyad := Trim (pSoyad);
end;

function StringKarakterSurusuTemizle (const sHamString, sTemizlenecekKarakterler: String): String;
var
  i : Integer;
begin
  Result := sHamString;
  for i := 1 to Length (sTemizlenecekKarakterler) do
    Result := StringReplace (Result, Copy (sTemizlenecekKarakterler, i, 1), '', [rfReplaceAll]);
end;

function AktarimTelefonNoTemizle (const sHamTelefon: String): String;
begin
  Result := StringKarakterSurusuTemizle (sHamTelefon, ' ().-');
end;

function AktarimUyrukDuzelt (const sHamUyruk: String): String;
begin
  Result := StringKarakterSurusuTemizle(sHamUyruk, ' .()-');
  if AnsiSameText (Result, 'TC')
    or AnsiSameText (Result, 'TR')
    or AnsiSameText (Result, 'TURKIYE')
    or AnsiSameText (Result, 'TÜRKÝYE')
    or AnsiSameText (Result, 'TURKIYECUMHURIYETI')
    or AnsiSameText (Result, 'TÜRKÝYECUMHURÝYETÝ') then Result := 'TR';
end;

function DBGridDialog (const pCaption: String; const aDataset: TDataset; aButtons : TMsgDlgButtons; aDefaultButton : TMsgDlgBtn) : TModalResult;
var
  aForm : TForm;
  aDataSource: TDataSource;
  aPanel : TPanel;
  aButton : TButton;
  iButton, iTopPos : Integer;
begin
  aForm := TForm.Create (Application);
  try
    aForm.BorderStyle := bsDialog;
    aForm.FormStyle := fsNormal;
    aPanel := TPanel.Create (aForm);
    try
      aPanel.Parent := aForm;
      aPanel.Height := 35;
      aPanel.Caption := ' ';
      aPanel.Top := 50;

      if mbYes in aButtons then
      begin
        aButton := TButton.Create (aForm);
        aButton.Parent := aPanel;
        aButton.name := 'btnEvet';
        aButton.Caption := 'Evet';
        aButton.Top := 5;
        aButton.Width := 75;
        aButton.Default := aDefaultButton = mbYes;
        aButton.ModalResult := mrYes;
      end;

      if mbNo in aButtons then
      begin
        aButton := TButton.Create (aForm);
        aButton.Parent := aPanel;
        aButton.name := 'btnHayir';
        aButton.Caption := 'Hayýr';
        aButton.Top := 5;
        aButton.Width := 75;
        aButton.Default := aDefaultButton = mbNo;
        aButton.ModalResult := mrCancel;
      end;

      if mbCancel in aButtons then
      begin
        aButton := TButton.Create (aForm);
        aButton.Parent := aPanel;
        aButton.name := 'btnVazgec';
        aButton.Caption := 'Vazgeç';
        aButton.Top := 5;
        aButton.Width := 75;
        aButton.Cancel := True;
        aButton.Default := aDefaultButton = mbCancel;
        aButton.ModalResult := mrCancel;
      end;

      if mbOk in aButtons then
      begin
        aButton := TButton.Create (aForm);
        aButton.Parent := aPanel;
        aButton.name := 'btnTamam';
        aButton.Caption := 'Tamam';
        aButton.Top := 5;
        aButton.Width := 75;
        aButton.Default := aDefaultButton = mbOk;
        aButton.ModalResult := mrOK;
      end;

      iTopPos := 10;
      for iButton := 0 to aPanel.ControlCount - 1 do
      begin
        TButton (aPanel.Controls [iButton]).Left := iTopPos;
        iTopPos := iTopPos + TButton (aPanel.Controls [iButton]).Width + 5;
        TButton (aPanel.Controls [iButton]).TabOrder := iButton;
      end;
      aDataSource := TDataSource.Create (aForm);
      aDataSource.DataSet := aDataset;
      with TDBGrid.Create (aForm) do
      begin
        Parent := aForm;
        Align := alClient;
        DataSource := aDataSource;
        TabOrder := 0;
      end;

      aForm.AutoSize := True;
      aPanel.Align := alBottom;

      aForm.AutoSize := False;
      aForm.Position := poDesktopCenter;
      aForm.Caption := pCaption;
      Result := aForm.ShowModal;
      aDataset.First;
    finally
      aPanel.Free;
    end;
  finally
    aForm.Free;
  end;
end;

procedure BeginTrans (const aQuery : TADOQuery);
var
  bQuery : TADOQuery;
  iTranCountBefore, iTranCountAfter : Integer;
begin
  bQuery := TADOQuery.Create (nil);
  try
    iTranCountBefore := trancount (aQuery);
    bQuery.Connection := aQuery.Connection;
    bQuery.SQL.Text := 'BEGIN TRAN';
    bQuery.ExecSQL;
    iTranCountAfter := trancount (aQuery);
    if iTranCountBefore + 1 <> iTranCountAfter then Abort;
  finally
    bQuery.Free;
  end;
end;

procedure RollBackTrans (const aQuery : TADOQuery);
var
  bQuery : TADOQuery;
  iTranCountAfter : Integer;
begin
  bQuery := TADOQuery.Create (nil);
  try
    bQuery.Connection := aQuery.Connection;
    bQuery.SQL.Text := 'ROLLBACK';
    bQuery.ExecSQL;
    iTranCountAfter := trancount (aQuery);
    if 0 <> iTranCountAfter then Abort;
  finally
    bQuery.Free;
  end;
end;

procedure CommitTrans (const aQuery : TADOQuery);
var
  bQuery : TADOQuery;
  iTranCountBefore, iTranCountAfter : Integer;
begin
  bQuery := TADOQuery.Create (nil);
  try
    iTranCountBefore := trancount (aQuery);
    bQuery.Connection := aQuery.Connection;
    bQuery.SQL.Text := 'COMMIT';
    bQuery.ExecSQL;
    iTranCountAfter := trancount (aQuery);
    if iTranCountBefore - 1 <> iTranCountAfter then Abort;
  finally
    bQuery.Free;
  end;
end;

function TranCount (const aQuery : TADOQuery): Integer;
var
  bQuery : TADOQuery;
begin
  Result := -1;
  if Result < 0 then ;;;;
  bQuery := TADOQuery.Create (nil);
  try
    bQuery.Connection := aQuery.Connection;
    bQuery.SQL.Text := 'SELECT @@TRANCOUNT TRC';
    bQuery.Open;
    Result := bQuery.FieldByName('TRC').AsInteger;
  finally
    bQuery.Free;
  end;
end;

function GetUserDoktorFilter (pFieldName : String = ''): String;
begin
  //yönetici ise ya da datalar.doktorkodu boþ ise filtre koyma. yönetici deðil ama doktor ise koy
  if IsNull (pFieldName) then pFieldName := 'Kod';
  if (datalar.UserGroup = '1') or IsNull (DATALAR.doktorKodu) then
    Result := ''
   else
    Result := pFieldName + ' = '+ QuotedStr(DATALAR.doktorKodu);
end;

function GetUserIGUFilter (pFieldName : String = ''): String;
begin
  //yönetici ise ya da datalar.IGU boþ ise filtre koyma. yönetici deðil ama iþ güv. uz. ise koy
  if IsNull (pFieldName) then pFieldName := 'Kod';
  if (datalar.UserGroup = '1') or IsNull (DATALAR.IGU) then
    Result := ''
   else
    Result := pFieldName + ' = '+ QuotedStr(DATALAR.IGU);
end;

function HakikiAktifSube: String;
begin
  Result := ifThen(IsNull (datalar.AktifSube),'',ifThen(pos(',',datalar.AktifSube) > 0,'',datalar.AktifSube));
end;

function SQLValue (const sValue: String): String;
begin
  if IsNull (sValue) then Result := 'NULL'
                     else Result := QuotedStr(sValue);
end;

function IsNull (const s: String): Boolean;
begin
  Result := Trim (s) = '';
end;
   //çaðrýldýðý yerler kontrol edilecekler:
   //SQLSelectToDataSet ListeAcCreate BuyukHarf SayisalVeri NextKontrol TurkCharKontrol FormInputZorunluKontrolPaint
end.
