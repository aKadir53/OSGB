unit TedaviKart;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,KadirLabel,GirisUnit,KadirType,Kadir,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, dxSkinscxPCPainter,Adodb,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxPC, cxGroupBox, cxCalendar, cxImageComboBox, dxSkinBlack,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmTedaviBilgisi = class(TGirisForm)
    pnlHastaGelis: TcxGroupBox;
    LeftPanelcxPageControl: TcxPageControl;
    cxTabHastaListe: TcxTabSheet;
    cxTabHastaGelis: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxSalonBilgisi: TcxComboBox;
    cxGrid2: TcxGrid;
    cxGridHastaListesi: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridHastaGelis: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Tarih: TcxGridDBColumn;
    GelisNo: TcxGridDBColumn;
    TakIpNo: TcxGridDBColumn;
    dosyaNoColum: TcxGridDBColumn;
    HastaAdi: TcxGridDBColumn;
    HastaSoyadi: TcxGridDBColumn;
    cxGridHastaListesiColumn4: TcxGridDBColumn;
    AdoHastaGelis: TADOQuery;
    AdoHastaGelisDataSource: TDataSource;
    TC: TcxGridDBColumn;
    ProvizyonTarihi: TcxGridDBColumn;
    cxGridHastaGelisColumn1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxSalonBilgisiPropertiesChange(Sender: TObject);
    procedure cxGridHastaGelisFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGridHastaListesiDblClick(Sender: TObject);
    procedure cxGridHastaListesiFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
  public
      function Init(Sender: TObject) : Boolean; override;
    { Public declarations }
  end;

const _TableName_ = '';
      formGenislik = 500;
      formYukseklik = 500;

var
  frmTedaviBilgisi: TfrmTedaviBilgisi;
//  AdoHastaGelis : TADOQuery;
 // AdoHastaGelisDataSource : TDataSource;

  sql : String;
implementation
      uses Data_Modul,AnaUnit,HastaListe,HastaRecete,HastaTetkikEkle,Anamnez;

{$R *.dfm}

function TfrmTedaviBilgisi.Init(Sender : TObject) : Boolean;
begin
  Result := False;
  inherited;
  Result := True;
end;

procedure TfrmTedaviBilgisi.cxGridHastaGelisFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  dosyaNo,gelisNo,Tarih : string;
  _tag_ : integer;
begin
  inherited;
 // if ANewItemRecordFocusingChanged  then
 // begin

      dosyaNo := AdoHastaGelis.FieldByName('dosyaNo').AsString;
      datalar.hastaBil.gelisNo := AdoHastaGelis.FieldByName('gelisNo').AsString;
      datalar.HastaBil.Tarih := tarihal(AdoHastaGelis.FieldByName('Tarih').AsDateTime);
      self._gelisNO_ := AdoHastaGelis.FieldByName('gelisNo').AsString;
      self._provizyonTarihi_ := AdoHastaGelis.FieldByName('Tarih').AsString;
      self._MuayeneProtokolNo_ := AdoHastaGelis.FieldByName('PROTOKOLNO').AsString;

      case AdoHastaGelis.FieldByName('TEDAVITURU').AsInteger of
       3 : _tag_ := TagfrmAnamnez;
   1,2,5 : _tag_ := TagfrmIseGiris;
      end;

      case TfrmTedaviBilgisi(self).Tag of
        TagfrmHastaRecete :     begin
                                  if Assigned(frmHastaRecete) then
                                  begin
                                   frmHastaRecete._dosyaNO_ := self._dosyaNO_;
                                   frmHastaRecete._gelisNO_ := self._gelisNO_;
                                   frmHastaRecete._MuayeneProtokolNo_ := self._MuayeneProtokolNo_;
                                   frmHastaRecete.ReceteGetir(self._dosyaNO_,self._gelisNO_);
                                   frmHastaRecete._provizyonTarihi_ := self._provizyonTarihi_;
                                  end;
                                end;

        TagfrmHastaTetkikEkle : begin
                                   frmHastaTetkikEkle._dosyaNO_ := self._dosyaNO_;
                                   frmHastaTetkikEkle._gelisNO_ := self._gelisNO_;

                                   frmHastaTetkikEkle.Sonuclar;
                                end;

 TagfrmAnamnez,TagfrmIseGiris : begin

                                  case _tag_ of
                                     TagfrmAnamnez : begin
                                                        frmAnamnez._dosyaNO_ := self._dosyaNO_;
                                                        frmAnamnez._gelisNO_ := self._gelisNO_;
                                                        frmAnamnez.Tag := TagfrmAnamnez;
                                                        frmAnamnez.IseGirisMuayene.Visible := False;
                                                        Kolon2.Visible := False;
                                                        Kolon3.Visible := False;
                                                        Kolon4.Visible := False;

                                                        ClientWidth := 850;
                                                        ClientHeight := 560;
                                                        cxPanel.Visible := True;
                                                        cxYeni.Visible := False;
                                                        cxIptal.Visible := False;
                                                        indexFieldName := 'dosyaNo = ' + _dosyaNO_ + ' and  gelisNo = ' + _gelisNo_ ;
                                                        yukle;
                                                        sqlRunLoad;
                                                     end;
                                     TagfrmIseGiris : begin
                                                        frmAnamnez._dosyaNO_ := self._dosyaNO_;
                                                        frmAnamnez._gelisNO_ := self._gelisNO_;
                                                        frmAnamnez.Tag := TagfrmIseGiris;
                                                        frmAnamnez.IseGirisMuayene.Dataset.Connection := datalar.ADOConnection2;
                                                        frmAnamnez.IseGirisMuayene.Dataset.SQL.Text := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(_dosyaNO_)+ ',' +
                                                                                                                           _gelisNO_ + ',' + QuotedStr('0');
                                                        frmAnamnez.IseGirisMuayene.Dataset.Open;
                                                        frmAnamnez.IseGirisMuayene.Dataset.AfterScroll := frmAnamnez.ADO_WebServisErisimAfterScroll;
                                                        frmAnamnez.GridList.ViewData.Expand(true);
                                                        frmAnamnez.IseGirisMuayene.Visible := True;
                                                        frmAnamnez.IseGirisMuayene.Align := alClient;
                                                        frmAnamnez.IseGirisMuayene.BringToFront;
                                                        cxPanel.Visible := False;
                                                        cxYeni.Visible := False;
                                                        cxIptal.Visible := False;
                                                      end;

                                  end;


                                end;


      end;

 // end;
end;

procedure TfrmTedaviBilgisi.cxGridHastaListesiDblClick(Sender: TObject);
var
  dosyaNo : string;
  index : integer;
begin
  inherited;
  dosyaNo := cxGridHastaListesi.DataController.GetValue(
  cxGridHastaListesi.Controller.SelectedRows[0].RecordIndex,dosyaNoColum.index);
  self._HastaAdSoyad_ :=
  cxGridHastaListesi.DataController.GetValue(
  cxGridHastaListesi.Controller.SelectedRows[0].RecordIndex,HastaAdi.Index) + ' ' +
  cxGridHastaListesi.DataController.GetValue(
  cxGridHastaListesi.Controller.SelectedRows[0].RecordIndex,HastaSoyadi.Index);

  self._TC_ := cxGridHastaListesi.DataController.GetValue(
  cxGridHastaListesi.Controller.SelectedRows[0].RecordIndex,TC.Index);

  self._dosyaNO_ := cxGridHastaListesi.DataController.GetValue(
  cxGridHastaListesi.Controller.SelectedRows[0].RecordIndex,dosyaNoColum.index);

  cxTab.Tabs[0].Caption := self._HastaAdSoyad_;
  LeftPanelcxPageControl.ActivePageIndex := 1;
  HastaGelisSelect(dosyaNo,AdoHastaGelis);
end;

procedure TfrmTedaviBilgisi.cxGridHastaListesiFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;

  HastaBilgiRecordSet(cxGridHastaListesi.DataController.GetValue(AFocusedRecord.Index,HastaAdi.Index),
                      cxGridHastaListesi.DataController.GetValue(AFocusedRecord.Index,HastaSoyadi.Index),
                      cxGridHastaListesi.DataController.GetValue(AFocusedRecord.Index,TC.Index),'');
end;

procedure TfrmTedaviBilgisi.cxSalonBilgisiPropertiesChange(Sender: TObject);
var
 s ,key : string;
begin
  inherited;
   key := cxSalonBilgisi.Text;
   filterGrid(cxGridHastaListesi,key,s,8,True);
end;

procedure TfrmTedaviBilgisi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 // AdoHastaGelis.Close;
end;

procedure TfrmTedaviBilgisi.FormCreate(Sender: TObject);
var
  index,i : integer;
begin
  inherited;
  Tag := TagfrmTedaviBilgisi;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  indexFieldName := 'kod';
  TableName := _TableName_;
  cxPanel.Visible := false;
  SayfaCaption('','','','','');
 // Olustur(self,_TableName_,'Tedavi Kartý',23);
  LeftPanelcxPageControl.ActivePageIndex := 1;
  for i := 0 to Screen.FormCount - 1 do
    if Screen.Forms[i] = frmHastaListe
    Then begin
     frmHastaListe._Dataset.Locate('dosyaNo',datalar.Bilgi.dosyaNo,[]);
     cxGridHastaListesi.DataController.DataSource := frmHastaListe._DataSource;
    end;


end;

procedure TfrmTedaviBilgisi.FormShow(Sender: TObject);
begin
   inherited;
   HastaGelisSelect(_dosyaNo_,AdoHastaGelis);
   cxTab.Tabs[0].Caption := self._HastaAdSoyad_;// datalar.HastaBil.Adi + ' ' + datalar.HastaBil.SoyAdi;
end;

end.
