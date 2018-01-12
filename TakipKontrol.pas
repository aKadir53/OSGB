unit TakipKontrol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  kadir, kadirMedula3,Data_Modul,KadirLabel,GetFormClass,KadirType,
  Dialogs, StdCtrls, Grids, BaseGrid, AdvGrid, ComCtrls, Mask, EditType, adodb,
  strutils, ExtCtrls, Buttons, sBitBtn, AdvToolBtn, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Menus, sGauge, sCheckBox,
  InvokeRegistry, SOAPHTTPClient, Rio, DB,cxMemo, cxPC, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxCurrencyEdit, cxGridDBTableView,
  cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, cxCheckBox, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxmdaset,dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  GirisUnit,cxGroupBox, cxRadioGroup, cxImageComboBox, cxLabel, cxButtons,
  dxGDIPlusClasses, dxLayoutContainer, dxLayoutControl, dxLayoutLookAndFeels;

type
  TfrmTakipKontrol = class(TGirisForm)
    pnlToolBar: TPanel;
    txtTarih: TcxDateEdit;
    txttarih1: TcxDateEdit;
    PopupMenu1: TPopupMenu;
    mnSe1: TMenuItem;
    mptal1: TMenuItem;
    DataSource1: TDataSource;
    ADO_SQL: TADOQuery;
    DataSource2: TDataSource;
    Panel3: TPanel;
    N1: TMenuItem;
    akipDetayFormu1: TMenuItem;
    N2: TMenuItem;
    HizmetleriptalEt1: TMenuItem;
    ahlilleriptalEt1: TMenuItem;
    MalzemeptalEt1: TMenuItem;
    N3: TMenuItem;
    SeanslarSistemeYaz1: TMenuItem;
    N4: TMenuItem;
    mHizmetleriKaydet1: TMenuItem;
    N5: TMenuItem;
    FaturayaAt1: TMenuItem;
    N6: TMenuItem;
    MedulaSistemKontrol1: TMenuItem;
    mHizmetleriptalEt1: TMenuItem;
    Progres: TsGauge;
    chkTakip: TCheckBox;
    R1: TMenuItem;
    hastaTip: TcxRadioGroup;
    StatusBar1: TStatusBar;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    T1: TMenuItem;
    S1: TMenuItem;
    H1: TMenuItem;
    ktip: TcxComboBox;
    PopupMenu2: TPopupMenu;
    S2: TMenuItem;
    M1: TMenuItem;
    H2: TMenuItem;
    S3: TMenuItem;
    L1: TMenuItem;
    K1: TMenuItem;
    btnList: TcxButton;
    dxLayoutHizmetlerLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutHizmetlerSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    ADO_TahlillSQL: TADOQuery;
    cxPageControl2: TcxPageControl;
    cxTabSheetTakipler: TcxTabSheet;
    cxTabSheetEAck: TcxTabSheet;
    cxTabSheetLog: TcxTabSheet;
    Panel1: TPanel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    txt230Donem: TcxTextEdit;
    txt233Donem: TcxTextEdit;
    txt234Donem: TcxTextEdit;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBBandedTableView13: TcxGridDBBandedTableView;
    cxGridDBBandedColumn40: TcxGridDBBandedColumn;
    cxGridDBBandedColumn41: TcxGridDBBandedColumn;
    cxGridDBBandedColumn42: TcxGridDBBandedColumn;
    cxGridDBBandedColumn43: TcxGridDBBandedColumn;
    cxGridDBBandedColumn44: TcxGridDBBandedColumn;
    cxGridDBBandedTableView14: TcxGridDBBandedTableView;
    cxGridDBBandedColumn45: TcxGridDBBandedColumn;
    cxGridDBBandedColumn46: TcxGridDBBandedColumn;
    cxGridDBBandedTableView15: TcxGridDBBandedTableView;
    cxGridDBBandedTableView16: TcxGridDBBandedTableView;
    cxGridDBBandedColumn47: TcxGridDBBandedColumn;
    cxGridDBBandedColumn48: TcxGridDBBandedColumn;
    cxGridDBBandedColumn49: TcxGridDBBandedColumn;
    cxGridDBBandedColumn50: TcxGridDBBandedColumn;
    cxGridDBBandedColumn51: TcxGridDBBandedColumn;
    cxGridDBBandedColumn52: TcxGridDBBandedColumn;
    Takipler: TcxGridTableView;
    Sec: TcxGridColumn;
    TakipNo: TcxGridColumn;
    HastaNo: TcxGridColumn;
    gelisNo: TcxGridColumn;
    Hasta: TcxGridColumn;
    TakipTarih: TcxGridColumn;
    SIRANO: TcxGridColumn;
    BasvuruNo: TcxGridColumn;
    Durum: TcxGridColumn;
    TakiplerColumn1: TcxGridColumn;
    TakiplerColumn2: TcxGridColumn;
    TakiplerColumn3: TcxGridColumn;
    TakiplerColumn4: TcxGridColumn;
    TakiplerColumn5: TcxGridColumn;
    TakiplerColumn6: TcxGridColumn;
    TakiplerColumn7: TcxGridColumn;
    cxGrid4Level1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxMemo1: TcxMemo;
    cxButton1_kaydet: TcxButton;
    txtHatalar: TcxMemo;
    cxPageControl1: TcxPageControl;
    cxTabSheetMedula: TcxTabSheet;
    grpSeans: TcxGroupBox;
    cxGrid8: TcxGrid;
    GridHizmetler: TcxGridDBTableView;
    GridHizmetlertakipNo: TcxGridDBColumn;
    GridHizmetlersutKodu: TcxGridDBColumn;
    GridHizmetlerTanm: TcxGridDBColumn;
    GridHizmetlerSonuc: TcxGridDBColumn;
    GridHizmetlerislemTarihi: TcxGridDBColumn;
    GridHizmetlerbransKodu: TcxGridDBColumn;
    GridHizmetlerdrTescilNo: TcxGridDBColumn;
    GridHizmetlerraporTakipno: TcxGridDBColumn;
    GridHizmetlerhizmetSunucuRefNo: TcxGridDBColumn;
    GridHizmetlerislemSiraNo: TcxGridDBColumn;
    GridHizmetlerHizmetTuru: TcxGridDBColumn;
    cxGridDBBandedTableView29: TcxGridDBBandedTableView;
    cxGridDBBandedColumn92: TcxGridDBBandedColumn;
    cxGridDBBandedColumn93: TcxGridDBBandedColumn;
    cxGridDBBandedColumn94: TcxGridDBBandedColumn;
    cxGridDBBandedColumn95: TcxGridDBBandedColumn;
    cxGridDBBandedColumn96: TcxGridDBBandedColumn;
    cxGridDBBandedTableView30: TcxGridDBBandedTableView;
    cxGridDBBandedColumn97: TcxGridDBBandedColumn;
    cxGridDBBandedColumn98: TcxGridDBBandedColumn;
    cxGridDBBandedTableView31: TcxGridDBBandedTableView;
    cxGridDBBandedTableView32: TcxGridDBBandedTableView;
    cxGridDBBandedColumn99: TcxGridDBBandedColumn;
    cxGridDBBandedColumn100: TcxGridDBBandedColumn;
    cxGridDBBandedColumn101: TcxGridDBBandedColumn;
    cxGridDBBandedColumn102: TcxGridDBBandedColumn;
    cxGridDBBandedColumn103: TcxGridDBBandedColumn;
    cxGridDBBandedColumn104: TcxGridDBBandedColumn;
    cxGridLevel7: TcxGridLevel;
    cxTabSheetSistem: TcxTabSheet;
    cxStyle4: TcxStyle;
    ADO_Malzeme: TADOTable;
    ADO_Diger: TADOTable;
    ADO_TetkikveRad: TADOTable;
    ADO_Tahlil: TADOTable;
    ADO_TahliltakipNo: TStringField;
    ADO_TahlilsutKodu: TStringField;
    ADO_TahlilislemTarihi: TStringField;
    ADO_TahlilbransKodu: TStringField;
    ADO_TahlilhizmetSunucuRefNo: TStringField;
    ADO_TahlilislemSiraNo: TStringField;
    ADO_TahlildrTescilNo: TStringField;
    ADO_TahlilAdet: TIntegerField;
    ADO_TahlilsiraNo: TIntegerField;
    ADO_Tahlilname: TStringField;
    ADO_TahlilozelDurum: TStringField;
    ADO_Tahlilbirim: TStringField;
    ADO_TahlilSonuc: TADOTable;
    procedure cxButtonCClick(Sender: TObject);
    procedure mnSe1Click(Sender: TObject);
    procedure mptal1Click(Sender: TObject);
    procedure gridAktifCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure gridAktifClick(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
    procedure akipDetayFormu1Click(Sender: TObject);
    procedure HizmetleriptalEt1Click(Sender: TObject);
    procedure islemSiraDoldur(tag: integer);
    procedure SeanslarSistemeYaz1Click(Sender: TObject);
    procedure mHizmetleriKaydet1Click(Sender: TObject);
    procedure FaturayaAt1Click(Sender: TObject);
    procedure MedulaSistemKontrol1Click(Sender: TObject);
    procedure Sonucyaz(s, takip: string; x: integer; hatalar: TstringList);
    procedure TakiplerFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure MemDataToDataset(Dataset: TdxMemData; DatasetAdo: Tdataset);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure GonderimSonuc(takip, s: string);
    procedure TakiplerStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure T1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure SeansSayiToplam;
    procedure cxButton1_kaydetClick(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure H2Click(Sender: TObject);
    procedure S3Click(Sender: TObject);
    procedure TopPanelButonClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure OrtakEventAta(Sender : TObject);overload;
    procedure OrtakEventAta(Sender : TcxImageComboKadir);overload;
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmTakipKontrol: TfrmTakipKontrol;
  id: integer;
  dn, gn: string;

implementation

uses  rapor, //TedaviBilgisi, Seanslar,
      HastaKart, //HastaListe,
      SeansHakedis, TedaviKart,AnaUnit;
{$R *.dfm}

function TfrmTakipKontrol.Init(Sender : TObject) : Boolean;
begin
  Result := False;
  txttarih1.Date := ayliktarih(date,txtTarih);
  if not inherited Init(Sender) then exit;
end;

procedure TfrmTakipKontrol.OrtakEventAta(Sender : TObject);
begin
  TcxButtonEditKadir(sender).Properties.OnButtonClick := cxButtonEditPropertiesButtonClick;
  TcxButtonEditKadir(sender).OnEnter := cxEditEnter;
  TcxButtonEditKadir(sender).OnExit := cxEditExit;
  TcxButtonEditKadir(sender).OnKeyDown := cxTextEditBKeyDown;
  TcxButtonEditKadir(sender).Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;

procedure TfrmTakipKontrol.OrtakEventAta(Sender : TcxImageComboKadir);
begin
  TcxImageComboKadir (sender).OnEnter := cxEditEnter;
  TcxImageComboKadir(sender).OnExit := cxEditExit;
  TcxImageComboKadir(sender).OnKeyDown := cxTextEditBKeyDown;
  TcxImageComboKadir(sender).Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;


procedure TfrmTakipKontrol.cxButtonCClick(Sender: TObject);
begin
inherited;
  case Tcontrol(sender).Tag of
  -17 : begin
          H2.Click;
       end;
  -18 : begin
         S3.Click;
        end;

  end;


end;

procedure TfrmTakipKontrol.SeansSayiToplam;
var
  Toplam, P704230, P704233, P704234: integer;
begin
  Toplam := TakipKontrolDonemSeansSayisi(copy(tarihal(txtTarih.Date), 1, 6),
    P704230, P704233, P704234);
  txt230Donem.Text := inttostr(P704230);
  txt233Donem.Text := inttostr(P704233);
  txt234Donem.Text := inttostr(P704234);

end;

procedure TfrmTakipKontrol.MemDataToDataset(Dataset: TdxMemData;
  DatasetAdo: Tdataset);
var
  I: integer;
  n, N1: string;
begin
  try
    Dataset.First;
    while not Dataset.Eof do
    begin
      try
        DatasetAdo.Append;
        for I := 0 to Dataset.FieldCount - 2 do
        begin
          n := DatasetAdo.Fields[I].FieldName;
          n := Dataset.Fields[I + 1].FieldName;
          DatasetAdo.Fields[I].Value := Dataset.Fields[I + 1].Value;
        end;
        DatasetAdo.Post;
      except
        on e: Exception do
        begin
          ShowMessage(e.Message);
        end;
      end;

      Dataset.Next;

    end;
  except
    on e: Exception do
    begin
      ShowMessage(e.Message);
    end;
  end;

end;

procedure TfrmTakipKontrol.mnSe1Click(Sender: TObject);
var
  i, r: integer;
begin
  (*
    for i := 1 to gridAktif.RowCount - 2 do
    begin
    gridAktif.SetCheckBoxState(1,i,true);
    gridAktif.Cells[25,i] := 'T';
    end;
    *)

  for i := 0 to Takipler.DataController.RowCount - 1 do
  begin
    Takipler.DataController.FocusedRowIndex := i;
    r := Takipler.DataController.GetFocusedRecordIndex;
    Takipler.DataController.Values[r, 0] := True;
  end;

end;

procedure TfrmTakipKontrol.mptal1Click(Sender: TObject);
var
  i, r: integer;
begin

  (*
    for i := 1 to gridAktif.RowCount - 2 do
    begin
    gridAktif.SetCheckBoxState(1,i,false);
    gridAktif.Cells[25,i] := 'F';
    end;
    *)

  for i := 0 to Takipler.DataController.RowCount - 1 do
  begin
    Takipler.DataController.FocusedRowIndex := i;
    r := Takipler.DataController.GetFocusedRecordIndex;
    Takipler.DataController.Values[i, 0] := false;
  end;

end;

procedure TfrmTakipKontrol.PopupMenu1Popup(Sender: TObject);
begin
  if hastaTip.ItemIndex = 1 Then
  Begin
    HizmetleriptalEt1.Enabled := false;
    SeanslarSistemeYaz1.Enabled := false;
    MalzemeptalEt1.Enabled := false;
  End
  Else
  Begin
    HizmetleriptalEt1.Enabled := True;
    SeanslarSistemeYaz1.Enabled := True;
    MalzemeptalEt1.Enabled := True;
  End;

end;

procedure TfrmTakipKontrol.gridAktifCheckBoxClick(Sender: TObject;
  ACol, ARow: Integer; State: Boolean);
begin
  (*
    if state = true
    then begin
    gridAktif.Cells[25,arow] := 'T';
    //  gridHastalar.Dates[4,arow] := txtDonem.Date;
    //  doktorkod := doktorkod +  Grd_doktorlar.Cells[1,arow] + ',' ;

    end;

    if state = false
    then begin
    gridAktif.Cells[25,arow] := 'F';

    //    doktorkod := StringReplace(doktorkod,Grd_doktorlar.Cells[1,arow]+',','',[rfReplaceAll]);
    end;
    *)
end;

procedure TfrmTakipKontrol.gridAktifClick(Sender: TObject);
begin

  // ADO_SQL.Locate('TakýpNo',gridAktif.Cells[1,gridAktif.row],[]);

end;

procedure TfrmTakipKontrol.btnVazgecClick(Sender: TObject);
begin
  close;
end;



procedure TfrmTakipKontrol.TopPanelButonClick(Sender: TObject);
var
  sql, TakipVar, _Tip_, kurumTip: string;
  x, tip: integer;
begin
  pnlDurum.BringToFront;
  pnlDurum.Visible := True;
  Application.ProcessMessages;

  try
    ADO_TahlillSQL.Active := false;

    if DiyalizTipTopPanel.EditValue = 'H' Then
      _Tip_ := 'H'
    Else
      _Tip_ := 'P,A';

    if chkTakip.Checked Then
      TakipVar := 'and isnull(g.TakýpNo,'''') <>  '''' '
    Else
      TakipVar := '';

    if ktip.Text = 'Tümü' Then
      kurumTip := '1,99'
    else
      kurumTip := KurumTipTopPanel.EditValue;// trim(copy(ktip.Text, 1, 2));

    sql :=
      'select g.TakýpNo Takýpno,g.dosyaNo,g.gelisNo,g.BHDAT ,h.HASTAADI+'' ''+h.HASTASOYADI as ADSOYAD,SIRANO,h.TCKIMLIKNO,g.basvuruNo, '
      +
      '(select count(*) from gelisDetay where dosyaNo = g.dosyaNo and gelisNo = g.gelisNo and durum = 1) SeansAdet, ' +
      '(select count(*) from gssTakipOkuDiger where takipno = g.takýpNo) MedulaSeansAdet, ' +
      '(SELECT COUNT(*) FROM hareketler where dosyaNo = g.dosyaNo and gelisNo = g.gelisNo and code in (''901940'',''903130'',''902210'') and onay = 1) + ' +
      '(select count(*) from hareketler where dosyaNo = g.dosyaNo and gelisNo = g.gelisNo and tip = ''2'' and onay = 1) - ' +
      '(8*(SELECT COUNT(*) FROM hareketler where dosyaNo = g.dosyaNo and gelisNo = g.gelisNo and code = ''901620'' and onay = 1 and tip = ''2'')) TahlilAdet, ' +

      '(select count(*) from gssTakipOkuTahlil where takipno = g.takýpNo) MedulaTahlilAdet, '
      +
      '(select count(*) from hareketler where dosyaNo = g.dosyaNo and gelisNo = g.gelisNo and tip = ''3'' and onay = 1) RadAdet, ' +
      '(select count(*) from gssTakipOkuTetkikvdRadyoloji where takipno = g.takýpNo) MedulaRadAdet,TakýpSend ,g.Aciklama' +
      ' from gelisler g ' +
      ' join hastakart h on h.dosyaNO = g.dosyaNO ' +
      ' left join Kurumlar k on k.kurum = h.kurum ' +
      ' where BHDAT between ' + QuotedStr(tarihal(txtTopPanelTarih1.Date)) +
      ' and ' + QuotedStr(tarihal(txtTopPanelTarih2.Date)) +
      ' and k.KURUMTIPI in (select datavalue from strtotable(' + QuotedStr(kurumTip) + ', '',''))' + ' and g.diyalizTedaviYontemi in ' + '(select datavalue from strtotable(' + QuotedStr(_Tip_) + ', '',''))' +

      TakipVar + ' order by h.HASTAADI,h.HASTASOYADI,BHDAT ';
    datalar.QuerySelect(ADO_SQL, sql);

    ADO_SQL.First;
    Takipler.DataController.RecordCount := ADO_SQL.RecordCount;
    for x := 0 to ADO_SQL.RecordCount - 1 do
    begin
      Takipler.DataController.Values[x, 1] := ADO_SQL.fieldbyname('TakýpNo')
        .AsString;
      Takipler.DataController.Values[x, 2] := ADO_SQL.fieldbyname('dosyaNo')
        .AsString;
      Takipler.DataController.Values[x, 3] := ADO_SQL.fieldbyname('GelisNo')
        .AsString;
      Takipler.DataController.Values[x, 4] := ADO_SQL.fieldbyname('ADSOYAD')
        .AsString;
      Takipler.DataController.Values[x, 5] := FormattedTarih
        (ADO_SQL.fieldbyname('BHDAT').AsString);
      Takipler.DataController.Values[x, 6] := ADO_SQL.fieldbyname('SIRANO')
        .AsString;
      Takipler.DataController.Values[x, 7] := ADO_SQL.fieldbyname('basvuruNo')
        .AsString;
      Takipler.DataController.Values[x, 8] := ADO_SQL.fieldbyname('TakýpSend')
        .AsString;
      Takipler.DataController.Values[x, 9] := ADO_SQL.fieldbyname('SeansAdet')
        .AsInteger;
      Takipler.DataController.Values[x, 10] := ADO_SQL.fieldbyname
        ('MedulaSeansAdet').AsInteger;
      Takipler.DataController.Values[x, 11] := ADO_SQL.fieldbyname('TahlilAdet')
        .AsInteger;
      Takipler.DataController.Values[x, 12] := ADO_SQL.fieldbyname
        ('MedulaTahlilAdet').AsInteger;
      Takipler.DataController.Values[x, 13] := ADO_SQL.fieldbyname('RadAdet')
        .AsInteger;
      Takipler.DataController.Values[x, 14] := ADO_SQL.fieldbyname
        ('MedulaRadAdet').AsInteger;
      Takipler.DataController.Values[x, 15] := ADO_SQL.fieldbyname('aciklama')
        .AsString;

      ADO_SQL.Next;
    end;

 //   ADO_Tahlil.Active := True;
 //   ADO_TahlilSonuc.Active := True;

    SeansSayiToplam;

  except
    on e: Exception do
    begin
      ShowMessageSkin(e.Message, '', '', 'info');
    end;
  end;

  pnlDurum.Visible := false;

end;

procedure TfrmTakipKontrol.cxButton1_kaydetClick(Sender: TObject);
var
  ado: TADOQuery;
  sql: string;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  sql := 'update gelisler set Aciklama = ' + QuotedStr(cxMemo1.Text)
    + ' where dosyaNo = ' + QuotedStr(dn) + ' and gelisNo = ' + gn;

  datalar.QueryExec(ado, sql);
  ado.Free;

end;

procedure TfrmTakipKontrol.akipDetayFormu1Click(Sender: TObject);
begin
  // DatasetiDoldur(gridAktif.Cells[1,gridAktif.row],'G');

 // DatasetiDoldur(Takipler.DataController.Values[id, 1], 'G', '');

  frmRapor.raporData1(frmRapor.topluset, '014', '\HizmetDetay');
  frmRapor.ShowModal;
end;

procedure TfrmTakipKontrol.islemSiraDoldur(tag: integer);
var
  sql: string;
  ado: TADOQuery;
  i, j: integer;
  SeansAdet,TahlilAdet,MalzemeAdet,RadAdet : integer;
begin
  SetLength(datalar.islemSiralari, 0);
  ADO_TahlillSQL.First;
  SeansAdet := ADO_TahlillSQL.FieldByName('SeansAdet').AsInteger;
  TahlilAdet := ADO_TahlillSQL.FieldByName('TahlilAdet').AsInteger;
  MalzemeAdet := ADO_TahlillSQL.FieldByName('MalzemeAdet').AsInteger;
  RadAdet := ADO_TahlillSQL.FieldByName('RadAdet').AsInteger;

  if tag = -11 then
  begin
    SetLength(datalar.islemSiralari, 0);
  end;

  if tag = -7 then
  begin
    i := 0;
    SetLength(datalar.islemSiralari, SeansAdet);
    for j := 0 to ADO_TahlillSQL.RecordCount - 1 do
    begin
      if ADO_TahlillSQL.fieldbyname('HizmetTuru').AsString = 'Diyaliz Seans'
      then begin
         datalar.islemSiralari[i] := ADO_TahlillSQL.fieldbyname('islemsiraNo').AsString;
         inc(i);
      end;
      ADO_TahlillSQL.Next;
    end;

  end;

  if tag = -8 then
  begin
    i := 0;
    SetLength(datalar.islemSiralari, TahlilAdet);
    for j := 0 to ADO_TahlillSQL.RecordCount - 1 do
    begin
      if ADO_TahlillSQL.fieldbyname('HizmetTuru').AsString = 'Tahlil'
      then begin
        datalar.islemSiralari[i] := ADO_TahlillSQL.fieldbyname('islemsiraNo').AsString;
        inc(i);
      end;
      ADO_TahlillSQL.Next;
    end;

  end;

  if tag = -9 then
  begin
    i := 0;
    SetLength(datalar.islemSiralari, MalzemeAdet);
    for j := 0 to ADO_TahlillSQL.RecordCount - 1 do
    begin
      if ADO_TahlillSQL.fieldbyname('HizmetTuru').AsString = 'Malzeme'
      then begin
        datalar.islemSiralari[i] := ADO_TahlillSQL.fieldbyname('islemsiraNo').AsString;
        inc(i);
      end;
      ADO_TahlillSQL.Next;
    end;
  end;

  if tag = -10 then
  begin
    i := 0;
    SetLength(datalar.islemSiralari, RadAdet);
    for j := 0 to ADO_TahlillSQL.RecordCount - 1 do
    begin
      if ADO_TahlillSQL.fieldbyname('HizmetTuru').AsString = 'Rad'
      then begin
        datalar.islemSiralari[i] := ADO_TahlillSQL.fieldbyname('islemsiraNo').AsString;
        inc(i);
      end;
      ADO_TahlillSQL.Next;
    end;

  end;

end;

procedure TfrmTakipKontrol.H1Click(Sender: TObject);
var
  r: integer;
  Form : TGirisForm;
begin
  r := Takipler.DataController.DataControllerInfo.FocusedRecordIndex;


 // datalar.Bilgi.dosyaNo := ado_BransKodlari.FieldByName('dosyaNo').AsString;
//  FormINIT(TagfrmHastaKart,AnaForm,ado_BransKodlari.FieldByName('dosyaNo').AsString);
 if FindTab(AnaForm.sayfalar,'TabfrmHastaKart')
 Then begin
   Form := TGirisForm(FormClassType(TagfrmHastaKart));
   TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := Takipler.DataController.Values[r, 2];
   TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
 end
 Else begin
  Form := FormINIT(TagfrmHastaKart,self,Takipler.DataController.Values[r, 2],NewTab(AnaForm.sayfalar,'TabfrmHastaKart'),ikEvet,'Giriþ');
  if Form <> nil then Form.show;
 end;

 (*
  try

    if datalar.HkA = 0 Then
    Begin
      frmHastaKarti := TfrmHastaKarti.Create(self);
      GorselAyar(frmHastaKarti, datalar.global_img_list4);
      frmHastaKarti.Top := 2;
      frmHastaKarti.Left := 2 + frmHastaListe.Width + 5;
    End;

    frmHastaKarti.Combo;
    frmHastaKarti.ilCombo;
    frmHastaKarti.yakinlikCombo;
    frmHastaKarti.KartGetir(Takipler.DataController.Values[r, 2]);
    frmHastaKarti.Gelisler(Takipler.DataController.Values[r, 2]);
    frmHastaKarti.Durum(1);
    frmHastaKarti.btnGuncelle.Enabled := True;
    // Disabled(frmHastaKarti);
    frmHastaKarti.Disable;
  except
  end;
  *)
end;

procedure TfrmTakipKontrol.H2Click(Sender: TObject);
var
  satir, satirlar, satirs, x, _s_: integer;
  Sonuc, BasvuruNo, sql, msj, takip: string;
  ado: TADOQuery;
  secili: Boolean;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  satir := 1;
  satirlar := Takipler.DataController.RowCount - 1;

  Progres.MaxValue := Takipler.Controller.SelectedRowCount - 1;
  Progres.Progress := 0;
  Progres.Visible := True;
  StatusBar1.Panels[0].Text := 'Hizmetler Okunuyor...';

  if mrYes = ShowMessageSkin('Seçili Takipler Ýçin Okuma Ýþlemi Baþlayacak',
    'Onaylýyormusunuz ?', '', 'msg') then
  begin
    for satir := 0 to Takipler.Controller.SelectedRowCount - 1 do
    begin
      // Takipler.DataController.FocusedRowIndex := satir;
      // x := Takipler.DataController.GetFocusedRecordIndex;
      Application.ProcessMessages;

      takip := Takipler.DataController.GetValue(Takipler.Controller.SelectedRows[satir].RecordIndex, 1);

      DatalariBosalt;

      if takip <> '' then
        msj := HizmetKaydiOku(takip, BasvuruNo, Sonuc, datalar.HizmetKayit)
      else
        Continue;
      if (msj = '0000') or (copy(msj, 1, 4) = '0631') Then
      Begin
        sql := 'update gelisler set TakýpSend = ''0'' where TakýpNo = ' + QuotedStr(takip);
        datalar.QueryExec(ado, sql);
        sql := 'delete from gssTakipOkuDiger where TakipNO = ' + QuotedStr(takip);
        datalar.QueryExec(ado, sql);
        sql := 'delete from gssTakipOkuTahlil where TakipNO = ' + QuotedStr(takip);
        datalar.QueryExec(ado, sql);
        sql := 'delete from gssTakipOkuTahlilSonuc where TakipNO = ' + QuotedStr(takip);
        datalar.QueryExec(ado, sql);
        sql :=
          'delete from gssTakipOkuTetkikvdRadyoloji where TakipNO = ' + QuotedStr(takip);
        datalar.QueryExec(ado, sql);
        sql := 'delete from gssTakipOkuMalzeme where TakipNO = ' + QuotedStr(takip);
        datalar.QueryExec(ado, sql);

        ADO_Tahlil.Active := false;
        ADO_Tahlil.Active := True;
        ADO_TahlilSonuc.Active := false;
        ADO_TahlilSonuc.Active := True;

        ADO_Diger.Active := false;
        ADO_Diger.Active := True;
        ADO_TetkikveRad.Active := false;
        ADO_TetkikveRad.Active := True;

        ADO_Malzeme.Active := false;
        ADO_Malzeme.Active := True;

        MemDataToDataset(datalar.RxDigerIslem, ADO_Diger);
        MemDataToDataset(datalar.RxTahlilIslem, ADO_Tahlil);
        MemDataToDataset(datalar.RxTahlilSonuc, ADO_TahlilSonuc);
        MemDataToDataset(datalar.RxMalzemeBilgisi, ADO_Malzeme);
        MemDataToDataset(datalar.RxRadIslem, ADO_TetkikveRad);

        if copy(msj, 1, 4) = '0631' Then
          txtHatalar.Lines.Add(msj);

        Progres.Progress := Progres.Progress + 1;
      End
      Else
      Begin
        sql := 'update gelisler set TakýpSend = ''1'' where TakýpNO = ' + QuotedStr(takip);
        datalar.QueryExec(ado, sql);

        txtHatalar.Lines.Add(msj);
        Progres.Progress := Progres.Progress + 1;
      End; // if HizmetKaydýOku end

    end; // for end
  end; // end if

  ado.Free;

  ADO_Tahlil.close;
  ADO_Tahlil.Open;
  ADO_TahlilSonuc.close;
  ADO_TahlilSonuc.Open;
  ADO_Diger.close;
  ADO_Diger.Open;
  ADO_TetkikveRad.close;
  ADO_TetkikveRad.Open;
  ADO_Malzeme.close;
  ADO_Malzeme.Open;
  Progres.Visible := false;
  StatusBar1.Panels[0].Text := '.';

  SeansSayiToplam;

end;


procedure TfrmTakipKontrol.HizmetleriptalEt1Click(Sender: TObject);
var
  satir, satirlar, satirs, x: integer;
  Sonuc, BasvuruNo, sql, msg, takip, dosyaNo, gelisNo: string;
  ado: TADOQuery;
  secili: Boolean;
begin

  if UserRight('MEDULA ÝÞLEMLERÝ', 'Hizmet Ýptal') = false Then
  Begin
    ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Yok',
      'Sistem Yöneticinizle Görüþün', '', 'info');
    exit;
  End;

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  satir := 1;
  satirlar := Takipler.DataController.RowCount - 1;

  Progres.MaxValue := Takipler.Controller.SelectedRowCount - 1;
  Progres.Progress := 0;
  Progres.Visible := True;
  StatusBar1.Panels[0].Text := 'Hizmetler Siliniyor...';

  if mrYes = ShowMessageSkin(
    'Seçilen Takipler Ýçin Hizmet Silme Ýþlemi Baþlayacak',
    'Onaylýyormusunuz ?', '', 'msg') then
  begin
    for satir := 0 to Takipler.Controller.SelectedRowCount - 1 do
    begin
      Takipler.DataController.FocusedRowIndex :=
        Takipler.Controller.SelectedRows[satir].RecordIndex;
      // x := Takipler.DataController.GetFocusedRecordIndex;
      Application.ProcessMessages;
      // gridAktif.GetCheckBoxState(1,satir,secili);

      takip := Takipler.DataController.GetValue
        (Takipler.Controller.SelectedRows[satir].RecordIndex, 1);
      dosyaNo := Takipler.DataController.GetValue
        (Takipler.Controller.SelectedRows[satir].RecordIndex, 2);
      gelisNo := Takipler.DataController.GetValue
        (Takipler.Controller.SelectedRows[satir].RecordIndex, 3);

      islemSiraDoldur(TMenuItem(Sender).tag);

      if length(datalar.islemSiralari) = 0 then
        Continue;

      if takip <> '' then
        msg := HizmetKaydiIptal(takip, datalar.HizmetKayit)
      else
        Continue;

      if msg = '0000' Then
      Begin
        if TMenuItem(Sender).tag = -7 then
        begin
          sql :=
            'update gelisDetay set TalepSira = '''''
            + ' where dosyaNo = ' + QuotedStr(dosyaNo)
            + ' and gelisNo = ' + gelisNo;
          datalar.QueryExec(ado, sql);
        end;

        if TMenuItem(Sender).tag = -8 then
        begin
          sql := ' update hareketler set islemSiraNo = ''''' +
            ' from hareketler h join labtestler l on l.butKodu = h.code ' +
            ' where dosyaNo = ' + QuotedStr(dosyaNo)
            + ' and gelisNo = ' + gelisNo + ' and l.tip = 2';
          datalar.QueryExec(ado, sql);
        end;

        if TMenuItem(Sender).tag = -9 then
        begin
          sql := ' update hareketlerIS set islemSiraNo = ''''' +
            ' where dosyaNo = ' + QuotedStr(dosyaNo)
            + ' and gelisNo = ' + gelisNo;
          datalar.QueryExec(ado, sql);
        end;

        if TMenuItem(Sender).tag = -10 then
        begin
          sql := ' update hareketler set islemSiraNo = ''''' +
            ' from hareketler h join labtestler l on l.butKodu = h.code ' +
            ' where dosyaNo = ' + QuotedStr(dosyaNo)
            + ' and gelisNo = ' + gelisNo + ' and l.tip = 3';
          datalar.QueryExec(ado, sql);
        end;

        if TMenuItem(Sender).tag = -11 then
        begin

          sql :=
            'update gelisDetay set TalepSira = '''''
            + ' where dosyaNo = ' + QuotedStr(dosyaNo)
            + ' and gelisNo = ' + gelisNo;
          datalar.QueryExec(ado, sql);

          sql :=
            'update gelisDetay set islemSiraNoYatak = '''''
            + ' where dosyaNo = ' + QuotedStr(dosyaNo)
            + ' and gelisNo = ' + gelisNo;
          datalar.QueryExec(ado, sql);

          sql := 'update hareketler set islemSiraNo = ''''' +
            ' where dosyaNo = ' + QuotedStr(dosyaNo)
            + ' and gelisNo = ' + gelisNo;
          datalar.QueryExec(ado, sql);

          sql := 'update Anamnez_Icd set islemSiraNo = ''''' +
            ' where dosyaNo = ' + QuotedStr(dosyaNo)
            + ' and gelisNo = ' + gelisNo;
          datalar.QueryExec(ado, sql);
        end;

        txtHatalar.Lines.Add(takip + ' : Hizmetler Ýptal Edildi');

      End
      Else
        txtHatalar.Lines.Add(msg);

    End;

  End;
  StatusBar1.Panels[0].Text := '.';

end;

procedure TfrmTakipKontrol.S1Click(Sender: TObject);
var
 _name_ : string;
 F : TGirisForm;
 GirisFormRecord : TGirisFormRecord;
 r : integer;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  r := Takipler.DataController.DataControllerInfo.FocusedRecordIndex;

  datalar.Bilgi.dosyaNo := Takipler.DataController.Values[r, 2];
  datalar.Bilgi.tckimlikNo := _Tc_;
  datalar.Bilgi.Adi := Takipler.DataController.Values[r, 4];

  GirisFormRecord.F_dosyaNo_ := Takipler.DataController.Values[r, 2];
  GirisFormRecord.F_gelisNo_ := Takipler.DataController.Values[r, 3];
  GirisFormRecord.F_provizyonTarihi_ := NoktasizTarih(Takipler.DataController.Values[r, 5]);
  GirisFormRecord.F_TakipNo_ := Takipler.DataController.Values[r, 1];
  GirisFormRecord.F_HastaAdSoyad_ := Takipler.DataController.Values[r, 4];

  F := FormINIT(TagfrmHastaSeans,GirisFormRecord,ikEvet,'Giriþ');
  if F <> nil then F.ShowModal;

 (*
  r := Takipler.DataController.DataControllerInfo.FocusedRecordIndex;
  Application.CreateForm(TfrmSeanslar, frmSeanslar);
  GorselAyar(frmSeanslar, datalar.global_img_list4);
  // frmSeanslar.HastaBil(txtDosyaNo.Text , gridGelisler.Cells[1,gridgelisler.Row] , txtHastaAdi.text+' '+txtSoyadi.text , gridGelisler.Cells[3,gridgelisler.Row] ,gridGelisler.Cells[6,gridgelisler.Row],txtMakinaNo.text);
  frmSeanslar.SeansGetir(Takipler.DataController.Values[r, 2],
    Takipler.DataController.Values[r, 3]);
  frmSeanslar.ShowModal;
  frmSeanslar.Release;
  frmSeanslar := nil;
   *)
end;

procedure TfrmTakipKontrol.S2Click(Sender: TObject);
var
  _talepSira, _sonuc, msg, sql , HizmetTuru: string;
  i, j, k: integer;
  ado: TADOQuery;
begin

  if UserRight('MEDULA ÝÞLEMLERÝ', 'Hizmet Ýptal') = false Then
  Begin
    ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Yok',
      'Sistem Yöneticinizle Görüþün',
      'Hizmet Ýptal', 'info');
    exit;
  End;

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  try
    if mrYes = ShowMessageSkin('Hizmet Ýptal Edilecek Emin misiniz ?', '', '',
      'msg') then
    begin

      SetLength(datalar.islemSiralari, 1);
      HizmetTuru := ADO_TahlillSQL.fieldbyname('HizmetTuru').AsString;
      datalar.islemSiralari[0] := ADO_TahlillSQL.fieldbyname('islemSirano').AsString;

      msg := HizmetKaydiIptal(ADO_TahlillSQL.fieldbyname('takipno').AsString,
        datalar.HizmetKayit);

      if msg = '0000' Then
      Begin
        if HizmetTuru = 'Diyaliz Seans' then
        begin
          sql := 'update gelisDetay set TalepSira = ''''' +
                 ' where TalepSira = ' + QuotedStr(ADO_TahlillSQL.fieldbyname('islemSirano').AsString);
          datalar.QueryExec(ado, sql);
        end;

        if (HizmetTuru = 'Tahlil') or (HizmetTuru = 'Rad') then
        begin
         sql := ' update hareketler set islemSiraNo = ''''' +
                ' where islemSiraNo = ' + QuotedStr(ADO_TahlillSQL.fieldbyname('islemSirano').AsString);
              datalar.QueryExec(ado, sql);
        end;

        if (HizmetTuru = 'Malzeme') then
        begin
         sql := ' update hareketlerIS set islemSiraNo = ''''' +
                ' where islemSiraNo = ' + QuotedStr(ADO_TahlillSQL.fieldbyname('islemSirano').AsString);
              datalar.QueryExec(ado, sql);
        end;

        ShowMessageSkin('Hizmet Ýptal Edildi', '', '', 'info');
        SetLength(datalar.islemSiralari, 0);

      End;
      ado.Free;
    end;
  except
    on e: Exception do
    begin
      ShowMessageSkin(e.Message, '', '', 'info');
      ado.Free;
    end;
  end;

end;

procedure TfrmTakipKontrol.S3Click(Sender: TObject);
begin
  Application.CreateForm(TfrmHakedis, frmHakedis);
  frmHakedis.list(tarihal(txtTarih.Date), tarihal(txttarih1.Date));
  frmHakedis.ShowModal;
  frmHakedis := nil;

end;

procedure TfrmTakipKontrol.sBitBtn1Click(Sender: TObject);
begin
  inherited;
  frmTakipKontrol.Free;
end;

procedure TfrmTakipKontrol.SeanslarSistemeYaz1Click(Sender: TObject);
var
  satir, satirlar, satirs, r: integer;
  Sonuc, BasvuruNo, sql, msg, takip, dosyaNo, gelisNo: string;
  ado: TADOQuery;
  secili: Boolean;
begin

  if UserRight('Donem Sonlandýrma', 'Okunan Hizmet Sisteme Yaz') = false Then
  Begin
    ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Yok',
      'Sistem Yöneticinizle Görüþün',
      'Okunan Hizmet Sisteme Yaz', 'info');
    exit;
  End;

  Ado_diger.Active := True;

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  satir := 1;
  satirlar := Takipler.DataController.RowCount - 1;

  Progres.MaxValue := Takipler.Controller.SelectedRowCount - 1;
  Progres.Progress := 0;
  Progres.Visible := True;
  StatusBar1.SimpleText := 'Hizmetler Siliniyor...';

  if mrYes = ShowMessageSkin(
    'Seçilen Takipler Ýçin Seans Alma Ýþlemi Baþlayacak', 'Onaylýyormusunuz ?',
    '', 'msg') then
  begin
    for satir := 0 to Takipler.Controller.SelectedRowCount - 1 do
    begin
      // Takipler.DataController.FocusedRowIndex := satir;
      // r := Takipler.DataController.GetFocusedRecordIndex;
      Takipler.DataController.FocusedRowIndex :=
        Takipler.Controller.SelectedRows[satir].RecordIndex;
      Application.ProcessMessages;
      // gridAktif.GetCheckBoxState(1,satir,secili);

      takip := Takipler.DataController.GetValue
        (Takipler.Controller.SelectedRows[satir].RecordIndex, 1);
      dosyaNo := Takipler.DataController.GetValue
        (Takipler.Controller.SelectedRows[satir].RecordIndex, 2);
      gelisNo := Takipler.DataController.GetValue
        (Takipler.Controller.SelectedRows[satir].RecordIndex, 3);

      if not ADO_Diger.Eof then
      begin
        sql := ' delete from gelisDetay ' + ' where dosyaNo = ' + QuotedStr
          (dosyaNo) + ' and gelisNo = ' + gelisNo + ' and durum = 1 ';
        datalar.QueryExec(ado, sql);
      end;

      ADO_Diger.First;
      while not ADO_Diger.Eof do
      begin
        sql :=
          'insert into GelisDetay(dosyaNo,gelisNo,RTarih,UTarih,Durum,Doktor,TalepSira)'
          + 'values(' + QuotedStr(dosyaNo) + ',' + gelisNo + ',' + QuotedStr
          (tarih(ADO_Diger.fieldbyname('islemTarihi').AsString))
          + ',' + QuotedStr
          (tarih(ADO_Diger.fieldbyname('islemTarihi').AsString))
          + ',' + '1' + ',' + QuotedStr
          (doktorTescilToKod(ADO_Diger.fieldbyname('drTescilNo')
              .AsString)) + ',' + QuotedStr
          (ADO_Diger.fieldbyname('islemSiraNo').AsString) + ')';

        datalar.QueryExec(ado, sql);

        ADO_Diger.Next;

      end;

    end;
  end;

end;

procedure TfrmTakipKontrol.GonderimSonuc(takip, s: string);
var
  // hatali : TStringList;
  ado: TADOQuery;
  sql: string;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  sql := 'update gelisler set TakýpSend = ' + QuotedStr(s)
    + ' where takýpNo = ' + QuotedStr(takip);
  datalar.QueryExec(ado, sql);

  ado.Free;

end;

procedure TfrmTakipKontrol.Sonucyaz(s, takip: string; x: integer;
  hatalar: TstringList);
var
  // hatali : TStringList;
  ado: TADOQuery;
  sql: string;

begin
  if s = '0000' Then
  Begin
    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;

    datalar.RxKayitliIslem.First;
    while not datalar.RxKayitliIslem.Eof do
    Begin
      ado.close;
      ado.sql.clear;
      if datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo')
        .AsString[1] = 'Y' Then
      Begin
        // gridYatak.Cells[8,gridYatak.row] := datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString;
        sql := 'update gelisDetay set islemSiraNoYatak = ' + QuotedStr
          (datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString)
          + ' where siraNoYatis = ' + QuotedStr
          (datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString);
        datalar.QueryExec(ado, sql);
      End
      Else if datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo')
        .AsString[1] = 'T' Then
      Begin
        sql := 'update Anamnez_Icd set islemSiraNo = ' + QuotedStr
          (datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString)
          + ' where ID = ' + copy(datalar.RxKayitliIslem.fieldbyname
            ('hizmetSunucuRefNo').AsString, 2, 15);
        datalar.QueryExec(ado, sql);
      End
      Else if datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo')
        .AsString[1] = 'L' Then
      Begin
        sql := 'update hareketler set islemSiraNo = ' + QuotedStr
          (datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString)
          + ' where SIRANO = ' + copy(datalar.RxKayitliIslem.fieldbyname
            ('hizmetSunucuRefNo').AsString, 2, 15);
        datalar.QueryExec(ado, sql);
      End
      Else if datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo')
        .AsString[1] = 'M' Then
      Begin
        sql := 'update hareketlerIS set islemSiraNo = ' + QuotedStr
          (datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString)
          + ' where SIRANO = ' + copy(datalar.RxKayitliIslem.fieldbyname
            ('hizmetSunucuRefNo').AsString, 2, 15);
        datalar.QueryExec(ado, sql);
      End
      Else if datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo')
        .AsString[1] = 'P' Then
      Begin
        // gridGelisler.Cells[8,gridGelisler.row] := datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString;
        sql := 'update gelisDetayPeriton set TalepSira = ' + QuotedStr
          (datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString)
          + ' where siraNo = ' + copy(datalar.RxKayitliIslem.fieldbyname
            ('hizmetSunucuRefNo').AsString, 2, 15);
        datalar.QueryExec(ado, sql);
      End
      Else
      Begin
        // gridGelisler.Cells[8,gridGelisler.row] := datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString;
        sql := 'update gelisDetay set TalepSira = ' + QuotedStr
          (datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString)
          + ' where siraNo = ' + datalar.RxKayitliIslem.fieldbyname
          ('hizmetSunucuRefNo').AsString;
        datalar.QueryExec(ado, sql);
      End;

      datalar.RxKayitliIslem.Next;

    End;

    txtHatalar.Lines.Add(Takipler.DataController.GetValue
        (Takipler.Controller.SelectedRows[x].RecordIndex,
        4) + ' ' + takip + ' : Ýþlem Baþarýlý');
    ado.Free;

  End
  Else

    if hatalar.Count > 0 Then
    txtHatalar.Lines.Add(Takipler.DataController.GetValue
        (Takipler.Controller.SelectedRows[x].RecordIndex,
        4) + ' ' + takip + ' Hata : ' + s + ' ;' + hatalar[0])
  Else
    txtHatalar.Lines.Add(Takipler.DataController.GetValue
        (Takipler.Controller.SelectedRows[x].RecordIndex,
        4) + ' ' + takip + ' Hata : ' + s);

  StatusBar1.SimpleText := '.';
  Progres.Progress := Progres.Progress + 1;
end;

procedure TfrmTakipKontrol.mHizmetleriKaydet1Click(Sender: TObject);
var
  fark: double;
  hatali: TstringList;
  ado: TADOQuery;
  tedavi, Sonuc, takip, BasvuruNo, sql, ts: string;
  x, r: integer;
Begin

  if not LisansKontrol(fark) = True Then
    exit;

  StatusBar1.Panels[0].Text := 'Ödeme Bilgisi Yollanýyor....';

  Progres.MaxValue := Takipler.Controller.SelectedRowCount - 1;
  Progres.Progress := 0;
  Progres.Visible := True;

  hatali := TstringList.Create;

  for r := 0 to Takipler.Controller.SelectedRowCount - 1 do
  begin
    Takipler.DataController.FocusedRowIndex := Takipler.Controller.SelectedRows[r].RecordIndex;
    x := r;
    Application.ProcessMessages;
    // Takipler.DataController.FocusedRowIndex := r;
    // x := Takipler.DataController.GetFocusedRecordIndex;

    // tedavi := gridGelisler.Cells[5,gridGelisler.Row];
    takip := Takipler.DataController.GetValue(Takipler.Controller.SelectedRows[r].RecordIndex, 1);
    BasvuruNo := Takipler.DataController.GetValue(Takipler.Controller.SelectedRows[r].RecordIndex, 7);

    verisetleriyenile(takip, 'D', 'G');
    // tümü kaydet
    if length(datalar.VeriSeti.Tahlil) + length(datalar.VeriSeti.Diger) + length
      (datalar.VeriSeti.Tani) + length(datalar.VeriSeti.Malzeme) + length
      (datalar.VeriSeti.Rad) <= 20 then
    begin
      Sonuc := HizmetKayit_3(BasvuruNo, takip, datalar.HizmetKayit, nil,
        nil, nil, nil, nil, datalar.VeriSeti.Malzeme,
        nil, datalar.VeriSeti.Tahlil, datalar.VeriSeti.Tani,
        datalar.VeriSeti.Rad, nil,
        // datalar.veriSeti.KayitliIslem,
        hatali, 1, '');
      Sonucyaz(Sonuc, takip, x, hatali);
      if Sonuc = '0000' then
        ts := '9'
      else
        ts := '1';
      GonderimSonuc(takip, ts);
    end
    Else
    Begin
      // Seanslarý taný , Rad ,kaydet
      verisetleriyenile(takip, 'D', 'G');
      Sonuc := HizmetKayit_3(BasvuruNo, takip, datalar.HizmetKayit, nil,
        nil, nil, nil, nil, nil, nil, nil,
        datalar.VeriSeti.Tani, datalar.VeriSeti.Rad, nil,
        // datalar.veriSeti.KayitliIslem,
        hatali, 1, '');
      Sonucyaz(Sonuc, takip, x, hatali);
      if Sonuc = '0000' then
        ts := '9'
      else
        ts := '1';
      GonderimSonuc(takip, ts);

      if length(datalar.VeriSeti.Malzeme) > 0 Then
      Begin
        sleep(3000);
        // verisetleriyenile(takip,'D','G');
        Sonuc := HizmetKayit_3(BasvuruNo, takip, datalar.HizmetKayit, nil, nil,
          nil, nil, nil, datalar.VeriSeti.Malzeme, nil, nil, nil, nil, nil,
          // datalar.veriSeti.KayitliIslem,
          hatali, 1, '');
        Sonucyaz(Sonuc, takip, x, hatali);
        if Sonuc = '0000' then
          ts := '9'
        else
          ts := '1';
        GonderimSonuc(takip, ts);

      End;

      // Tahlilleri kaydet
      if length(datalar.VeriSeti.Tahlil) > 20 Then
      Begin
        sleep(3000);
        SetLength(datalar.VeriSeti.Tahlil, 20);
        Sonuc := HizmetKayit_3(BasvuruNo, takip, datalar.HizmetKayit, nil, nil,
          nil, nil, nil, nil, nil, datalar.VeriSeti.Tahlil, nil, nil, nil,
          // datalar.veriSeti.KayitliIslem,
          hatali, 1, '');
        Sonucyaz(Sonuc, takip, x, hatali);
        if Sonuc = '0000' then
          ts := '9'
        else
          ts := '1';
        GonderimSonuc(takip, ts);

        verisetleriyenile(takip, 'D', 'G');

        sleep(3000);
        Sonuc := HizmetKayit_3(BasvuruNo, takip, datalar.HizmetKayit, nil, nil,
          nil, nil, nil, nil, nil, datalar.VeriSeti.Tahlil, nil, nil, nil,
          // datalar.veriSeti.KayitliIslem,
          hatali, 1, '');
        Sonucyaz(Sonuc, takip, x, hatali);
        if Sonuc = '0000' then
          ts := '9'
        else
          ts := '1';
        GonderimSonuc(takip, ts);

      End
      Else
      Begin
        verisetleriyenile(takip, 'D', 'G');
        Sonuc := HizmetKayit_3(BasvuruNo, takip, datalar.HizmetKayit, nil, nil,
          nil, nil, nil, nil, nil, datalar.VeriSeti.Tahlil, nil, nil, nil,
          // datalar.veriSeti.KayitliIslem,
          hatali, 1, '');
        Sonucyaz(Sonuc, takip, x, hatali);
        if Sonuc = '0000' then
          ts := '9'
        else
          ts := '1';
        GonderimSonuc(takip, ts);

      End;

      Progres.Progress := Progres.Progress + 1;
    End;
   // GonderimSonuc(takip, ts);
    StatusBar1.Panels[0].Text := '.';
    Progres.Visible := false;
  End;
End;

procedure TfrmTakipKontrol.FaturayaAt1Click(Sender: TObject);
var
  sql, takip: string;
  ado: TADOQuery;
  x, r: integer;
begin

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  for r := 0 to Takipler.Controller.SelectedRowCount - 1 do
  begin
    // Takipler.DataController.FocusedRowIndex := r;
    // x := Takipler.DataController.GetFocusedRecordIndex;

    takip := Takipler.DataController.GetValue
      (Takipler.Controller.SelectedRows[r].RecordIndex, 1);

    sql := 'exec sp_kurumFaturaIsle_M3 ' + #39 + takip + #39 + ',' + #39 + tarih
      (txtTarih.Text) + #39 + ',' + #39 + tarih(txttarih1.Text) + #39;

    datalar.QuerySelect(ado, sql);

  end;
  ShowMessageSkin('Kayýtlar Faturaya Atýldý', '', '', 'info');
  ado.Free;

end;

procedure TfrmTakipKontrol.FormCreate(Sender: TObject);
begin
  Menu := PopupMenu1;

//  Tag := TagfrmHastaKart;
//  ClientHeight := formYukseklik;
//  ClientWidth := formGenislik;


  indexFieldName := 'dosyaNo';
  TableName := _TableName_;
  Olustur(self,_TableName_,'Takip Kontrol',22,sqlInsert);
  cxPanel.Visible := false;

  TopPanel.Visible := True;
  TapPanelElemanVisible(True,True,True,False,False,False,True,False,False,False,True,False);
//  Liste.DataController.DataSource := DataSource;

  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;
  SayfaCaption('','','','','');
end;

procedure TfrmTakipKontrol.M1Click(Sender: TObject);
var
  sql, takip: string;
  ado: TADOQuery;
  x: integer;
  renk: Tcolor;
  satir, satirlar: integer;
begin
  try
    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;

  //  sql := 'select count(*) from gelisler where

    sql := 'exec sp_HizmetKodToplamKontrol  ' + QuotedStr
      (tarihal(txtTarih.Date)) + ',' + QuotedStr(tarihal(txttarih1.Date));
    datalar.QueryExec(ado, sql);
    ShowMessageSkin('Ýþlem Tamamlandý', '', '', 'info');
    ado.Free;
  except
    on e: Exception do
    begin
      ShowMessageSkin(e.Message, '', '', 'info');
      ado.Free;
    end;
  end;

end;

procedure TfrmTakipKontrol.MedulaSistemKontrol1Click(Sender: TObject);
var
  sql, takip: string;
  ado: TADOQuery;
  x: integer;
  renk: Tcolor;
  satir, satirlar: integer;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  satir := 1;
  satirlar := Takipler.DataController.RowCount - 1;

  Progres.MaxValue := Takipler.Controller.SelectedRowCount - 1;
  Progres.Progress := 0;
  Progres.Visible := True;
  StatusBar1.SimpleText := 'Hizmetler Okunuyor...';

  if mrYes = ShowMessageSkin('Seçili Takipler Ýçin Okuma Ýþlemi Baþlayacak',
    'Onaylýyormusunuz ?', '', 'msg') then
  begin
    for satir := 0 to Takipler.Controller.SelectedRowCount - 1 do
    begin
      // Takipler.DataController.FocusedRowIndex := satir;
      // x := Takipler.DataController.GetFocusedRecordIndex;
      Takipler.DataController.FocusedRowIndex :=
        Takipler.Controller.SelectedRows[satir].RecordIndex;
      Application.ProcessMessages;

      takip := Takipler.DataController.GetValue
        (Takipler.Controller.SelectedRows[satir].RecordIndex, 1);

      sql := 'exec sp_TakipKontrol ' + QuotedStr(takip);
      datalar.QuerySelect(ado, sql);
      if not ado.Eof then
      begin
        ado.First;
        while not ado.Eof do
        begin
          txtHatalar.Lines.Add(ado.Fields[0].AsString + ' ' + ado.Fields[1]
              .AsString);
          txtHatalar.Lines.Add('----------------------------------');
          ado.Next;
        end;
      end
      else
      begin
      end;
      Progres.Progress := Progres.Progress + 1;
    end;
  end;
  ado.Free;

end;

procedure TfrmTakipKontrol.T1Click(Sender: TObject);
var
  r: integer;
begin
  inherited;

  if UserRight('Hasta Kartý', 'Tedavi Kartý') = false then
  begin
    ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !', '', '', 'info');
    exit;
  end;
  r := Takipler.DataController.DataControllerInfo.FocusedRecordIndex;
 (*
  Application.CreateForm(TfrmTedaviBilgisi, frmTedaviBilgisi);
  GorselAyar(frmTedaviBilgisi, datalar.global_img_list4);
  frmTedaviBilgisi.TedaviBilgi(Takipler.DataController.Values[r, 3],
    Takipler.DataController.Values[r, 2], Takipler.DataController.Values[r,
    5], '', Takipler.DataController.Values[r, 4], '');
  frmTedaviBilgisi.ShowModal;
   *)
end;

procedure TfrmTakipKontrol.TakiplerFocusedRecordChanged
  (Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin

  id := AFocusedRecord.Index;
  ADO_SQL.Locate('TakýpNo', AFocusedRecord.Values[1], []);

  cxGroupBox1.Caption := 'Açýklama  [ ' + AFocusedRecord.Values[4] + ' ]';
  dn := AFocusedRecord.Values[2];
  gn := AFocusedRecord.Values[3];

  ADO_TahlillSQL.close;
  ADO_TahlillSQL.Parameters[0].Value := AFocusedRecord.Values[1];
  ADO_TahlillSQL.Open;

 // ADO_DigerSistem.close;
 // ADO_DigerSistem.Parameters[0].Value := AFocusedRecord.Values[1];
 // ADO_DigerSistem.Open;

  cxMemo1.Lines.Text := AFocusedRecord.Values[15];
  GridHizmetler.ViewData.Expand(true);

  // ShowMessage(AFocusedRecord.Values[5]);
end;

procedure TfrmTakipKontrol.TakiplerStylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  if (ARecord.Values[9] = ARecord.Values[10]) and
    (ARecord.Values[11] = ARecord.Values[12]) and
    (ARecord.Values[13] = ARecord.Values[14]) Then
    AStyle := cxStyle2
  Else
    AStyle := cxStyle1;

end;

end.
