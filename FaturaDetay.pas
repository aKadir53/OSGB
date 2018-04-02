unit FaturaDetay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,ShellApi,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  kadir, kadirMedula3, KadirType,GetFormClass,GirisUnit,
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
  cxImageComboBox, cxButtonEdit;

type
  TfrmFaturaDetay = class(TGirisForm)
    DataSource1: TDataSource;
    ADO_FaturaDetay: TADOQuery;
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
    E2: TMenuItem;
    E3: TMenuItem;
    E4: TMenuItem;
    K1: TMenuItem;
    A1: TMenuItem;
    FaturaSatirlar: TcxGridDBTableView;
    FaturaGridLevel1: TcxGridLevel;
    FaturaGrid: TcxGridKadir;
    FaturaSatirlarfaturaId: TcxGridDBColumn;
    FaturaSatirlarsira: TcxGridDBColumn;
    FaturaSatirlarhizmetAdi: TcxGridDBColumn;
    FaturaSatirlarhizmetkodu: TcxGridDBColumn;
    FaturaSatirlarfiyat: TcxGridDBColumn;
    FaturaSatirlarisk: TcxGridDBColumn;
    FaturaSatirlarkdv: TcxGridDBColumn;
    FaturaSatirlaradet: TcxGridDBColumn;
    FaturaSatirlartutar: TcxGridDBColumn;
    FaturaSatirlarkdvTutar: TcxGridDBColumn;
    FaturaSatirlarbirim: TcxGridDBColumn;
    FaturaSatirTutar: TcxGridDBColumn;
    SatirToplam: TcxCurrencyEdit;
    TutarToplam: TcxCurrencyEdit;
    kdvToplam: TcxCurrencyEdit;
    H1: TMenuItem;
    procedure Fatura(islem: Integer);
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure cxKaydetClick(Sender: TObject);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
                AButtonIndex: Integer); override;
    procedure FaturaDetay;
    procedure NewRecord(DataSet: TDataSet);
    procedure AfterPost(DataSet: TDataSet);
    procedure FaturaToplamlari;
    procedure FaturaSatirTutarCustomDrawFooterCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
 //   function EArsivGonder(FaturaId : string) : string;
 //   function EArsivIptal(FaturaGuid : string) : string;
 //   function EArsivPDF(FaturaGuid : string ; _tag_ : integer) : string;
 //   procedure Gonder;

  private
    { Private declarations }
    FImages : array of TcxImage;
    FImageIds : array of Integer;
    function findMethod(dllHandle: Cardinal; methodName: string): FARPROC;

  protected
    procedure GozlemYazdir (const GozlemID : integer);

  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

  TFaturaGonder = procedure(FaturaXML : PWideChar;
                      kullaniciAdi : PWideChar;
                      sifre : PWideChar;
                      var sonuc : PWideChar;
                      url : PWideChar); stdcall;

  TFaturaIptal = procedure(FaturaGuid : PWideChar;
                      kullaniciAdi : PWideChar;
                      sifre : PWideChar;
                      var sonuc : PWideChar;
                      url : PWideChar); stdcall;
  TFaturaPDF = procedure(FaturaGuid : PWideChar;
                      kullaniciAdi : PWideChar;
                      sifre : PWideChar;
                      var sonuc : PWideChar;
                      url : PWideChar;
                      smtpClientHost : PWideChar;
                      Username : PWideChar;
                      Password : PWideChar;
                      alici : PWideChar;
                      konu : PWideChar;
                      msj : PWideChar
                      ); stdcall;


const
//LIB_DLL = 'NoktaDLL.dll';
  LIB_DLL = 'D:\Projeler\VS\c#\EFatura\EFaturaDLL\ClassLibrary1\bin\Debug\EFaturaDLL.dll';
  test = 'https://efatura-test.uyumsoft.com.tr/Services/Integration';
  gercek = 'https://efatura.uyumsoft.com.tr/Services/Integration';
var
  frmFaturaDetay: TfrmFaturaDetay;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}

procedure TfrmFaturaDetay.FaturaToplamlari;
begin
     TcxCurrencyEdit(FindComponent('faturaTutar')).EditValue :=
     FaturaSatirlar.DataController.Summary.FooterSummaryValues[1];
     TcxCurrencyEdit(FindComponent('kdv')).EditValue :=
     FaturaSatirlar.DataController.Summary.FooterSummaryValues[0];
     TcxCurrencyEdit(FindComponent('faturaGenelTutar')).EditValue :=
     FaturaSatirlar.DataController.Summary.FooterSummaryValues[2];
end;
function TfrmFaturaDetay.findMethod(dllHandle: Cardinal;  methodName: string): FARPROC;
begin
  Result := GetProcAddress(dllHandle, pchar(methodName));
end;

procedure TfrmFaturaDetay.FaturaDetay;
begin
   FaturaGrid.Dataset.Active := False;
   FaturaGrid.Dataset.SQL.Text := 'select * from faturaHareket where faturaId = ' +
   QuotedStr(TcxButtonEditKadir(FindComponent('Sira')).Text);
   FaturaGrid.Dataset.Active := True;
   FaturaToplamlari;
end;

procedure TfrmFaturaDetay.FaturaSatirTutarCustomDrawFooterCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  FaturaToplamlari;
end;

procedure TfrmFaturaDetay.cxKaydetClick(Sender: TObject);
begin
  //SirketKodx.Text := datalar.AktifSirket; giriþ formuna eklendi.
  inherited;

  case TControl(sender).Tag  of
    0 : begin
         FaturaGrid.Enabled := True;
        end;
    2 : begin
          TcxTextEditKadir(FindComponent('faturaNo')).text := '0';
          TcxImageComboKadir(FindComponent('FaturaTip')).EditValue := 1;
          TcxImageComboKadir(FindComponent('ozelKod')).EditValue := 1;
          TcxDateEditKadir(FindComponent('FaturaTarihi')).EditValue := date;
          FaturaGrid.Enabled := False;
          FaturaDetay;
        end;
  end;
end;


procedure TfrmFaturaDetay.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  list : ArrayListeSecimler;
  where,prm : string;
begin
    inherited;
    if TcxButtonEditKadir(sender).name = 'SirketKod'
    then
      TcxTextEditKadir(FindComponent('sirketTanimi')).Text := TcxButtonEditKadir(sender).tanimDeger
    else
    begin
      Enabled;
      FaturaDetay;
    end;


end;

function TfrmFaturaDetay.Init(Sender : TObject) : Boolean;
var
  _obje_ : TcxCustomEdit;
begin
 if _FaturaNo_ <> ''
 then begin
  _obje_ := TcxButtonEditKadir(FindComponent('sira'));
  TcxButtonEditKadir(FindComponent('sira')).EditValue := _FaturaNo_;
  indexKaydiBul(TcxButtonEditKadir(_obje_).EditValue ,TcxButtonEditKadir(_obje_).name);
  FaturaDetay;
  Enabled;
 end;
  Result := True;
end;


procedure TfrmFaturaDetay.Fatura(islem: Integer);
var
  F : TForm;
  bBasarili: Boolean;

begin
  //
end;

procedure TfrmFaturaDetay.NewRecord(DataSet: TDataSet);
begin
   FaturaGrid.Dataset.FieldByName('FaturaId').AsInteger := TcxButtonEditKadir(FindComponent('Sira')).EditingValue;
end;

procedure TfrmFaturaDetay.AfterPost(DataSet: TDataSet);
begin
     cxPanelButtonEnabled(false,True,false);
     FaturaGrid.Dataset.Refresh;
     FaturaToplamlari;

end;

procedure TfrmFaturaDetay.cxButtonCClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  aModalResult : TModalResult;
  guid : string;
  List : TListeAc;
  L : ArrayListeSecimler;
begin
  inherited;


  case Tcontrol(sender).Tag of
  -9 : begin
         Fatura(yeniFatura);
       end;
  -11 : begin
         Fatura(faturaDuzenle);
       end;
  -20 : begin
         //Gonder;
        end;
  -21:begin
      // guid := GridCellToString(GridFaturalar,'UUID',0);
      // EArsivIptal(guid);
  end;
  -22,-23:begin
         //   guid := GridCellToString(GridFaturalar,'UUID',0);
         //   EArsivPDF(guid,Tcontrol(sender).Tag);
          end;
  -24:begin

  end;
  -26 : begin
          List := ListeAcCreate('HIZMET','code,name1,kdv,SATISF00',
                               'HizmetKod,HizmetTaným,Kdv,Fiyat',
                               '50,250,50,80','List','Hizmet Listesi','',4,True);
          try
            L := List.ListeGetir;
            if High (L) >= 0 then
            begin
              FaturaGrid.Dataset.Append;
              try
                FaturaGrid.Dataset.FieldByName('hizmetkodu').AsString := L[0].kolon1;
                FaturaGrid.Dataset.FieldByName('hizmetAdi').AsString := L[0].kolon2;
                FaturaGrid.Dataset.FieldByName('kdv').AsString := L[0].kolon3;
                FaturaGrid.Dataset.FieldByName('fiyat').AsString := L[0].kolon4;
                FaturaGrid.Dataset.post;
              except
                FaturaGrid.Dataset.Cancel;
                raise;
              end;
            end;
          finally
            List.Free;
          end;
        end;
  end;
end;

procedure TfrmFaturaDetay.FormCreate(Sender: TObject);
var
  List,Faturalar : TListeAc;
  FaturaTip,FaturaOzelKodlari : TcxImageComboKadir;
  FaturaTarihi : TcxDateEditKadir;
  SirketAdi : TcxTextEditKadir;
begin
  inherited;


  cxPanel.Visible := True;
  Menu := PopupMenu1;
  indexFieldName := 'sira';
  TableName := 'Faturalar';
 // TopPanel.Visible := true;


  Faturalar := ListeAcCreate('faturalarView','Sira,sirketTanimi,FaturaTipTanimi,FaturaTarihi',
                       'ID,Þirket,FaturaTip,FaturaTarihi',
                       '50,250,50,80','Sira','Faturalar','',5,True);

  setDataStringB(self,'sira','FaturaID',Kolon1,'FaturaID',70,Faturalar,True,nil,'','',True,True,-100);
  TcxButtonEditKadir(FindComponent('sira')).Identity := True;

  setDataString(self,'FaturaNo','Fatura Ref.No',Kolon1,'FaturaID',50,True,'',false,0,'0');

  setDataString(self,'GIBFaturaNo','Fatura GIB No',Kolon1,'FaturaID',100,False,'',True);
  setDataString(self,'Guid','Fatura Guid',Kolon1,'FaturaID',250,False,'',True);


  List := ListeAcCreate('SIRKETLER_TNM','sirketKod,tanimi,Aktif',
                       'SirketKod,Sirket,Durum',
                       '50,250,50','SirketKod','Firma Listesi','',5,True);

  setDataStringB(self,'SirketKod','Þirket Kodu',Kolon1,'SirketTnm',100,List,False,nil,'','',True,True,1);

  sirketAdi := TcxTextEditKadir.Create(self);
  sirketAdi.Properties.ReadOnly := True;
  //sirketAdi.Enabled := False;
  SirketAdi.TabStop := False;
  setDataStringKontrol(self,sirketAdi,'sirketTanimi','',Kolon1,'SirketTnm',350);
 // setDataStringBLabel(self,'SirketKod',Kolon1,'SirketTnm',350,' ','','sirketTanimi');

  FaturaTip := TcxImageComboKadir.Create(self);
  FaturaTip.Conn := datalar.ADOConnection2;
  FaturaTip.TableName := 'FaturaTipleri';
  FaturaTip.ValueField := 'Kod';
  FaturaTip.DisplayField := 'tanimi';
  FaturaTip.Filter := '';
  FaturaTip.BosOlamaz := True;
  setDataStringKontrol(self,FaturaTip,'FaturaTip','Fatura Tipi',Kolon1,'FT',100);
  OrtakEventAta(FaturaTip);

  FaturaOzelKodlari := TcxImageComboKadir.Create(self);
  FaturaOzelKodlari.Conn := datalar.ADOConnection2;
  FaturaOzelKodlari.TableName := 'FaturaOzelKodlari';
  FaturaOzelKodlari.ValueField := 'Kod';
  FaturaOzelKodlari.DisplayField := 'tanimi';
  FaturaOzelKodlari.Filter := '';
  FaturaOzelKodlari.BosOlamaz := True;
  setDataStringKontrol(self,FaturaOzelKodlari,'OzelKod','Fatura Özel Kod',Kolon1,'FT',100);
  OrtakEventAta(FaturaOzelKodlari);

  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,FaturaTarihi,'FaturaTarihi','Fatura Tarihi',Kolon1,'FT',100);


  setDataStringBLabel(self,'bosSatir',kolon1,'',750,'Fatura Mal ve Hizmetleri');
  setDataStringKontrol(self,FaturaGrid,'FaturaGrid','',Kolon1,'',750,300);
  FaturaGrid.Dataset.Connection := datalar.ADOConnection2;
  FaturaGrid.Dataset.OnNewRecord := NewRecord;
  FaturaGrid.Dataset.AfterPost := AfterPost;

  kolon2.Width := 0;
  Kolon3.Width := 0;
  Kolon4.Width := 0;
  setDataStringBLabel(self,'bosSatirFTop',kolon1,'FTop',538,'');
  setDataStringKontrol(self,TutarToplam,'faturaTutar','Fatura Toplam ',Kolon1,'Ftop',100);
  setDataStringBLabel(self,'bosSatirkdvTop',kolon1,'kdvTop',538,'');
  setDataStringKontrol(self,kdvToplam,'kdv','Kdv Tutarý',Kolon1,'kdvTop',100);
  setDataStringBLabel(self,'bosSatirGTop',kolon1,'GTop',538,'');
  setDataStringKontrol(self,SatirToplam,'faturaGenelTutar','Fatura Genl Toplam',Kolon1,'Gtop',100);


  //GridFaturalar.DataController.DataSource := DataSource;
  SayfaCaption('','','','','');
  Disabled(self,True);
end;

procedure TfrmFaturaDetay.GozlemYazdir(const GozlemID: integer);
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

procedure TfrmFaturaDetay.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

