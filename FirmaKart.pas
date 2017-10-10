unit FirmaKart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,pngImage,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,
  kadirType,KadirLabel,Kadir,Data_Modul,
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
  TfrmFirmaKart = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    MenucxYeni: TMenuItem;
    MenucxKaydet: TMenuItem;
    MenucxIptal: TMenuItem;
    N1: TMenuItem;
    Kapat1: TMenuItem;
    cxFotoPanel: TcxGroupBox;
    Foto: TcxImage;
    cxFotoEkleButton: TcxButton;
    N2: TMenuItem;
    DataSource1: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    SeansKart1: TMenuItem;
    ADO_Gelisler: TADOQuery;
    lemler1: TMenuItem;
    txtAktif: TcxImageComboBox;
    ListeNaceKods: TListeAc;
    AKart1: TMenuItem;
    YatBilgileri1: TMenuItem;
    Epikriz1: TMenuItem;
    SmsGnder1: TMenuItem;
    HastaRaporlar1: TMenuItem;
    T1: TMenuItem;
    R1: TMenuItem;
    N3: TMenuItem;
    T2: TMenuItem;
    T3: TMenuItem;
    NaceKod: TcxButtonEditKadir;
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure cxTextEditBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure seansGunleriPropertiesEditValueChanged(Sender: TObject);
    procedure FotoEkle;
    procedure FotoNewRecord;
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    function TakipSil(TakipNo : string) : string;
    procedure cxGridGelislerDblClick(Sender: TObject);
    procedure txtTipPropertiesChange(Sender: TObject);
    procedure txtAktifPropertiesChange(Sender: TObject);
    procedure PropertiesEditValueChanged(Sender: TObject);
    procedure cxGridGelislerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DOGUMTARIHIPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure txtNaceKodPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);


  private
    { Private declarations }
  public
    { Public declarations }
    procedure OrtakEventAta(Sender : TObject);overload;
    procedure OrtakEventAta(Sender : TcxImageComboKadir);overload;
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'SIRKETLER_TNM';
      formGenislik = 750;
      formYukseklik = 580;
      sqlInsert = 'exec sp_YeniHastaKarti ';//,%s,%s,%s,%s,%s,%s';
      sqlUpdate = 'exec sp_GuncelHastaKarti ';
      sqlDelete = 'delete from SIRKETLER_TNM where sirketKod = %s';
      FotoTable = 'select * from FirmaLogo where sirketKod = %s';

var
  frmFirmaKart: TfrmFirmaKart;
  ord : integer;
  _gez : integer;
  aktifKart : integer = 0;
  kart : sqlType;

implementation
    uses AnaUnit,SMS;
{$R *.dfm}



procedure TfrmFirmaKart.OrtakEventAta(Sender : TObject);
begin
  TcxButtonEditKadir(sender).Properties.OnButtonClick := cxButtonEditPropertiesButtonClick;
  TcxButtonEditKadir(sender).OnEnter := cxEditEnter;
  TcxButtonEditKadir(sender).OnExit := cxEditExit;
  TcxButtonEditKadir(sender).OnKeyDown := cxTextEditBKeyDown;
  TcxButtonEditKadir(sender).Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;

procedure TfrmFirmaKart.OrtakEventAta(Sender : TcxImageComboKadir);
begin
  TcxImageComboKadir (sender).OnEnter := cxEditEnter;
  TcxImageComboKadir(sender).OnExit := cxEditExit;
  TcxImageComboKadir(sender).OnKeyDown := cxTextEditBKeyDown;
  TcxImageComboKadir(sender).Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;

procedure TfrmFirmaKart.txtAktifPropertiesChange(Sender: TObject);
var
   sql , _aktif , _pasifTarih : string;
begin
   if sirketKod.Text = '' then exit;

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
       sql := 'update FirmaKart set aktif = ' + #39 + _aktif + #39 +
              ' where kod = ' + #39 + sirketKod.Text + #39;
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

procedure TfrmFirmaKart.txtNaceKodPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  List : ArrayListeSecimler;
begin
   List := ListeNaceKods.ListeGetir;
   TcxTextEditKadir(FindComponent('naceKod')).EditValue := List[0].kolon1;
   TcxTextEditKadir(FindComponent('anaFaliyet')).EditValue := List[0].kolon2;
   TcxTextEditKadir(FindComponent('tehlikeSinifi')).EditValue := List[0].kolon4;

end;

procedure TfrmFirmaKart.PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if TcxImageComboKadir(sender).Name = 'SEHIR'
  then begin
    TcxImageComboKadir(FindComponent('ILCE')).TableName := 'SKRS_ILCE_KODLARI';
    TcxImageComboKadir(FindComponent('ILCE')).Filter := 'ILKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('SEHIR')).EditingValue);
    if FindComponent('ILCE') <> nil Then TcxImageComboKadir(FindComponent('ILCE')).EditValue := '';
  end
  else
  if TcxImageComboKadir(sender).Name = 'ILCE'
  then begin
    TcxImageComboKadir(FindComponent('BUCAK')).TableName := 'SKRS_BUCAK_KODLARI';
    TcxImageComboKadir(FindComponent('BUCAK')).Filter := 'ILCEKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('ILCE')).EditingValue);
    if FindComponent('BUCAK') <> nil Then TcxImageComboKadir(FindComponent('BUCAK')).EditValue := '';
  end
  else
  if TcxImageComboKadir(sender).Name = 'BUCAK'
  then begin
    TcxImageComboKadir(FindComponent('KOY')).TableName := 'SKRS_KOY_KODLARI';
    TcxImageComboKadir(FindComponent('KOY')).Filter := 'BUCAKKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('BUCAK')).EditingValue);
    if FindComponent('KOY') <> nil Then TcxImageComboKadir(FindComponent('KOY')).EditValue := '';
  end
  else
  if TcxImageComboKadir(sender).Name = 'KOY'
  then begin
    TcxImageComboKadir(FindComponent('MAHALLE')).TableName := 'SKRS_MAHALLE_KODLARI';
    TcxImageComboKadir(FindComponent('MAHALLE')).Filter := 'KOYKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('KOY')).EditingValue);
    if FindComponent('MAHALLE') <> nil Then TcxImageComboKadir(FindComponent('MAHALLE')).EditValue := '';
  end ;

end;

procedure TfrmFirmaKart.txtTipPropertiesChange(Sender: TObject);
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

function TfrmFirmaKart.TakipSil;
begin
//
end;

procedure TfrmFirmaKart.FotoNewRecord;
var
 sql,dosyaNo : string;
 ado : TADOQuery;
begin
  dosyaNo := TcxButtonEditKadir(FindComponent('sirketKod')).Text;
  ado := TADOQuery.Create(nil);
  sql := 'if not exists(select sirketKod from FirmaLogo where sirketKod = ' + QuotedStr(dosyaNo) + ')' +
         ' insert into FirmaLogo (sirketKod,logo,tip) ' +
         ' values (' + QuotedStr(sirketKod.Text) + ',NULL,''H'')';
  datalar.QueryExec(ado,sql);
  ado.Free;

end;

procedure TfrmFirmaKart.FotoEkle;
var
 Fo : TFileOpenDialog;
 filename,dosyaNo : string;
 jp : TJPEGImage;
begin
  dosyaNo := TcxButtonEditKadir(FindComponent('sirketKod')).Text;
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
  datalar.ADO_FOTO.FieldByName('Logo').Assign(jp);
  datalar.ADO_FOTO.Post;
  jp.Free;
end;


procedure TfrmFirmaKart.cxButtonEditPropertiesButtonClick(Sender: TObject;
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

           TcxImageComboKadir(FindComponent('ILCE')).Filter := 'ILKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('SEHIR')).EditingValue);
           TcxImageComboKadir(FindComponent('BUCAK')).Filter := 'ILCEKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('ILCE')).EditingValue);
           TcxImageComboKadir(FindComponent('KOY')).Filter := 'BUCAKKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('BUCAK')).EditingValue);
           TcxImageComboKadir(FindComponent('MAHALLE')).Filter := 'KOYKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('KOY')).EditingValue);


           _dosyaNo_ := TcxButtonEditKadir(sender).Text;
           (*
           _Tc_ := TcxTextEditKadir(FindComponent('TcKimlikNo')).Text;
           _HastaAdSoyad_ := TcxTextEditKadir(FindComponent('HASTAADI')).Text +
                             ' ' + TcxTextEditKadir(FindComponent('HASTASOYADI')).Text;
           HastaBilgiRecordSet(TcxTextEditKadir(FindComponent('HASTAADI')).Text,
                               TcxTextEditKadir(FindComponent('HASTASOYADI')).Text,
                               _Tc_,'');
             *)
           datalar.ADO_Foto.SQL.Text := Format(FotoTable,[#39+_dosyaNo_+#39]);
           datalar.ADO_FOTO.Open;

           g := TJpegimage.Create;
           try
            if datalar.ADO_FOTO.FieldByName('logo').AsVariant <> Null
            Then begin
              g.Assign(datalar.ADO_FOTO.FieldByName('logo'));
              FOTO.Picture.Assign(g);
            end
            else
            FOTO.Picture.Assign(nil);
           except
             g.Free;
           end;


       end;


   end;
end;

procedure TfrmFirmaKart.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmFirmaKart.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmFirmaKart.cxGridGelislerDblClick(Sender: TObject);
begin
  inherited;
    SeansKart1.Click;
end;

procedure TfrmFirmaKart.cxGridGelislerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if Key = 13 then SeansKart1.Click;
end;

procedure TfrmFirmaKart.cxTextEditBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then

   cxButtonEditPropertiesButtonClick(TcxButtonEditKadir(sender),-1);

//   Gelisler(TcxButtonEditKadir(sender).Text);


end;

procedure TfrmFirmaKart.DOGUMTARIHIPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
//
end;

function TfrmFirmaKart.Init(Sender : TObject) : Boolean;
var
  key : word;
  sql : string;
  t1,t2 : Tdate;
  ado : TADOQuery;
begin

  Result := False;
  if not inherited Init(Sender) then exit;
  (*
  if _dosyaNo_ = '' then
  begin
     ado := TADOQuery.Create(nil);
     t2 := ayliktarih(date,t1);
     sql := 'select top 1 dosyaNo from gelisler ' +
            ' where bhdat between ' + QuotedStr(tarihal(t1)) + ' and ' + QuotedStr(tarihal(t2)) +
            ' order by dosyaNo';
     datalar.QuerySelect(ado,sql);
     _dosyaNo_ := ado.Fields[0].AsString;
     ado.Free;
  end;
    *)

  key := 13;
  sirketKod.EditValue := _dosyaNo_;//datalar.Bilgi.dosyaNo;

  if sirketKod.EditValue <> ''
  then
   sirketKod.OnKeyDown(frmFirmaKart.sirketKod,key,[]);

  Result := True;
end;


procedure TfrmFirmaKart.FormCreate(Sender: TObject);
var
  index,i : integer;
  Ts,Ts1,Ts3 : TStringList;
  List,List1,List3 : TListeAc;
  cxBtnkod : TcxButtonKadir;
  merkezdeBaslangic,BASLANGIC,ilkTaniTarihi : TcxDateEdit;
  SEHIR ,ILCE ,BUCAK ,KOY,MAHALLE,DEV_KURUM,Kurum,EGITIM : TcxImageComboKadir;
  D : TcxComboBox;
  Tab : TcxTabSheet;
begin
  // Burdaki User_ID ve sirketKod base formda dolduruluyor. Visible false (true set etmeyin)
  // E�er kay�t ekledi�iniz tabloda bu alanlar varsa ve bunlar� otomatik set etmek isterseniz
  //tag de�erini burda 0 set edin default -100 d�r -100 obje kay�t i�lemize girmez.
  USER_ID.Tag := 0;
  sirketKod.Tag := 1;
  sirketKod.Visible := True;
  sirketKod.Properties.OnButtonClick := cxButtonEditPropertiesButtonClick;
  //

  Menu := PopupMenu1;

//  Tag := TagfrmHastaKart;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;



  indexFieldName := 'sirketKod';
  TableName := _TableName_;
  Olustur(self,_TableName_,'Firma Tan�m Kart�',22,sqlInsert);
  cxPanel.Visible := false;
  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;

  List := ListeAcCreate('SIRKETLER_TNM','sirketKod,tanimi,Aktif',
                       'SirketKod,Sirket,Durum',
                       '50,250,50','sirketKod','Firma Listesi','',5,True);


  setDataStringB(self,'sirketKod','�irket Kodu',Kolon1,'',80,List,True,sirketKod,'','',True,True,1);
  setDataString(self,'tanimi','Firma Ad�  ',Kolon1,'',250,True);
  setDataStringKontrol(self,NaceKod, 'NaceKod','Nace Kodu  ',Kolon1,'',130);
  setDataString(self,'anaFaliyet','Firma Ana Faaliye',Kolon1,'',250,True);
  setDataString(self,'tehlikeSinifi','Tehlike S�n�f�',Kolon1,'',100,True);
  (*
  setDataString(self,'HUVIYETNO','',Kolon1,'dn',45);
  setDataString(self,'TCKIMLIKNO','TC Kimlik No  ',Kolon1,'',130,True);

  setDataString(self,'HASTASOYADI','Soyad�  ',Kolon1,'',130,True);
  setDataString(self,'BABAADI','Baba Ad�  ',Kolon1,'',130);
  setDataString(self,'ANAADI','Ana Ad�  ',Kolon1,'',130);
  setDataString(self,'DOGUMYERI','Do�um Yeri  ',Kolon1,'',130);
  setDataStringKontrol(self,DOGUMTARIHI, 'DOGUMTARIHI','Do�um Tarihi  ',Kolon1,'',130);


  setDataStringKontrol(self,KANGRUBU, 'KANGRUBU','Kan Grubu  ',Kolon1,'',100);
  setDataStringKontrol(self,CINSIYETI, 'CINSIYETI','Cinsiyeti  ',Kolon1,'',100);
  setDataStringKontrol(self,MEDENI, 'MEDENI','Medeni Hal  ',Kolon1,'',100);

  setDataStringKontrol(self,VatandasTip, 'VatandasTip','Vatanda� Tipi  ',Kolon1,'',100);
  UYRUK := ListeAcCreate('SKRS_ULKE_KODLARI','KODU,ADI','Kod,�lke Adi',
                       '50,200','KODU','�lke Kodlar�','',2);
  setDataStringB(self,'UYRUGU','Uyruk',Kolon1,'',50,UYRUK,false,nil,'ADI','',True,True);

  EGITIM := TcxImageComboKadir.Create(self);
  EGITIM.Conn := Datalar.ADOConnection2;
  EGITIM.TableName := 'EgitimDurumlari';
  EGITIM.ValueField := 'kod';
  EGITIM.DisplayField := 'tanimi';
  EGITIM.BosOlamaz := True;
  EGITIM.Filter := '';
  OrtakEventAta(EGITIM);
  setDataStringKontrol(self,EGITIM,'EGITIM_DURUMU','E�itim Durumu',kolon1,'',130);

//  setDataString(self,'YKARTNO','Tdis id',Kolon1,'',100);


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




  setDataStringKontrol(self,DURUM, 'Durum','Sigortal� Tipi',Kolon2,'',70);
  setDataString(self,'SicilNo','Sigorta No',Kolon2,'',70);

  setDataStringBLabel(self,'BosSatir1',Kolon2,'',10);

  setDataString(self,'EV_TEL1','Mobil Tel',Kolon2,'',120);
  setDataString(self,'EV_TEL2','Sabit Tel',Kolon2,'',120);


 // IL_KODLARI := ListeAcCreate('SKRS_IL_KODLARI','KODU,ADI','Kod,Adi','50,100','KODU','�LLER','',2);


   *)

  SEHIR := TcxImageComboKadir.Create(self);
  SEHIR.Conn := Datalar.ADOConnection2;
  SEHIR.TableName := 'SKRS_IL_KODLARI';
  SEHIR.ValueField := 'KODU';
  SEHIR.DisplayField := 'ADI';
  SEHIR.BosOlamaz := True;
  SEHIR.Filter := '';
  setDataStringKontrol(self,SEHIR,'SEHIR','�l',kolon2,'',120);
  OrtakEventAta(SEHIR);
//  setDataStringBLabel(self,'EV_SEHIR',Kolon2,'il',100,' ');

 // ILCE_KODLARI := ListeAcCreate('SKRS_ILCE_KODLARI','KODU,ADI','Kod,Adi','50,100','KODU','�L�ELER',' ILKODU = %s',2);

  ILCE := TcxImageComboKadir.Create(self);
  ILCE.Conn := Datalar.ADOConnection2;
  ILCE.TableName := 'SKRS_ILCE_KODLARI';
  ILCE.ValueField := 'KODU';
  ILCE.DisplayField := 'ADI';
  ILCE.BosOlamaz := True;
//  EV_ILCE.Filter := EV_SEHIR.EditValue;
//  EV_ILCE.Properties.ReadOnly := True;
  setDataStringKontrol(self,ILCE,'ILCE','�l�e',kolon2,'',120);
  OrtakEventAta(ILCE);
  //  setDataStringB(self,'EV_ILCE','�l�e',Kolon2,'ilce',60,ILCE_KODLARI,false,EV_ILCE,'ADI','EV_SEHIR',false);
//  setDataStringBLabel(self,'EV_ILCE',Kolon2,'ilce',100,' ');

  //BUCAK_KODLARI := ListeAcCreate('SKRS_BUCAK_KODLARI','KODU,ADI','Kod,Adi','50,100','KODU','BUCAKLAR',' ILCEKODU = %s',2);
  BUCAK := TcxImageComboKadir.Create(self);
  BUCAK.Conn := Datalar.ADOConnection2;
  BUCAK.TableName := 'SKRS_BUCAK_KODLARI';
  BUCAK.ValueField := 'KODU';
  BUCAK.DisplayField := 'ADI';
  BUCAK.BosOlamaz := True;

  setDataStringKontrol(self,BUCAK,'BUCAK','Bucak',kolon2,'',120);
  OrtakEventAta(BUCAK);

//  setDataStringB(self,'EV_BUCAK','Bucak',Kolon2,'bucak',60,BUCAK_KODLARI,false,EV_BUCAK,'ADI','EV_ILCE',false);
//  setDataStringBLabel(self,'EV_BUCAK',Kolon2,'bucak',100,' ');

 // KOY_KODLARI := ListeAcCreate('SKRS_KOY_KODLARI','KODU,ADI','Kod,Adi','50,100','KODU','K�YLER',' BUCAKKODU = %s',2);
  KOY := TcxImageComboKadir.Create(self);
 // EV_KOY.Properties.ReadOnly := True;
  KOY.Conn := Datalar.ADOConnection2;
  KOY.TableName := 'SKRS_KOY_KODLARI';
  KOY.ValueField := 'KODU';
  KOY.DisplayField := 'ADI';
  KOY.BosOlamaz := True;
  setDataStringKontrol(self,KOY,'KOY','K�y�',kolon2,'',120);
  OrtakEventAta(KOY);
  //  setDataStringB(self,'EV_KOY','K�y�',Kolon2,'koy',60,KOY_KODLARI,false,EV_KOY,'ADI','EV_BUCAK',false);
//  setDataStringBLabel(self,'EV_KOY',Kolon2,'koy',100,' ');

 // MAHALLE_KODLARI := ListeAcCreate('SKRS_MAHALLE_KODLARI','KODU,ADI','Kod,Adi','50,100','KODU','MAHALLELER',' KOYKODU = %s',2);
  MAHALLE := TcxImageComboKadir.Create(self);
//  EV_MAHALLE.Properties.ReadOnly := True;
  MAHALLE.Conn := Datalar.ADOConnection2;
  MAHALLE.TableName := 'SKRS_MAHALLE_KODLARI';
  MAHALLE.ValueField := 'KODU';
  MAHALLE.DisplayField := 'ADI';
  MAHALLE.BosOlamaz := True;
  setDataStringKontrol(self,MAHALLE,'MAHALLE','Mahalle',kolon2,'',120);
   OrtakEventAta(MAHALLE);
 // setDataStringB(self,'EV_MAHALLE','Mahalle',Kolon2,'mh',60,MAHALLE_KODLARI,false,EV_MAHALLE,'ADI','EV_KOY',false);
 // setDataStringBLabel(self,'EV_MAHALLE',Kolon2,'mh',100,' ');
  setDataString(self,'SOKAK','Sok./Cad.',Kolon2,'',166,True);
  setDataString(self,'ADRES','Adres Di�er',Kolon2,'',166);
 // setDataString(self,'EMAIL','E-Posta',Kolon2,'',166);



  setDataStringKontrol(self,cxFotoPanel , 'cxFotoPanel','',Kolon3,'',110);
  setDataStringKontrol(self,txtAktif , 'Aktif','',Kolon3,'',110);
//  setDataStringKontrol(self,txtTip , 'Tip','',Kolon3,'',110);


 // setDataStringKontrol(self,txtBobrekHastaligi , 'PBH','Primer B�brek Hast.',sayfa2_Kolon1,'',200);
 // ilkTaniTarihi := TcxDateEdit.Create(self);
 // setDataStringKontrol(self,ilkTaniTarihi, 'ilkTaniTarihi','�lk Tan� Tarihi',sayfa2_Kolon1,'',100);

//  BASLANGIC := TcxDateEdit.Create(self);
//  setDataStringKontrol(self,BASLANGIC, 'BASLANGIC','�lk Diyaliz Tarihi',sayfa2_Kolon1,'',100);

 // merkezdeBaslangic := TcxDateEdit.Create(self);
//  setDataStringKontrol(self,merkezdeBaslangic, 'merkezdeBaslangic','Merkezde Ba�lama Tarihi',sayfa2_Kolon1,'',100);
 // setDataStringKontrol(self,hastaTip , 'hastaTip','Hasta Tipi',sayfa2_Kolon1,'',100);

//  setDataStringC(self,'Aday','Transplastasyon',sayfa2_Kolon1,'',100,'E,H');

  setDataStringBLabel(self,'bosSatir2',sayfa2_Kolon1,'',1);

 // setDataStringC(self,'seans','Seans',sayfa2_Kolon1,'_s_',50,'1,2,3,4,5');
//  setDataString(self,'seansSuresi','Seans S�re',sayfa2_Kolon1,'_s_',30);
//  setDataString(self,'makinaNo','Makina',sayfa2_Kolon1,'_s_',40);
///  setDataStringKontrol(self,seansGunleri , 'seansGunleri','Seans G�nleri',sayfa2_Kolon1,'',230);


 // setDataStringCurr(self,'idealKilo','Kilo',sayfa2_Kolon2,'kilo',50,'0.00');
 // setDataStringCurr(self,'boy','Boy',sayfa2_Kolon2,'_boy_',50,'0');


//  setDataStringC(self,'HbsAg','HbsAg',sayfa2_Kolon2,'kilo',40,'-,+');
//  setDataStringC(self,'AntiHbs','AntiHbs',sayfa2_Kolon2,'kilo',40,'-,+');
//  setDataStringC(self,'AntiHCV','AntiHCV',sayfa2_Kolon2,'_boy_',40,'-,+');
//  setDataStringC(self,'HIV','AntiHIV',sayfa2_Kolon2,'_boy_',40,'-,+');
//  setDataStringBLabel(self,'bosSatir3',sayfa2_Kolon2,'',1);


 // setDataStringMemo(self,'soygecmis','Soy Ge�mi�',sayfa3_Kolon1,'',630,40);
//  setDataStringMemo(self,'hastaNot','Tedavi Ge�mi�',sayfa3_Kolon1,'',630,40);
 // setDataStringMemo(self,'diger','Hasta �zel Durum',sayfa3_Kolon1,'',630,40);

 // setDataStringKontrol(self,txtSeansSikayet , 'GELHAST','Kronik Hast/Ba��m',sayfa3_Kolon1,'',300);


  tableColumnDescCreate;


 // cxpnlHastaGelisler.Align := alBottom;

  SayfaCaption('Firma Bilgileri','','' ,'','');

 end;


procedure TfrmFirmaKart.seansGunleriPropertiesEditValueChanged(Sender: TObject);
var
 s : string;
begin
  inherited;
//  s := seansGunleri.EditingValue;


 // ShowMessage(s,'','','info');
end;

procedure TfrmFirmaKart.cxKaydetClick(Sender: TObject);
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
            sirketKod.Text := dosyaNoYeniNumaraAl('FN');
            if sirketKod.Text = '0'
            then begin
              ShowMessageskin('Dosya No Al�namad�','','','info');
            end;
            foto.Picture.Assign(nil);
        end;

  end;

end;


procedure TfrmFirmaKart.cxButtonCClick(Sender: TObject);
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

  if sirketKod.Text = ''
  then begin
   ShowMessageSkin('Firma Dosyas� A��lmadan Bu ��lem Kullan�lamaz...','','','info');
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
            List.KolonBasliklari.Add('�la� Adi');

            List.KolonBasliklari.Create;
            List.TColcount := 2;
            List.TColsW := '100,300';
            List.ListeBaslik := '�la�lar';
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
         //ShowMessage('�ptal');
        end;
   -1 : begin
             if ADO_Gelisler.FieldByName('TakIpNo').AsString <> ''
             Then Begin
                  ShowMessageskin('Mevcut Takip Numaras� Var , Takip Al�namaz','','','info');
                  exit;
             End;

             if (copy(TcxCustomEdit(FindComponent('KurumTip')).EditingValue,1,1) = '8')
             then begin
                 exit;

             end else
             begin
                F := FormINIT(TagfrmTakipNo,GirisFormRecord,ikEvet,'Takip Al');
                if F <> nil then F.ShowModal;
             end;

        end;
   -2 : begin

        end;


   -3 : begin
         TakipSil('');
        end;
   -4 : begin
         F := FormINIT(TagfrmTakipBilgisiOku,GirisFormRecord);
         if F <> nil then F.ShowModal;
         //TakipBilgisiOkuForm(self);

        end;
   -5 : begin

        end;


   -6 : begin

        end;

 -25 : begin
          F := FormINIT(TagfrmAsiKarti,GirisFormRecord,ikHayir);
          if F <> nil then F.ShowModal;
       end;
 -26 : begin
        // EpikrizYaz(dosyaNo.Text,ADO_Gelisler.FieldByName('gelisNo').AsString,false);
       end;
 -27 : begin

       end;



 -28 : begin
          Application.CreateForm(TfrmSMS, frmSMS);
       //   frmSMS.dosyaNo := DosyaNo.Text;
        //  frmSMS.hasta := txtHastaAdi.Text + ' ' + txtSoyAdi.Text;
          frmSMS.ShowModal;
          frmSMS := nil;
       end;
 -29 : begin
         //HastaRaporlari;
       end;
 -30 : begin
        //  ReceteForm(dosyaNo.Text,_gelisNO_);
       end;
 -31 : begin
        //GelisDuzenle;
       end;
 -32 : begin
          F := FormINIT(TagfrmHastaTetkikEkle,GirisFormRecord);
          if F <> nil then F.ShowModal;
         // TetkikEkle(dosyaNo.Text,_gelisNo_,datalar.HastaBil.Tarih);
       end;
 -33 : begin
         //GelisSil;
       end;

 -35 : begin
          F := FormINIT(TagfrmTaniKarti,GirisFormRecord,ikHayir);
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
        //  datalar.HastaBil.dosyaNO := dosyaNo.Text;
         // datalar.HastaBil.gelisNo := _gelisNo_;
          F := FormINIT(TagfrmHastaRecete,GirisFormRecord,ikEvet,'Giri�');
          if F <> nil then F.ShowModal;

       end;
 140 : begin
            F := FormINIT(TagfrmHastaIlacTedavi,GirisFormRecord,ikEvet,'Giri�');
            if F <> nil then F.ShowModal;
      //  IlacTedaviKarti(dosyaNo.Text,_gelisNo_,noktasizTarih(DATALAR.Bilgi.ProvizyonTarihi));
       end;

  end;
end;


end.
