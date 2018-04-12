unit KanTetkikleriDegerlendir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, ExtCtrls, cxGraphics, cxControls,kadir,kadirType,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDropDownEdit, cxCalendar,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ADODB , cxGridExportLink, dxSkinsCore,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinsDefaultPainters, dxSkinscxPCPainter,
  GirisUnit, cxContainer, cxCheckBox, cxPCdxBarPopupMenu, cxTextEdit, cxPC,
  cxButtons, KadirLabel, Menus;

type
  TfrmKanTetkikTakipDegerlendir = class(TGirisForm)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    SaveDialog1: TSaveDialog;
    cxStyle6: TcxStyle;
    PopupMenu1: TPopupMenu;
    E1: TMenuItem;
    K1: TMenuItem;
    ado_tetkikDegerlendir: TADOQuery;
    DataSource3: TDataSource;
    DataSource17: TDataSource;
    ADO_Uyar: TADOTable;
    cxPageControlDegerlendir: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    Panel5: TPanel;
    cxGrid1: TcxGridKadir;
    gridTetkikDegerlendir: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    gridTetkikDegerlendirColumn1: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxTabSheet4: TcxTabSheet;
    cxGrid13: TcxGrid;
    gridUyar: TcxGridDBTableView;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    gridUyarColumn1: TcxGridDBColumn;
    cxGridLevel13: TcxGridLevel;
    cxBtnDegerlendir: TcxButtonKadir;
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure Getir;
    procedure cxBtnDegerlendirClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

Const
  formGenislik = 480;
  formYukseklik = 550;

var
  frmKanTetkikTakipDegerlendir: TfrmKanTetkikTakipDegerlendir;
  //_dosyaNo_ ,
  _tarih_ , marker : string;

implementation
   uses data_modul;
{$R *.dfm}

function TfrmKanTetkikTakipDegerlendir.Init(Sender: TObject) : Boolean;
begin
  Getir;
  Result := True;
end;

procedure TfrmKanTetkikTakipDegerlendir.cxBtnDegerlendirClick(Sender: TObject);
var
  sql : string;
begin
    if MrYes = ShowMessageSkin('Deðerlendirme Yapýlacak ,Var Olan Deðerlendirme Ýptal Edilecek','','','msg')
    Then Begin
      ado_tetkikDegerlendir.SQL.Clear;
      sql := 'exec sp_TetkikSonucDegerlandir ' + QuotedStr(_dosyaNo_) + ',' + _gelisNo_;
      datalar.QuerySelect(ado_tetkikDegerlendir,sql);
    End;
end;

procedure TfrmKanTetkikTakipDegerlendir.cxButtonCClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmKanTetkikTakipDegerlendir.cxKaydetClick(Sender: TObject);
begin
 inherited;
//
end;

procedure TfrmKanTetkikTakipDegerlendir.Getir;
var
 sql : string;
begin
    sql := 'select dosyaNo,gelisNo,Uyarý as uyari,Onay from HastaTedaviUyari where dosyaNo = ' + QuotedStr(_dosyaNo_) + ' and gelisNo = ' + _gelisNo_;
    datalar.QuerySelect(ado_tetkikDegerlendir,sql);
    ADO_Uyar.Active := True;
end;
procedure TfrmKanTetkikTakipDegerlendir.FormCreate(Sender: TObject);
begin
  Tag := TagfrmKanTetkikTakipDegerlendir;
 // ClientHeight := formYukseklik;
  //ClientWidth := formGenislik;

  TableName := '';
  cxPanel.Visible := false;
  cxTab.Width := 200;
  SayfaCaption('','','','','');
  Olustur(self,'','Tetkik Deðerlendirme',23);
  Menu := PopupMenu1;
end;

end.
