unit firmaCihazKontrolListesi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, StdCtrls,dxLayoutControl,
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
  dxSkinXmas2008Blue, cxCalendar, cxCurrencyEdit;

type
  TfrmCihazKontrolListesi = class(TGirisForm)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    PopupMenu1: TPopupMenu;
    popupYil: TPopupMenu;
    ADOTable1: TADOTable;
    DataSource2: TDataSource;
    cxListPanel: TcxGroupBox;
    cxGrid2: TcxGridKadir;
    Liste: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    uyari: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    txtUyariMesaj: TcxMemo;
 //   akipRaporBul1: TMenuItemModul;
 //   SeansTahakkuk1: TMenuItemModul;
    cxHastaListePanelBaslik: TcxGroupBox;
    N1: TMenuItem;
    cxStyle2: TcxStyle;
    K1: TMenuItem;
    ikazRed: TcxStyle;
    ikazYellow: TcxStyle;
    Y1: TMenuItem;
    E1: TMenuItem;
    ListeColumn1: TcxGridDBColumn;
    ListeColumn2: TcxGridDBColumn;
    ListeColumn3: TcxGridDBColumn;
    ListeColumn4: TcxGridDBColumn;
    ListeColumn5: TcxGridDBColumn;
    ListeColumn6: TcxGridDBColumn;
    ListeColumn7: TcxGridDBColumn;
    ListeColumn8: TcxGridDBColumn;
    ListeColumn9: TcxGridDBColumn;
    ListeColumn10: TcxGridDBColumn;
    ListeColumn11: TcxGridDBColumn;

    procedure TopPanelPropertiesChange(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
    procedure ListeDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure popupYilPopup(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure ListeFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure N1Click(Sender: TObject);
    procedure ListeStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
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
  frmCihazKontrolListesi: TfrmCihazKontrolListesi;
  ay1 , ay2  , donemYil ,_Tarih_: string;
implementation
  uses Data_Modul,AnaUnit,HastaRecete;// HastaSeansIsle;
{$R *.dfm}


function TfrmCihazKontrolListesi.Init(Sender : TObject) : Boolean;
begin
  Result := False;
    TapPanelElemanVisible(True,false,false,false,false,false,true,false,False,false,False,false);


    KurumTipTopPanel.Properties.Items.Clear;
    KurumTipTopPanel.Enabled := True;
    KurumTipTopPanel.Width := 250;


    KurumTipTopPanel.Conn := Datalar.ADOConnection2;
    KurumTipTopPanel.TableName := 'SIRKETLER_TNM_view';
    KurumTipTopPanel.ValueField := 'SirketKod';
    KurumTipTopPanel.DisplayField := 'Tanimi';
    KurumTipTopPanel.BosOlamaz := False;
    KurumTipTopPanel.Filter := datalar.sirketlerUserFilter;

    (*
    AktifPasifTopPanel.Properties.Items.Clear;

    AktifPasifTopPanel.Conn := nil;
    AktifPasifTopPanel.ItemList := 'IGU;Ýþ Güvenli Uzmanlarý,DoktorlarT;Doktorlar';
    AktifPasifTopPanel.Filter := '';
    AktifPasifTopPanel.Properties.OnEditValueChanged := PropertiesEditValueChanged;


    if datalar.IGU <> '' then
    begin
     AktifPasifTopPanel.EditValue := 'IGU';
     KurumTipTopPanel.EditValue := datalar.IGU;
     AktifPasifTopPanel.Enabled := False;
     KurumTipTopPanel.Enabled := False;
    end
    else
    if datalar.doktorKodu <> '' then
    begin
     AktifPasifTopPanel.EditValue := 'DoktorlarT';
     KurumTipTopPanel.EditValue := datalar.doktorKodu;
     AktifPasifTopPanel.Enabled := False;
     KurumTipTopPanel.Enabled := False;
    end
    else
    begin
     AktifPasifTopPanel.Enabled := True;
     KurumTipTopPanel.Enabled := True;
    end;


  end;
  *)


  Result := True;

end;

procedure TfrmCihazKontrolListesi.btnVazgecClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCihazKontrolListesi.cxButtonCClick(Sender: TObject);
var
 GirisFormRecord : TGirisFormRecord;
 F : TGirisForm;
 i : integer;
 sirket,sube,igu,iguTc,firmaSgk : string;
begin
  inherited;
  case Tcontrol(sender).tag of
 -1 : begin

      end;



  end;
end;

procedure TfrmCihazKontrolListesi.FormCreate(Sender: TObject);
begin
  inherited;
  cxPanel.Visible := false;
 // ToolBar1.Visible := false;

  ClientHeight := AnaForm.ClientHeight - (AnaForm.ToolBar1.Height + AnaForm.dxStatusBar1.Height+50);
  ClientWidth := formGenislik;
  Olustur(self,TableName,'Firma Listesi',23);
  Menu := PopupMenu1;

  TopPanel.Visible := true;

  Liste.DataController.DataSource := DataSource;

 // AktifPasifTopPanel.EditValue := '0';

  SayfaCaption('','','','','');
end;

procedure TfrmCihazKontrolListesi.ListeDblClick(Sender: TObject);
var
 Form : TGirisForm;
 GirisFormRecord : TGirisFormRecord;
 aTabSheet : TcxTabSheet;
 bTamam : Boolean;
begin

 GirisFormRecord.F_firmaKod_ := _Dataset.FieldByName('sirketKod').AsString;

 if FindTab(AnaForm.sayfalar,TagfrmFirmaKart)
 Then begin
   Form := TGirisForm(FormClassType(TagfrmPersonelKart));
   TGirisForm(FormClassType(TagfrmFirmaKart))._firmaKod_ := _Dataset.FieldByName('sirketKod').AsString;
   TGirisForm(FormClassType(TagfrmFirmaKart)).Init(Form);
 end
 Else begin
  bTamam := False;
  aTabSheet := NewTab(AnaForm.sayfalar,TagfrmFirmaKart);
  try
    Form := FormINIT(TagfrmFirmaKart,self,GirisFormRecord,'',aTabSheet,ikEvet,'');
    bTamam := Form <> nil;
    if bTamam then Form.show;
  finally
    if not bTamam then FreeAndNil (aTabSheet);
  end;
 end;

end;

procedure TfrmCihazKontrolListesi.ListeFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  Hadi,HSadi,HTc : string;
  index : integer;
  id , i : integer;
  gun : integer;
begin
  inherited;
  (*

  //index := AFocusedRecord.Index;
  Hadi := _Dataset.FieldByName('HASTAADI').AsString; //Liste.DataController.GetValue(index,HastaAdi.Index);
  HSadi := _Dataset.FieldByName('HASTASOYADI').AsString;//Liste.DataController.GetValue(index,HastaSoyadi.Index);
  HTc := _Dataset.FieldByName('TCKIMLIKNO').AsString;//Liste.DataController.GetValue(index,TC.Index);
  HastaBilgiRecordSet(Hadi,HSadi,HTc,'');
    *)
end;

procedure TfrmCihazKontrolListesi.ListeStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
 id : integer;
begin
(*
 try
  id := ARecord.ViewData.GridView.FindItemByName('MuayeneKalanGun').Index;
  if AItem.Index = id
  then
    if ARecord.Values[id] <> null
    then begin
     if (ARecord.Values[id] <= 0)
       Then AStyle := ikazRed
      else
     if (ARecord.Values[id] < 30)
       Then AStyle := ikazYellow;
    end;
 except
 end;
 *)
end;

procedure TfrmCihazKontrolListesi.N1Click(Sender: TObject);
begin
  inherited;
  case TMenuItem(Sender).tag of
      0 :   Liste.ViewData.Expand(true);
      1 :   Liste.ViewData.Expand(False);
  end;

end;

procedure TfrmCihazKontrolListesi.popupYilPopup(Sender: TObject);
var
  I ,yil : integer;
  item : TMenuItem;
begin
  yil := strtoint(copy(datetostr(date),7,4))+1;
//--  popupYil.Items.Clear;
  for I := 1 to 5 do
  begin
   yil := yil - 1;
   if popupYil.items.Find(inttostr(yil)) = nil
   Then Begin
     item := TMenuItem.Create(self);
     item.Caption := inttostr(yil);
    // item.Name := protokol + '-' + hasta;
     item.onClick := N1.onClick;
     popupYil.Items.Insert(popupYil.Items.Count  , item);
   End;
  end;
end;

procedure TfrmCihazKontrolListesi.TopPanelButonClick(Sender: TObject);
begin
  inherited;

 // Liste.DataController.CreateAllItems(True);
end;

procedure TfrmCihazKontrolListesi.TopPanelPropertiesChange(Sender: TObject);
begin
  inherited;
   Liste.ViewData.Expand(true);

  //  Bilgiler;
end;

end.
