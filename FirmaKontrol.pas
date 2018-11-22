unit FirmaKontrol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  kadir,  KadirType,GetFormClass,GirisUnit,
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
  cxImageComboBox;

type
  TfrmFirmaKontrol = class(TGirisForm)
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
    miGozetimYazdir: TMenuItem;
    tmr1: TTimer;
    FirmaSoruGrid: TcxGridKadir;
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
    FirmaSoruSatir: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    FirmaSoruSatirkontrolID: TcxGridDBBandedColumn;
    FirmaSoruSatirid: TcxGridDBBandedColumn;
    FirmaSoruSatirSoruId: TcxGridDBBandedColumn;
    FirmaSoruSatirSoru: TcxGridDBBandedColumn;
    FirmaSoruSatirpuan: TcxGridDBBandedColumn;
    FirmaSoruSatirTermin: TcxGridDBBandedColumn;
    FirmaSoruSatirSorumlu: TcxGridDBBandedColumn;
    FirmaSoruSatirOneri: TcxGridDBBandedColumn;
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure SirketlerPropertiesChange(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure ButtonClick(Sender: TObject);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
     AButtonIndex: Integer);override;
  private
    { Private declarations }

  protected
    procedure GozlemYazdir (const GozlemID : integer);
    procedure AdjustMasterControls;
    procedure RefreshSahaGozetimler (const bUseBookmark: Boolean);
    function CihazKontrolFormFotografYukle (const iSahaGozetimID : Integer): Boolean;
    function CihazKontrolFormFotografSil (const iSahaGozetimID : Integer): Boolean;
    procedure CihazKontrolFormFotografGoruntule (const iSahaGozetimID : Integer);
    procedure CihazKontrolSoruEkle(cihazKod , KontrolID : string);
    procedure CihazKontrolSoruSil(kontrolId : string);
    procedure CihazKontrolSoruEdit(cihazKod , KontrolID: string);
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmFirmaKontrol: TfrmFirmaKontrol;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}

procedure TfrmFirmaKontrol.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    inherited;
    if TcxButtonEditKadir(FindComponent('id')).Text = '' then exit;

     FirmaSoruGrid.Dataset.Connection := datalar.ADOConnection2;
     FirmaSoruGrid.Dataset.Active := false;
     FirmaSoruGrid.Dataset.SQL.Text :=  'select * from  Kontrol_IslemDetay where kontrolID = ' +
                        vartostr(TcxButtonEditKadir(FindComponent('id')).EditingValue);
     FirmaSoruGrid.Dataset.Active := True;


    if (vartostr(TcxTextEditKadir(FindComponent('IGU')).EditValue) <>
       datalar.IGU)
       //and TcxImageComboKadir(FindComponent('Onay')).EditValue = 1
    then begin
       FirmaSoruSatir.OptionsData.Editing := False;
       FirmaSoruSatir.OptionsData.Inserting := False;
       FirmaSoruSatir.OptionsData.Deleting := False;

       TcxImageComboKadir(FindComponent('SirketKod')).Enabled := False;
       TcxTextEditKadir(FindComponent('IGU')).Enabled := False;
       TcxImageComboKadir(FindComponent('KontrolTuru')).Enabled := False;
       TcxImageComboKadir(FindComponent('KontrolTip')).Enabled := False;
       TcxImageComboKadir(FindComponent('doktor')).Enabled := False;
       TcxDateEditKadir(FindComponent('Tarih')).Enabled := False;

      // TcxImageComboKadir(FindComponent('Onay')).Enabled := False;

    end
    else
    begin
       FirmaSoruSatir.OptionsData.Editing := True;
       FirmaSoruSatir.OptionsData.Inserting := True;
       FirmaSoruSatir.OptionsData.Deleting := True;

       TcxImageComboKadir(FindComponent('SirketKod')).Enabled := True;
       TcxTextEditKadir(FindComponent('IGU')).Enabled := True;
       TcxImageComboKadir(FindComponent('KontrolTuru')).Enabled := True;
       TcxImageComboKadir(FindComponent('KontrolTip')).Enabled := True;
       TcxImageComboKadir(FindComponent('doktor')).Enabled := True;
       TcxDateEditKadir(FindComponent('Tarih')).Enabled := True;
    //   TcxImageComboKadir(FindComponent('Onay')).Enabled := True;
    end;

end;


procedure TfrmFirmaKontrol.CihazKontrolSoruSil(kontrolId : string);
var
  sql : string;
begin
   sql := 'delete from Kontrol_IslemDetay where kontrolID = ' +  kontrolId;
   datalar.QueryExec(sql);
end;


procedure TfrmFirmaKontrol.CihazKontrolSoruEkle(cihazKod , KontrolID: string);
var
  sql : string;
begin
   sql := 'if not exists(select * from  Kontrol_IslemDetay where kontrolID = ' + KontrolID + ')' +
          ' begin  ' +
           ' insert into Kontrol_IslemDetay (kontrolID,SoruId,Soru) ' +
           ' select ' + KontrolID  + ',KK.id,KK.Soru from Kontrol_Konulari KK ' +
           ' where KK.kontrolislemID = ' + cihazKod + ' order by sira ' +
          ' end ' ;
   datalar.QueryExec(sql);
end;

procedure TfrmFirmaKontrol.CihazKontrolSoruEdit(cihazKod , KontrolID: string);
var
  sql : string;
begin
   sql :=  ' insert into Kontrol_IslemDetay (kontrolID,SoruId,Soru) ' +
           ' select ' + KontrolID  + ',KK.id,KK.Soru from Kontrol_Konulari KK ' +
           ' left join Kontrol_IslemDetay KID on KID.SoruId = KK.id ' +
           ' where KK.kontrolislemID = ' + cihazKod + ' and KK.id is null order by sira ';

   datalar.QueryExec(sql);
end;

function TfrmFirmaKontrol.Init(Sender : TObject) : Boolean;
begin

  Result := True;
end;

procedure TfrmFirmaKontrol.RefreshSahaGozetimler(
  const bUseBookmark: Boolean);

begin

end;

procedure TfrmFirmaKontrol.CihazKontrolFormFotografGoruntule(
  const iSahaGozetimID: Integer);

begin

end;

function TfrmFirmaKontrol.CihazKontrolFormFotografSil(
  const iSahaGozetimID: Integer): Boolean;

begin

end;

function TfrmFirmaKontrol.CihazKontrolFormFotografYukle(
  const iSahaGozetimID: Integer): Boolean;
begin
end;

procedure TfrmFirmaKontrol.AdjustMasterControls;
begin

end;

procedure TfrmFirmaKontrol.ButtonClick(Sender: TObject);
var
  F : TGirisForm;
  GirisRecord : TGirisFormRecord;
begin
  if IsNull (TcxButtonEditKadir(FindComponent('SirketKod')).EditValue) then
  begin
    ShowMessageSkin('Bir þirket kartý açmadan bu iþleme devam edemezsiniz', '', '', 'info');
    Exit;
  end;
  GirisRecord.F_firmaKod_ := TcxButtonEditKadir(FindComponent('SirketKod')).EditValue;
  GirisRecord.F_HastaAdSoyad_ := TcxButtonEditKadir(FindComponent('SirketKod')).Text;
  F := nil;


end;

procedure TfrmFirmaKontrol.cxButtonCClick(Sender: TObject);
var
   TopluDataset : TDataSetKadir;
begin
  inherited;

  case Tcontrol(sender).Tag of
  -9 : begin

       end;
  -11 : begin

       end;
  -18 : begin

        end;
  -21:begin

  end;
  -22:begin

  end;
  -23:begin

  end;
  -27 : begin
          TopluDataset.Dataset0 :=
           datalar.QuerySelect('select * from FirmaKontrol_view where kontrolID = ' + QuotedStr(TcxButtonEditKadir(FindComponent('id')).Text));
         // TopluDataset.Dataset1 := SahaGozetimGrid.Dataset;

          PrintYap('012','Kontrol Form','',TopluDataset);



        end;
  end;
end;


procedure TfrmFirmaKontrol.SirketlerPropertiesChange(Sender: TObject);
var
 sql : string;
 dataset : Tdataset;
begin
  cxPanelButtonEnabled(false,True,false);

  if TcxImageComboKadir(Sender).Name = 'KontrolTuru'
  Then begin
     if TcxImageComboKadir(FindComponent('KontrolTuru')).EditingValue = null then  exit;

     if not datalar.QuerySelect('select * from  Kontrol_IslemDetay where kontrolID = ' + vartostr(TcxButtonEditKadir(FindComponent('id')).EditingValue) +
                           ' and (puan is not null or isnull(Oneri,'''') <> '''')').Eof
     Then begin
       TcxImageComboKadir(Sender).EditValue := sqlRun.FieldByName('KontrolTuru').AsVariant;
       CihazKontrolSoruEdit(vartostr(TcxImageComboKadir(FindComponent('KontrolTuru')).EditingValue),
                            vartostr(TcxButtonEditKadir(FindComponent('id')).EditingValue));
     end
     else
     begin
       CihazKontrolSoruSil(vartostr(TcxButtonEditKadir(FindComponent('id')).EditingValue));
       CihazKontrolSoruEkle(vartostr(TcxImageComboKadir(FindComponent('KontrolTuru')).EditingValue),
                            vartostr(TcxButtonEditKadir(FindComponent('id')).EditingValue));
     end;



     FirmaSoruGrid.Dataset.Connection := datalar.ADOConnection2;
     FirmaSoruGrid.Dataset.Active := false;
     FirmaSoruGrid.Dataset.SQL.Text :=  'select * from  Kontrol_IslemDetay where kontrolID = ' +
                        vartostr(TcxButtonEditKadir(FindComponent('id')).EditingValue);
     FirmaSoruGrid.Dataset.Active := True;
  end;

  if TcxImageComboKadir(Sender).Name = 'SirketKod'
  Then begin
     sql :=
      ' select I.kod IGUKod,I.tanimi IGUAdi,D.kod DoktorKod,D.tanimi DoktorAdi from SIRKETLER_TNM S ' +
      ' join SIRKET_SUBE_TNM SB on SB.sirketKod = S.sirketKod ' +
      ' left join IGU I on I.kod = SB.IGU ' +
      ' left join DoktorlarT D on D.kod = SB.subeDoktor ' +
      ' where S.sirketKod = ' +
       QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditingValue)) +
      ' and SB.subeKod = ' + QuotedStr('00');
      // QuotedStr(vartostr(TcxImageComboKadir(FindComponent('subeKod')).EditingValue));

       dataset := datalar.QuerySelect(sql);

      TcxImageComboKadir(FindComponent('doktor')).EditValue := dataset.FieldByName('DoktorKod').AsString;
      TcxImageComboKadir(FindComponent('IGU')).EditValue := dataset.FieldByName('IGUKod').AsString;

  end;

end;

procedure TfrmFirmaKontrol.FormCreate(Sender: TObject);
var
  FaturaTarihi : TcxDateEditKadir;
  Kontroler : TListeAc;
  sirketlerx,IGU,doktor : TcxImageComboKadir;
  where : string;
begin
  cxPanel.Visible := True;

  Menu := PopupMenu1;

  indexFieldName := 'id';
  TableName := 'Kontrol_Islem';

  if datalar.UserGroup = '1'
  then
    where := ''
  else
  if datalar.UserGroup = '10'
  then
    where := ' sirketKod = ' + QuotedStr(datalar.sirketKodu)
  else
    where := ' IGU = ' + QuotedStr(datalar.IGU);



  Kontroler := ListeAcCreate('(select distinct kontrolID,sirket,Tarih,sirketKod,IGU from FirmaKontrol_view) T ','kontrolID,sirket,Tarih',
                       'ID,ÞirketAdý,Ýþlem Tarihi',
                       '40,250,80','FirmaKontrolList','Firma Kontrolleri',where,3,True);


  setDataStringB(self,'id','Firma Kontrol ID',Kolon1,'xxid',50,Kontroler,True,nil,'','',True,True,-100);
  TcxButtonEditKadir(FindComponent('id')).Identity := True;

  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,FaturaTarihi,'Tarih','Ýþlem Tarihi',Kolon1,'xxid',80);


  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Name := 'KontrolTip';
  sirketlerx.Conn := nil;
  sirketlerx.ItemList := '1;Ýlk Kontrol,2;Periyodik Kontrol';
  sirketlerx.Filter := '';
  setDataStringKontrol(self,sirketlerx,'KontrolTip','Kontrol Tipi',kolon1,'xxid',100);
  OrtakEventAta(sirketlerx);


  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'SIRKETLER_TNM_view';
  sirketlerx.ValueField := 'SirketKod';
  sirketlerx.DisplayField := 'Tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Filter := datalar.sirketlerUserFilter;
  setDataStringKontrol(self,sirketlerx,'SirketKod','Þirket',Kolon1,'xxid',250,0,alNone,'');

  TcxImageComboKadir(FindComponent('SirketKod')).Properties.OnEditValueChanged := SirketlerPropertiesChange;




  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'Kontrolislemleri';
  sirketlerx.ValueField := 'Kod';
  sirketlerx.DisplayField := 'tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Properties.DropDownRows := 20;
  sirketlerx.Filter := '';
  setDataStringKontrol(self,sirketlerx,'KontrolTuru','Kontrol Türü',Kolon1,'xxid',200,0,alNone,'');
  TcxImageComboKadir(FindComponent('KontrolTuru')).Properties.OnEditValueChanged := SirketlerPropertiesChange;

 // addButton(self,nil,'btnEkipmanEkle','','Ekipman Ekle',Kolon3,'cihaz',100,ButtonClick);


  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.Name := 'Puan';
  sirketlerx.Tag := -100;
  sirketlerx.TableName := 'Kontrol_Islem_Puan';
  sirketlerx.ValueField := 'Kod';
  sirketlerx.DisplayField := 'tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Filter := '';


  IGU := TcxImageComboKadir.Create(self);
  IGU.Conn := Datalar.ADOConnection2;
  IGU.TableName := 'IGU';
  IGU.ValueField := 'kod';
  IGU.DisplayField := 'Tanimi';
  IGU.BosOlamaz := False;
  IGU.Enabled := False;
  IGU.Filter := ' durum = ''Aktif''';
  setDataStringKontrol(self,IGU,'IGU','Ýþ Güvenlik Uzm',Kolon1,'xxid',120,0,alNone,'');


//  setDataString(self,'hazirlayan','Ýþ Güvenlik Uzm',Kolon1,'hz',120,false,'',True);

  doktor := TcxImageComboKadir.Create(self);
  doktor.Conn := Datalar.ADOConnection2;
  doktor.TableName := 'DoktorlarT';
  doktor.ValueField := 'kod';
  doktor.DisplayField := 'Tanimi';
  doktor.BosOlamaz := False;
  doktor.Filter := ' durum = ''Aktif''';
  doktor.Enabled := False;
  setDataStringKontrol(self,doktor,'doktor','Ýþyeri Hekimi',Kolon1,'xxid',120,0,alNone,'');




  TcxImageComboBoxProperties(FirmaSoruSatirpuan.Properties).Items :=
  TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('Puan')).Properties).Items;


  setDataStringKontrol(self,FirmaSoruGrid,'FirmaSoruGrid','',Kolon1,'',900,1,alClient,'');

  kolon2.Visible := false;
  kolon3.Visible := false;
  kolon4.Visible := false;

  SayfaCaption('Firma Kontrol','','','','');
end;


procedure TfrmFirmaKontrol.cxKaydetClick(Sender: TObject);
begin

  if DetaySil(TControl(sender).Tag,'Kontrol_IslemDetay','kontrolID',
             vartostr(TcxButtonEditKadir(FindComponent('id')).EditingValue)) = False Then Exit;

  inherited;

  case TControl(sender).Tag  of
  Kaydet : begin
            TcxImageComboKadir(FindComponent('KontrolTuru')).Enabled := True;
           end;
  Yeni : begin
           TcxImageComboKadir(FindComponent('KontrolTuru')).Enabled := False;
           if datalar.IGU <> ''
           then begin
           //  TcxImageComboKadir(FindComponent('IGU')).EditValue := datalar.IGU;
           //  TcxImageComboKadir(FindComponent('IGU')).Enabled := False;
           end
           else
           //  TcxImageComboKadir(FindComponent('IGU')).Enabled := True;
         end;
  end;
end;


procedure TfrmFirmaKontrol.GozlemYazdir(const GozlemID: integer);
begin

end;

procedure TfrmFirmaKontrol.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

