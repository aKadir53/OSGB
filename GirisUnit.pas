unit GirisUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit,cxCalendar,  Menus, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  Data.Win.ADODB, cxPC, Vcl.StdCtrls, cxButtons, cxGroupBox, cxLabel,kadir,
  cxTextEdit, cxDBEdit, dxLayoutContainer, dxLayoutControl, KadirLabel,kadirType,
  dxLayoutcxEditAdapters, cxMaskEdit, cxButtonEdit, dxLayoutLookAndFeels,
  Vcl.ExtCtrls, Vcl.DBCtrls, cxDropDownEdit, dxLayoutControlAdapters, cxMemo,
  cxImageComboBox,cxImage,jpeg, dxSkinsdxStatusBarPainter, dxStatusBar,
  Vcl.ComCtrls, Vcl.ToolWin, dxGDIPlusClasses, cxCurrencyEdit, cxCheckBox,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, DB, dxSkinsCore, dxSkinBlue,strUtils,
  dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters,
  acPNG,cxGridExportLink, cxProgressBar, dxSkinBlack, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, cxRadioGroup, cxCheckComboBox, cxCheckGroup, Vcl.ImgList;
type
  TControlAccess = class(TControl);
  TcxLookAndFeelAccess = class(TcxLookAndFeel);
  TWinControlAccess = class(TWinControl);
  TdxLayoutControlAccess = class(TdxLayoutControl);


type
  TGirisForm = class(TForm)
    cxPanel: TcxGroupBox;
    DataTableSource: TDataSource;
    cxButton1: TcxButton;
    Sayfalar: TcxPageControl;
    sayfa1: TcxTabSheet;
    sayfa2: TcxTabSheet;
    sayfa3: TcxTabSheet;
    sayfa4: TcxTabSheet;
    Sayfa1_dxLayoutControl1Group_Root: TdxLayoutGroup;
    Sayfa1_dxLayoutControl1: TdxLayoutControl;
    Kolon2: TdxLayoutGroup;
    sqlRun: TADOQuery;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    Kolon3: TdxLayoutGroup;
    Kolon1: TdxLayoutGroup;
    cxYeni: TcxButton;
    cxKaydet: TcxButton;
    cxIptal: TcxButton;
    cxButton5: TcxButton;
    dxStatusBar1: TdxStatusBar;
    cxTopPanel: TcxGroupBox;
    cxTab: TcxTabControl;
    Image1: TImage;
    Image2: TImage;
    cxButtonKadir1: TcxButtonKadir;
    cxTopPanel_AltSag: TcxGroupBox;
    Menu: TPopupMenu;
    cxTopPanelAltOrta: TControlBar;
    ToolBar1: TToolBar;
    sayfa3_dxLayoutControl2: TdxLayoutControl;
    sayfa3_dxLayoutGroup1: TdxLayoutGroup;
    Sayfa3_Kolon2: TdxLayoutGroup;
    Sayfa3_Kolon3: TdxLayoutGroup;
    Sayfa3_Kolon1: TdxLayoutGroup;
    sayfa5: TcxTabSheet;
    sayfaList: TcxTabSheet;
    cxGridGiris: TcxGrid;
    cxGridGirisrisTableView: TcxGridDBTableView;
    cxGridGirisLevel1: TcxGridLevel;
    sayfa2_dxLayoutControl3: TdxLayoutControl;
    sayfa2_dxLayoutGroup2: TdxLayoutGroup;
    sayfa2_Kolon2: TdxLayoutGroup;
    sayfa2_Kolon3: TdxLayoutGroup;
    sayfa2_Kolon1: TdxLayoutGroup;
    dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel;
    sayfa2_dxLayoutControl3SpaceItem1: TdxLayoutEmptySpaceItem;
    pnlDurum: TcxGroupBox;
    pnlDurumImage: TcxImage;
    pnlDurumDurum: TcxGroupBox;
    DosyaKaydet: TSaveDialog;
    SelectAdo: TADOQuery;
    pBar: TcxProgressBar;
    TopPanel: TcxGroupBox;
    txtTopPanelTarih1: TcxDateEditKadir;
    txtTopPanelTarih2: TcxDateEditKadir;
    btnListTopPanel: TcxButtonKadir;
    txtkodTopPanel: TcxComboBox;
    txtSeansTopPanel: TcxComboBox;
    SysTakipNoVar: TcxImageComboKadir;
    ENabizMesajTipi: TcxImageComboKadir;
    AktifPasifTopPanel: TcxImageComboKadir;
    DiyalizTipTopPanel: TcxImageComboKadir;
    txtDonemTopPanel: TcxDonemComboKadir;
    KurumTipTopPanel: TcxImageComboKadir;
    DataSource: TDataSource;
    chkList: TcxCheckGroup;
    USER_ID: TcxTextEdit;
    sirketKod: TcxButtonEditKadir;
    Kolon4: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    Sayfa4_Kolon2: TdxLayoutGroup;
    Sayfa4_Kolon3: TdxLayoutGroup;
    Sayfa4_Kolon1: TdxLayoutGroup;
    SeansKriter: TcxTextEdit;
    pnlDurumImageList: TcxImageList;

    procedure cxKaydetClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure TopPanelPropertiesChange(Sender: TObject);
    function Post : Boolean;
    procedure cxListeleClick(Sender : TObject);
    function PostSQL(sp_Sql : string) : Boolean;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
    procedure cxTextEditBKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);virtual;
    procedure cGridcxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure KontrolEditValueClear;
    procedure sqlRunLoad;
    procedure Yukle;
    procedure Disabled(_form: TForm ; indexField : Boolean);
    procedure Enabled;
    procedure newButonVisible(durum : boolean);
    procedure indexKaydiBul(kod : string;Fieldname : string = '');
    procedure cxButtonKadir1Click(Sender: TObject);
    procedure TopPanelButonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxPanelButtonEnabled(yeni,kaydet,sil : boolean);
    procedure cxPanelButtonVisible(yeni,kaydet,sil : boolean);
    procedure Image2Click(Sender: TObject);
    procedure PropertiesEditValueChanged(Sender: TObject);
    procedure SayfaCaption(s1,s2,s3,s4,s5 : string;ActivePage : integer = 0);
    procedure FormResize(Sender: TObject);
    procedure SetFormID(const Value : integer);
    procedure SetHastaBilgileriniCaptionGoster(const Value : Boolean);
    function GetFormID : integer;
    procedure ExceleGonder;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);

    function FormInputZorunluKontrol(form : TForm) : Boolean;
    procedure FormCreate(Sender: TObject);
    procedure SayfalarChange(Sender: TObject);

  private
    F_dosyaNO_ : string;
    F_gelisNO_ : string;
    F_provizyonTarihi_ : string;
    F_TakipNo_ : string;
    //F_ilkTakipNo_ : string;
    F_BasvuruNo_ : string;
    F_DiyalizTedaviTipi_ : string;
    F_Doktor_ : string;
    F_Makina_ : string;
    F_Seans_ : string;
    F_TalepSira_ : string;
    F_TC_ : string;
    F_DevKurum_ : string;
    F_SigortaliTur_ : string;
    F_HastaAdSoyad_ : string;
    FformID : integer;
    F_HastaBilgileriniCaptionGoster_ : Boolean;
    F_SeansTarihi_ : string;
    F_Yupass_ : String;
    F_FaturaNo_ : String;
    F_Dataset : TADOQuery;
    F_DataSource : TDataSource;
    F_SeansSira_ : string;
    F_IlacEtkenMadde_ : string;
    F_firmaKod_ : string;
    F_mobilTel_ : string;
    F_sp_ : string;
    F_kod_ : string;
    F_sube_ : string;
    F_SahaDenetimVeri_ : TSahaDenetimler;
  protected
    F_IDENTITY : Integer;
    { Private declarations }
  public
    indexFieldName,TableName,_SqlInsert_,_SqlUpdate_,_SqlDelete_ : string;
    _fieldsEdit_,_fields_ ,_fieldBaslik_,_fieldTips_,_fieldFormats_,_spSQL_ : string;
    indexFieldValue : string;
    sqlTip : sqlType;
   // _dosyaNo_,_gelisNo_,TakipNo,BasvuruNo : string;
    procedure Olustur(sender : TObject;Table,Tabbaslik : string ; imageindex : integer;
                      sqlInsert : string = '';sqlUpdate : string = '';sqlDelete : string = '';indexField : string = '');
    procedure ButonClick(sender : TObject ; key : char);
    procedure tableColumnDescCreate;
    procedure TapPanelElemanVisible(ButtonList : Boolean = True;Tarih1 : Boolean = True;
                                    Tarih2 : Boolean = True;ENabizmesajTip : Boolean = True;
                                    Seans : Boolean = True;HizmetKod : Boolean = True;
                                    KurumTip : Boolean = True;SysTakipNoVarMi : Boolean = False;
                                    SeansKriteri : Boolean = False;
                                    AktifPasif : Boolean = False;
                                    DiyalizTip : Boolean = False;
                                    Donem : Boolean = False;
                                    ChkListe : Boolean = False);

    procedure setDataStringC(sender : Tform ; fieldName,caption : string;
      parent : TdxLayoutGroup;grup : string ;uzunluk : integer;List : Tstrings);overload;
    procedure setDataStringC(sender : Tform ; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer;List : string); overload;
    procedure setDataString(sender : Tform ; fieldName ,caption: string ;
          parent : TdxLayoutGroup; grup : string;uzunluk : integer;Zorunlu : Boolean = False; ObjectName : String = '');
    procedure setDataStringMemo(sender : Tform ; fieldName ,caption: string ;
          parent : TdxLayoutGroup; grup : string;uzunluk,yukseklik : integer);
    procedure setDataStringB(sender : Tform; fieldName ,caption: string ;
        parent : TdxLayoutGroup; grup : string;uzunluk:integer; Prms : TListeAc;indexField : Boolean;
        obje:TcxButtonEditKadir;tanimi : string='tanimi';whereColumObjeName : string = '';
        Zorunlu : Boolean = False ; ReadOnly : Boolean = False;_Tag_ : integer = 0);
    procedure setDataStringKontrol(sender : Tform;obje : TControl; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer ; Yukseklik : integer = 0 ; Aling : TAlign = alNone);
    procedure setDataStringBLabel(sender : Tform ; Name : string;
     parent : TdxLayoutGroup;grup : string;uzunluk : integer;caption : string = '';parentCaption : string = '';fieldName : string = '';
     pBoldText: Boolean = True;
     pTextColor: TColor = clRed;
     pHorzAlignment: TcxEditHorzAlignment = taLeftJustify);
    procedure addButton(sender : Tform ;cxButton:TcxButtonKadir;
                        Name ,captionItem,captionButton: string; parent : TdxLayoutGroup;
                        grup : string;uzunluk : integer;
                        Event : TNotifyEvent = nil);
    procedure addButtonTopPanel(sender : Tform ; Name,caption: string ; uzunluk,Tag : integer; Event : TNotifyEvent = nil);
    procedure setDataImage(sender : Tform; Name ,captionItem : string; parent : TdxLayoutGroup; grup : string;uzunluk,yukseklik : integer);
    procedure setDataStringChk(sender : Tform ; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer);
    procedure setDataStringCurr(sender : Tform ; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer;displayFormat : string = ',0.00';_Tag_ : integer = -100);
    procedure DiyalizTedaviControlleriniFormaEkle(Grp : TdxLayoutGroup);
    procedure DiyalizTedavi_UF_KontrolleriniFormaEkle(Grp : TdxLayoutGroup);
    function  Init(Sender: TObject) : Boolean; virtual;
    procedure OrtakEventAta(Sender : TcxImageComboKadir);
    procedure QuerySelect(sql:string);
    procedure DurumGoster(Visible : Boolean = True; pBarVisible : Boolean = False ;
                                 msj : string = 'Ýþleminiz Yapýlýyor , lütfen bekleyiniz...';
                                 imageIndex : integer = 0);

    function ResultDataset(FormTag : integer) : TADOQuery;
        { Public declarations }
    property formID : integer read GetFormID write SetFormID;
    property _dosyaNO_ : string read F_dosyaNO_ write F_dosyaNO_;
    property _gelisNO_ : string read F_gelisNO_ write F_gelisNO_;
    property _provizyonTarihi_ : string read F_provizyonTarihi_ write F_provizyonTarihi_;
    property _TakipNo_ : string read F_TakipNo_ write F_TakipNo_;
    property _DiyalizTedaviTipi_ : string read F_DiyalizTedaviTipi_ write F_DiyalizTedaviTipi_;
    property _Doktor_ : string read F_Doktor_ write F_Doktor_;
    property _Makina_ : string read F_Makina_ write F_Makina_;
    property _Seans_ : string read F_Seans_ write F_Seans_;
    property _BasvuruNo_ : string read F_BasvuruNo_ write F_BasvuruNo_;
    property _TalepSira_ : string read F_TalepSira_ write F_TalepSira_;
    property _TC_ : string read F_TC_ write F_TC_;
    property _DevKurum_ : string read F_DevKurum_ write F_DevKurum_;
    property _SigortaliTur_ : string read F_SigortaliTur_ write F_SigortaliTur_;
    property _HastaAdSoyad_ : string read F_HastaAdSoyad_ write F_HastaAdSoyad_;
    property _HastaBilgileriniCaptionGoster_ : Boolean read F_HastaBilgileriniCaptionGoster_ write SetHastaBilgileriniCaptionGoster;
    property _SeansTarihi_ : string read F_SeansTarihi_ write F_SeansTarihi_;
    property _FaturaNo_ : string read F_FaturaNo_ write F_FaturaNo_;
    property _Yupass_ : string read F_Yupass_ write F_Yupass_;
    property _Dataset : TADOQuery read F_Dataset write F_Dataset;
    property _DataSource : TDataSource read F_DataSource write F_DataSource;
    property _SeansSira_ : string read F_SeansSira_ write F_SeansSira_;
    property _IlacEtkenMadde_ : string read F_IlacEtkenMadde_ write F_IlacEtkenMadde_;
    property _firmaKod_ : string read F_firmaKod_ write F_firmaKod_;
    property _mobilTel_ : string read F_mobilTel_ write F_mobilTel_;
    property _sp_ : string read F_sp_ write F_sp_;
    property _kod_ : string read F_kod_ write F_kod_;
    property _sube_ : string read F_sube_ write F_sube_;
    property _SahaDenetimVeri_ : TSahaDenetimler read F_SahaDenetimVeri_ write F_SahaDenetimVeri_;
  end;

const
  _SqlSelect_ = 'Select %s from %s where %s';
  selectSQLAll  = 'select * from %s ';
  selectSQL  = 'select * from %s where %s';
  selectSQLW  = 'select * from %s where %s';
  selectTableDescColumn = 'select st.name [Table],sc.name [Column],sep.value [Description] '+
                          ' from sys.tables st ' +
                          ' inner join sys.columns sc on st.object_id = sc.object_id ' +
                          ' left join sys.extended_properties sep on st.object_id = sep.major_id ' +
                                                              ' and sc.column_id = sep.minor_id ' +
                                                              ' and sep.name = ''MS_Description'' ' +
                          ' where st.name = %s' +
                          'and isnull(sep.value,'''') <> ''''';

var
  GirisForm: TGirisForm;
  _SQLRUN_ : string;
  Lxxxx : TListeAc;
  oldRenk : TColor;
implementation

uses AnaUnit,Data_Modul,FormKontrolUserSet;

{$R *.dfm}

function TGirisForm.ResultDataset(FormTag : integer) : TADOQuery;
var
  ADO : TADOQuery;
  Sql,SirketKod : string;
begin
   ADO := TADOQuery.Create(nil);
   ADO.Connection := Datalar.ADOConnection2;
   DurumGoster;
   try
     case formTag of
       TagfrmHastaListe :
           begin
              sql := 'exec sp_frmPersonelListesi ' + QuotedStr(datalar.AktifSirket) + ',' +
                                                     AktifPasifTopPanel.EditValue + ',' +
                                                     QuotedStr('') + ',' +
                                                     QuotedStr(datalar.AktifSube);

           end;
       TagfrmDoktorHastaListe :
           begin
              sql := 'exec sp_frmDoktorPersonelListesi ' + QuotedStr(ifThen(KurumTipTopPanel.EditingValue=1,datalar.AktifSirket,'')) + ',' +
                                                          AktifPasifTopPanel.EditValue + ',' +
                                                          QuotedStr(datalar.doktorKodu) + ',' +
                                                          QuotedStr(datalar.AktifSube);

           end;

       TagfrmReceteler :
           begin
              if KurumTipTopPanel.EditValue = 1 then sirketKod := datalar.AktifSirket
               else SirketKod := '';
              sql := 'exec sp_Receteler ' + QuotedStr(sirketKod) + ',' +
                                            txtTopPanelTarih1.GetSQLValue   + ',' +
                                            txtTopPanelTarih2.GetSQLValue;

           end;
       TagfrmKiloOrder :
           begin
             sql := 'exec sp_TopluSeansGetir ' + txtTopPanelTarih1.GetSQLValue   + ',' +
                                                 txtTopPanelTarih2.GetSQLValue + ',' +
                                                 QuotedStr('') + ',' +
                                                 QuotedStr(txtSeansTopPanel.Text) + ',' +
                                                 QuotedStr('') + ',' +
                                                 copy(chkList.EditValue,1,1) + ',' +
                                                 inttoStr(strtoint(copy(chkList.EditValue,3,1))*-1) + ',' +
                                                 copy(chkList.EditValue,2,1);

           end;
       TagfrmTedaviListP :
           begin
             sql := 'exec sp_TedaviListesiPivot ' + txtTopPanelTarih1.GetSQLValue + ',' +
                                                    txtTopPanelTarih2.GetSQLValue;
           end;

     end;
     datalar.QuerySelect(ADO,sql);
     ResultDataset := ADO;
   finally
     DurumGoster(False);
   end;
end;

procedure TGirisForm.TopPanelButonClick(Sender: TObject);
begin
    case TcxButtonKadir(sender).Tag of
     ClckListele : begin
                      _Dataset := ResultDataset(Tag);
                      DataSource.DataSet := _Dataset;
                      _DataSource.DataSet := _Dataset;
                   end;
    end;

end;


procedure TGirisForm.TapPanelElemanVisible(ButtonList : Boolean = True;Tarih1 : Boolean = True;
                                    Tarih2 : Boolean = True;ENabizmesajTip : Boolean = True;
                                    Seans : Boolean = True;HizmetKod : Boolean = True;
                                    KurumTip : Boolean = True ; SysTakipNoVarMi : Boolean = False;
                                    SeansKriteri : Boolean = False;
                                    AktifPasif : Boolean = False;
                                    DiyalizTip : Boolean = False;
                                    Donem : Boolean = False;
                                    ChkListe : Boolean = False);
begin
  btnListTopPanel.Visible := ButtonList;
  txtTopPanelTarih1.Visible := Tarih1;
  txtTopPanelTarih2.Visible := Tarih2;
  ENabizmesajTipi.Visible := ENabizmesajTip;
  txtSeansTopPanel.Visible := Seans;
  txtkodTopPanel.Visible := HizmetKod;
  KurumTipTopPanel.Visible := KurumTip;
  SysTakipNoVar.Visible := SysTakipNoVarmi;
  SeansKriter.Visible := SeansKriteri;
  AktifPasifTopPanel.Visible := AktifPasif;
  DiyalizTipTopPanel.Visible := DiyalizTip;
  txtDonemTopPanel.Visible := Donem;
  chkList.Visible := ChkListe;
end;

procedure TGirisForm.DurumGoster(Visible : Boolean = True; pBarVisible : Boolean = False ;
                                 msj : string = 'Ýþleminiz Yapýlýyor , lütfen bekleyiniz...';
                                 imageIndex : integer = 0);
begin
   pnlDurum.BringToFront;
   pnlDurum.Visible := Visible;
   pBar.Visible := pBarVisible;
   pnlDurumDurum.Caption := msj;
   pnlDurumImage.Clear;
   pnlDurumImageList.GetBitmap(imageIndex,pnlDurumImage.Picture.Bitmap);
   Application.ProcessMessages;
end;

procedure TGirisForm.QuerySelect(sql:string);
begin
//    if Pos ('WHERE',AnsiUpperCase(sql)) <> 0
//    Then sql := StringReplace(sql,'WHERE','WITH(NOLOCK) WHERE',[rfReplaceAll,rfIgnoreCase])
//    else
//      if  (Pos ('GROUP BY',AnsiUpperCase(sql)) = 0)
//      and (Pos ('ORDER BY',AnsiUpperCase(sql)) = 0)
//      Then sql := sql + ' WITH(NOLOCK) ';
   try
    if Copy(AnsiUppercase(sql) ,1, 6) = 'SELECT'
    Then sql := 'SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  '+ sql;
    Self.SelectAdo.Close;
    Self.SelectAdo.SQL.Clear ;
    Self.SelectAdo.SQL.Add(sql);
    Self.SelectAdo.Open;
   except on e : Exception do
    begin
      ShowMessageskin(e.Message,'','','info');
    end;
   end;
end;

procedure TGirisForm.OrtakEventAta(Sender : TcxImageComboKadir);
begin
  TcxImageComboKadir (sender).OnEnter := cxEditEnter;
  TcxImageComboKadir(sender).OnExit := cxEditExit;
  TcxImageComboKadir(sender).OnKeyDown := cxTextEditBKeyDown;
 // TcxImageComboKadir(sender).Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;

function TGirisForm.Init(Sender: TObject) : Boolean;
begin
  USER_ID.Text := datalar.username;
  sirketKod.Text := datalar.AktifSirket; //sadece yeni kayýt ise yap dedik, diðerlerinde veritabanýndan geldikçe eziliyor zaten.
  FormInputZorunluKontrolPaint(self,$00FCDDD1);
  cxTab.PopupMenu := menu;

  Result := True;
end;

procedure TGirisForm.DiyalizTedavi_UF_KontrolleriniFormaEkle(Grp : TdxLayoutGroup);
begin
    setDataStringBLabel(self,'lblBostatir2',kolon2,'',1,'','');
    setDataStringBLabel(self,'kiloOrder',Grp,'',126,'Kilo Order', '', '', True, clRed, taCenter);
    setDataStringCurr(self,'GIRISKILO','Giriþ Kilo',Grp,'',60,'#.#0',0);
    setDataStringCurr(self,'kilo','Kuru Kilo',Grp,'',60,'#.#0',0);
    setDataStringCurr(self,'CEKILECEKSIVI','Ç.Sývý',Grp,'',60,'#.#0',0);
    setDataStringCurr(self,'OncekiCikisKilo','Ö.Çýkýþ Kilo',Grp,'',60,'#.#0',0);
    setDataStringCurr(self,'aldigiKilo','Aldýðý Kilo',Grp,'',60,'#.#0',0);
    setDataStringCurr(self,'verilecekSivi','Verilecek Sývý',Grp,'',60,'#.#0',0);
    setDataStringCurr(self,'UF','UF',Grp,'',60,'#.#0',0);
    setDataStringCurr(self,'CIKISKILO','Çýkýþ Kilo',Grp,'',60,'#.#0',0);

    TcxTextEdit(FindComponent('kilo')).Properties.ReadOnly := True;
    TcxTextEdit(FindComponent('OncekiCikisKilo')).Properties.ReadOnly := True;

    TcxTextEdit(FindComponent('GIRISKILO')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxTextEdit(FindComponent('CEKILECEKSIVI')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxTextEdit(FindComponent('aldigiKilo')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxTextEdit(FindComponent('verilecekSivi')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxTextEdit(FindComponent('UF')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxTextEdit(FindComponent('CIKISKILO')).Properties.OnEditValueChanged := PropertiesEditValueChanged;

end;


procedure TGirisForm.DiyalizTedaviControlleriniFormaEkle(Grp : TdxLayoutGroup);
var
  D : TcxComboBox;
begin
  D := TcxComboBox.Create(self);
  try
    D.Properties.DropDownListStyle := lsFixedList;

    setDataStringBLabel(self,'tedaviOrder',Grp,'',290,'Tedavi Order', '', '', True, clRed, taCenter);

    D.Name := 'txtDializorCinsi';
    ComboDoldurName('',D);
    setDataStringC(self,'DC','Diyalizör Cinsi',Grp,'',120,D.Properties.Items);

    D.Name := 'txtDializorTipi';
    ComboDoldurName('',D);
    setDataStringC(self,'DS','Diyalizör Tipi',Grp,'',120,D.Properties.Items);

    D.Name := 'txtDializat';
    ComboDoldurName('',D);
    setDataStringC(self,'D','Diyalizat',Grp,'',120,D.Properties.Items);

    D.Name := 'txtDamarGiris';
    ComboDoldurName('',D);
    setDataStringC(self,'GIRISYOLU','Damar Giriþ',Grp,'',120,D.Properties.Items);

    D.Name := 'txtYA';
    ComboDoldurName('',D);
    setDataStringC(self,'YA','Yüzey Alan',Grp,'',120,D.Properties.Items);

    D.Name := 'txtHipar';
    ComboDoldurName('',D);
    setDataStringC(self,'HEPARINTIP','Heparin Tip',Grp,'',120,'Standart,DüþükMolekül,Diðer');
    setDataStringC(self,'HEPARIN','Heparin',Grp,'Hep',120,D.Properties.Items);
    setDataString(self,'HEPARINUYG','Heprin Uyg.',Grp,'',120);


    setDataStringC(self,'HCOOO','HCO3',Grp,'',70,'25,26,27,28,29,30,31,32,33,34,35');
    setDataStringC(self,'APH','APH',Grp,'',70,'200,300,350,400,450');
    setDataStringC(self,'Na','Na',Grp,'',70,'136,138,140,142,144,146');

    TcxComboBox(FindComponent('DC')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxComboBox(FindComponent('DS')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxComboBox(FindComponent('D')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxComboBox(FindComponent('GIRISYOLU')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxComboBox(FindComponent('YA')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxComboBox(FindComponent('HEPARIN')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxComboBox(FindComponent('HEPARINUYG')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxComboBox(FindComponent('HEPARINTIP')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxComboBox(FindComponent('HCOOO')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxComboBox(FindComponent('APH')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
    TcxComboBox(FindComponent('Na')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
  finally
    D.Free;
  end;
end;



procedure TGirisForm.SetFormID(const Value : integer);
begin
  FformID := Value;
end;

procedure TGirisForm.SetHastaBilgileriniCaptionGoster(const Value : Boolean);
begin
  F_HastaBilgileriniCaptionGoster_ := Value;
  if F_HastaBilgileriniCaptionGoster_
  then begin
    Caption := _HastaAdSoyad_ + ' ' + _dosyaNO_ + ' ' + _gelisNO_ +' ' + _SeansTarihi_
  end;
end;


function TGirisForm.GetFormID;
begin
  Result := FformID;
end;

procedure TGirisForm.ExceleGonder;
var
 i : integer;
begin
 for i := 0 to self.ComponentCount - 1 do
  begin
     if ((self.Components[i].ClassName = 'TcxGridKadir') or
         (self.Components[i].ClassName = 'TcxGrid'))
     then begin
        if TcxGridKadir(self.Components[i]).ExceleGonder = True
        Then begin
           DosyaKaydet.FileName := TcxGridKadir(self.Components[i]).ExcelFileName+'.XLS';
           if not DosyaKaydet.Execute then Exit;
           try
              ExportGridToExcel(DosyaKaydet.FileName,TcxGridKadir(self.Components[i]),False,True);
           except on e : Exception do
             begin
                ShowMessageSkin('Hata Oluþtu : ' + e.Message,'','','info');
                exit;
             end;
           end;
             ShowMessageSkin(DosyaKaydet.FileName + ' ',' Baþarý ile Kaydedildi','','info');
        end;
     end;
  end;
end;

procedure TGirisForm.SayfaCaption(s1,s2,s3,s4,s5 : string;ActivePage : integer = 0);
begin
   sayfa1.Caption := s1;
   sayfa2.Caption := s2;
   sayfa3.Caption := s3;
   sayfa4.Caption := s4;
   sayfa5.Caption := s5;
   if s1 = '' then sayfa1.TabVisible := false else sayfa1.TabVisible := True;
   if s2 = '' then sayfa2.TabVisible := false else sayfa2.TabVisible := True;
   if s3 = '' then sayfa3.TabVisible := false else sayfa3.TabVisible := True;
   if s4 = '' then sayfa4.TabVisible := false else sayfa4.TabVisible := True;
   if s5 = '' then sayfa5.TabVisible := false else sayfa5.TabVisible := True;
   Sayfalar.ActivePageIndex := ActivePage;
end;

procedure TGirisForm.SayfalarChange(Sender: TObject);
begin
  //
end;

procedure TGirisForm.SayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
  var AllowChange: Boolean);
begin
//
end;

procedure TGirisForm.PropertiesEditValueChanged(Sender: TObject);
begin
  cxPanelButtonEnabled(false,True,false);
end;

procedure TGirisForm.cxPanelButtonVisible(yeni,kaydet,sil : boolean);
begin
  cxYeni.Visible := yeni;
  cxKaydet.Visible := kaydet;
  cxIptal.Visible := sil;
end;

procedure TGirisForm.cxPanelButtonEnabled(yeni,kaydet,sil : boolean);
var
  i : integer;
  mi : TMenuItem;
begin
  cxYeni.Enabled := yeni;
  cxKaydet.Enabled := kaydet;
  cxIptal.Enabled := sil;

  for i := 0 to self.ComponentCount - 1 do
  begin
    if self.Components[i].ClassType = TToolButton
    then begin
       if TToolButton(self.Components[i]).Style = tbsDropDown
       then begin
          for mi in TToolButton(self.Components[i]).DropdownMenu.Items do
          begin
             if mi.Tag = cxYeni.Tag
             Then mi.Enabled := cxYeni.Enabled
             else
             if mi.Tag = cxKaydet.Tag
             Then mi.Enabled := cxKaydet.Enabled
             else
             if mi.Tag = cxIptal.Tag
             Then mi.Enabled := cxIptal.Enabled;
          end;
       end;

     if TToolButton(Components[i]).Tag = cxYeni.Tag
     Then TToolButton(Components[i]).Enabled := cxYeni.Enabled
     else
     if TToolButton(Components[i]).Tag = cxKaydet.Tag
     Then TToolButton(Components[i]).Enabled := cxKaydet.Enabled
     else
     if TToolButton(Components[i]).Tag = cxIptal.Tag
     Then TToolButton(Components[i]).Enabled := cxIptal.Enabled;
    end;
  end;


end;


procedure TGirisForm.newButonVisible(durum : boolean);
var
  i : integer;
begin
// forma eklenen butonlardan NewButtonVisible özelliði true olan butonun bulunduðu item görünür oluyor
  for i := 0 to self.ComponentCount - 1 do
  begin
   try
    if (self.Components[i].ClassName = 'TdxLayoutItem')
     then
       if
         TcxButtonKadir(TdxLayoutItem(self.Components[i]).Control).NewButtonVisible = True
          then
            TdxLayoutItem(self.Components[i]).Visible := durum;
   except
   end;
  end;
end;

procedure TGirisForm.indexKaydiBul(kod : string ; Fieldname : string = '');
var
 _oldvalue_ , SQL : string;
begin
// index alan ve bu alanýn deðerine sahip olan kayýt getiriliyor. ve sqlRun dataset edit yapýlýyor
// sqlRunLoad ile kayýt kontrollere yerleþtiriliyor.
// formun creat yada init inde tablename deðerini set etmeyi unutma
// kayýt yok ise append yapýlýyor.
    SQL := ifThen(sqlTip = sql_Select , selectSQLW,_spSQL_);

  try
    if Fieldname = '' then Fieldname := indexFieldName;
    if kod <> ''
    then begin
     if sqlTip <> sql_Select
     then
       sqlRun.SQL.Text := Format(SQL,[kod])
     else
       sqlRun.SQL.Text := Format(SQL,[tablename,Fieldname+'='+#39+kod+#39]);
       sqlRun.Open;
    end
    else begin
     sqlRun.SQL.Text := Format(SQL,[tablename,Fieldname+'='+#39+kod+#39]);
     sqlRun.Open;
     sqlRunLoad;
     if (TcxButtonEditKadir(FindComponent(Fieldname)).indexField = True)
     Then begin
       TcxButtonEditKadir(FindComponent(Fieldname)).Properties.ReadOnly := false;
       try ActiveControl := TcxButtonEditKadir(FindComponent(Fieldname));except end;
     end;
     exit;
    end;

    if (sqlRun.Eof) and (sqlTip = sql_Select)
    Then begin
         _SQLRUN_ := _SqlInsert_;
         sqlRun.Append;
         _oldvalue_ := TcxButtonEditKadir(FindComponent(Fieldname)).Text;
         sqlRunLoad;
         if (TcxButtonEditKadir(FindComponent(Fieldname)).indexField = True)
         Then
            TcxButtonEditKadir(FindComponent(Fieldname)).Text := _oldvalue_;
         newButonVisible(true);
    end
    Else begin
      cxPanelButtonEnabled(true,true,true);
      sqlRun.Edit;
      _SQLRUN_ := _SqlUpdate_;
      sqlRunLoad;
    end;

  except on e : exception do
     begin
        ShowMessageSkin(e.Message,'','','info');
     end;
  end;

end;

procedure TGirisForm.Enabled;
var
  _say, x: integer;
  _Obje_ : TcxCustomEdit;
begin
  _say := self.ComponentCount - 1;
  for x := 0 to _say do
  begin
       _obje_ := TcxCustomEdit(self.Components[x]);
       if (_obje_.ClassName = 'TcxTextEdit') or
       (_obje_.ClassName = 'TcxTextEditKadir') or
       (_obje_.ClassName = 'TcxButtonEdit') or
       (_obje_.ClassName = 'TcxButtonEditKadir') or
       (_obje_.ClassName = 'TcxComboBox') or
       (_obje_.ClassName = 'TcxMemo') or
       (_obje_.ClassName = 'TcxImageComboBox') or
       (_obje_.ClassName = 'TcxImageComboKadir') or
       (_obje_.ClassName = 'TcxCheckBox') or
       (_obje_.ClassName = 'TcxCurrencyEdit') or
       (_obje_.ClassName = 'TcxDateEdit') or
       (_obje_.ClassName = 'TcxDateEditKadir') or
       (_obje_.ClassName = 'TcxCheckGroup') or
       (_obje_.ClassName = 'TcxButton') or
       (_obje_.ClassName = 'TcxGrid')
      Then
        TControl(_obje_).Enabled := True;

  end;
end;


procedure TGirisForm.Disabled(_form: TForm ; indexField : Boolean);
var
  _say, x: integer;
  _Obje_ : TcxCustomEdit;
begin
  _say := _form.ComponentCount - 1;

  for x := 0 to _say do
  begin
   _obje_ := TcxCustomEdit(_form.Components[x]);

   if ((_obje_.ClassName = 'TcxButtonEditKadir') and
      (TcxButtonEditKadir(_obje_).indexField = True))
    Then begin
     TcxButtonEditKadir(_obje_).Enabled := True;
    end
    else
      if (_obje_.ClassName = 'TcxTextEdit') or
       (_obje_.ClassName = 'TcxTextEditKadir') or
       (_obje_.ClassName = 'TcxButtonEdit') or
       (_obje_.ClassName = 'TcxButtonEditKadir') or
       (_obje_.ClassName = 'TcxComboBox') or
       (_obje_.ClassName = 'TcxMemo') or
       (_obje_.ClassName = 'TcxImageComboBox') or
       (_obje_.ClassName = 'TcxImageComboKadir') or
       (_obje_.ClassName = 'TcxCheckBox') or
       (_obje_.ClassName = 'TcxCurrencyEdit') or
       (_obje_.ClassName = 'TcxDateEdit') or
       (_obje_.ClassName = 'TcxDateEditKadir') or
       (_obje_.ClassName = 'TcxCheckGroup') or
       (_obje_.ClassName = 'TcxButton') or
       (_obje_.ClassName = 'TcxGrid')
      Then
        TControl(_obje_).Enabled := False;
  end;
end;



procedure TGirisForm.Yukle;
begin
  sqlRun.SQL.Text := Format(_SqlSelect_,[_fields_,Tablename,indexFieldName]);
  sqlRun.Open;
end;


function TGirisForm.FormInputZorunluKontrol(form : Tform) : Boolean;
var
 i : integer;
 _Obje_ : TcxCustomEdit;
begin
  FormInputZorunluKontrol := False;
  for i := 0 to form.ComponentCount - 1 do
  begin
    if (form.Components[i].ClassName = 'TcxTextEdit') or
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

        if (KontrolZorunlumu(TForm(form).Tag,_Obje_.Name))
           and ((TcxCustomEdit(_Obje_).EditingValue = Null) or (VarToStr(TcxCustomEdit(_Obje_).EditingValue) = ''))
        then begin
          ShowMessageSkin(TcxTextEditKadir(_obje_).Name,'Zorunlu Alan','','info');

          if form.Parent = nil then
           form.ActiveControl := TcxCustomEdit(_obje_)
          else
            TcxCustomEdit(_obje_).SetFocus;

          FormInputZorunluKontrol := True;
          Break;
          exit;
        end;
    End;
   End; // for end

end;

procedure TGirisForm.KontrolEditValueClear;
var
 i : integer;
 _Obje_ : TcxCustomEdit;
begin
  for i := 0 to self.ComponentCount - 1 do
  begin
    if (self.Components[i].ClassName = 'TcxTextEdit') or
       (self.Components[i].ClassName = 'TcxTextEditKadir') or
       (self.Components[i].ClassName = 'TcxButtonEdit') or
       (self.Components[i].ClassName = 'TcxButtonEditKadir') or
       (self.Components[i].ClassName = 'TcxComboBox') or
       (self.Components[i].ClassName = 'TcxMemo') or
       (self.Components[i].ClassName = 'TcxImageComboBox') or
       (self.Components[i].ClassName = 'TcxImageComboKadir') or
       (self.Components[i].ClassName = 'TcxImage') or
       (self.Components[i].ClassName = 'TcxCheckBox') or
       (self.Components[i].ClassName = 'TcxCurrencyEdit') or
       (self.Components[i].ClassName = 'TcxRadioGroup') or
       (self.Components[i].ClassName = 'TcxDateEdit') or
       (self.Components[i].ClassName = 'TcxDateEditKadir') or
       (self.Components[i].ClassName = 'TcxCheckGroup')
    then begin
      try
        _obje_ := TcxCustomEdit(self.Components[i]);
        _obje_.Clear;
      finally
      end;
    end;
  end;
end;

procedure TGirisForm.sqlRunLoad;
var
 i : integer;
 _Obje_ : TcxCustomEdit;

 SQL : TADOQuery;
 _Table_,_text_ ,_kolon1_: string;
 g : TGraphic;
begin
// sqlRun dataset nesnesindeki kayýt kntrollere yerleþtiriliyor.
// kontrollerin typelerine göre yerleþtirme iþlemleri o nesnenin iþleyiþine göre düzenleniyor.
// butoneditlerde index alan kontrolü yapýlarak indexField true ise tabloda konumlanma yapýlacaðý
// false ise butonedit için seçim yapýlacagý belirleniyor. seçim yapýlan kod butonedite taným ise labele yerleþiyor

  for i := 0 to self.ComponentCount - 1 do
  begin
    if (self.Components[i].ClassName = 'TcxTextEdit') or
       (self.Components[i].ClassName = 'TcxTextEditKadir') or
       (self.Components[i].ClassName = 'TcxButtonEdit') or
       (self.Components[i].ClassName = 'TcxButtonEditKadir') or
       (self.Components[i].ClassName = 'TcxComboBox') or
       (self.Components[i].ClassName = 'TcxMemo') or
       (self.Components[i].ClassName = 'TcxImageComboBox') or
       (self.Components[i].ClassName = 'TcxImageComboKadir') or
       (self.Components[i].ClassName = 'TcxImage') or
       (self.Components[i].ClassName = 'TcxCheckBox') or
       (self.Components[i].ClassName = 'TcxCurrencyEdit') or
       (self.Components[i].ClassName = 'TcxRadioGroup') or
       (self.Components[i].ClassName = 'TcxDateEdit') or
       (self.Components[i].ClassName = 'TcxDateEditKadir') or
       (self.Components[i].ClassName = 'TcxCheckGroup') or
       ((self.Components[i].ClassName = 'TcxLabel') and (TcxLabel(self.Components[i]).Tag = -200))
    then begin
        //ÜÖ 20171215 görünmeyen bileþenin doldurulmasýnda sakýnca yok, þirket kodu bazý yerlerde görünmediði halde yazýlýp okunmasý gerekiyor. istenmeyen bileþen için Tag atanabilir.
        //if TcxCustomEdit(self.Components[i]).Visible = false then Continue;
        if TcxCustomEdit(self.Components[i]).Name = 'txtSifreTekrar' then Continue;
        if TcxCustomEdit(self.Components[i]).Tag = -100 then Continue;
        if TcxImage(self.Components[i]).Tag = -1 then Continue;
      _obje_ := TcxCustomEdit(self.Components[i]);
      try

       if (self.Components[i].ClassName = 'TcxLabel') and
           (TcxLabel(self.Components[i]).Tag = -200)
       Then begin
         _obje_ := TcxLabel(self.Components[i]);
         if sqlRun.FieldByName(copy(_Obje_.Name,6,50)) is TStringField then
           TcxLabel(_obje_).Caption := sqlRun.FieldByName(copy(_Obje_.Name,6,50)).AsString
          else
           TcxLabel(_obje_).Caption := sqlRun.FieldByName(copy(_Obje_.Name,6,50)).AsVariant;
         Continue;
       end
       else

       if (self.Components[i].ClassName = 'TcxCurrencyEdit') and
          (sqlRun.FieldByName(_Obje_.Name).AsVariant = null)
       then
        _obje_.EditValue := 0
       else
       if (self.Components[i].ClassName = 'TcxComboBox') and
          (sqlRun.FieldByName(_Obje_.Name).AsVariant = null)
       then
         TcxComboBox(_obje_).ItemIndex := -1
       else
       if (self.Components[i].ClassName = 'TcxImageComboKadir') and
          (sqlRun.FieldByName(_Obje_.Name).AsVariant = null)
       then
          _obje_.EditValue := ''
       else
         _obje_.EditValue := sqlRun.FieldByName(_Obje_.Name).AsVariant;


       if (self.Components[i].ClassName = 'TcxImage')
       Then Begin
         g := TJpegimage.Create;
         try
           try
            if sqlRun.FieldByName(_Obje_.Name).AsVariant <> Null
            Then begin
              g.Assign(sqlRun.FieldByName(_Obje_.Name));
              TcxImage(self.Components[i]).Picture.Assign(g);
            end;
           except
           end;
         finally
           g.Free;
         end;
       End
       Else
       if (self.Components[i].ClassName = 'TcxDateEditKadir')
       Then Begin
          if (sqlRun.FieldByName(_Obje_.Name).AsString = '') or (sqlRun.FieldByName(_Obje_.Name).AsVariant = NULL)
          then _obje_.Clear
          else
          try TcxDateEdit(_obje_).Date := tarihyap(sqlRun.FieldByName(_Obje_.Name).AsVariant);except end;
       End
       Else
       if (self.Components[i].ClassName = 'TcxButtonEditKadir') and
          (TcxButtonEditKadir(self.Components[i]).indexField = True) and
          (sqlRun.State in [dsNewValue,dsInsert])
       Then begin
        TcxButtonEditKadir(self.Components[i]).Properties.ReadOnly := False;
        TcxButtonEditKadir(self.Components[i]).SetFocus;
       end
       else
       if (self.Components[i].ClassName = 'TcxButtonEditKadir') and
          (TcxButtonEditKadir(self.Components[i]).indexField = True) and
          (sqlRun.State = dsEdit)
       Then
        TcxButtonEditKadir(self.Components[i]).Properties.ReadOnly := True
       else
       //ÜÖ 20171215 yukarýdaki continue'yi açtýk. görünmeyen bileþen için liste aç iþlemleri yapmaya baþladý, gerek yok.
       if (self.Components[i].ClassName = 'TcxButtonEditKadir')
         and (TcxButtonEditKadir(self.Components[i]).Visible)
         and (TcxButtonEditKadir(self.Components[i]).indexField = False) //and
       //   (sqlRun.State = dsEdit)
       then begin
          SQL := TADOQuery.Create(nil);
          try
            SQL.Connection := sqlRun.Connection;
            _Table_ := TcxButtonEditKadir(self.Components[i]).ListeAc.Table;
            _kolon1_ := TcxButtonEditKadir(self.Components[i]).ListeAc.Kolonlar[0];
            _text_ := TcxButtonEditKadir(self.Components[i]).Text;
            SQL.SQL.Text := Format(selectSQL,[_table_,
                                        _kolon1_ + '=' + #39+_text_+#39]);
            SQl.Open;
          //  TcxButtonEditKadir(self.Components[i]).tanimDeger := SQL.FieldByName(TcxButtonEditKadir(self.Components[i]).tanim).AsString;
            if TcxButtonEditKadir(self.Components[i]).tanim <> ''
            then
            TcxLabel(FindComponent('label'+TcxButtonEditKadir(self.Components[i]).Name)).Caption := SQL.FieldByName(TcxButtonEditKadir(self.Components[i]).tanim).AsString;
          finally
            SQL.Free;
          end;
       end;

        except on e : Exception do
         begin
          ShowMessage(_Obje_.Name,e.Message,'','info');
         end;
        end;


    end;
  end;

end;




procedure TGirisForm.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  list : ArrayListeSecimler;
  where,prm : string;
begin
// buttonedit buton cliklendiðinde tabloda konumlanýlacak kayýt için list açýyor.Bu listen kayýt
//seçiliyor kod butonedite taným label kontrole yerleþiyor.
//indexField true ise konumlanýp kayýt kontrollere yerleþiyor

  if AButtonIndex > -1 then
  begin
     where := TcxButtonEditKadir(sender).ListeAc.Where;
     if length(TcxButtonEditKadir(sender).ListeAc.Where) > 0
     //pos('%s',TcxButtonEditKadir(sender).ListeAc.Where) > 0
     Then begin
       if (TcxButtonEditKadir(sender).whereColum <> Null) and
          Assigned(TcxButtonEditKadir(FindComponent(TcxButtonEditKadir(sender).whereColum)))
       Then
         prm := QuotedStr(TcxButtonEditKadir(FindComponent(TcxButtonEditKadir(sender).whereColum)).EditingText);

       TcxButtonEditKadir(sender).ListeAc.Where :=
       format(TcxButtonEditKadir(sender).ListeAc.Where,[prm]);

     end;

      list := TcxButtonEditKadir(sender).ListeAc.ListeGetir;
      datalar.ButtonEditSecimlist := list;
      if length(list) = 0 then begin
       TcxButtonEditKadir(sender).ListeAc.Where := where;
       exit;
      end;
      TcxButtonEditKadir(sender).Text := list[0].kolon1;
      TcxButtonEditKadir(sender).tanimDeger := list[0].kolon2;

      TcxLabel(FindComponent('label'+TcxButtonEditKadir(sender).Name)).Caption := list[0].kolon2;

      if (TcxButtonEditKadir(sender).indexField = True)
      then begin
        indexKaydiBul(TcxCustomEdit(sender).EditingValue,TcxButtonEditKadir(sender).name);
       // TcxButtonEditKadir(sender).Properties.ReadOnly := True;
      end;
      TcxButtonEditKadir(sender).ListeAc.Where := where;

  end;
end;

procedure TGirisForm.cGridcxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  list : ArrayListeSecimler;
begin
 // TcxButtonEditKadir(TcxGridDBColumn(sender).Properties).ListeAc.Table := 'PersonelKart';

  list := TcxButtonEditKadir(TcxGridDBColumn(sender).Properties).ListeAc.ListeGetir;
  Datalar.ButtonEditSecimlist := List;
end;


procedure TGirisForm.cxButtonKadir1Click(Sender: TObject);
var
 i : integer;
 colon : TcxGridDBColumn;
begin

  sayfalar.ActivePage := sayfa2;
  sqlRun.Close;
  sqlRun.SQL.Text := Format(selectSQLAll,[tablename]);
  sqlRun.Open;
  cxGridGirisrisTableView.ClearItems;
  for i := 0 to self.ComponentCount - 1 do
  begin
    colon := nil;
    if
      (self.Components[i].ClassName = 'TcxTextEdit') or
      (self.Components[i].ClassName = 'TcxButtonEdit') or
      (self.Components[i].ClassName = 'TcxButtonEditKadir') or
      (self.Components[i].ClassName = 'TcxComboBox') or
      (self.Components[i].ClassName = 'TcxMemo') or
      (self.Components[i].ClassName = 'TcxImageComboBox') or
      (self.Components[i].ClassName = 'TcxImage') or
      (self.Components[i].ClassName = 'TcxCheckBox') or
      (self.Components[i].ClassName = 'TcxCurrencyEdit') or
      (self.Components[i].ClassName = 'TcxRadioGroup') or
      (self.Components[i].ClassName = 'TcxDateEdit')
    then begin
      colon := (cxGridGirisrisTableView as TcxGridDBTableView).CreateColumn;
      colon.DataBinding.FieldName := self.Components[i].Name;
      colon.Name := 'Column'+self.Components[i].Name;
      try colon.Width := TcxTextEdit(self.Components[i]).Width; except colon.Width := 50 end;
      try colon.Caption := self.Components[i].Name except colon.Caption := '' end;
    end;


    if (self.Components[i].ClassName = 'TcxTextEdit')
    Then begin
      TcxGridDBColumn(colon).PropertiesClass:= TcxTextEditProperties;
    end
    else
    if (self.Components[i].ClassName = 'TcxButtonEditKadir')
    then begin
      TcxGridDBColumn(colon).PropertiesClass := TcxButtonEditProperties;
      TcxButtonEditKadir(TcxGridDBColumn(colon).Properties).ListeAc := TcxButtonEditKadir(self.Components[i]).ListeAc;
      TcxGridDBColumn(colon).Properties.OnButtonClick := cGridcxButtonEditPropertiesButtonClick;
    end;
     (*
      (self.Components[i].ClassName = 'TcxButtonEdit') or
      (self.Components[i].ClassName = 'TcxButtonEditKadir') or
      (self.Components[i].ClassName = 'TcxComboBox') or
      (self.Components[i].ClassName = 'TcxMemo') or
      (self.Components[i].ClassName = 'TcxImageComboBox') or
      (self.Components[i].ClassName = 'TcxImage') or
      (self.Components[i].ClassName = 'TcxCheckBox') or
      (self.Components[i].ClassName = 'TcxCurrencyEdit')
        *)

  end;
end;

procedure TGirisForm.PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  //
end;

procedure TGirisForm.cxEditEnter(Sender: TObject);
begin
// kontrole girildiðinde rekn sarý yapýlýyor.
  oldRenk := TcxCustomEdit(sender).Style.Color;
  TcxCustomEdit(sender).Style.Color := clYellow;
  TcxCustomEdit(sender).Style.Font.Style := TcxCustomEdit(sender).Style.Font.Style + [fsBold];
  try
   if Assigned(FindComponent('dxLa'+TcxCustomEdit(sender).Name))
   then
    TdxLayoutItem(FindComponent('dxLa'+TcxCustomEdit(sender).name)).LayoutLookAndFeel := dxLayoutSkinLookAndFeel2;
  except
  end;
end;

procedure TGirisForm.cxEditExit(Sender: TObject);
begin
// kontrolden çýkýldýðýndan beyaz yapýlýyor
  TcxCustomEdit(sender).Style.Color := oldRenk;
  TcxCustomEdit(sender).Style.Font.Style := TcxCustomEdit(sender).Style.Font.Style - [fsBold];
  try
   if Assigned(FindComponent('dxLa'+TcxCustomEdit(sender).Name))
   then
   TdxLayoutItem(FindComponent('dxLa'+TcxCustomEdit(sender).name)).LayoutLookAndFeel := dxLayoutSkinLookAndFeel1;
  except
  end;

 // if (TcxTextEditKadir(sender).BosOlamaz = True) and
 (*
   if (KontrolZorunlumu(TGirisForm(Self).Tag,TcxTextEditKadir(sender).Name) = True) and
     ((TcxTextEditKadir(sender).EditingValue = Null) or (TcxTextEditKadir(sender).EditingValue = ''))
  then begin
    ShowMessageSkin(TcxTextEditKadir(sender).Name,'Zorunlu Alan','','info');
    TcxTextEditKadir(sender).SetFocus;
    exit;
  end;
   *)

// form hastakartý ve textkontrol tc ise bu tc kontrol ediliyor sistemde kayýtlý ise uyarý
  if (TcxCustomEdit(sender).Name = 'TCKIMLIKNO') and
     (TGirisForm(Self).Name = 'frmHastaKart') and
     (sqlRun.State = dsInsert)
  then begin
    if TCKontrol(TcxTextEditKadir(sender).EditingValue) = True
    Then begin
       if TCtoDosyaNo(TcxTextEditKadir(sender).EditingValue) <> ''
       Then begin
          ShowMessageSkin('Tc Sistemde Mevcut','','','info');
          TcxTextEditKadir(sender).SetFocus;
          TcxTextEditKadir(sender).EditValue := '';
       end;
    end
    else
    begin
          ShowMessageSkin('Tc Hatalý','','','info');
          TcxTextEditKadir(sender).SetFocus;
    end;
  end;

end;

procedure TGirisForm.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
// kontrolde enter tuþlanýrsa ir sonraki kontrole geçiliyor
// memo kontrol ise bir alt satýr iniliyor
 (*
  if (key = 13) and
     (TcxTextEditKadir(sender).Name = 'TCKIMLIKNO') and
     (TGirisForm(Self).Name = 'frmHastaKart')
  then begin
    indexKaydiBul(TcxTextEditKadir(sender).EditingValue,'TCKIMLIKNO');
  end;
   *)


  if (Key = 13) and (TComponent(sender).ClassParent.ClassName <> 'TcxCustomMemo')
  then begin
         TWinControlAccess(GetParentForm(Self)).SelectNext(GetParentForm(Self).ActiveControl,
            not(ssShift in Shift), True);
  end
  else begin
  //  if sqlRun.State <> dsNewValue then sqlRun.Edit;
  end;

end;


procedure TGirisForm.cxTextEditBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   key_ : word;
   shift_ :TShiftState;
   tus : TShortCut;
begin
// butonedit kontolde enter tuþlanmýþ ve bu kntrolun indexfield true ise konumlanma yapýlýyor
// kayýt bulunmuþsa dataset editlniyor kayýt kontrollere yerleþtiriliyor
// bir sonraki kontoler geçiliyor
// eger kontrollde tanýnlý kýsa yol tuþu varsa liste çma iþlemi için kýsa yol liste açýlýyor
  if Key = 13
  then begin
        if (TcxButtonEditKadir(sender).indexField = True)
        then begin
          indexKaydiBul(TcxCustomEdit(sender).EditingValue,TcxButtonEditKadir(sender).name);
        end;
         TWinControlAccess(GetParentForm(Self)).SelectNext(GetParentForm(Self).ActiveControl,
           not(ssShift in Shift), True);

  end
  else begin
   // if sqlRun.State <> dsNewValue then sqlRun.Edit;
  end;


  if TcxButtonEditKadir(sender).ListeAcTus  = 0
  Then
   tus := menus.TextToShortCut('Ctrl+F1')
  else
    tus := TcxButtonEditKadir(sender).ListeAcTus;

  menus.ShortCutToKey(Tus,key_,shift_);

  if (key = key_) and (shift = shift_) then
    cxButtonEditPropertiesButtonClick(sender,0);
end;



procedure TGirisForm.addButton(sender : Tform;cxButton : TcxButtonKadir; Name ,
                              captionItem,captionButton: string; parent : TdxLayoutGroup;
                              grup : string;uzunluk : integer;
                              Event : TNotifyEvent = nil);
var
//  cxButton : TcxButton;
  dxLa : TdxLayoutItem;
  dxLaG : TdxLayoutGroup;
begin
  if cxButton = nil
  then cxButton := TcxButtonKadir.Create(self);
 // cxButton.Visible := True;
//  cxButton.Name := 'cxbtn'+Name;
 // cxButton.Tag := 0;

  cxButton.ButtonName := Name;
  cxButton.Caption := captionButton;
  dxLa := TdxLayoutGroup(parent).CreateItemForControl(cxButton);
  dxLa.Name := 'dxLaB'+Name;
  dxLa.AlignHorz := ahLeft;
  dxLa.Width := uzunluk;
  dxLa.Caption := captionItem;
  dxLa.Visible := not cxButton.NewButtonVisible;
  if grup = '' then
    dxLa.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaG := TdxLayoutGroup.Create(self);
         dxLaG.Name := grup;
         dxLaG.LayoutDirection := ldHorizontal;
         dxLaG.Parent := parent;
         dxLag.ShowBorder := false;
        end ;

      dxLa.Parent := TdxLayoutGroup(Self.findcomponent(grup));
 //     SpaceItem.Parent := TdxLayoutGroup(findcomponent(grup));
    end;
  cxButton.OnClick := Event;
end;



procedure TGirisForm.setDataImage(sender : Tform; Name ,captionItem : string; parent : TdxLayoutGroup; grup : string;uzunluk,yukseklik : integer);
var
  cxImage : TcxImage;
  dxLa : TdxLayoutItem;
  dxLaG : TdxLayoutGroup;
begin
  cxImage := TcxImage (Sender.FindComponent (Name));
  if not Assigned (cxImage) then
  begin
    cxImage := TcxImage.Create(self);
    cxImage.Name := Name;
    cxImage.Properties.GraphicClassName := 'TJPEGImage';
    cxImage.Properties.Stretch := True;
  end;
  dxLa := TdxLayoutGroup(parent).CreateItemForControl(cxImage);
  dxLa.Name := 'dxLaB'+Name;
  dxLa.AlignHorz := ahLeft;
  dxLa.Width := uzunluk;
  dxLa.Height := yukseklik;
  dxLa.Caption := captionItem;

  if grup = '' then
    dxLa.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaG := TdxLayoutGroup.Create(self);
         dxLaG.Name := grup;
         dxLaG.LayoutDirection := ldHorizontal;
         dxLaG.Parent := parent;
         dxLag.ShowBorder := false;
        end ;

      dxLa.Parent := TdxLayoutGroup(Self.findcomponent(grup));
 //     SpaceItem.Parent := TdxLayoutGroup(findcomponent(grup));
    end;

//  cxButton.OnClick := cxButtonCClick;
end;

procedure TGirisForm.setDataString(sender : Tform ; fieldName ,caption: string;
                  parent : TdxLayoutGroup; grup : string;uzunluk : integer ; Zorunlu : Boolean = False; ObjectName : String = '');
var
  cxEdit : TcxTextEditKadir;
  dxLa : TdxLayoutItem;
  dxLaG : TdxLayoutGroup;
begin
  cxEdit := TcxTextEditKadir.Create(self);

  cxEdit.Name := ifthen (Trim(ObjectName) = '', fieldName, Trim (ObjectName));
  cxEdit.Text := '';
  cxEdit.Properties.ValidateOnEnter := True;
  cxEdit.BosOlamaz := Zorunlu;//KontrolZorunlumu(TForm(sender).Tag,fieldName); //Zorunlu;
  dxLa := TdxLayoutGroup(parent).CreateItemForControl(cxEdit);
//  dxLa.ControlOptions.ShowBorder := true;
  dxLa.Name := 'dxLa'+fieldName;
  dxLa.AlignHorz := ahLeft;
  cxEdit.Width := uzunluk;
 // dxLa.Width := uzunluk;
  dxLa.Caption := caption;
//  SpaceItem := TdxLayoutEmptySpaceItem.Create(self);
 // SpaceItem.Name := 'dxSp'+fieldName;
 // SpaceItem.Width := TdxLayoutGroup(parent).Width - (50 + uzunluk);
  if grup = '' then
    dxLa.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaG := TdxLayoutGroup.Create(self);
         dxLaG.Name := grup;
         dxLaG.LayoutDirection := ldHorizontal;
         dxLaG.Parent := parent;
         dxLag.ShowBorder := false;
        end ;

      dxLa.Parent := TdxLayoutGroup(Self.findcomponent(grup));
 //     SpaceItem.Parent := TdxLayoutGroup(findcomponent(grup));
    end;

  cxEdit.Style.Color := clWhite;
  cxEdit.OnEnter := cxEditEnter;
  cxEdit.OnExit := cxEditExit;
  cxEdit.OnKeyDown := cxTextEditKeyDown;
  cxEdit.Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;

procedure TGirisForm.setDataStringMemo(sender : Tform ; fieldName ,caption: string; parent : TdxLayoutGroup; grup : string;uzunluk,yukseklik : integer);
var
  cxEdit : TcxMemo;
  dxLa : TdxLayoutItem;
  dxLaG : TdxLayoutGroup;
begin
  cxEdit := TcxMemo.Create(self);
  cxEdit.Name := fieldName;
  cxEdit.Text := '';
  cxEdit.Properties.ScrollBars := ssVertical;
  dxLa := TdxLayoutGroup(parent).CreateItemForControl(cxEdit);
  dxLa.Name := 'dxLa'+fieldName;
  dxLa.AlignHorz := ahLeft;
  cxEdit.Width := uzunluk;
 // dxLa.Width := uzunluk;
  dxLa.Height := yukseklik;
  dxLa.Caption := caption;
//  SpaceItem := TdxLayoutEmptySpaceItem.Create(self);
 // SpaceItem.Name := 'dxSp'+fieldName;
 // SpaceItem.Width := TdxLayoutGroup(parent).Width - (50 + uzunluk);
  if grup = '' then
    dxLa.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaG := TdxLayoutGroup.Create(self);
         dxLaG.Name := grup;
         dxLaG.LayoutDirection := ldHorizontal;
         dxLaG.Parent := parent;
         dxLag.ShowBorder := false;
        end ;

      dxLa.Parent := TdxLayoutGroup(Self.findcomponent(grup));
 //     SpaceItem.Parent := TdxLayoutGroup(findcomponent(grup));
    end;

  cxEdit.Style.Color := clWhite;
  cxEdit.OnEnter := cxEditEnter;
  cxEdit.OnExit := cxEditExit;
  cxEdit.OnKeyDown := cxTextEditKeyDown;
end;



procedure TGirisForm.setDataStringB(sender : Tform; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk :integer; Prms : TListeAc;indexField : Boolean;
     obje:TcxButtonEditKadir;tanimi : string='tanimi';whereColumObjeName : string = '';
     Zorunlu : Boolean = false;ReadOnly : Boolean = False;_Tag_ : integer = 0);
var
  cxEditB : TcxButtonEditKadir;
  dxLaB : TdxLayoutItem;
  dxLaGB : TdxLayoutGroup;
begin
 (*
  if indexField then
    if TableName = '' then
    begin
      ShowMessage('indexField parametresi True set edildiðinde', 'TableName parametresi Boþ Olamaz','','info');
      exit;
    end; *)

  if obje = nil
  then
    cxEditB := TcxButtonEditKadir.Create(self)
  else
    cxEditB := obje;


  cxEditB.Name := fieldName;
  cxEditB.Text := '';
  cxEditB.indexField := indexField;
  cxEditB.tanim := tanimi;
  cxEditB.Tag := _Tag_;
  cxEditB.BosOlamaz := Zorunlu;//KontrolZorunlumu(TForm(sender).Tag,fieldName);//Zorunlu;
  cxEditB.Properties.ReadOnly := ReadOnly;
  cxEditB.whereColum := whereColumObjeName;
  cxEditB.Properties.ClickKey := menus.TextToShortCut('Shift+F1');
  dxLaB := TdxLayoutGroup(parent).CreateItemForControl(cxEditB);
  dxLaB.Name := 'dxLa'+fieldName;
  dxLaB.AlignHorz := ahLeft;
  cxEditB.Width := uzunluk;
 // dxLaB.Width := uzunluk;
  dxLaB.Caption := caption;
  cxEditB.ListeAc := Prms;

  if grup = '' then
    dxLaB.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaGB := TdxLayoutGroup.Create(self);
         dxLaGB.Name := grup;
         dxLaGB.LayoutDirection := ldHorizontal;
         dxLaGB.Parent := parent;
         dxLagB.ShowBorder := false;
        end;

      dxLaB.Parent := TdxLayoutGroup(Self.findcomponent(grup));
    end;

  cxEditB.Style.Color := clWhite;

  if obje = nil then
  begin
   cxEditB.OnEnter := cxEditEnter;
   cxEditB.OnExit := cxEditExit;
   cxEditB.OnKeyDown := cxTextEditBKeyDown;
   cxEditB.Properties.OnButtonClick := cxButtonEditPropertiesButtonClick;
  end;
end;



procedure TGirisForm.setDataStringBLabel(sender : Tform ; Name : string;
     parent : TdxLayoutGroup;grup : string;uzunluk : integer;caption : string = '';parentCaption : string = '';fieldName : string = '';
     pBoldText: Boolean = True;
     pTextColor: TColor = clRed;
     pHorzAlignment: TcxEditHorzAlignment = taLeftJustify);
var
  cxLabel : TcxLabel;
  dxLaB : TdxLayoutItem;
  dxLaGB : TdxLayoutGroup;
begin
  cxLabel := TcxLabel.Create(self);
  cxLabel.Name := 'Label'+ Name;
  if FieldName <> '' then begin
   cxLabel.Tag := -200;
  end;
  cxLabel.Caption := caption;
  cxLabel.Transparent := true;
  cxLabel.AutoSize := false;
  if pBoldText then
    cxLabel.Style.Font.Style := cxLabel.Style.Font.Style + [fsBold]
   else
    cxLabel.Style.Font.Style := cxLabel.Style.Font.Style - [fsBold];
  cxLabel.Style.TextColor := pTextColor;
  cxLabel.Properties.Alignment.Horz := pHorzAlignment;
  cxLabel.Style.BorderStyle := ebsFlat;
  dxLaB := TdxLayoutGroup(parent).CreateItemForControl(cxLabel);
  dxLaB.Name := 'dxLaC'+Name;
  dxLaB.AlignHorz := ahLeft;
  dxLaB.Width := uzunluk;
  dxLaB.Caption := parentCaption;
  if cxLabel.Caption = ''
  then
   dxLaB.ControlOptions.ShowBorder := false
  else
   dxLaB.ControlOptions.ShowBorder := true;

  if grup = '' then
    dxLaB.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaGB := TdxLayoutGroup.Create(self);
         dxLaGB.Name := grup;
         dxLaGB.LayoutDirection := ldHorizontal;
         dxLaGB.Parent := parent;
         dxLagB.ShowBorder := false;
        end;

      dxLaB.Parent := TdxLayoutGroup(Self.findcomponent(grup));
    end;

end;


procedure TGirisForm.setDataStringC(sender : Tform ; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer;List : Tstrings);
var
  cxEditC : TcxComboBox;
  dxLaC : TdxLayoutItem;
  dxLaGC : TdxLayoutGroup;
begin
  cxEditC := TcxComboBox.Create(self);
  cxEditC.Name := fieldName;
  cxEditC.Text := '';
  cxEditC.Properties.Items := List;
  cxEditC.Properties.DropDownListStyle := lsFixedList;
  dxLaC := TdxLayoutGroup(parent).CreateItemForControl(cxEditC);
  dxLaC.Name := 'dxLa'+fieldName;
  dxLaC.AlignHorz := ahLeft;
  cxEDitC.Width := uzunluk;
//  dxLaC.Width := uzunluk;
  dxLaC.Caption := caption;

  if grup = '' then
    dxLaC.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaGC := TdxLayoutGroup.Create(self);
         dxLaGC.Name := grup;
         dxLaGC.LayoutDirection := ldHorizontal;
         dxLaGC.Parent := parent;
         dxLagC.ShowBorder := false;
        end;

      dxLaC.Parent := TdxLayoutGroup(Self.findcomponent(grup));
    end;
  cxEditC.Style.Color := clWhite;
  cxEditC.OnEnter := cxEditEnter;
  cxEditC.OnExit := cxEditExit;
  cxEditC.OnKeyDown := cxTextEditBKeyDown;
end;

procedure TGirisForm.setDataStringC(sender : Tform ; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer;List : string);
var
  cxEditC : TcxComboBox;
  dxLaC : TdxLayoutItem;
  dxLaGC : TdxLayoutGroup;
  Tlist : TstringList;
begin
  TList := TStringList.Create;
  try
    Split(',',List,TList);
    cxEditC := TcxComboBox.Create(self);
    cxEditC.Name := fieldName;
    cxEditC.Text := '';
    cxEditC.Properties.Items := TList;
  finally
    TList.Free;
  end;
  cxEditC.Properties.DropDownListStyle := lsFixedList;
  dxLaC := TdxLayoutGroup(parent).CreateItemForControl(cxEditC);
  dxLaC.Name := 'dxLa'+fieldName;
  dxLaC.AlignHorz := ahLeft;
  cxEDitC.Width := uzunluk;
 // dxLaC.Width := uzunluk;
  dxLaC.Caption := caption;

  if grup = '' then
    dxLaC.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaGC := TdxLayoutGroup.Create(self);
         dxLaGC.Name := grup;
         dxLaGC.LayoutDirection := ldHorizontal;
         dxLaGC.Parent := parent;
         dxLagC.ShowBorder := false;
        end;
      dxLaC.Parent := TdxLayoutGroup(Self.findcomponent(grup));
    end;
  cxEditC.Style.Color := clWhite;
  cxEditC.OnEnter := cxEditEnter;
  cxEditC.OnExit := cxEditExit;
  cxEditC.OnKeyDown := cxTextEditBKeyDown;
end;


procedure TGirisForm.setDataStringChk(sender : Tform ; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer);
var
  cxCheck : TcxCheckBox;
  dxLaC : TdxLayoutItem;
  dxLaGC : TdxLayoutGroup;
begin
  cxCheck := TcxCheckBox.Create(self);
  cxCheck.Name := fieldName;
  cxCheck.Transparent := True;
  cxCheck.Caption := caption;
  dxLaC := TdxLayoutGroup(parent).CreateItemForControl(cxCheck);
  dxLaC.Name := 'dxLa'+fieldName;
  dxLaC.AlignHorz := ahLeft;
  dxLaC.Width := uzunluk;
  dxLaC.Caption := '';

  if grup = '' then
    dxLaC.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaGC := TdxLayoutGroup.Create(self);
         dxLaGC.Name := grup;
         dxLaGC.LayoutDirection := ldHorizontal;
         dxLaGC.Parent := parent;
         dxLagC.ShowBorder := false;
        end;
      dxLaC.Parent := TdxLayoutGroup(Self.findcomponent(grup));
    end;
  cxCheck.Style.Color := clWhite;
  cxCheck.OnEnter := cxEditEnter;
  cxCheck.OnExit := cxEditExit;
  cxCheck.OnKeyDown := cxTextEditBKeyDown;
end;

procedure TGirisForm.setDataStringCurr(sender : Tform ; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer ; displayFormat : string = ',0.00';_tag_ : integer = -100);
var
  cxCurr : TcxCurrencyEdit;
  dxLaC : TdxLayoutItem;
  dxLaGC : TdxLayoutGroup;
begin
  cxCurr := TcxCurrencyEdit.Create(self);
  cxCurr.Name := fieldName;
  cxCurr.Properties.displayFormat := displayFormat;
  cxCurr.Properties.Alignment.Horz := taRightJustify;
  dxLaC := TdxLayoutGroup(parent).CreateItemForControl(cxCurr);
  dxLaC.Name := 'dxLa'+fieldName;
  dxLaC.AlignHorz := ahLeft;
  cxCurr.Width := uzunluk;
  cxCurr.Tag := _Tag_;
  cxCurr.EditValue := 0;
 // dxLaC.Width := uzunluk;
  dxLaC.Caption := caption;

  if grup = '' then
    dxLaC.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaGC := TdxLayoutGroup.Create(self);
         dxLaGC.Name := grup;
         dxLaGC.LayoutDirection := ldHorizontal;
         dxLaGC.Parent := parent;
         dxLagC.ShowBorder := false;
        end;

      dxLaC.Parent := TdxLayoutGroup(Self.findcomponent(grup));
    end;
  cxCurr.Style.Color := clWhite;
  cxCurr.OnEnter := cxEditEnter;
  cxCurr.OnExit := cxEditExit;
  cxCurr.OnKeyDown := cxTextEditBKeyDown;
  cxCurr.Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;


procedure TGirisForm.setDataStringKontrol(sender : Tform;obje : TControl; fieldName,caption : string;
     parent : TdxLayoutGroup;grup : string ;uzunluk : integer ; yukseklik : integer = 0 ; Aling : TAlign = alNone);
var
  dxLaC : TdxLayoutItem;
  dxLaGC : TdxLayoutGroup;
begin
  if obje = nil then exit;
  try obje.Name := fieldName; except on e: exception do ShowMessageSkin (e.Message, '', '', 'info'); end;
  obje.Align := Aling;
  dxLaC := TdxLayoutGroup(parent).CreateItemForControl(obje);
  dxLaC.Name := 'dxLa'+fieldName;
  dxLaC.AlignHorz := ahLeft;
  obje.Width := uzunluk;
  if yukseklik > 0 then obje.Height := Yukseklik;

 // dxLaC.Width := uzunluk;
  dxLaC.Caption := caption;

  if grup = '' then
    dxLaC.Parent := parent
    else begin
        if Self.FindComponent(grup) = nil
        then begin
         dxLaGC := TdxLayoutGroup.Create(self);
         dxLaGC.Name := grup;
         dxLaGC.LayoutDirection := ldHorizontal;
         dxLaGC.Parent := parent;
         dxLagC.ShowBorder := false;
        end;
      dxLaC.Parent := TdxLayoutGroup(Self.findcomponent(grup));
    end;

  if (obje.ClassName = 'TcxGrid') or
     (obje.ClassName = 'TcxGridKadir') or
     (obje.ClassName = 'TcxPageControl')
  then
  begin
     dxLac.CaptionOptions.Layout := clTop;
  end
  else
  begin
    if (obje.ClassName = 'TcxDateEdit') or
       (obje.ClassName = 'TcxDateEditKadir')
    then begin
      TcxdateEdit(obje).Properties.DateOnError := deNull;
      //TcxdateEdit(obje).Properties.ImmediateDropDownWhenKeyPressed := True;
      TcxdateEdit(obje).Properties.ImmediatePost := True;
      TcxdateEdit(obje).Properties.MaxDate := strtodate('01.01.2500');
      TcxdateEdit(obje).Properties.MinDate := strtodate('01.01.1900');
      TcxdateEdit(obje).Properties.OnValidate := PropertiesValidate;
    end;
    TcxCustomEdit(obje).Style.Color := clWhite;
    TcxCustomEdit(obje).OnEnter := cxEditEnter;
    TcxCustomEdit(obje).OnExit := cxEditExit;
    TcxCustomEdit(obje).OnKeyDown := cxTextEditBKeyDown;
    TcxImageComboBox(obje).Properties.OnEditValueChanged := PropertiesEditValueChanged;

  end;

end;




procedure TGirisForm.TopPanelPropertiesChange(Sender: TObject);
begin
  try
   if txtDonemTopPanel.Visible
   then begin
     txtTopPanelTarih1.Date := txtDonemTopPanel.ilkTarih;
     txtTopPanelTarih2.Date := txtDonemTopPanel.sonTarih;
   end;
  except
  end;
  btnListTopPanel.Click;
end;

procedure TGirisForm.addButtonTopPanel(sender : Tform ; Name,caption: string ; uzunluk,Tag : integer; Event : TNotifyEvent = nil);
var
  Buton : TcxButtonKadir;
begin
  Buton := TcxButtonKadir.Create(sender);
  Buton.Parent := TopPanel;
  Buton.Align := alLeft;
  Buton.Caption := caption;
  Buton.Width := uzunluk;
  Buton.Tag := Tag;
  Buton.OnClick := Event;
end;


function TGirisForm.PostSQL(sp_Sql : string) : Boolean;
var
 i : integer;
 sql,s,value: string;
 ado : TADOQuery;
begin
  Result := False;
  for i := 0 to self.ComponentCount - 1 do
  begin
    if ((self.Components[i].ClassName = 'TcxTextEdit') or
       (self.Components[i].ClassName = 'TcxTextEditKadir') or
       (self.Components[i].ClassName = 'TcxButtonEdit') or
       (self.Components[i].ClassName = 'TcxButtonEditKadir') or
       (self.Components[i].ClassName = 'TcxComboBox') or
       (self.Components[i].ClassName = 'TcxMemo') or
       (self.Components[i].ClassName = 'TcxImageComboBox') or
       (self.Components[i].ClassName = 'TcxImageComboKadir') or
       (self.Components[i].ClassName = 'TcxCheckBox') or
       (self.Components[i].ClassName = 'TcxCurrencyEdit') or
       (self.Components[i].ClassName = 'TcxDateEdit') or
       (self.Components[i].ClassName = 'TcxDateEditKadir') or
       (self.Components[i].ClassName = 'TcxCheckGroup'))
       and (TcxTextEdit(self.Components[i]).Properties.ReadOnly = False)
    then begin
     if TcxCustomEdit(self.Components[i]).Tag = -100 then Continue;
     if (self.Components[i].ClassName = 'TcxCurrencyEdit')
     then
      value :=  TcxCurrencyEdit(self.Components[i]).Text
     else
      value :=  #39+TcxCustomEdit(self.Components[i]).EditingValue+#39;
      s :=  s +  ','+self.Components[i].Name + '=' + value;
    end;
  end;

  sql :=  Format(sp_Sql,[copy(s,2,5000),indexFieldValue]);

  ado := TADOQuery.Create(nil);
  try
    try
      ado.Connection := datalar.ADOConnection2;
      datalar.QueryExec(ado,sql);
      Result := True;
      ado.SQL.Text := 'select SCOPE_IDENTITY() as id';
      ado.Open;
      F_IDENTITY := ado.Fields [0].AsInteger;
    except on e : Exception do
      ShowMessageSkin(e.Message,'','','info');
    end;
  finally
    ado.Free;
  end;

end;


function TGirisForm.Post : Boolean;
var
 i : integer;
 _Obje_ : TcxCustomEdit;
 jp : TJPEGImage;
begin
// formdaki kontrollerin deðerleri kontrollerin tipi ve ismine göre tabloya kayýt ediliyor
  Result := False;
  if FormInputZorunluKontrol(self) then exit;

  try
    if sqlRun.State <> dsNewValue then sqlRun.Edit;
    for i := 0 to self.ComponentCount - 1 do
    begin
      if (self.Components[i].ClassName = 'TcxTextEdit') or
         (self.Components[i].ClassName = 'TcxTextEditKadir') or
         (self.Components[i].ClassName = 'TcxButtonEdit') or
         (self.Components[i].ClassName = 'TcxButtonEditKadir') or
         (self.Components[i].ClassName = 'TcxComboBox') or
         (self.Components[i].ClassName = 'TcxMemo') or
         (self.Components[i].ClassName = 'TcxImageComboBox') or
         (self.Components[i].ClassName = 'TcxImageComboKadir') or
         (self.Components[i].ClassName = 'TcxImage') or
         (self.Components[i].ClassName = 'TcxCheckBox') or
         (self.Components[i].ClassName = 'TcxCurrencyEdit') or
         (self.Components[i].ClassName = 'TcxDateEdit') or
         (self.Components[i].ClassName = 'TcxDateEditKadir') or
         (self.Components[i].ClassName = 'TcxCheckGroup')
      then begin
        //_obje_ := nil;
        if TcxCustomEdit(self.Components[i]).Name = 'txtSifreTekrar' then Continue;
        if TcxCustomEdit(self.Components[i]).Tag = -100 then Continue;
        if TcxImage(self.Components[i]).Tag = -1 then Continue;

        _obje_ := TcxCustomEdit(self.Components[i]);


        if ((self.Components[i].ClassName = 'TcxImageComboKadir') or
           (self.Components[i].ClassName = 'TcxImageComboBox'))
           and (TcxImageComboBox(_obje_).Text = '')
        Then Begin
          TcxImageComboBox(_obje_).EditValue := Null;
          sqlRun.FieldByName(_Obje_.Name).AsVariant := _Obje_.EditingValue;
        //  Continue;
        End
        Else
        if (self.Components[i].ClassName = 'TcxImage')
        Then Begin
          if TcxImage(self.Components[i]).Picture.Graphic <> nil
          Then begin
            jp := TJpegimage.Create;
            try
              jp.Assign(TcxImage(self.Components[i]).Picture);
              sqlRun.FieldByName(_Obje_.Name).Assign(jp);
            finally
              jp.Free;
            end;
          end;
        End
        else
        if (self.Components[i].ClassName = 'TcxButtonEditKadir') and
           (TcxButtonEditKadir(self.Components[i]).indexField = True) and
           (sqlRun.State in [dsNewValue,dsInsert])
        Then begin
          sqlRun.FieldByName(_Obje_.Name).AsString := _Obje_.EditingValue;
          if (sqlRun.FieldByName(_Obje_.Name) is TStringField)
            and IsNull (sqlRun.FieldByName(_Obje_.Name).AsString) then sqlRun.FieldByName(_Obje_.Name).Clear;

        end
        else
        if (self.Components[i].ClassName = 'TcxButtonEditKadir') and
           (TcxButtonEditKadir(self.Components[i]).indexField = True) and
           (sqlRun.State in [dsEdit])
        Then begin

        end
        else
        if (self.Components[i].ClassName = 'TcxDateEditKadir')  or
           (self.Components[i].ClassName = 'TcxDateEdit')
        Then Begin
           if (TcxDateEditKadir(_Obje_).BosOlamaz = True) and (TcxDateEdit(_Obje_).Text = '')
           then begin
           //  self.ActiveControl := TcxDateEditKadir(_obje_);
           //  ShowMessageSkin(TcxTextEditKadir(_obje_).Name,'Zorunlu Alan','','info');
           //  exit;
           end
           else
           if TcxDateEdit(_Obje_).EditValue <> Null
           then
             if TcxDateEditKadir(_Obje_).ValueTip = tvDate
             then
               sqlRun.FieldByName(_Obje_.Name).AsVariant :=  TcxDateEditKadir(_Obje_).GetValue('YYYY-MM-DD hh:mm') //tarihal(TcxDateEdit(_Obje_).Date)
               else
                sqlRun.FieldByName(_Obje_.Name).AsVariant :=  TcxDateEditKadir(_Obje_).GetValue('YYYYMMDD') //tarihal(TcxDateEdit(_Obje_).Date)

           else
            sqlRun.FieldByName(_Obje_.Name).AsVariant := null;
        End
        else
         if (TcxTextEditKadir(_obje_).BosOlamaz = True) and (TcxTextEditKadir(_obje_).Text = '')
          Then begin
            // self.ActiveControl := TcxTextEditKadir(_obje_);
            // ShowMessageSkin(TcxTextEditKadir(_obje_).Name,'Zorunlu Alan','','info');
            // exit;
          end
         else
         begin
           sqlRun.FieldByName(_Obje_.Name).AsVariant := _Obje_.EditingValue;
           if (sqlRun.FieldByName(_Obje_.Name) is TStringField)
             and IsNull (sqlRun.FieldByName(_Obje_.Name).AsString) then sqlRun.FieldByName(_Obje_.Name).Clear;
         end;

      end;
    end;
    sqlRun.Post;
    F_IDENTITY := -1;
    for i := 0 to sqlRun.FieldCount - 1 do
      if sqlRun.Fields [i] is TAutoIncField then
        F_IDENTITY := sqlRun.Fields [i].AsInteger;
    Result := True;
  except on e : Exception do
    begin
     Result := false;
     ShowMessageSkin(e.Message,'','','info');
    end;
  end;
end;




procedure TGirisForm.Olustur(sender : TObject;Table,Tabbaslik : string;imageindex : integer;
                           sqlInsert : string = '';sqlUpdate : string = '';sqlDelete : string = '';indexField : string = '');
begin
//formdan gönderilen tablo ismi atanýyor
// pagekontrole baþlýðý ve image index atanýyor

  TableName := Table;
  _sqlInsert_ := sqlInsert;
  _sqlUpdate_ := sqlUpdate;
  _sqlDelete_ := sqlDelete;
 // cxTab.Tabs[0].ImageIndex := FormTabImageIndex(self.Tag);
end;

procedure TGirisForm.tableColumnDescCreate;
var
 sql,col,desc : string;
 prm : TStringList;
 grup : TdxLayoutGroup;
 ado : TADOQuery;
begin
// tablonun kolonlarýnda description özelliði tanýmlanmýþ kolonlarý bulup burdaki
// tanýmlamaya göre forma kontrol koyar.
// Caption,fieldname,kolon,grup,uzunluk

  sql := Format(selectTableDescColumn,[#39+TableName+#39]);
  ado := TADOQuery.Create(nil);
  try
    prm := TStringList.Create;
    try
      ado.Connection := DATALAR.ADOConnection2;
      datalar.QuerySelect(ado,sql);
      while not ado.eof do
      begin
        col := ado.FieldByName('Column').AsString;
        desc := ado.FieldByName('Description').AsString;
        Split(',',desc,prm);
        grup := TdxLayoutGroup(FindComponent(prm[1]));
        setDataString(self,col,prm[0], grup, prm[2],strtoint(prm[3]));
        ado.Next;
      end;
    finally
      prm.Free;
    end;
  finally
    ado.Free;
  end;
end;


procedure TGirisForm.ButonClick(sender : TObject ; key : char);
begin

 // ShowMessage(key);
end;


procedure TGirisForm.cxButtonCClick(Sender: TObject);
begin
  if KontrolUsers(inttostr(self.Tag),inttostr(TControl(sender).Tag),datalar.username) = False
  Then begin
    datalar.KontrolUserSet := True;
    ShowMessageSkin('Bu kontrolü kullanýmýnýz kýsýtlandýrýmýþ','Sistem yöneticinizle görüþün','','info');
    exit;
  end;

   if TObject(sender).ClassType = TToolButtonKadir
   then
   if TToolButtonKadir(sender).Modul <> ''
   then
   if UserRight(TToolButtonKadir(sender).Modul, TToolButtonKadir(sender).Islem) = False
   then begin
       datalar.KontrolUserSet := True;
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

   if TObject(sender).ClassType = TMenuItem
   then
   if TMenuItem(sender).Hint <> ''
   then
   if UserRight(copy(TMenuItem(sender).Hint,1,pos(',',TMenuItem(sender).Hint)-1),
                copy(TMenuItem(sender).Hint,pos(',',TMenuItem(sender).Hint)+1,100)) = False
   then begin
       datalar.KontrolUserSet := True;
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

   case TcxButton(sender).Tag of
    9999 : begin
            close;
          end;
    9997 : begin
             ExceleGonder;
           end;

   end;
end;

procedure TGirisForm.cxListeleClick(Sender : TObject);
begin
 datalar.ZorunluAlanVar := FormInputZorunluKontrol(self);
end;

procedure TGirisForm.cxKaydetClick(Sender: TObject);
var
  dosyaNo : string;
  sonuc : Boolean;
begin
  if KontrolUsers(inttostr(self.Tag),inttostr(TControl(sender).Tag),datalar.username) = False
  Then begin
    datalar.KontrolUserSet := True;
    ShowMessageSkin('Bu kontrolü kullanýmýnýz kýsýtlandýrýmýþ','Sistem yöneticinizle görüþün','','info');
    exit;
  end;
  DurumGoster();
  try
    case TControl(sender).Tag  of
      0 : begin
           try
             if FormInputZorunluKontrol(self) Then Exit;
             if sqlTip = sql_Select
             then begin
               sonuc := post;
               newButonVisible(false);
               cxPanelButtonEnabled(true,false,true);
             end
             else
             begin
               sonuc := PostSQL(_SqlUpdate_);
               newButonVisible(false);
               cxPanelButtonEnabled(false,True,false);
             end;

             if sonuc = True Then begin
              newButonVisible(false);
              ShowMessageskin('Kayýt Yapýldý','','','info');
             end;
           except on e: Exception do
            begin
              ShowMessage(e.Message,'','','info');
            end;
           end;

          end;
      1 : begin


           if MrYes = ShowMessageSkin('Silmek Ýstediðinizden Emin misiniz ?','','','msg')
           then begin
               try
                sqlRun.Delete;
               except on e : Exception do
                begin
                  ShowMessage(e.Message + ' Silmek isteðiniz kayýt iliþkisel veri olabilir mi?','','','info');
                end;
               end;
               try
                indexKaydiBul('');
                sqlRunLoad;
               except on e : exception do
                begin
                  ShowMessageSkin(e.Message,'','Boþ Kayýt yüklenirken hata oluþtu','info');
                end;
               end;
               cxPanelButtonEnabled(true,false,false);
           end;


         end;

      2 : begin
           Enabled;
           _SQLRUN_ := _SqlInsert_;
           indexKaydiBul(dosyaNo,'');
         //  KontrolEditValueClear;
           sqlRunLoad;
           (*
           if Tform(self).tag = 90
           Then begin
              dosyaNo := dosyaNoYeniNumaraAl;
              if dosyaNo = '0'
              then begin
                ShowMessageskin('Dosya No Alýnamadý','','','info');
                exit;
              end
              else
               TcxButtonEditKadir(FindComponent('dosyaNo')).Text :=  dosyaNo;
           end;*)

           sqlRun.Append;
           F_IDENTITY := -1;
           cxPanelButtonEnabled(false,true,false);
           newButonVisible(true);
           sirketKod.Text := datalar.AktifSirket;
          end;
      3 : begin
           sqlRun.Next;
           indexKaydiBul('');
          end;

      9999 : begin
              sqlRun.Close;
              close;
            end;

      9998 : ShowMessage(Tform(self).Name + ' Yardým','','','info'); // formun kullanýmý ile igili yardým

     end;
  finally
    DurumGoster(False);
  end;

end;

procedure TGirisForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := Cafree;
end;

procedure TGirisForm.FormCreate(Sender: TObject);
begin
   _Dataset := TADOQuery.Create(self);
   _DataSource := TDataSource.Create(self);
   _DataSource.DataSet := _Dataset;
end;

procedure TGirisForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if key = 13 then
  begin
  //   if GetParentForm(Self) <> nil then
  //    TWinControlAccess(GetParentForm(Self)).SelectNext(GetParentForm(Self).ActiveControl,
  //      not(ssShift in Shift), True);

    //  if HandleAllocated and HasInnerEdit and (GetFocus = Handle) then
    //   InnerEdit.SafelySetFocus;

  end;


  if (key = vk_f12) and (Shift = [ssCtrl,ssShift])
  then begin
    ShowMessageSkin('Form Tag :' + inttostr(TGirisForm(self).tag), 'Form Name : ' + TGirisForm(self).name + ' - ' + ' Unit Name : ' + TGirisForm(self).UnitName,
                       'Class Name : ' + TGirisForm(self).ClassName,'info');
  end;



end;

procedure TGirisForm.FormResize(Sender: TObject);
begin
  pnlDurum.Left := round((Self.Width/2) - (pnlDurum.Width/2));
  pnlDurum.Top := round((Self.ClientHeight/2) - (pnlDurum.Height/2));
end;

procedure TGirisForm.FormShow(Sender: TObject);
begin
 // if not _HastaBilgileriniCaptionGoster_
 // then Caption := 'Mavi Nokta Bilgi Tek.';

  ToolBar1.Width := cxTopPanelAltOrta.Width;
  if Menu.Items.Count > 0 then
  PopupMenuToToolBar(self,ToolBar1,Menu)
  else ToolBar1.Visible := false;

  dxStatusBar1.Panels[1].Text := datalar.username;
  //USER_ID.Text := datalar.username;

  cxPanelButtonEnabled(True,false,false);
  if _HastaBilgileriniCaptionGoster_ then

   cxTab.Tabs[0].Caption := self._HastaAdSoyad_;// datalar.HastaBil.Adi + ' ' + datalar.HastaBil.SoyAdi;



end;

procedure TGirisForm.Image2Click(Sender: TObject);
begin
  if UserRight('Kullanýcý Ýþlemleri', 'KontrolUserSet') = False
  then begin
    ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
    exit;
  end;
  Application.CreateForm(TfrmKontrolUserSet, frmKontrolUserSet);
  try
    frmKontrolUserSet.formName := self;
    frmKontrolUserSet.Kontroller.SmallImages := menu.Images;
    frmKontrolUserSet.Init(nil);
    frmKontrolUserSet.ShowModal;
  finally
    freeAndNil(frmKontrolUserSet);
  end;
  datalar.KontrolZorunlu.Active := False;
  datalar.KontrolZorunlu.Active := True;
end;

end.
