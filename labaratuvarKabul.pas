unit labaratuvarKabul;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, BaseGrid, AdvGrid, ComCtrls, Mask,
  Buttons, ExtCtrls , DBGridEh, GirisUnit,KadirType,
  EditType, DB, ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, Menus, cxCurrencyEdit,kadir, cxCheckBox,
  cxImageComboBox,strUtils, dxmdaset, ToolWin, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, XMLDoc,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, AdvObj,
  rxToolEdit, cxGroupBox, cxPCdxBarPopupMenu,
  cxPC, InvokeRegistry, Rio, SOAPHTTPClient,
  cxCalendar, cxTextEdit, cxButtons, KadirLabel;

type
   TKabulBilgi = record
    dosyaNo : string;
    gelisNo : string;
    detayNo : string;
    code : string;
    grup : string;
    kabulTarihi : string;
    kabulEden : string;
    durum : string;
    Icode : string;
    name : string;
    sira : string;
    yas : string;
    cins : string;
end;

type
  TfrmLabaratuvarKabul = class(TGirisForm)
    pnlToolBar: TPanel;
    txtTarih: TDateEdit;
    pnlOnay: TPanel;
    txtinfo: TLabel;
    sayfalar_LabKabul: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    gridGelisler: TAdvStringGrid;
    txtHatalar: TMemo;
    Panel2: TPanel;
    Panel3: TPanel;
    labKabul: TADOQuery;
    DataSource1: TDataSource;
    txtDosyaNo: TLabel;
    ADO_TESTSONUCLARI_: TADOTable;
    DataSource2: TDataSource;
    cxGrid1: TcxGrid;
    gridLabHazir: TcxGridDBTableView;
    gridLabHazirColumn1: TcxGridDBColumn;
    gridLabHazirColumn2: TcxGridDBColumn;
    gridLabHazirColumn3: TcxGridDBColumn;
    gridLabHazirColumn4: TcxGridDBColumn;
    gridLabHazirColumn5: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    gridLabHazirColumn6: TcxGridDBColumn;
    gridLabHazirColumn7: TcxGridDBColumn;
    gridLabHazirColumn8: TcxGridDBColumn;
    gridLabHazirColumn9: TcxGridDBColumn;
    gridLabHazirColumn10: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle3: TcxStyle;
    cxStyleRepository4: TcxStyleRepository;
    cxStyle4: TcxStyle;
    cxStyleRepository5: TcxStyleRepository;
    cxStyle5: TcxStyle;
    cxStyleRepository6: TcxStyleRepository;
    cxStyle6: TcxStyle;
    gridLabHazirColumn11: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    x1: TMenuItem;
    ADO_TESTSONUCONCEKI_: TADOTable;
    DataSource3: TDataSource;
    ADO_SQL3: TADOQuery;
    DataSource4: TDataSource;
    gridLabHazirColumn12: TcxGridDBColumn;
    PopupMenu2: TPopupMenu;
    HastannTmTahlilleriniKabulEt1: TMenuItem;
    cxStyle7: TcxStyle;
    cxStyleRepository7: TcxStyleRepository;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    ADO_TESTSONUCLARI: TADOQuery;
    ADO_TESTSONUCONCEKI: TADOQuery;
    Panel6: TPanel;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    labKabul_liste: TADOQuery;
    DataSource5: TDataSource;
    Panel8: TPanel;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    Panel9: TPanel;
    cxGrid6: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    ADO_SQL33: TADOQuery;
    DataSource6: TDataSource;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    gridLabHazirColumn13: TcxGridDBColumn;
    cxStyle10: TcxStyle;
    txtTum: TCheckBox;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridDBTableView3Column3: TcxGridDBColumn;
    gridLabHazirColumn14: TcxGridDBColumn;
    txtGrup: TCheckBox;
    PopupMenu3: TPopupMenu;
    mnSe1: TMenuItem;
    CheckBox1: TCheckBox;
    gridLabHazirColumn15: TcxGridDBColumn;
    TabSheet3: TTabSheet;
    LabSonucHazir: TADOQuery;
    DataSource7: TDataSource;
    N1: TMenuItem;
    mnTekrarYazdrcam1: TMenuItem;
    gridLabHazirColumn16: TcxGridDBColumn;
    N2: TMenuItem;
    AklamaBilgisi1: TMenuItem;
    pnlAciklama: TPanel;
    Panel1: TPanel;
    txttext: TMemo;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    gridLabHazirColumn17: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    gridSonuc: TcxGridDBBandedTableView;
    gridSonucColumn1: TcxGridDBBandedColumn;
    gridSonucColumn2: TcxGridDBBandedColumn;
    gridSonucColumn3: TcxGridDBBandedColumn;
    gridSonucColumn4: TcxGridDBBandedColumn;
    ADO_Result: TADOQuery;
    DataSource8: TDataSource;
    gridLabHazirColumn18: TcxGridDBColumn;
    cxGridDBTableView5Column1: TcxGridDBColumn;
    chkTarih: TcxCheckBox;
    gridLabHazirColumn19: TcxGridDBColumn;
    gridSonucColumn5: TcxGridDBBandedColumn;
    gridSonucColumn7: TcxGridDBBandedColumn;
    N3: TMenuItem;
    i1: TMenuItem;
    L1: TMenuItem;
    S1: TMenuItem;
    N4: TMenuItem;
    B1: TMenuItem;
    cxGridDBTableView4Column1: TcxGridDBColumn;
    gridLabHazirColumn20: TcxGridDBColumn;
    Timer1: TTimer;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    gridLabHazirColumn21: TcxGridDBColumn;
    LabInVitroTest: THTTPRIO;
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel5: TPanel;
    Button2: TButton;
    chkDisLab: TCheckBox;
    txtLogs: TMemo;
    Label1: TLabel;
    cxGridDBTableView4Column2: TcxGridDBColumn;
    btnAra: TcxButtonKadir;
    btnGuncelle: TcxButtonKadir;
    btnYazdir: TcxButtonKadir;
    btnYat: TcxButtonKadir;
    btnSend: TcxButtonKadir;
    btnTumSend: TcxButtonKadir;
    btnSend1: TcxButtonKadir;
    btnBarkodBas: TcxButtonKadir;
    btnElleGir: TcxButtonKadir;
    function LabKabulBekleyen(tarih1: string) : boolean;
    procedure btnVazgecClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure gridGelislerCheckBoxClick(Sender: TObject; ACol,
      ARow: Integer; State: Boolean);
    procedure SatiriAl(satir : integer);
    procedure gridGelislerClickSort(Sender: TObject; ACol: Integer);
    procedure gridGelislerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RenkKontrol;
    procedure sayfalar_LabKabulChange(Sender: TObject);
    procedure txtHastaButtonClick(Sender: TObject);
    procedure btnElleGirClick(Sender: TObject);
    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView1EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure x1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure cxGridDBTableView3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure HastannTmTahlilleriniKabulEt1Click(Sender: TObject);
    procedure gridLabHazirDblClick(Sender: TObject);
    procedure cxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure ADO_SQL3AfterScroll(DataSet: TDataSet);
    procedure labKabulAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPolClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGridDBTableView4DblClick(Sender: TObject);
    procedure btnYatClick(Sender: TObject);
    procedure ADO_SQL33AfterScroll(DataSet: TDataSet);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure txtTumClick(Sender: TObject);
    procedure btnCihazClick(Sender: TObject);
    procedure mnSe1Click(Sender: TObject);
    procedure barkodBas(kabul,tip : string);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure mnTekrarYazdrcam1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure AklamaBilgisi1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DataControllerDetailExpanded(
      ADataController: TcxCustomDataController; ARecordIndex: Integer);
    procedure gridLabHazirDataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure gridLabHazirDataControllerDetailExpanded(
      ADataController: TcxCustomDataController; ARecordIndex: Integer);
    procedure gridLabHazirKeyPress(Sender: TObject; var Key: Char);
    procedure ADO_TESTSONUCLARIBeforePost(DataSet: TDataSet);
    procedure btnAraClick(Sender: TObject);
    procedure btnGuncelleClick(Sender: TObject);
    procedure btnSeanslarClick(Sender: TObject);
    procedure btnYazdirClick(Sender: TObject);
//    procedure L1Click(Sender: TObject);
//    function HastabilgileriDoldurInVitro(dosyaNo : string ; gelis : string ; barkod : string) : THastaGirisBilgileri;
//    function HastaIstekBilgileriInVitro(dosyaNo : string ; gelisNo , Tip ,barkod : string) : TTESTARRAY;
//    procedure S1Click(Sender: TObject);
    procedure disLabKabul(dosyaNo,gelisNo,barkod, DisLabBarkod , code , lab: string);
    procedure disLabSonucOk(barkod , code : string);
    function dislabbarkodTObarkod(dislabBarkod : string) : string;
    procedure Timer1Timer(Sender: TObject);
    procedure cxGridDBTableView4StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure LabInVitroTestBeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure btnBarkodBasClick(Sender: TObject);

  private
    { Private declarations }
  public
     bilgi : TKabulBilgi;
     dosyaNo,gelisNo,detayNo,code , sira , cihaz : string ;
       _comport_ : string;
       function Init(Sender: TObject) : Boolean;
    { Public declarations }
  end;

var
  frmLabaratuvarKabul: TfrmLabaratuvarKabul;
  openTable : boolean = True;
  _tarih : Tdate;
  kabulNo : string;
  dosyaNo,gelisNo,detayNo : string;


implementation

uses data_modul,rapor, labParametreleri,LabSonucGir;
 // labkabulArama,LabSonucGir, tetkiksonucBilgisi,
 // login;

function TfrmLabaratuvarKabul.Init(Sender: TObject) : Boolean;
begin
  Result := True;
end;

function TfrmLabaratuvarKabul.dislabbarkodTObarkod(dislabBarkod : string) : string;
var
  sql : string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select top 1 barkodNo from  LaboratuvarKabul where disLabBarkodNo = ' + QuotedStr(dislabBarkod);
    datalar.QuerySelect(ado,sql);

    if not ado.Eof
    then begin
      dislabbarkodTObarkod := ado.Fields[0].AsString;
    end
    else dislabbarkodTObarkod := '0';
  finally
    ado.Free;
  end;
end;

(*
procedure TfrmLabaratuvarKabul.SonuzYaz(S : TSonucAlCevap ; c  : integer ; barkod : string);
var
  SonucAlGiris : TSonucAlInput;
  SonucAlCevap : TSonucAlCevap;
  SonucB : SonucBilgisi;
  Sonuclar : ArraySonucBilgisi;
  I, testAdet , j , x : integer;
  dosyaNo,gelisNo , testKod , sm , _F_ ,sql , sonuc , a,b,t1,t2 , tt , tip : string;
  ado : TADOQuery;
  t : boolean;
  LabKod , k , kod : string;
begin
    testadet := Length(S.HASTASONUCARRAY);
    SetLength(Sonuclar,testAdet);

   if testAdet > 0
   then Begin

    for x := 0 to testAdet - 1 do
    begin
      SonucB.KabulNo := '';
      SonucB.TestNo := '';
      SonucB.Sonuc := '';

      Labkod := '';
      LabKod := CihazTestKodu_To_LisTestKodu(s.HASTASONUCARRAY[x].LABKODU);
      if LabKod = ''
      Then
      LabKod := CihazTestKodu_To_LisTestKodu(s.HASTASONUCARRAY[x].BUTCEKODU);

      if LabKod = ''
      Then
      LabKod := CihazTestKodu_To_LisTestKodu(s.HASTASONUCARRAY[x].PARAMETREADI);



      SonucB.KabulNo := barkod;
      SonucB.TestNo := LabKod;
      SonucB.Sonuc := s.HASTASONUCARRAY[x].SONUC;
      Sonuclar[x] := SonucB;

      txtLog.Lines.Add(barkod + '-' + LabKod + '-' + s.HASTASONUCARRAY[x].SONUC + '-' +s.HASTASONUCARRAY[x].BUTCEKODU+'-'+s.HASTASONUCARRAY[x].LABKODU+'-'+s.HASTASONUCARRAY[x].PARAMETREADI);
      txtLogs.Lines.Add(barkod + '-' + LabKod + '-' + s.HASTASONUCARRAY[x].SONUC + '-' +s.HASTASONUCARRAY[x].BUTCEKODU+'-'+s.HASTASONUCARRAY[x].LABKODU+'-'+s.HASTASONUCARRAY[x].PARAMETREADI);


      if s.HASTASONUCARRAY[x].LABKODU = ''
      then kod := s.HASTASONUCARRAY[x].BUTCEKODU
      else
      kod := s.HASTASONUCARRAY[x].BUTCEKODU+'-'+s.HASTASONUCARRAY[x].LABKODU;

      disLabSonucOk(SonucAlGiris.BARKOD,kod);

    end; // test for end
    SonucKaydet(Sonuclar);
    //ShowMessageSkin(SonucKaydet(Sonuclar),'','','info');
   end
   Else
    ShowMessageSkin('Sonuç Bilgisi Yok','','','info');
end;

*)

procedure TfrmLabaratuvarKabul.disLabSonucOk(barkod , code : string);
var
  sql : string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := DATALAR.ADOConnection2;
    sql := 'update LaboratuvarKabul set disLabSonucOk = 1,sec = 1 '  +
           ' where disLabbarkodNo = ' + QuotedStr(barkod) + ' and code = ' + QuotedStr(code);
    datalar.QueryExec(ado,sql);
  finally
    ado.Free;
  end;
end;

procedure TfrmLabaratuvarKabul.disLabKabul(dosyaNo,gelisNo,barkod , disLabBarkod, code , lab : string);
var
  sql : string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := DATALAR.ADOConnection2;

    sql := 'update LaboratuvarKabul set disLabKabul = ' + QuotedStr(lab) + ', disLabbarkodNo = ' + QuotedStr(DisLabBarkod) +
           ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo + ' and  barkodNo = ' + QuotedStr(barkod);
    datalar.QueryExec(ado,sql);
  finally
    ado.Free;
  end;
end;

(*
function TfrmLabaratuvarKabul.HastaIstekBilgileriInVitro(dosyaNo : string ; gelisNo , Tip , barkod : string) : TTESTARRAY;
var
  sql : string;
  Testler : TTESTARRAY;
  ado : TADOQuery;
  i , j : integer;
  kod , ckod : string;
begin
  i := 0;
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  sql := 'select * from LaboratuvarKabul ' +
         ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo + ' and barkodNo = ' + QuotedStr(barkod) +
         ' and isnull(disLabBarkodNo,'''') = ''''';
  datalar.QuerySelect(ado,sql);
  j := ado.RecordCount;
  SetLength(Testler,j);

  while not ado.Eof do
  begin

    Testler[i]:= StringReplace(ado.fieldbyname('code').AsString,'_','-',[rfReplaceAll]);// CihazTestKodu_To_LisTestKodu(ado.fieldbyname('code').AsString);

    i := i + 1;

    ado.Next;
  end;

  result := Testler;
end;


function TfrmLabaratuvarKabul.HastabilgileriDoldurInVitro(dosyaNo : string ; gelis : string ; barkod : string) : THastaGirisBilgileri;
var
  sql : string;
  IHastaGirisBilgileri : THastaGirisBilgileri;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  IHastaGirisBilgileri := THastaGirisBilgileri.Create;


  sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
  datalar.QuerySelect(ado,sql);

  IHastaGirisBilgileri.TCKIMLIKNO := StrToInt64(ado.fieldbyname('TCKIMLIKNO').AsString);
  IHastaGirisBilgileri.ADI := ado.fieldbyname('HASTAADI').AsString;
  IHastaGirisBilgileri.SOYADI := ado.fieldbyname('HASTASOYADI').AsString;
  IHastaGirisBilgileri.Cinsiyeti := strtoint(ifThen(ado.fieldbyname('CINSIYETI').AsString = '0','1','2'));
  IHastaGirisBilgileri.DOGUMTARIHI := FormattedTarih(ado.fieldbyname('DOGUMTARIHI').Asstring);
  IHastaGirisBilgileri.BABAADI := ado.fieldbyname('BABAADI').AsString;
  sql := 'select * from gelisler where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis;
  datalar.QuerySelect(ado,sql);

  IHastaGirisBilgileri.KLINIKKODU := strtoint(ado.Fieldbyname('SERVIS').AsString);

 // IHastaGirisBilgileri. BARKOD := barkod;
  IHastaGirisBilgileri.HASTANEKODU := datalar._labusername;
  IHastaGirisBilgileri.SIFRE := datalar._labsifre;

  ado.Free;
  result := IHastaGirisBilgileri;
end;

*)

procedure TfrmLabaratuvarKabul.barkodBas(kabul,tip : string);
var
  sql : string;
  ado : TADOQuery;
  TopluDataset : TDataSetKadir;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    if CheckBox1.Checked = False
    Then Begin
      sql := 'exec sp_barkodBas ' + QuotedStr(kabul) + ',' + QuotedStr(tip);
      datalar.QuerySelect(ado,sql);
      TopluDataset.Dataset0 := ado;
      PrintYap('300','\Labbarkod',inttoStr(TagfrmLabKabul) ,TopluDataset,pTNone);

  //    frmRapor.raporData(ado,'300','\Labbarkod','fis');
  //    frmRapor.ShowModal;
    End
    Else
    Begin
      sql := 'exec sp_barkodBas ' + QuotedStr(kabul) + ',' + QuotedStr('') +
            ',' + QuotedStr('1');
      datalar.QuerySelect(ado,sql);
      TopluDataset.Dataset0 := ado;
      PrintYap('300','\Labbarkod',inttoStr(TagfrmLabKabul) ,TopluDataset,pTNone);
 //     frmRapor.raporData(ado,'301','\Labbarkod','fis');
 //     frmRapor.ShowModal;
    End;
  finally
    ado.Free;
  end;
end;


procedure TfrmLabaratuvarKabul.RenkKontrol;
var
   x : integer;
begin
     for x := 1 to gridGelisler.RowCount do
     begin
          if gridGelisler.Cells[25,x] = 'DEL'
          then SatiriRenklendir(gridGelisler,x,20,clred);
          if gridGelisler.Cells[25,x] = 'T'
          then SatiriRenklendir(gridGelisler,x,20,clAqua);


     end;
end;


(*
procedure TfrmLabaratuvarKabul.S1Click(Sender: TObject);
var
  SonucAlGiris : TSonucAlInput;
  SonucAlCevap : TSonucAlCevap;
  SonucB : SonucBilgisi;
  Sonuclar : ArraySonucBilgisi;
  I,s , testAdet , j , x : integer;
  dosyaNo,gelisNo , testKod , sm , _F_ ,sql , sonuc , a,b,c,t1,t2 , tt , tip ,barkod: string;
  ado : TADOQuery;
  t : boolean;


begin

     pnlSonucCek.Visible := True;
     txtLog.Clear;
     ilerleme.MaxValue := 1;
     ilerleme.Progress := 0;

     datalar.Login;
     if datalar._labfirma = '' then exit;
     SonucAlGiris := TSonucAlInput.Create;
     SonucAlCevap := TSonucAlCevap.Create;
     SonucAlGiris.HASTANEKODU := datalar._labusername;
     SonucAlGiris.SIFRE := datalar._labsifre;

     ado := TADOQuery.Create(nil);
     ado.Connection := datalar.ADOConnection2;

     txtinfo.Caption := 'Alýnýyor...';

     dosyaNo := labKabul.FieldByName('dosyaNo').AsString;
     gelisNo := labKabul.FieldByName('gelisNo').AsString;
     barkod :=  labKabul.FieldByName('KabulNo').AsString;

     SonucAlGiris.BARKOD := labKabul.FieldByName('disLabbarkodNo').AsString;


      try
       SonucAlCevap := (datalar.LabSonucAlInVitro as ISonucAl).HASTASONUCAL(SonucAlGiris);
      except on e : Exception do
       begin
         sm := e.Message;
       end;
      end;


      if SonucAlCevap.HATAKODU = '0000'
      Then Begin
        SonuzYaz(SonucAlCevap,0,barkod);
//        disLabSonucOk(SonucAlGiris.BARKOD);

      End
      Else ShowMessageSkin('Sonuçlar Alýnýrken Hata Oluþtu',SonucAlGiris.BARKOD ,SonucAlCevap.HATAACIKLAMA,'info');

       ilerleme.Progress := 1;

end;

*)
procedure TfrmLabaratuvarKabul.SatiriAl(satir : integer);
begin
     bilgi.dosyaNo := ADO_SQL3.fieldbyname('dosyaNo').AsString;
     bilgi.gelisNo := ADO_SQL3.fieldbyname('gelisNo').AsString;
//     bilgi.detayNo := ADO_SQL3.fieldbyname('YTakýpNo').AsString;
     bilgi.code := ADO_SQL3.fieldbyname('HizmetKodu').AsString;
     bilgi.Icode := ADO_SQL3.fieldbyname('code').AsString;
     bilgi.grup := '';
     bilgi.kabulTarihi := tarihal(date());
     bilgi.kabulEden := datalar._username;
     bilgi.durum := '0';
     bilgi.name := ADO_SQL3.fieldbyname('HizmetAdý').AsString;
     bilgi.sira := ADO_SQL3.fieldbyname('SIRANO').AsString;
     bilgi.yas := ADO_SQL3.fieldbyname('yas').AsString;
     bilgi.cins := ADO_SQL3.fieldbyname('cinsiyet').AsString;
end;


function TfrmLabaratuvarKabul.LabKabulBekleyen(tarih1 : string) : boolean;
var
   sql , tip : string;
   satir : integer;
begin

     if chkTarih.Checked = true
     Then tip := '3'
     else tip := '1';

     txtinfo.Caption := 'Ýþ Listesi Oluþturuluyor , Lütfen Bekleyiniz...';

     txtTarih.Date := strtodate(FormattedTarih(tarih1));
     ADO_SQL33.close;
     ADO_SQL33.SQL.Clear;
     sql := 'exec sp_LabKabulListesi  @tarih1 = ' + #39 + tarih1 + #39 + ',' +
            ' @dosyaNo = ' + QuotedStr('') + ',' + '@gelisNo = 0' + ',' + '@tip = ' + QuotedStr(tip);
     Application.ProcessMessages;
     datalar.QuerySelect(ADO_SQL33,sql);

   //  Query2Grid3(gridGelisler,datalar.ADO_SQL3,True,True,1,0);

     if ADO_SQL33.Eof
     then result := False else result := True;

     txtinfo.Caption := '';

end;



{$R *.dfm}

procedure TfrmLabaratuvarKabul.btnVazgecClick(Sender: TObject);
begin
     ADO_TESTSONUCLARI.Close;
     ADO_TESTSONUCONCEKI.Close;
     close;
//     free;
end;

procedure TfrmLabaratuvarKabul.btnSendClick(Sender: TObject);
var
   sql , seciliSatir  : string;
   i , x  : integer;
   sRenk : Tcolor;
   ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := ' exec sp_YeniLabKabulNoAl ';
    datalar.QuerySelect(ado,sql);
    kabulNO := ado.Fields[0].AsString;
    ado.Close;
  finally
    ado.Free;
  end;
  SatiriAl(0);

  datalar.ADO_SQL4.close;
  datalar.ADO_SQL4.SQL.Clear;
  sql := 'exec sp_YeniLabKabul ' +
         #39 + bilgi.dosyaNo + #39 + ',' +
         bilgi.gelisNo + ',' +
         #39 + bilgi.code + #39 + ',' +
         #39 + bilgi.grup + #39 + ',' +
         #39 + bilgi.kabulTarihi + #39 + ',' +
         #39 + bilgi.kabulEden + #39 + ',' +
         #39 + bilgi.durum + #39 + ',' +
         #39 + bilgi.Icode + #39 + ',' +
         #39 + bilgi.name + #39 + ',' +
         #39 + bilgi.sira + #39 + ',' +
         #39 + kabulNo + #39;

  datalar.QueryExec(datalar.ADO_SQL4,sql);


  datalar.ADO_SQL.Close;
  datalar.ADO_SQL.SQL.Clear;

  sql := 'exec sp_labSonucGir ' + #39 + tarihal(txtTarih.Date) + #39 + ',' +
         #39 + bilgi.dosyaNo + #39 + ',' +
         #39 + bilgi.Icode + #39 + ',' +
         #39 + bilgi.yas + #39 + ',' +
         #39 + bilgi.cins + #39;

  datalar.QueryExec(datalar.ADO_SQL,sql);


  if TcxButton(sender).Tag = -1
  Then Begin
    dosyaNo := bilgi.dosyaNo;
    gelisNo := bilgi.gelisNo;
    detayNo := bilgi.detayNo;
    code := bilgi.Icode;
    sira := bilgi.sira;

    sql := 'select * from laboratuvar_sonuc ' +
           ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisno = ' + gelisno +
           ' and code = ' + QuotedStr(code) + ' and hareketSira = ' + sira;
    ADO_TESTSONUCLARI.close;
    ADO_TESTSONUCLARI.SQL.Clear;
    datalar.QuerySelect(ADO_TESTSONUCLARI,sql);
    //frmLabSonucGir.pnlTitle.Caption := 'Sonuç Giriþi : ' + ADO_SQL33.fieldbyname('Hasta').AsString + ' - ' + code + ' - ' + ADO_SQL3.fieldbyname('HizmetKodu').AsString;
    GorselAyar(frmLabSonucGir,DATALAR.global_img_list4);
    frmLabSonucGir.ShowModal;
  End
  Else Begin
    ShowMessageSkin('Laboratuvar Kaydý ALýndý','','','info');
    ADO_SQL3.Locate('dosyaNo;gelisNo',
                            VarArrayOf([bilgi.dosyaNo,bilgi.gelisNo])
                            ,[loPartialKey]);
    cxGridDBTableView3DblClick(nil);
  End;
end;

procedure TfrmLabaratuvarKabul.gridGelislerCheckBoxClick(Sender: TObject;
  ACol, ARow: Integer; State: Boolean);
begin
     if state = true
     then begin
          gridGelisler.Cells[25,arow] := 'T';

     end;

     if state = false
     then begin
        gridGelisler.Cells[25,arow] := 'F';

     end;

end;

procedure TfrmLabaratuvarKabul.gridGelislerClickSort(Sender: TObject;
  ACol: Integer);
var
   x : integer;
begin
     gridGelisler.SortByColumn(Acol);
     gridGelisler.SortIndexes.Add(Acol);
     gridGelisler.QSortIndexed;

     for x := 1 to gridGelisler.RowCount do
     begin
          gridGelisler.Cells[0,x] := inttostr(x);

     end;


end;

procedure TfrmLabaratuvarKabul.gridGelislerKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
   renk : Tcolor;
begin
     if key = vk_insert
     then begin
               renk := gridGelisler.Colors[25,gridGelisler.Row];
               if gridGelisler.Cells[25,gridGelisler.Row] = 'T'
               then gridGelisler.Cells[25,gridGelisler.Row] := 'F' else
               gridGelisler.Cells[25,gridGelisler.Row] := 'T';
               if gridGelisler.Cells[25,gridGelisler.Row] = 'F'
               then SatiriRenklendir(gridGelisler,gridGelisler.Row,11,renk);
               RenkKontrol;
     end;

end;

procedure TfrmLabaratuvarKabul.sayfalar_LabKabulChange(Sender: TObject);
begin

     if sayfalar_LabKabul.ActivePageIndex = 0
     then begin
       btnTumSend.Visible := true;
       btnSend.Visible := true;
       btnSend1.Visible := true;
       btnGuncelle.Visible := false;
       btnYazdir.Visible := false;
    //   btnSeanslar.Visible := true;
    //   btnPol.Visible := true;
       btnYat.Visible := true;
     end
     else
     if sayfalar_LabKabul.ActivePageIndex = 1
     Then begin
       btnTumSend.Visible := false;
       btnSend.Visible := false;
       btnSend1.Visible := false;
       btnGuncelle.Visible := true;
       btnYazdir.Visible := true;
    //   btnSeanslar.Visible := false;
       openTable := true;
     end
     else
     if sayfalar_LabKabul.ActivePageIndex = 2
     Then Begin
       btnTumSend.Visible := false;
       btnSend.Visible := false;
       btnSend1.Visible := false;
       btnGuncelle.Visible := false;
       btnYazdir.Visible := true;
   //    btnSeanslar.Visible := false;
       btnYat.Visible := false;
   //    btnPol.Visible := false;
       openTable := False;
     End;






end;

procedure TfrmLabaratuvarKabul.txtHastaButtonClick(Sender: TObject);
var
   key : word;
begin
    Key := VK_F1;
  //  txtHastaKeyDown(Sender, key, []);

end;

procedure TfrmLabaratuvarKabul.btnElleGirClick(Sender: TObject);
var
      sql , _grup_ : string ;
begin

      datalar.ADO_SQL.Close;
      datalar.ADO_SQL.SQL.Clear;

      sql := 'exec sp_labSonucGir ' + #39 + tarihal(txtTarih.Date) + #39 + ',' +
             #39 + labkabul.fieldbyname('DosyaNo').AsString + #39 + ',' +
             #39 + labkabul.fieldbyname('TestKodu').AsString + #39 + ',' +
             labkabul.fieldbyname('yas').AsString + ',' +
             #39 + labkabul.fieldbyname('Cinsiyet').AsString + #39;


      datalar.QueryExec(datalar.ADO_SQL,sql);

//      .Active := false;
//      ADO_TESTSONUCLARI.Active := True;


     dosyaNo := labKabul.fieldbyname('dosyaNo').AsString;
     gelisNo := labKabul.fieldbyname('gelisNo').AsString;
  //   detayNo := labKabul.fieldbyname('KartDetay').AsString;
     code := labKabul.fieldbyname('TestKodu').AsString;
     sira := labKabul.fieldbyname('HareketlerSira').AsString;
     _grup_ := labKabul.fieldbyname('OZELKOD').AsString;

     bilgi.dosyaNo := dosyaNo;
     bilgi.gelisNo := gelisNo;
     bilgi.detayNo := detayNo;


  (*
   sql := 'select parametreadi,parametrebirim,sonuc1,ref_aciklama,sira,normal1+'' - ''+normal2 as Panik,ikaz from laboratuvar_sonuc ' +
          ' where barkodNo = ' + QuotedStr(k) + ' and testNo = ' + QuotedStr(_kod_);
    *)

     if txtGrup.Checked = False
     Then
           sql := 'select parametre_sira,parametreadi,parametreadi1,parametrebirim ,normal1,normal2,ref_aciklama,sonuc1,sonuc2,sonuc3,' +
                  ' aciklama,tip,testno,lk.OZELKOD,g.SLT ' +
                  ' from laboratuvar_sonuc ls ' +
                  ' left join HIZMET lk on lk.code = ls.testno ' +
                  ' left join lab_gruplari g on g.SLB = lk.OZELKOD ' +
                  ' where ls.dosyaNo = ' + QuotedStr(dosyaNo) + ' and ls.gelisno = ' + gelisno +
                  ' and ls.testno = ' + QuotedStr(code) + ' and ls.hareketSira = ' + sira +
                  ' order by parametre_sira '


     Else
           sql := 'select parametre_sira,parametreadi,parametreadi1,parametrebirim ,normal1,normal2,ref_aciklama,sonuc1,sonuc2,sonuc3,' +
                  ' aciklama,tip,testno,lk.OZELKOD,g.SLT ' +
                  ' from laboratuvar_sonuc ls ' +
                  ' left join HIZMET lk on lk.code = ls.testno ' +
                  ' left join lab_gruplari g on g.SLB = lk.OZELKOD ' +
                  ' where ls.dosyaNo = ' + QuotedStr(dosyaNo) + ' and ls.gelisno = ' + gelisno +
                  ' and ls.OZELKOD = ' + QuotedStr(_grup_) +
                  ' order by ls.code,parametre_sira ';
                //  ' and code = ' + QuotedStr(code) + ' and hareketSira = ' + sira;



     ADO_TESTSONUCLARI.close;
     ADO_TESTSONUCLARI.SQL.Clear;
     datalar.QuerySelect(ADO_TESTSONUCLARI,sql);


     gridLabHazirDblClick(nil);


//     frmLabSonucGir.pnlTitle.Caption :=
 //    'Sonuç Giriþi : ' + labKabul_liste.fieldbyname('HastaAdý').AsString + ' - ' + code + ' - ' +

  //   ifThen(txtGrup.Checked,LabGrupKodAdi(_grup_),labKabul.fieldbyname('TestAdý').AsString);

     Application.CreateForm(TfrmLabSonucGir, frmLabSonucGir);
     try
       frmLabSonucGir.sonucGir.DataController.DataSource := DataSource2;
       frmLabSonucGir.ShowModal;
     finally
       FreeAndNil (frmLabSonucGir);
     end;

     cxGridDBTableView4DblClick(nil);



end;

procedure TfrmLabaratuvarKabul.cxGridDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (key = vk_f7)
   Then begin
       //  gridLabHazirDblClickDataController.Edit;

   End;

end;


procedure TfrmLabaratuvarKabul.cxGridDBTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
var
  sira ,sql ,testKodu,deger : string;
begin


   if key = vk_f7
   Then begin
   aedit.EditValue := 'NEGATÝF';
   aedit.PostEditValue;

   end;

   if key = vk_f6
   Then
   aedit.EditValue := 'POZÝTÝF';
   aedit.PostEditValue;

   if key = vk_return
   Then Begin
    aedit.PostEditValue;
    ADO_TESTSONUCLARI.Next;
   End;


end;

procedure TfrmLabaratuvarKabul.PopupMenu1Popup(Sender: TObject);
var
   x : integer;
   menu :  TMenuItem;
   sira,testKodu,sql : string;
begin
        sira := ADO_TESTSONUCLARI.fieldbyname('parametre_sira').AsString;
        testKodu := ADO_TESTSONUCLARI.fieldbyname('testNo').AsString;

        sql := 'select * from labOtoDeger where sira = ' + sira + ' and kod = ' + QuotedStr(testKodu);
        datalar.ADO_SQL.Close;
        datalar.ADO_SQL.SQL.Clear;
        datalar.QuerySelect(datalar.ADO_SQL,sql);

        PopupMenu1.Items.Clear;

//        dizi := TMenuItem.Create(nil);

        for  x := 1 to datalar.ADO_SQL.RecordCount do
        begin

            Menu := TMenuItem.Create(Self);
            menu.Caption := datalar.ADO_SQL.fieldbyname('ifade').AsString;
            menu.Tag := x;
          //  menu.OnClick := frmLabaratuvarKabul.sBitBtn2.OnClick;
            PopupMenu1.Items.Add(menu);

            datalar.ADO_SQL.Next;
        end;



end;

procedure TfrmLabaratuvarKabul.x1Click(Sender: TObject);
begin
     ADO_TESTSONUCLARI.Edit;
     ADO_TESTSONUCLARI.FieldByName('sonuc1').AsString := TMenuItem(sender).Caption;
     ADO_TESTSONUCLARI.Post;
end;

procedure TfrmLabaratuvarKabul.sBitBtn2Click(Sender: TObject);
begin

     frmLabSonucGir.ShowModal;

end;

procedure TfrmLabaratuvarKabul.cxGridDBTableView3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

    if key = vk_f5
    Then btnSend.Click;


end;

procedure TfrmLabaratuvarKabul.HastannTmTahlilleriniKabulEt1Click(
  Sender: TObject);
var
  sql,tarih1 : string;
  adet , i : integer;
  ado : TADOQuery;

begin

  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := ' exec sp_YeniLabKabulNoAl ';
    datalar.QuerySelect(ado,sql);
    kabulNO := ado.Fields[0].AsString;
    ado.Close;
  finally
    ado.Free;
  end;

  tarih1 := tarihal(txtTarih.Date);
  SatiriAl(0);

  datalar.ADO_SQL3.close;
  datalar.ADO_SQL3.SQL.Clear;
  sql := 'exec sp_LabKabulListesi  @tarih1 = ' + #39 + tarih1 + #39 + ',' +
         ' @dosyaNo = ' + QuotedStr(bilgi.dosyaNo) + ',@gelisNo =' + bilgi.gelisNo;

  datalar.QuerySelect(datalar.ADO_SQL3,sql);


  ADO_SQL3.Locate('dosyaNo;gelisNo',
                          VarArrayOf([bilgi.dosyaNo,bilgi.gelisNo])
                          ,[loPartialKey]);




  while not ADO_SQL3.Eof do
  begin
  //         if seciliSatir <> ''
  //         then SatiriAl(datalar.ADO_SQL.Fields[0].AsInteger) else
     SatiriAl(0);

      datalar.ADO_SQL4.close;
      datalar.ADO_SQL4.SQL.Clear;
      sql := 'exec sp_YeniLabKabul ' +
             #39 + bilgi.dosyaNo + #39 + ',' +
             bilgi.gelisNo + ',' +
             #39 + bilgi.code + #39 + ',' +
             #39 + bilgi.grup + #39 + ',' +
             #39 + bilgi.kabulTarihi + #39 + ',' +
             #39 + bilgi.kabulEden + #39 + ',' +
             #39 + bilgi.durum + #39 + ',' +
             #39 + bilgi.Icode + #39 + ',' +
             #39 + bilgi.name + #39 + ',' +
             #39 + bilgi.sira + #39 + ',' +
             #39 + kabulNO + #39;

      datalar.QueryExec(datalar.ADO_SQL4,sql);


     datalar.ADO_SQL.Close;
     datalar.ADO_SQL.SQL.Clear;

     sql := 'exec sp_labSonucGir ' + #39 + tarihal(txtTarih.Date) + #39 + ',' +
            #39 + bilgi.dosyaNo + #39 + ',' +
            #39 + bilgi.Icode + #39 + ',' +
            #39 + bilgi.yas + #39 + ',' +
            #39 + bilgi.cins + #39;

     datalar.QueryExec(datalar.ADO_SQL,sql);


      ADO_SQL3.Next;
  end;

  btnAra.Click;
  ShowMessageSkin('Laboratuvar Kaydý ALýndý','','','info');

  barkodBas(kabulNo,'');


  ADO_SQL3.First;
  cxGridDBTableView3DblClick(nil);


end;

(*
procedure TfrmLabaratuvarKabul.L1Click(Sender: TObject);
var
   HastaGiris : THastaGirisBilgileri;
   TestGiris : TTestGirisInput;
   TestGirisCevap : TTestGirisCevap;
   Testler : TTESTARRAY;
   HastaGirisCevap : THastaGirisCevap;
   I,s : integer;
   dosyaNo,gelisNo , sm , barkod , sql , tip : string;
   t : boolean ;
   ado : TADOQuery;

begin
       datalar.Login;
       if datalar._labfirma = '' then exit;

       HastaGiris := THastaGirisBilgileri.Create;
       HastaGirisCevap := THastaGirisCevap.Create;

       txtinfo.Caption := 'Gönderiliyor...';

       dosyaNo := labKabul.FieldByName('dosyaNo').AsString;
       gelisNo := labKabul.FieldByName('gelisNo').AsString;
       barkod := labKabul.FieldByName('KabulNo').AsString;

       HastaGiris := HastabilgileriDoldurInVitro(dosyaNo,gelisNo,barkod);

       datalar.LabInVitro.URL := 'http://78.187.200.244/HastaEkleWsdl.exe/soap/IHastaEkle';
       //'http://78.187.200.244/AileHekimiWsdl.exe/soap/IAileHekimiHastaEkle';


       try
        HastaGirisCevap := (datalar.LabInVitro as IHastaEkle).HastaGiris(HastaGiris);
       except on e : Exception do
         begin
           sm := e.Message;
            ShowMessageSkin(sm,'','','info');
         end;
       end;

       if HastaGirisCevap.HATAKODU = '0000'
       Then Begin
        //  barkod := HastaGirisCevap.BARKOD;
          TestGiris := TTestGirisInput.Create;
          TestGirisCevap := TTestGirisCevap.Create;
          TestGiris.HASTANEKODU := datalar._labusername;
          TestGiris.SIFRE := datalar._labsifre;
          TestGiris.BARKOD := HastaGirisCevap.BARKOD; //labKabul.FieldByName('KabulNo').AsString;

          LabInVitroTest.URL := 'http://78.187.200.244/TestEkleWsdl.exe/soap/ITESTEKLE';
          //'http://78.187.200.244/AileHekimiTestEkleWsdl.exe/soap/ITESTEKLE';

          try
           TestGirisCevap := (LabInVitroTest as ITESTEKLE).TESTEKLE(TestGiris,HastaIstekBilgileriInVitro(dosyaNo,gelisNo,tip,barkod));
          except on e : Exception do
           begin
             sm := e.Message;
             ShowMessageSkin(sm,'','','info');
           end;
          end;

          if TestGirisCevap.HATAKODU = '0000'
          Then Begin
              disLabKabul(dosyaNo,gelisNo,barkod,HastaGirisCevap.BARKOD,'',datalar._labfirma);

              ShowMessageSkin(barkod + ' - Testler Eklendi','','','info');
          End
          Else ShowMessageSkin(barkod + ' - Testler Eklenirken Hata Oluþtu',TestGirisCevap.HATAACIKLAMA,'','info');

       End
       Else ShowMessageSkin(barkod + ' - Hata Oluþtu : ', HastaGirisCevap.HATAACIKLAMA,'','info');

end;
*)

procedure TfrmLabaratuvarKabul.LabInVitroTestBeforeExecute(
  const MethodName: string; SOAPRequest: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
begin
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));
   memo := Tmemo.Create(nil);
   try
     memo.Parent := frmLabaratuvarKabul;
     memo.Lines.Add(FormatXMLData(R));
     memo.Lines.SaveToFile('InVitroTest.XML');
   finally
     memo.Free;
   end;
end;

procedure TfrmLabaratuvarKabul.gridLabHazirDblClick(
  Sender: TObject);
var
   sql , sira : string;
   bm : TBookmark;


procedure onay;

begin
    sql  := 'update LaboratuvarKabul set sec = ' + '1' +
            ' where sira = ' + sira;
    datalar.ADO_SQL.Close;
    datalar.ADO_SQL.SQL.Clear;
    datalar.QueryExec(datalar.ADO_SQL,sql);
end;

begin
    openTable := True;
    bm := labKabul.GetBookmark;

    sira := labKabul.fieldbyname('sira').AsString;


        if labKabul.FieldByName('sec').AsBoolean = False
        Then Begin
              if (labKabul.FieldByName('tahsilatYapildimi').AsString = 'H')
            //  and  (LabRaporTahsilatOnay = 1)
              Then Begin
                if mrYes = ShowMessageSkin('Tahsilat Yapýlmamýþ , Onaylamak Ýstiyormusunuz?','','','msg')
                Then Begin
                     onay;
                End;
              End
              Else
              Begin
                onay;
              End;


        End
        Else
        Begin
          if mryes = ShowMessageSkin('Onay Ýptal Ediliyor Emin misiniz?','','','msg')
          Then Begin
              sql  := 'update LaboratuvarKabul set sec = ' + '0' +
                      ' where sira = ' + labKabul.fieldbyname('sira').AsString;
              datalar.ADO_SQL.Close;
              datalar.ADO_SQL.SQL.Clear;
              datalar.QueryExec(datalar.ADO_SQL,sql);
          End;
        End;


  cxGridDBTableView4.OnDblClick(self);

  // labKabul.Refresh;
   labKabul.GotoBookmark(bm);
   openTable := False;

end;

procedure TfrmLabaratuvarKabul.cxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
   if (ARecord.Values[11]) = 'B'
   Then AStyle := cxStyle8 ;

   if (ARecord.Values[11]) = 'F'
   Then AStyle := cxStyle9 ;



end;

procedure TfrmLabaratuvarKabul.ADO_SQL3AfterScroll(DataSet: TDataSet);
var
   sql , dosyaNo,gelisNo,detayNo,code : string;
begin

end;

procedure TfrmLabaratuvarKabul.labKabulAfterScroll(DataSet: TDataSet);
var
   sql ,code,sira : string;
begin
   (*
   if openTable = False
   Then Begin
     dosyaNo := labKabul.fieldbyname('dosyaNo').AsString;
     gelisNo := labKabul.fieldbyname('gelisNo').AsString;
     detayNo := labKabul.fieldbyname('KartDetay').AsString;
     code := labKabul.fieldbyname('TestKodu').AsString;
     sira := labKabul.fieldbyname('hareketlerSira').AsString;

     sql := 'select * from laboratuvar_sonuc ' +
            ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisno = ' + gelisno +
            ' and  gelisDetay = ' + detayNo + ' and code = ' + QuotedStr(code) +
            ' and hareketSira = ' + sira +
            ' order by parametre_sira';
     ADO_TESTSONUCLARI.close;
     ADO_TESTSONUCLARI.SQL.Clear;
     datalar.QuerySelect(ADO_TESTSONUCLARI,sql);

     





   End;

    *)


end;

procedure TfrmLabaratuvarKabul.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     ADO_TESTSONUCLARI.Close;
     ADO_TESTSONUCONCEKI.Close;
end;

procedure TfrmLabaratuvarKabul.btnPolClick(Sender: TObject);
begin
  if UserRight('LABARATUVAR', 'Parametreler') = True
  then begin
    Application.CreateForm(TfrmLabParams, frmLabParams);
    try
      GorselAyar(frmLabParams,datalar.global_img_list4);
      frmLabParams.TablolariAc;
      frmLabParams.ShowModal;
    finally
      FreeAndNil(frmLabParams);
    end;
  End
    else
     YetkinizYok;

end;

procedure TfrmLabaratuvarKabul.FormCreate(Sender: TObject);
var
  sql : string;
  ado : TADOQuery;
begin
  Tag := TagfrmLabKabul;

  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  TableName := _TableName_;

 // Olustur(self,_TableName_,'Testler',28);
  menu := PopupMenu1;
  cxPanel.Visible := false;
  SayfaCaption('','','','','');

  txtTarih.Date := date();
  sayfalar.ActivePageIndex := 0;

  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select SLXX from parametreler where SLK = ''54''';
    datalar.QuerySelect(ado,sql);
    if not ado.Eof
    Then _comport_ := ado.Fields[0].AsString
    Else _comport_ := '';

    ado.close;
  finally
    ado.Free;
  end;
end;

procedure TfrmLabaratuvarKabul.cxGridDBTableView4DblClick(Sender: TObject);
var
  sql , dosyaNo : string;
  sp : char;
begin
     sp := DateSeparator;

     if txtTum.Checked = False
     Then Begin
       _tarih := txtTarih.Date;
     End
     Else
       _tarih := strtodate('01' + sp +'01' + sp + '1990');

      dosyaNo := labKabul_liste.fieldbyname('dosyaNo').AsString;
      sql := 'exec sp_labHastaKabul ' +#39 + tarihal(_tarih) + #39 + ',' + #39 + dosyaNo + #39;
      datalar.QuerySelect(labKabul,sql);
       //ADO_TESTSONUCLARI.Active := true;
       //ADO_TESTSONUCONCEKI.Active := True;


end;

procedure TfrmLabaratuvarKabul.cxGridDBTableView4StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
   if (ARecord.Values[7] > 0)
   Then AStyle := cxStyle12
   else AStyle := cxStyle1;
end;

procedure TfrmLabaratuvarKabul.btnYatClick(Sender: TObject);
begin
  (*
    Application.CreateForm(TfrmLabKabulArama, frmLabKabulArama);
    GorselAyar(frmLabKabulArama,datalar.global_img_list4);
    frmLabKabulArama.ShowModal;
    frmLabKabulArama := nil;
    *)

end;

procedure TfrmLabaratuvarKabul.ADO_SQL33AfterScroll(DataSet: TDataSet);
var
  sql : string;
begin

end;

procedure TfrmLabaratuvarKabul.cxGridDBTableView3DblClick(Sender: TObject);
var
  sql : string;
begin
     ADO_SQL3.close;
     ADO_SQL3.SQL.Clear;
     sql := 'exec sp_LabKabulListesi  @tarih1 = ' + #39 + tarihal(txtTarih.Date) + #39 + ',' +
            ' @dosyaNo = ' + QuotedStr(ADO_SQL33.fieldbyname('dosyaNo').AsString)  + ',' +
            '@gelisNo = ' + QuotedStr(ADO_SQL33.fieldbyname('gelisNo').AsString) + ',' + '@tip = ' + QuotedStr('');
     datalar.QuerySelect(ADO_SQL3,sql);


end;

procedure TfrmLabaratuvarKabul.txtTumClick(Sender: TObject);
begin

    cxGridDBTableView4DblClick(nil);


end;

procedure TfrmLabaratuvarKabul.btnCihazClick(Sender: TObject);
begin

  // frmCihazData.Caption := labKabul.fieldbyname('kabulNo').AsString;
  // frmCihazData._cihaz_ := cihaz;
  // frmcihazData.ShowModal;
  
end;

procedure TfrmLabaratuvarKabul.mnSe1Click(Sender: TObject);
begin

    labKabul.First;
    while not labKabul.Eof do
    begin
      //cxGrid1DBTableView1DblClick(nil);
      gridLabHazirDblClick(nil);

      labKabul.Next;
    end;

end;

procedure TfrmLabaratuvarKabul.sBitBtn4Click(Sender: TObject);
begin
   ADO_SQL33.Prior;
end;

procedure TfrmLabaratuvarKabul.sBitBtn5Click(Sender: TObject);
begin
  ADO_SQL33.Next;
end;

procedure TfrmLabaratuvarKabul.mnTekrarYazdrcam1Click(Sender: TObject);
var
   sql : string;
   ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'update LaboratuvarKabul set yazdirildi = 0 ' +
           ' where dosyaNo = ' +  QuotedStr(labkabul.fieldbyname('dosyaNo').AsString) +
           ' and gelisNo = ' + labkabul.fieldbyname('gelisNo').AsString ;

    datalar.QueryExec(ado,sql);

    ShowMessageSkin('Yazdýrma Ýþlemi Ýptal Edildi','','','info');
  finally
    ado.Free;
  end;
  cxGridDBTableView4.OnDblClick(sender);

end;

procedure TfrmLabaratuvarKabul.SpeedButton2Click(Sender: TObject);
begin
   pnlAciklama.Visible := false;
end;

procedure TfrmLabaratuvarKabul.Timer1Timer(Sender: TObject);
begin
  if chkDisLab.Checked then

  Button2.Click;
end;

procedure TfrmLabaratuvarKabul.btnYazdirClick(Sender: TObject);
var
   sql , dosya,gelis,detay : string;
   ado , ado2 : TADOQuery;
   TopluDataset : TDataSetKadir;
begin

  if sayfalar_LabKabul.ActivePageIndex = 1
  Then Begin
     dosya := labKabul.fieldbyname('dosyaNo').AsString;
     gelis := labKabul.fieldbyname('gelisNo').AsString;
   //  detay := labKabul.fieldbyname('kartDetay').AsString;
  End
  Else
  Begin
     dosya := labSonucHazir.fieldbyname('dosyaNo').AsString;
     gelis := labSonucHazir.fieldbyname('gelisNo').AsString;
  //   detay := labSonucHazir.fieldbyname('gelisDetay').AsString;
  End;




  datalar.ADO_SQL3.Close;
  datalar.ADO_SQL3.SQL.Clear;
  sql := 'exec sp_LabSonucYazdir ' +  #39 + dosya + #39 + ',' +
         gelis + ',' + QuotedStr('');
  datalar.QuerySelect(datalar.ADO_SQL3,sql);

  ado2 := TADOQuery.Create(nil);
  try
    ado2.Connection := datalar.ADOConnection2;

    sql := 'exec sp_LabSonucYazdir ' +  #39 + dosya + #39 + ',' +
           gelis + ',' + QuotedStr('');
    datalar.QuerySelect(ado2,sql);


    TopluDataset.Dataset1 := datalar.ADO_SQL3;
    TopluDataset.Dataset0 := ado2;



    PrintYap('010','\LabSonuc',inttoStr(TagfrmLabKabul) ,TopluDataset,pTNone);

  //  frmRapor.raporData1(frmRapor.topluset,'010','\LabSonuc');
  //     frmRapor.ShowModal;


    sql := 'update LaboratuvarKabul set yazdirildi = 1  ' +
           'where dosyaNo = ' + QuotedStr(dosya) +
           ' and sec = 1';
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;
      datalar.QueryExec(ado,sql);
    finally
      ado.Free;
    end;
  finally
    ado2.Free;
  end;

  if sayfalar_LabKabul.ActivePageIndex = 1
  Then
  cxGridDBTableView4DblClick(nil);
end;


procedure TfrmLabaratuvarKabul.btnSeanslarClick(Sender: TObject);
var
  _row_ : integer;
  hastaNo : string;

begin
      _row_ := cxGridDBTableView3.ViewData.DataController.GetFocusedRecordIndex;
       hastaNo := cxGridDBTableView3.ViewData.DataController.values[_row_,0];
        (*
             Application.CreateForm(TfrmHastaKarti, frmHastaKarti);
             frmHastaKarti.KartGetir(hastaNo);
             frmHastaKarti.Gelisler(hastaNo,'0');
             frmHastaKarti.Gonderenform('Lab');
             frmHastaKarti.Durum(1);
             frmHastaKarti.btnGuncelle.Enabled := True;
             Disabled(frmHastaKarti);
             GorselAyar(frmHastaKarti,DATALAR.global_img_list4);
             frmHastaKarti.ShowModal;
             frmHastaKarti := nil;
       *)
end;

procedure TfrmLabaratuvarKabul.btnGuncelleClick(Sender: TObject);
var
  sql , dosyaNo , gelis, detay , testNo , sira : string;
begin

    if sayfalar_LabKabul.TabIndex = 1
    Then Begin
          if mrYes = ShowMessageSkin('Kabul Ýptal Edilecek Emin misiniz ?','','','msg')
          Then Begin
              dosyaNo := labKabul.fieldbyname('dosyaNo').AsString;
              testNo := labKabul.fieldbyname('TestKodu').AsString;
              gelis := labKabul.fieldbyname('GelisNo').AsString;
          //    detay := labKabul.fieldbyname('KartDetay').AsString;
              sira := labKabul.fieldbyname('hareketlerSira').AsString;

              sql := 'delete from LaboratuvarKabul where dosyaNo = ' +
                     QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis + ' and code = ' + QuotedStr(testNo) +  ' and hareketlerSira = ' + sira;

              datalar.ADO_SQL.close;
              datalar.ADO_SQL.SQL.Clear;
              datalar.QueryExec(datalar.ADO_SQL,sql);


              sql := 'delete from laboratuvar_sonuc where hareketsira = ' + sira;
              datalar.ADO_SQL.close;
              datalar.ADO_SQL.SQL.Clear;
              datalar.QueryExec(datalar.ADO_SQL,sql);



              ShowMessageSkin('Kabul Ýptal Edildi','','','info');
              cxGridDBTableView4DblClick(nil);

            //  btnAra.Click;

          End;

    End;


end;

procedure TfrmLabaratuvarKabul.btnAraClick(Sender: TObject);
var
   sql , tip : string;
begin

     case sayfalar_LabKabul.ActivePageIndex of
       0 : LabKabulBekleyen(tarihal(txtTarih.Date));
       1 : begin

                if chkTarih.Checked = true
                Then tip := '3'
                else tip := '1';
                txtinfo.Caption := 'Kabul Listesi Oluþturuluyor , Lütfen Bekleyiniz...';
              //  openTable := True;

                sql := 'exec sp_labHastaKabul ' +#39 + tarihal(txtTarih.Date) + #39 + ',' + #39 + txtDosyaNo.Caption + #39 + ',' + QuotedStr(tip);
                Application.ProcessMessages;
                datalar.QuerySelect(labKabul_liste,sql);

            //    openTable := False;
                txtinfo.Caption := '';


           end;
       2 : begin

                txtinfo.Caption := 'Hazýr Sonuç Listesi Oluþturuluyor , Lütfen Bekleyiniz...';
            //    openTable := True;

                sql := 'exec sp_LabSonucHazir ' + QuotedStr(tarihal(txtTarih.Date));
                Application.ProcessMessages;
                datalar.QuerySelect(LabSonucHazir,sql);

           //     openTable := False;
                txtinfo.Caption := '';

           end;


     end;


end;

procedure TfrmLabaratuvarKabul.btnBarkodBasClick(Sender: TObject);
var
  barkod : string;
begin
   barkod := labkabul.fieldbyname('kabulNo').AsString;
   barkodBas(barkod,'');
end;

procedure TfrmLabaratuvarKabul.AklamaBilgisi1Click(Sender: TObject);
begin
 (*
   txttext.Text := labKabul.FieldByName('aciklama').AsString;

    Application.CreateForm(TfrmTetkiksonuc, frmTetkiksonuc);
    GorselAyar(frmTetkiksonuc,datalar.global_img_list4);
    frmTetkiksonuc.tetkikbilgisi.grup := '2';
    frmTetkiksonuc.tetkikbilgisi.siraNo := labKabul.FieldByName('hareketlersira').AsString;
    frmTetkiksonuc.tetkikbilgisi.dosyaNo := labKabul.FieldByName('dosyano').AsString;
    frmTetkiksonuc.tetkikbilgisi.gelisNo := labKabul.FieldByName('gelisno').AsString;
    frmTetkiksonuc.tetkikbilgisi.detayNo := labKabul.FieldByName('kartdetay').AsString;
    frmTetkiksonuc.TetkiksonucSiraNo(labKabul.FieldByName('hareketlersira').AsString , txttext.Text , labKabul.FieldByName('testadý').AsString );
    frmTetkiksonuc.ShowModal;
    frmTetkiksonuc := nil;

    labKabul.Refresh;
   *)

end;

 (*

procedure TfrmLabaratuvarKabul.B1Click(Sender: TObject);
var
  SonucAlGiris : TSonucAlInput;
  SonucAlCevap : TSonucAlCevap;
  SonucB : SonucBilgisi;
  Sonuclar : ArraySonucBilgisi;
  I,s , testAdet , j , x : integer;
  dosyaNo,gelisNo , testKod , sm , _F_ ,sql , sonuc , a,b,c,t1,t2 , tt , tip ,barkod : string;
  ado : TADOQuery;
  t : boolean;
  kayitCount : integer;
begin

 if mrYes = ShowMessageSkin('Sonuç Çekme Ýþlem Baþlayacak ','','','msg')
 Then Begin

  pnlSonucCek.Visible := True;

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  sql := 'select barkodNo,disLabbarkodNo,disLabKabul from LaboratuvarKabul ' +
         ' where disLabSonucOk = 0 and KabulTarihi >= ' + tarihal(txtTarih.Date) +
         ' and isnull(disLabKabul,'''') <> ''''';// and disLabbarkodNo like %' +

  datalar.QuerySelect(ado,sql);
  kayitCount := ado.RecordCount;

  txtinfo.Caption := 'Alýnýyor...';

  ilerleme.MaxValue := kayitCount;
  ilerleme.Progress := 0;

  while not ado.Eof do
  begin
      Application.ProcessMessages;
      slabel1.Caption := ado.FieldByName('disLabbarkodNo').AsString;
      datalar.Login;
      if datalar._labfirma = '' then exit;
      SonucAlGiris := TSonucAlInput.Create;
      SonucAlCevap := TSonucAlCevap.Create;
      SonucAlGiris.HASTANEKODU := datalar._labusername;
      SonucAlGiris.SIFRE := datalar._labsifre;

      barkod := ado.FieldByName('barkodNo').AsString;
      SonucAlGiris.BARKOD := ado.FieldByName('disLabbarkodNo').AsString;

      try
       SonucAlCevap := (datalar.LabSonucAlInVitro as ISonucAl).HASTASONUCAL(SonucAlGiris);
      except on e : Exception do
       begin
         sm := e.Message;
       end;
      end;

      if SonucAlCevap.HATAKODU = '0000'
      Then Begin
        SonuzYaz(SonucAlCevap,0,barkod);
     //   disLabSonucOk(SonucAlGiris.BARKOD);
      End;
      txtLog.Lines.Add(SonucAlGiris.BARKOD+':'+SonucAlCevap.HATAACIKLAMA);
      ado.Next;
      ilerleme.Progress := ilerleme.Progress + 1;

  end;

  ado.Free;

 End;
end;
*)

procedure TfrmLabaratuvarKabul.SpeedButton1Click(Sender: TObject);
var
  sql : string;
begin

    labKabul.Edit;
    labKabul.FieldByName('sonuc').AsString := txttext.Text;
    labKabul.Post;

    pnlAciklama.Visible := false;



end;

procedure TfrmLabaratuvarKabul.cxGrid1DBTableView1DataControllerDetailExpanded(
  ADataController: TcxCustomDataController; ARecordIndex: Integer);
var
  sql , _kod_ , k: string;
  ado : TADOQuery;
  _row_ : integer;
begin


 
    

end;

procedure TfrmLabaratuvarKabul.gridLabHazirDataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
var
  sql , _kod_ , k: string;
  ado : TADOQuery;
  _row_ : integer;
begin
  gridLabHazir.Controller.GridView.ViewData.Collapse(true);


end;    
procedure TfrmLabaratuvarKabul.gridLabHazirDataControllerDetailExpanded(
  ADataController: TcxCustomDataController; ARecordIndex: Integer);
var
  _row_ : integer;
  k , _kod_ , sql : string;
begin

    _row_ := gridLabHazir.ViewData.DataController.GetFocusedRecordIndex;
//    _kod_ := gridLabHazir.DataController.Values[_row_,9];
//    k :=     gridLabHazir.DataController.Values[_row_,7];


    k := labkabul.fieldbyname('kabulNo').AsString;
    _kod_ := labkabul.fieldbyname('TestKodu').AsString;


   ADO_Result.close;
   ADO_Result.SQL.Clear;

   sql := 'select parametreadi,parametrebirim,sonuc1,ref_aciklama,sira,normal1+'' - ''+normal2 as Panik,ikaz from laboratuvar_sonuc ' +
          ' where barkodNo = ' + QuotedStr(k) + ' and testNo = ' + QuotedStr(_kod_);


    datalar.QuerySelect(ADO_Result,sql);
end;

procedure TfrmLabaratuvarKabul.gridLabHazirKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13
  then btnElleGir.Click;

end;

procedure TfrmLabaratuvarKabul.ADO_TESTSONUCLARIBeforePost(
  DataSet: TDataSet);
var
  tire : integer;
  ref : string;
  alt , ust : double;
begin
(*
    ref := ADO_TESTSONUCLARI.FieldByName('ref_aciklama').AsString;

    tire := pos('-',ref);
    if tire > 0
    then begin

       alt := strtofloat(trim(copy(ref,1,tire-1)));
       ust := strtofloat(trim(copy(ref,tire+1,10)));

       if ADO_TESTSONUCLARI.FieldByName('sonuc1').AsFloat < alt
       then ADO_TESTSONUCLARI.FieldByName('normal1').AsString := 'A'
       else
       if ADO_TESTSONUCLARI.FieldByName('sonuc1').AsFloat > ust
       then ADO_TESTSONUCLARI.FieldByName('normal1').AsString := 'U'
       else ADO_TESTSONUCLARI.FieldByName('normal1').AsString := '';


    end;
  *)

end;

end.

