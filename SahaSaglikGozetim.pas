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
    gridRaporKonu_Sira: TcxGridDBColumn;
    gridRaporKonu: TcxGridDBColumn;
    gridRaporUygunmu: TcxGridDBColumn;
    gridRaporTespitler: TcxGridDBColumn;
    gridRaporOneriler: TcxGridDBColumn;
    tmr1: TTimer;
    miGozetimDuzenle: TMenuItem;
    miFotografYukle: TMenuItem;
    miFotografGoruntule: TMenuItem;
    miFotografiSil: TMenuItem;
    gridRaporlarImageVar: TcxGridDBColumn;
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
    procedure AdjustMasterControls;
    procedure RefreshSahaGozetimler (const bUseBookmark: Boolean);
    function SahaSaglikGozetimFormFotografYukle (const iSahaGozetimID : Integer): Boolean;
    function SahaSaglikGozetimFormFotografSil (const iSahaGozetimID : Integer): Boolean;
    procedure SahaSaglikGozetimFormFotografGoruntule (const iSahaGozetimID : Integer);
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmSahaSaglikGozetim: TfrmSahaSaglikGozetim;

implementation

uses data_modul, StrUtils, Jpeg, cxImage;

{$R *.dfm}




function TfrmSahaSaglikGozetim.Init(Sender : TObject) : Boolean;
begin
  ADO_SahaGozetim.SQL.Text :=
    'select ID, DenetimiYapanKullanici, DenetimTarihi, Date_Create, GozetimDefterNo, FirmaKodu, cast (case when Image Is NULL then 0 else 1 end as bit) ImageVar '#13#10+
    'from SahaGozlemRaporlari SR'#13#10+
    'where FirmaKodu = ' + QuotedStr (DATALAR.AktifSirket) + ''#13#10+
    'order by SR.ID';
  ADO_SahaGozetim .Active := true;
  Result := True;
end;

procedure TfrmSahaSaglikGozetim.RefreshSahaGozetimler(
  const bUseBookmark: Boolean);
var
  aBM: TBookmark;
begin
  if bUseBookmark then
  begin
    aBM := ADO_SahaGozetim.GetBookmark;
    try
      ADO_SahaGozetim.Refresh;
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

procedure TfrmSahaSaglikGozetim.SahaSaglikGozetimFormFotografGoruntule(
  const iSahaGozetimID: Integer);
begin
  //ff
end;

function TfrmSahaSaglikGozetim.SahaSaglikGozetimFormFotografSil(
  const iSahaGozetimID: Integer): Boolean;
var
  sql : String;
begin
  SQL := 'update SahaGozlemRaporlari set Image = NULL where ID = ' + IntToStr (iSahaGozetimID);
  DATALAR.QueryExec(SQL);
  Result := True;
end;

function TfrmSahaSaglikGozetim.SahaSaglikGozetimFormFotografYukle(
  const iSahaGozetimID: Integer): Boolean;
var
 Fo : TFileOpenDialog;
 jp : TJPEGImage;
 adox : TADOQuery;
 tmpPicture : TcxImage;
 sFileName : String;
begin
  Result := False;
  Fo := TFileOpenDialog.Create(nil);
  try
    if not fo.Execute then Exit;
    sFileName := fo.FileName;
  finally
    fo.Free;
  end;
  if not FileExists (sFileName)  then
  begin
    ShowMessageSkin('Belirtilen dosya bulunamadý', '', '', 'info');
    Exit;
  end;
  tmpPicture := TcxImage.Create (Self);
  try
    tmpPicture.Picture.LoadFromFile(sfilename);
    jp := TJpegimage.Create;
    try
      jp.Assign(tmpPicture.Picture);
      adox := TADOQuery.Create (Self);
      try
        adox.Connection := DATALAR.ADOConnection2;
        adox.SQL.Text := 'SELECT ID, Image From SahaGozlemRaporlari where ID = ' + IntToStr (iSahaGozetimID);
        adox.Open;
        try
          if adox.RecordCount = 0 then
          begin
            ShowMessageSkin('Saha Gözetim Formu Kaydý açýlamadý','', '', 'info');
            Exit;
          end;
          Adox.Edit;
          try
            adox.FieldByName('Image').Assign(jp);
            adox.Post;
            Result := True;
          except
            adox.Cancel;
            raise;
          end;
        finally
          adox.close;
        end;
      finally
        adox.Free;
      end;
    finally
      jp.Free;
    end;
  finally
    tmpPicture.free;
  end;
end;

procedure TfrmSahaSaglikGozetim.tmr1Timer(Sender: TObject);
begin
  inherited;
  TTimer (Sender).Enabled := False;
  ADOQuery1.Open;
end;

procedure TfrmSahaSaglikGozetim.AdjustMasterControls;
begin
  miFotografYukle.Enabled := ADO_SahaGozetim.Active;
  miFotografGoruntule.Enabled := ADO_SahaGozetim.Active and ADO_SahaGozetim.FieldByName('ImageVar').AsBoolean;
  miFotografiSil.Enabled := ADO_SahaGozetim.Active and ADO_SahaGozetim.FieldByName('ImageVar').AsBoolean;
  miGozetimSil.Enabled := ADO_SahaGozetim.Active and (ADO_SahaGozetim.RecordCount > 0);
  miGozetimYazdir.Enabled := ADO_SahaGozetim.Active and (ADO_SahaGozetim.RecordCount > 0);
  miGozetimDuzenle.Enabled := ADO_SahaGozetim.Active and (ADO_SahaGozetim.RecordCount > 0);
end;

procedure TfrmSahaSaglikGozetim.ADOQuery1BeforePost(DataSet: TDataSet);
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
            aModalResult := ShowMessageSkin('Saha Gözetim Kaydýný silmek istediðinizden emin misiniz ?', '', '', 'conf');
            if aModalResult <> mrYes then Exit;
            if not SahaSaglikGozlemSil (ADO_SahaGozetim.FieldByName('ID').AsInteger) then Exit;
            RefreshSahaGozetimler (False);
          end;
        end;
  -21:begin
    if SahaSaglikGozetimFormFotografYukle (ADO_SahaGozetim.FieldByName('ID').AsInteger) then
      RefreshSahaGozetimler (True);
  end;
  -22:begin
    SahaSaglikGozetimFormFotografGoruntule (ADO_SahaGozetim.FieldByName('ID').AsInteger);
  end;
  -23:begin
    if SahaSaglikGozetimFormFotografSil (ADO_SahaGozetim.FieldByName('ID').AsInteger) then
      RefreshSahaGozetimler (True);
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
      if mrYes = ShowPopupForm(IfThen (islem = yeniGozlem, 'Yeni Gözlem', 'Gözlem Düzenle'),islem,F)
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
          RefreshSahaGozetimler (True);
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
    TopluDataset.Dataset0.Name := 'SahaSaglikGozetimRaporu';

    PrintYap('007','Saha Saðlýk Gözetim Raporu','',TopluDataset,pTNone)
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
  AdjustMasterControls;
  tmr1.Enabled := False;
  tmr1.Enabled := True;
end;end.
fotoðraf yükle
fotoðraf gör / göster.
master gridde fotoðraf var / yok sütunu
foto yükle düðmesinde sadece ID ve foto olan dataset açýp edit / post

düzenle düðmesi image index
sil düðmesi image index
end.

