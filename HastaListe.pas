unit HastaListe;

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
  TfrmHastaListe = class(TGirisForm)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    PopupMenu1: TPopupMenu;
    Tip: TcxRadioGroup;
    txtay: TcxComboBox;
    ktip: TcxComboBox;
    DiyalizTip: TcxRadioGroup;
    popupYil: TPopupMenu;
    ADOTable1: TADOTable;
    DataSource2: TDataSource;
    cxListPanel: TcxGroupBox;
    cxGrid2: TcxGridKadir;
    Liste: TcxGridDBTableView;
    TC: TcxGridDBColumn;
    ListeColumn1: TcxGridDBColumn;
    HastaAdi: TcxGridDBColumn;
    HastaSoyadi: TcxGridDBColumn;
    ListeColumn4: TcxGridDBColumn;
    ListeColumn6: TcxGridDBColumn;
    Kilo: TcxGridDBColumn;
    ListeColumn7: TcxGridDBColumn;
    ListeColumn8: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    uyari: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    txtUyariMesaj: TcxMemo;
    Recete: TMenuItemModul;
    edaviKart1: TMenuItemModul;
    SeansKart1: TMenuItemModul;
    Epikriz1: TMenuItemModul;
 //   akipRaporBul1: TMenuItemModul;
 //   SeansTahakkuk1: TMenuItemModul;
    cxHastaListePanelBaslik: TcxGroupBox;
    e1: TMenuItemModul;
    He1: TMenuItemModul;
    He2: TMenuItemModul;
    He3: TMenuItemModul;
    N1: TMenuItem;
    A1: TMenuItem;
    T1: TMenuItem;
    ListeColumn2: TcxGridDBColumn;
    ListeColumn3: TcxGridDBColumn;
    ListeColumn5: TcxGridDBColumn;
    ListeColumn9: TcxGridDBColumn;
    ListeColumn10: TcxGridDBColumn;
    ListeColumn11: TcxGridDBColumn;
    MuayeneKalanGun: TcxGridDBColumn;
    ListeColumn13: TcxGridDBColumn;
    ListeColumn14: TcxGridDBColumn;
    ListeColumn15: TcxGridDBColumn;
    cxStyle2: TcxStyle;
    ListeColumn16: TcxGridDBColumn;
    K1: TMenuItem;
    ikazRed: TcxStyle;
    ikazYellow: TcxStyle;

    procedure TopPanelPropertiesChange(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
    procedure ListeDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure popupYilPopup(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure ListeFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure N1Click(Sender: TObject);
    procedure ListeStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);

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
  frmHastaListe: TfrmHastaListe;
  ay1 , ay2  , donemYil ,_Tarih_: string;
implementation
  uses Data_Modul,AnaUnit,HastaRecete;// HastaSeansIsle;
{$R *.dfm}


function TfrmHastaListe.Init(Sender : TObject) : Boolean;
begin
  //
  if Tag = TagfrmHastaListe
  then
   TapPanelElemanVisible(True,false,false,false,false,false,False,false,False,True,False,False)
  else
   TapPanelElemanVisible(True,false,false,false,false,false,True,false,False,True,False,False);


end;

procedure TfrmHastaListe.btnVazgecClick(Sender: TObject);
begin
  close;
end;

procedure TfrmHastaListe.cxButtonCClick(Sender: TObject);
var
 GirisFormRecord : TGirisFormRecord;
 F : TGirisForm;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  GirisFormRecord.F_dosyaNo_ := _Dataset.FieldByName('dosyaNo').AsString;
//  GirisFormRecord.F_gelisNo_ := _Dataset.FieldByName('gelisNo').AsString;
//  GirisFormRecord.F_provizyonTarihi_ := _Dataset.FieldByName('BHDAT').AsString;
  GirisFormRecord.F_HastaAdSoyad_ := _Dataset.FieldByName('HASTAADI').AsString + ' ' +
                                     _Dataset.FieldByName('HASTASOYADI').AsString;
//  GirisFormRecord.F_TakipNo_ := _Dataset.FieldByName('TakýpNO').AsString;
  GirisFormRecord.F_TC_ := _Dataset.FieldByName('TCKimlikNo').AsString;

  GirisFormRecord.F_firmaKod_ := _Dataset.FieldByName('SirketKod').AsString;
  GirisFormRecord.F_sube_ := TcxImageComboKadir(FindComponent('sube')).EditText;

  case Tcontrol(sender).tag of
 -1 : begin
          F := FormINIT(TagfrmHastaIlacTedavi,GirisFormRecord,ikEvet,'Giriþ');
          if F <> nil then F.ShowModal;
      end;
 -2 : begin

      end;

 -7 : begin
          F := FormINIT(TagfrmHastaRecete,GirisFormRecord,ikEvet,'Giriþ');
          if F <> nil then F.ShowModal;
       // ReceteForm(ado_BransKodlari.FieldByName('dosyaNo').AsString,ado_BransKodlari.FieldByName('gelisNo').AsString);
      end;
 330,9020 : begin
               F := FormINIT(Tcontrol(sender).tag,GirisFormRecord,ikEvet,'');
               if F <> nil then F.ShowModal;
            end;

  end;
end;

procedure TfrmHastaListe.FormCreate(Sender: TObject);
begin
  inherited;
  cxPanel.Visible := false;
 // ToolBar1.Visible := false;

  ClientHeight := AnaForm.ClientHeight - (AnaForm.ToolBar1.Height + AnaForm.dxStatusBar1.Height+50);
  ClientWidth := formGenislik;
  Olustur(self,TableName,'Personel Listesi',23);
  Menu := PopupMenu1;

  TopPanel.Visible := true;


  Liste.DataController.DataSource := DataSource;

  AktifPasifTopPanel.EditValue := '1';


  SayfaCaption('','','','','');

end;

procedure TfrmHastaListe.H1Click(Sender: TObject);
var
  sql : string;
  ado,ado0,ado1,ado2,ado3,ado4,ado5,ado6,ado7,ado8,ado9,ado10,ado11,ado12 : TADOQuery;
  m : string;
  topluset : TDataSetKadir;
begin

   case TMenuItem(sender).Tag of
    10 : m := 'E';
    11 : m := 'H';
   end;

   if TMenuItem(sender).Tag in [12]
   then begin
    topluset.Dataset1 := _Dataset;
    PrintYap('203T','Hasta Tetkik Takip Hepatit Toplu',inttostr(TagfrmHastaListe),topluset);
   end
   else begin
    ado := TADOQuery.Create(nil);
    sql := 'exec  sp_HastaTetkikTakipPIVOTToplu @dosyaNO = '''' , @yil = ' + QuotedStr(ay1) +
                  ',@marker = ' + QuotedStr(m) + ',@f= -1';
    datalar.QuerySelect(ado,sql);
    topluset.Dataset0 := ado;
    PrintYap('205','Toplu Tetkik Takip',inttostr(TagfrmHastaListe),topluset);
    ado.Free;
   end;


end;

procedure TfrmHastaListe.ListeDblClick(Sender: TObject);
var
 Form : TGirisForm;
begin
 // datalar.Bilgi.dosyaNo := ado_BransKodlari.FieldByName('dosyaNo').AsString;
//  FormINIT(TagfrmHastaKart,AnaForm,ado_BransKodlari.FieldByName('dosyaNo').AsString);
 if FindTab(AnaForm.sayfalar,TagfrmHastaKart)
 Then begin
   Form := TGirisForm(FormClassType(TagfrmHastaKart));
   TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := _Dataset.FieldByName('dosyaNo').AsString;
   TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
 end
 Else begin
  Form := FormINIT(TagfrmHastaKart,self,_Dataset.FieldByName('dosyaNo').AsString,NewTab(AnaForm.sayfalar,TagfrmHastaKart),ikEvet,'');
  if Form <> nil then Form.show;
 end;
  (*


   if UserRight('Hasta Kartý', 'Giriþ') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

    try

           if datalar.HkA = 0
           Then Begin
            frmHastaKarti := TfrmHastaKarti.Create(self);
          //  GorselAyar(frmHastaKarti,datalar.global_img_list4);
            frmHastaKarti.Top := 2;
            frmHastaKarti.Left := 2 + frmHastaListe.Width + 5;
           End;

           frmHastaKarti.Combo;
           frmHastaKarti.ilCombo;
           frmHastaKarti.yakinlikCombo;
           frmHastaKarti.KartGetir(ado_BransKodlari.FieldByName('dosyaNo').AsString);
           frmHastaKarti.Gelisler(ado_BransKodlari.FieldByName('dosyaNo').AsString);
           frmHastaKarti.Durum(1);
           frmHastaKarti.btnGuncelle.Enabled := True;
          // Disabled(frmHastaKarti);
           frmHastaKarti.Disable;
    except
    end;

             *)

end;

procedure TfrmHastaListe.ListeFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  Hadi,HSadi,HTc : string;
  index : integer;
begin
  inherited;

  //index := AFocusedRecord.Index;
  Hadi := _Dataset.FieldByName('HASTAADI').AsString; //Liste.DataController.GetValue(index,HastaAdi.Index);
  HSadi := _Dataset.FieldByName('HASTASOYADI').AsString;//Liste.DataController.GetValue(index,HastaSoyadi.Index);
  HTc := _Dataset.FieldByName('TCKIMLIKNO').AsString;//Liste.DataController.GetValue(index,TC.Index);
  HastaBilgiRecordSet(Hadi,HSadi,HTc,'');

end;

procedure TfrmHastaListe.ListeStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
 id : integer;
begin
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
end;

procedure TfrmHastaListe.N1Click(Sender: TObject);
begin
  inherited;
  case TMenuItem(Sender).tag of
      0 :   Liste.ViewData.Expand(true);
      1 :   Liste.ViewData.Expand(False);
  end;

end;

procedure TfrmHastaListe.popupYilPopup(Sender: TObject);
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

procedure TfrmHastaListe.TopPanelPropertiesChange(Sender: TObject);
begin
  inherited;
  Liste.ViewData.Expand(true);

  //  Bilgiler;
end;

end.
