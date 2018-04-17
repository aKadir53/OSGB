unit CihazKontrol;

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
  cxGridBandedTableView, cxGridDBBandedTableView, KadirLabel, cxImage;

type
  TfrmCihazKontrol = class(TGirisForm)
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
    gridRapor: TcxGridDBTableView;
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
    gridRaporID: TcxGridDBColumn;
    gridRaporKonuRakamli: TcxGridDBColumn;
    gridRaporUygunmu: TcxGridDBColumn;
    gridRaporTespitler: TcxGridDBColumn;
    gridRaporOneriler: TcxGridDBColumn;
    tmr1: TTimer;
    miGozetimDuzenle: TMenuItem;
    miFotografYukle: TMenuItem;
    miFotografGoruntule: TMenuItem;
    miFotografiSil: TMenuItem;
    gridRaporlarImageVar: TcxGridDBColumn;
    gridRaporlarGozlemGrupTanim: TcxGridDBColumn;
    gridRaporGrupBaslikRakamli: TcxGridDBColumn;
    gridRaporlarSubeTanimi: TcxGridDBColumn;
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Gozlemt(islem: Integer);
    procedure gridRaporlarFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tmr1Timer(Sender: TObject);
    procedure ADOQuery1BeforePost(DataSet: TDataSet);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);

  private
    { Private declarations }
    FImages : array of TcxImage;
    FImageIds : array of Integer;
    function ImageIndexOfID (const iID : Integer): Integer;
    function ImageAdd (const iID : Integer; const aImage : TCxImage): Integer;
    procedure ImageDelete (const iIndex: Integer);
  protected
    procedure GozlemYazdir (const GozlemID : integer);
    procedure AdjustMasterControls;
    procedure RefreshSahaGozetimler (const bUseBookmark: Boolean);
    function CihazKontrolFormFotografYukle (const iSahaGozetimID : Integer): Boolean;
    function CihazKontrolFormFotografSil (const iSahaGozetimID : Integer): Boolean;
    procedure CihazKontrolFormFotografGoruntule (const iSahaGozetimID : Integer);
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmCihazKontrol: TfrmCihazKontrol;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}




function TfrmCihazKontrol.ImageAdd(const iID: Integer;
  const aImage: TCxImage): Integer;
begin
  Result := -1;
  if Result < 0 then ;;
  SetLength (FImages, High (FImages) + 2);
  SetLength (FImageIds, High (FImageIds) + 2);
  Result := High (FImages);
  FImages [Result]:= TcxImage.Create (Self);
  FImages [Result].Picture.Assign (aImage.Picture);
  FImageIds[Result] := iID;
end;

procedure TfrmCihazKontrol.ImageDelete(const iIndex: Integer);
var
  i : Integer;
begin
  FreeAndNil(FImages [iIndex]);
  for i := iIndex to High (FImages) -1 do
  begin
    FImages [i] := FImages [i + 1];
    FImageIds [i] := FImageIds [i + 1];
  end;
  SetLength (FImages, High (FImages));
  SetLength (FImageIds, High (FImageIds));
end;

function TfrmCihazKontrol.ImageIndexOfID(const iID: Integer): Integer;
var
  i:Integer;
begin
  Result := -1;
  i := 0;
  while (Result = -1) and (i <= High (FImageIds)) do
  begin
    if FImageIds [i] = iID then Result := i;
    i := i + 1;
  end;
end;

function TfrmCihazKontrol.Init(Sender : TObject) : Boolean;
begin
  //þube kodu ekle
  ADO_SahaGozetim.SQL.Text :=
    'select SR.ID, SR.SubeKod, sst.subeTanim SubeTanimi, DenetimiYapanKullanici, DenetimTarihi, Date_Create, GozetimDefterNo, FirmaKodu, '#13#10+
    '  cast (case when Image Is NULL then 0 else 1 end as bit) ImageVar, '#13#10+
    '  SR.Gozlem'þ'Grup, SGR.Tanimi GozlemGrupTanim '#13#10+
    'from SahaGozlemRaporlari SR'#13#10+
    'inner join SahaGozlem'þ'SoruGrup SGR on SGR.GozlemGrup = SR.GozlemGrup'#13#10+
    'left outer join SIRKET_SUBE_TNM sst on sst.SirketKod = SR.FirmaKodu'#13#10+
    '  and sst.SubeKod = SR.SubeKod'#13#10+
    'where FirmaKodu = ' + QuotedStr (DATALAR.AktifSirket) + ''#13#10+
    'order by SR.ID';
  ADO_SahaGozetim .Active := true;
  Result := True;
end;

procedure TfrmCihazKontrol.RefreshSahaGozetimler(
  const bUseBookmark: Boolean);
var
  aBM: TBookmark;
begin
  if bUseBookmark then
  begin
    aBM := ADO_SahaGozetim.GetBookmark;
    try
      //ADO_SahaGozetim.Refresh;
      ADO_SahaGozetim.Active := False;
      ADO_SahaGozetim.Active := True;
      ADO_SahaGozetim.GotoBookmark(aBM);
    finally
      ADO_SahaGozetim.FreeBookmark(aBM);
    end;
  end
  else begin
    ADO_SahaGozetim.Active := False;
    ADO_SahaGozetim.Active := True;
  end;
  AdjustMasterControls;
end;

procedure TfrmCihazKontrol.CihazKontrolFormFotografGoruntule(
  const iSahaGozetimID: Integer);
var
  iIndex : Integer;
  sFileName : String;
  aImage : TcxImage;
begin
  iIndex := ImageIndexOfID(iSahaGozetimID);
  if iIndex < 0 then
  begin
    aImage := TcxImage.Create (Self);
    try
      if not VeritabaniAlanindanFotografYukle ('SahaGozlem'þ'Raporlari', 'ID', 'Image', IntToStr (iSahaGozetimID), aImage) then Exit;
      iIndex := ImageAdd(iSahaGozetimID, aImage);
    finally
      aImage.Free;
    end;
  end;
  FotografGoruntule (FImages [iIndex].Picture);
end;

function TfrmCihazKontrol.CihazKontrolFormFotografSil(
  const iSahaGozetimID: Integer): Boolean;
var
  sql : String;
begin
  SQL := 'update SahaGozlem'þ'Raporlari set Image = NULL where ID = ' + IntToStr (iSahaGozetimID);
  DATALAR.QueryExec(SQL);
  Result := True;
end;

function TfrmCihazKontrol.CihazKontrolFormFotografYukle(
  const iSahaGozetimID: Integer): Boolean;
begin
  Result := VeritabaniAlaninaFotografYukle ('SahaGozlem'þ'Raporlari', 'ID', 'Image', IntToStr (iSahaGozetimID));
end;

procedure TfrmCihazKontrol.tmr1Timer(Sender: TObject);
begin
  inherited;
  TTimer (Sender).Enabled := False;
  ADOQuery1.Open;
  gridRapor.ViewData.Expand(true);
end;

procedure TfrmCihazKontrol.AdjustMasterControls;
begin
  miFotografYukle.Enabled := ADO_SahaGozetim.Active;
  miFotografGoruntule.Enabled := ADO_SahaGozetim.Active and ADO_SahaGozetim.FieldByName('ImageVar').AsBoolean;
  miFotografiSil.Enabled := ADO_SahaGozetim.Active and ADO_SahaGozetim.FieldByName('ImageVar').AsBoolean;
  miGozetimSil.Enabled := ADO_SahaGozetim.Active and (ADO_SahaGozetim.RecordCount > 0);
  miGozetimYazdir.Enabled := ADO_SahaGozetim.Active and (ADO_SahaGozetim.RecordCount > 0);
  miGozetimDuzenle.Enabled := ADO_SahaGozetim.Active and (ADO_SahaGozetim.RecordCount > 0);
  PopupMenuToToolBar(self,ToolBar1,Menu);
end;

procedure TfrmCihazKontrol.ADOQuery1BeforePost(DataSet: TDataSet);
begin
  inherited;
  //soru cevaplarý default 1 olacak. boþ býrakýrsa uygun deðilse deðerlendirme ve öneri girmek zorunda olacak.
  if (DataSet.FieldByName ('UygunMu').AsInteger <> 1)
    and (IsNull (DataSet.FieldByName ('Tespitler').AsString)
      or IsNull (DataSet.FieldByName ('Oneriler').AsString)) then
  begin
    ShowMessageSkin('Uygun Olmayan Durum Ýçin Tespit ve Öneri giriþi yapýlmalýdýr', '', '', 'info');
    Abort;
  end;
end;

procedure TfrmCihazKontrol.cxButtonCClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  aModalResult : TModalResult;
begin
  inherited;

  GirisRecord.F_firmaKod_ := ADO_SahaGozetim.fieldbyname('FirmaKodu').AsString;

  case Tcontrol(sender).Tag of
  -9 : begin
         Gozlemx(yeniGozlemx);
       end;
  -11 : begin
         Gozlemx(GozlemDuzenlex);
       end;
  -18 : begin
          if ADO_SahaGozetim.RecordCount > 0 then
          begin
            aModalResult := ShowMessageSkin('Saha Gözetim Kaydýný silmek istediðinizden emin misiniz ?', '', '', 'conf');
            if aModalResult <> mrYes then Exit;
            if not SahaSaglikGozlemxSil (ADO_SahaGozetim.FieldByName('ID').AsInteger) then Exit;
            RefreshSahaGozetimler (False);
          end;
        end;
  -21:begin
    if CihazKontrolFormFotografYukle (ADO_SahaGozetim.FieldByName('ID').AsInteger) then
      RefreshSahaGozetimler (True);
  end;
  -22:begin
    CihazKontrolFormFotografGoruntule (ADO_SahaGozetim.FieldByName('ID').AsInteger);
  end;
  -23:begin
    if showmessageskin ('Ýlgili Saha Gözetim Formu''nun EkliFotoðrafýný Veritabanýndan Silmek Ýstiyor Musunuz ?', '', '', 'conf') = mrYes then
      if CihazKontrolFormFotografSil (ADO_SahaGozetim.FieldByName('ID').AsInteger) then
        RefreshSahaGozetimler (True);
  end;
  -27 : begin
          if ADO_SahaGozetim.RecordCount > 0 then
            GozlemxYazdir (ADO_SahaGozetim.FieldByName('ID').AsInteger);
        end;
  end;
end;

procedure TfrmCihazKontrol.FormCreate(Sender: TObject);
begin
  Menu := PopupMenu1;
  SetLength (FImages, 0);
  SetLength (FImageIds, 0);
 // Olustur(self,_TableName_,'Kimlik Doðrula',71,sqlInsert);
  cxPanel.Visible := false;
  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;
  SayfaCaption('','','','','');
end;

procedure TfrmCihazKontrol.Gozlemzz(islem: Integer);
var
  F : TForm;
  bBasarili: Boolean;
  aSahaDenetimVeri : TSahaDenetimler;
begin
    Self._firmaKod_ := datalar.AktifSirket;
    F := Self;
    if (islem in [yeniGozlemz, GozlemDuzenlez])
    then begin
      if islem = yeniGozlemz then
      begin
        aSahaDenetimVeri.KullaniciAdi := DATALAR.username;
        aSahaDenetimVeri.FirmaKod := datalar.AktifSirket;
        aSahaDenetimVeri.SubeKod := HakikiAktifSube;
        aSahaDenetimVeri.DenetimTarihi := DateToStr (date);
        aSahaDenetimVeri.DenetimDefterNo := '';
        aSahaDenetimVeri.GozlemzGrubu := '';
      end
      else begin
        aSahaDenetimVeri.KullaniciAdi := ADO_SahaGozetim.FieldByName('DenetimiYapanKullanici').AsString;
        aSahaDenetimVeri.FirmaKod := ADO_SahaGozetim.FieldByName('FirmaKodu').AsString;
        aSahaDenetimVeri.SubeKod := ADO_SahaGozetim.FieldByName('SubeKod').AsString;
        aSahaDenetimVeri.DenetimTarihi := ADO_SahaGozetim.FieldByName('DenetimTarihi').AsString;
        aSahaDenetimVeri.DenetimDefterNo := ADO_SahaGozetim.FieldByName('GozetimDefterNo').AsString;
        aSahaDenetimVeri.GozlemzGrubu := ADO_SahaGozetim.FieldByName('Gozlem'x'Grup').AsString;
      end;
      _SahaDenetimVeri_ := aSahaDenetimVeri;
      if mrYes = ShowPopupForm(IfThen (islem = yeniGozlemz, 'Yeni Gözlem', 'Gözlem Düzenle'),islem,F)
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
            ADO_SahaGozetim.FieldByName('SubeKod').AsString := _SahaDenetimVeri_.SubeKod;
            ADO_SahaGozetim.FieldByName('DenetimTarihi').AsString := _SahaDenetimVeri_.DenetimTarihi;
            ADO_SahaGozetim.FieldByName('GozetimDefterNo').AsString := _SahaDenetimVeri_.DenetimDefterNo;
            ADO_SahaGozetim.FieldByName('Gozlem'þ'Grup').AsString := _SahaDenetimVeri_.GozlemGrubu;
            ADO_SahaGozetim.Post;
            bBasarili := True;
          finally
            if not bBasarili then ADO_SahaGozetim.Cancel;
          end;
          RefreshSahaGozetimler (True);
        finally
          ADO_SahaGozetim.EnableControls;
        end;
      end;
    end;
end;

procedure TfrmCihazKontrol.GozlemwYazdir(const GozlemID: integer);
var
  ado : TADOQuery;
  sql : String;
  TopluDataset : TDataSetKadir;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'sp_SahaGozlem'þ'RaporBaski ' + IntToStr (GozlemID);

    datalar.QuerySelect(ado, sql);
    TopluDataset.Dataset0 := ado;
    TopluDataset.Dataset0.Name := 'CihazKontrolRaporu';

    PrintYap('007','Saha Saðlýk Gözetim Raporu','',TopluDataset,pTNone)
  finally
    ado.free;
  end;
end;

procedure TfrmCihazKontrol.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

procedure TfrmCihazKontrol.gridRaporlarFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'exec dbo.sp_SahaGozlem'þ'RaporDetayGetir ' + IntToStr (ADO_SahaGozetim.FieldByName('ID').AsInteger);
  tmr1.Enabled := False;
  tmr1.Enabled := True;
  AdjustMasterControls;
end;
select * from CihazKontrol_view
go
select * from cihazdetay_view
go
select id, KontrolSoru, KontrolSoruCvp, KontrolSoruCvpAciklama
from cihazkontroldetay
where kontrolid = 5
  and tip = 'CKS'
go
select *
from cihazkontrolsorulari
end.

