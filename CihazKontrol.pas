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
  cxGridBandedTableView, cxGridDBBandedTableView, KadirLabel, cxImage,
  cxImageComboBox;

type
  TfrmCihazKontrol = class(TGirisForm)
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
    CihazGrid: TcxGridKadir;
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
    CihazSatirlar: TcxGridDBBandedTableView;
    CihazGridLevel1: TcxGridLevel;
    CihazSatirlartanimi: TcxGridDBBandedColumn;
    CihazSatirlarsirketKod: TcxGridDBBandedColumn;
    CihazSatirlarsubeKod: TcxGridDBBandedColumn;
    CihazSatirlarKontrolCihaz: TcxGridDBBandedColumn;
    CihazSatirlarOzellik: TcxGridDBBandedColumn;
    CihazSatirlarOzellikDeger: TcxGridDBBandedColumn;
    CihazSoruGrid: TcxGridKadir;
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
    CihazSoruSatir: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    CihazSoruSatirid: TcxGridDBBandedColumn;
    CihazSoruSatirkontrolid: TcxGridDBBandedColumn;
    CihazSoruSatirKontrolSoru: TcxGridDBBandedColumn;
    CihazSoruSatirKontrolSoruCvp: TcxGridDBBandedColumn;
    CihazSoruSatirKontrolSoruCvpAciklama: TcxGridDBBandedColumn;
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure SirketlerPropertiesChange(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure ButtonClick(Sender: TObject);

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
  frmCihazKontrol: TfrmCihazKontrol;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}


procedure TfrmCihazKontrol.CihazKontrolSoruSil(kontrolId : string);
var
  sql : string;
begin
   sql := 'delete from CihazKontrolDetay where kontrolid = ' +  kontrolId;
   datalar.QueryExec(sql);
end;


procedure TfrmCihazKontrol.CihazKontrolSoruEkle(cihazKod , KontrolID: string);
var
  sql : string;
begin
   sql := 'if not exists(select * from  CihazKontrolDetay where kontrolid = ' + cihazKod + ')' +
          ' begin  ' +
           ' insert into CihazKontrolDetay (kontrolid,Soruid,KontrolSoru) ' +
           ' select ' + KontrolID  + ',CS.id,CS.Soru from Cihaz C ' +
           ' join CihazKontrolSorulari CS on CS.cihazTurKod = C.cihazTurKod ' +
           ' where C.kod = ' + cihazKod + ' order by sira ' +
          ' end ' ;
   datalar.QueryExec(sql);
end;

procedure TfrmCihazKontrol.CihazKontrolSoruEdit(cihazKod , KontrolID: string);
var
  sql : string;
begin
   sql :=  ' insert into CihazKontrolDetay (kontrolid,Soruid,KontrolSoru) ' +
           ' select ' + KontrolID  + ',CS.id,CS.Soru from Cihaz C ' +
           ' join CihazKontrolSorulari CS on CS.cihazTurKod = C.cihazTurKod ' +
           ' left join CihazKontrolDetay CD on CD.soruid = CS.id ' +
           ' where C.kod = ' + cihazKod + ' and CD.id is null order by sira ';

   datalar.QueryExec(sql);
end;

function TfrmCihazKontrol.Init(Sender : TObject) : Boolean;
begin

  Result := True;
end;

procedure TfrmCihazKontrol.RefreshSahaGozetimler(
  const bUseBookmark: Boolean);

begin

end;

procedure TfrmCihazKontrol.CihazKontrolFormFotografGoruntule(
  const iSahaGozetimID: Integer);

begin

end;

function TfrmCihazKontrol.CihazKontrolFormFotografSil(
  const iSahaGozetimID: Integer): Boolean;

begin

end;

function TfrmCihazKontrol.CihazKontrolFormFotografYukle(
  const iSahaGozetimID: Integer): Boolean;
begin
end;

procedure TfrmCihazKontrol.AdjustMasterControls;
begin

end;

procedure TfrmCihazKontrol.ButtonClick(Sender: TObject);
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
  if TcxButtonKadir(sender).ButtonName = 'btnEkipmanEkle' then
    F := FormINIT(TagfrmSirketEkipmanList,GirisRecord,ikHayir,'');

  if F <> nil then F.ShowModal;
  TcxImageComboKadir(FindComponent('KontrolCihaz')).Filter := '';

end;

procedure TfrmCihazKontrol.cxButtonCClick(Sender: TObject);
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

        end;
  end;
end;


procedure TfrmCihazKontrol.SirketlerPropertiesChange(Sender: TObject);
begin
  cxPanelButtonEnabled(false,True,false);
  if TcxImageComboKadir(Sender).Name = 'SirketKod'
  Then
   TcxImageComboKadir(FindComponent('KontrolCihaz')).Filter := ' sirketKod is null or sirketKod = ' + vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditingValue);


  if TcxImageComboKadir(Sender).Name = 'KontrolCihaz'
  Then begin
     if TcxImageComboKadir(FindComponent('KontrolCihaz')).EditingValue = null then  exit;

     if not datalar.QuerySelect('select * from  CihazKontrolDetay where kontrolid = ' + vartostr(TcxButtonEditKadir(FindComponent('id')).EditingValue) +
                           ' and (KontrolSoruCvp is not null or isnull(KontrolSoruCvpAciklama,'''') <> '''')').Eof
     Then begin
       TcxImageComboKadir(Sender).EditValue := sqlRun.FieldByName('KontrolCihaz').AsVariant;
       CihazKontrolSoruEdit(vartostr(TcxImageComboKadir(FindComponent('KontrolCihaz')).EditingValue),
                            vartostr(TcxButtonEditKadir(FindComponent('id')).EditingValue));
     end
     else
     begin
       CihazKontrolSoruSil(vartostr(TcxButtonEditKadir(FindComponent('id')).EditingValue));
       CihazKontrolSoruEkle(vartostr(TcxImageComboKadir(FindComponent('KontrolCihaz')).EditingValue),
                            vartostr(TcxButtonEditKadir(FindComponent('id')).EditingValue));
     end;

     CihazSatirlar.Bands[0].Caption := TcxImageComboKadir(FindComponent('KontrolCihaz')).Text;
     CihazGrid.Dataset.Connection := datalar.ADOConnection2;
     CihazGrid.Dataset.Active := false;
     CihazGrid.Dataset.SQL.Text :=  'select * from CihazDetay_view where CihazKod = ' +
                        vartostr(TcxImageComboKadir(FindComponent('KontrolCihaz')).EditingValue);
     CihazGrid.Dataset.Active := True;

     CihazSoruGrid.Dataset.Connection := datalar.ADOConnection2;
     CihazSoruGrid.Dataset.Active := false;
     CihazSoruGrid.Dataset.SQL.Text :=  'select * from  CihazKontrolDetay where kontrolid = ' +
                        vartostr(TcxButtonEditKadir(FindComponent('id')).EditingValue);
     CihazSoruGrid.Dataset.Active := True;
  end;

end;

procedure TfrmCihazKontrol.FormCreate(Sender: TObject);
var
  FaturaTarihi : TcxDateEditKadir;
  Kontroler : TListeAc;
  sirketlerx : TcxImageComboKadir;
  where : string;
begin
  cxPanel.Visible := True;

  Menu := PopupMenu1;

  indexFieldName := 'id';
  TableName := 'CihazKontrol';


    if datalar.UserGroup = '1'
    then
      where := ''
    else
    if datalar.UserGroup = '10'
    then
      where := ' sirketKod = ' + QuotedStr(datalar.sirketKodu)
    else
      where := ' IGU = ' + QuotedStr(datalar.IGU);

  Kontroler := ListeAcCreate('CihazKontrol_view','id,sirket,Tarih,CihazAciklamasi,CihazTuru',
                       'ID,ÞirketAdý,HazýrlamaTarihi,Cihaz Aciklamasi,Cihaz Turu',
                       '40,250,80,120,80','CihazKontrolList','Cihaz Kontrolleri',where,7,True,self);


  setDataStringB(self,'id','Cihaz Kontrol ID',Kolon1,'',50,Kontroler,True,nil,'','',True,True,-100);
  TcxButtonEditKadir(FindComponent('id')).Identity := True;

  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,FaturaTarihi,'Tarih','Hazýrlama Tarihi',Kolon1,'',80);


  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Name := 'KontrolTip';
  sirketlerx.Conn := nil;
  sirketlerx.ItemList := '1;Ýlk Kontrol,2;Periyodik Kontrol';
  sirketlerx.Filter := '';
  setDataStringKontrol(self,sirketlerx,'KontrolTip','Kontrol Tipi',kolon1,'',100);
  OrtakEventAta(sirketlerx);


  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'SIRKETLER_TNM_view';
  sirketlerx.ValueField := 'SirketKod';
  sirketlerx.DisplayField := 'Tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Filter := datalar.sirketlerUserFilter;
  setDataStringKontrol(self,sirketlerx,'SirketKod','Þirket',Kolon1,'',250,0,alNone,'');

  TcxImageComboKadir(FindComponent('SirketKod')).Properties.OnEditValueChanged := SirketlerPropertiesChange;


  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'IGU';
  sirketlerx.ValueField := 'kod';
  sirketlerx.DisplayField := 'Tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Enabled := False;
  sirketlerx.Filter := '';
  setDataStringKontrol(self,sirketlerx,'IGU','Ýþ Güvenlik Uzm',Kolon1,'',120,0,alNone,'');


  setDataString(self,'FaaliyetAlani','Faaliyet Alani' ,Kolon1,'',100);
  setDataString(self,'CihazServisVeren','Ekipmana Servis Veren',Kolon1,'',200);
  setDataString(self,'CihazServisTel','Ekipmana Servis Veren Tel',Kolon1,'',100);
  setDataString(self,'sorumluYonetici','Sorumlu Yönetici',Kolon1,'',200);
  setDataString(self,'sorumlu','Sorumlu',Kolon1,'',100);


  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'Cihaz';
  sirketlerx.ValueField := 'Kod';
  sirketlerx.DisplayField := 'tanimi';
  sirketlerx.BosOlamaz := False;
  setDataStringKontrol(self,sirketlerx,'KontrolCihaz','Kontrol Yapýlan Ekipman',Kolon1,'cihaz',200,0,alNone,'');
  TcxImageComboKadir(FindComponent('KontrolCihaz')).Properties.OnEditValueChanged := SirketlerPropertiesChange;
  addButton(self,nil,'btnEkipmanEkle','','Ekipman Ekle',Kolon3,'cihaz',100,ButtonClick);


  setDataStringKontrol(self,CihazGrid,'CihazGrid','',Kolon1,'',430,200,alNone,'');
  setDataStringKontrol(self,CihazSoruGrid,'CihazSoruGrid','',Kolon2,'',500,460,alNone,'');



  SayfaCaption('Ekipman Kontrol','','','','');
end;


procedure TfrmCihazKontrol.cxKaydetClick(Sender: TObject);
begin

  inherited;

  case TControl(sender).Tag  of
  Kaydet : begin
            TcxImageComboKadir(FindComponent('KontrolCihaz')).Enabled := True;
           end;
  Yeni : begin
           TcxImageComboKadir(FindComponent('KontrolCihaz')).Enabled := False;
           if datalar.IGU <> ''
           then begin
             TcxImageComboKadir(FindComponent('IGU')).EditValue := datalar.IGU;
             TcxImageComboKadir(FindComponent('IGU')).Enabled := False;
           end
           else
             TcxImageComboKadir(FindComponent('IGU')).Enabled := True;
         end;
  end;
end;


procedure TfrmCihazKontrol.GozlemYazdir(const GozlemID: integer);
begin

end;

procedure TfrmCihazKontrol.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

