unit GrupDetayTanim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  kadir, kadirMedula3, KadirType,GetFormClass,GirisUnit,
  StdCtrls, Buttons, sBitBtn, ExtCtrls, cxContainer, cxLabel, cxTextEdit, cxGridExportLink,
  cxMaskEdit, cxDropDownEdit, cxCalendar, sCheckBox, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxGroupBox, cxRadioGroup, sGauge,
  cxPCdxBarPopupMenu, cxMemo, cxPC, cxCheckBox, rxAnimate, rxGIFCtrl,
  JvExControls, JvAnimatedImage, JvGIFCtrl, cxButtons, cxCurrencyEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, KadirLabel, cxImage;

type
  TfrmGrupDetayTanim = class(TGirisForm)
    DataSource1: TDataSource;
    ADO_Grup: TADOQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle7: TcxStyle;
    PopupMenu1: TPopupMenu;
    miYeniGozetim: TMenuItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxStyle8: TcxStyle;
    miGozetimSil: TMenuItem;
    miGozetimYazdir: TMenuItem;
    DataSource2: TDataSource;
    ADO_Detay: TADOQuery;
    tmr1: TTimer;
    miGozetimDuzenle: TMenuItem;
    miFotografYukle: TMenuItem;
    miFotografGoruntule: TMenuItem;
    miFotografiSil: TMenuItem;
    Splitter1: TSplitter;
    pnlGridInput: TcxGroupBox;
    cxGrid9: TcxGrid;
    Grid: TcxGridDBTableView;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    btnEkle: TcxButtonKadir;
    btnSil: TcxButtonKadir;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    gridDetay: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGroupBox3: TcxGroupBox;
    btnDetayEkle: TcxButtonKadir;
    btnDetaySil: TcxButtonKadir;
    Tetkikler: TListeAc;
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ADO_DetayBeforePost(DataSet: TDataSet);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure ADO_DetayNewRecord(DataSet: TDataSet);
    procedure GridFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnDetayEkleClick(Sender: TObject);

  private
    { Private declarations }
    FImages : array of TcxImage;
    FImageIds : array of Integer;
    function ImageIndexOfID (const iID : Integer): Integer;
    function ImageAdd (const iID : Integer; const aImage : TCxImage): Integer;
    procedure ImageDelete (const iIndex: Integer);
  protected
    procedure GozlemYazdir (const GozlemID : integer);
    procedure AdjustMasterControls;
    procedure RefreshSahaGozetimler (const bUseBookmark: Boolean);
    function SahaSaglikGozetimFormFotografYukle (const iSahaGozetimID : Integer): Boolean;
    function SahaSaglikGozetimFormFotografSil (const iSahaGozetimID : Integer): Boolean;
    procedure SahaSaglikGozetimFormFotografGoruntule (const iSahaGozetimID : Integer);
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmGrupDetayTanim: TfrmGrupDetayTanim;
  TableGrup,TableGrupDetay : string;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}




function TfrmGrupDetayTanim.ImageAdd(const iID: Integer;
  const aImage: TCxImage): Integer;
begin

end;

procedure TfrmGrupDetayTanim.ImageDelete(const iIndex: Integer);

begin

end;

function TfrmGrupDetayTanim.ImageIndexOfID(const iID: Integer): Integer;

begin

end;

function TfrmGrupDetayTanim.Init(Sender : TObject) : Boolean;
var
 sql : string;
begin
  case Self.Tag of
   TagfrmTetkikIstemSablon : begin
                               TableGrup := 'TetkikIstemGrupSablon';
                               TableGrupDetay := 'TetkikIstemSablonItem';
                             end;
  end;
  sql := 'select * from ' + TableGrup;
  datalar.QuerySelect(ADO_Grup,sql);
  Result := True;
end;

procedure TfrmGrupDetayTanim.RefreshSahaGozetimler(
  const bUseBookmark: Boolean);

begin

end;

procedure TfrmGrupDetayTanim.SahaSaglikGozetimFormFotografGoruntule(
  const iSahaGozetimID: Integer);

begin

end;

function TfrmGrupDetayTanim.SahaSaglikGozetimFormFotografSil(
  const iSahaGozetimID: Integer): Boolean;

begin

end;

function TfrmGrupDetayTanim.SahaSaglikGozetimFormFotografYukle(
  const iSahaGozetimID: Integer): Boolean;
begin
end;

procedure TfrmGrupDetayTanim.AdjustMasterControls;
begin

end;

procedure TfrmGrupDetayTanim.ADO_DetayBeforePost(DataSet: TDataSet);
begin
  inherited;
  //soru cevaplarý default 1 olacak. boþ býrakýrsa uygun deðilse deðerlendirme ve öneri girmek zorunda olacak.

end;

procedure TfrmGrupDetayTanim.ADO_DetayNewRecord(DataSet: TDataSet);
begin
  inherited;
  ADO_Detay.FieldByName('SablonGrupKod').AsString := ADO_Grup.FieldByName('kod').AsString;
end;

procedure TfrmGrupDetayTanim.btnDetayEkleClick(Sender: TObject);
var
   List : ArrayListeSecimler;
begin
  inherited;

  case self.tag of
        TagfrmTetkikIstemSablon :
        begin
           List := Tetkikler.ListeGetir;
           if length(List) > 0 then
           begin
             ADO_Detay.Append;
             ADO_Detay.FieldByName('kod').AsString := List[0].kolon1;
             ADO_Detay.FieldByName('Tanimi').AsString := List[0].kolon2;
             ADO_Detay.Post;
           end;
        end;

  end;


end;

procedure TfrmGrupDetayTanim.cxButtonCClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  aModalResult : TModalResult;
begin
  inherited;


end;

procedure TfrmGrupDetayTanim.FormCreate(Sender: TObject);
begin

  cxPanel.Visible := false;
  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;
  SayfaCaption('','','','','');
end;

procedure TfrmGrupDetayTanim.GozlemYazdir(const GozlemID: integer);
begin

end;

procedure TfrmGrupDetayTanim.GridFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  sql : string;
begin
  inherited;
  sql := 'select * from  ' + TableGrupDetay + ' where SablonGrupKod = ' + QuotedStr (ADO_Grup.FieldByName('Kod').AsString);
  datalar.QuerySelect(ADO_Detay,sql);

end;

procedure TfrmGrupDetayTanim.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

