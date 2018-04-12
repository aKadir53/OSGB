unit Son6AylikTetkikSonuc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,KadirLabel,GirisUnit,KadirType,kadir,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, Vcl.Menus, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxContainer, Data.Win.ADODB, cxCheckBox,
  Vcl.StdCtrls, cxTextEdit;

type
  TfrmSon6AylikTetkikSonuc = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    Kapat1: TMenuItem;
    GroupBox14: TGroupBox;
    cxGrid3: TcxGrid;
    gridTetkikList: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    ARALIK: TcxGridDBColumn;
    KASIM: TcxGridDBColumn;
    EKIM: TcxGridDBColumn;
    EYLUL: TcxGridDBColumn;
    AGUSTOS: TcxGridDBColumn;
    TEMMUZ: TcxGridDBColumn;
    HAZIRAN: TcxGridDBColumn;
    MAYIS: TcxGridDBColumn;
    NISAN: TcxGridDBColumn;
    MART: TcxGridDBColumn;
    SUBAT: TcxGridDBColumn;
    OCAK: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    chk: TcxCheckBox;
    DataSource6: TDataSource;
    ADO_Tetkikler: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure Listele;
    procedure TetkikSonucGridKolonGizle;
  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'HastaAsi';
      formGenislik = 500;
      formYukseklik = 550;

var
  frmSon6AylikTetkikSonuc: TfrmSon6AylikTetkikSonuc;

implementation
      uses Data_Modul,AnaUnit;
{$R *.dfm}

function TfrmSon6AylikTetkikSonuc.Init(Sender: TObject) : Boolean;
begin
 inherited;
 Listele;
 Result := True;
end;

procedure TfrmSon6AylikTetkikSonuc.TetkikSonucGridKolonGizle;
begin
  OCAK.Visible := False;
  SUBAt.Visible := False;
  MART.Visible := False;
  NISAN.Visible := False;
  MAYIS.Visible := False;
  HAZIRAN.Visible := False;
  TEMMUZ.Visible := False;
  AGUSTOS.Visible := False;
  EYLUL.Visible := False;
  EKIM.Visible := False;
  KASIM.Visible := False;
  ARALIK.Visible := False;
end;


procedure TfrmSon6AylikTetkikSonuc.Listele;
var
  sql ,_Tarih: string;
  i : integer;
  ado : TADOQuery;
begin
  _Tarih := NoktasizTarih(_provizyonTarihi_);
  try
    sql := 'exec sp_HastaTetkikTakipPIVOT ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_Tarih) + ',' + '1';
    datalar.QuerySelect(ADO_Tetkikler,sql);

    TetkikSonucGridKolonGizle;

    sql := 'exec sp_HastaTetkikTakipPIVOT ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_Tarih) + ',' + '0';
    ado := TADOQuery.Create(nil);
    try
      datalar.QuerySelect(ado,sql);

      while not ado.Eof do
      begin
        i := gridTetkikList.GetColumnByFieldName(ado.fieldbyname('ad').AsString).Index;
        gridTetkikList.Columns[i].Visible := True;
        gridTetkikList.Columns[i].Width := 50;
        gridTetkikList.Columns[i].Index := ado.RecNo + 2;
        ado.Next;
      end;
    finally
      ado.Free;
    end;
  except
  end;
end;
procedure TfrmSon6AylikTetkikSonuc.cxKaydetClick(Sender: TObject);
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  case TControl(sender).Tag of
  -1 : begin

       end;
  -2 : begin

       end;
  -3 : begin

       end;

  end;


end;

procedure TfrmSon6AylikTetkikSonuc.FormCreate(Sender: TObject);
begin
  Tag := TagfrmSon6AylikTetkikSonuc;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  TableName := _TableName_;

  Olustur(self,_TableName_,'6 Aylik Tetkik Sonuç',28);
  menu := PopupMenu1;
  cxPanel.Visible := false;
  SayfaCaption('','','','','');
  kolon1.Visible := false;
  kolon2.Visible := false;
  kolon3.Visible := false;


end;

end.
