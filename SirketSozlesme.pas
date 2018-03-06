unit SirketSozlesme;

interface
incele
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
  cxImageComboBox, cxButtonEdit, cxSpinEdit;

type
  TfrmSirketSozlesme = class(TGirisForm)
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
    miYeniGozetim: TMenuItem;
    cxStyle8: TcxStyle;
    tmr1: TTimer;
    miGozetimDuzenle: TMenuItem;
    N1: TMenuItem;
    E1: TMenuItem;
    E2: TMenuItem;
    E3: TMenuItem;
    E4: TMenuItem;
    K1: TMenuItem;
    A1: TMenuItem;
    SozlesmeSatirlar: TcxGridDBTableView;
    SozlesmeGridLevel1: TcxGridLevel;
    SozlesmeGrid: TcxGridKadir;
    SozlesmeSatirlarid: TcxGridDBColumn;
    SozlesmeSatirlarSirketSozlesmeID: TcxGridDBColumn;
    SozlesmeSatirlarHizmetKodu: TcxGridDBColumn;
    SozlesmeSatirlarBirimFiyat: TcxGridDBColumn;
    SozlesmeSatirlarToplamFiyat: TcxGridDBColumn;
    procedure Fatura(islem: Integer);
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure cxKaydetClick(Sender: TObject);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
                AButtonIndex: Integer); override;
    procedure SozlesmeDetay;
    procedure NewRecord(DataSet: TDataSet);
    procedure AfterPost(DataSet: TDataSet);

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
  frmSirketSozlesme: TfrmSirketSozlesme;
  Sozlesmeler : TListeAc;
implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}


function TfrmSirketSozlesme.findMethod(dllHandle: Cardinal;  methodName: string): FARPROC;
begin
  Result := GetProcAddress(dllHandle, pchar(methodName));
end;

procedure TfrmSirketSozlesme.SozlesmeDetay;
begin
   SozlesmeGrid.Dataset.Active := False;
   SozlesmeGrid.Dataset.SQL.Text := 'select * from SirketSozlesmeDetay where SirketSozlesmeID = ' +
   QuotedStr(TcxButtonEditKadir(FindComponent('id')).Text);
   SozlesmeGrid.Dataset.Active := True;
end;

procedure TfrmSirketSozlesme.cxKaydetClick(Sender: TObject);
begin
  //SirketKodx.Text := datalar.AktifSirket; giriþ formuna eklendi.
  inherited;

  case TControl(sender).Tag  of
    0 : begin

    end;
    2 : begin
         TcxTextEditKadir(FindComponent('sirketKod')).EditValue := TGirisForm(self)._firmaKod_;
         SozlesmeDetay;
        end;
  end;
end;


procedure TfrmSirketSozlesme.cxButtonEditPropertiesButtonClick(Sender: TObject;
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
      SozlesmeDetay;
    end;


end;

function TfrmSirketSozlesme.Init(Sender : TObject) : Boolean;
begin
  TcxTextEditKadir(FindComponent('sirketKod')).EditValue := TGirisForm(self)._firmaKod_;
  TListeAc(Sozlesmeler).Where := ' sirketKod = ' + QuotedStr(TGirisForm(self)._firmaKod_);
  Result := True;
end;


procedure TfrmSirketSozlesme.Fatura(islem: Integer);
var
  F : TForm;
  bBasarili: Boolean;

begin
  //
end;

procedure TfrmSirketSozlesme.NewRecord(DataSet: TDataSet);
begin
   SozlesmeGrid.Dataset.FieldByName('SirketSozlesmeID').AsInteger := TcxButtonEditKadir(FindComponent('id')).EditingValue;
end;

procedure TfrmSirketSozlesme.AfterPost(DataSet: TDataSet);
begin
     cxPanelButtonEnabled(false,True,false);
     SozlesmeGrid.Dataset.Refresh;
     SozlesmeDetay;

end;

procedure TfrmSirketSozlesme.cxButtonCClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  aModalResult : TModalResult;
  guid : string;
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
  -27 : begin

        end;
  end;
end;

procedure TfrmSirketSozlesme.FormCreate(Sender: TObject);
var
  List : TListeAc;
  FaturaOzelKodlari : TcxImageComboKadir;
  FaturaKesimAyGunu : TcxSpinEdit;
  SozlesmeTarihi : TcxDateEditKadir;
  SirketAdi : TcxTextEditKadir;
begin
  inherited;


  cxPanel.Visible := True;
  Menu := PopupMenu1;
  indexFieldName := 'id';
  TableName := 'SirketSozlesme';
 // TopPanel.Visible := true;


  Sozlesmeler := ListeAcCreate('SirketSozlesme','id,Baslangic,Bitis,SozlesmeTanimi',
                       'ID,Baþlangýç,Bitiþ,Sözleþme Tanýmý',
                       '50,80,80,200','id','Sözleþmeler',
                       ' sirketKod = ' + QuotedStr(TGirisForm(self)._firmaKod_)  ,4,True);

  setDataStringB(self,'id','SözleþmeID',Kolon1,'',60,Sozlesmeler,True,nil,'','',True,True,-100);
  TcxButtonEditKadir(FindComponent('id')).Identity := True;

  setDataString(self,'SozlesmeTanimi','Sözleþme Tanýmý',Kolon1,'',100,True);

  SozlesmeTarihi := TcxDateEditKadir.Create(Self);
  SozlesmeTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,SozlesmeTarihi,'Baslangic','Baþlangýç Tarihi',Kolon1,'',100);

  SozlesmeTarihi := TcxDateEditKadir.Create(Self);
  SozlesmeTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,SozlesmeTarihi,'Bitis','Bitiþ Tarihi',Kolon1,'',100);



  (*
  sirketAdi := TcxTextEditKadir.Create(self);
  sirketAdi.Properties.ReadOnly := True;
  //sirketAdi.Enabled := False;
  SirketAdi.TabStop := False;
  setDataStringKontrol(self,sirketAdi,'sirketTanimi','',Kolon1,'SirketTnm',350);
  TcxTextEditKadir(FindComponent('sirketTanimi')).Visible := False;
 // setDataStringBLabel(self,'SirketKod',Kolon1,'SirketTnm',350,' ','','sirketTanimi');
    *)

  FaturaKesimAyGunu := TcxSpinEdit.Create(self);
  FaturaKesimAyGunu.Properties.MinValue := 1;
  FaturaKesimAyGunu.Properties.MaxValue := 31;
  setDataStringKontrol(self,FaturaKesimAyGunu,'FaturaKesimAyGunu','Fatura Kesim Günü',Kolon1,'',100);
  OrtakEventAta(FaturaKesimAyGunu);

 (*
  List := ListeAcCreate('SIRKETLER_TNM','sirketKod,tanimi,Aktif',
                       'SirketKod,Sirket,Durum',
                       '50,250,50','SirketKod','Firma Listesi','',5,True);

  setDataStringB(self,'sirketKod','',Kolon1,'',80,List,False,nil,'','',True,True,1);
  TcxButtonEditKadir(FindComponent('sirketKod')).Visible := False;
 *)
  setDataString(self,'sirketKod','',Kolon1,'',0,True);

  setDataStringBLabel(self,'bosSatir',kolon1,'',750,'Fatura Mal ve Hizmetleri');
  setDataStringKontrol(self,SozlesmeGrid,'SozlesmeGrid','',Kolon1,'',750,300);
  SozlesmeGrid.Dataset.Connection := datalar.ADOConnection2;
  SozlesmeGrid.Dataset.OnNewRecord := NewRecord;
  SozlesmeGrid.Dataset.AfterPost := AfterPost;

  kolon2.Width := 0;
  Kolon3.Width := 0;
  Kolon4.Width := 0;
 // setDataStringBLabel(self,'bosSatirFTop',kolon1,'FTop',538,'');


  //GridFaturalar.DataController.DataSource := DataSource;
  SayfaCaption('','','','','');
  Disabled(self,True);
end;

procedure TfrmSirketSozlesme.GozlemYazdir(const GozlemID: integer);
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

procedure TfrmSirketSozlesme.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

