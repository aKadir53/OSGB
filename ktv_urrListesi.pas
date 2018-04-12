unit ktv_urrListesi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, sBitBtn, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, adodb,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,kadir,KadirType,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridExportLink,
  cxClasses, cxGridCustomView, cxGrid, cxContainer, cxProgressBar, dxSkinsCore,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus, cxButtons, cxLabel,
  cxTextEdit, cxGroupBox, cxRadioGroup,GirisUnit,
   KadirLabel;

type
  TfrmKtvListesi = class(TGirisForm)
    pnlTitle: TPanel;
    pnlToolBar: TPanel;
    pnlOnay: TPanel;
    txtinfo: TLabel;
    cxGrid2: TcxGridKadir;
    GridEkstre: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    DataSource1: TDataSource;
    cxprogres: TcxProgressBar;
    PopupMenu1: TPopupMenu;
    K1: TMenuItem;
    D1: TMenuItem;
    ADO_Tetkikler: TADOQuery;
    G1: TMenuItem;
    T1: TMenuItem;
    Tetkikler: TListeAc;
    GridEkstrekod: TcxGridDBColumn;
    GridEkstretanimi: TcxGridDBColumn;
    GridEkstreSablonGrupKod: TcxGridDBColumn;
    GridEkstreIkod: TcxGridDBColumn;
    GridEkstreItanimi: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonKaydetClick(Sender: TObject);
    procedure DiyalizTipPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure yeniGrupEkle;

    procedure cxButtonCClick(Sender: TObject);
    procedure TetkikEkle;
    procedure TetkikSil;
    procedure GridEkstreFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKtvListesi: TfrmKtvListesi;
  ado : TADOQuery;
  d,g,grup,kod : string;
implementation
     uses data_modul,AnaUnit;
{$R *.dfm}

procedure TfrmKtvListesi.TetkikEkle;
var
  sql : string;
  ado : TADOQuery;
  List : ArrayListeSecimler;
begin
   Tetkikler.SkinName := AnaForm.dxSkinController1.SkinName;
   List := Tetkikler.ListeGetir;
   if length(List) > 0 then
   begin
    sql := 'insert into TetkikIstemSablonItem (SablonGrupKod,kod,tanimi)' +
          'values (' + QuotedStr(grup) + ',' +
                       QuotedStr(List[0].kolon1) + ',' +
                       QuotedStr(List[0].kolon2) + ')';
    datalar.QueryExec(SelectAdo,sql);
   ADO_Tetkikler.Active := false;
   ADO_Tetkikler.Active := True;
   end;
end;

procedure TfrmKtvListesi.TetkikSil;
var
  sql : string;
  ado : TADOQuery;
begin
   sql := 'delete from TetkikIstemSablonItem ' +
          'where SablonGrupKod = ' + QuotedStr(grup) +
          ' and Kod = '+QuotedStr(kod);
   datalar.QueryExec(SelectAdo,sql);

   ADO_Tetkikler.Active := false;
   ADO_Tetkikler.Active := True;

end;

procedure TfrmKtvListesi.cxButtonKaydetClick(Sender: TObject);
var
  sql : string;
  ado1 : TADOQuery;
begin
end;

procedure TfrmKtvListesi.cxButtonCClick(Sender: TObject);
begin
   case Tcontrol(sender).Tag of
   -1 : begin
         TetkikSil;
        end;
   -2 : begin
          TetkikEkle;
        end;
   end;

end;

procedure TfrmKtvListesi.yeniGrupEkle;
begin
   (*
     ADO_Tetkikler.Append;
     ADO_Tetkikler.FieldByName('tanimi').AsString := InputBox('Yeni Grup','Grup Adý','');
     ADO_Tetkikler.FieldByName('tetkikKod').AsString := '0';
     ADO_Tetkikler.FieldByName('tetkikTanimi').AsString := '';
     ADO_Tetkikler.Post;
     *)
end;

procedure TfrmKtvListesi.cxKaydetClick(Sender: TObject);
var
   Dosya : string;
begin
inherited;
//
   case Tcontrol(sender).Tag of
   -3 : begin
          yeniGrupEkle;
        end;
   end;
end;

procedure TfrmKtvListesi.DiyalizTipPropertiesChange(Sender: TObject);
begin
(*   if DiyalizTip.EditValue = 'H'
   then
     btnKtv.Enabled := true
   else
     btnKtv.Enabled := false;
  *)
end;

procedure TfrmKtvListesi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    ado.Free;
  except
  end;


end;

procedure TfrmKtvListesi.FormCreate(Sender: TObject);
begin
  inherited;
  Tag := TagfrmKtvListesi;
//  ClientHeight := formYukseklik;
//  ClientWidth := formGenislik;

  TableName := '';
  cxPanel.Visible := false;
  cxTab.Width := 200;
  SayfaCaption('','','','','');
  Olustur(self,'','',23);
  Menu := PopupMenu1;
end;

procedure TfrmKtvListesi.GridEkstreFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
   if ADO_Tetkikler.Active
   then begin
     grup := GridCellToString(GridEkstre,'Kod',0);
     kod := GridCellToString(GridEkstre,'IKod',0);
   end;
end;

end.
