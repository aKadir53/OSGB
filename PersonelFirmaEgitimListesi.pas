unit PersonelFirmaEgitimListesi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, StdCtrls,dxLayoutControl, cxCheckGroup,
  Buttons,  ExtCtrls, DBGrids,  KadirLabel,Kadir,KadirType,GetFormClass,
  DBGridEh, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Menus,
  cxContainer, cxGroupBox, cxRadioGroup,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxMemo,
  cxPCdxBarPopupMenu, cxPC,GirisUnit, Vcl.ComCtrls, dxtree, dxdbtree,
  dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxSkinBlack, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, cxCalendar, cxCurrencyEdit, cxGridBandedTableView,
  cxGridDBBandedTableView;

type
  TfrmPersonelFirmaEgitimListe = class(TGirisForm)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Tip: TcxRadioGroup;
    txtay: TcxComboBox;
    ktip: TcxComboBox;
    DiyalizTip: TcxRadioGroup;
    popupYil: TPopupMenu;
    ADOTable1: TADOTable;
    DataSource2: TDataSource;
    cxListPanel: TcxGroupBox;
 //   akipRaporBul1: TMenuItemModul;
 //   SeansTahakkuk1: TMenuItemModul;
    cxHastaListePanelBaslik: TcxGroupBox;
    N1: TMenuItem;
    cxStyle2: TcxStyle;
    K1: TMenuItem;
    ikazRed: TcxStyle;
    ikazYellow: TcxStyle;
    EgitimGrid: TcxGridKadir;
    EgitimGridSatirlar: TcxGridDBBandedTableView;
    EgitimGridSatirlarid: TcxGridDBBandedColumn;
    EgitimGridSatirlarBaslamaTarihi: TcxGridDBBandedColumn;
    EgitimGridSatirlarBitisTarihi: TcxGridDBBandedColumn;
    EgitimGridSatirlartanimi: TcxGridDBBandedColumn;
    EgitimGridSatirlarSirketTanimi: TcxGridDBBandedColumn;
    EgitimGridSatirlarEgitimBilgi: TcxGridDBBandedColumn;
    EgitimGridSatirlarEgitimCSGBGonderimSonuc: TcxGridDBBandedColumn;
    EgitimGridSatirlarColumn1: TcxGridDBBandedColumn;
    EgitimGridSatirlarColumn2: TcxGridDBBandedColumn;
    EgitimGridSatirlarColumn3: TcxGridDBBandedColumn;
    EgitimGridSatirlarColumn4: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    personelTCKolon: TcxGridDBBandedColumn;
    personelKolon: TcxGridDBBandedColumn;

    procedure TopPanelPropertiesChange(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListeFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure N1Click(Sender: TObject);
    procedure PeryodikMuayeneOlutur1Click(Sender: TObject);
    procedure TopPanelButonClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

type
  TdxLayoutControlAccess = class(TdxLayoutControl);

const formGenislik = 700;
      formYukseklik = 600;

var
  frmPersonelFirmaEgitimListe: TfrmPersonelFirmaEgitimListe;
  ay1 , ay2  , donemYil ,_Tarih_: string;
implementation
  uses Data_Modul, AnaUnit;// HastaSeansIsle;
{$R *.dfm}


function TfrmPersonelFirmaEgitimListe.Init(Sender : TObject) : Boolean;
begin
  Result := False;
  TapPanelElemanVisible(True,true,true,false,false,false,False,false,False,False,False,False,True);
  Result := True;
end;

procedure TfrmPersonelFirmaEgitimListe.btnVazgecClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPersonelFirmaEgitimListe.FormCreate(Sender: TObject);
var
 ii : TcxCheckGroupItem;
begin
  inherited;
  cxPanel.Visible := false;
 // ToolBar1.Visible := false;

  ClientHeight := AnaForm.ClientHeight - (AnaForm.ToolBar1.Height + AnaForm.dxStatusBar1.Height+50);
  ClientWidth := formGenislik;
  Olustur(self,TableName,'Personel Firma Egitim Listesi',23);


  TopPanel.Visible := true;

  chkList.Properties.Items.Clear;
  ii := chkList.Properties.Items.Add;
  ii.Caption := 'Personeller';

  EgitimGridSatirlar.DataController.DataSource := DataSource;

 // AktifPasifTopPanel.EditValue := '0';

  SayfaCaption('','','','','');
end;

procedure TfrmPersonelFirmaEgitimListe.ListeFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  Hadi,HSadi,HTc : string;
  index : integer;
  id , i : integer;
  gun : integer;
begin
  inherited;

  //index := AFocusedRecord.Index;
 // Hadi := _Dataset.FieldByName('HASTAADI').AsString; //Liste.DataController.GetValue(index,HastaAdi.Index);
 // HSadi := _Dataset.FieldByName('HASTASOYADI').AsString;//Liste.DataController.GetValue(index,HastaSoyadi.Index);
//  HTc := _Dataset.FieldByName('TCKIMLIKNO').AsString;//Liste.DataController.GetValue(index,TC.Index);
//  HastaBilgiRecordSet(Hadi,HSadi,HTc,'');

end;

procedure TfrmPersonelFirmaEgitimListe.N1Click(Sender: TObject);
begin
  inherited;
  case TMenuItem(Sender).tag of
      0 :   EgitimGridSatirlar.ViewData.Expand(true);
      1 :   EgitimGridSatirlar.ViewData.Expand(False);
  end;

end;

procedure TfrmPersonelFirmaEgitimListe.PeryodikMuayeneOlutur1Click(Sender: TObject);
 type  BenSecerim = (BsEvet,BsHayir);
var
 gun,i : integer;
 tetkikIstemGrupSablon,sql,protokolNo,dosyaNo,sirketKod,sube,grup,tetkikler,hasta : string;
 BS : BenSecerim;
begin
  inherited;



end;
procedure TfrmPersonelFirmaEgitimListe.TopPanelButonClick(Sender: TObject);
begin
  inherited;
  EgitimGridSatirlar.ViewData.Expand(true);
end;

procedure TfrmPersonelFirmaEgitimListe.TopPanelPropertiesChange(Sender: TObject);
begin
  inherited;
  EgitimGridSatirlar.ViewData.Expand(true);

  if varToStr(chkList.EditValue) = '1' then
  begin
    personelTCKolon.DataBinding.FieldName := 'personelTc';
    personelKolon.DataBinding.FieldName := 'personelAdi';

    personelTCKolon.Visible := True;
    personelKolon.Visible := True;

  end
  else
  begin
    personelTCKolon.DataBinding.FieldName := '';
    personelKolon.DataBinding.FieldName := '';
    personelTCKolon.Visible := false;
    personelKolon.Visible := false;


  end;

  //  Bilgiler;
end;

end.
