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
Kaydet : begin
         YillikPlanGrid.Enabled := True;
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
           YillikPlanGrid.Enabled := False;
          // FaturaDetay;
        end;
  end;
end;


procedure TfrmSirketYillikCalismaPlan.cxButtonEditPropertiesButtonClick(Sender: TObject;
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
       YillikPlanSatirlar.OptionsData.Editing := False;
       YillikPlanSatirlar.OptionsData.Inserting := False;
       YillikPlanSatirlar.OptionsData.Deleting := False;

       TcxImageComboKadir(FindComponent('SirketKod')).Enabled := False;
       TcxTextEditKadir(FindComponent('hazirlayan')).Enabled := False;
       TcxTextEditKadir(FindComponent('doktor')).Enabled := False;
       TcxImageComboKadir(FindComponent('date_create')).Enabled := False;

    end
    else
    begin
       YillikPlanSatirlar.OptionsData.Editing := True;
       YillikPlanSatirlar.OptionsData.Inserting := True;
       YillikPlanSatirlar.OptionsData.Deleting := True;

       TcxImageComboKadir(FindComponent('SirketKod')).Enabled := True;
       TcxTextEditKadir(FindComponent('hazirlayan')).Enabled := True;
       TcxTextEditKadir(FindComponent('doktor')).Enabled := true;
       TcxImageComboKadir(FindComponent('date_create')).Enabled := True;

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
   YillikPlanGrid.Dataset.FieldByName('FirmaYillikCalismaPlanID').AsInteger := TcxButtonEditKadir(FindComponent('id')).EditingValue;
end;

procedure TfrmSirketYillikCalismaPlan.RDSSatirlarNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);

var
  Book : TBookmark;

procedure datawrite;
var
  Blob : TADOBlobStream;
begin
   YillikPlanSatirlar.DataController.DataSet.FieldByName('faliyetid').AsInteger := datalar.YillikCalismaPlan.faliyetid;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('peryod').AsInteger := datalar.YillikCalismaPlan.peryod;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('ocak').AsInteger := datalar.YillikCalismaPlan.ocak;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('subat').AsInteger := datalar.YillikCalismaPlan.subat;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('mart').AsInteger := datalar.YillikCalismaPlan.mart;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('nisan').AsInteger := datalar.YillikCalismaPlan.nisan;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('mayis').AsInteger := datalar.YillikCalismaPlan.mayis;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('haziran').AsInteger := datalar.YillikCalismaPlan.haziran;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('temmuz').AsInteger := datalar.YillikCalismaPlan.temmuz;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('agustos').AsInteger := datalar.YillikCalismaPlan.agustos;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('eylul').AsInteger := datalar.YillikCalismaPlan.eylul;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('ekim').AsInteger := datalar.YillikCalismaPlan.ekim;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('kasim').AsInteger := datalar.YillikCalismaPlan.kasim;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('aralik').AsInteger := datalar.YillikCalismaPlan.aralik;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('ocak_R').AsInteger := datalar.YillikCalismaPlan.ocakR;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('subat_R').AsInteger := datalar.YillikCalismaPlan.subatR;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('mart_R').AsInteger := datalar.YillikCalismaPlan.martR;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('nisan_R').AsInteger := datalar.YillikCalismaPlan.nisanR;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('mayis_R').AsInteger := datalar.YillikCalismaPlan.mayisR;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('haziran_R').AsInteger := datalar.YillikCalismaPlan.haziranR;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('temmuz_R').AsInteger := datalar.YillikCalismaPlan.temmuzR;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('agustos_R').AsInteger := datalar.YillikCalismaPlan.agustosR;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('eylul_R').AsInteger := datalar.YillikCalismaPlan.eylulR;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('ekim_R').AsInteger := datalar.YillikCalismaPlan.ekimR;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('kasim_R').AsInteger := datalar.YillikCalismaPlan.kasimR;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('aralik_R').AsInteger := datalar.YillikCalismaPlan.aralikR;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('sorumlu1').AsInteger := datalar.YillikCalismaPlan.sorumlu1;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('sorumlu2').AsInteger := datalar.YillikCalismaPlan.sorumlu2;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('sorumlu1Konu').AsInteger := datalar.YillikCalismaPlan.konu1;
   YillikPlanSatirlar.DataController.DataSet.FieldByName('sorumlu2Konu').AsInteger := datalar.YillikCalismaPlan.konu2;
end;

procedure dataRead;
begin
   datalar.YillikCalismaPlan.faliyetid := YillikPlanSatirlar.DataController.DataSet.FieldByName('faliyetid').AsInteger;
   datalar.YillikCalismaPlan.peryod := YillikPlanSatirlar.DataController.DataSet.FieldByName('peryod').AsInteger;
   datalar.YillikCalismaPlan.ocak := YillikPlanSatirlar.DataController.DataSet.FieldByName('ocak').AsInteger;
   datalar.YillikCalismaPlan.subat := YillikPlanSatirlar.DataController.DataSet.FieldByName('subat').AsInteger;
   datalar.YillikCalismaPlan.mart := YillikPlanSatirlar.DataController.DataSet.FieldByName('mart').AsInteger;
   datalar.YillikCalismaPlan.nisan := YillikPlanSatirlar.DataController.DataSet.FieldByName('nisan').AsInteger;
   datalar.YillikCalismaPlan.mayis := YillikPlanSatirlar.DataController.DataSet.FieldByName('mayis').AsInteger;
   datalar.YillikCalismaPlan.haziran := YillikPlanSatirlar.DataController.DataSet.FieldByName('haziran').AsInteger;
   datalar.YillikCalismaPlan.temmuz := YillikPlanSatirlar.DataController.DataSet.FieldByName('temmuz').AsInteger;
   datalar.YillikCalismaPlan.agustos := YillikPlanSatirlar.DataController.DataSet.FieldByName('agustos').AsInteger;
   datalar.YillikCalismaPlan.eylul := YillikPlanSatirlar.DataController.DataSet.FieldByName('eylul').AsInteger;
   datalar.YillikCalismaPlan.ekim := YillikPlanSatirlar.DataController.DataSet.FieldByName('ekim').AsInteger;
   datalar.YillikCalismaPlan.kasim := YillikPlanSatirlar.DataController.DataSet.FieldByName('kasim').AsInteger;
   datalar.YillikCalismaPlan.aralik := YillikPlanSatirlar.DataController.DataSet.FieldByName('aralik').AsInteger;
   datalar.YillikCalismaPlan.ocakR := YillikPlanSatirlar.DataController.DataSet.FieldByName('ocak_R').AsInteger;
   datalar.YillikCalismaPlan.subatR := YillikPlanSatirlar.DataController.DataSet.FieldByName('subat_R').AsInteger;
   datalar.YillikCalismaPlan.martR := YillikPlanSatirlar.DataController.DataSet.FieldByName('mart_R').AsInteger;
   datalar.YillikCalismaPlan.nisanR := YillikPlanSatirlar.DataController.DataSet.FieldByName('nisan_R').AsInteger;
   datalar.YillikCalismaPlan.mayisR := YillikPlanSatirlar.DataController.DataSet.FieldByName('mayis_R').AsInteger;
   datalar.YillikCalismaPlan.haziranR := YillikPlanSatirlar.DataController.DataSet.FieldByName('haziran_R').AsInteger;
   datalar.YillikCalismaPlan.temmuzR := YillikPlanSatirlar.DataController.DataSet.FieldByName('temmuz_R').AsInteger;
   datalar.YillikCalismaPlan.agustosR := YillikPlanSatirlar.DataController.DataSet.FieldByName('agustos_R').AsInteger;
   datalar.YillikCalismaPlan.eylulR := YillikPlanSatirlar.DataController.DataSet.FieldByName('eylul_R').AsInteger;
   datalar.YillikCalismaPlan.ekimR := YillikPlanSatirlar.DataController.DataSet.FieldByName('ekim_R').AsInteger;
   datalar.YillikCalismaPlan.kasimR := YillikPlanSatirlar.DataController.DataSet.FieldByName('kasim_R').AsInteger;
   datalar.YillikCalismaPlan.aralikR := YillikPlanSatirlar.DataController.DataSet.FieldByName('aralik_R').AsInteger;
   datalar.YillikCalismaPlan.sorumlu1 := YillikPlanSatirlar.DataController.DataSet.FieldByName('sorumlu1').AsInteger;
   datalar.YillikCalismaPlan.sorumlu2 := YillikPlanSatirlar.DataController.DataSet.FieldByName('sorumlu2').AsInteger;
   datalar.YillikCalismaPlan.konu1 := YillikPlanSatirlar.DataController.DataSet.FieldByName('sorumlu1Konu').AsInteger;
   datalar.YillikCalismaPlan.konu2 := YillikPlanSatirlar.DataController.DataSet.FieldByName('sorumlu2Konu').AsInteger;
end;

begin

  case AButtonIndex of
   6 : begin

        if mrYes = ShowPopupForm('Faaliyet Ekle',yeniFaaliyet)
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
        if mrYes = ShowPopupForm('Düzenle',FaaliyetDuzenle)
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

 TcxImageComboKadir(FindComponent('hazirlayan')).TableName := SirketIGUToSQLStr(TcxImageComboKadir(FindComponent('sirketKod')).EditingValue);
 TcxImageComboKadir(FindComponent('hazirlayan')).Filter := ' durum = ''Aktif''';
 TcxImageComboKadir(FindComponent('doktor')).TableName := SirketDoktorToSQLStr(TcxImageComboKadir(FindComponent('sirketKod')).EditingValue);
 TcxImageComboKadir(FindComponent('doktor')).Filter := ' durum = ''Aktif''';

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
          TopluDataset.Dataset0 := datalar.QuerySelect('select * from firmaYillikCalismaPlani_View where id = ' +
                                                        varTostr(TcxButtonEditKadir(FindComponent('id')).EditValue));

          PrintYap('YCP','Çalýþma Planý','',TopluDataset);
        end;

  -30 : begin
          FB := FirmaBilgileri(vartostr(TcxImageComboKadir(FindComponent('sirketKod')).EditValue));
          cxExceleGonder(YillikPlanGrid,'YillikPlan.xls');
          if (mailGonder(FB.YetkiliMail,'Ýþ Planý',
                        'Firmanýzda Yýl içersinde Yapýlacak Olan Çalýþmalar, ekteki Ýþ Planý dosyasý ile bilginize sunulmuþtur',
                        'YillikPlan.xls')
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
  sirketlerx,subeler ,RiskBolum , IGU ,doktor : TcxImageComboKadir;
  FaturaTarihi : TcxDateEditKadir;
  where , sube , sql : string;
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
  if datalar.UserGroup = '2'
  then
    where := ' drKod = ' + QuotedStr(datalar.doktorKodu)
  else
  if datalar.UserGroup = '10'
  then
    where := ' SKod = ' + QuotedStr(datalar.sirketKodu)
  else
    where := ' IguKod = ' + QuotedStr(datalar.IGU);

  sql := '(select P.id,P.date_create,S.SirketKod SKod,S.tanimi Sirket,I.kod IguKod,I.tanimi IGU,D.kod drKod,D.tanimi doktor from firmaYillikCalismaPlani P ' +
         ' join SIRKETLER_TNM S on S.sirketKod = P.sirketKod ' +
         ' left join doktorlarT D on D.kod = P.doktor ' +
         ' left join IGU I on I.kod = P.hazirlayan) TT';

  Faturalar := ListeAcCreate(sql,'id,date_create,Sirket,IGU,doktor',
                       'ID,Tarihi,Sirket,Ýgu,Doktor',
                       '40,80,150,100,100','ID','Çalýþma Planlarý',where,5,True);
 // Faturalar.KaynakTableTip := tpSp;

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

  //   TcxImageComboBoxProperties(YillikPlanSatirlarocak.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlarsubat.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlarmart.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlarnisan.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlarmayis.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlarhaziran.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlartemmuz.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlaragustos.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlareylul.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlarekim.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlarkasim.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlararalik.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak.Properties).Items;

//     TcxImageComboBoxProperties(YillikPlanSatirlarocak.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlarsubat_R.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak_R.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlarmart_R.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak_R.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlarnisan_R.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak_R.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlarmayis_R.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak_R.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlarhaziran_R.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak_R.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlartemmuz_R.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak_R.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlaragustos_R.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak_R.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlareylul_R.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak_R.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlarekim_R.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak_R.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlarkasim_R.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak_R.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlararalik_R.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarocak_R.Properties).Items;

     TcxImageComboBoxProperties(YillikPlanSatirlarsorumlu2.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarsorumlu1.Properties).Items;
     TcxImageComboBoxProperties(YillikPlanSatirlarsorumlu2Konu.Properties).Items := TcxImageComboBoxProperties(YillikPlanSatirlarsorumlu1Konu.Properties).Items;


  finally
  end;




//  setDataStringBLabel(self,'bosSatir',kolon1,'',1000,'Risk Kaynaklarý');
  setDataStringKontrol(self,YillikPlanGrid,'YillikPlanGrid','',Kolon1,'',1,1,alClient);


  YillikPlanGrid.Dataset.Connection := datalar.ADOConnection2;


  YillikPlanGrid.Dataset.OnNewRecord := NewRecord;
  YillikPlanGrid.Dataset.AfterPost := AfterPost;
  YillikPlanGrid.Dataset.BeforePost := BeforePost;
  YillikPlanGrid.Dataset.AfterScroll := AfterScroll;
  YillikPlanGrid.Dataset.BeforeEdit := BeforeEdit;


  kolon2.Visible := false;
  kolon3.Visible := false;
  kolon4.Visible := false;


  //GridFaturalar.DataController.DataSource := DataSource;
  SayfaCaption('Plan','','','','');
  Disabled(self,True);
end;

procedure TfrmSirketYillikCalismaPlan.FormShow(Sender: TObject);
begin
  inherited;
//  GridToSayfaClient('YillikPlanGrid',self);
  // TcxGrid(FindComponent('YillikPlanGrid')).Width := sayfa1.Width - 20;
//   TcxGrid(FindComponent('YillikPlanGrid')).Height := sayfa1.Height - 45;
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

