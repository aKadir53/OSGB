unit sirketYillikEgitimPlan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,ShellApi,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  kadir, KadirType,GetFormClass,GirisUnit,dxLayoutContainer,
  StdCtrls, Buttons, sBitBtn, ExtCtrls, cxContainer, cxLabel, cxTextEdit, cxGridExportLink,
  cxMaskEdit, cxDropDownEdit, cxCalendar, sCheckBox, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxGroupBox, cxRadioGroup, sGauge,
  cxPCdxBarPopupMenu, cxMemo, cxPC, cxCheckBox, rxAnimate, rxGIFCtrl,
  JvExControls, JvAnimatedImage, JvGIFCtrl, cxButtons, cxCurrencyEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, KadirLabel, cxImage,
  cxImageComboBox, cxButtonEdit, cxColorComboBox, Vcl.ImgList,data_modul;

type
  TfrmSirketYillikEgitimPlan = class(TGirisForm)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle7: TcxStyle;
    PopupMenu1: TPopupMenu;
    cxStyle8: TcxStyle;
    tmr1: TTimer;
    E1: TMenuItem;
    List: TListeAc;
    cxStyle9: TcxStyle;
    cxImageList1: TcxImageList;
    YillikEgitimPlanGrid: TcxGridKadir;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    YillikEgitimPlanSatirlar: TcxGridDBBandedTableView;
    YillikEgitimPlanGridLevel1: TcxGridLevel;
    N1: TMenuItem;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle10: TcxStyle;
    cxStyleRepository4: TcxStyleRepository;
    cxStyle11: TcxStyle;
    YillikEgitimPlanSatirlarFirmaYillikEgitimPlanID: TcxGridDBBandedColumn;
    YillikEgitimPlanSatirlarid: TcxGridDBBandedColumn;
    YillikEgitimPlanSatirlaregitimTanimi: TcxGridDBBandedColumn;
    YillikEgitimPlanSatirlaregitimKonulari: TcxGridDBBandedColumn;
    YillikEgitimPlanSatirlaregitimeKatilacaklar: TcxGridDBBandedColumn;
    YillikEgitimPlanSatirlarsure: TcxGridDBBandedColumn;
    YillikEgitimPlanSatirlarPTarih: TcxGridDBBandedColumn;
    YillikEgitimPlanSatirlarGTarih: TcxGridDBBandedColumn;
    YillikEgitimPlanSatirlaregitimVeren: TcxGridDBBandedColumn;
    YillikEgitimPlanSatirlaraciklama: TcxGridDBBandedColumn;
    YillikEgitimPlanSatirlaregitimVerenDoktor: TcxGridDBBandedColumn;
    procedure Fatura(islem: Integer);
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
                AButtonIndex: Integer); override;
    procedure FaturaDetay;
    procedure NewRecord(DataSet: TDataSet);
    procedure AfterPost(DataSet: TDataSet);
    procedure BeforePost(DataSet: TDataSet);
    procedure BeforeEdit(DataSet: TDataSet);

    procedure ButtonClick(Sender: TObject);
    procedure FaturaSatirTutarCustomDrawFooterCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure RDSSatirlarOlasilikPropertiesEditValueChanged(Sender: TObject);
    procedure PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure AfterScroll(DataSet: TDataSet);
    function CreateRotatedFont: HFONT;
    procedure RDSSatirlarNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure SirketlerPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
 //   function EArsivGonder(FaturaId : string) : string;
 //   function EArsivIptal(FaturaGuid : string) : string;
 //   function EArsivPDF(FaturaGuid : string ; _tag_ : integer) : string;
 //   procedure Gonder;

  private
    { Private declarations }

  protected
    procedure GozlemYazdir (const GozlemID : integer);

  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;



const
//LIB_DLL = 'NoktaDLL.dll';
  LIB_DLL = 'D:\Projeler\VS\c#\EFatura\EFaturaDLL\ClassLibrary1\bin\Debug\EFaturaDLL.dll';
  test = 'https://efatura-test.uyumsoft.com.tr/Services/Integration';
  gercek = 'https://efatura.uyumsoft.com.tr/Services/Integration';
var
  frmSirketYillikEgitimPlan: TfrmSirketYillikEgitimPlan;

implementation

uses StrUtils, Jpeg;

{$R *.dfm}

function TfrmSirketYillikEgitimPlan.CreateRotatedFont: HFONT;
  var
    ALogFont: TLogFont;
begin
    FillChar(ALogFont, SizeOf(ALogFont), 0);
   // GetObject(ANFont.Handle, SizeOf(ALogFont), @ALogFont);
    ALogFont.lfEscapement := 900;
    Result := CreateFontIndirect(ALogFont);
end;


procedure TfrmSirketYillikEgitimPlan.FaturaDetay;
var
 sql : string;
begin

sql :=
     'SELECT * ' +
     ' from firmaYillikEgitimPlani P ' +
     ' join firmaYillikEgitimPlanDetay D on D.FirmaYillikEgitimPlanID = P.id  ' +
     ' where P.id = ' + QuotedStr(TcxButtonEditKadir(FindComponent('id')).Text);

     YillikEgitimPlanGrid.Dataset.Active := False;
     YillikEgitimPlanGrid.Dataset.SQL.Text := sql;
     YillikEgitimPlanGrid.Dataset.Active := True;

end;

procedure TfrmSirketYillikEgitimPlan.FaturaSatirTutarCustomDrawFooterCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
//  FaturaToplamlari;
end;

procedure TfrmSirketYillikEgitimPlan.cxKaydetClick(Sender: TObject);
begin
  //SirketKodx.Text := datalar.AktifSirket; giriþ formuna eklendi.
  inherited;

  case TControl(sender).Tag  of
Kaydet : begin
         YillikEgitimPlanGrid.Enabled := True;
         FaturaDetay;
        end;
  Yeni : begin
           if datalar.IGU <> ''
           then begin
             TcxImageComboKadir(FindComponent('hazirlayan')).EditValue := datalar.IGU;
             TcxImageComboKadir(FindComponent('hazirlayan')).Enabled := False;
           end
           else
             TcxImageComboKadir(FindComponent('hazirlayan')).Enabled := True;
           TcxDateEditKadir(FindComponent('date_create')).EditValue := date;
           YillikEgitimPlanGrid.Enabled := False;
         //  FaturaDetay;
        end;
  end;
end;


procedure TfrmSirketYillikEgitimPlan.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    inherited;
    if TcxButtonEditKadir(FindComponent('id')).Text = '' then exit;

    Enabled;
    FaturaDetay;

    if (vartostr(TcxTextEditKadir(FindComponent('hazirlayan')).EditValue) <>
       datalar.IGU)
       //and TcxImageComboKadir(FindComponent('Onay')).EditValue = 1
    then begin
       YillikEgitimPlanSatirlar.OptionsData.Editing := False;
       YillikEgitimPlanSatirlar.OptionsData.Inserting := False;
       YillikEgitimPlanSatirlar.OptionsData.Deleting := False;

       TcxImageComboKadir(FindComponent('SirketKod')).Enabled := False;
       TcxTextEditKadir(FindComponent('hazirlayan')).Enabled := False;
       TcxTextEditKadir(FindComponent('doktor')).Enabled := False;
       TcxImageComboKadir(FindComponent('date_create')).Enabled := False;

    end
    else
    begin
       YillikEgitimPlanSatirlar.OptionsData.Editing := True;
       YillikEgitimPlanSatirlar.OptionsData.Inserting := True;
       YillikEgitimPlanSatirlar.OptionsData.Deleting := True;

       TcxImageComboKadir(FindComponent('SirketKod')).Enabled := True;
       TcxTextEditKadir(FindComponent('hazirlayan')).Enabled := True;
       TcxTextEditKadir(FindComponent('doktor')).Enabled := true;
       TcxImageComboKadir(FindComponent('date_create')).Enabled := True;

    end;


end;

function TfrmSirketYillikEgitimPlan.Init(Sender : TObject) : Boolean;
begin
  Result := True;
end;


procedure TfrmSirketYillikEgitimPlan.Fatura(islem: Integer);
begin
  //
end;

procedure TfrmSirketYillikEgitimPlan.NewRecord(DataSet: TDataSet);
begin
   YillikEgitimPlanGrid.Dataset.FieldByName('FirmaYillikEgitimPlanID').AsInteger := TcxButtonEditKadir(FindComponent('id')).EditingValue;
end;

procedure TfrmSirketYillikEgitimPlan.RDSSatirlarNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);

var
  Book : TBookmark;

procedure datawrite;
var
  Blob : TADOBlobStream;
begin
   YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('faliyetid').AsInteger := datalar.YillikCalismaPlan.faliyetid;
   YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('peryod').AsInteger := datalar.YillikCalismaPlan.peryod;
   YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('ocak').AsInteger := datalar.YillikCalismaPlan.ocak;
   YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('subat').AsInteger := datalar.YillikCalismaPlan.subat;
   YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('mart').AsInteger := datalar.YillikCalismaPlan.mart;
   YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('nisan').AsInteger := datalar.YillikCalismaPlan.nisan;
   YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('sorumlu2Konu').AsInteger := datalar.YillikCalismaPlan.konu2;
end;

procedure dataRead;
begin
   datalar.YillikCalismaPlan.faliyetid := YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('faliyetid').AsInteger;
   datalar.YillikCalismaPlan.peryod := YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('peryod').AsInteger;
   datalar.YillikCalismaPlan.ocak := YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('ocak').AsInteger;
   datalar.YillikCalismaPlan.subat := YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('subat').AsInteger;
   datalar.YillikCalismaPlan.mart := YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('mart').AsInteger;
   datalar.YillikCalismaPlan.nisan := YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('nisan').AsInteger;
   datalar.YillikCalismaPlan.mayis := YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('mayis').AsInteger;
   datalar.YillikCalismaPlan.haziran := YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('haziran').AsInteger;
   datalar.YillikCalismaPlan.temmuz := YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('temmuz').AsInteger;
   datalar.YillikCalismaPlan.agustos := YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('agustos').AsInteger;
   datalar.YillikCalismaPlan.eylul := YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('eylul').AsInteger;
   datalar.YillikCalismaPlan.ekim := YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('ekim').AsInteger;
   datalar.YillikCalismaPlan.kasim := YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('kasim').AsInteger;
   datalar.YillikCalismaPlan.aralik := YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('aralik').AsInteger;
   datalar.YillikCalismaPlan.ocakR := YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('ocak_R').AsInteger;
   datalar.YillikCalismaPlan.subatR := YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('subat_R').AsInteger;
   datalar.YillikCalismaPlan.martR := YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('mart_R').AsInteger;
   datalar.YillikCalismaPlan.nisanR := YillikEgitimPlanSatirlar.DataController.DataSet.FieldByName('nisan_R').AsInteger;
end;

begin

  case AButtonIndex of
   6 : begin

        if mrYes = ShowPopupForm('Faaliyet Ekle',yeniFaaliyet)
        then begin
         try
          YillikEgitimPlanSatirlar.DataController.DataSet.Append;
          datawrite;
          YillikEgitimPlanSatirlar.DataController.DataSet.post;
          YillikEgitimPlanSatirlar.DataController.DataSet.Active := False;
          YillikEgitimPlanSatirlar.DataController.DataSet.Active := True;
         // datalar.SahaDenetim.Image := nil;
          ADone := True;
        except on e : Exception do
          begin
           ShowMessageSkin(e.Message,'','','info');
           YillikEgitimPlanSatirlar.DataController.DataSet.Cancel;
          end;
        end;
        end;
    end;

   9 : begin
        dataRead;
        if mrYes = ShowPopupForm('Düzenle',FaaliyetDuzenle)
        then begin
         try
          Book := YillikEgitimPlanSatirlar.DataController.DataSet.Bookmark;
          YillikEgitimPlanSatirlar.DataController.DataSet.Edit;
          datawrite;
          YillikEgitimPlanSatirlar.DataController.DataSet.Post;
          YillikEgitimPlanSatirlar.DataController.DataSet.Active := False;
          YillikEgitimPlanSatirlar.DataController.DataSet.Active := True;
          YillikEgitimPlanSatirlar.DataController.DataSet.GotoBookmark(Book);
          //Satirlar.DataController.DataSet.Refresh;
         except on e : Exception do
          begin
           ShowMessageSkin(e.Message,'','','info');
           YillikEgitimPlanSatirlar.DataController.DataSet.Cancel;
          end;
         end;
        end;
    end;

  end;


end;

procedure TfrmSirketYillikEgitimPlan.RDSSatirlarOlasilikPropertiesEditValueChanged(
  Sender: TObject);
begin
  if TcxImageComboKadir(sender).Name = 'Method'
  then
   FaturaDetay;

//  RDSSatirlar.DataController.post;
end;

procedure TfrmSirketYillikEgitimPlan.PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);

begin
(*
  if RDSSatirlar.Controller.FocusedColumn.Name = 'RDSSatirlarRisk_tanim'
  Then begin
    List.Table := 'RDS_Risk';
    L := List.ListeGetir;
    RDSSatirlar.DataController.DataSet.Edit;
    RDSSatirlar.DataController.DataSet.FieldByName('Risk_tanim').AsString := L[0].Kolon2;
    RDSSatirlar.DataController.DataSet.Post;
  end;

  if RDSSatirlar.Controller.FocusedColumn.Name = 'RDSSatirlarTehlike'
  Then begin
    List.Table := 'RDS_Tehlike';
    L := List.ListeGetir;
    RDSSatirlar.DataController.DataSet.Edit;
    RDSSatirlar.DataController.DataSet.FieldByName('Tehlike').AsString := L[0].Kolon2;
    RDSSatirlar.DataController.DataSet.Post;
  end;
  *)
end;

procedure TfrmSirketYillikEgitimPlan.AfterScroll(DataSet: TDataSet);
begin
//
end;

procedure TfrmSirketYillikEgitimPlan.AfterPost(DataSet: TDataSet);
begin
     cxPanelButtonEnabled(false,True,false);
   //  Satirlar.DataController.Dataset.Refresh;
   //  FaturaToplamlari;

end;

procedure TfrmSirketYillikEgitimPlan.BeforeEdit(DataSet: TDataSet);
begin
  // Satirlar.DataController.Dataset.DataSource.DataSet.Properties['Unique Table'].Value := 'SirketSahaGozetimDetay';
end;

procedure TfrmSirketYillikEgitimPlan.BeforePost(DataSet: TDataSet);
begin

//  RDSSatirlar.DataController.DataSet.FieldByName('Risk').AsFloat :=
 // RDSSatirlar.DataController.DataSet.FieldByName('Olasilik').AsFloat *
 // RDSSatirlar.DataController.DataSet.FieldByName('Frekans').AsFloat *
 // RDSSatirlar.DataController.DataSet.FieldByName('Siddet').AsFloat;

  //Satirlar.DataController.DataSet.FieldByName('RDS').AsInteger :=
 //   Skor(RDSSatirlar.DataController.DataSet.FieldByName('Risk').AsFloat);
end;

procedure TfrmSirketYillikEgitimPlan.SirketlerPropertiesChange(Sender: TObject);
var
  sube : string;
begin

 sube := ' and IGU = ' + QuotedStr(datalar.IGU);

 TcxImageComboKadir(FindComponent('hazirlayan')).TableName := SirketIGUToSQLStr(TcxImageComboKadir(FindComponent('sirketKod')).EditingValue);
 TcxImageComboKadir(FindComponent('hazirlayan')).Filter := ' durum = ''Aktif''';

 TcxImageComboKadir(FindComponent('doktor')).TableName := SirketDoktorToSQLStr(TcxImageComboKadir(FindComponent('sirketKod')).EditingValue);
 TcxImageComboKadir(FindComponent('doktor')).Filter := ' durum = ''Aktif''';

 try
    TcxImageComboBoxProperties(YillikEgitimPlanSatirlaregitimVeren.Properties).Items :=
    TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('hazirlayan')).Properties).Items;
    TcxImageComboBoxProperties(YillikEgitimPlanSatirlaregitimVerenDoktor.Properties).Items :=
    TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('doktor')).Properties).Items;

 finally
 end;


(*
 if Assigned(TcxImageComboKadir(FindComponent('subeKod')))
 Then
  TcxImageComboKadir(FindComponent('subeKod')).Filter := ' sirketKod = ' +
  QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditingValue)) + sube;
  *)
end;

procedure TfrmSirketYillikEgitimPlan.cxButtonCClick(Sender: TObject);
var
  dosya : TOpenDialog;
  TopluDataset : TDataSetKadir;
  FB : TFirmaBilgi;
begin
  inherited;


  case Tcontrol(sender).Tag of
 -20 : begin
          TopluDataset.Dataset0 := datalar.QuerySelect('select * from firmaYillikEgitimPlani_View where id = ' +
                                                        varTostr(TcxButtonEditKadir(FindComponent('id')).EditValue));

          PrintYap('YEP','Çalýþma Planý','',TopluDataset);
        end;

  -30 : begin
          FB := FirmaBilgileri(vartostr(TcxImageComboKadir(FindComponent('sirketKod')).EditValue));
          cxExceleGonder(YillikEgitimPlanGrid,'YillikEgitimPlan.xls');
          if (mailGonder(FB.YetkiliMail,'Ýþ Planý',
                        'Firmanýzda Yýl içersinde Yapýlacak Olan Eðitimler, ekteki Eðitim Planý dosyasý ile bilginize sunulmuþtur',
                        'YillikEgitimPlan.xls')
               = '0000')
             Then ShowMessageSkin('Email Bilgilendirmesi Yapýldý','','','info')
              else ShowMessageSkin('Email Bilgilendirmesi Yapýlamadý','','','info')


        end;

  -24:begin
       dosya := TOpenDialog.Create(nil);
       try
         if not dosya.Execute then Exit;
        // DokumanYukle(Satirlar.DataController.Dataset,'Image',dosya.FileName);
       finally
         dosya.free;
       end;

      end;
  -25 : begin
          //DokumanAc(Satirlar.DataController.Dataset,'Image','DOFBelge');
        end;
  end;
end;

procedure TfrmSirketYillikEgitimPlan.ButtonClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
begin
    F := FormINIT(9010,GirisRecord,ikHayir,'');
    if F <> nil then F.ShowModal;
end;


procedure TfrmSirketYillikEgitimPlan.FormCreate(Sender: TObject);
var
  Faturalar : TListeAc;
  sirketlerx,subeler ,RiskBolum , IGU ,doktor : TcxImageComboKadir;
  FaturaTarihi : TcxDateEditKadir;
  where , sube : string;
begin
  inherited;


  cxPanel.Visible := True;
  Menu := PopupMenu1;
  indexFieldName := 'id';
  TableName := 'firmaYillikEgitimPlani';
 // TopPanel.Visible := true;

  if datalar.UserGroup = '1'
  then
    where := ''
  else
  if datalar.UserGroup = '10'
  then
    where := ' sirketKod = ' + QuotedStr(datalar.sirketKodu)
  else
    where := ' hazirlayan = ' + QuotedStr(datalar.IGU);



  Faturalar := ListeAcCreate('firmaYillikEgitimPlani','id,date_create,hazirlayan',
                       'ID,Tarihi,Ýþ Güvenlik Uzm.',
                       '40,80,150','ID','Yýllýk Eðitim Planlarý',where,5,True);

  setDataStringB(self,'id','Plan ID',Kolon1,'trh',50,Faturalar,True,nil,'','',True,True,-100);
  TcxButtonEditKadir(FindComponent('id')).Identity := True;

  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,FaturaTarihi,'date_create','Hazýrlama Tarihi',Kolon1,'trh',80);
  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,FaturaTarihi,'gecerlilik','Geçerlilik Tarihi',Kolon1,'trh',80);


  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'SIRKETLER_TNM_view';
  sirketlerx.ValueField := 'SirketKod';
  sirketlerx.DisplayField := 'Tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Filter := datalar.sirketlerUserFilter;
  setDataStringKontrol(self,sirketlerx,'SirketKod','Þirket',Kolon1,'trh',250,0,alNone,'');
  TcxImageComboKadir(FindComponent('SirketKod')).Properties.OnEditValueChanged := SirketlerPropertiesChange;

(*
  sube := ' and IGU = ' + QuotedStr(datalar.IGU);

  Subeler := TcxImageComboKadir.Create(self);
  Subeler.Conn := Datalar.ADOConnection2;
  Subeler.TableName := 'SIRKET_SUBE_TNM';
  Subeler.ValueField := 'subeKod';
  Subeler.DisplayField := 'subeTanim';
  Subeler.Filter := ' SirketKod = ' + QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue)) + sube + ' and (Pasif = 0 or Pasif is Null)';
  setDataStringKontrol(self,Subeler,'SubeKod','Þube',Kolon1,'trh',100,0,alNone,'');
  *)

  IGU := TcxImageComboKadir.Create(self);
  IGU.Conn := Datalar.ADOConnection2;
  IGU.TableName := 'IGU';
  IGU.ValueField := 'kod';
  IGU.DisplayField := 'Tanimi';
  IGU.BosOlamaz := False;
  //IGU.Filter := '';
  setDataStringKontrol(self,IGU,'hazirlayan','Ýþ Güvenlik Uzm',Kolon1,'trh',120,0,alNone,'');

  doktor := TcxImageComboKadir.Create(self);
  doktor.Conn := Datalar.ADOConnection2;
  doktor.TableName := 'DoktorlarT';
  doktor.ValueField := 'kod';
  doktor.DisplayField := 'Tanimi';
  doktor.BosOlamaz := False;
  //doktor.Filter := '';
  setDataStringKontrol(self,doktor,'doktor','Doktor',Kolon1,'trh',120,0,alNone,'');



  try
     TcxImageComboBoxProperties(YillikEgitimPlanSatirlaregitimVeren.Properties).Items := TcxImageComboBoxProperties(IGU.Properties).Items;
  finally
  end;




//  setDataStringBLabel(self,'bosSatir',kolon1,'',1000,'Risk Kaynaklarý');
  setDataStringKontrol(self,YillikEgitimPlanGrid,'YillikEgitimPlanGrid','',Kolon1,'',1,1,alClient);


  YillikEgitimPlanGrid.Dataset.Connection := datalar.ADOConnection2;


  YillikEgitimPlanGrid.Dataset.OnNewRecord := NewRecord;
  YillikEgitimPlanGrid.Dataset.AfterPost := AfterPost;
  YillikEgitimPlanGrid.Dataset.BeforePost := BeforePost;
  YillikEgitimPlanGrid.Dataset.AfterScroll := AfterScroll;
  YillikEgitimPlanGrid.Dataset.BeforeEdit := BeforeEdit;


  kolon2.Visible := false;
  kolon3.Visible := false;
  kolon4.Visible := false;


  //GridFaturalar.DataController.DataSource := DataSource;
  SayfaCaption('Eðitim Plan','','','','');
  Disabled(self,True);
end;

procedure TfrmSirketYillikEgitimPlan.FormShow(Sender: TObject);
begin
  inherited;
//  GridToSayfaClient('YillikPlanGrid',self);
  // TcxGrid(FindComponent('YillikPlanGrid')).Width := sayfa1.Width - 20;
//   TcxGrid(FindComponent('YillikPlanGrid')).Height := sayfa1.Height - 45;
end;

procedure TfrmSirketYillikEgitimPlan.GozlemYazdir(const GozlemID: integer);
var
  ado : TADOQuery;
  sql : String;
  TopluDataset : TDataSetKadir;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'sp_SahaGozlemRaporBaski ' + IntToStr (GozlemID);

    datalar.QuerySelect(ado, sql);
    TopluDataset.Dataset0 := ado;
    TopluDataset.Dataset0.Name := 'SahaSaglikGozetimRaporu';

    PrintYap('007','Saha Saðlýk Gözetim Raporu','',TopluDataset,pTNone)
  finally
    ado.free;
  end;
end;

procedure TfrmSirketYillikEgitimPlan.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

