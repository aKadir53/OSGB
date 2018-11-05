unit HastaRaporlari;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,KadirLabel,GirisUnit,KadirType,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, Vcl.Menus, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxDropDownEdit, cxImageComboBox;

type
  TfrmTaniKart = class(TGirisForm)
    cxGrid1: TcxGrid;
    gridTanilar: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    PopupMenu1: TPopupMenu;
    Ekle1: TMenuItem;
    Sl1: TMenuItem;
    Kapat1: TMenuItem;
    Tanilar: TListeAc;
    gridTanilarColumn1: TcxGridDBColumn;
    gridTanilarColumn2: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure Raporlar;
    procedure cxButtonCClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'Anamnez_ICD';
      formGenislik = 600;
      formYukseklik = 300;
      TaniSQL = 'select * from Anamnez_ICD  where dosyaNO = %s and gelisNo = %s';
var
  frmTaniKart: TfrmTaniKart;

implementation
      uses Data_Modul,AnaUnit;
{$R *.dfm}


function TfrmTaniKart.Init(Sender: TObject) : Boolean;
begin
  cxTab.Tabs[0].Caption := _HastaAdSoyad_;
  Raporlar;
  Result := True;
end;

procedure TfrmTaniKart.Raporlar;
begin
  sqlRun.SQL.Text := Format(TaniSQL,[#39+_dosyaNo_+#39,_gelisNo_]);
  sqlRun.Open;
  gridTanilar.DataController.DataSource := DataTableSource;

end;
procedure TfrmTaniKart.cxButtonCClick(Sender: TObject);
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  case TControl(sender).Tag of
  -1 : begin
       // TaniEkle;
       end;
  -2 : begin
      //  TaniSil;
       end;
  -3 : begin
         close;
       end;

  end;


end;

procedure TfrmTaniKart.FormCreate(Sender: TObject);
var
  index,i : integer;
  Ts,Ts1 : TStringList;
  List,List1 : TListeAc;
begin
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  TableName := _TableName_;

  Olustur(self,_TableName_,'Hasta Raporlarý',25);
  menu := PopupMenu1;
  cxPanel.Visible := false;
  Tanilar.SkinName := AnaForm.dxSkinController1.SkinName;

 sayfalar.HideTabs := true;
 sayfa2.TabVisible := false;
 sayfa3.TabVisible := false;
 sayfa4.TabVisible := false;
 sayfa5.TabVisible := false;

end;

end.
