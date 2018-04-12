unit HastaAsiKarti;

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
  cxGridCustomView, cxGrid;

type
  TfrmAsiKarti = class(TGirisForm)
    cxGrid1: TcxGrid;
    gridAsilar: TcxGridDBTableView;
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
    Asilar: TListeAc;
    gridAsilarColumn1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure AsiGetir;
    procedure AsiEkle;
    procedure AsiSil;
    procedure cxButtonCClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'HastaAsi';
      formGenislik = 550;
      formYukseklik = 400;
      AsiSQL = 'select * from HastaAsi where dosyaNO = %s';
var
  frmAsiKarti: TfrmAsiKarti;

implementation
      uses Data_Modul,AnaUnit;
{$R *.dfm}


function TfrmAsiKarti.Init(Sender: TObject) : Boolean;
begin
  cxTab.Tabs[0].Caption := _HastaAdSoyad_;
  AsiGetir;
  Result := True;
end;

procedure TfrmAsiKarti.AsiSil;
begin
    sqlRun.Delete;
end;

procedure TfrmAsiKarti.AsiEkle;
var
    List : ArrayListeSecimler;
begin
    List := Asilar.ListeGetir;
    if length(List) > 0
    Then BEgin
       sqlRun.Append;
       try
         sqlRun.FieldByName('asiKodu').AsString := List[0].kolon1;
         sqlRun.FieldByName('asiAdi').AsString := List[0].kolon2;
         sqlRun.FieldByName('Tarih').AsDateTime := date();
         sqlRun.FieldByName('dosyaNo').AsString := _dosyaNO_;
         sqlRun.Post;
       except
         sqlRun.Cancel;
         raise;
       end;
    End;
end;
procedure TfrmAsiKarti.AsiGetir;
begin
  sqlRun.SQL.Text := Format(AsiSQL,[#39+_dosyaNo_+#39]);
  sqlRun.Open;
  gridAsilar.DataController.DataSource := DataTableSource;

end;
procedure TfrmAsiKarti.cxButtonCClick(Sender: TObject);
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  case TControl(sender).Tag of
  -1 : begin
        AsiEkle;
       end;
  -2 : begin
        AsiSil;
       end;
  -3 : begin
         close;
       end;

  end;


end;

procedure TfrmAsiKarti.FormCreate(Sender: TObject);
begin

  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  TableName := _TableName_;

  Olustur(self,_TableName_,'Aþý Kartý',25);
  menu := PopupMenu1;
  cxPanel.Visible := false;

  Asilar.SkinName := AnaForm.dxSkinController1.SkinName;

 sayfalar.HideTabs := true;
 sayfa2.TabVisible := false;
 sayfa3.TabVisible := false;
 sayfa4.TabVisible := false;
 sayfa5.TabVisible := false;

end;

end.
