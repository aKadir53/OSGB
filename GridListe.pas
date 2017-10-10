unit GridListe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,GirisUnit,adodb,db, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxTextEdit, cxCalendar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmGridListeForm = class(TGirisForm)
    cxGridGelis: TcxGrid;
    cxGridGelisler: TcxGridDBBandedTableView;
    cxGridGelislerTakpNo: TcxGridDBBandedColumn;
    cxGridGelislerBasvuruNo: TcxGridDBBandedColumn;
    cxGridGelislerdosyaNo: TcxGridDBBandedColumn;
    cxGridGelislergelisNo: TcxGridDBBandedColumn;
    cxGridGelislerBHDAT: TcxGridDBBandedColumn;
    cxGridGelislerdoktor: TcxGridDBBandedColumn;
    cxGridGelislerSERVIS: TcxGridDBBandedColumn;
    cxGridGelislerTEDAVITURU: TcxGridDBBandedColumn;
    cxGridGelislerKullanici: TcxGridDBBandedColumn;
    cxGridGelislerilkTakipNo: TcxGridDBBandedColumn;
    cxGridGelislerSIRANO: TcxGridDBBandedColumn;
    cxGridGelisleryupass: TcxGridDBBandedColumn;
    cxGridGelisleryardimHakki: TcxGridDBBandedColumn;
    cxGridGelislerSYSTakipNo: TcxGridDBBandedColumn;
    cxGridGelisLevel1: TcxGridLevel;
  private
    { Private declarations }
    FDataSource : TDataSource;
  public
    { Public declarations }
    property DataSource : TDataSource read FDataSource write FDataSource;
  end;

var
  frmGridListeForm: TfrmGridListeForm;

implementation

{$R *.dfm}

end.
