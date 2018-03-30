unit AjandaOzet;

interface
incele
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,ShellApi,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  kadir, kadirMedula3, KadirType,GetFormClass,GirisUnit,dxLayoutContainer,
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
  cxImageComboBox, cxButtonEdit, cxColorComboBox, Vcl.ImgList;

type
  TfrmAjandaOzet = class(TGirisForm)
    DataSource1: TDataSource;
    ADO_RiskDetay: TADOQuery;
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
    E1: TMenuItem;
    cxStyle9: TcxStyle;
    AjandaGrid: TcxGridKadir;
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
    AjandaGridSatirlar: TcxGridDBBandedTableView;
    AjandaGridLevel1: TcxGridLevel;
    AjandaGridSatirlarLocation: TcxGridDBBandedColumn;
    AjandaGridSatirlartanimi: TcxGridDBBandedColumn;
    AjandaGridSatirlarILCE: TcxGridDBBandedColumn;
    AjandaGridSatirlarHizmetSure: TcxGridDBBandedColumn;
    AjandaGridSatirlarGirisSaat: TcxGridDBBandedColumn;
    AjandaGridSatirlarCikisSaat: TcxGridDBBandedColumn;
    AjandaGridSatirlarPlanlananTarih: TcxGridDBBandedColumn;
    AjandaGridSatirlarResourceId: TcxGridDBBandedColumn;
    AjandaGridSatirlarADISOYADI: TcxGridDBBandedColumn;
    AjandaGridSatirlarColumn1: TcxGridDBBandedColumn;
    AjandaGridSatirlarColumn2: TcxGridDBBandedColumn;
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure cxKaydetClick(Sender: TObject);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
                AButtonIndex: Integer); override;

    procedure ButtonClick(Sender: TObject);
    procedure FaturaSatirTutarCustomDrawFooterCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure AfterScroll(DataSet: TDataSet);
 //   function EArsivGonder(FaturaId : string) : string;
 //   function EArsivIptal(FaturaGuid : string) : string;
 //   function EArsivPDF(FaturaGuid : string ; _tag_ : integer) : string;
 //   procedure Gonder;

  private
    { Private declarations }
    FImages : array of TcxImage;
    FImageIds : array of Integer;
    function findMethod(dllHandle: Cardinal; methodName: string): FARPROC;

  protected
    procedure GozlemYazdir (const GozlemID : integer);

  public
    { Public declarations }
    kullanici,tarih1,tarih2 : string;
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmAjandaOzet: TfrmAjandaOzet;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}

function TfrmAjandaOzet.findMethod(dllHandle: Cardinal;  methodName: string): FARPROC;
begin
  Result := GetProcAddress(dllHandle, pchar(methodName));
end;


procedure TfrmAjandaOzet.FaturaSatirTutarCustomDrawFooterCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
//  FaturaToplamlari;
end;

procedure TfrmAjandaOzet.cxKaydetClick(Sender: TObject);
begin
  //SirketKodx.Text := datalar.AktifSirket; giriþ formuna eklendi.
  inherited;

  case TControl(sender).Tag  of
    0 : begin

        end;
    2 : begin

        end;
  end;
end;


procedure TfrmAjandaOzet.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  list : ArrayListeSecimler;
  where,prm : string;
begin
    inherited;
    Enabled;
end;

function TfrmAjandaOzet.Init(Sender : TObject) : Boolean;
var
  _obje_ : TcxCustomEdit;
begin
  AjandaGrid.Dataset.Active := False;
  AjandaGrid.Dataset.SQL.Text := 'exec sp_ajanda ' + QuotedStr(_ResourceID) + ',' +
                                                     QuotedStr(_Tarih1_) + ',' +
                                                     QuotedStr(_Tarih2_);
  AjandaGrid.Dataset.Active := True;
  Result := True;
end;


procedure TfrmAjandaOzet.PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
 L : ArrayListeSecimler;
 i : integer;
 n : string;

begin
end;

procedure TfrmAjandaOzet.AfterScroll(DataSet: TDataSet);
begin
//
end;

procedure TfrmAjandaOzet.cxButtonCClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  aModalResult : TModalResult;
  guid : string;
begin
  inherited;


  case Tcontrol(sender).Tag of
  -9 : begin
         //Fatura(yeniFatura);
       end;
  -11 : begin
         //Fatura(faturaDuzenle);
       end;
  -20 : begin
         //Gonder;
        end;
  -21:begin
      // guid := GridCellToString(GridFaturalar,'UUID',0);
      // EArsivIptal(guid);
  end;
  -22,-23:begin
         //   guid := GridCellToString(GridFaturalar,'UUID',0);
         //   EArsivPDF(guid,Tcontrol(sender).Tag);
          end;
  -24:begin

  end;
  -27 : begin

        end;
  end;
end;

procedure TfrmAjandaOzet.ButtonClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
begin
end;


procedure TfrmAjandaOzet.FormCreate(Sender: TObject);
begin
  inherited;

  cxPanel.Visible := False;
  Menu := PopupMenu1;


  setDataStringKontrol(self,AjandaGrid,'AjandaGrid','',Kolon1,'',1050,450);
  AjandaGrid.Dataset.Connection := datalar.ADOConnection2;

  kolon2.Width := 0;
  Kolon3.Width := 0;
  Kolon4.Width := 0;
  SayfaCaption('Ajanda','Ajanda Özet','','','');

end;

procedure TfrmAjandaOzet.GozlemYazdir(const GozlemID: integer);
begin

end;

procedure TfrmAjandaOzet.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

