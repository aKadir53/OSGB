unit SeansHakedis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, adodb,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinMcSkin, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGridDBTableView,
  cxGrid, StdCtrls, ExtCtrls,cxGridExportLink, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,GirisUnit,
  dxSkinLondonLiquidSky, dxSkinMoneyTwins, dxSkinsDefaultPainters, KadirLabel;

type
  TfrmHakedis = class(TGirisForm)
    cxGrid2: TcxGridKadir;
    Detay: TcxGridDBTableView;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Button1: TButton;
    DetayColumn1: TcxGridDBColumn;
    DetayColumn2: TcxGridDBColumn;
    DetayColumn3: TcxGridDBColumn;
    DetayColumn4: TcxGridDBColumn;
    DetayColumn5: TcxGridDBColumn;
    DetayColumn6: TcxGridDBColumn;
    DetayColumn7: TcxGridDBColumn;
    DetayColumn8: TcxGridDBColumn;
    DetayColumn9: TcxGridDBColumn;
    DetayColumn10: TcxGridDBColumn;
    DetayColumn11: TcxGridDBColumn;
    DetayColumn12: TcxGridDBColumn;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure list(t1,t2 : string);
  end;

var
  frmHakedis: TfrmHakedis;

implementation

{$R *.dfm}
   uses data_modul;
procedure TfrmHakedis.Button1Click(Sender: TObject);
begin
   close;
end;

procedure TfrmHakedis.cxButtonCClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmHakedis.FormCreate(Sender: TObject);
begin
  cxPanel.Visible := false;
  dxStatusBar1.Visible := false;
  cxTab.Tabs[0].Caption := 'Aylýk Hakediþ Paneli';
end;

procedure TfrmHakedis.list(t1: string; t2: string);
var
  sql : string;
  ado : TADOQuery;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   sql := 'exec sp_SeansCariIcmal ' + QuotedStr(T1) + ',' + QuotedStr(T2);
   datalar.QuerySelect(ado,sql);
   DataSource1.DataSet := ado;
end;


end.
