unit sirketSahaDenetim;

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
  cxImageComboBox, cxButtonEdit, cxColorComboBox, Vcl.ImgList;

type
  TfrmSirketSahaDenetim = class(TGirisForm)
    DataSource1: TDataSource;
    ADO_RiskDetay: TADOQuery;
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
    SahaGozetimGrid: TcxGridKadir;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    Satirlar: TcxGridDBBandedTableView;
    SahaGozetimGridLevel1: TcxGridLevel;
    SatirlarsirketSahaDenetimId: TcxGridDBBandedColumn;
    Satirlarid: TcxGridDBBandedColumn;
    SatirlarTehlikeliDurum: TcxGridDBBandedColumn;
    SatirlarYonetmelik: TcxGridDBBandedColumn;
    SatirlarIlgiliKisi: TcxGridDBBandedColumn;
    SatirlarisinDurumu: TcxGridDBBandedColumn;
    SatirlarImage: TcxGridDBBandedColumn;
    SatirlarBolum: TcxGridDBBandedColumn;
    N1: TMenuItem;
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
  frmSirketSahaDenetim: TfrmSirketSahaDenetim;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}

function TfrmSirketSahaDenetim.CreateRotatedFont: HFONT;
  var
    ALogFont: TLogFont;
begin
    FillChar(ALogFont, SizeOf(ALogFont), 0);
   // GetObject(ANFont.Handle, SizeOf(ALogFont), @ALogFont);
    ALogFont.lfEscapement := 900;
    Result := CreateFontIndirect(ALogFont);
end;


procedure TfrmSirketSahaDenetim.FaturaDetay;
var
 sql : string;
begin

sql :=
     'SELECT * ' +
     ' FROM dbo.SirketSahaDenetimDetay AS sgd LEFT OUTER JOIN '+
                'dbo.RDS_RiskBolum AS rb ON rb.kod = sgd.Bolum ' +
                ' where sirketSahaDenetimId = ' + QuotedStr(TcxButtonEditKadir(FindComponent('id')).Text);


     SahaGozetimGrid.Dataset.Active := False;
     SahaGozetimGrid.Dataset.SQL.Text := sql;
     SahaGozetimGrid.Dataset.Active := True;

end;

procedure TfrmSirketSahaDenetim.FaturaSatirTutarCustomDrawFooterCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
//  FaturaToplamlari;
end;

procedure TfrmSirketSahaDenetim.cxKaydetClick(Sender: TObject);
begin
  //SirketKodx.Text := datalar.AktifSirket; giriþ formuna eklendi.
  inherited;

  case TControl(sender).Tag  of
    0 : begin
         SahaGozetimGrid.Enabled := True;
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
           SahaGozetimGrid.Enabled := False;
           FaturaDetay;
        end;
  end;
end;


procedure TfrmSirketSahaDenetim.cxButtonEditPropertiesButtonClick(Sender: TObject;
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
       Satirlar.OptionsData.Editing := False;
       Satirlar.OptionsData.Inserting := False;
       Satirlar.OptionsData.Deleting := False;

       TcxImageComboKadir(FindComponent('SirketKod')).Enabled := False;
       TcxTextEditKadir(FindComponent('hazirlayan')).Enabled := False;
       TcxImageComboKadir(FindComponent('date_create')).Enabled := False;
       TcxImageComboKadir(FindComponent('isveren')).Enabled := False;
      // TcxImageComboKadir(FindComponent('Onay')).Enabled := False;

    end
    else
    begin
       Satirlar.OptionsData.Editing := True;
       Satirlar.OptionsData.Inserting := True;
       Satirlar.OptionsData.Deleting := True;

       TcxImageComboKadir(FindComponent('SirketKod')).Enabled := True;
       TcxTextEditKadir(FindComponent('hazirlayan')).Enabled := True;
       TcxImageComboKadir(FindComponent('date_create')).Enabled := True;
       TcxImageComboKadir(FindComponent('isveren')).Enabled := True;
    //   TcxImageComboKadir(FindComponent('Onay')).Enabled := True;
    end;


end;

function TfrmSirketSahaDenetim.Init(Sender : TObject) : Boolean;
begin
  Result := True;
end;


procedure TfrmSirketSahaDenetim.Fatura(islem: Integer);
begin
  //
end;

procedure TfrmSirketSahaDenetim.NewRecord(DataSet: TDataSet);
begin
   SahaGozetimGrid.Dataset.FieldByName('sirketSahaDenetimId').AsInteger := TcxButtonEditKadir(FindComponent('id')).EditingValue;
end;

procedure TfrmSirketSahaDenetim.RDSSatirlarNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);

var
  Book : TBookmark;

procedure datawrite;
var
  Blob : TADOBlobStream;
begin
   Satirlar.DataController.DataSet.FieldByName('TehlikeliDurum').AsString := datalar.SahaDenetim.TehlikeliDurum;

   if datalar.SahaDenetim.Bolum <= 0 then
     Satirlar.DataController.DataSet.FieldByName('Bolum').Clear
    else
     Satirlar.DataController.DataSet.FieldByName('Bolum').AsInteger := datalar.SahaDenetim.Bolum;

   Satirlar.DataController.DataSet.FieldByName('Yonetmelik').AsString := datalar.SahaDenetim.Yonetmelik;

   Satirlar.DataController.DataSet.FieldByName('IlgiliKisi').AsString := datalar.SahaDenetim.IlgiliKisi;

//   Satirlar.DataController.DataSet.FieldByName('BolumYetkilisi').AsString := datalar.Risk.SSGBolumYetkilisi;

   if datalar.SahaDenetim.isinDurumu <= 0 then
     Satirlar.DataController.DataSet.FieldByName('isinDurumu').Clear
    else
     Satirlar.DataController.DataSet.FieldByName('isinDurumu').AsVariant := datalar.SahaDenetim.isinDurumu;

  // Satirlar.DataController.DataSet.FieldByName('Image').AsVariant := datalar.SahaDenetim.Image;

    if Assigned(datalar.SahaDenetim.Image.Picture.Graphic)
    then begin
      Blob := TADOBlobStream.Create(TBlobField(Satirlar.DataController.DataSet.FieldByName('Image')),bmwrite);
      try
      //  datalar.Risk.Image.Picture.SaveToFile('dd.jpg');
        datalar.SahaDenetim.Image.Picture.Graphic.SaveToStream(Blob);
       // Blob.LoadFromStream(datalar.Risk.Stream);
        Blob.Position := 0;
        TBlobField(Satirlar.DataController.DataSet.FieldByName('Image')).LoadFromStream(Blob);
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
      g.Assign(Satirlar.DataController.DataSet.FieldByName('Image'));
      datalar.SahaDenetim.Image := TcxImage.Create(nil);
      datalar.SahaDenetim.Image.Picture.Assign(g);
  //    datalar.Risk.Image.Picture.SaveToFile('dd.jpg');
   finally
     g.free;
   end;

   datalar.SahaDenetim.TehlikeliDurum := Satirlar.DataController.DataSet.FieldByName('TehlikeliDurum').AsString;
   datalar.SahaDenetim.Bolum := Satirlar.DataController.DataSet.FieldByName('Bolum').AsInteger;
   datalar.SahaDenetim.Yonetmelik := Satirlar.DataController.DataSet.FieldByName('Yonetmelik').AsString;
   datalar.SahaDenetim.IlgiliKisi := Satirlar.DataController.DataSet.FieldByName('IlgiliKisi').AsString;
   datalar.SahaDenetim.isinDurumu := Satirlar.DataController.DataSet.FieldByName('isinDurumu').AsInteger;
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
          Satirlar.DataController.DataSet.Append;
          datawrite;
          Satirlar.DataController.DataSet.post;
          Satirlar.DataController.DataSet.Active := False;
          Satirlar.DataController.DataSet.Active := True;
         // datalar.SahaDenetim.Image := nil;
          ADone := True;
        except on e : Exception do
          begin
           ShowMessageSkin(e.Message,'','','info');
           Satirlar.DataController.DataSet.Cancel;
          end;
        end;
        end;
    end;

   9 : begin
        dataRead;
        if mrYes = ShowPopupForm('Düzenle',denetimDuzenle)
        then begin
         try
          Book := Satirlar.DataController.DataSet.Bookmark;
          Satirlar.DataController.DataSet.Edit;
          datawrite;
          Satirlar.DataController.DataSet.Post;
          Satirlar.DataController.DataSet.Active := False;
          Satirlar.DataController.DataSet.Active := True;
          Satirlar.DataController.DataSet.GotoBookmark(Book);
          //Satirlar.DataController.DataSet.Refresh;
         except on e : Exception do
          begin
           ShowMessageSkin(e.Message,'','','info');
           Satirlar.DataController.DataSet.Cancel;
          end;
         end;
        end;
    end;

  end;


end;

procedure TfrmSirketSahaDenetim.RDSSatirlarOlasilikPropertiesEditValueChanged(
  Sender: TObject);
begin
  if TcxImageComboKadir(sender).Name = 'Method'
  then
   FaturaDetay;

//  RDSSatirlar.DataController.post;
end;

procedure TfrmSirketSahaDenetim.PropertiesButtonClick(Sender: TObject;
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

procedure TfrmSirketSahaDenetim.AfterScroll(DataSet: TDataSet);
begin
//
end;

procedure TfrmSirketSahaDenetim.AfterPost(DataSet: TDataSet);
begin
     cxPanelButtonEnabled(false,True,false);
   //  Satirlar.DataController.Dataset.Refresh;
   //  FaturaToplamlari;

end;

procedure TfrmSirketSahaDenetim.BeforeEdit(DataSet: TDataSet);
begin
  // Satirlar.DataController.Dataset.DataSource.DataSet.Properties['Unique Table'].Value := 'SirketSahaGozetimDetay';
end;

procedure TfrmSirketSahaDenetim.BeforePost(DataSet: TDataSet);
begin

//  RDSSatirlar.DataController.DataSet.FieldByName('Risk').AsFloat :=
 // RDSSatirlar.DataController.DataSet.FieldByName('Olasilik').AsFloat *
 // RDSSatirlar.DataController.DataSet.FieldByName('Frekans').AsFloat *
 // RDSSatirlar.DataController.DataSet.FieldByName('Siddet').AsFloat;

  //Satirlar.DataController.DataSet.FieldByName('RDS').AsInteger :=
 //   Skor(RDSSatirlar.DataController.DataSet.FieldByName('Risk').AsFloat);
end;

procedure TfrmSirketSahaDenetim.SirketlerPropertiesChange(Sender: TObject);
var
  sube : string;
begin

 sube := ' and IGU = ' + QuotedStr(datalar.IGU);

 if Assigned(TcxImageComboKadir(FindComponent('subeKod')))
 Then
  TcxImageComboKadir(FindComponent('subeKod')).Filter := ' sirketKod = ' +
  QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditingValue)) + sube;

 TcxImageComboKadir(FindComponent('hazirlayan')).TableName := SirketIGUToSQLStr(TcxImageComboKadir(FindComponent('sirketKod')).EditingValue);
 TcxImageComboKadir(FindComponent('hazirlayan')).Filter := '';


end;

procedure TfrmSirketSahaDenetim.cxButtonCClick(Sender: TObject);
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
          TopluDataset.Dataset1 := SahaGozetimGrid.Dataset;

          PrintYap('SDF','Saha Denetim','',TopluDataset);
        end;

  -30 : begin
          FB := FirmaBilgileri(vartostr(TcxImageComboKadir(FindComponent('sirketKod')).EditValue));
          cxExceleGonder(SahaGozetimGrid,'SahaGozetim.xls');
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

procedure TfrmSirketSahaDenetim.ButtonClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
begin
    F := FormINIT(9010,GirisRecord,ikHayir,'');
    if F <> nil then F.ShowModal;
end;


procedure TfrmSirketSahaDenetim.FormCreate(Sender: TObject);
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
  TableName := 'SirketSahaDenetim';
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



  Faturalar := ListeAcCreate('SirketSahaDenetim_view','id,sirketKod,sirketAdi,date_create',
                       'ID,ÞirketKodu,ÞirketAdý,Tarihi',
                       '40,60,250,80','ID','Saha Gözetimleri',where,5,True);

  setDataStringB(self,'id','Gozetim ID',Kolon1,'trh',50,Faturalar,True,nil,'','',True,True,-100);
  TcxButtonEditKadir(FindComponent('id')).Identity := True;

  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,FaturaTarihi,'date_create','Hazýr Tarihi',Kolon1,'trh',80);


  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'SIRKETLER_TNM_view';
  sirketlerx.ValueField := 'SirketKod';
  sirketlerx.DisplayField := 'Tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Filter := datalar.sirketlerUserFilter;
  setDataStringKontrol(self,sirketlerx,'SirketKod','Þirket',Kolon1,'trh',230,0,alNone,'');
  TcxImageComboKadir(FindComponent('SirketKod')).Properties.OnEditValueChanged := SirketlerPropertiesChange;

  sube := ' and IGU = ' + QuotedStr(datalar.IGU);

  Subeler := TcxImageComboKadir.Create(self);
  Subeler.Conn := Datalar.ADOConnection2;
  Subeler.TableName := 'SIRKET_SUBE_TNM';
  Subeler.ValueField := 'subeKod';
  Subeler.DisplayField := 'subeTanim';
  Subeler.Filter := ' SirketKod = ' + QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue)) + sube + ' and (Pasif = 0 or Pasif is Null)';
  setDataStringKontrol(self,Subeler,'SubeKod','Þube',Kolon1,'trh',80,0,alNone,'');


  IGU := TcxImageComboKadir.Create(self);
  IGU.Conn := Datalar.ADOConnection2;
  IGU.TableName := 'IGU';
  IGU.ValueField := 'kod';
  IGU.DisplayField := 'Tanimi';
  IGU.BosOlamaz := False;
  IGU.Filter := '';
  setDataStringKontrol(self,IGU,'hazirlayan','Ýþ Güvenlik Uzm',Kolon1,'trh',100,0,alNone,'');

//  setDataString(self,'hazirlayan','Hazýrlayan',Kolon1,'trh',80,false,'',True);
  setDataString(self,'isveren','Isveren',Kolon1,'trh',120,false,'',False);

  (*
  Onay := TcxImageComboKadir.Create(self);
  Onay.Conn := nil;
  Onay.ItemList := '1;Evet,0;Hayýr';
  Onay.Filter := '';
  setDataStringKontrol(self,Onay,'Onay','Onay',kolon4,'trh',50);
  OrtakEventAta(Onay);
    *)


  RiskBolum := TcxImageComboKadir.Create(self);
  RiskBolum.Name := 'RiskBolum';
  RiskBolum.Tag := -100;
  RiskBolum.Conn := datalar.ADOConnection2;
  RiskBolum.TableName := 'RDS_RiskBolum';
  RiskBolum.ValueField := 'Kod';
  RiskBolum.DisplayField := 'tanimi';
  RiskBolum.Filter := '';



  try
     TcxImageComboBoxProperties(SatirlarBolum.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('RiskBolum')).Properties).Items;

  finally
  end;




//  setDataStringBLabel(self,'bosSatir',kolon1,'',1000,'Risk Kaynaklarý');
  setDataStringKontrol(self,SahaGozetimGrid,'SahaGozetimGrid','',Kolon1,'',1,1,alClient);


  SahaGozetimGrid.Dataset.Connection := datalar.ADOConnection2;


  SahaGozetimGrid.Dataset.OnNewRecord := NewRecord;
  SahaGozetimGrid.Dataset.AfterPost := AfterPost;
  SahaGozetimGrid.Dataset.BeforePost := BeforePost;
  SahaGozetimGrid.Dataset.AfterScroll := AfterScroll;
  SahaGozetimGrid.Dataset.BeforeEdit := BeforeEdit;


  kolon2.Visible := false;
  kolon3.Visible := false;
  kolon4.Visible := false;


  //GridFaturalar.DataController.DataSource := DataSource;
  SayfaCaption('','','','','');
  Disabled(self,True);
end;

procedure TfrmSirketSahaDenetim.GozlemYazdir(const GozlemID: integer);
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

procedure TfrmSirketSahaDenetim.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

