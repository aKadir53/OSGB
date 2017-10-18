unit HastaKart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,pngImage,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,
  kadirType,KadirLabel,Kadir,Data_Modul,strUtils,
  GirisUnit, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,jpeg,
  dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, cxRadioGroup, cxDropDownEdit,
  cxCalendar, cxImageComboBox, cxPCdxBarPopupMenu, cxPC, cxCheckGroup, cxImage,
  cxGridBandedTableView, cxGridDBBandedTableView, cxSplitter, cxCheckBox,
  cxDBLookupComboBox, cxCurrencyEdit, cxVGrid, cxDBVGrid, cxInplaceContainer,
  cxLabel, Vcl.Buttons, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxLayoutContainer, dxLayoutControl, cxMemo,GetFormClass,
  dxSkinsdxStatusBarPainter, dxStatusBar, cxCheckListBox, dxSkinBlack,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;



type
  TfrmHastaKart = class(TGirisForm)
    CINSIYETI: TcxImageComboBox;
    MEDENI: TcxImageComboBox;
    DURUM: TcxImageComboBox;
    VatandasTip: TcxImageComboBox;
    seansGunleri: TcxCheckGroup;
    DOGUMTARIHI: TcxDateEditKadir;
    PopupMenu1: TPopupMenu;
    MenucxYeni: TMenuItem;
    MenucxKaydet: TMenuItem;
    MenucxIptal: TMenuItem;
    N1: TMenuItem;
    Kapat1: TMenuItem;
    cxFotoPanel: TcxGroupBox;
    Foto: TcxImage;
    cxFotoEkleButton: TcxButton;
    dosyaNo: TcxButtonEditKadir;
    N2: TMenuItem;
    cxpnlHastaGelisler: TcxGroupBox;
    cxGridGelis: TcxGrid;
    DataSource1: TDataSource;
    cxGridGelisLevel1: TcxGridLevel;
    cxGridGelisler: TcxGridDBBandedTableView;
    cxGridGelislerdosyaNo: TcxGridDBBandedColumn;
    cxGridGelislergelisNo: TcxGridDBBandedColumn;
    cxGridGelislerBHDAT: TcxGridDBBandedColumn;
    cxGridGelislerdoktor: TcxGridDBBandedColumn;
    cxGridGelislerSERVIS: TcxGridDBBandedColumn;
    cxGridGelislerTEDAVITURU: TcxGridDBBandedColumn;
    cxGridGelislerKullanici: TcxGridDBBandedColumn;
    cxGridGelislerTakpNo: TcxGridDBBandedColumn;
    cxGridGelislerBasvuruNo: TcxGridDBBandedColumn;
    cxGridGelislerilkTakipNo: TcxGridDBBandedColumn;
    cxGridGelislerSIRANO: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    ADO_Gelisler: TADOQuery;
    lemler1: TMenuItem;
    KANGRUBU: TcxImageComboBox;
    txtAktif: TcxImageComboBox;
    ListeAc3: TListeAc;
    txtSeansSikayet: TcxCheckGroup;
    AKart1: TMenuItem;
    Epikriz1: TMenuItem;
    PopupMenu2: TPopupMenu;
    GeliA1: TMenuItem;
    SmsGnder1: TMenuItem;
    HastaRaporlar1: TMenuItem;
    G1: TMenuItem;
    T1: TMenuItem;
    R1: TMenuItem;
    N3: TMenuItem;
    G2: TMenuItem;
    T2: TMenuItem;
    IseGirisMuayene: TcxGridKadir;
    GridList: TcxGridDBBandedTableView;
    GridListMuayeneSoru: TcxGridDBBandedColumn;
    GridListGrupKod: TcxGridDBBandedColumn;
    GridListaltGrupKod: TcxGridDBBandedColumn;
    GridListGrupTanimi: TcxGridDBBandedColumn;
    GridListaltGrupTanimi: TcxGridDBBandedColumn;
    GridListvalue: TcxGridDBBandedColumn;
    GridListtarih: TcxGridDBBandedColumn;
    GridListvalueObjevalues: TcxGridDBBandedColumn;
    GridListvalueTip: TcxGridDBBandedColumn;
    GridListDesc: TcxGridDBBandedColumn;
    IseGirisMuayeneLevel1: TcxGridLevel;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle3: TcxStyle;
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTextEditBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure seansGunleriPropertiesEditValueChanged(Sender: TObject);
    procedure FotoEkle;
    procedure FotoNewRecord;
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TakipAl;
    function TakipSil(TakipNo : string) : string;
    procedure Gelisler(kartNo : string);
    procedure cxGridGelislerDblClick(Sender: TObject);
    procedure txtTipPropertiesChange(Sender: TObject);
    procedure txtAktifPropertiesChange(Sender: TObject);
    procedure Combo;
    procedure GelisAc;
    procedure GelisSil;
    procedure GelisDuzenle;
    procedure HastaRaporlari;
    procedure txtBobrekHastaligiPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure PropertiesEditValueChanged(Sender: TObject);
    procedure cxGridGelislerFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure DOGUMTARIHIPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure ADO_WebServisErisimAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure OrtakEventAta(Sender : TObject);overload;
    procedure OrtakEventAta(Sender : TcxImageComboKadir);overload;
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'PersonelKart';
      formGenislik = 750;
      formYukseklik = 580;
      sqlInsert = 'exec sp_YeniHastaKarti ';//,%s,%s,%s,%s,%s,%s';
      sqlUpdate = 'exec sp_GuncelHastaKarti ';
      sqlDelete = 'delete from HastaKart where dosyaNo = %s';
      FotoTable = 'select * from PersonelFoto where dosyaNo = %s';

var
  frmHastaKart: TfrmHastaKart;
  ord : integer;
  _gez : integer;
  aktifKart : integer = 0;
  kart : sqlType;

implementation
    uses AnaUnit, HastaAsiKArti,SMS;
{$R *.dfm}



procedure TfrmHastaKart.ADO_WebServisErisimAfterScroll(DataSet: TDataSet);
var
  ValueCombo,ValueObjeValues : String;
  ValuesCombo : TStringList;
  item : TcxRadioGroupItem;
begin

  if IseGirisMuayene.Dataset.FieldByName('ValueTip').AsString = 'R'
  then begin
        ValuesCombo := TStringList.Create;
        ValueObjeValues := IseGirisMuayene.Dataset.FieldByName('ValueObjeValues').AsString;
        GridListValue.PropertiesClassName := 'TcxRadioGroupProperties';
        TcxRadioGroupProperties(GridListValue.Properties).Items.Clear;
        ExtractStrings([','], [], PChar(ValueObjeValues),ValuesCombo);
        for ValueCombo in  ValuesCombo  do
        begin
          item := TcxRadioGroupProperties(GridListValue.Properties).Items.Add;
          item.Caption := ValueCombo;
          item.Value := ValueCombo;
        end;
        ValuesCombo.Free;
  end
  else
  if IseGirisMuayene.Dataset.FieldByName('ValueTip').AsString = 'B'
  then begin
       GridListValue.PropertiesClassName := 'TcxCheckBoxProperties';
       TcxCheckBoxProperties(GridListValue.Properties).ValueChecked := '1';
       TcxCheckBoxProperties(GridListValue.Properties).ValueUnchecked := '0';
       TcxCheckBoxProperties(GridListValue.Properties).ValueGrayed := '';
  end
  Else
  if IseGirisMuayene.Dataset.FieldByName('ValueTip').AsString = 'C'
  then begin
    if length(IseGirisMuayene.Dataset.FieldByName('ValueTip').AsString) = 2
    then begin
      ValuesCombo := TStringList.Create;
      ValueObjeValues := IseGirisMuayene.Dataset.FieldByName('defaultValue').AsString;
      GridListDesc.Options.Editing := True;
      GridListDesc.PropertiesClassName := 'TcxComboBoxProperties';
      TcxComboBoxProperties(GridListDesc.Properties).Items.Clear;
      ExtractStrings([','], [], PChar(ValueObjeValues),ValuesCombo);
      for ValueCombo in  ValuesCombo  do
      begin
       TcxComboBoxProperties(GridListDesc.Properties).Items.Add(ValueCombo);
      end;
      ValuesCombo.Free;
    end;
    GridListDesc.Options.Editing:= False;
    ValuesCombo := TStringList.Create;
    ValueObjeValues := IseGirisMuayene.Dataset.FieldByName('ValueObjeValues').AsString;
    GridListValue.PropertiesClassName := 'TcxComboBoxProperties';
    TcxComboBoxProperties(GridListValue.Properties).Items.Clear;
    ExtractStrings([','], [], PChar(ValueObjeValues),ValuesCombo);
    for ValueCombo in  ValuesCombo  do
    begin
     TcxComboBoxProperties(GridListValue.Properties).Items.Add(ValueCombo);
    end;
    ValuesCombo.Free;
  end
  else
  begin
    GridListValue.PropertiesClassName := 'TcxTextEditProperties';
    GridListDesc.Options.Editing:= True;
  end;
end;


procedure TfrmHastaKart.HastaRaporlari;
begin
      if dosyaNo.Text = ''
     then exit;
   (*
     HastaBilgileri.TcKimlikNo := txtTcKimlikNo.Text;
     HastaBilgileri.karneNo := txtKarneNo.Text;
     HastaBilgileri.sosyalGuvenlikNo := txtSosyalGuvenlikNo.Text;
     HastaBilgileri.yakinlikKodu := copy(txtYakinlik.Text,1,4);
     HastaBilgileri.sigortaliTuru := copy(txtSigortaliTur.Text,1,1);
     HastaBilgileri.devredilenKurum := trim(copy(txtKurumTipi.Text,1,2));
     HastaBilgileri.provizyonTipi := 'N';
     HastaBilgileri.Adi := txtHastaAdi.Text + ' ' + txtSoyAdi.Text;
     HastaBilgileri.dosyaNo := txtDosyaNo.Text;
     HastaBilgileri.provizyontarihi := frmHastaKarti.gridGelisler.Cells[3,frmHastaKarti.gridGelisler.Row];
     datalar._takip_ := gridGelisler.Cells[2,gridGelisler.Row];
     *)
      if UserRight('Hasta Kartý', 'Rapor') = False
     then begin
         ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
         exit;
     end;




end;


procedure TfrmHastaKart.gelisDuzenle;
var
 x ,satir : integer;
 hata : string;
begin
    datalar.GelisDuzenleRecord.TedaviYontemi := ADO_Gelisler.FieldByName('TEDAVITURU').AsString;
    datalar.GelisDuzenleRecord.dosyaNo := dosyaNO.Text;
    datalar.GelisDuzenleRecord.gelisNo := _gelisNo_;
    datalar.GelisDuzenleRecord.TakipNo := _TakipNo_;
    datalar.GelisDuzenleRecord.basvuruNo := _BasvuruNo_;
    datalar.GelisDuzenleRecord.BransKodu := ADO_Gelisler.FieldByName('SERVIS').AsString;
  //  datalar.GelisDuzenleRecord.TaburcuKodu := ADO_Gelisler.FieldByName('Taburcu').AsString;
    datalar.GelisDuzenleRecord.doktor := ado_gelisler.FieldByName('doktor').AsString;
    datalar.GelisDuzenleRecord.ProtokolNo := ado_gelisler.FieldByName('protokolNo').AsString;
  //  datalar.GelisDuzenleRecord.Yupass := ADO_Gelisler.FieldByName('Yupass').AsString;
    datalar.GelisDuzenleRecord.GirisTarihi :=  ado_gelisler.FieldByName('Tarih').AsDateTime;
  //  datalar.GelisDuzenleRecord.CikisTarih :=  ado_gelisler.FieldByName('CikisTarih').AsDateTime;

    if mrYes = ShowPopupForm('Geliþ Düzenle',gdgelisDuzenle)
    Then Begin
       if kadir.gelisDuzenle(datalar.GelisDuzenleRecord,Hata)
       Then begin
        Gelisler(dosyaNo.Text);
        ShowMessageSkin('Geliþ Bilgisi Düzenlendi','','','info');
       end
       else ShowMessageSkin(Hata,'','','info')
    End;

end;

procedure TfrmHastaKart.gelisSil;
var
  ado : TADOQuery;
  ug,s,p : integer;
  sql : string;
begin
   if _gelisNo_ = '' then exit;


   if UserRight('Muayene Ýþlemleri', 'Sil') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   try
       sql := 'Delete from Gelisler where dosyaNo = ' + #39 + DosyaNo.Text + #39 +
              ' and gelisNo = ' + _gelisNo_;
       datalar.QueryExec(ado,sql);


       ado.Free;
       Gelisler(DosyaNo.Text);
   except on e : exception do
     begin
      ShowMessageSkin(e.Message,'','','info');
      ado.Free;
      exit;
     end;
   end;
end;


procedure TfrmHastaKart.gelisAc;
var
  sql , Gelis , error ,Tarih , TedaviTuru : string;
  _tarih_ : Tdate;
begin

   if dosyaNo.Text = ''
   then begin
     exit;
   end;

   if TcxCustomEdit(FindComponent('Aktif')).EditValue = '0'
   then exit;


   if UserRight('Muayene Ýþlemleri', 'Yeni Muayene') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;


    if mrYes = ShowPopupForm('Geliþ Aç',gdgelisAc)
    Then Begin
        _Tarih_ := datalar.GelisDuzenleRecord.GirisTarihi;
        TedaviTuru := datalar.GelisDuzenleRecord.TedaviYontemi;
    End
    else
     exit;


 (*
   try
    _tarih_ := strtodate(Tarih);
   except
     ShowMessageSkin('Tarih Bilgisi Hatalý','','','info');
     exit;
   end;
   *)

   sql := 'exec sp_GelisKaydet ' +
          '@dosyaNo = ' + #39 + dosyaNo.Text + #39 + ',' +
          '@gelisNo = 0 ,' +
          '@BHDAT = ' + #39 + tarihal(_Tarih_) + #39 + ',' +
          '@doktor = ' + #39 + '' + #39 + ',' +
          '@SERVIS = ' + #39 + '' + #39 + ',' +
          '@TEDAVITURU = ' + #39 + TedaviTuru + #39 + ',' +
          '@Kullanici = ' + #39 + datalar.username + #39 + ',' +
          '@sirketKod = ' + QuotedStr(sirketKod.Text);


     datalar.QuerySelect(datalar.ADO_SQL,sql);

     gelis := datalar.ADO_SQL.fieldbyname('Gelis').AsString;
     error := datalar.ADO_SQL.fieldbyname('error').AsString;

     if gelis = '-1'
     then begin
        ShowMessageSkin(error,'','','info');
        exit;
     end;

     Gelisler(dosyaNo.Text);


end;




procedure TfrmHastaKart.OrtakEventAta(Sender : TObject);
begin
  TcxButtonEditKadir(sender).Properties.OnButtonClick := cxButtonEditPropertiesButtonClick;
  TcxButtonEditKadir(sender).OnEnter := cxEditEnter;
  TcxButtonEditKadir(sender).OnExit := cxEditExit;
  TcxButtonEditKadir(sender).OnKeyDown := cxTextEditBKeyDown;
  TcxButtonEditKadir(sender).Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;

procedure TfrmHastaKart.OrtakEventAta(Sender : TcxImageComboKadir);
begin
  TcxImageComboKadir (sender).OnEnter := cxEditEnter;
  TcxImageComboKadir(sender).OnExit := cxEditExit;
  TcxImageComboKadir(sender).OnKeyDown := cxTextEditBKeyDown;
  TcxImageComboKadir(sender).Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;

procedure TfrmHastaKart.Gelisler(kartNo : string);
var
  sql : string;
  i : integer;
begin
 HastaGelis(kartNo,ADO_Gelisler);
end;



procedure TfrmHastaKart.TakipAl;
begin
     if ADO_Gelisler.FieldByName('TakIpNo').AsString <> ''
     Then Begin
          ShowMessageskin('Mevcut Takip Numarasý Var , Takip Alýnamaz','','','info');
          exit;
     End;

     if (copy(TcxCustomEdit(FindComponent('KurumTip')).EditingValue,1,1) = '8')
     then begin
         exit;

     end else
     begin


     end;

end;


procedure TfrmHastaKart.txtAktifPropertiesChange(Sender: TObject);
var
   sql , _aktif , _pasifTarih : string;
begin
   if DosyaNo.Text = '' then exit;

   if aktifKart = 0
   then begin
       if txtAktif.ItemIndex in [1,2]
       then begin
         _aktif := inttostr(txtAktif.ItemIndex);
         _pasifTarih := '';

       end
       else
       if txtAktif.ItemIndex = 0
       then begin
         _aktif := '0';
         _pasifTarih := tarihal(date());

       end
       else begin
         _pasifTarih := tarihal(date());
         _aktif := '2';
       end;
       sql := 'update HastaKart set aktif = ' + #39 + _aktif + #39 + ', pasifTarih = ' + #39 + _pasifTarih + #39 +
              ' where dosyaNo = ' + #39 + DosyaNo.Text + #39;
       datalar.QueryExec(datalar.ADO_SQL1,sql);


       (*
       btnKaydet.Enabled := false;
       btnGuncelle.Enabled := true;
       btnAra.Enabled := True;
       btnVazgec.Enabled := True;
       Disable;*)

       ord := 2;
       aktifKart := 1;
       txtAktif.Enabled := false;
   end;

end;

procedure TfrmHastaKart.txtBobrekHastaligiPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  List : ArrayListeSecimler;
begin
    List := ListeAc3.ListeGetir;
    if length(List) > 0
    Then BEgin
       TcxButtonEdit(sender).Text := List[0].kolon1 + '-' + List[0].kolon2;
    End;
end;

procedure TfrmHastaKart.PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if TcxImageComboKadir(sender).Name = 'EV_SEHIR'
  then begin
    TcxImageComboKadir(FindComponent('EV_ILCE')).TableName := 'SKRS_ILCE_KODLARI';
    TcxImageComboKadir(FindComponent('EV_ILCE')).Filter := 'ILKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('EV_SEHIR')).EditingValue);
    if FindComponent('EV_ILCE') <> nil Then TcxImageComboKadir(FindComponent('EV_ILCE')).EditValue := '';
  end
  else
  if TcxImageComboKadir(sender).Name = 'EV_ILCE'
  then begin
    TcxImageComboKadir(FindComponent('EV_BUCAK')).TableName := 'SKRS_BUCAK_KODLARI';
    TcxImageComboKadir(FindComponent('EV_BUCAK')).Filter := 'ILCEKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('EV_ILCE')).EditingValue);
    if FindComponent('EV_BUCAK') <> nil Then TcxImageComboKadir(FindComponent('EV_BUCAK')).EditValue := '';
  end
  else
  if TcxImageComboKadir(sender).Name = 'EV_BUCAK'
  then begin
    TcxImageComboKadir(FindComponent('EV_KOY')).TableName := 'SKRS_KOY_KODLARI';
    TcxImageComboKadir(FindComponent('EV_KOY')).Filter := 'BUCAKKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('EV_BUCAK')).EditingValue);
    if FindComponent('EV_KOY') <> nil Then TcxImageComboKadir(FindComponent('EV_KOY')).EditValue := '';
  end
  else
  if TcxImageComboKadir(sender).Name = 'EV_KOY'
  then begin
    TcxImageComboKadir(FindComponent('EV_MAHALLE')).TableName := 'SKRS_MAHALLE_KODLARI';
    TcxImageComboKadir(FindComponent('EV_MAHALLE')).Filter := 'KOYKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('EV_KOY')).EditingValue);
    if FindComponent('EV_MAHALLE') <> nil Then TcxImageComboKadir(FindComponent('EV_MAHALLE')).EditValue := '';
  end ;

end;

procedure TfrmHastaKart.txtTipPropertiesChange(Sender: TObject);
begin
  inherited;
      (*
      if txtTip.ItemIndex = 0
      then begin
        sheetSeans.TabVisible := True;
        sheetPeriton.TabVisible := false;
        pnlH.Visible := True;
        pnlP.Visible := False;
      end
      else
      begin
        sheetSeans.TabVisible := False;
        sheetPeriton.TabVisible := True;
        pnlH.Visible := False;
        pnlP.Visible := True;
      end; *)
end;

function TfrmHastaKart.TakipSil;
begin
//
end;

procedure TfrmHastaKart.FotoNewRecord;
var
 sql,dosyaNo : string;
 ado : TADOQuery;
begin
  dosyaNo := TcxButtonEditKadir(FindComponent('dosyaNo')).Text;
  ado := TADOQuery.Create(nil);
  sql := 'if not exists(select dosyaNo from PersonelFoto where dosyaNo = ' + QuotedStr(dosyaNo) + ')' +
         ' insert into PersonelFoto (dosyaNo,foto,tip) ' +
         ' values (' + QuotedStr(dosyaNo) + ',NULL,''H'')';
  datalar.QueryExec(ado,sql);
  ado.Free;

end;

procedure TfrmHastaKart.FotoEkle;
var
 Fo : TFileOpenDialog;
 filename,dosyaNo : string;
 jp : TJPEGImage;
begin
  dosyaNo := TcxButtonEditKadir(FindComponent('dosyaNo')).Text;
  datalar.ADO_Foto.SQL.Text := Format(FotoTable,[#39+dosyaNo+#39]);
  datalar.ADO_FOTO.Open;
  datalar.ADO_FOTO.Edit;

  Fo := TFileOpenDialog.Create(nil);
  fo.Execute;
  filename := fo.FileName;
  fo.Free;
  Foto.Picture.LoadFromFile(filename);

  jp := TJpegimage.Create;
  jp.Assign(FOTO.Picture);
  datalar.ADO_FOTO.FieldByName('Foto').Assign(jp);
  datalar.ADO_FOTO.Post;
  jp.Free;
end;


procedure TfrmHastaKart.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
 g : TGraphic;
 imgList : TcxImageList;
 i : integer;
 pngbmp: TPngImage;
 bmp: TBitmap;
begin
  inherited;

  case TcxButtonEditKadir(sender).tag of
   1 : begin  //dosyaNo buttonedit
           TcxImageComboKadir(FindComponent('Sirketlerx')).EditValue := TcxLabel(FindComponent('LabelSirketKod')).Caption;

           TcxImageComboKadir(FindComponent('EV_ILCE')).Filter := 'ILKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('EV_SEHIR')).EditingValue);
           TcxImageComboKadir(FindComponent('EV_BUCAK')).Filter := 'ILCEKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('EV_ILCE')).EditingValue);
           TcxImageComboKadir(FindComponent('EV_KOY')).Filter := 'BUCAKKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('EV_BUCAK')).EditingValue);
           TcxImageComboKadir(FindComponent('EV_MAHALLE')).Filter := 'KOYKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('EV_KOY')).EditingValue);


           _dosyaNo_ := TcxButtonEditKadir(sender).Text;
           _Tc_ := TcxTextEditKadir(FindComponent('TcKimlikNo')).Text;
           _HastaAdSoyad_ := TcxTextEditKadir(FindComponent('HASTAADI')).Text +
                             ' ' + TcxTextEditKadir(FindComponent('HASTASOYADI')).Text;
           HastaBilgiRecordSet(TcxTextEditKadir(FindComponent('HASTAADI')).Text,
                               TcxTextEditKadir(FindComponent('HASTASOYADI')).Text,
                               _Tc_,'');

           datalar.ADO_Foto.SQL.Text := Format(FotoTable,[#39+_dosyaNo_+#39]);
           datalar.ADO_FOTO.Open;

           g := TJpegimage.Create;
           try
            if datalar.ADO_FOTO.FieldByName('foto').AsVariant <> Null
            Then begin
              g.Assign(datalar.ADO_FOTO.FieldByName('foto'));
              FOTO.Picture.Assign(g);
            end
            else
            FOTO.Picture.Assign(nil);
           except
             g.Free;
           end;

           Gelisler(TcxButtonEditKadir(sender).Text);

      //     _gelisNO_ := ADO_Gelisler.FieldByName('gelisNO').AsString;



       end;


   end;
end;

procedure TfrmHastaKart.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmHastaKart.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmHastaKart.cxGridGelislerDblClick(Sender: TObject);
begin
  inherited;
//    SeansKart1.Click;
end;

procedure TfrmHastaKart.cxGridGelislerFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if ADO_Gelisler.Active
  Then begin
    _gelisNo_ := ADO_Gelisler.FieldByName('gelisNo').AsString;
    if _gelisNO_ <> ''
    then  begin
      _gelisNo_ := ifThen(_gelisNo_ = '','0',_gelisNo_);
      _provizyonTarihi_ := ADO_Gelisler.FieldByName('Tarih').AsString;
      _Doktor_ := ADO_Gelisler.FieldByName('doktor').AsString;
      datalar.Bilgi.gelisNo := ADO_Gelisler.FieldByName('gelisNo').AsString;
      datalar.Bilgi.Doktor := ADO_Gelisler.FieldByName('doktor').AsString;
      datalar.Bilgi.ProvizyonTarihi := ADO_Gelisler.FieldByName('Tarih').AsString;

      IseGirisMuayene.Dataset.Connection := datalar.ADOConnection2;
      IseGirisMuayene.Dataset.SQL.Text := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(dosyaNo.Text)+ ',' +
                                                                         _gelisNO_;
      IseGirisMuayene.Dataset.Open;
    end
    else
      IseGirisMuayene.Dataset.close;

  end;
end;

procedure TfrmHastaKart.cxTextEditBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   cxButtonEditPropertiesButtonClick(TcxButtonEditKadir(sender),-1);
end;

procedure TfrmHastaKart.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


           Gelisler(TcxButtonEditKadir(sender).Text);
end;



procedure TfrmHastaKart.DOGUMTARIHIPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
//
end;

procedure TfrmHastaKart.Combo;
var
  sql : string;
begin
  (*
   datalar.ADO_SQL.Close;
   DATALAR.ADO_SQL.SQL.Clear;

   sql := 'select SLT from Parametreler where SLK = ''40'' and SLB = ''KH''';
   ComboDoldur(datalar.ADO_SQL,sql,txtKomorbitHastalik);
   DATALAR.ADO_SQL.SQL.Clear;

 //  ComboDoldurName('',txtBobrekHastaligi);
   ComboDoldurName('',txtKomorbitHastalik);
   ComboDoldurName('',txtTedaviSekli);
   ComboDoldurName('',txtDializorCinsi);
   ComboDoldurName('',txtDializorTipi);
   ComboDoldurName('',txtYA);
   ComboDoldurName('',txtSonDurum);
   ComboDoldurName('',txtDializat);
   ComboDoldurName('',txtDamarGiris);
   ComboDoldurName('',txtHipar);
   ComboDoldurName('',txtDegisimiYapan);
   ComboDoldurName('',txtTunelYonu);
   ComboDoldurName('',txtKataterYY);
   ComboDoldurName('',txtGS);
   ComboDoldurName('',txtKT);
    *)
end;


function TfrmHastaKart.Init(Sender : TObject) : Boolean;
var
  key : word;
  sql : string;
  t1,t2 : Tdate;
  ado : TADOQuery;
begin

  Result := False;
  if not inherited Init(Sender) then exit;

  if _dosyaNo_ = '' then
  begin
     ado := TADOQuery.Create(nil);
     t2 := ayliktarih(date,t1);
     sql := 'select top 1 dosyaNo from PersonelKart ' +
            ' where sirketKod = ' + QuotedStr(datalar.AktifSirket) +
            ' and Aktif = 1 ' +
            ' order by dosyaNo';
     datalar.QuerySelect(ado,sql);
     _dosyaNo_ := ado.Fields[0].AsString;
     ado.Free;
  end;


  key := 13;
  dosyaNo.EditValue := _dosyaNo_;//datalar.Bilgi.dosyaNo;

  if dosyaNo.EditValue <> ''
  then
   dosyaNo.OnKeyDown(frmHastaKart.dosyaNo,key,[]);



  IseGirisMuayene.Dataset.AfterScroll := ADO_WebServisErisimAfterScroll;
  GridList.ViewData.Expand(true);


  Result := True;
end;


procedure TfrmHastaKart.FormCreate(Sender: TObject);
var
  index,i : integer;
  Ts,Ts1,Ts3 : TStringList;
  List,List1,List3,IL_KODLARI,ILCE_KODLARI,BUCAK_KODLARI,
  KOY_KODLARI,MAHALLE_KODLARI,UYRUK : TListeAc;
  cxBtnkod : TcxButtonKadir;
  merkezdeBaslangic,BASLANGIC,ilkTaniTarihi : TcxDateEditKadir;
  EV_SEHIR ,EV_ILCE ,EV_BUCAK , EV_KOY,EV_MAHALLE : TcxImageComboKadir;
  DEV_KURUM,Kurum,EGITIM : TcxImageComboKadir;
  askerlik,ozur,bolum,birim,risk,statu,muayenePeryot,Subeler,sirketlerx: TcxImageComboKadir;
  D : TcxComboBox;
  Tab : TcxTabSheet;
begin
  USER_ID.Tag := 0;
  sirketKod.Tag := 0;

  Menu := PopupMenu1;

  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  USER_ID.Text := datalar.username;

  indexFieldName := 'dosyaNo';
  TableName := _TableName_;
  Olustur(self,_TableName_,'Personel Taným Kartý',22,sqlInsert);
  cxPanel.Visible := false;
  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;

  List := ListeAcCreate('PersonelKart','dosyaNo,HASTAADI,HASTASOYADI,TCKIMLIKNO,Aktif',
                       'DosyaNo,PersonelAdý,Soyadý,TCKimlikNo,Durum',
                       '50,100,100,80,50','dosyaNo','Personel Listesi',' SirketKod = ' + QuotedStr(datalar.AktifSirket),
                        5,True);
  //List.Where := ' SirketKod = ' + QuotedStr(datalar.AktifSirket);

  setDataStringB(self,'dosyaNo','&DosyaNo',Kolon1,'dn',80,List,True,dosyaNo,'','SirketKod',True,True,1);
  setDataString(self,'HUVIYETNO','',Kolon1,'dn',45);
  setDataString(self,'TCKIMLIKNO','TC Kimlik No  ',Kolon1,'',130,True);
  setDataString(self,'HASTAADI','Personel Adý  ',Kolon1,'',130,True);
  setDataString(self,'HASTASOYADI','Soyadý  ',Kolon1,'',130,True);
  setDataString(self,'BABAADI','Baba Adý  ',Kolon1,'',130);
  setDataString(self,'ANAADI','Ana Adý  ',Kolon1,'',130);
  setDataString(self,'DOGUMYERI','Doðum Yeri  ',Kolon1,'',130);
  setDataStringKontrol(self,DOGUMTARIHI, 'DOGUMTARIHI','Doðum Tarihi  ',Kolon1,'',130);


  setDataStringKontrol(self,KANGRUBU, 'KANGRUBU','Kan Grubu  ',Kolon1,'',100);
  setDataStringKontrol(self,CINSIYETI, 'CINSIYETI','Cinsiyeti  ',Kolon1,'',100);
  setDataStringKontrol(self,MEDENI, 'MEDENI','Medeni Hal  ',Kolon1,'',100);
  setDataStringCurr(self,'CocukSayi','Çocuk Say.',kolon1,'',40,'0,',1);

  setDataStringKontrol(self,VatandasTip, 'VatandasTip','Vatandaþ Tipi  ',Kolon1,'',100);
  UYRUK := ListeAcCreate('SKRS_ULKE_KODLARI','KODU,ADI','Kod,Ülke Adi',
                       '50,200','KODU','Ülke Kodlarý','',2);
  setDataStringB(self,'UYRUGU','Uyruk',Kolon1,'',50,UYRUK,false,nil,'ADI','',True,True);

  EGITIM := TcxImageComboKadir.Create(self);
  EGITIM.Conn := Datalar.ADOConnection2;
  EGITIM.TableName := 'EgitimDurumlari';
  EGITIM.ValueField := 'kod';
  EGITIM.DisplayField := 'tanimi';
  EGITIM.BosOlamaz := True;
  EGITIM.Filter := '';
  OrtakEventAta(EGITIM);
  setDataStringKontrol(self,EGITIM,'EGITIM_DURUMU','Eðitim Durumu',kolon1,'',130);


  Kurum := TcxImageComboKadir.Create(self);
  Kurum.Conn := Datalar.ADOConnection2;
  Kurum.TableName := 'Kurumlar';
  Kurum.ValueField := 'Kurum';
  Kurum.DisplayField := 'ADI1';
  Kurum.BosOlamaz := True;
  Kurum.Filter := '';
  OrtakEventAta(Kurum);
  setDataStringKontrol(self,Kurum,'Kurum','Kurum',kolon2,'',120);

  DEV_KURUM := TcxImageComboKadir.Create(self);
  DEV_KURUM.Conn := Datalar.ADOConnection2;
  DEV_KURUM.TableName := 'DevredilenKurum_Tnm';
  DEV_KURUM.ValueField := 'kod';
  DEV_KURUM.DisplayField := 'tanimi';
  DEV_KURUM.BosOlamaz := True;
  DEV_KURUM.Filter := '';
  OrtakEventAta(DEV_KURUM);
  setDataStringKontrol(self,DEV_KURUM,'KurumTip','Dev. Kurum',kolon2,'',120);


  setDataStringKontrol(self,DURUM, 'Durum','Sigortalý Tipi',Kolon2,'',70);
  setDataString(self,'SicilNo','Sigorta No',Kolon2,'',70);

  setDataStringBLabel(self,'BosSatir1',Kolon2,'',10);

  setDataString(self,'EV_TEL1','Mobil Tel',Kolon2,'',120);
  setDataString(self,'EV_TEL2','Sabit Tel',Kolon2,'',120);


  EV_SEHIR := TcxImageComboKadir.Create(self);
  EV_SEHIR.Conn := Datalar.ADOConnection2;
  EV_SEHIR.TableName := 'SKRS_IL_KODLARI';
  EV_SEHIR.ValueField := 'KODU';
  EV_SEHIR.DisplayField := 'ADI';
  EV_SEHIR.BosOlamaz := True;
  EV_SEHIR.Filter := '';
  setDataStringKontrol(self,EV_SEHIR,'EV_SEHIR','Ýl',kolon2,'',120);
  OrtakEventAta(EV_SEHIR);
//  setDataStringBLabel(self,'EV_SEHIR',Kolon2,'il',100,' ');


  EV_ILCE := TcxImageComboKadir.Create(self);
  EV_ILCE.Conn := Datalar.ADOConnection2;
  EV_ILCE.TableName := 'SKRS_ILCE_KODLARI';
  EV_ILCE.ValueField := 'KODU';
  EV_ILCE.DisplayField := 'ADI';
  EV_ILCE.BosOlamaz := True;
//  EV_ILCE.Filter := EV_SEHIR.EditValue;
//  EV_ILCE.Properties.ReadOnly := True;
  setDataStringKontrol(self,EV_ILCE,'EV_ILCE','Ýlçe',kolon2,'',120);
  OrtakEventAta(EV_ILCE);
  //  setDataStringB(self,'EV_ILCE','Ýlçe',Kolon2,'ilce',60,ILCE_KODLARI,false,EV_ILCE,'ADI','EV_SEHIR',false);
//  setDataStringBLabel(self,'EV_ILCE',Kolon2,'ilce',100,' ');

  //BUCAK_KODLARI := ListeAcCreate('SKRS_BUCAK_KODLARI','KODU,ADI','Kod,Adi','50,100','KODU','BUCAKLAR',' ILCEKODU = %s',2);
  EV_BUCAK := TcxImageComboKadir.Create(self);
  EV_BUCAK.Conn := Datalar.ADOConnection2;
  EV_BUCAK.TableName := 'SKRS_BUCAK_KODLARI';
  EV_BUCAK.ValueField := 'KODU';
  EV_BUCAK.DisplayField := 'ADI';
  EV_BUCAK.BosOlamaz := True;

  setDataStringKontrol(self,EV_BUCAK,'EV_BUCAK','Bucak',kolon2,'',120);
  OrtakEventAta(EV_BUCAK);

//  setDataStringB(self,'EV_BUCAK','Bucak',Kolon2,'bucak',60,BUCAK_KODLARI,false,EV_BUCAK,'ADI','EV_ILCE',false);
//  setDataStringBLabel(self,'EV_BUCAK',Kolon2,'bucak',100,' ');

 // KOY_KODLARI := ListeAcCreate('SKRS_KOY_KODLARI','KODU,ADI','Kod,Adi','50,100','KODU','KÖYLER',' BUCAKKODU = %s',2);
  EV_KOY := TcxImageComboKadir.Create(self);
 // EV_KOY.Properties.ReadOnly := True;
  EV_KOY.Conn := Datalar.ADOConnection2;
  EV_KOY.TableName := 'SKRS_KOY_KODLARI';
  EV_KOY.ValueField := 'KODU';
  EV_KOY.DisplayField := 'ADI';
  EV_KOY.BosOlamaz := True;
  setDataStringKontrol(self,EV_KOY,'EV_KOY','Köyü',kolon2,'',120);
  OrtakEventAta(EV_KOY);

 // MAHALLE_KODLARI := ListeAcCreate('SKRS_MAHALLE_KODLARI','KODU,ADI','Kod,Adi','50,100','KODU','MAHALLELER',' KOYKODU = %s',2);
  EV_MAHALLE := TcxImageComboKadir.Create(self);
  EV_MAHALLE.Conn := Datalar.ADOConnection2;
  EV_MAHALLE.TableName := 'SKRS_MAHALLE_KODLARI';
  EV_MAHALLE.ValueField := 'KODU';
  EV_MAHALLE.DisplayField := 'ADI';
  EV_MAHALLE.BosOlamaz := True;
  setDataStringKontrol(self,EV_MAHALLE,'EV_MAHALLE','Mahalle',kolon2,'',120);
   OrtakEventAta(EV_MAHALLE);

  setDataString(self,'EV_SOKAK','Sok./Cad.',Kolon2,'',166,True);
  setDataString(self,'EV_ADRES','Adres Diðer',Kolon2,'',166);
  setDataString(self,'EMAIL','E-Posta',Kolon2,'',166);


  setDataStringKontrol(self,cxFotoPanel , 'cxFotoPanel','',Kolon4,'',110);
  setDataStringKontrol(self,txtAktif , 'Aktif','',Kolon4,'',110);

  setDataStringBLabel(self,'MuayenePeryotBaslik',Kolon4,'',110,'Muayene Peryodu');
 // TcxLabel(FindComponent('MuayenePeryotBaslik')).Style.Font.Color := clRed;


  muayenePeryot := TcxImageComboKadir.Create(self);
  muayenePeryot.Conn := nil;
  muayenePeryot.ItemList := '30;Ayda Bir,90;3 Ayda Bir,180;6 Ayda Bir,365;Yýlda Bir,730;Ýki Yýlda Bir';
  muayenePeryot.Filter := '';
  muayenePeryot.BosOlamaz := True;
  setDataStringKontrol(self,muayenePeryot,'MuayenePeryot','',kolon4,'',110);
  OrtakEventAta(muayenePeryot);

  setDataStringBLabel(Self, 'SirketKod', Kolon4, '', 300, '', '', 'SirketKod');

  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'SIRKETLER_TNM';
  sirketlerx.ValueField := 'sirketKod';
  sirketlerx.DisplayField := 'Tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Filter := '';
  sirketlerx.tag := -100;
  setDataStringKontrol(self,sirketlerx,'Sirketlerx','Þirket',kolon4,'',420);
  OrtakEventAta(sirketlerx);


  BASLANGIC := TcxDateEditKadir.Create(self);
  BASLANGIC.ValueTip := tvString;
  setDataStringKontrol(self,BASLANGIC, 'BASLANGIC','Ýþe Baþlama Tarihi',Kolon3,'',100);

  askerlik := TcxImageComboKadir.Create(self);
  askerlik.Conn := nil;
  askerlik.ItemList := '1;Yapýldý,2;Muaf,3;Yapýlmadý';
  askerlik.Filter := '';
  askerlik.BosOlamaz := True;
  setDataStringKontrol(self,askerlik,'askerlik','Askerlik',kolon3,'',100);
  OrtakEventAta(askerlik);

  ozur := TcxImageComboKadir.Create(self);
  ozur.Conn := nil;
  ozur.ItemList := '1;Özürlü,0;Yok';
  ozur.Filter := '';
  ozur.BosOlamaz := True;
  setDataStringKontrol(self,ozur,'Ozurluluk','Özürlülük',kolon3,'',100);
  OrtakEventAta(ozur);

  risk := TcxImageComboKadir.Create(self);
  risk.Conn := nil;
  risk.ItemList := '1;Birinci Derece,2;Ýkinci Derece,3;Üçüncü Derece';
  risk.Filter := '';
  risk.BosOlamaz := True;
  setDataStringKontrol(self,risk,'risk','Risk Grubu',kolon3,'',100);
  OrtakEventAta(risk);

  bolum := TcxImageComboKadir.Create(self);
  bolum.Conn := Datalar.ADOConnection2;
  bolum.TableName := 'Bolumler';
  bolum.ValueField := 'kod';
  bolum.DisplayField := 'tanimi';
  bolum.Filter := '';
  bolum.BosOlamaz := True;
  setDataStringKontrol(self,bolum,'bolum','Bölümü',kolon3,'',120);
  OrtakEventAta(bolum);

  birim := TcxImageComboKadir.Create(self);
  birim.Conn := Datalar.ADOConnection2;
  birim.TableName := 'Birimler';
  birim.ValueField := 'kod';
  birim.DisplayField := 'tanimi';
  birim.Filter := '';
  birim.BosOlamaz := True;
  setDataStringKontrol(self,birim,'birim','Birimi',kolon3,'',120);
  OrtakEventAta(birim);


  subeler := TcxImageComboKadir.Create(self);
  subeler.Conn := Datalar.ADOConnection2;
  subeler.TableName := 'SIRKET_SUBE_TNM';
  subeler.ValueField := 'subeKod';
  subeler.DisplayField := 'subeTanim';
  subeler.ItemList := '00;MERKEZ';
  subeler.Filter := '';
  subeler.BosOlamaz := True;




  setDataStringKontrol(self,subeler,'sube','Þube',kolon3,'',120);


  OrtakEventAta(subeler);

  setDataStringBLabel(self,'bosSatir2',Kolon3,'',350);

 // setDataStringC(self,'seans','Seans',sayfa2_Kolon1,'_s_',50,'1,2,3,4,5');
  setDataString(self,'seansSuresi','Günlük Çalýþma Süre',sayfa2_Kolon1,'_s_',30);
//  setDataString(self,'makinaNo','Makina',sayfa2_Kolon1,'_s_',40);
  setDataStringKontrol(self,seansGunleri , 'seansGunleri','Çalýþma Günleri',sayfa2_Kolon1,'',230);


  setDataStringCurr(self,'idealKilo','Kilo',sayfa2_Kolon2,'kilo',50,'0.00');
  setDataStringCurr(self,'boy','Boy',sayfa2_Kolon2,'_boy_',50,'0');


  setDataStringC(self,'HbsAg','HbsAg',sayfa2_Kolon2,'kilo',40,'-,+');
  setDataStringC(self,'AntiHbs','AntiHbs',sayfa2_Kolon2,'kilo',40,'-,+');
  setDataStringC(self,'AntiHCV','AntiHCV',sayfa2_Kolon2,'_boy_',40,'-,+');
  setDataStringC(self,'HIV','AntiHIV',sayfa2_Kolon2,'_boy_',40,'-,+');
  setDataStringBLabel(self,'bosSatir3',sayfa2_Kolon2,'',1);


  setDataStringMemo(self,'soygecmis','Soy Geçmiþ',sayfa3_Kolon1,'',630,40);
  setDataStringMemo(self,'hastaNot','Tedavi Geçmiþ',sayfa3_Kolon1,'',630,40);
  setDataStringMemo(self,'diger','Hasta Özel Durum',sayfa3_Kolon1,'',630,40);

  setDataStringKontrol(self,txtSeansSikayet , 'GELHAST','Kronik Hast/Baðým',sayfa3_Kolon1,'',300);

  setDataStringKontrol(self,IseGirisMuayene,'IseGirisMuayene','',sayfa4_Kolon1,'',800,350,alClient);


 // tableColumnDescCreate;
  cxpnlHastaGelisler.Align := alBottom;

  SayfaCaption('Kimlik Bilgileri','DÝðer Bilgileri','Öz Geçmiþ','Ýþe Giriþ Muayene','');



 end;


procedure TfrmHastaKart.FormShow(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmHastaKart.seansGunleriPropertiesEditValueChanged(Sender: TObject);
var
 s : string;
begin
  inherited;
//  s := seansGunleri.EditingValue;


 // ShowMessage(s,'','','info');
end;

procedure TfrmHastaKart.cxKaydetClick(Sender: TObject);
var
  g : TGraphic;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  case TControl(sender).Tag  of
    0 : begin
         // if TCtoDosyaNo(TcxCustomEdit(FindComponent('TckimlikNo')).EditingValue)
         FotoNewRecord;
         Kart := sql_none;
        end;
    1 : begin
          Kart := sql_delete;
        end;
    2 : begin
            Kart := sql_new;
            dosyaNo.Text := dosyaNoYeniNumaraAl('DN');
            if dosyaNo.Text = '0'
            then begin
              ShowMessageskin('Dosya No Alýnamadý','','','info');
            end;
            foto.Picture.Assign(nil);
        end;

  end;

end;


procedure TfrmHastaKart.cxButtonCClick(Sender: TObject);
var
 List : TListeAc;
 _L_ : ArrayListeSecimler;
 _name_ : string;
 F : TGirisForm;
 GirisFormRecord : TGirisFormRecord;
 Tab : TcxTabSheet;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  if dosyaNo.Text = ''
  then begin
   ShowMessageSkin('Hasta Dosyasý Açýlmadan Bu Ýþlem Kullanýlamaz...','','','info');
   exit;
  end;

  GirisFormRecord.F_dosyaNo_ := dosyaNo.Text;
  GirisFormRecord.F_gelisNo_ := ADO_Gelisler.FieldByName('gelisNo').AsString;
  GirisFormRecord.F_provizyonTarihi_ := NoktasizTarih(ADO_Gelisler.FieldByName('Tarih').AsString);
  GirisFormRecord.F_TC_ := sqlRun.FieldByName('TCKimlikNo').AsString;
  GirisFormRecord.F_Doktor_ := ADO_Gelisler.FieldByName('doktor').AsString;
  GirisFormRecord.F_SigortaliTur_ := TcxImageComboKadir(FindComponent('Durum')).EditValue;
  GirisFormRecord.F_HastaAdSoyad_ := _HastaAdSoyad_;



  if (ADO_Gelisler.Eof) and (TControl(sender).Tag <> -27)
  then begin
   ShowMessageSkin('Muayene Dosyasý Açýlmadan Bu Ýþlem Kullanýlamaz...','','','info');
   exit;
  end;

  case TControl(sender).Tag  of
    0 : begin
            List := TListeAc.Create(nil);
            List.Kolonlar.Create;
            List.Table := 'ilacListesi';
            List.Kolonlar.Add('barkod');
            List.Kolonlar.Add('ilacAdi');

            List.KolonBasliklari.Create;
            List.KolonBasliklari.Add('Barkod');
            List.KolonBasliklari.Add('Ýlaç Adi');

            List.KolonBasliklari.Create;
            List.TColcount := 2;
            List.TColsW := '100,300';
            List.ListeBaslik := 'Ýlaçlar';
            List.Name := 'barkod';
            List.Conn := Datalar.ADOConnection2;
            List.SkinName := AnaForm.dxSkinController1.SkinName;
            List.Grup := True;

            _L_ := List.ListeGetir;
            _name_ := TcxButtonKadir(sender).ButtonName;
            _name_ := StringReplace(_name_,'cxBtn','',[rfReplaceAll]);
            TcxButtonEditKadir(FindComponent(_name_)).Text := _L_[0].kolon1;
            TcxButtonEditKadir(FindComponent('tanimi')).Text := _L_[0].kolon2;
        end;
    1 : begin
         // post;
         //ShowMessage('Ýptal');
        end;
   -1 : begin

        end;
   -2 : begin

        end;


   -3 : begin
        // TakipSil('');
        end;
   -4 : begin

        end;
   -5 : begin

        end;


   -6 : begin

        end;

 -25 : begin
          F := FormINIT(TagfrmAsiKarti,GirisFormRecord,ikEvet,'');
          if F <> nil then F.ShowModal;
       end;
 -26 : begin
         EpikrizYaz(dosyaNo.Text,ADO_Gelisler.FieldByName('gelisNo').AsString,false,IseGirisMuayene.Dataset);
       end;
 -27 : begin
         GelisAc;
       end;

 -28 : begin
          Application.CreateForm(TfrmSMS, frmSMS);
          frmSMS.dosyaNo := DosyaNo.Text;
        //  frmSMS.hasta := txtHastaAdi.Text + ' ' + txtSoyAdi.Text;
          frmSMS.ShowModal;
          frmSMS := nil;
       end;
 -29 : begin
         HastaRaporlari;
       end;
 -30 : begin
        //  ReceteForm(dosyaNo.Text,_gelisNO_);
       end;
 -31 : begin
        GelisDuzenle;
       end;
 -32 : begin
          F := FormINIT(TagfrmHastaTetkikEkle,GirisFormRecord);
          if F <> nil then F.ShowModal;
         // TetkikEkle(dosyaNo.Text,_gelisNo_,datalar.HastaBil.Tarih);
       end;
 -33 : begin
         GelisSil;
       end;

 -35 : begin
          F := FormINIT(TagfrmTaniKarti,GirisFormRecord,ikEvet,'');
          if F <> nil then F.ShowModal;
       end;

 -36 : begin
          F := FormINIT(TagfrmHastaDiyalizIzlem,GirisFormRecord,ikHayir);
          if F <> nil then F.ShowModal;
       end;


 -50 : begin
          FotoEkle;
       end;

 130 : begin
          datalar.HastaBil.dosyaNO := dosyaNo.Text;
          datalar.HastaBil.gelisNo := _gelisNo_;
          F := FormINIT(TagfrmHastaRecete,GirisFormRecord,ikEvet,'Giriþ');
          if F <> nil then F.ShowModal;

       end;
 140 : begin
            F := FormINIT(TagfrmHastaIlacTedavi,GirisFormRecord,ikEvet,'Giriþ');
            if F <> nil then F.ShowModal;
      //  IlacTedaviKarti(dosyaNo.Text,_gelisNo_,noktasizTarih(DATALAR.Bilgi.ProvizyonTarihi));
       end;

  end;
end;

end.
