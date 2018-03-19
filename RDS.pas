unit RDS;

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
  TfrmRDS = class(TGirisForm)
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
    E3: TMenuItem;
    K1: TMenuItem;
    A1: TMenuItem;
    List: TListeAc;
    cxStyle9: TcxStyle;
    cxImageList1: TcxImageList;
    R1: TMenuItem;
    R2: TMenuItem;
    RDSGrid: TcxGridKadir;
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
    RDSSatirlar: TcxGridDBBandedTableView;
    RDSSatirlarSirketRiskID: TcxGridDBBandedColumn;
    RDSSatirlarid: TcxGridDBBandedColumn;
    RDSSatirlarBolum: TcxGridDBBandedColumn;
    RDSSatirlarTehlikeKaynagi: TcxGridDBBandedColumn;
    RDSSatirlarTehlike: TcxGridDBBandedColumn;
    RDSSatirlarRisk_tanim: TcxGridDBBandedColumn;
    RDSSatirlarOnlemler: TcxGridDBBandedColumn;
    RDSSatirlarOlasilik: TcxGridDBBandedColumn;
    RDSSatirlarFrekans: TcxGridDBBandedColumn;
    RDSSatirlarSiddet: TcxGridDBBandedColumn;
    RDSSatirlarRisk: TcxGridDBBandedColumn;
    RDSSatirlarRDS: TcxGridDBBandedColumn;
    RDSSatirlarMevcutOnlem: TcxGridDBBandedColumn;
    RDSSatirlarSorumlu: TcxGridDBBandedColumn;
    RDSSatirlarTermin: TcxGridDBBandedColumn;
    RDSSatirlarGerceklesme: TcxGridDBBandedColumn;
    RDSSatirlarOlasilik_2: TcxGridDBBandedColumn;
    RDSSatirlarFrekans_2: TcxGridDBBandedColumn;
    RDSSatirlarSiddet_2: TcxGridDBBandedColumn;
    RDSSatirlarRisk_2: TcxGridDBBandedColumn;
    RDSSatirlarRDS_2: TcxGridDBBandedColumn;
    RDSSatirlaryasalDayanak: TcxGridDBBandedColumn;
    RDSGridLevel1: TcxGridLevel;
    RDSGridMatris: TcxGridKadir;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    RDSSatirlarMatris: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
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
    procedure BeforePost(DataSet: TDataSet);

    procedure ButtonClick(Sender: TObject);
    procedure FaturaSatirTutarCustomDrawFooterCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure RDSSatirlarOlasilikPropertiesEditValueChanged(Sender: TObject);
    procedure PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    function Skor(risk : double) : integer;
    procedure AfterScroll(DataSet: TDataSet);
    function CreateRotatedFont: HFONT;
    procedure RDSSatirlarRDSCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure RDSSatirlarNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
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
  frmRDS: TfrmRDS;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}

function TfrmRDS.findMethod(dllHandle: Cardinal;  methodName: string): FARPROC;
begin
  Result := GetProcAddress(dllHandle, pchar(methodName));
end;

function TfrmRDS.CreateRotatedFont: HFONT;
  var
    ALogFont: TLogFont;
begin
    FillChar(ALogFont, SizeOf(ALogFont), 0);
   // GetObject(ANFont.Handle, SizeOf(ALogFont), @ALogFont);
    ALogFont.lfEscapement := 900;
    Result := CreateFontIndirect(ALogFont);
end;


function TfrmRDS.Skor(risk : double) : integer;
var
 sql : string;
begin
  Skor := 0;
  try
   sql := 'exec sp_RDSSkor ' + floattostr(risk);
   skor := datalar.QuerySelect(sql).FieldByName('kod').AsInteger;
  finally
  end;
end;

procedure TfrmRDS.FaturaDetay;
begin
   if TcxImageComboKadir(FindComponent('Method')).EditingValue = 1
   Then begin
     RDSGrid.Dataset.Active := False;
     RDSGrid.Dataset.SQL.Text := 'select * from RDS_SirketRiskKaynakFK where SirketRiskID = ' +
     QuotedStr(TcxButtonEditKadir(FindComponent('id')).Text);
     RDSGrid.Dataset.Active := True;
     TdxLayoutItem(FindComponent('dxLARDSGrid')).Visible := True;
     TdxLayoutItem(FindComponent('dxLARDSGridMatris')).Visible := False;
  end;

   if TcxImageComboKadir(FindComponent('Method')).EditingValue = 2
   Then begin
     RDSGridMatris.Dataset.Active := False;
     RDSGridMatris.Dataset.SQL.Text := 'select * from RDS_SirketRiskKaynakMatris where SirketRiskID = ' +
     QuotedStr(TcxButtonEditKadir(FindComponent('id')).Text);
     RDSGridMatris.Dataset.Active := True;
     TdxLayoutItem(FindComponent('dxLARDSGrid')).Visible := False;
     TdxLayoutItem(FindComponent('dxLARDSGridMatris')).Visible := True;
  end;




end;

procedure TfrmRDS.FaturaSatirTutarCustomDrawFooterCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
//  FaturaToplamlari;
end;

procedure TfrmRDS.cxKaydetClick(Sender: TObject);
begin
  //SirketKodx.Text := datalar.AktifSirket; giriþ formuna eklendi.
  inherited;

  case TControl(sender).Tag  of
    0 : begin
         RDSGrid.Enabled := True;
        end;
    2 : begin
          TcxDateEditKadir(FindComponent('date_create')).EditValue := date;
          RDSGrid.Enabled := False;
          FaturaDetay;
        end;
  end;
end;


procedure TfrmRDS.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  list : ArrayListeSecimler;
  where,prm : string;
begin
    inherited;
    Enabled;
    FaturaDetay;
end;

function TfrmRDS.Init(Sender : TObject) : Boolean;
var
  _obje_ : TcxCustomEdit;
begin
  Result := True;
end;


procedure TfrmRDS.Fatura(islem: Integer);
var
  F : TForm;
  bBasarili: Boolean;

begin
  //
end;

procedure TfrmRDS.NewRecord(DataSet: TDataSet);
begin
   RDSGrid.Dataset.FieldByName('SirketRiskID').AsInteger := TcxButtonEditKadir(FindComponent('id')).EditingValue;
end;

procedure TfrmRDS.RDSSatirlarNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);

procedure datawrite;
begin
    RDSSatirlar.DataController.DataSet.FieldByName('Bolum').AsString := datalar.Risk.Bolum;
    RDSSatirlar.DataController.DataSet.FieldByName('TehlikeKaynagi').AsString := datalar.Risk.TehlikeKaynagi;
    RDSSatirlar.DataController.DataSet.FieldByName('Tehlike').AsString := datalar.Risk.Tehlike;
    RDSSatirlar.DataController.DataSet.FieldByName('Risk_tanim').AsString := datalar.Risk.Risk_tanim;
    RDSSatirlar.DataController.DataSet.FieldByName('Onlemler').AsString := datalar.Risk.Onlemler;
    RDSSatirlar.DataController.DataSet.FieldByName('Olasilik').AsVariant := datalar.Risk.Olasilik;
    RDSSatirlar.DataController.DataSet.FieldByName('Frekans').AsVariant := datalar.Risk.Frekans;
    RDSSatirlar.DataController.DataSet.FieldByName('Siddet').AsVariant := datalar.Risk.Siddet;
    RDSSatirlar.DataController.DataSet.FieldByName('Risk').AsVariant := datalar.Risk.Risk;
    RDSSatirlar.DataController.DataSet.FieldByName('RDS').AsVariant := datalar.Risk.RDS;
    RDSSatirlar.DataController.DataSet.FieldByName('MevcutOnlem').AsString := datalar.Risk.MevcutOnlem;
    RDSSatirlar.DataController.DataSet.FieldByName('Sorumlu').AsString := datalar.Risk.Sorumlu;
    RDSSatirlar.DataController.DataSet.FieldByName('Termin').AsString := datalar.Risk.Termin;
    RDSSatirlar.DataController.DataSet.FieldByName('Gerceklesme').AsString := datalar.Risk.Gerceklesme;
    RDSSatirlar.DataController.DataSet.FieldByName('Olasilik_2').AsVariant := datalar.Risk.Olasilik_2;
    RDSSatirlar.DataController.DataSet.FieldByName('Frekans_2').AsVariant := datalar.Risk.Frekans_2;
    RDSSatirlar.DataController.DataSet.FieldByName('Siddet_2').AsVariant := datalar.Risk.Siddet_2;
    RDSSatirlar.DataController.DataSet.FieldByName('Risk_2').AsVariant := datalar.Risk.Risk_2;
    RDSSatirlar.DataController.DataSet.FieldByName('RDS_2').AsVariant := datalar.Risk.RDS_2;
    RDSSatirlar.DataController.DataSet.FieldByName('yasalDayanak').AsString := datalar.Risk.yasalDayanak;
end;

procedure dataRead;
begin
  datalar.Risk.Bolum := RDSSatirlar.DataController.DataSet.FieldByName('Bolum').AsVariant;
  datalar.Risk.TehlikeKaynagi := RDSSatirlar.DataController.DataSet.FieldByName('TehlikeKaynagi').AsVariant;
  datalar.Risk.Tehlike := RDSSatirlar.DataController.DataSet.FieldByName('Tehlike').AsVariant;
  datalar.Risk.Risk_tanim := RDSSatirlar.DataController.DataSet.FieldByName('Risk_tanim').AsVariant;
  datalar.Risk.Onlemler := RDSSatirlar.DataController.DataSet.FieldByName('Onlemler').AsString;
  datalar.Risk.Olasilik := RDSSatirlar.DataController.DataSet.FieldByName('Olasilik').AsVariant;;
  datalar.Risk.Frekans := RDSSatirlar.DataController.DataSet.FieldByName('Frekans').AsVariant;;
  datalar.Risk.Siddet := RDSSatirlar.DataController.DataSet.FieldByName('Siddet').AsVariant;;
  datalar.Risk.RDS := RDSSatirlar.DataController.DataSet.FieldByName('RDS').AsVariant;;
  datalar.Risk.MevcutOnlem := RDSSatirlar.DataController.DataSet.FieldByName('MevcutOnlem').AsString;
  datalar.Risk.Sorumlu := RDSSatirlar.DataController.DataSet.FieldByName('Sorumlu').AsString;
  datalar.Risk.Termin := RDSSatirlar.DataController.DataSet.FieldByName('Termin').AsString;
  datalar.Risk.Gerceklesme := RDSSatirlar.DataController.DataSet.FieldByName('Gerceklesme').AsString;
  datalar.Risk.Olasilik_2 := RDSSatirlar.DataController.DataSet.FieldByName('Olasilik_2').AsVariant;
  datalar.Risk.Frekans_2 := RDSSatirlar.DataController.DataSet.FieldByName('Frekans_2').AsVariant;
  datalar.Risk.Siddet_2 := RDSSatirlar.DataController.DataSet.FieldByName('Siddet_2').AsVariant;
  datalar.Risk.Risk_2 := RDSSatirlar.DataController.DataSet.FieldByName('Risk_2').AsVariant;
  datalar.Risk.RDS_2 := RDSSatirlar.DataController.DataSet.FieldByName('RDS_2').AsVariant;
  datalar.Risk.yasalDayanak := RDSSatirlar.DataController.DataSet.FieldByName('yasalDayanak').AsString;
end;

begin

  case AButtonIndex of
   6 : begin
        datalar.Risk.Bolum := Null;
        datalar.Risk.TehlikeKaynagi := Null;
        datalar.Risk.Tehlike := Null;
        datalar.Risk.Risk_tanim := Null;
        datalar.Risk.Onlemler := '';
        datalar.Risk.Olasilik := Null;
        datalar.Risk.Frekans := Null;
        datalar.Risk.Siddet := Null;
        datalar.Risk.RDS := Null;
        datalar.Risk.MevcutOnlem := '';
        datalar.Risk.Sorumlu := '';
        datalar.Risk.Termin := '';
        datalar.Risk.Gerceklesme := Null;
        datalar.Risk.Olasilik_2 := Null;
        datalar.Risk.Frekans_2 := Null;
        datalar.Risk.Siddet_2 := Null;
        datalar.Risk.Risk_2 := Null;
        datalar.Risk.RDS_2 := Null;
        datalar.Risk.yasalDayanak := '';

        if mrYes = ShowPopupForm('Risk Kaynaðý Ekle',yeniRisk)
        then begin
         try
          RDSSatirlar.DataController.DataSet.Append;
          datawrite;
          RDSSatirlar.DataController.DataSet.post;
          RDSSatirlar.DataController.DataSet.Refresh;
          ADone := True;
        except on e : Exception do
          begin
           ShowMessageSkin(e.Message,'','','info');
           RDSSatirlar.DataController.DataSet.Cancel;
          end;
        end;
        end;
    end;

   9 : begin
        dataRead;
        if mrYes = ShowPopupForm('Risk Kaynaðý Ekle',riskDuzenle)
        then begin
         try
          RDSSatirlar.DataController.DataSet.Edit;
          datawrite;
          RDSSatirlar.DataController.DataSet.Post;
          RDSSatirlar.DataController.DataSet.Refresh;
         except on e : Exception do
          begin
           ShowMessageSkin(e.Message,'','','info');
           RDSSatirlar.DataController.DataSet.Cancel;
          end;
         end;
        end;
    end;

  end;


end;

procedure TfrmRDS.RDSSatirlarOlasilikPropertiesEditValueChanged(
  Sender: TObject);
begin
  if TcxImageComboKadir(sender).Name = 'Method'
  then
   FaturaDetay;

//  RDSSatirlar.DataController.post;
end;

procedure TfrmRDS.RDSSatirlarRDSCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  lf: LOGFONT;
begin
 (*
  if AViewInfo.Value = 'TOLERANS GÖSTERÝLEMEZ RÝSK'
  Then
    ACanvas.Brush.Color := clRed
  else
  if AViewInfo.Value = 'ESASLI RÝSK'
  Then ACanvas.Brush.Color := clCream
  else
  if AViewInfo.Value = 'ÖNEMLÝ RÝSK'
  Then ACanvas.Brush.Color := clYellow
  else
  if AViewInfo.Value = 'OLASI RÝSK'
  then ACanvas.Brush.Color := clActiveCaption
  else
  if AViewInfo.Value = 'ÖNEMSÝZ RÝSK'
  then ACanvas.Brush.Color := clFuchsia;


(*
  ACanvas.Brush.Style := bsClear; // set the brush style to transparent
  FillChar(lf, SizeOf(lf), Byte(0));
  lf.lfHeight := 20;
  lf.lfEscapement := 10 * 90; // degrees to rotate
  lf.lfOrientation := -10 * 90;
  lf.lfCharSet := DEFAULT_CHARSET;
  lf.lfWidth := 150;

  StrCopy(lf.lfFaceName, 'Tahoma');

  ACanvas.Font.Handle := CreateFontIndirect(lf);
 // ACanvas. TextOut(10, 100, 'Rotated text');
 *)
end;

procedure TfrmRDS.PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
 L : ArrayListeSecimler;
 i : integer;
 n : string;

begin

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

end;

procedure TfrmRDS.AfterScroll(DataSet: TDataSet);
begin
//
end;

procedure TfrmRDS.AfterPost(DataSet: TDataSet);
begin
     cxPanelButtonEnabled(false,True,false);
     RDSGrid.Dataset.Refresh;
   //  FaturaToplamlari;

end;

procedure TfrmRDS.BeforePost(DataSet: TDataSet);
begin
//  RDSSatirlar.DataController.DataSet.FieldByName('Risk').AsFloat :=
 // RDSSatirlar.DataController.DataSet.FieldByName('Olasilik').AsFloat *
 // RDSSatirlar.DataController.DataSet.FieldByName('Frekans').AsFloat *
 // RDSSatirlar.DataController.DataSet.FieldByName('Siddet').AsFloat;

  RDSSatirlar.DataController.DataSet.FieldByName('RDS').AsInteger :=
    Skor(RDSSatirlar.DataController.DataSet.FieldByName('Risk').AsFloat);
end;

procedure TfrmRDS.cxButtonCClick(Sender: TObject);
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

procedure TfrmRDS.ButtonClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
begin
    F := FormINIT(9010,GirisRecord,ikHayir,'');
    if F <> nil then F.ShowModal;
end;


procedure TfrmRDS.FormCreate(Sender: TObject);
var
  List,Faturalar : TListeAc;
  RiskBolum,sirketlerx,TehlikeKaynak ,Tehlike , Risk ,
  Olasilik,Frekans,Siddet,Skor ,Method : TcxImageComboKadir;
  FaturaTarihi : TcxDateEditKadir;
  SirketAdi : TcxTextEditKadir;
  item : TcxRadioGroupItem;
  i : TcxImageComboBoxItem;
begin
  inherited;


  cxPanel.Visible := True;
  Menu := PopupMenu1;
  indexFieldName := 'id';
  TableName := 'RDS_SirketRisk';
 // TopPanel.Visible := true;


  Faturalar := ListeAcCreate('RDS_SirketRiskView','id,sirketKod,sirketAdi,Tarih,GTarih,Method',
                       'ID,ÞirketKodu,ÞirketAdý,HazýrlamaTarihi,Geçerlilik,Method',
                       '40,60,250,80,80,80','ID','Risk Raporlarý','',5,True);

  setDataStringB(self,'id','Risk ID',Kolon1,'trh',50,Faturalar,True,nil,'','',True,True,-100);
  TcxButtonEditKadir(FindComponent('id')).Identity := True;

  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,FaturaTarihi,'date_create','Hazýrlama Tarihi',Kolon1,'trh',80);

  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,FaturaTarihi,'update_date','Düzenleme Tarihi',Kolon1,'trh',80);


  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,FaturaTarihi,'gecerlilik_date','Geçerlilik Tarihi',Kolon1,'trh',80);


  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'SIRKETLER_TNM_view';
  sirketlerx.ValueField := 'SirketKod';
  sirketlerx.DisplayField := 'Tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Filter := '';
  setDataStringKontrol(self,sirketlerx,'SirketKod','Þirket',Kolon1,'trh',250,0,alNone,'');

  Method := TcxImageComboKadir.Create(self);
  Method.Conn := Datalar.ADOConnection2;
  Method.TableName := 'RDS_Method';
  Method.ValueField := 'kod';
  Method.DisplayField := 'Tanimi';
  Method.BosOlamaz := False;
  Method.Filter := '';
  setDataStringKontrol(self,Method,'Method','Method',Kolon1,'trh',80,0,alNone,'');
  TcxImageComboKadir(FindComponent('Method')).Properties.OnEditValueChanged :=
  RDSSatirlarOlasilikPropertiesEditValueChanged;

 // addButton(self,nil,'btnTanimEkle','','Risk Kaynak Taným Ekle',Kolon2,'srkt',120,ButtonClick);


  RiskBolum := TcxImageComboKadir.Create(self);
  RiskBolum.Name := 'RiskBolum';
  RiskBolum.Tag := -100;
  RiskBolum.Conn := datalar.ADOConnection2;
  RiskBolum.TableName := 'RDS_RiskBolum';
  RiskBolum.ValueField := 'Kod';
  RiskBolum.DisplayField := 'tanimi';
  RiskBolum.Filter := '';

  TehlikeKaynak := TcxImageComboKadir.Create(self);
  TehlikeKaynak.Name := 'TehlikeKaynak';
  TehlikeKaynak.Tag := -100;
  TehlikeKaynak.Conn := datalar.ADOConnection2;
  TehlikeKaynak.TableName := 'RDS_TehlikeKaynak';
  TehlikeKaynak.ValueField := 'Kod';
  TehlikeKaynak.DisplayField := 'tanimi';
  TehlikeKaynak.Filter := '';

  Tehlike := TcxImageComboKadir.Create(self);
  Tehlike.Name := 'Tehlike';
  Tehlike.Tag := -100;
  Tehlike.Conn := datalar.ADOConnection2;
  Tehlike.TableName := 'RDS_Tehlike';
  Tehlike.ValueField := 'Kod';
  Tehlike.DisplayField := 'tanimi';
  Tehlike.Filter := '';

  Risk := TcxImageComboKadir.Create(self);
  Risk.Name := 'Risk';
  Risk.Tag := -100;
  Risk.Conn := datalar.ADOConnection2;
  Risk.TableName := 'RDS_Risk';
  Risk.ValueField := 'Kod';
  Risk.DisplayField := 'tanimi';
  Risk.Filter := '';

  Olasilik := TcxImageComboKadir.Create(self);
  Olasilik.Name := 'Olasilik';
  Olasilik.Tag := -100;
  Olasilik.Conn := datalar.ADOConnection2;
  Olasilik.TableName := 'RDS_OLASILIK';
  Olasilik.ValueField := 'degeri';
  Olasilik.DisplayField := 'tanimi';
  Olasilik.Filter := ' where Metod = 1';

  Frekans := TcxImageComboKadir.Create(self);
  Frekans.Name := 'Frekans';
  Frekans.Tag := -100;
  Frekans.Conn := datalar.ADOConnection2;
  Frekans.TableName := 'RDS_Frekans';
  Frekans.ValueField := 'degeri';
  Frekans.DisplayField := 'tanimi';
  Frekans.Filter := '';

  Siddet := TcxImageComboKadir.Create(self);
  Siddet.Name := 'Siddet';
  Siddet.Tag := -100;
  Siddet.Conn := datalar.ADOConnection2;
  Siddet.TableName := 'RDS_SIDDET';
  Siddet.ValueField := 'degeri';
  Siddet.DisplayField := 'tanimi';
  Siddet.Filter := ' where Metod = 1';
(*
  Skor := TcxImageComboKadir.Create(self);
  Skor.Name := 'Skor';
  Skor.Tag := -100;
  Skor.Conn := datalar.ADOConnection2;
  Skor.TableName := 'RDS_Skor';
  Skor.ValueField := 'kod';
  Skor.DisplayField := 'tanimi';
  Skor.Filter := '';
  *)

  try
     TcxImageComboBoxProperties(RDSSatirlarBolum.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('RiskBolum')).Properties).Items;
     TcxImageComboBoxProperties(RDSSatirlarTehlikeKaynagi.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('TehlikeKaynak')).Properties).Items;
 //    TcxImageComboBoxProperties(RDSSatirlarTehlike.Properties).Items :=
 //    TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('Tehlike')).Properties).Items;
  //   TcxImageComboBoxProperties(RDSSatirlarRisk_tanim.Properties).Items :=
 //    TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('Risk')).Properties).Items;

   (*
     TcxImageComboBoxProperties(RDSSatirlarOlasilik.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('Olasilik')).Properties).Items;
     TcxImageComboBoxProperties(RDSSatirlarFrekans.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('Frekans')).Properties).Items;
     TcxImageComboBoxProperties(RDSSatirlarSiddet.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('Siddet')).Properties).Items;

     TcxImageComboBoxProperties(RDSSatirlarOlasilik_2.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('Olasilik')).Properties).Items;
     TcxImageComboBoxProperties(RDSSatirlarFrekans_2.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('Frekans')).Properties).Items;
     TcxImageComboBoxProperties(RDSSatirlarSiddet_2.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('Siddet')).Properties).Items;
     *)
  //   TcxImageComboBoxProperties(RDSSatirlarRDS.Properties).Items :=
  //   TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('Skor')).Properties).Items;

  //   TcxColorComboBoxProperties(RDSSatirlarRDS.Properties).Items.Clear;
  //   TcxColorComboBoxProperties(RDSSatirlarRDS.Properties).Items.AddColor(clRed,'TOLERANS GÖSTERÝLEMEZ RÝSK');
  //   TcxColorComboBoxProperties(RDSSatirlarRDS.Properties).Items.AddColor(clYellow,'ÖNEMLÝ RÝSK');

   //  TcxColorComboBox(RDSSatirlarRDS).ColorValue


//     RDSSatirlarFrekans.Properties.OnEditValueChanged := RDSSatirlarOlasilikPropertiesEditValueChanged;
//     RDSSatirlarSiddet.Properties.OnEditValueChanged := RDSSatirlarOlasilikPropertiesEditValueChanged;
//     RDSSatirlarOlasilik_2.Properties.OnEditValueChanged := RDSSatirlarOlasilikPropertiesEditValueChanged;
//     RDSSatirlarFrekans_2.Properties.OnEditValueChanged := RDSSatirlarOlasilikPropertiesEditValueChanged;
//     RDSSatirlarSiddet_2.Properties.OnEditValueChanged := RDSSatirlarOlasilikPropertiesEditValueChanged;



     RDSSatirlarTehlike.Properties.OnButtonClick := PropertiesButtonClick;

  finally
  end;




//  setDataStringBLabel(self,'bosSatir',kolon1,'',1000,'Risk Kaynaklarý');
  setDataStringKontrol(self,RDSGrid,'RDSGrid','',Kolon1,'',1050,450);
  setDataStringKontrol(self,RDSGridMatris,'RDSGridMatris','',Kolon1,'',1050,450);

  RDSGrid.Dataset.Connection := datalar.ADOConnection2;
  RDSGridMatris.Dataset.Connection := datalar.ADOConnection2;

  RDSGrid.Dataset.OnNewRecord := NewRecord;
  RDSGrid.Dataset.AfterPost := AfterPost;
  RDSGrid.Dataset.BeforePost := BeforePost;
  RDSGrid.Dataset.AfterScroll := AfterScroll;

  RDSGridMatris.Dataset.OnNewRecord := NewRecord;
  RDSGridMatris.Dataset.AfterPost := AfterPost;
  RDSGridMatris.Dataset.BeforePost := BeforePost;
  RDSGridMatris.Dataset.AfterScroll := AfterScroll;

  kolon2.Width := 0;
  Kolon3.Width := 0;
  Kolon4.Width := 0;


  //GridFaturalar.DataController.DataSource := DataSource;
  SayfaCaption('','','','','');
  Disabled(self,True);
end;

procedure TfrmRDS.GozlemYazdir(const GozlemID: integer);
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

procedure TfrmRDS.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

