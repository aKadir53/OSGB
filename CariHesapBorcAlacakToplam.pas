unit CariHesapBorcAlacakToplam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel, cxcalendar,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxDropDownEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, cxPC, cxCurrencyEdit;



type
  TfrmCariHesapBorcAlacakToplam = class(TGirisForm)
    PersonelList: TListeAc;
    PopupMenu1: TPopupMenu;
    Y1: TMenuItem;
    GridEkstre: TcxGridKadir;
    GridList: TcxGridDBBandedTableView;
    GridEkstreLevel1: TcxGridLevel;
    DataSource1: TDataSource;
    GridListcarikod: TcxGridDBBandedColumn;
    GridListtanimi: TcxGridDBBandedColumn;
    GridListB: TcxGridDBBandedColumn;
    GridListA: TcxGridDBBandedColumn;
    GridListBK: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure SayfalarChange(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetEgitimPersonelSQL : String;
    procedure ResetDetayDataset;
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'cariHareketler';
      formGenislik = 600;
      formYukseklik = 600;

var
  frmCariHesapBorcAlacakToplam: TfrmCariHesapBorcAlacakToplam;


implementation

uses StrUtils;

{$R *.dfm}

procedure TfrmCariHesapBorcAlacakToplam.ButtonClick(Sender: TObject);
var
  i : Integer;
  sTmp: String;
  ado : TADOQuery;
begin
end;

procedure TfrmCariHesapBorcAlacakToplam.cxButtonCClick(Sender: TObject);
var
  Ado,ado1 : TADOQuery;
  sql : string;
  TopluDataset : TDataSetKadir;
begin
  inherited;

end;

procedure TfrmCariHesapBorcAlacakToplam.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmCariHesapBorcAlacakToplam.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmCariHesapBorcAlacakToplam.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmCariHesapBorcAlacakToplam.FormCreate(Sender: TObject);
var
  List : TListeAc;
  kombo , kombo1 ,sirketlerx ,sirketlerxx , EvrakTip: TcxImageComboKadir;
  dateEdit: TcxDateEditKadir;
  Egitimler : TcxCheckGroupKadir;
begin
  cxPanel.Visible := false;
  TopPanel.Visible := false;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
  indexFieldName := 'id';
  TableName := _TableName_;

//  _DataSource := DataSource1;
  Menu := PopupMenu1;
  GridEkstre.Dataset.Connection := datalar.ADOConnection2;
//  GridList.DataController.DataSource := DataSource;


  SayfaCaption('Borc / Alacak Toplam', '', '', '', '');
end;

function TfrmCariHesapBorcAlacakToplam.GetEgitimPersonelSQL: String;

begin

end;

function TfrmCariHesapBorcAlacakToplam.Init(Sender: TObject): Boolean;
begin
   GridEkstre.Dataset.Active := False;
   GridEkstre.Dataset.SQL.Text := 'exec sp_CariHesapBorcAlacakToplam';
   GridEkstre.Dataset.Active := True;
   result := True;
end;

procedure TfrmCariHesapBorcAlacakToplam.ResetDetayDataset;
begin

end;

procedure TfrmCariHesapBorcAlacakToplam.SayfalarChange(Sender: TObject);
begin
  //d
end;

end.
