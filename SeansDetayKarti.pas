unit SeansDetayKarti;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,pngImage,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,KadirMedula3,
  GirisUnit,Data_Modul, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,jpeg,
  dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, cxRadioGroup, cxDropDownEdit,
  cxCalendar, cxImageComboBox, cxPCdxBarPopupMenu, cxPC, cxCheckGroup, cxImage,
  cxGridBandedTableView, cxGridDBBandedTableView, cxSplitter, cxCheckBox,
  cxDBLookupComboBox, cxCurrencyEdit, cxVGrid, cxDBVGrid, cxInplaceContainer,
  cxLabel, Vcl.Buttons, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxLayoutContainer, dxLayoutControl, cxMemo, GetFormClass,
  dxSkinsdxStatusBarPainter, dxStatusBar, cxCheckListBox;



type
  TfrmSeansDetayKart = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Kapat1: TMenuItem;
    DataSource1: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    ADO_Gelisler: TADOQuery;
    H1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxButtonCClick(Sender: TObject);
    procedure seansGunleriPropertiesEditValueChanged(Sender: TObject);
    procedure Yukle;
  private
    { Private declarations }
  public
     function Init(Sender: TObject) : Boolean; override;
    { Public declarations }
  end;

const _TableName_ = 'Hastaseanslari';
      formGenislik = 800;
      formYukseklik = 450;

var
  frmSeansDetayKart: TfrmSeansDetayKart;
  ord : integer;
  _gez : integer;
  aktifKart : integer = 0;

implementation

{$R *.dfm}

function TfrmSeansDetayKart.Init(Sender : TObject) : Boolean;
begin
  Result := False;
  if not inherited Init(Sender) then exit;
  cxTab.Tabs[0].Caption := _HastaAdSoyad_;
  indexFieldValue := _SeansSira_;
  indexKaydiBul(indexFieldValue,indexFieldName);
  Result := True;
end;

procedure TfrmSeansDetayKart.Yukle;
begin
 //indexKaydiBul(_SeansSira_,indexFieldName);
end;

procedure TfrmSeansDetayKart.FormCreate(Sender: TObject);
var
  index,i : integer;
  doktor ,hemsire : TcxImageComboKadir;
begin
  Menu := PopupMenu1;
  Tag := TagfrmSeansDetayKart;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  USER_ID.Text := datalar.username;

  _spSQL_ := 'exec sp_SeansGetir_SiraNo @siraNo = %s';
  _SqlUpdate_ := 'update gelisDetay set %s where sirano = %s';
  sqlTip := sql_sp;

  indexFieldName := 'sirano';
  TableName := _TableName_;
  TopPanel.Visible := False;

//  Olustur(self,_TableName_,'Hasta Seans Detay Kartý',22,sqlInsert);
  cxPanelButtonVisible(false,true,false);
  cxPanelButtonEnabled(false,true,false);

  doktor := TcxImageComboKadir.Create(self);
  doktor.Conn := Datalar.ADOConnection2;
  doktor.TableName := 'Doktorlar';
  doktor.ValueField := 'KOD';
  doktor.DisplayField := 'ADI';
  doktor.Filter := '';
  // OrtakEventAta(doktor);
  setDataStringKontrol(self,doktor,'doktor','Doktor',kolon1,'dr',140);

  hemsire := TcxImageComboKadir.Create(self);
  hemsire.Conn := Datalar.ADOConnection2;
  hemsire.TableName := 'Hemsireler';
  hemsire.ValueField := 'KOD';
  hemsire.DisplayField := 'ADI';
  hemsire.Filter := '';
  // OrtakEventAta(doktor);
  setDataStringKontrol(self,hemsire,'hemsire','Hemþire',kolon1,'dr',140);

  setDataStringBLabel(self,'bossatir1',kolon1,'',150,'','','');
  setDataStringBLabel(self,'SiraNo',kolon2,'',150,'',' Seans ID :','siraNo');

  DiyalizTedaviControlleriniFormaEkle(Kolon1);
  DiyalizTedavi_UF_KontrolleriniFormaEkle(Kolon2);

  SayfaCaption('Seans Detaylarý','','','','');

 end;


procedure TfrmSeansDetayKart.seansGunleriPropertiesEditValueChanged(Sender: TObject);
var
 s : string;
begin
  inherited;
//  s := seansGunleri.EditingValue;


 // ShowMessage(s,'','','info');
end;

procedure TfrmSeansDetayKart.cxKaydetClick(Sender: TObject);
var
  g : TGraphic;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  case TControl(sender).Tag  of
    0 : begin


        end;
    1 : begin

        end;
    2 : begin

        end;

  end;

end;


procedure TfrmSeansDetayKart.cxButtonCClick(Sender: TObject);
var
 _name_ : string;
 Form : TGirisForm;
 GirisFormRecord : TGirisFormRecord;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  GirisFormRecord.F_SeansSira_ := _SeansSira_;
  GirisFormRecord.F_HastaAdSoyad_ := _HastaAdSoyad_;

  case TControl(sender).Tag  of
    0 : begin

        end;
  270 : begin
          Form := FormINIT(TagfrmHemsiraTakip,GirisFormRecord);
          if Form <> nil then Form.showModal;
        end;

  end;
end;


end.
