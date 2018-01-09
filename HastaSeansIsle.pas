unit HastaSeansIsle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,
  GirisUnit,Data_Modul, cxDropDownEdit, cxImageComboBox, cxStyles,KadirMedula3,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxSkinsCore, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters,
  cxPCdxBarPopupMenu, cxCheckBox, cxCalendar, cxDBLookupComboBox, cxImage,
  cxCurrencyEdit, cxMemo, cxLabel, cxVGrid, cxDBVGrid, cxInplaceContainer,
  cxGridBandedTableView, cxGridDBBandedTableView, dxLayoutContainer,
  dxLayoutControl, cxPC, Vcl.Buttons,cxDataUtils,GetformClass;

type
  TfrmHastaSeans = class(TGirisForm)
    PageControl_Seans: TcxPageControl;
    Seanslar_Sayfa: TcxTabSheet;
    PageControl_Sayfa_Panel: TcxGroupBox;
    cxGrid_Seans: TcxGrid;
    ListeS: TcxGridDBBandedTableView;
    ListeSiraNumarasi: TcxGridDBBandedColumn;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    ListehastaAdi: TcxGridDBBandedColumn;
    ListeSColumn1: TcxGridDBBandedColumn;
    Listesirano: TcxGridDBBandedColumn;
    Listedurum: TcxGridDBBandedColumn;
    ListeDiyalizorTipi: TcxGridDBBandedColumn;
    ListeUTarih: TcxGridDBBandedColumn;
    ListeUTarihDateTime: TcxGridDBBandedColumn;
    ListeDoktorKod: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    ListeTalepSira: TcxGridDBBandedColumn;
    ListeislemSiraNoYatak: TcxGridDBBandedColumn;
    ListesiranoYatis: TcxGridDBBandedColumn;
    ListeTakpNo: TcxGridDBBandedColumn;
    ListeSERVIS: TcxGridDBBandedColumn;
    ListemakinaNo: TcxGridDBBandedColumn;
    ListebasvuruNo: TcxGridDBBandedColumn;
    ListeraporTakipNo: TcxGridDBBandedColumn;
    ListeraporNo: TcxGridDBBandedColumn;
    ListeraporTarihi: TcxGridDBBandedColumn;
    ListeverenTesisKodu: TcxGridDBBandedColumn;
    ListeseansGun: TcxGridDBBandedColumn;
    ListeseansSayi: TcxGridDBBandedColumn;
    ListebaslangicTarihi: TcxGridDBBandedColumn;
    ListeBitisTarihi: TcxGridDBBandedColumn;
    ListeADI: TcxGridDBBandedColumn;
    Listefoto: TcxGridDBBandedColumn;
    ListeSeans: TcxGridDBBandedColumn;
    ListeTCKIMLIKNO: TcxGridDBBandedColumn;
    ListeSNProtokolNo: TcxGridDBBandedColumn;
    ListeGIRISKILO: TcxGridDBBandedColumn;
    ListeCIKISKILO: TcxGridDBBandedColumn;
    ListeIdealKilo: TcxGridDBBandedColumn;
    ListeseansKontrol: TcxGridDBBandedColumn;
    ListeGIRISYOLU: TcxGridDBBandedColumn;
    ListeDC: TcxGridDBBandedColumn;
    ListeD: TcxGridDBBandedColumn;
    ListeYA: TcxGridDBBandedColumn;
    ListeAPH: TcxGridDBBandedColumn;
    ListeKanAlindimi: TcxGridDBBandedColumn;
    ListeVatandasTip: TcxGridDBBandedColumn;
    Listebhdat: TcxGridDBBandedColumn;
    Listesebeb: TcxGridDBBandedColumn;
    ListeTanG: TcxGridDBBandedColumn;
    ListeTanC: TcxGridDBBandedColumn;
    ListeNabizG: TcxGridDBBandedColumn;
    ListeNabizC: TcxGridDBBandedColumn;
    ListeTanGK: TcxGridDBBandedColumn;
    ListeTanCK: TcxGridDBBandedColumn;
    ListeHemodiyalizTip: TcxGridDBBandedColumn;
    ListeCins: TcxGridDBBandedColumn;
    ListeseansRaporKontrol: TcxGridDBBandedColumn;
    Listekod: TcxGridDBBandedColumn;
    ListeMedulaDonenKod: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    ListeColumn3: TcxGridDBBandedColumn;
    ListeColumn4: TcxGridDBBandedColumn;
    ListeSColumn2: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    PanelDoktorDuzelt: TcxGroupBox;
    cxGroupBox10: TcxGroupBox;
    PanelDoktorDuzelt_Tamam: TcxButton;
    PanelDoktorDuzelt_Kapat: TcxButton;
    cxGroupBox11: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxGrid5: TcxGrid;
    doktorlarGrid: TcxGridDBTableView;
    doktorlarGridkod: TcxGridDBColumn;
    doktorlarGridADI: TcxGridDBColumn;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridDBBandedColumn23: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6: TcxGridDBBandedTableView;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn25: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7: TcxGridDBBandedTableView;
    cxGridDBBandedTableView8: TcxGridDBBandedTableView;
    cxGridDBBandedColumn26: TcxGridDBBandedColumn;
    cxGridDBBandedColumn27: TcxGridDBBandedColumn;
    cxGridDBBandedColumn28: TcxGridDBBandedColumn;
    cxGridDBBandedColumn29: TcxGridDBBandedColumn;
    cxGridDBBandedColumn30: TcxGridDBBandedColumn;
    cxGridDBBandedColumn31: TcxGridDBBandedColumn;
    cxGridLevel4: TcxGridLevel;
    PaneltarihDuzelt: TcxGroupBox;
    cxGroupBox8: TcxGroupBox;
    PanelTarihDuzelt_Tamam: TcxButton;
    PanelTarihDuzelt_Kapat: TcxButton;
    cxGroupBox9: TcxGroupBox;
    txtT: TcxDateEdit;
    lblSira: TcxLabel;
    mevcutTarih: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    Sayfa_Log: TcxTabSheet;
    txtHatalar1: TcxMemo;
    PopupMenu5: TPopupMenu;
    S2: TMenuItem;
    S3: TMenuItem;
    N6: TMenuItem;
    s5: TMenuItem;
    S4: TMenuItem;
    D1: TMenuItem;
    N7: TMenuItem;
    S6: TMenuItem;
    N8: TMenuItem;
    H1: TMenuItem;
    D2: TMenuItem;
    Ado_Seans: TADOQuery;
    DataSource1: TDataSource;
    ADO_Detay_toplam: TADOQuery;
    DataSource5: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle3: TcxStyle;
    cxGroupBox2: TcxGroupBox;
    chkTahlil: TcxCheckBox;
    chkMesai: TcxCheckBox;
    cxDBVerticalGrid1: TcxDBVerticalGrid;
    cxDBVerticalGrid1Toplam: TcxDBEditorRow;
    cxDBVerticalGrid1Girilen: TcxDBEditorRow;
    cxDBVerticalGrid1P704230: TcxDBEditorRow;
    cxDBVerticalGrid1P704230Girilen: TcxDBEditorRow;
    cxDBVerticalGrid1P704230Gonderilmeyen: TcxDBEditorRow;
    cxDBVerticalGrid1P704234: TcxDBEditorRow;
    cxDBVerticalGrid1P704234Girilen: TcxDBEditorRow;
    cxDBVerticalGrid1P704234Gonderilmeyen: TcxDBEditorRow;
    cxDBVerticalGrid1P704233: TcxDBEditorRow;
    cxDBVerticalGrid1P704233Girilen: TcxDBEditorRow;
    cxDBVerticalGrid1Kodsuz: TcxDBEditorRow;
    ListeAc2: TListeAc;
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure cxTextEditBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButtonCClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SeansGetir;
    procedure PanelDoktorDuzelt_TamamClick(Sender: TObject);
    procedure PanelDoktorDuzelt_KapatClick(Sender: TObject);
    procedure ListeSStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure ListeSFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ListeSCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure PanelTarihDuzelt_TamamClick(Sender: TObject);
    procedure PanelTarihDuzelt_KapatClick(Sender: TObject);
    procedure SeansSil;
    procedure MedulayaGonder;
    procedure MEduladanSil;
    procedure DamarIziKontrol;
    procedure IzlemFormu;
    procedure SeansTarihiDegistir;
    procedure DoktorBilgisiDegis;
    procedure SeansOlustur;
    procedure digerIslemTalepDoldur(satir : integer);
    procedure ListeraporTakipNoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);

  private
    { Private declarations }
  public
      function Init(Sender: TObject) : Boolean; override;
    { Public declarations }

  end;

const _TableName_ = 'GelisDetay';
      formGenislik = 783;
      formYukseklik = 545;
      SQL = 'select * from gelisDetay where dosyaNO = %s and gelisNo = %s';
var
  frmHastaSeans: TfrmHastaSeans;


implementation
    uses AnaUnit, SeansDetayKarti;
{$R *.dfm}

function TfrmHastaSeans.Init(Sender : TObject) : Boolean;
begin
  Result := False;
  if not inherited Init(Sender) then exit;
  _HastaBilgileriniCaptionGoster_ := false;
  cxTab.Tabs[0].Caption := _HastaAdSoyad_;
  SeansGetir;
  Result := True;
end;

procedure TfrmHastaSeans.SeansOlustur;
var
  _gun , x , y  : integer;
  gun : integer;
  _tarih , _btarih,_starih : tDate;
  diyalizor : string;
  gunler : string;
  dosyaNo , kod ,sql : string;
  ado : TADOQuery;
begin
    datalar.SeansOlusturPrm.ilkSeansTarihi := tarihyap(_provizyonTarihi_);
    if mrYes = ShowPopupForm('Seans Oluþtur',SeansInsert)
    Then Begin
         if datalar.SeansOlusturPrm.araSeans = True
         then datalar.SeansOlusturPrm.sonSeansTarihi := datalar.SeansOlusturPrm.ilkSeansTarihi;

         if HastaKontrol(_dosyaNo_) = false
         then begin
             ShowMessageSkin('Hasta Pasif Durumda Seans Açýlamaz...','','','info');
             exit;
         end;

         gun := round(datalar.SeansOlusturPrm.gunSayisi);
         gunler := seansgun(_dosyaNo_);

         x := 1;

         if gun = 0
         then begin
             _tarih := datalar.SeansOlusturPrm.ilkSeansTarihi;
             _starih := datalar.SeansOlusturPrm.ilkSeansTarihi;
             _btarih := datalar.SeansOlusturPrm.sonSeansTarihi;
             while _btarih >= _tarih do
             begin
                 if datalar.SeansOlusturPrm.ilkSeansTarihi = null
                 then begin
                     ShowMessageSkin('Seans Baþlangýç tarihi belirtilmemiþ','','','info');
                     exit;
                 end;
                _gun := DayOfWeek(datalar.SeansOlusturPrm.ilkSeansTarihi);

                if (pos(inttostr(_gun),gunler) <> 0) or
                   (datalar.SeansOlusturPrm.araSeans = True)
                then begin
                   if datalar.SeansOlusturPrm.HizmetTip = True Then kod := 'E'
                   Else kod := 'M';

                   kod := datalar.SeansOlusturPrm.SeansKodu;

                   sql := 'if not exists(SELECT * FROM GelisDetay WHERE dosyaNo = ' + QuotedStr(_dosyaNo_) +
                          ' AND gelisNo = ' + _gelisNo_ +
                          ' AND Rtarih = ' + QuotedStr(tarihal(datalar.SeansOlusturPrm.ilkSeansTarihi)) + ')' +
                          '  BEGIN ' +
                          'insert into GelisDetay (dosyaNo,gelisNo,Rtarih,Utarih,durum,DiyalizorTipi,Doktor,makinaNo,sebeb,Seans,HemodiyalizTip) ' +
                          'values ( ' + #39 + _dosyaNo_ + #39+ ','+ _gelisNo_ + ','
                          + #39 + tarihal(datalar.SeansOlusturPrm.ilkSeansTarihi) + #39 + ','
                          + #39 + '' + #39 + ','
                          + #39 + '0' + #39 + ','
                          + #39 + '' + #39 + ','
                          + #39 + copy(_doktor_,1,4) + #39 + ','
                          + #39 + _Makina_ + #39 + ','
                          + QuotedStr('') + ','
                          + QuotedStr(_Seans_[1]) + ','
                          + QuotedStr(kod) +
                          ')' +
                          ' END ';
                   datalar.QueryExec(nil,sql);
                  end;
                _tarih := datalar.SeansOlusturPrm.ilkSeansTarihi;
                _tarih := _tarih + 1;
                datalar.SeansOlusturPrm.ilkSeansTarihi := _tarih;
                if _tarih > _btarih Then Break;
             end; // while end
         end; // gun = 0 end


         if gun > 0
         then begin
             while gun >= x do
             begin
                 if datalar.SeansOlusturPrm.ilkSeansTarihi = null
                 then begin
                     ShowMessageSkin('Seans Baþlangýç tarihi belirtilmemiþ','','','info');
                     exit;
                 end;
                _gun := DayOfWeek(datalar.SeansOlusturPrm.ilkSeansTarihi);

                if pos(inttostr(_gun),gunler) <> 0
                then begin
                     if datalar.SeansOlusturPrm.HizmetTip = True Then kod := 'E'
                     Else kod := 'M';
                     kod := datalar.SeansOlusturPrm.SeansKodu;

                     sql := 'if not exists(SELECT * FROM GelisDetay WHERE dosyaNo = ' + QuotedStr(_dosyaNo_) +
                            ' AND gelisNo = ' + _gelisNo_ +
                            ' AND Rtarih = ' + QuotedStr(tarihal(datalar.SeansOlusturPrm.ilkSeansTarihi)) + ')' +
                            '  BEGIN ' +
                            'insert into GelisDetay (dosyaNo,gelisNo,Rtarih,Utarih,durum,DiyalizorTipi,Doktor,makinaNo,sebeb,Seans,HemodiyalizTip) ' +
                            'values ( ' + #39 + _dosyaNo_ + #39+ ','+ _gelisNo_ + ','
                            + #39 + tarihal(datalar.SeansOlusturPrm.ilkSeansTarihi) + #39 + ','
                            + #39 + '' + #39 + ','
                            + #39 + '0' + #39 + ','
                            + #39 + '' + #39 + ','
                            + #39 + copy(_doktor_,1,4) + #39 + ','
                            + #39 + _Makina_ + #39 + ','
                            + QuotedStr('') + ','
                            + QuotedStr(_seans_[1]) + ','
                            + QuotedStr(kod) +
                            ')' +
                            ' END ';
                     datalar.QueryExec(nil,sql);
                end;
                _tarih := datalar.SeansOlusturPrm.ilkSeansTarihi;
                _tarih := _tarih + 1;
                inc(x);
                datalar.SeansOlusturPrm.ilkSeansTarihi := _tarih;
             end;
         end;

         ADO_seans.Active := false;
         ADO_seans.Active := True;
    End;

end;

procedure TfrmHastaSeans.DoktorBilgisiDegis;
var
   x ,sirano , satir , durum : integer;
   secim : boolean;
   _secim ,sql , kod , talepSira: string;
begin
  inherited;

    if mrYes = ShowPopupForm('Seans Doktor Bilgisi Deðiþtir',SeansDoktorUpdate)
    Then Begin
        for x := 0 to ListeS.Controller.SelectedRowCount - 1 do
        begin
           Application.ProcessMessages;
           satir := ListeS.Controller.SelectedRows[x].RecordIndex;
           ListeS.DataController.FocusedRecordIndex := satir;
           sirano := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('sirano').Index);
           kod := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('HemodiyalizTip').Index);
           durum := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('Durum').Index);
           talepSira := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('TalepSira').Index);

           if  talepSira = ''
           then begin
               ListeS.DataController.SetEditValue(ListeS.DataController.GetItemByFieldName('DoktorKod').Index,datalar.SeansBilgi.drTescilNo,evsValue);
               ListeS.DataController.post;
           end; // talep end

        end; // for end
    End;

end;


procedure TfrmHastaSeans.SeansTarihiDegistir;
var
  satir,durum : integer;
  RTarih , Talep : string;
  Year, Month, Day: Word;
begin
  inherited;

  satir := ListeS.Controller.SelectedRows[0].RecordIndex;
  RTarih := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('RTarih').Index);
  durum := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('Durum').Index);
  Talep := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('TalepSira').Index);

  Datalar.SeansBilgi.islemTarihi := RTarih;

  if (durum = 0) and (Talep = '')
  then begin
    if mrYes = ShowPopupForm('Seans Planlama Tarihini Deðiþtir',SeansTarihiUpdate)
    Then BEgin
       Application.ProcessMessages;
       satir := ListeS.Controller.SelectedRows[0].RecordIndex;
       ListeS.DataController.FocusedRecordIndex := satir;
       talep := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('TalepSira').Index);
       if  talep = ''
       then begin
           if tarihal(txtt.Date) = '00000000' then exit;
           ADO_seans.Edit;
           ADO_seans.FieldByName('RTarih').AsString := datalar.SeansBilgi.islemTarihi;
           ADO_seans.Post;
           ADO_seans.Requery();
       end;
    End;
  end;
end;


procedure TfrmHastaSeans.IzlemFormu;
var
 state : boolean;
 satir,durum  : integer;
 sirano , tarih , doktor , seans : string;
 Form : TGirisForm;
  GirisFormRecord : TGirisFormRecord;
begin
       satir := ListeS.Controller.SelectedRows[0].RecordIndex;
       sirano := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('sirano').Index);
       tarih := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('RTarihDateTime').Index);
       doktor := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('doktorKod').Index);
       durum := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('durum').Index);
       seans := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('seans').Index);

       if seans = ''
       Then Begin
        ShowMessageSkin('Seans Belirtilmemiþ','','','info');
        exit;
       End;

 //      gridSeanslar.GetCheckBoxState(4,gridSeanslar.Row,state);
       if durum = 0
       then begin
        ShowMessageSkin('Seans Onaylý Deðil','','','info');
        exit;
       end;

       GirisFormRecord.F_SeansSira_ := sirano;
       GirisFormRecord.F_HastaAdSoyad_ := _HastaAdSoyad_;
       Form := FormINIT(TagfrmSeansDetayKart,GirisFormRecord);
       if Form <> nil then Form.showModal;

      (*
       Application.CreateForm(TfrmSeansDetayKart, frmSeansDetayKart);
       frmSeansDetayKart.SeansId := siraNo;
       frmSeansDetayKart._spSQL_ := 'exec sp_SeansGetir_SiraNo @siraNo = %s';
       frmSeansDetayKart._SqlUpdate_ := 'update gelisDetay set %s where sirano = %s';
       frmSeansDetayKart.sqlTip := sql_sp;
       frmSeansDetayKart.Yukle;
       frmSeansDetayKart.ShowModal;
       FreeAndNil(frmSeansDetayKart); *)

       (*
       Application.CreateForm(TfrmHemsireTkp, frmHemsireTkp);
       frmHemsireTkp.dosyaNo := txtDosyaNo.Text;
       frmHemsireTkp.gelisNO := gridGelisler.Cells[1,gridGelisler.row];
       frmHemsireTkp.TakipFaturadaVarmi := TakipFaturadami(gridGelisler.Cells[2,gridGelisler.row]);

       frmHemsireTkp.FormAc(sirano,dosyaNo , gelisNO , tarih,doktor);
    //   frmHemsireTkp.TedaviGetir(gridSeanslar.Cells[7,gridSeanslar.Row] , DiyalizBilgisi);
     //  frmHemsireTkp.Seanslar;
       GorselAyar(frmHemsireTkp,datalar.global_img_list4);
       frmHemsireTkp.ShowModal;
       SeansGetir(dosyaNo,gelisNO);
       frmHemsireTkp := nil;
       *)
end;



procedure TfrmHastaSeans.DamarIziKontrol;
var
   tc , tarih , tesis , cvp ,msj , yas ,ad : string;
   satir : integer;
begin
  satir := ListeS.Controller.SelectedRows[0].RecordIndex;
  tarih := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('RTarihDateTime').Index);

  //datalar.Login;
  tesis := datalar._tesisKodu;
  tc := _TC_;
  try yas := 'Yaþ : ' + inttostr(TcdenYasHesapla(tc).yil); except end;
  tarih := tarih;
  cvp := DamarIziDogrulamaSorgula(tc,tarih,tesis,yas,msj,ad);
  txtHatalar1.Lines.Add(msj);
end;




procedure TfrmHastaSeans.MEduladanSil;
var
   _talepSira , _sonuc ,msg ,sql,talep,takip: string;
   i , j , k ,satir,sirano,durum: integer;
begin

   if UserRight('MEDULA ÝÞLEMLERÝ', 'Hizmet Ýptal') = False
   Then Begin
      ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Yok','Sistem Yöneticinizle Görüþün','Hizmet Ýptal','info');
      exit;
   End;

   satir := ListeS.Controller.SelectedRows[0].RecordIndex;
   sirano := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('sirano').Index);
   talep := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('TalepSira').Index);
   durum := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('durum').Index);
   takip := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('TakýpNo').Index);

   pnlDurum.Visible := True;
   pnlDurum.Caption := 'Hizmet Ýptal';
   setlength(datalar.islemSiralari,1);
   datalar.islemSiralari[0] :=  talep;

     if mrYes = ShowMessageSkin('Hizmet Ýptal Edilecek Emin misiniz ?','','','msg')
     then begin
        msg := HizmetKaydiIptal(takip ,datalar.HizmetKayit);

        if msg = '0000'
        Then Begin
           //  if  TsBitBtn(sender).Tag = -59
           //  Then Begin
               sql := 'update gelisler set TakýpSend = ''9'''+
                       ' where takýpNo = ' + QuotedStr(takip);
               datalar.QueryExec(nil, sql);

               sql := 'update gelisDetay set TalepSira = '''' ' +
                     ',obje = ' + QuotedStr('Hasta_Kart_medula_Ýptal') +
                      ' where TalepSira = ' + QuotedStr(talep);
               datalar.QueryExec(nil,sql);
               ListeS.DataController.SetValue(satir,ListeS.DataController.GetItemByFieldName('TalepSira').Index,'');

         // ShowMessageSkin('Hizmet Ýptal Edildi','','','info');
          setlength(datalar.islemSiralari,0);
        End
        Else
        if copy(msg,1,4) = '0799'
        Then Begin
           sql := 'update gelisDetay set TalepSira = '''' ' +
                  ' where TalepSira = ' + QuotedStr(talep);
           datalar.QueryExec(nil,sql);
           ListeS.DataController.SetValue(satir,ListeS.DataController.GetItemByFieldName('TalepSira').Index,'');
           txtHatalar1.Lines.Add(msg);
        End
        Else
        ShowMessageSkin(msg,'','','info');

     end;
    pnlDurum.Visible := false;
    SeansGetir;

end;



procedure TfrmHastaSeans.digerIslemTalepDoldur(satir : integer);
 var
 talep : string;
begin
    talep := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('TalepSira').Index);

    if talep = ''
    Then Begin
      datalar.DigerIslemTalebi.hizmetSunucuRefNo := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('sirano').Index);
      datalar.DigerIslemTalebi.takipNo := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('TakýpNo').Index);
      datalar.DigerIslemTalebi.basvuruNo := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('basvuruNo').Index);
      datalar.DigerIslemTalebi.drTescilNo := doktorTescil(ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('DoktorKod').Index));
      datalar.DigerIslemTalebi.adet := 1;
      datalar.DigerIslemTalebi.islemDurum := '';
      datalar.DigerIslemTalebi.islemTarihi := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('RTarihDateTime').Index);
      datalar.DigerIslemTalebi.saglikTesisKodu := datalar._kurumKod;
      datalar.DigerIslemTalebi.bransKodu := doktorBrans(ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('DoktorKod').Index));
      //gridHastalar.Cells[11,satir];//'1062';//datalar.DigerIslemTalebi.bransKodu;

      if ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('HemodiyalizTip').Index) = 'E'
      then
       datalar.DigerIslemTalebi.sutKodu := 'P704233'
      else
       datalar.DigerIslemTalebi.sutKodu := sutkodu(ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('HemodiyalizTip').Index));

      datalar.DigerIslemTalebi.raporTakipNo := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('raporTakipNo').Index);
      //raporTakipNobul(gridHastalar.Cells[7,satir]);
    End;
end;



procedure TfrmHastaSeans.MedulayaGonder;
var
   x , durum , _msg_,satir ,sirano: integer;
   oncekiTalepBilgisi ,sql , sonuc,talep  : string;
   HataliIslem : TStringList;
   fark : double;
begin

   if UserRight('MEDULA ÝÞLEMLERÝ', 'Ödeme Yolla') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

  txtHatalar1.Lines.Clear;

 (*
  if LisansKontrol(fark) = False
  Then Begin
    ShowMessageSkin('Lisans Yenileyin','','','info');
    exit;
  End;
   *)

  HataliIslem := TStringList.Create;

    durum := 0;

   pnlDurum.Visible := True;
 //  pnlAnimator.Animate := True;
   pnlDurum.Caption := 'Hizmet Kaydet';

   for x := 0 to ListeS.Controller.SelectedRowCount - 1 do
   begin
       Application.ProcessMessages;
       satir := ListeS.Controller.SelectedRows[x].RecordIndex;

    //   txtLog.Lines.Add(ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('hastaAdi').Index));

       durum := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('Durum').Index);
       try
        talep := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('TalepSira').Index) ;
       except
       end;

         Application.ProcessMessages;
         if (durum = 1) and (talep = '')
         then begin

                digerIslemTalepDoldur(satir);
              //  gridGelisler.Cells[8,x] := digerIslemTalepYap(datalar.DigerIslemTalebi,oncekiTalepBilgisi);


              if chkTahlil.Checked
              Then begin
                 tahlilBilgileri := TahlilM3(datalar.DigerIslemTalebi.TakipNo,'D','G');
                 tetkikveRadyoloji := RadM3(datalar.DigerIslemTalebi.TakipNo);
                 kadirMedula3.malzemeBilgisi := MalzemeM3(datalar.DigerIslemTalebi.TakipNo);
              End
              Else
              Begin
                tahlilBilgileri := nil;
                tetkikveRadyoloji := nil;
              End;

               sonuc := HizmetKayit_3(datalar.DigerIslemTalebi.basvuruNo,datalar.DigerIslemTalebi.TakipNo,
                              datalar.HizmetKayit,ameliyatveGirisim,
                              DigerIslemBilgileriM3_Satir(datalar.DigerIslemTalebi),
                              disBilgileri,ilacBilgileri,KonsiltasyonBilgisi,
                              malzemeBilgisi,muayeneBilgisi,
                              tahlilBilgileri,
                              TaniM3(datalar.DigerIslemTalebi.TakipNo),
                              tetkikveRadyoloji,
                              yatisBilgisi ,
                              //DigerIslemBilgileriYatisM3_Satir(datalar.DigerIslemTalebi),
                              //KayitliIslem,
                              HataliIslem,_msg_,'');



               if sonuc = '0000'
               Then Begin
//                                gridGelisler.Cells[8,x] := KayitliIslem[0].islemSiraNo;
                    sql := 'update gelisler set TakýpSend = ''9'''+
                           ' where takýpNo = ' + QuotedStr(datalar.DigerIslemTalebi.TakipNo);
                    datalar.QueryExec(nil, sql);

                    datalar.RxKayitliIslem.First;
                     while not datalar.RxKayitliIslem.Eof do
                     Begin
                         if copy(datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString,1,1) = 'Y'
                         Then Begin
                              (*
                               gridYatak.Cells[8,gridYatak.row] := datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString;
                               sql := 'update gelisDetay set islemSiraNoYatak = ' + QuotedStr(datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString) +
                                      ' where siraNoYatis = ' + QuotedStr(datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString);
                               datalar.QueryExec(ado,sql);
                               *)
                         End
                         Else
                         if copy(datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString,1,1) = 'T'
                         Then Begin
                             sql := 'update Anamnez_Icd set islemSiraNo = ' + QuotedStr(datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString) +
                                    ' where ID = ' + copy(datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString,2,15);
                             datalar.QueryExec(nil,sql);
                         End
                         Else
                         if copy(datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString,1,1) = 'L'
                         Then Begin
                            sql := 'update hareketler set islemSiraNo = ' + QuotedStr(datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString) +
                                   ' where SIRANO = ' + copy(datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString,2,15);
                            datalar.QueryExec(nil,sql);
                         End
                         Else
                         if copy(datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString,1,1) = 'M'
                         Then Begin
                            sql := 'update hareketlerIS set islemSiraNo = ' + QuotedStr(datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString) +
                                   ' where SIRANO = ' + copy(datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString,2,15);
                            datalar.QueryExec(nil,sql);
                         End
                         Else Begin
                           //  gridSeanslar.Cells[8,gridSeanslar.row] := datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString;
                               sql := 'update gelisDetay set TalepSira = ' + QuotedStr(datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString) +
                                      ',obje = ' + QuotedStr('Hasta_Kart_medula_Kaydet') +
                                      ' where siraNo = ' + trim(datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString);
                            datalar.QueryExec(nil,sql);

                            ListeS.DataController.SetValue(satir,ListeS.DataController.GetItemByFieldName('TalepSira').Index,datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString);

                             txtHatalar1.Lines.Add('Talep Sýra Ýþlendi:' + ' - ' +
                           //  'Hasta Adý :' + ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('hastaAdi').Index) + ' - ' +
                             'Talep Sira : ' + datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString + ' - ' +
                             'HizmetSunucuRefNo : ' + trim(datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString));


                         End;
                         datalar.RxKayitliIslem.Next;
                     End;

                     txtHatalar1.Lines.Add(datalar.DigerIslemTalebi.TakipNo + '-' + sonuc);
                     txtHatalar1.Lines.Add('--------------------------------------------------------------------------------------------');
                     txtHatalar1.Lines.SaveToFile('c:\NoktaV3\txtLog\' + FormatDateTime('DDMMYYYY_HHMMSS',now)+'.txt');

                  //   ShowMessageSkin('Ýþlemler Baþarý ile Kaydedildi','','','info');

               End
               Else
               Begin
                   GonderimMesaj(HataliIslem.Text,'C:\NoktaV3\wsHizmetKayit.xml');
                   txtHatalar1.Lines.Add(sonuc + ' ' +
                   HataliIslem.Text);
               End;

               sleep(2000);

         end;
    end;

    ADO_seans.Active := False;
    ADO_seans.Active := True;

    pnlDurum.Visible := false;
  //  ado.free;
    HataliIslem.Free;

end;


procedure TfrmHastaSeans.SeansGetir;
var
  sql : string;
  i ,_gun : integer;
  ado : TADOQuery;
  eskiRenk : Tcolor;
begin

   sql := 'select gd.Rtarih,gd.Utarih,gd.Durum,gd.DiyalizorTipi,gd.Doktor+''-''+d.ADI doktor,gd.doktor doktorKod,gd.sirano,gd.siranoYatis,'+
          ' CAST(gd.Rtarih AS DATETIME) RTarihDatetime, dbo.TarihguntoAdi(CAST(gd.Rtarih AS DATETIME)) SeansGunu,' +
          ' isnull(gd.TalepSira,'''') TalepSira,gd.islemSiraNoYatak,g.SERVIS,g.TakýpNo,gd.makinaNo,g.BasvuruNo,gd.HCOOO,gd.K,gd.CA,gd.GU,gd.HEPARIN,gd.DS,gd.GIRISYOLU,gd.DIYALIZSURESI, gd.APH,' +
          ' isnull(gd.GIRISKILO,0) as GIRISKILO,isnull(gd.CIKISKILO,0) as CIKISKILO,gd.CEKILECEKSIVI,isnull(gd.IDEALKILO,0) IDEALKILO,gd.sebeb,gd.seans , gd.D ' +
          ' ,gd.seansKontrol,gd.HemodiyalizTip,' +
          ' case when gd.HemodiyalizTip = ''E'' then ''3'' else case when gd.HemodiyalizTip = ''M'' then ''0'' else ''4'' end end as kod,' +
          ' isnull(gd.raporTakipNo,'''') raporTakipNo,R.raporNo,R.raporTarihi,R.verenTesisKodu,R.seansGun,seansSayi,R.baslangicTarihi,R.BitisTarihi,gd.obje,kurum.KURUMTIPI ' +
          ' from GelisDetay gd ' +
          ' inner join gelisler g on g.dosyaNo = gd.dosyaNo and g.gelisNo = gd.gelisNo ' +
          ' left join doktorlar d on d.kod = gd.doktor ' +
          ' left join raporlar R on R.raporTakipNo = gd.raporTakipNo and R.dosyaNo = gd.dosyaNo ' +
          ' join hastakart k on k.dosyano = g.dosyaNo ' +
          ' left join kurumlar kurum on kurum.kurum = k.kurum ' +
          ' where gd.dosyaNo =  ' + #39 + _dosyaNo_ + #39 +
          ' and gd.gelisNo = ' +  _GelisNo_ +
          ' order by gd.RTarih ';
  // datalar.QuerySelect(ado,sql);
   datalar.QuerySelect(Ado_Seans,sql);


   ADO_Detay_toplam.Close;
   ADO_Detay_toplam.Parameters[0].Value := copy(NoktasizTarih(_provizyonTarihi_),1,6);
   ADO_Detay_toplam.Open;

end;

procedure TfrmHastaSeans.SeansSil;
var
  sql,talep : string;
  St : TCheckBoxState;
  _r_,satir,sirano,durum : integer;
begin
   if UserRight('SEANS iÞLEMLERÝ', 'Sil') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

   satir := ListeS.Controller.SelectedRows[0].RecordIndex;
   sirano := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('sirano').Index);
   talep := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('TalepSira').Index);
   durum := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('durum').Index);
 //  if gridSeanslar.RowCount = 2 then exit;

  if (talep = '') and (durum = 0)
  then begin
          if mryes = ShowMessageSkin('Satýrý Silmek Ýstediðinizden Emin misiniz ?','','','msg')
          then begin
            try
             sql := 'delete from gelisdetay where sirano = ' + inttostr(sirano);
             datalar.QueryExec(nil,sql);
             ADO_seans.Active := false;
             ADO_seans.Active := True;
            except
            end;
          end;
  end else
  begin
       ShowMessageSkin('Talep Ýptal Edilmeden Yada Seans Onayý Varken Seansý Silemezsiniz','','','info');
  end;
end;


procedure TfrmHastaSeans.cxButtonCClick(Sender: TObject);
var
   Year, Month, Day: Word;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  case TControl(sender).Tag of
  -1 : begin

       end;

  -2 : begin

       end;
  -3 : begin

       end;
  -4 : begin
         SeansTarihiDegistir;
       end;
  -5 : begin
         DoktorBilgisiDegis;
       end;
  260 : begin
         IzlemFormu;
       end;
  -7 : begin
         DamarIziKontrol;
       end;
  -8 : begin
         MeduladanSil;
       end;

  -9 : begin
         MedulayaGonder;
       end;

  -10 : begin
          seansSil;
        end;

  -11 : begin
          SeansOlustur;

        end;
  end;


//
end;

procedure TfrmHastaSeans.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmHastaSeans.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmHastaSeans.cxTextEditBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//
end;

procedure TfrmHastaSeans.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmHastaSeans.FormCreate(Sender: TObject);
var
  index,i : integer;
  Ts : TStringList;

begin
  Tag := TagfrmHastaSeans;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  Olustur(self,_TableName_,'Hasta Seans Kartý',21,'');

  Menu := PopupMenu5;

  cxPanel.Visible := false;
  Sayfalar.Properties.HideTabs := True;

  setDataStringKontrol(self,PageControl_Seans , 'PageControl_Seans','',Kolon1,'',758);


  SayfaCaption('Seanslar','','','','');

  kolon2.Width := 0;
  kolon3.Width := 0;
  kolon2.Visible := false;
  kolon3.Visible := false;


 end;





procedure TfrmHastaSeans.FormShow(Sender: TObject);
var
  sqlText : string;
begin
  inherited;
//  sqlText := Format(SQL,[#39+_dosyaNo_+#39,_gelisNO_]);
//  datalar.QuerySelect(Ado_Seans,sqlText);
//  SeansGetir;


end;

procedure TfrmHastaSeans.ListeraporTakipNoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  List : ArrayListeSecimler;
  ado : TADOQuery;
  sql,RTarih : string;
begin
  inherited;
  ListeAc2.Where := 'dosyaNo = ' + QuotedStr(_dosyaNo_);
  List := ListeAc2.xListeGetir;
  ADO_seans.Edit;
  ADO_seans.FieldByName('raporTakipNo').AsString := List[0].kolon1;
  ADO_seans.Post;

  RTarih := ADO_seans.FieldByName('RTarih').AsString;
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  sql := 'update gelisdetay set raporTakipNo = ' + QuotedStr(List[0].kolon1) +
         ' where dosyaNo = ' + QuotedStr(_dosyaNo_)  + ' and RTarih > ' + QuotedStr(RTarih) + ' and durum = 0 ';
  datalar.QueryExec(ado,sql);
  ado.Free;

  ADO_seans.Requery();
end;

procedure TfrmHastaSeans.ListeSCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  durum ,satir : integer;
  talepSira , kod , Rtarih , sql ,ktip , takipno ,makineNo,Hst,seans : string;
  ado : TADOQuery;
begin
  satir := ListeS.Controller.SelectedRows[0].RecordIndex;
  if (ACellViewInfo.Item.Index = 6) and (TakipFaturadami(_TakipNo_) = False)
  then begin
    if ACellViewInfo.GridView.DataController.Values[satir,6] = 0
    then
     durum := 1
    else
     durum := 0;

       Application.ProcessMessages;
       satir := ListeS.Controller.SelectedRows[0].RecordIndex;
       ListeS.DataController.FocusedRecordIndex := satir;
       RTarih := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('RTarih').Index);
       kod := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('HemodiyalizTip').Index);
//       durum := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('Durum').Index);
       talepSira := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('TalepSira').Index);
       ktip := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('KURUMTIPI').Index);
       takipno := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('TakýpNo').Index);
       makineNo := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('makinaNo').Index);
       seans := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('Seans').Index);

       if ((ktip = '1') or (ktip = '99')) and (takipno = '')
       then begin
           ShowMessageSkin('SGK Hastalarýna Takip Almadan Seans Onaylayamazsýnýz','','','info');
           exit;
       end;


       if  talepSira = ''
       then begin

             if makineNo <> ''
             then begin
             Hst := SeansKontrol(seans,makineNo,RTarih,_DosyaNo_);
             if Hst <> ''
             then begin
               ShowMessageSkin('Makina No Kontrol Ediniz,','Ayný Seansta ' + Hst ,' Seans Görmüþ' ,'info');
             end;
             end;


           ListeS.DataController.SetEditValue(ListeS.DataController.GetItemByFieldName('Durum').Index,durum,evsValue);
        //   SetValue(satir,Liste.DataController.GetItemByFieldName('Durum').Index,TMenuItem(sender).Tag);

      //     sql := 'update gelisdetay set durum = ' + inttostr(TMenuItem(sender).Tag) + ' where sirano = ' + inttostr(sirano);
       //    datalar.QueryExec(ado,sql);

           try
            ado := TADOQuery.Create(nil);
            sql := 'select dbo.fn_P704230Count(' + QuotedStr(RTarih) + ') t';
            datalar.QuerySelect(ado,sql);
           except
            ado.Free;
           end;

           if not ado.Eof
           then
            if kod <> 'E'
            Then
              if ado.Fields[0].AsInteger >= 700
              then begin
             //   sql := 'update gelisdetay set HemodiyalizTip = ''7'' where sirano = ' + inttostr(sirano);
              //  datalar.QueryExec(ado,sql);
                ListeS.DataController.SetEditValue(ListeS.DataController.GetItemByFieldName('HemodiyalizTip').Index,'7',evsValue);
              end
              else begin
                //sql := 'update gelisdetay set HemodiyalizTip = ''M'' where sirano = ' + inttostr(sirano);
                //datalar.QueryExec(ado,sql);
                ListeS.DataController.SetEditValue(ListeS.DataController.GetItemByFieldName('HemodiyalizTip').Index,'M',evsValue);
              end;
           ado.Free;
           ListeS.DataController.post;
           ADO_Detay_toplam.Close;
           ADO_Detay_toplam.Parameters[0].Value :=  copy(RTarih,1,6);
           ADO_Detay_toplam.Active := True;

       end; // talep end

  end;

end;

procedure TfrmHastaSeans.ListeSFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
   if Ado_Seans.FieldByName('Talepsira').AsString <> ''
   then Sender.OptionsData.Editing := False
   else Sender.OptionsData.Editing := True;
end;

procedure TfrmHastaSeans.ListeSStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
 try
  if (ARecord.Values[ListeS.DataController.GetItemByFieldName('HemodiyalizTip').Index]  = 'M')
  Then
    if (AItem = Listekod) then AStyle := cxStyle1;

  if (ARecord.Values[ListeS.DataController.GetItemByFieldName('HemodiyalizTip').Index]  = '7')
  Then
    if (AItem = Listekod) then AStyle := cxStyle2;


 except end;
end;

procedure TfrmHastaSeans.PanelDoktorDuzelt_KapatClick(Sender: TObject);
begin
  inherited;
  PanelDoktorDuzelt.Visible := false;
end;

procedure TfrmHastaSeans.PanelDoktorDuzelt_TamamClick(Sender: TObject);
var
   x ,sirano , satir , durum : integer;
   secim : boolean;
   _secim ,sql , kod , talepSira: string;
begin

          PanelDoktorDuzelt.Visible := false;

          if ListeS.Controller.SelectedRowCount > 1
          then begin
    //         pnlDurum.Visible := True;
    //         pnlAnimator.Animate := True;
    //         pnlDurum.Caption := 'Seans Doktor Deðiþtir';
          end;

          for x := 0 to ListeS.Controller.SelectedRowCount - 1 do
          begin
             Application.ProcessMessages;
             satir := ListeS.Controller.SelectedRows[x].RecordIndex;
             ListeS.DataController.FocusedRecordIndex := satir;
             sirano := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('sirano').Index);
             kod := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('HemodiyalizTip').Index);
             durum := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('Durum').Index);
             talepSira := ListeS.DataController.GetValue(satir,ListeS.DataController.GetItemByFieldName('TalepSira').Index);

             if  talepSira = ''
             then begin
                 ListeS.DataController.SetEditValue(ListeS.DataController.GetItemByFieldName('DoktorKod').Index,datalar.Ado_Doktorlar.FieldByName('kod').AsString,evsValue);
                 ListeS.DataController.post;
             end; // talep end

          end; // for end

 //   pnlDurum.Visible := false;


end;

procedure TfrmHastaSeans.PanelTarihDuzelt_KapatClick(Sender: TObject);
begin
  inherited;
  PaneltarihDuzelt.Visible := false;
end;

procedure TfrmHastaSeans.PanelTarihDuzelt_TamamClick(Sender: TObject);
var
  sql , sonuc : string;
  x ,satir , satirs , satirlar ,ayr , ayu , ayp ,_row_  : integer;
  ado : TADOQuery;
  bm : TBookmark;
begin
   if tarihal(txtt.Date) = '00000000' then exit;
   bm := ADO_seans.Bookmark;
   ADO_seans.Edit;
   ADO_seans.FieldByName('RTarih').AsString := tarihal(txtt.Date);
//   Liste.DataController.setValue(strtoint(lblSira.Caption),Liste.DataController.GetItemByFieldName('RTarih').Index,tarihal(txtt.Date));
   ADO_seans.Post;

   ADO_seans.Active := false;
   ADO_seans.Active := True;
   ADO_seans.GotoBookmark(bm);
end;

procedure TfrmHastaSeans.cxKaydetClick(Sender: TObject);
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  case TcxButton(sender).Tag  of
    0 : begin
        // ShowMessage('Kaydet');
        // ButonClick(self,'k');
      //   Olustur(self,'Users');
      //   setDataString(self,'ADISOYADI',100,10);

        end;
    1 : begin
         // post;
         //ShowMessage('Ýptal');
    end;
  end;
end;

end.
