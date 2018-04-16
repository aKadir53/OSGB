unit CariHesapExtresi;

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
  TfrmCariHesapEkstre = class(TGirisForm)
    PersonelList: TListeAc;
    PopupMenu1: TPopupMenu;
    Y1: TMenuItem;
    GridEkstre: TcxGridKadir;
    GridList: TcxGridDBBandedTableView;
    GridEkstreLevel1: TcxGridLevel;
    DataSource1: TDataSource;
    GridListiD: TcxGridDBBandedColumn;
    GridListTARiH: TcxGridDBBandedColumn;
    GridListevrakNo: TcxGridDBBandedColumn;
    GridListevrakTipi: TcxGridDBBandedColumn;
    GridListBORC: TcxGridDBBandedColumn;
    GridListALACAK: TcxGridDBBandedColumn;
    GridListBAKIYE: TcxGridDBBandedColumn;
    GridListBAKIYETIPI: TcxGridDBBandedColumn;
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
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'cariHareketler';
      formGenislik = 600;
      formYukseklik = 600;

var
  frmCariHesapEkstre: TfrmCariHesapEkstre;


implementation

uses StrUtils;

{$R *.dfm}

procedure TfrmCariHesapEkstre.PropertiesEditValueChanged(Sender: TObject);
var
  xDeger : String;
begin
  TcxCheckGroupKadir(FindComponent('Egitimkod')).Clear;
  xDeger := vartoStr(TcxImageComboKadir(FindComponent('EgitimTuru')).EditValue);
  if not IsNull (xDeger) then
    TcxCheckGroupKadir(FindComponent('Egitimkod')).Filter := ' grup = ' + xDeger
   else
    TcxCheckGroupKadir(FindComponent('Egitimkod')).Filter := '';
end;

procedure TfrmCariHesapEkstre.ButtonClick(Sender: TObject);
begin
//
end;

procedure TfrmCariHesapEkstre.cxButtonCClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmCariHesapEkstre.cxButtonEditPropertiesButtonClick(Sender: TObject;
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

procedure TfrmCariHesapEkstre.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmCariHesapEkstre.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmCariHesapEkstre.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmCariHesapEkstre.FormCreate(Sender: TObject);
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
  KurumTipTopPanel.TableName := 'cari_CariKartView';
  KurumTipTopPanel.ValueField := 'Kod';
  KurumTipTopPanel.DisplayField := 'Tanimi';
  KurumTipTopPanel.BosOlamaz := False;
  KurumTipTopPanel.Filter := '';


  GridList.DataController.DataSource := DataSource;


  SayfaCaption('Cari Ekstre', '', '', '', '');
end;

function TfrmCariHesapEkstre.GetEgitimPersonelSQL: String;

begin

end;

function TfrmCariHesapEkstre.Init(Sender: TObject): Boolean;
begin
   TapPanelElemanVisible(True,True,True,false,false,false,True,false,False,false,False,false);
   result := True;
end;

procedure TfrmCariHesapEkstre.ResetDetayDataset;
begin

end;

procedure TfrmCariHesapEkstre.SayfalarChange(Sender: TObject);
begin
  //d
end;

procedure TfrmCariHesapEkstre.SayfalarPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  cxPanel.Visible := (newPage <> sayfa2);

end;

procedure TfrmCariHesapEkstre.cxKaydetClick(Sender: TObject);
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
