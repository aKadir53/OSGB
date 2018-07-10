unit FirmaEkipmanList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  kadir, KadirType,GetFormClass,GirisUnit,
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
  cxGridBandedTableView, cxGridDBBandedTableView, KadirLabel, cxImage,
  cxImageComboBox;

type
  TfrmFirmaEkipmanList = class(TGirisForm)
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
    cxStyle8: TcxStyle;
    miGozetimYazdir: TMenuItem;
    tmr1: TTimer;
    EkipmanListGrid: TcxGridKadir;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    EkipmanListGridSatir: TcxGridDBBandedTableView;
    EkipmanListGridLevel1: TcxGridLevel;
    EkipmanDetay: TcxGridKadir;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    EkipmanDetaySatir: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    EkipmanListGridSatirkod: TcxGridDBBandedColumn;
    EkipmanListGridSatirtanimi: TcxGridDBBandedColumn;
    EkipmanListGridSatircihazTurKod: TcxGridDBBandedColumn;
    EkipmanListGridSatirsirketKod: TcxGridDBBandedColumn;
    EkipmanListGridSatirsubeKod: TcxGridDBBandedColumn;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle9: TcxStyle;
    EkipmanDetaySatirid: TcxGridDBBandedColumn;
    EkipmanDetaySatircihazKod: TcxGridDBBandedColumn;
    EkipmanDetaySatirOzellikKod: TcxGridDBBandedColumn;
    EkipmanDetaySatirOzellik: TcxGridDBBandedColumn;
    EkipmanDetaySatirOzellikDeger: TcxGridDBBandedColumn;
    E1: TMenuItem;
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);

    procedure SirketlerPropertiesChange(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure NewRecord(DataSet: TDataSet);
    procedure AfterScroll(DataSet: TDataSet);

  private
    { Private declarations }

  protected
    procedure GozlemYazdir (const GozlemID : integer);
    procedure AdjustMasterControls;
    procedure RefreshSahaGozetimler (const bUseBookmark: Boolean);
    function CihazKontrolFormFotografYukle (const iSahaGozetimID : Integer): Boolean;
    function CihazKontrolFormFotografSil (const iSahaGozetimID : Integer): Boolean;
    procedure CihazKontrolFormFotografGoruntule (const iSahaGozetimID : Integer);
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmFirmaEkipmanList: TfrmFirmaEkipmanList;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}



function TfrmFirmaEkipmanList.Init(Sender : TObject) : Boolean;
begin
     EkipmanListGrid.Dataset.Connection := datalar.ADOConnection2;
     EkipmanListGrid.Dataset.Active := false;
     EkipmanListGrid.Dataset.SQL.Text :=  'select * from Cihaz where sirketKod = ' + QuotedStr(_firmaKod_);
     EkipmanListGrid.Dataset.Active := True;


     Result := True;
end;

procedure TfrmFirmaEkipmanList.RefreshSahaGozetimler(
  const bUseBookmark: Boolean);

begin

end;

procedure TfrmFirmaEkipmanList.CihazKontrolFormFotografGoruntule(
  const iSahaGozetimID: Integer);

begin

end;

function TfrmFirmaEkipmanList.CihazKontrolFormFotografSil(
  const iSahaGozetimID: Integer): Boolean;

begin

end;

function TfrmFirmaEkipmanList.CihazKontrolFormFotografYukle(
  const iSahaGozetimID: Integer): Boolean;
begin
end;

procedure TfrmFirmaEkipmanList.AdjustMasterControls;
begin

end;

procedure TfrmFirmaEkipmanList.cxButtonCClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
begin
  inherited;

  case Tcontrol(sender).Tag of
  -28:begin
               F := FormINIT(TagfrmEkipmanTuruOzellik,GirisRecord,ikHayir,'');
              if F <> nil then F.ShowModal;
  end;
  -27 : begin
              F := FormINIT(TagfrmEkipmanTuru,GirisRecord,ikHayir,'');
              if F <> nil then F.ShowModal;
        end;
  end;
end;


procedure TfrmFirmaEkipmanList.SirketlerPropertiesChange(Sender: TObject);
begin
 //
end;

procedure TfrmFirmaEkipmanList.FormCreate(Sender: TObject);
var
  sirketlerx : TcxImageComboKadir;
begin
  ClientWidth := 860;
  ClientHeight := 600;

  cxPanel.Visible := False;

  Menu := PopupMenu1;

  indexFieldName := 'id';
  TableName := 'Cihaz';

  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.Name := 'CihazTurleri';
  sirketlerx.TableName := 'CihazTurleri';
  sirketlerx.ValueField := 'Kod';
  sirketlerx.DisplayField := 'tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Filter := '';

  TcxImageComboBoxProperties(EkipmanListGridSatircihazTurKod.Properties).Items :=
  TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('CihazTurleri')).Properties).Items;
  TcxImageComboBoxProperties(EkipmanListGridSatircihazTurKod.Properties).Alignment.Horz := taLeftJustify;

  setDataStringKontrol(self,EkipmanListGrid,'EkipmanListGrid','',Kolon1,'',450,480,alNone,'');
  setDataStringKontrol(self,EkipmanDetay,'EkipmanDetay','',Kolon2,'',367,480,alNone,'');

  EkipmanListGrid.Dataset.OnNewRecord := NewRecord;
  EkipmanListGrid.Dataset.AfterScroll := AfterScroll;

  SayfaCaption('Firma Ekipman Listesi','','','','');
end;


procedure TfrmFirmaEkipmanList.NewRecord(DataSet: TDataSet);
begin
   EkipmanListGrid.Dataset.FieldByName('SirketKod').AsString := _firmaKod_;
end;

procedure TfrmFirmaEkipmanList.AfterScroll(DataSet: TDataSet);
begin
     EkipmanDetaySatir.Bands[0].Caption := EkipmanListGrid.Dataset.FieldByName('tanimi').AsString;
     EkipmanDetay.Dataset.Connection := datalar.ADOConnection2;
     EkipmanDetay.Dataset.Active := false;
     EkipmanDetay.Dataset.SQL.Text :=  'select * from CihazDetay where CihazKod = ' +
                                        QuotedStr(EkipmanListGrid.Dataset.FieldByName('Kod').AsString);
     EkipmanDetay.Dataset.Active := True;
end;


procedure TfrmFirmaEkipmanList.cxKaydetClick(Sender: TObject);
begin

  inherited;

  case TControl(sender).Tag  of
  Kaydet : begin
            TcxImageComboKadir(FindComponent('KontrolCihaz')).Enabled := True;
           end;
  Yeni : begin
           TcxImageComboKadir(FindComponent('KontrolCihaz')).Enabled := False;

         end;
  end;
end;


procedure TfrmFirmaEkipmanList.GozlemYazdir(const GozlemID: integer);
begin

end;

procedure TfrmFirmaEkipmanList.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

