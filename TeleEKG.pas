unit TeleEKG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinMcSkin, DB, dxmdaset, cxGroupBox,
  cxRadioGroup, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  StdCtrls, Buttons, sBitBtn, ExtCtrls,adodb,kadir,data_modul, cxStyles,GirisUnit,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,KadirType,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,cxGridExportLink,
  cxGridTableView, cxGridDBTableView, cxGrid, cxMemo, dxSkinMoneyTwins, Menus,
  cxButtons, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinsDefaultPainters,
  KadirLabel, dxSkinscxPCPainter;

type
  TfrmTeleEKG = class(TGirisForm)
    tarih1: TcxDateEdit;
    tarih2: TcxDateEdit;
    DiyalizTip: TcxRadioGroup;
    memData: TdxMemData;
    memDatadosyaNo: TStringField;
    memDatagelisNo: TIntegerField;
    memData530100: TStringField;
    memData801840: TStringField;
    DataSource1: TDataSource;
    cxGrid2: TcxGridKadir;
    Liste: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    memDataHasta: TStringField;
    ListedosyaNo: TcxGridDBColumn;
    ListegelisNo: TcxGridDBColumn;
    ListeHasta: TcxGridDBColumn;
    ListeDBColumn530100: TcxGridDBColumn;
    ListeColumn1: TcxGridDBColumn;
    memDataTarih: TStringField;
    ListeColumn2: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    T1: TMenuItem;
    memDataTarihD: TDateTimeField;
    ADO_SQL: TADOQuery;
    PopupMenu2: TPopupMenu;
    Y1: TMenuItem;
    E1: TMenuItem;
    btnListele: TcxButtonKadir;
    D1: TMenuItem;
    K1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure ADO_SQLBeforePost(DataSet: TDataSet);
    procedure ListeDblClick(Sender: TObject);
    procedure btnListeleClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure Yazdir;
    procedure Duzenle;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   function Init(Sender: TObject) : Boolean; override;
  end;


const _TableName_ = 'HastaKart';
      formGenislik = 780;
      formYukseklik = 480;

var
  frmTeleEKG: TfrmTeleEKG;
  KayitDegis : boolean;
  dosyaNo,gelisNo,code,sonuc : string;
implementation

uses rapor;

{$R *.dfm}

function TfrmTeleEKG.Init(Sender: TObject) : Boolean;
begin
 inherited;
  cxPanel.Visible := false;
  SayfaCaption('Ekg','','','','');
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
  TableName := _TableName_;
  Olustur(self,_TableName_,'Tele Ekg Listesi',26);
  Menu := PopupMenu2;
  Kolon2.Visible := False;
  Kolon3.Visible := false;
  Result := True;
end;


procedure TfrmTeleEKG.Duzenle;
var
  ado : TADOQuery;
  sql : string;
begin
    datalar.TeleEkg.Tarih := ADO_SQL.FieldByName('TARIH').AsDateTime;
    datalar.TeleEkg.ack := ADO_SQL.FieldByName('sonuc').AsString;
    datalar.TeleEkg.code := ADO_SQL.FieldByName('code').AsString;
    _dosyaNO_ := ADO_SQL.FieldByName('dosyaNo').AsString;
    _gelisNo_ := ADO_SQL.FieldByName('gelisNo').AsString;

    if mrYes = ShowPopupForm('Düzenle',TeleEkgDuzenle)
    Then Begin
          ado := TADOQuery.Create(nil);
          sql := 'update hareketler set islemAciklamasi = ' + QuotedStr(datalar.TeleEkg.ack) +
                ',TARIH = ' + tarihal(datalar.TeleEkg.Tarih) +
                ' where dosyaNo = ' + QuotedStr(_dosyaNo_) + ' and gelisNo = ' + _gelisNo_ +
                ' and code = ' + QuotedStr(datalar.TeleEkg.code);
          datalar.QueryExec(ado,sql);

          ADO_SQL.Refresh;
          ado.Free;
    End;
end;

procedure TfrmTeleEKG.Yazdir;
var
  sql , tarih1_ , tarih2_ : string;
  ado : TADOQuery;
begin
   KayitDegis := False;
   memData.Active := false;
   memData.Active := True;

   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;

   tarih1_ := tarihal(tarih1.date);
   tarih2_ := tarihal(tarih2.date);

   sql := 'sp_TeleEKGPIVOT @tarih1 = ' + QuotedStr(tarih1_) + ',@tarih2 = ' + QuotedStr(tarih2_) +
                           ',@tip = ' + inttostr(DiyalizTip.ItemIndex) +
                           ',@Hasta = ' + QuotedStr('');
   datalar.QuerySelect(ado,sql);
   memData.LoadFromDataSet(ado);


   frmRapor.topluset.Dataset1 := memData;
   frmRapor.raporData1(frmRapor.topluset ,'EKG01','\Ekg Sonuç Takip Formu');
   frmRapor.ShowModal;
   ado.Free;

end;
procedure TfrmTeleEKG.cxKaydetClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmTeleEKG.cxButtonCClick(Sender: TObject);
begin
inherited;
  case Tcontrol(sender).Tag of
  -1 : begin
         yazdir;
       end;


  end;


end;

procedure TfrmTeleEKG.ADO_SQLBeforePost(DataSet: TDataSet);
begin
  inherited;
//  ado_sql.FieldByName('TARIH').AsString := tarihal(ado_sql.FieldByName('TARIHD').AsDateTime);
end;

procedure TfrmTeleEKG.btnListeleClick(Sender: TObject);
var
  sql , tarih1_ , tarih2_ : string;
  ado : TADOQuery;
begin

   tarih1_ := tarihal(tarih1.date);
   tarih2_ := tarihal(tarih2.date);

   sql := 'select code,hk.HASTAADI+'' ''+hk.HASTASOYADI Hasta,hk.dosyaNo,gelisno, NAME1,cast(TARIH as datetime) TARIH,islemAciklamasi sonuc from hareketler h' +
          ' join hastakart hk on hk.dosyaNo = h.dosyaNo ' +
          ' where code in (''530100'',''801840'') and TARIH between ' + QuotedStr(tarih1_) +
          ' and ' + QuotedStr(tarih2_) + ' and hk.HASTAADI like ' + QuotedStr(''+'%') +
          ' order by hk.HASTAADI,hk.HASTASOYADI,dosyano,gelisNo';

   datalar.QuerySelect(ado_sql,sql);
end;

procedure TfrmTeleEKG.FormCreate(Sender: TObject);
begin
//  tag := TagfrmTeleEkg;

  setDataStringKontrol(self,tarih1, 'Tarih1','Tarih Aralýðý',Kolon1,'trh',110);
  setDataStringKontrol(self,tarih2, 'Tarih2','',Kolon1,'trh',110);
  setDataStringKontrol(self,DiyalizTip, 'DiyalizTip','',Kolon1,'',290);
  addButton(self,btnListele,'btnListele', '','Liste',Kolon1,'trh',60);
  setDataStringKontrol(self,cxGrid2, 'cxGrid2','',Kolon1,'',750,0,alLeft);

end;

procedure TfrmTeleEKG.FormShow(Sender: TObject);
begin
   inherited;
   tarih1.Date := date;
   tarih2.Date := tarih1.Date;
end;

procedure TfrmTeleEKG.ListeDblClick(Sender: TObject);
begin
  inherited;
  Duzenle;
end;

end.
