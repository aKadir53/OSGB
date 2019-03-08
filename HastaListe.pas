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
    ListeColumndosyaNo: TcxGridDBColumn;
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
 //   akipRaporBul1: TMenuItemModul;
 //   SeansTahakkuk1: TMenuItemModul;
    cxHastaListePanelBaslik: TcxGroupBox;
    N1: TMenuItem;
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
    Muayene: TMenuItem;
    PeryodikMuayeneOlutur1: TMenuItem;
    ListeColumn12: TcxGridDBColumn;
    ListeColumnSirketKod: TcxGridDBColumn;
    ListeColumnSube: TcxGridDBColumn;
    f1: TMenuItem;

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
    procedure MuayeneClick(Sender: TObject);
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
  frmHastaListe: TfrmHastaListe;
  ay1 , ay2  , donemYil ,_Tarih_: string;
implementation
  uses Data_Modul,AnaUnit,HastaRecete;// HastaSeansIsle;
{$R *.dfm}


function TfrmHastaListe.Init(Sender : TObject) : Boolean;
begin
  Result := False;
  if Tag = TagfrmHastaListe
  then
   TapPanelElemanVisible(True,false,false,false,false,false,False,false,False,True,False,False)
  else
   TapPanelElemanVisible(True,false,false,false,false,false,True,false,False,True,False,False);

   AktifPasifTopPanel.EditValue := '1';
   Result := True;

end;

procedure TfrmHastaListe.btnVazgecClick(Sender: TObject);
begin
  close;
end;

procedure TfrmHastaListe.cxButtonCClick(Sender: TObject);
var
 GirisFormRecord : TGirisFormRecord;
 F : TGirisForm;
 dosyaNo,sirketKod,sube : string;
 i : integer;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  GirisFormRecord.F_dosyaNo_ := _Dataset.FieldByName('dosyaNo').AsString;
//  GirisFormRecord.F_gelisNo_ := _Dataset.FieldByName('gelisNo').AsString;
//  GirisFormRecord.F_provizyonTarihi_ := _Dataset.FieldByName('BHDAT').AsString;
  GirisFormRecord.F_HastaAdSoyad_ := _Dataset.FieldByName('HASTAADI').AsString + ' ' +
                                     _Dataset.FieldByName('HASTASOYADI').AsString;
//  GirisFormRecord.F_TakipNo_ := _Dataset.FieldByName('TakypNO').AsString;
  GirisFormRecord.F_TC_ := _Dataset.FieldByName('TCKimlikNo').AsString;

  GirisFormRecord.F_firmaKod_ := _Dataset.FieldByName('SirketKod').AsString;
  GirisFormRecord.F_sube_ := _Dataset.FieldByName('Sube').AsString;
  //TcxImageComboKadir(FindComponent('sube')).EditText;


  datalar.GirisFormRecord.F_firmaKod_ := _Dataset.FieldByName('SirketKod').AsString;
  datalar.GirisFormRecord.F_sube_ :=    _Dataset.FieldByName('sube').AsString;
  datalar.GirisFormRecord.F_dosyaNo_ := _Dataset.FieldByName('dosyaNo').AsString;

  case Tcontrol(sender).tag of
 -1 : begin
          F := FormINIT(TagfrmHastaIlacTedavi,GirisFormRecord,ikEvet,'');
          if F <> nil then F.ShowModal;
      end;
 -2 : begin

      end;

 -7 : begin
          F := FormINIT(TagfrmHastaRecete,GirisFormRecord,ikEvet,'');
          if F <> nil then F.ShowModal;
       // ReceteForm(ado_BransKodlari.FieldByName('dosyaNo').AsString,ado_BransKodlari.FieldByName('gelisNo').AsString);
      end;

-10 : begin
        if mrYes = ShowPopupForm('Þirket Deðiþtir',PersonelSirketDegistir)
        then begin
             sirketKod := datalar.GirisFormRecord.F_firmaKod_;
             sube :=    datalar.GirisFormRecord.F_sube_ ;
             try
               for i := 0 to Liste.Controller.SelectedRowCount - 1 do
               begin
                  dosyaNo := GridCellToString(Liste,'dosyaNo',i);
                  if dosyaNOIslemGormusmu(dosyaNo) = 0
                  Then
                  datalar.QueryExec('update PersonelKart set sirketKod = ' + QuotedStr(sirketKod) +
                                    ' where dosyaNo = ' + QuotedStr(dosyaNo));

               end;
               ShowMessageSkin('Ýþlem Görmemiþ(Muayene,Eðitim)','Seçili Pesonellerin Þirketi Deðiþtirildi','','info');
             except on e : exception do
              begin
                ShowMessageSkin(e.Message,'','','info');
              end;
             end;
        end;

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

 // AktifPasifTopPanel.EditValue := '0';

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
 aTabSheet : TcxTabSheet;
 bTamam : Boolean;
begin
 // datalar.Bilgi.dosyaNo := ado_BransKodlari.FieldByName('dosyaNo').AsString;
//  FormINIT(TagfrmHastaKart,AnaForm,ado_BransKodlari.FieldByName('dosyaNo').AsString);
 if FindTab(AnaForm.sayfalar,TagfrmPersonelKart)
 Then begin
   Form := TGirisForm(FormClassType(TagfrmPersonelKart));
   TGirisForm(FormClassType(TagfrmPersonelKart))._TC_ := '';
   TGirisForm(FormClassType(TagfrmPersonelKart))._dosyaNO_ := _Dataset.FieldByName('dosyaNo').AsString;
   TGirisForm(FormClassType(TagfrmPersonelKart)).Init(Form);
 end
 Else begin
  bTamam := False;
  aTabSheet := NewTab(AnaForm.sayfalar,TagfrmPersonelKart);
  try
    Form := FormINIT(TagfrmPersonelKart,self,_Dataset.FieldByName('dosyaNo').AsString,aTabSheet,ikEvet,'','');
    bTamam := Form <> nil;
    if bTamam then Form.show;
  finally
    if not bTamam then FreeAndNil (aTabSheet);
  end;
 end;
  (*
   if UserRight('Hasta Karty', 'Giri?') = False
   then begin
       ShowMessageSkin('Bu Y?lem Yçin Yetkiniz Bulunmamaktadyr !','','','info');
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
  id , i : integer;
  gun : integer;
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

procedure TfrmHastaListe.MuayeneClick(Sender: TObject);
var
 gun : integer;
 tetkikIstemGrupSablon,sql,protokolNo,ad : string;
 begin
  inherited;

   if UserRight('Muayene Ýþlemleri', 'Yeni Muayene') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

   gun := _Dataset.FieldByName('MuayeneKalanGun').AsInteger;
   tetkikIstemGrupSablon := _Dataset.FieldByName('tetkikIstemGrupSablon').AsString;
   ad := _Dataset.FieldByName('HASTAADI').AsString + ' ' +
         _Dataset.FieldByName('HASTASOYADI').AsString;
   //GridCellToString(Liste,'MuayeneKalanGun',Liste.Controller.SelectedRows[0].index);

   if not (gun <= 30)
   Then begin
       if mrYes = ShowMessageSkin('Personelin Peryodik Muayene Zamaný Gelmemiþ','Yine de Muayene Açmak Ýstiyor musunuz?','','msg')
       Then Begin
          if mrYes = ShowPopupForm(ad,gdPeryodikgelisAc,tetkikIstemGrupSablon)
          Then Begin
             protokolNo := EnsonSeansProtokolNo(_Dataset.FieldByName('sirketKod').AsString,
                                                _Dataset.FieldByName('sube').AsString);

             sql := 'exec sp_GelisKaydet ' +
                    '@dosyaNo = ' + #39 + _Dataset.FieldByName('dosyaNo').AsString + #39 + ',' +
                    '@gelisNo = 0 ,' +
                    '@BHDAT = ' + #39 + tarihal(datalar.GelisDuzenleRecord.GirisTarihi) + #39 + ',' +
                    '@doktor = ' + #39 + DATALAR.doktorKodu + #39 + ',' +
                    '@SERVIS = ' + #39 + '' + #39 + ',' +
                    '@TEDAVITURU = ' + #39 + datalar.GelisDuzenleRecord.TedaviTuru + #39 + ',' +
                    '@Kullanici = ' + #39 + datalar.username + #39 + ',' +
                    '@sirketKod = ' + QuotedStr(_Dataset.FieldByName('sirketKod').AsString) + ',' +
                    '@PN = ' + protokolNo + ',' +
                    '@tetkikler = ' + QuotedStr(datalar.GelisDuzenleRecord.Tetkikler);
             datalar.QuerySelect(sqlRun,sql);
          End
       End
   End
   else
   Begin
         if mrYes = ShowPopupForm(ad,gdPeryodikgelisAc,tetkikIstemGrupSablon)
          Then Begin
             protokolNo := EnsonSeansProtokolNo(_Dataset.FieldByName('sirketKod').AsString,
                                                _Dataset.FieldByName('sube').AsString);

             sql := 'exec sp_GelisKaydet ' +
                    '@dosyaNo = ' + #39 + _Dataset.FieldByName('dosyaNo').AsString + #39 + ',' +
                    '@gelisNo = 0 ,' +
                    '@BHDAT = ' + #39 + tarihal(datalar.GelisDuzenleRecord.GirisTarihi) + #39 + ',' +
                    '@doktor = ' + #39 + DATALAR.doktorKodu + #39 + ',' +
                    '@SERVIS = ' + #39 + '' + #39 + ',' +
                    '@TEDAVITURU = ' + #39 + datalar.GelisDuzenleRecord.TedaviTuru + #39 + ',' +
                    '@Kullanici = ' + #39 + datalar.username + #39 + ',' +
                    '@sirketKod = ' + QuotedStr(_Dataset.FieldByName('sirketKod').AsString) + ',' +
                    '@PN = ' + protokolNo + ',' +
                    '@tetkikler = ' + QuotedStr(datalar.GelisDuzenleRecord.Tetkikler);
             datalar.QuerySelect(sqlRun,sql);
          End;
   End;
end;

procedure TfrmHastaListe.N1Click(Sender: TObject);
begin
  inherited;
  case TMenuItem(Sender).tag of
      0 :   Liste.ViewData.Expand(true);
      1 :   Liste.ViewData.Expand(False);
  end;

end;

procedure TfrmHastaListe.PeryodikMuayeneOlutur1Click(Sender: TObject);
 type  BenSecerim = (BsEvet,BsHayir);
var
 gun,i : integer;
 tetkikIstemGrupSablon,sql,protokolNo,dosyaNo,sirketKod,sube,grup,tetkikler,hasta : string;
 BS : BenSecerim;
begin
  inherited;

   if UserRight('Muayene Ýþlemleri', 'Yeni Muayene') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

   if mrYes = ShowMessageSkin('Seçili Personeller için Peryodik Muayene Ýþlenecek',
                               '','','msg')
   then begin
     if mrYes = ShowMessageSkin('Ýþlenecek Tetkikleri Siz Belirlemek Ýstermisiniz?',
                               'Siz Belirlemezseniz Personel Kartýnda Belirtilen Gruba Göre Ýþlenecek',
                               'Grup Belirtilmemiþse Tetkik Ýþlenmez','msg')
      then begin
         BS := BsEvet;
         datalar.PersonelTetkikler.Tetkik := '';
         ShowPopupForm('Tetkik Seçim',PersonelTetkisIste,'','HastaListe');
          tetkikler := datalar.PersonelTetkikler.Tetkik;
      end
      else begin
         BS := BsHayir;
      end;

       pBar.Properties.Max := Liste.Controller.SelectedRowCount;
       pBar.Position := 0;

       for i := 0 to Liste.Controller.SelectedRowCount - 1 do
       begin
         datalar.ADOConnection2.BeginTrans;
         try
           hasta := GridCellToString(Liste,'HASTAADI',i) + ' ' +
                    GridCellToString(Liste,'HASTASOYADI',i);
           dosyaNo := GridCellToString(Liste,'dosyaNo',i);
           sirketKod := GridCellToString(Liste,'sirketKod',i);
           sube := GridCellToString(Liste,'sube',i);

           if BS = BsHayir
           then begin
            grup := GridCellToString(Liste,'tetkikIstemGrupSablon',i);
            tetkikler := PersonelPeriyodikTetkikIstemleri(grup);
           end;

           protokolNo := EnsonSeansProtokolNo(sirketKod,sube);

           DurumGoster(True,True,hasta);
           Application.ProcessMessages;
           pBar.Position := i;

           sql := 'exec sp_GelisKaydet ' +
                  '@dosyaNo = ' + #39 + dosyaNo + #39 + ',' +
                  '@gelisNo = 0 ,' +
                  '@BHDAT = ' + #39 + tarihal(date) + #39 + ',' +
                  '@doktor = ' + #39 + DATALAR.doktorKodu + #39 + ',' +
                  '@SERVIS = ' + #39 + '' + #39 + ',' +
                  '@TEDAVITURU = ' + #39 + '2' + #39 + ',' +
                  '@Kullanici = ' + #39 + datalar.username + #39 + ',' +
                  '@sirketKod = ' + QuotedStr(sirketKod) + ',' +
                  '@PN = ' + protokolNo + ',' +
                  '@tetkikler = ' + QuotedStr(tetkikler);
           datalar.QuerySelect(sqlRun,sql);
           datalar.ADOConnection2.CommitTrans;
         except
           datalar.ADOConnection2.RollbackTrans;
         end;
       end;
       DurumGoster(False,False,hasta);
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

procedure TfrmHastaListe.TopPanelButonClick(Sender: TObject);
begin
  inherited;
  Liste.ViewData.Expand(true);
end;

procedure TfrmHastaListe.TopPanelPropertiesChange(Sender: TObject);
begin
  inherited;
  Liste.ViewData.Expand(true);

  //  Bilgiler;
end;

end.