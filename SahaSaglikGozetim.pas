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
    miYeniGozetim: TMenuItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxStyle8: TcxStyle;
    miGozetimSil: TMenuItem;
    miGozetimYazdir: TMenuItem;
    cxGridKadir1: TcxGridKadir;
    gridRapor: TcxGridDBBandedTableView;
    cxGridKadir1Level1: TcxGridLevel;
    cxGridKadir2: TcxGridKadir;
    cxGridLevel1: TcxGridLevel;
    gridRaporlar: TcxGridDBTableView;
    gridRaporlarID: TcxGridDBColumn;
    gridRaporlarDenetimiYapanKullanici: TcxGridDBColumn;
    gridRaporlarDenetimTarihi: TcxGridDBColumn;
    gridRaporlarDate_Create: TcxGridDBColumn;
    gridRaporlarGozetimDefterNo: TcxGridDBColumn;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    gridRaporID: TcxGridDBBandedColumn;
    gridRaporKonu_Sira: TcxGridDBBandedColumn;
    gridRaporKonu: TcxGridDBBandedColumn;
    gridRaporUygunmu: TcxGridDBBandedColumn;
    gridRaporTespitler: TcxGridDBBandedColumn;
    gridRaporOneriler: TcxGridDBBandedColumn;
    tmr1: TTimer;
    miGozetimDuzenle: TMenuItem;
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Gozlem(islem: Integer);
    procedure gridRaporlarFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tmr1Timer(Sender: TObject);
    procedure ADOQuery1BeforePost(DataSet: TDataSet);

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

uses data_modul, StrUtils;

{$R *.dfm}




function TfrmSahaSaglikGozetim.Init(Sender : TObject) : Boolean;
begin
  ADO_SahaGozetim.SQL.Text :=
    'select ID, DenetimiYapanKullanici, DenetimTarihi, Date_Create, GozetimDefterNo, FirmaKodu'#13#10+
    'from SahaGozlemRaporlari SR'#13#10+
    'where FirmaKodu = ' + QuotedStr (DATALAR.AktifSirket) + ''#13#10+
    'order by SR.ID';
  ADO_SahaGozetim .Active := true;
  Result := True;
end;

procedure TfrmSahaSaglikGozetim.tmr1Timer(Sender: TObject);
begin
  inherited;
  TTimer (Sender).Enabled := False;
  ADOQuery1.Open;
end;

procedure TfrmSahaSaglikGozetim.ADOQuery1BeforePost(DataSet: TDataSet);
begin
  inherited;
  //��
end;

procedure TfrmSahaSaglikGozetim.cxButtonCClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  aModalResult : TModalResult;
begin
  inherited;

  GirisRecord.F_firmaKod_ := ADO_SahaGozetim.fieldbyname('FirmaKodu').AsString;

  case Tcontrol(sender).Tag of
  -9 : begin
         Gozlem(yeniGozlem);
       end;
  -11 : begin
         Gozlem(GozlemDuzenle);
       end;
  -18 : begin
          if ADO_SahaGozetim.RecordCount > 0 then
          begin
            aModalResult := ShowMessageSkin('Saha G�zetim Kayd�n� silmek istedi�inizden emin misiniz ?', '', '', 'conf');
            if aModalResult <> mrYes then Exit;
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
 // Olustur(self,_TableName_,'Kimlik Do�rula',71,sqlInsert);
  cxPanel.Visible := false;
  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;
  SayfaCaption('','','','','');
end;

procedure TfrmSahaSaglikGozetim.Gozlem(islem: Integer);
var
  F : TForm;
  aBM : TBookmark;
  bBasarili: Boolean;
  aSahaDenetimVeri : TSahaDenetimler;
begin
    Self._firmaKod_ := datalar.AktifSirket;
    F := Self;
    if (islem in [yeniGozlem, GozlemDuzenle])
    then begin
      if islem = yeniGozlem then
      begin
        aSahaDenetimVeri.KullaniciAdi := DATALAR.username;
        aSahaDenetimVeri.FirmaKod := datalar.AktifSirket;
        aSahaDenetimVeri.DenetimTarihi := DateToStr (date);
        aSahaDenetimVeri.DenetimDefterNo := '';
      end
      else begin
        aSahaDenetimVeri.KullaniciAdi := ADO_SahaGozetim.FieldByName('DenetimiYapanKullanici').AsString;
        aSahaDenetimVeri.FirmaKod := ADO_SahaGozetim.FieldByName('FirmaKodu').AsString;
        aSahaDenetimVeri.DenetimTarihi := ADO_SahaGozetim.FieldByName('DenetimTarihi').AsString;
        aSahaDenetimVeri.DenetimDefterNo := ADO_SahaGozetim.FieldByName('GozetimDefterNo').AsString;
      end;
      _SahaDenetimVeri_ := aSahaDenetimVeri;
      if mrYes = ShowPopupForm(IfThen (islem = yeniGozlem, 'Yeni G�zlem', 'G�zlem D�zenle'),islem,F)
      then begin
        bBasarili := False;
        ADO_SahaGozetim.DisableControls;
        try
          if islem = yeniGozlem then
            ADO_SahaGozetim.Append
           else
            ADO_SahaGozetim.Edit;
          try
            ADO_SahaGozetim.FieldByName('DenetimiYapanKullanici').AsString := _SahaDenetimVeri_.KullaniciAdi;
            ADO_SahaGozetim.FieldByName('FirmaKodu').AsString := _SahaDenetimVeri_.FirmaKod;
            ADO_SahaGozetim.FieldByName('DenetimTarihi').AsString := _SahaDenetimVeri_.DenetimTarihi;
            ADO_SahaGozetim.FieldByName('GozetimDefterNo').AsString := _SahaDenetimVeri_.DenetimDefterNo;
            ADO_SahaGozetim.Post;
            bBasarili := True;
          finally
            if not bBasarili then ADO_SahaGozetim.Cancel;
          end;
          aBM := ADO_SahaGozetim.GetBookmark;
          try
            ADO_SahaGozetim.Refresh;
            ADO_SahaGozetim.GotoBookmark(aBM);
          finally
            ADO_SahaGozetim.FreeBookmark(aBM);
          end;
        finally
          ADO_SahaGozetim.EnableControls;
        end;
      end;
    end;
end;

procedure TfrmSahaSaglikGozetim.GozlemYazdir(const GozlemID: integer);
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
    TopluDataset.Dataset0.Name := 'PersonelEgitimleri';

    PrintYap('007','Saha Sa�l�k G�zetim Raporu','',TopluDataset,pTNone)
  finally
    ado.free;
  end;
end;

procedure TfrmSahaSaglikGozetim.gridRaporlarFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'exec dbo.sp_SahaGozlemRaporDetayGetir ' + IntToStr (ADO_SahaGozetim.FieldByName('ID').AsInteger);
  tmr1.Enabled := False;
  tmr1.Enabled := True;
end;end.
 denetimi yapan kullan�c� ile de�i�tiren farkl� olabilir mi ?
 yanl�� �irkete girip saha g�zetimi yapt�ysa ???
 soru cevaplar� default 1 olacak. bo� b�rak�rsa uygun de�ilse de�erlendirme ve �neri girmek zorunda olacak.
end.
