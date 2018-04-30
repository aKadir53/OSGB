unit sirketYillikCalismaPlan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,ShellApi,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  kadir, kadirMedula3, KadirType,GetFormClass,GirisUnit,dxLayoutContainer,
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
  TfrmSirketYillikCalismaPlan = class(TGirisForm)
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
    YillikPlanGrid: TcxGridKadir;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    YillikPlanSatirlar: TcxGridDBBandedTableView;
    YillikPlanGridLevel1: TcxGridLevel;
    N1: TMenuItem;
    YillikPlanSatirlarFirmaYillikCalismaPlanID: TcxGridDBBandedColumn;
    YillikPlanSatirlarid: TcxGridDBBandedColumn;
    YillikPlanSatirlarfaliyetid: TcxGridDBBandedColumn;
    YillikPlanSatirlarperyod: TcxGridDBBandedColumn;
    YillikPlanSatirlarocak: TcxGridDBBandedColumn;
    YillikPlanSatirlarsubat: TcxGridDBBandedColumn;
    YillikPlanSatirlarmart: TcxGridDBBandedColumn;
    YillikPlanSatirlarnisan: TcxGridDBBandedColumn;
    YillikPlanSatirlarmayis: TcxGridDBBandedColumn;
    YillikPlanSatirlarhaziran: TcxGridDBBandedColumn;
    YillikPlanSatirlartemmuz: TcxGridDBBandedColumn;
    YillikPlanSatirlaragustos: TcxGridDBBandedColumn;
    YillikPlanSatirlareylul: TcxGridDBBandedColumn;
    YillikPlanSatirlarekim: TcxGridDBBandedColumn;
    YillikPlanSatirlarkasim: TcxGridDBBandedColumn;
    YillikPlanSatirlararalik: TcxGridDBBandedColumn;
    YillikPlanSatirlarocak_R: TcxGridDBBandedColumn;
    YillikPlanSatirlarsubat_R: TcxGridDBBandedColumn;
    YillikPlanSatirlarmart_R: TcxGridDBBandedColumn;
    YillikPlanSatirlarnisan_R: TcxGridDBBandedColumn;
    YillikPlanSatirlarmayis_R: TcxGridDBBandedColumn;
    YillikPlanSatirlarhaziran_R: TcxGridDBBandedColumn;
    YillikPlanSatirlartemmuz_R: TcxGridDBBandedColumn;
    YillikPlanSatirlaragustos_R: TcxGridDBBandedColumn;
    YillikPlanSatirlareylul_R: TcxGridDBBandedColumn;
    YillikPlanSatirlarekim_R: TcxGridDBBandedColumn;
    YillikPlanSatirlarkasim_R: TcxGridDBBandedColumn;
    YillikPlanSatirlararalik_R: TcxGridDBBandedColumn;
    YillikPlanSatirlarsorumlu1: TcxGridDBBandedColumn;
    YillikPlanSatirlarsorumlu1Konu: TcxGridDBBandedColumn;
    YillikPlanSatirlarsorumlu2: TcxGridDBBandedColumn;
    YillikPlanSatirlarsorumlu2Konu: TcxGridDBBandedColumn;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle10: TcxStyle;
    cxStyleRepository4: TcxStyleRepository;
    cxStyle11: TcxStyle;
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
  frmSirketYillikCalismaPlan: TfrmSirketYillikCalismaPlan;

implementation

uses StrUtils, Jpeg;

{$R *.dfm}

function TfrmSirketYillikCalismaPlan.CreateRotatedFont: HFONT;
  var
    ALogFont: TLogFont;
begin
    FillChar(ALogFont, SizeOf(ALogFont), 0);
   // GetObject(ANFont.Handle, SizeOf(ALogFont), @ALogFont);
    ALogFont.lfEscapement := 900;
    Result := CreateFontIndirect(ALogFont);
end;


procedure TfrmSirketYillikCalismaPlan.FaturaDetay;
var
 sql : string;
begin

sql :=
     'SELECT * ' +
     ' from firmaYillikCalismaPlani P ' +
     ' join firmaYillikCalismaPlanDetay D on D.FirmaYillikCalismaPlanID = P.id  ' +
     ' join FaaliyetKonulari K on K.kod = D.faliyetid ' +
     ' where P.id = ' + QuotedStr(TcxButtonEditKadir(FindComponent('id')).Text);

     YillikPlanGrid.Dataset.Active := False;
     YillikPlanGrid.Dataset.SQL.Text := sql;
     YillikPlanGrid.Dataset.Active := True;

end;

procedure TfrmSirketYillikCalismaPlan.FaturaSatirTutarCustomDrawFooterCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
//  FaturaToplamlari;
end;

procedure TfrmSirketYillikCalismaPlan.cxKaydetClick(Sender: TObject);
begin
  //SirketKodx.Text := datalar.AktifSirket; giriþ formuna eklendi.
  inherited;

  case TControl(sender).Tag  of
    0 : begin
         YillikPlanGrid.Enabled := True;
        end;
    2 : begin
           if datalar.IGU <> ''
           then begin
             TcxImageComboKadir(FindComponent('hazirlayan')).EditValue := datalar.IGU;
             TcxImageComboKadir(FindComponent('hazirlayan')).Enabled := False;
           end
           else
             TcxImageComboKadir(FindComponent('hazirlayan')).Enabled := True;
           TcxDateEditKadir(FindComponent('date_create')).EditValue := date;
           YillikPlanGrid.Enabled := False;
           FaturaDetay;
        end;
  end;
end;


procedure TfrmSirketYillikCalismaPlan.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    inherited;
    Enabled;
    FaturaDetay;

    if (vartostr(TcxTextEditKadir(FindComponent('hazirlayan')).EditValue) <>
       datalar.IGU)
       //and TcxImageComboKadir(FindComponent('Onay')).EditValue = 1
    then begin
       YillikPlanSatirlar.OptionsData.Editing := False;
       YillikPlanSatirlar.OptionsData.Inserting := False;
       YillikPlanSatirlar.OptionsData.Deleting := False;

       TcxImageComboKadir(FindComponent('SirketKod')).Enabled := False;
       TcxTextEditKadir(FindComponent('hazirlayan')).Enabled := False;
       TcxImageComboKadir(FindComponent('date_create')).Enabled := False;
       TcxImageComboKadir(FindComponent('isveren')).Enabled := False;
      // TcxImageComboKadir(FindComponent('Onay')).Enabled := False;

    end
    else
    begin
       YillikPlanSatirlar.OptionsData.Editing := True;
       YillikPlanSatirlar.OptionsData.Inserting := True;
       YillikPlanSatirlar.OptionsData.Deleting := True;

       TcxImageComboKadir(FindComponent('SirketKod')).Enabled := True;
       TcxTextEditKadir(FindComponent('hazirlayan')).Enabled := True;
       TcxImageComboKadir(FindComponent('date_create')).Enabled := True;
       TcxImageComboKadir(FindComponent('isveren')).Enabled := True;
    //   TcxImageComboKadir(FindComponent('Onay')).Enabled := True;
    end;


end;

function TfrmSirketYillikCalismaPlan.Init(Sender : TObject) : Boolean;
begin
  Result := True;
end;


procedure TfrmSirketYillikCalismaPlan.Fatura(islem: Integer);
begin
  //
end;

procedure TfrmSirketYillikCalismaPlan.NewRecord(DataSet: TDataSet);
begin
   YillikPlanGrid.Dataset.FieldByName('sirketSahaDenetimId').AsInteger := TcxButtonEditKadir(FindComponent('id')).EditingValue;
end;

procedure TfrmSirketYillikCalismaPlan.RDSSatirlarNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);

var
  Book : TBookmark;

procedure datawrite;
var
  Blob : TADOBlobStream;
begin
   YillikPlanSatirlar.DataController.DataSet.FieldByName('TehlikeliDurum').AsString := datalar.SahaDenetim.TehlikeliDurum;

   if datalar.SahaDenetim.Bolum <= 0 then
     YillikPlanSatirlar.DataController.DataSet.FieldByName('Bolum').Clear
    else
     YillikPlanSatirlar.DataController.DataSet.FieldByName('Bolum').AsInteger := datalar.SahaDenetim.Bolum;

   YillikPlanSatirlar.DataController.DataSet.FieldByName('Yonetmelik').AsString := datalar.SahaDenetim.Yonetmelik;

   YillikPlanSatirlar.DataController.DataSet.FieldByName('IlgiliKisi').AsString := datalar.SahaDenetim.IlgiliKisi;

//   Satirlar.DataController.DataSet.FieldByName('BolumYetkilisi').AsString := datalar.Risk.SSGBolumYetkilisi;

   if datalar.SahaDenetim.isinDurumu <= 0 then
     YillikPlanSatirlar.DataController.DataSet.FieldByName('isinDurumu').Clear
    else
     YillikPlanSatirlar.DataController.DataSet.FieldByName('isinDurumu').AsVariant := datalar.SahaDenetim.isinDurumu;

  // Satirlar.DataController.DataSet.FieldByName('Image').AsVariant := datalar.SahaDenetim.Image;

    if Assigned(datalar.SahaDenetim.Image.Picture.Graphic)
    then begin
      Blob := TADOBlobStream.Create(TBlobField(YillikPlanSatirlar.DataController.DataSet.FieldByName('Image')),bmwrite);
      try
      //  datalar.Risk.Image.Picture.SaveToFile('dd.jpg');
        datalar.SahaDenetim.Image.Picture.Graphic.SaveToStream(Blob);
       // Blob.LoadFromStream(datalar.Risk.Stream);
        Blob.Position := 0;
        TBlobField(YillikPlanSatirlar.DataController.DataSet.FieldByName('Image')).LoadFromStream(Blob);
      finally
        Blob.Free;
      end;
    end;

end;

procedure dataRead;
var
  G : TGraphic;
begin

   g := TJpegimage.Create;
   try
      g.Assign(YillikPlanSatirlar.DataController.DataSet.FieldByName('Image'));
      datalar.SahaDenetim.Image := TcxImage.Create(nil);
      datalar.SahaDenetim.Image.Picture.Assign(g);
  //    datalar.Risk.Image.Picture.SaveToFile('dd.jpg');
   finally
     g.free;
   end;

   datalar.SahaDenetim.TehlikeliDurum := YillikPlanSatirlar.DataController.DataSet.FieldByName('TehlikeliDurum').AsString;
   datalar.SahaDenetim.Bolum := YillikPlanSatirlar.DataController.DataSet.FieldByName('Bolum').AsInteger;
   datalar.SahaDenetim.Yonetmelik := YillikPlanSatirlar.DataController.DataSet.FieldByName('Yonetmelik').AsString;
   datalar.SahaDenetim.IlgiliKisi := YillikPlanSatirlar.DataController.DataSet.FieldByName('IlgiliKisi').AsString;
   datalar.SahaDenetim.isinDurumu := YillikPlanSatirlar.DataController.DataSet.FieldByName('isinDurumu').AsInteger;
end;

begin

  case AButtonIndex of
   6 : begin
        datalar.SahaDenetim.TehlikeliDurum  := '';
        datalar.SahaDenetim.Bolum := -1;
        datalar.SahaDenetim.Yonetmelik := '';
        datalar.SahaDenetim.IlgiliKisi := '';
        datalar.SahaDenetim.isinDurumu := -1;
        datalar.SahaDenetim.Image := TcxImage.Create(nil);


        if mrYes = ShowPopupForm('Saha Gözetim Ekle',yeniDenetim)
        then begin
         try
          YillikPlanSatirlar.DataController.DataSet.Append;
          datawrite;
          YillikPlanSatirlar.DataController.DataSet.post;
          YillikPlanSatirlar.DataController.DataSet.Active := False;
          YillikPlanSatirlar.DataController.DataSet.Active := True;
         // datalar.SahaDenetim.Image := nil;
          ADone := True;
        except on e : Exception do
          begin
           ShowMessageSkin(e.Message,'','','info');
           YillikPlanSatirlar.DataController.DataSet.Cancel;
          end;
        end;
        end;
    end;

   9 : begin
        dataRead;
        if mrYes = ShowPopupForm('Düzenle',denetimDuzenle)
        then begin
         try
          Book := YillikPlanSatirlar.DataController.DataSet.Bookmark;
          YillikPlanSatirlar.DataController.DataSet.Edit;
          datawrite;
          YillikPlanSatirlar.DataController.DataSet.Post;
          YillikPlanSatirlar.DataController.DataSet.Active := False;
          YillikPlanSatirlar.DataController.DataSet.Active := True;
          YillikPlanSatirlar.DataController.DataSet.GotoBookmark(Book);
          //Satirlar.DataController.DataSet.Refresh;
         except on e : Exception do
          begin
           ShowMessageSkin(e.Message,'','','info');
           YillikPlanSatirlar.DataController.DataSet.Cancel;
          end;
         end;
        end;
    end;

  end;


end;

procedure TfrmSirketYillikCalismaPlan.RDSSatirlarOlasilikPropertiesEditValueChanged(
  Sender: TObject);
begin
  if TcxImageComboKadir(sender).Name = 'Method'
  then
   FaturaDetay;

//  RDSSatirlar.DataController.post;
end;

procedure TfrmSirketYillikCalismaPlan.PropertiesButtonClick(Sender: TObject;
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

procedure TfrmSirketYillikCalismaPlan.AfterScroll(DataSet: TDataSet);
begin
//
end;

procedure TfrmSirketYillikCalismaPlan.AfterPost(DataSet: TDataSet);
begin
     cxPanelButtonEnabled(false,True,false);
   //  Satirlar.DataController.Dataset.Refresh;
   //  FaturaToplamlari;

end;

procedure TfrmSirketYillikCalismaPlan.BeforeEdit(DataSet: TDataSet);
begin
  // Satirlar.DataController.Dataset.DataSource.DataSet.Properties['Unique Table'].Value := 'SirketSahaGozetimDetay';
end;

procedure TfrmSirketYillikCalismaPlan.BeforePost(DataSet: TDataSet);
begin

//  RDSSatirlar.DataController.DataSet.FieldByName('Risk').AsFloat :=
 // RDSSatirlar.DataController.DataSet.FieldByName('Olasilik').AsFloat *
 // RDSSatirlar.DataController.DataSet.FieldByName('Frekans').AsFloat *
 // RDSSatirlar.DataController.DataSet.FieldByName('Siddet').AsFloat;

  //Satirlar.DataController.DataSet.FieldByName('RDS').AsInteger :=
 //   Skor(RDSSatirlar.DataController.DataSet.FieldByName('Risk').AsFloat);
end;

procedure TfrmSirketYillikCalismaPlan.SirketlerPropertiesChange(Sender: TObject);
var
  sube : string;
begin

 sube := ' and IGU = ' + QuotedStr(datalar.IGU);

(*
 if Assigned(TcxImageComboKadir(FindComponent('subeKod')))
 Then
  TcxImageComboKadir(FindComponent('subeKod')).Filter := ' sirketKod = ' +
  QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditingValue)) + sube;
  *)
end;

procedure TfrmSirketYillikCalismaPlan.cxButtonCClick(Sender: TObject);
var
  dosya : TOpenDialog;
  TopluDataset : TDataSetKadir;
  FB : TFirmaBilgi;
begin
  inherited;


  case Tcontrol(sender).Tag of
 -20 : begin
          TopluDataset.Dataset0 := datalar.QuerySelect('select * from SirketSahaDenetim_view where id = ' +
                                                        varTostr(TcxButtonEditKadir(FindComponent('id')).EditValue));
          TopluDataset.Dataset1 := YillikPlanGrid.Dataset;

          PrintYap('SDF','Saha Denetim','',TopluDataset);
        end;

  -30 : begin
          FB := FirmaBilgileri(vartostr(TcxImageComboKadir(FindComponent('sirketKod')).EditValue));
          cxExceleGonder(YillikPlanGrid,'SahaGozetim.xls');
          if (mailGonder(FB.YetkiliMail,'Saha Denetim',
                        'Yapýlan Saha Denetim Sonucu , ekteki dosyada bilginize sunulmuþtur',
                        'SahaGozetim.xls')
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

procedure TfrmSirketYillikCalismaPlan.ButtonClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
begin
    F := FormINIT(9010,GirisRecord,ikHayir,'');
    if F <> nil then F.ShowModal;
end;


procedure TfrmSirketYillikCalismaPlan.FormCreate(Sender: TObject);
var
  Faturalar : TListeAc;
  sirketlerx,subeler ,RiskBolum , IGU : TcxImageComboKadir;
  FaturaTarihi : TcxDateEditKadir;
  where , sube : string;
begin
  inherited;


  cxPanel.Visible := True;
  Menu := PopupMenu1;
  indexFieldName := 'id';
  TableName := 'firmaYillikCalismaPlani';
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



  Faturalar := ListeAcCreate('firmaYillikCalismaPlani','id,date_create,hazirlayan',
                       'ID,Tarihi,Ýþ Güvenlik Uzm.',
                       '40,80,150','ID','Saha Gözetimleri',where,5,True);

  setDataStringB(self,'id','Plan ID',Kolon1,'trh',50,Faturalar,True,nil,'','',True,True,-100);
  TcxButtonEditKadir(FindComponent('id')).Identity := True;

  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,FaturaTarihi,'date_create','Hazýrlama Tarihi',Kolon1,'trh',80);


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
  IGU.Filter := '';
  setDataStringKontrol(self,IGU,'hazirlayan','Ýþ Güvenlik Uzm',Kolon1,'trh',120,0,alNone,'');




  RiskBolum := TcxImageComboKadir.Create(self);
  RiskBolum.Name := 'FaaliyetKonulari';
  RiskBolum.Tag := -100;
  RiskBolum.Conn := datalar.ADOConnection2;
  RiskBolum.TableName := 'FaaliyetKonulari';
  RiskBolum.ValueField := 'Kod';
  RiskBolum.DisplayField := 'tanimi';
  RiskBolum.Filter := '';



  try
     TcxImageComboBoxProperties(YillikPlanSatirlarfaliyetid.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('FaaliyetKonulari')).Properties).Items;

     TcxImageComboBoxProperties(YillikPlanSatirlarocak_R.Properties).Items :=
     TcxImageComboBoxProperties(YillikPlanSatirlarocak.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlarsubat.Properties).Items :=
     TcxImageComboBoxProperties(YillikPlanSatirlarocak.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlarsubat_R.Properties).Items :=
     TcxImageComboBoxProperties(YillikPlanSatirlarocak.Properties).Items;



  finally
  end;




//  setDataStringBLabel(self,'bosSatir',kolon1,'',1000,'Risk Kaynaklarý');
  setDataStringKontrol(self,YillikPlanGrid,'YillikPlanGrid','',Kolon1,'',1070,450);


  YillikPlanGrid.Dataset.Connection := datalar.ADOConnection2;


  YillikPlanGrid.Dataset.OnNewRecord := NewRecord;
  YillikPlanGrid.Dataset.AfterPost := AfterPost;
  YillikPlanGrid.Dataset.BeforePost := BeforePost;
  YillikPlanGrid.Dataset.AfterScroll := AfterScroll;
  YillikPlanGrid.Dataset.BeforeEdit := BeforeEdit;


  kolon2.Width := 0;
  Kolon3.Width := 0;
  Kolon4.Width := 0;


  //GridFaturalar.DataController.DataSource := DataSource;
  SayfaCaption('','','','','');
  Disabled(self,True);
end;

procedure TfrmSirketYillikCalismaPlan.GozlemYazdir(const GozlemID: integer);
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

procedure TfrmSirketYillikCalismaPlan.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

