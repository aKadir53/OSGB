unit KasaBanka;

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
  TfrmKasaBanka = class(TGirisForm)
    PersonelList: TListeAc;
    PopupMenu1: TPopupMenu;
    GridKasa: TcxGridKadir;
    GridKasaHareket: TcxGridDBBandedTableView;
    GridKasaLevel1: TcxGridLevel;
    DataSource1: TDataSource;
    E1: TMenuItem;
    GridKasaHareketTarih: TcxGridDBBandedColumn;
    GridKasaHareketBorc: TcxGridDBBandedColumn;
    GridKasaHareketAlacak: TcxGridDBBandedColumn;
    GridKasaHareketbakiye: TcxGridDBBandedColumn;
    GridKasaHareketaciklama: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure SayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
       var AllowChange: Boolean);
    procedure SayfalarChange(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure PropertiesEditValueChanged(Sender: TObject);override;
  private
    { Private declarations }
  protected
    function GetEgitimPersonelSQL : String;
    procedure ResetDetayDataset;
    procedure CekTahsilatIptal(id,carid : string);
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'cari_Cekler';
      formGenislik = 600;
      formYukseklik = 600;

var
  frmKasaBanka: TfrmKasaBanka;


implementation

uses StrUtils, TransUtils;

{$R *.dfm}

procedure TfrmKasaBanka.CekTahsilatIptal(id,carid : string);
var
  sql : string;
  bTmm : Boolean;
begin
  try
    bTmm := False;
    BeginTrans (datalar.ADOConnection2);
    try
      sql := 'update cari_cekler set durum = 1 where id  = ' + id;
      datalar.QueryExec(sql);

      sql := 'delete from cariHareketler where id = ' + carid;
      datalar.QueryExec(sql);
      bTmm := True;
    finally
      if bTmm then
        CommitTrans (datalar.ADOConnection2)
       else
        RollbackTrans (datalar.ADOConnection2);
    end;
  except on e : Exception do
   begin
    ShowMessageSkin(e.Message,'','','info');
   end;

  end;

end;


procedure TfrmKasaBanka.PropertiesEditValueChanged(Sender: TObject);
begin
//
end;

procedure TfrmKasaBanka.ButtonClick(Sender: TObject);
begin
//
end;

procedure TfrmKasaBanka.cxButtonCClick(Sender: TObject);
var
  fID : string;
begin
  inherited;

  case Tcontrol(sender).Tag of
  -20 : begin
   //        fID := GridCekler.DataController.DataSet.FieldByName('id').AsString;
           if mrYEs = ShowPopupForm('Çek Tahsilat Ekle',CekTahsilat,fID)
           then begin
           end;
        end;
  -21 : begin
//          CekTahsilatIptal(GridCekler.DataController.DataSet.FieldByName('id').AsString,
 //                          GridCekler.DataController.DataSet.FieldByName('cariHareketid').AsString);
        end;
  end;
end;

procedure TfrmKasaBanka.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
    FormInputZorunluKontrolPaint(self,$00FCDDD1);
  end;
  //if TcxButtonEditKadir(FindComponent('id')).Text = '' then exit;
  ResetDetayDataset;
end;

procedure TfrmKasaBanka.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmKasaBanka.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmKasaBanka.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmKasaBanka.FormCreate(Sender: TObject);
begin
  cxPanel.Visible := false;
  TopPanel.Visible := true;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
  indexFieldName := 'id';
  TableName := _TableName_;

  _DataSource := DataSource1;
  Menu := PopupMenu1;
 // Olustur(self,_TableName_,'Personel Eðitimleri',22);


  KurumTipTopPanel.Conn := Datalar.ADOConnection2;
  KurumTipTopPanel.TableName := 'cari_Hesaplar';
  KurumTipTopPanel.ValueField := 'Kod';
  KurumTipTopPanel.DisplayField := 'Tanimi';
  KurumTipTopPanel.BosOlamaz := False;
  KurumTipTopPanel.Filter := '';


  GridKasaHareket.DataController.DataSource := DataSource;


  SayfaCaption('Kasa / Banka', '', '', '', '');
end;

function TfrmKasaBanka.GetEgitimPersonelSQL: String;

begin

end;

function TfrmKasaBanka.Init(Sender: TObject): Boolean;
begin
   TapPanelElemanVisible(True,True,True,false,false,false,True,false,False,false,False,false);
   result := True;
end;

procedure TfrmKasaBanka.ResetDetayDataset;
begin

end;

procedure TfrmKasaBanka.SayfalarChange(Sender: TObject);
begin
  //d
end;

procedure TfrmKasaBanka.SayfalarPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  cxPanel.Visible := (newPage <> sayfa2);

end;

procedure TfrmKasaBanka.cxKaydetClick(Sender: TObject);
var
  xObj : TcxButtonEditKadir;
begin
  //SirketKodx.Text := datalar.AktifSirket; giriþ formuna eklendi.
  inherited;
  //post ettikten sonra veritabanýndan Identity deðeri alýp edit kutusuna yazmasý için....
  case TControl(sender).Tag  of
    0 : begin
      xObj := TcxButtonEditKadir (FindComponent('id'));
      if IsNull (xObj.EditingValue) then
      begin
        xObj.Text := IntToStr (F_IDENTITY);

      end;
    end;
    2 : begin
      xObj := TcxButtonEditKadir (FindComponent('id'));
      xObj.Text := '';

    end;
  end;
end;

end.
