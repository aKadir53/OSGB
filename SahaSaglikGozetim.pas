unit SahaSaglikGozetim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,
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
  cxGridBandedTableView, cxGridDBBandedTableView, KadirLabel;

type
  TfrmSahaSaglikGozetim = class(TGirisForm)
    DataSource1: TDataSource;
    ADO_SahaGozetim: TADOQuery;
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
    T1: TMenuItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxStyle8: TcxStyle;
    G1: TMenuItem;
    Y1: TMenuItem;
    cxGridKadir1: TcxGridKadir;
    gridRapor: TcxGridDBBandedTableView;
    cxGridKadir1Level1: TcxGridLevel;
    cxGridKadir2: TcxGridKadir;
    cxGridLevel1: TcxGridLevel;
    gridRaporlar: TcxGridDBTableView;
    gridRaporlarID: TcxGridDBColumn;
    gridRaporlarFirmaKodu: TcxGridDBColumn;
    gridRaporlarDenetimiYapanKullanici: TcxGridDBColumn;
    gridRaporlarDenetimTarihi: TcxGridDBColumn;
    gridRaporlarDate_Create: TcxGridDBColumn;
    gridRaporlarGozetimDefterNo: TcxGridDBColumn;
    gridRaporlarImage: TcxGridDBColumn;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    gridRaporID: TcxGridDBBandedColumn;
    gridRaporKonu_Sira: TcxGridDBBandedColumn;
    gridRaporKonu: TcxGridDBBandedColumn;
    gridRaporUygunmu: TcxGridDBBandedColumn;
    gridRaporTespitler: TcxGridDBBandedColumn;
    gridRaporOneriler: TcxGridDBBandedColumn;
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Gozlem(islem: Integer);
    procedure gridRaporlarFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);

  private
    { Private declarations }
  protected
    procedure GozlemYazdir (const GozlemID : integer);
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmSahaSaglikGozetim: TfrmSahaSaglikGozetim;

implementation
    uses data_modul;

{$R *.dfm}




function TfrmSahaSaglikGozetim.Init(Sender : TObject) : Boolean;
begin
  ADO_SahaGozetim .Active := true;
  Result := True;
end;

procedure TfrmSahaSaglikGozetim.cxButtonCClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
begin
  inherited;

  GirisRecord.F_firmaKod_ := ADO_SahaGozetim.fieldbyname('FirmaKodu').AsString;

  case Tcontrol(sender).Tag of
  -9 : begin
         Gozlem(yeniGozlem);
       end;
  -18 : begin
          if ADO_SahaGozetim.RecordCount > 0 then
          begin
            if not SahaSaglikGozlemSil (ADO_SahaGozetim.FieldByName('ID').AsInteger) then Exit;
            ADO_SahaGozetim.Active := False;
            ADO_SahaGozetim.Active := True;
          end;
        end;
  -27 : begin
          if ADO_SahaGozetim.RecordCount > 0 then
            GozlemYazdir (ADO_SahaGozetim.FieldByName('ID').AsInteger);
        end;
  end;
end;

procedure TfrmSahaSaglikGozetim.FormCreate(Sender: TObject);
begin
  Menu := PopupMenu1;
 // Olustur(self,_TableName_,'Kimlik Doðrula',71,sqlInsert);
  cxPanel.Visible := false;
  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;
  SayfaCaption('','','','','');
end;

procedure TfrmSahaSaglikGozetim.Gozlem(islem: Integer);
var
    F : TForm;
begin
    Self._firmaKod_ := datalar.AktifSirket;
    F := Self;

    if islem = yeniGozlem
    then
    if mrYes = ShowPopupForm('Yeni Gözlem',islem,F)
    then begin


          ShowMessageSkin(_firmaKod_,_SahaDenetimVeri_.DenetimTarihi,'','info');


    end;




end;

procedure TfrmSahaSaglikGozetim.GozlemYazdir(const GozlemID: integer);
begin
 c grid sütunlarýný ayarla.
 üstteki prosedürden sonra append yap
 datalar.queryexec'i overload yap
end;

procedure TfrmSahaSaglikGozetim.gridRaporlarFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'exec dbo.sp_SahaGozlemRaporDetayGetir ' + IntToStr (ADO_SahaGozetim.FieldByName('ID').AsInteger);
  ADOQuery1.Open;
end;

end.
