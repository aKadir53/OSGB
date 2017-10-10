unit raporDetay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,data_modul, DB, ADODB,
  Grids, DBGridEh, DBCtrls,saglikTesisiRaporIslemleriWSIlac,
  kadir,strutils,RaporIslemleriI,RaporIslemleriWS, kadirType,
  InvokeRegistry, Rio, SOAPHTTPClient, cxGraphics, cxMemo,
  cxDBEdit, cxDropDownEdit, cxCalendar, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxPC, cxSpinEdit, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, kadirmedula3,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, Menus, cxButtons, KadirLabel,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, GridsEh, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxCurrencyEdit, cxGridDBTableView, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,GirisUnit,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, cxImageComboBox,
  cxCheckBox, cxGroupBox, cxRadioGroup, cxGridCustomPopupMenu, cxGridPopupMenu;



type
  TfrmRaporDetay = class(TGirisForm)
    GroupBox1: TcxGroupBox;
    ADO_RAPORLAR: TADOQuery;
    DataSource1: TDataSource;
    GroupBox3: TcxGroupBox;
    DBGridEh3: TDBGridEh;
    DataSource3: TDataSource;
    ADO_DOKTORLAR: TADOTable;
    Rapor__: THTTPRIO;
    DOKTORLAR: TADOQuery;
    RaporOku: THTTPRIO;
    txtVerenTesisKodu: TcxDBButtonEdit;
    txtTesisAdi: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    Label1: TLabel;
    GroupBox5: TcxGroupBox;
    txtbaslangicTarihi: TcxDBDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    txtduzenlemeTuru: TcxDBComboBox;
    Label6: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label7: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label8: TLabel;
    cxDBMemo1: TcxDBMemo;
    Label9: TLabel;
    txttedaviRaporTuru: TcxDBComboBox;
    txttanilar: TcxDBButtonEdit;
    Label10: TLabel;
    GroupBox2: TcxGroupBox;
    DBGridEh2: TDBGridEh;
    DBNavigator1: TDBNavigator;
    Detay: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    SheetDiyalizRaporBilgisi: TcxTabSheet;
    SheetFTRRaporBilgisi: TcxTabSheet;
    GroupBox4: TcxGroupBox;
    cxDBComboBox2: TcxDBComboBox;
    Label15: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label16: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label17: TLabel;
    GroupBox7: TcxGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    cxDBSpinEdit5: TcxDBSpinEdit;
    cxDBSpinEdit6: TcxDBSpinEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    Label24: TLabel;
    ADO_TAS: TADOTable;
    DataSource2: TDataSource;
    DBNavigator3: TDBNavigator;
    cxDBDateEdit3: TcxDBDateEdit;
    ftrVucutBolge: TcxDBComboBox;
    ADO_SEANS: TADOTable;
    DataSource4: TDataSource;
    Label18: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    txtXML: TMemo;
    ADO_ILACTESHISLER_: TADOQuery;
    sheetIlacTeshisleri: TcxTabSheet;
    GroupBox14: TcxGroupBox;
    GroupBox15: TcxGroupBox;
    DBGridEh6: TDBGridEh;
    DBNavigator6: TDBNavigator;
    cxButtonTESHIS: TcxButton;
    cxButtonICD: TcxButton;
    btnDiyabet: TcxButton;
    GroupBox16: TcxGroupBox;
    dozHint: TLabel;
    DBGridEh7: TDBGridEh;
    DBNavigator7: TDBNavigator;
    cxButtonETKEN: TcxButton;
    cxButtonSUTKURAL: TcxButton;
    ADO_ILACTESHISLER: TADOTable;
    DataSource6: TDataSource;
    ADO_ILACETKENMADDE: TADOTable;
    DataSource7: TDataSource;
    GrpIlacRaporDuzeltme: TcxGroupBox;
    Label43: TLabel;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBMemo2: TcxDBMemo;
    btnDuzelt: TBitBtn;
    cxButtonDoktorlar: TcxButton;
    DrList: TListeAc;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    T1: TMenuItem;
    ListeAc2: TListeAc;
    sBitBtn5: TBitBtn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    TaniListe: TListeAc;
    chkTani: TcxCheckBox;
    Label13: TLabel;
    txtEtkenMadde: TcxDBButtonEdit;
    Label14: TLabel;
    Label12: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBButtonEdit2: TcxDBButtonEdit;
    Label11: TLabel;
    PopupMenu2: TPopupMenu;
    E1: TMenuItem;
    N3: TMenuItem;
    E2: TMenuItem;
    sBitBtn4: TBitBtn;
    PopupMenu3: TPopupMenu;
    B1: TMenuItem;
    B2: TMenuItem;
    R1: TMenuItem;
    cxRadioGroup1: TcxRadioGroup;
    Panel1: TPanel;
    lemler1: TMenuItem;
    YeniRapor1: TMenuItem;
    Dzenle1: TMenuItem;
    Kaydet1: TMenuItem;
    RaporuMedulayaKaydet1: TMenuItem;
    RaporuMeduladanOku1: TMenuItem;
    RaporuMeduladanSil1: TMenuItem;
    RaporuYazdr1: TMenuItem;
    RaporuSistemdenSil1: TMenuItem;
    Kapat1: TMenuItem;
    RaporAra1: TMenuItem;
    cxGridPopupMenu1: TcxGridPopupMenu;
    Procedure Raporlar(dosyaNo ,gelisNo : string);
    procedure btnVazgecClick(Sender: TObject);
    procedure RaporKaydet(dosyaNo , RaporNo , turu , Tip: string);
    procedure DoktorKaydet(data : TADOTable ; Tur : string);
    procedure TaniKaydet(data : TADOQuery ; Tur : string);
    function TaniKaydetIlacTeshisY(_tanilar_ : string ;  data : TADOQuery) : ArrayOf_105704153_699425500_nillable_TaniDVO;
    function TaniKaydetIlacTeshisIlac(_tanilar_ : string ;  data : TADOQuery) : Array_Of_TaniDVO;

    procedure IslemKaydet(Data : TADOQuery);
    procedure TeshisKaydet(data : TADOQuery);
    procedure IlacTeshisKaydet(data : TADOQuery);
    procedure IlacTeshisKaydetY(data : TADOQuery);

    procedure RAPORBILGISI(data : TADOQuery;Tur : string);
    procedure HaksahibiKaydet(don : integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IsGormezlikRaporu;
    procedure TedaviRaporu;

    procedure dogumOncesiCalisabilirRaporu;
    procedure dogumRaporu;
    procedure analikRaporu;
    procedure protezRaporu;
    procedure ilacRaporu;
    procedure ilacRaporuY;
    procedure maluliyetRaporu;
    procedure Haksahibinull;
//    procedure IsGormezlikRaporuEk;
    procedure RaporBul(RaporNo,RaporTarihi,verenTesis, Tur ,Durum : string);
    procedure btnPolClick(Sender: TObject);
    procedure DBGridEh1ColExit(Sender: TObject);
    procedure btnYazdirClick(Sender: TObject);
    procedure ADO_DOKTORLARNewRecord(DataSet: TDataSet);
    procedure ADO_RAPORDETAYNewRecord(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBComboBox1PropertiesChange(Sender: TObject);
    procedure txttedaviRaporTuruPropertiesChange(Sender: TObject);
    procedure ftrVucutBolgePropertiesChange(Sender: TObject);
    procedure txtVerenTesisKoduPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Rapor__BeforeExecute(const MethodName: String;
      var SOAPRequest: WideString);
    procedure cxButtonTESHISClick(Sender: TObject);
    procedure cxButtonICDClick(Sender: TObject);
    procedure cxButtonETKENClick(Sender: TObject);
    procedure cxButtonSUTKURALClick(Sender: TObject);
    procedure ADO_ILACTESHISLERNewRecord(DataSet: TDataSet);
    procedure ADO_RAPORLARAfterScroll(DataSet: TDataSet);
    procedure btnDuzeltClick(Sender: TObject);
    function RaporEtkinMaddeler(m , sira: string) : ArrayOfEraporEtkinMaddeDVO;
    procedure cxButtonDoktorlarClick(Sender: TObject);
    procedure btnDiyabetClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure btnKayitClick(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IlacRaporsil(RaporNo : string);
    function IlacRaporBasHekimOnay(RaporNo , Tc : string) : string;
    function IlacRaporBasHekimOnayRed(RaporNo , Tc : string) : string;

    function IlacRaporBasHekimOnayBekleyenLis : ArrayOf_105704153_1440052060_long;
    procedure E1Click(Sender: TObject);
    procedure E2Click(Sender: TObject);
    function RaporAciklamaEkle(RaporTakip,aciklama,TakipformNo : string ; var msg : string) : string;
    procedure B1Click(Sender: TObject);
    procedure cxRadioGroup1PropertiesChange(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure YeniRapor;
    procedure RaporMedulayaKaydet;
    procedure RaporMeduladanOku;
    procedure RaporMeduladanSil;
    procedure RaporuYazdir;
    procedure RaporuSistemdenSil;
    procedure RaporAra;
    procedure AktifRaporYap;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   frmRaporDetay: TfrmRaporDetay;
   HastaBilgileri : THaksahiplikBilgileri;
   Ts_RaporGon : raporGirisDVO;
   Ts_RaporGonY : EraporGirisIstekDVO;
   Ts_RaporGonIlac : saglikTesisiRaporIslemleriWSIlac.eraporGirisIstekDVO;
   _RaporIlac : saglikTesisiRaporIslemleriWSIlac.eraporDVO;
   Ts_RaporCvp : RaporCevapDVO;
   TedaviRapor : TedaviRaporDVO;
   IlacRapor : IlacRaporDVO;
   _Rapor : RaporDVO;
   _RaporY : ERaporDVO;

   RaporBilgi : RaporBilgisiDVO;
   hastaDosyaNo ,hastagelisNo , _tarih_ ,takip: string;
   _don : integer;
   RTanilar , RTeshisler , web , local ,_gelisNo_ : string;

implementation

uses HastaKart, rapor;
   //  TesisList, HastaTakipleri, TeshisListesi,
   //  EtkinMaddeSutKurali, EtkenMaddeListesi,
   //  diyabetTakipFormu,TaniListesi;
//uses muhana, HastaKarti, MedulaDoktorlar;
{$R *.dfm}

procedure TfrmRaporDetay.AktifRaporYap;
var
  ado : TADOQuery;
  sql : string;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  sql := 'update raporlar set aktif = 0 where dosyaNo = ' + QuotedStr(ADO_RAPORLAR.FieldByName('dosyaNo').AsString);
  datalar.QueryExec(ado,sql);
  ado.Free;


  ADO_RAPORLAR.Edit;
  ADO_RAPORLAR.FieldByName('Aktif').AsBoolean := True;
  ADO_RAPORLAR.Post;

  ADO_RAPORLAR.Active := false;
  ADO_RAPORLAR.Active := True;
end;

procedure TfrmRaporDetay.RaporAra;
var
   rapor : TRapor;
begin

 (*
    Application.CreateForm(TfrmHastaTakipleri, frmHastaTakipleri);
    GorselAyar(frmHastaTakipleri,datalar.global_img_list4);
    frmHastaTakipleri.txtTcKimlik.Text := HastaBilgileri.TcKimlikNo;
    frmHastaTakipleri.txtTcKimlik1.Text := HastaBilgileri.TcKimlikNo;
    frmHastaTakipleri.txtHasta.Text := HastaBilgileri.Adi;
    frmHastaTakipleri.txtDosya.Text := hastaDosyaNo;
    datalar.RxHastaTakip.Active := False;
    datalar.RxHastaTakip.Active := True;
    frmHastaTakipleri.ShowModal;
    frmHastaTakipleri := nil;

    Raporlar(hastaDosyaNo,hastagelisNo,HastaBilgileri);
   *)

(*
     rapor.raporNo := ADO_RAPORLAR.fieldbyname('raporNo').AsString;
     rapor.sevkEdenTesis := ADO_RAPORLAR.fieldbyname('verenTesisKodu').AsString;
     rapor.raporTarihi := ADO_RAPORLAR.fieldbyname('raporTarihi').AsString;
     rapor.muayeneAcilis := ADO_RAPORLAR.fieldbyname('raporTarihi').AsString;
   //  frmHastaKarti.raporBilgiDegis(rapor);
  *)
end;

procedure TfrmRaporDetay.RaporuSistemdenSil;
var
  sql : string;
  ado : TADOQuery;
begin

  if ADO_RAPORLAR.FieldByName('raporTakipNo').AsString = ''
  Then BEgin
     if mrYes = ShowMessageSkin('Rapor Sistemden Silinecek Eminmisini?','','','msg')
     Then Begin

      // datalar.ADOConnection2.BeginTrans;
       ado := TADOQuery.Create(nil);
       ado.Connection := datalar.ADOConnection2;

      try
    //     sql := 'delete from ESWLRapor_seansBilgileri where sira = ' + ADO_RAPORLAR.fieldbyname('sira').AsString;
    //     datalar.QueryExec(ado,sql);
    //     sql := 'delete from ESWLRapor_TasBilgileri where sira = ' + ADO_RAPORLAR.fieldbyname('sira').AsString;
   //      datalar.QueryExec(ado,sql);
         sql := 'delete from RaporDetay_Doktorlar where sira = ' + ADO_RAPORLAR.fieldbyname('sira').AsString;
         datalar.QueryExec(ado,sql);
         sql := 'delete from Raporlar where sira = ' + ADO_RAPORLAR.fieldbyname('sira').AsString;
         datalar.QueryExec(ado,sql);
       //  datalar.ADOConnection2.CommitTrans;
         ShowMessageSkin('Rapor Sistemden Silindi','','','info');
         ADO_RAPORLAR.Active := false;
         ADO_RAPORLAR.Active := true;
         ado.Free;
      except
       //  datalar.ADOConnection2.RollbackTrans;
         ShowMessageSkin('Hata oluþtu , Rapor Sistemden Silinemedi','','','info');
         ado.Free;
      end;
     End;


  End;

end;



procedure TfrmRaporDetay.RaporuYazdir;
var
   sql , dosyaNo , raporNo : string;

begin
      dosyaNo := ADO_RAPORLAR.fieldbyname('dosyaNo').AsString;
      raporNo := ADO_RAPORLAR.fieldbyname('raporNo').AsString;

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('R');
      datalar.ADO_SQL5.Close;
      datalar.ADO_SQL5.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL5,sql);

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('RD');
      datalar.ADO_SQL6.Close;
      datalar.ADO_SQL6.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL6,sql);

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('Tani');
      datalar.ADO_SQL7.Close;
      datalar.ADO_SQL7.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL7,sql);

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('IlacTeshis');
      datalar.ADO_SQL8.Close;
      datalar.ADO_SQL8.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL8,sql);

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('EtkinMadde');
      datalar.ADO_SQL11.Close;
      datalar.ADO_SQL11.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL11,sql);

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('Aciklama');
      datalar.ADO_SQL9.Close;
      datalar.ADO_SQL9.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL9,sql);
     (*
      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('C');
      datalar.ADO_SQL10.Close;
      datalar.ADO_SQL10.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL10,sql);



      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('Anamnez');
      datalar.ADO_SQL4.Close;
      datalar.ADO_SQL4.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL4,sql);

       *)

      frmRapor.topluset.Dataset1 := datalar.ADO_SQL5;
      frmRapor.topluset.Dataset2 := datalar.ADO_SQL6;
      frmRapor.topluset.Dataset3 := datalar.ADO_SQL7;
      frmRapor.topluset.Dataset4 := datalar.ADO_SQL8;
      frmRapor.topluset.Dataset5 := datalar.ADO_SQL9;
      frmRapor.topluset.Dataset6 := datalar.ADO_SQL10;
      frmRapor.topluset.Dataset7 := datalar.ADO_SQL11;
      frmRapor.topluset.Dataset8 := datalar.ADO_SQL4;


      case strtoint(trim(copy(ADO_RAPORLAR.fieldbyname('turu').AsString,1,2))) of
        10 :  frmRapor.raporData1(frmRapor.topluset,'116','\Rapor_ilac');
         1 :  begin
        //        if TBitBtn(sender).Tag = 8
         //       Then
                 frmRapor.raporData1(frmRapor.topluset,'053','\Rapor_tedavi')
         //       Else
             //    frmRapor.raporData1(frmRapor.topluset,'058','\FTRTekHekim');

              end;
       End;

      frmRapor.ShowModal;

      datalar.ADO_SQL5.close;
      datalar.ADO_SQL6.close;
      datalar.ADO_SQL7.close;
      datalar.ADO_SQL8.close;
      datalar.ADO_SQL9.close;



end;


procedure TfrmRaporDetay.RaporMeduladanSil;
var
  Rp : string;
begin
     if ADO_RAPORLAR.fieldbyname('turu').AsString = '10'
     Then
       Rp := ADO_Raporlar.fieldbyname('RaporTakipNo').AsString
     Else
       Rp := ADO_Raporlar.fieldbyname('RaporNo').AsString;


      if mrYES = ShowMessageSkin('Raporu Meduladan Silmek Ýstediðinizden Eminmisiniz ?','','','msg')
      then
      RaporBul(Rp,
               ADO_Raporlar.fieldbyname('RaporTarihi').AsString,
               ADO_Raporlar.fieldbyname('verenTesisKodu').AsString,
               trim(ADO_RAPORLAR.fieldbyname('turu').AsString),
               'SÝL');
end;

procedure TfrmRaporDetay.RaporMeduladanOku;
var
  Rp : string;
begin
     if ADO_RAPORLAR.fieldbyname('turu').AsString = '10'
     Then
       Rp := ADO_Raporlar.fieldbyname('RaporTakipNo').AsString
     Else
       Rp := ADO_Raporlar.fieldbyname('RaporNo').AsString;


      RaporBul(Rp,
               ADO_Raporlar.fieldbyname('RaporTarihi').AsString,
               ADO_Raporlar.fieldbyname('verenTesisKodu').AsString,
               trim(ADO_RAPORLAR.fieldbyname('turu').AsString),
               'BUL');

end;

procedure TfrmRaporDetay.RaporMedulayaKaydet;
var
   dosyaNo,gelisNo , tur : string;
   RprAckEkle : EraporAciklamaEkleIstekDVO;
   RprAckEkleCvp : EraporAciklamaEkleCevapDVO;
   ack : EraporAciklamaDVO;
   sonuc : string;
begin
  //  txtinfo.Caption := 'Rapor Bilgisi Kaydediliyor...';
    tur := ADO_RAPORLAR.fieldbyname('turu').AsString;
    takip := gelisToTakip(_dosyaNo_,_gelisNo_);

    RaporKaydet(dosyaNo,ADO_RAPORLAR.fieldbyname('raporNo').AsString,tur,tur);

    (*

    if length(ADO_RAPORLAR.FieldByName('aciklama').AsString) > 1000
    Then Begin
      datalar.Login;
      RprAckEkle := EraporAciklamaEkleIstekDVO.Create;
      RprAckEkle.tesisKodu := datalar._tesisKodu;
      RprAckEkle.doktorTcKimlikNo := doktorTc(datalar.doktor);
      RprAckEkle.raporTakipNo := ADO_RAPORLAR.FieldByName('raporTakipNo').AsString;
      ack := EraporAciklamaDVO.Create;
      ack.takipFormuNo := '';
      ack.aciklama := copy(ADO_RAPORLAR.FieldByName('aciklama').AsString,1001,1999);
      RprAckEkle.eraporAciklamaDVO := ack;

      datalar.IlacRapor_.HTTPWebNode.UserName := datalar._doktorReceteUser;
      datalar.IlacRapor_.HTTPWebNode.Password := datalar._doktorRecetePas;
      datalar.IlacRapor_.URL := 'https://medeczane.sgk.gov.tr/eczanews/services/SaglikTesisiRaporIslemleri';

     try
        RprAckEkleCvp := (datalar.IlacRapor_ as SaglikTesisiRaporIslemleri).eraporAciklamaEkle(RprAckEkle);
        sonuc := RprAckEkleCvp.sonucKodu;
     except
          on E: Exception do
          begin
             ShowMessageSkin(E.Message,'','','info');
          end;
     end; // except end


    End;

       *)

end;



procedure TfrmRaporDetay.YeniRapor;
begin
      ADO_RAPORLAR.Append;
      ADO_RAPORLAR.FieldByName('turu').AsString := cxRadioGroup1.EditValue;
      ADO_RAPORLAR.FieldByName('duzenlemeTuru').AsString := '2';

      ADO_RAPORLAR.FieldByName('dosyaNo').AsString := hastaDosyaNo;
      ADO_RAPORLAR.FieldByName('gelisNo').AsString := _gelisNo_;
      ADO_RAPORLAR.FieldByName('raporTarihi').AsString := datetostr(date);
      ADO_RAPORLAR.FieldByName('baslangicTarihi').AsDateTime := date;
      ADO_RAPORLAR.FieldByName('bitisTarihi').AsDateTime := date+365;



    //  ADO_RAPORLAR.FieldByName('gelisNo').AsString := hastagelisNo;
      ADO_RAPORLAR.FieldByName('verenTesisKodu').AsString := inttostr(datalar._kurumKod);

//      ADO_RAPORLAR.FieldByName('baslangicTarihi').AsDateTime := '';
//      ADO_RAPORLAR.FieldByName('bitisTarihi').AsDateTime :=
//      ADO_RAPORLAR.FieldByName('baslangicTarihi').AsDateTime + 730;
      ADO_RAPORLAR.FieldByName('protokolNo').AsString := '';
//      ADO_RAPORLAR.FieldByName('protokolTarihi').AsDateTime := '';

      if (ADO_RAPORLAR.FieldByName('turu').AsString = '1')
      then begin
          ADO_RAPORLAR.FieldByName('tedaviRaporturu').AsString := '1';
          ADO_RAPORLAR.FieldByName('tanilar').AsString := 'N18';
          ADO_RAPORLAR.FieldByName('butKodu').AsString := 'P704230';
          ADO_RAPORLAR.FieldByName('RefakatVarmi').AsString := 'H';
      end;

     if ADO_RAPORLAR.FieldByName('raporNo').AsString = ''
     then
     ADO_RAPORLAR.FieldByName('raporNo').AsString := inttostr(EnsonRaporProtokolNo);
     ADO_RAPORLAR.Post;

      if (ADO_RAPORLAR.FieldByName('turu').AsString = '10') and (datalar.doktorKodu <> '')
      Then Begin
       ADO_DOKTORLAR.Append;
       ADO_DOKTORLAR.FieldByName('sira').AsString := ADO_RAPORLAR.FieldByName('sira').AsString;
       ADO_DOKTORLAR.FieldByName('kod').AsString := datalar.doktorKodu;
       ADO_DOKTORLAR.FieldByName('drAdi').AsString := doktorAdi(datalar.doktorKodu);
       ADO_DOKTORLAR.FieldByName('drTescilNo').AsString := doktorTescil(datalar.doktorKodu);
       ADO_DOKTORLAR.FieldByName('drBransKodu').AsString := doktorBrans(datalar.doktorKodu);
       ADO_DOKTORLAR.FieldByName('tipi').AsString := '2';
       ADO_DOKTORLAR.post;
      End;

      if ADO_RAPORLAR.FieldByName('raporNo').AsString = ''
      then
        ADO_RAPORLAR.FieldByName('raporNo').AsString := inttostr(EnsonRaporProtokolNo);

      ADO_RAPORLAR.Post;


end;



procedure TfrmRaporDetay.cxButtonCClick(Sender: TObject);
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

   case TControl(sender).Tag of
  -1 : begin
         AktifRaporYap;
       end;
  -2 : begin
         IlacRaporBasHekimOnayRed(ADO_RAPORLAR.FieldByName('raporTakipNo').AsString,'');
       end;
  -3 : begin
         IlacRaporBasHekimOnay(ADO_RAPORLAR.FieldByName('raporTakipNo').AsString,'');
       end;
  -4 : begin
         RaporMedulayaKaydet;
       end;
  -5 : begin
          RaporMeduladanOku;
       end;
  -6 : begin
         RaporMeduladanSil;
       end;
  -7 : begin
         RaporuYazdir;
       end;
  -8 : begin
         RaporuSistemdenSil;
       end;
  -9 : begin
         RaporAra;
       end;

  -20 : begin
          YeniRapor;
        end;
  -21 : begin
         ADO_RAPORLAR.Edit;
        end;

  -22 : begin
          if ADO_RAPORLAR.FieldByName('raporNo').AsString = ''
          then
            ADO_RAPORLAR.FieldByName('raporNo').AsString := inttostr(EnsonRaporProtokolNo);
            ADO_RAPORLAR.Post;
        end;
  -30 : begin
          close;
        end;

   end;
end;


function TfrmRaporDetay.RaporAciklamaEkle(RaporTakip,aciklama ,TakipformNo: string ; var msg : string) : string;
var
   RprAckEkle : EraporAciklamaEkleIstekDVO;
   RprAckEkleCvp : EraporAciklamaEkleCevapDVO;
   ack : EraporAciklamaDVO;
   sonuc : string;
begin
      //datalar.Login;
      RprAckEkle := EraporAciklamaEkleIstekDVO.Create;
      RprAckEkle.tesisKodu := datalar._tesisKodu;
      RprAckEkle.doktorTcKimlikNo := doktorTc(datalar.doktorKodu);
      RprAckEkle.raporTakipNo := RaporTakip;
      ack := EraporAciklamaDVO.Create;
      ack.takipFormuNo := TakipformNo;
      ack.aciklama := aciklama;
      RprAckEkle.eraporAciklamaDVO := ack;

      datalar.IlacRapor_.HTTPWebNode.UserName := datalar._doktorReceteUser;
      datalar.IlacRapor_.HTTPWebNode.Password := datalar._doktorRecetePas;
      datalar.IlacRapor_.URL := 'https://medeczane.sgk.gov.tr/eczanews/services/SaglikTesisiRaporIslemleri';

     try
        RprAckEkleCvp := (datalar.IlacRapor_ as SaglikTesisiRaporIslemleri).eraporAciklamaEkle(RprAckEkle);
        sonuc := RprAckEkleCvp.sonucKodu;
     except
          on E: Exception do
          begin
             ShowMessageSkin(E.Message,'','','info');
          end;
     end; // except end

    if sonuc <> '0000' then
    msg := RprAckEkleCvp.sonucMesaji;

    RaporAciklamaEkle := sonuc;

end;

function TfrmRaporDetay.IlacRaporBasHekimOnayBekleyenLis : ArrayOf_105704153_1440052060_long;
var
 OnayLisGrs : EraporBashekimOnayBekleyenListeSorguIstekDVO;
 OnayListCvp : EraporBashekimOnayBekleyenListeSorguCevapDVO;
begin
  OnayLisGrs := EraporBashekimOnayBekleyenListeSorguIstekDVO.Create;
  OnayListCvp := EraporBashekimOnayBekleyenListeSorguCevapDVO.Create;

  //datalar.Login;
  datalar.IlacRapor_.HTTPWebNode.UserName := datalar._doktorReceteUser;
  datalar.IlacRapor_.HTTPWebNode.Password := datalar._doktorRecetePas;
  datalar.IlacRapor_.URL := 'https://medeczane.sgk.gov.tr/eczanews/services/SaglikTesisiRaporIslemleri';

  OnayLisGrs.tesisKodu := datalar._tesisKodu;
  OnayLisGrs.doktorTcKimlikNo := doktorTC(datalar.doktorKodu);

  try
     OnayListCvp := (datalar.IlacRapor_ as SaglikTesisiRaporIslemleri).eraporBashekimOnayBekleyenListeSorgu(OnayLisGrs);
  except
       on E: Exception do Showmessage(E.Message,'','','info');
  end;

  if OnayListCvp.sonucKodu = '0'
  then IlacRaporBasHekimOnayBekleyenLis := OnayListCvp.raporTakipNoListesi;

end;


function TfrmRaporDetay.IlacRaporBasHekimOnay(RaporNo , Tc : string) : string;
var
 BhekimOnay : saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayIstekDVO;
 BhekimOnayCvp : saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayCevapDVO;
begin
  BhekimOnay := saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayIstekDVO.Create;
  BhekimOnayCvp := saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayCevapDVO.Create;

  if Tc = ''
  Then Begin
    Tc := InputBox('Baþhekim Bilgisi','Baþhekim Tc Bilgisi','');
  End;


  //datalar.Login;
  datalar.Rapor_.URL := datalar.raporIlacURL;

  BhekimOnay.tesisKodu := datalar._tesisKodu;
  BhekimOnay.doktorTcKimlikNo := Tc;
  datalar.doktorKodu := doktorTCtoKod(Tc);
  BhekimOnay.raporTakipNo := ADO_RAPORLAR.FieldByName('raporTakipno').AsString;

  try
     BhekimOnayCvp := (datalar.Rapor_ as saglikTesisiRaporIslemleriWSIlac.SaglikTesisiRaporIslemleri).eraporBashekimOnay(BhekimOnay);
  except
       on E: Exception do Showmessage(E.Message,'','','info');
  end;

  if BhekimOnayCvp.sonucKodu = '0000'
  Then Begin
    ShowMessageSkin('Onay Ýþlemi Yapýldý','','','info');
  End
  Else
    ShowMessageSkin(BhekimOnayCvp.sonucMesaji,'','','info');

    IlacRaporBasHekimOnay := BhekimOnayCvp.sonucKodu;

end;


function TfrmRaporDetay.IlacRaporBasHekimOnayRed(RaporNo , Tc : string) : string;
var
 BhekimOnay : saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayRedIstekDVO;
 BhekimOnayCvp : saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayRedCevapDVO;
begin
  BhekimOnay := saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayRedIstekDVO.Create;
  BhekimOnayCvp := saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayRedCevapDVO.Create;

  if Tc = ''
  Then Begin
    Tc := InputBox('Baþhekim Bilgisi','Baþhekim Tc Bilgisi','');
  End;


  //datalar.Login;
  datalar.Rapor_.URL := datalar.raporIlacURL;

  BhekimOnay.tesisKodu := datalar._tesisKodu;
  BhekimOnay.doktorTcKimlikNo := Tc;
  datalar.doktorKodu := doktorTCtoKod(Tc);
  BhekimOnay.raporTakipNo := ADO_RAPORLAR.FieldByName('raporTakipno').AsString;

  try
     BhekimOnayCvp := (datalar.Rapor_ as saglikTesisiRaporIslemleriWSIlac.SaglikTesisiRaporIslemleri).eraporBashekimOnayRed(BhekimOnay);
  except
       on E: Exception do Showmessage(E.Message,'','','info');
  end;

  if BhekimOnayCvp.sonucKodu = '0000'
  Then Begin
    ShowMessageSkin('Onay Red Ýþlemi Yapýldý','','','info');
  End
  Else
    ShowMessageSkin(BhekimOnayCvp.sonucMesaji,'','','info');

    IlacRaporBasHekimOnayRed := BhekimOnayCvp.sonucKodu;

end;



procedure TfrmRaporDetay.IlacRaporsil(RaporNo : string);
var
  RSil : EraporSilIstekDVO;
  RSilCvp : EraporSilCevapDVO;
begin
  RSil := EraporSilIstekDVO.Create;
  RSilCvp := EraporSilCevapDVO.Create;

  //datalar.Login;
  datalar.IlacRapor_.HTTPWebNode.UserName := datalar._doktorReceteUser;
  datalar.IlacRapor_.HTTPWebNode.Password := datalar._doktorRecetePas;
  datalar.IlacRapor_.URL := 'https://medeczane.sgk.gov.tr/eczanews/services/SaglikTesisiRaporIslemleri';

  RSil.tesisKodu := datalar._tesisKodu;
  if datalar.doktorKodu = ''
  Then
    Rsil.doktorTcKimlikNo := doktorTc(ADO_DOKTORLAR.FieldByName('kod').AsString)
  Else
   RSil.doktorTcKimlikNo := doktorTc(datalar.doktorKodu);

  Rsil.raporTakipNo := ADO_RAPORLAR.FieldByName('raporTakipno').AsString;

  try
     RSilCvp := (datalar.IlacRapor_ as SaglikTesisiRaporIslemleri).eraporSil(Rsil);
  except
       on E: Exception do Showmessage(E.Message,'','','info');
  end;

  if RSilCvp.sonucKodu = '0'
  Then Begin
    ADO_RAPORLAR.Edit;
    ADO_RAPORLAR.FieldByName('raporTakipNo').AsString := '';
    ADO_RAPORLAR.Post;
    ADO_RAPORLAR.Refresh;
  End;


end;


procedure TfrmRaporDetay.RaporBul(RaporNo,RaporTarihi,verenTesis ,Tur , Durum  : string);
var
   Ts_RaporBul : RaporSorguDVO;
   Ts_RaporCvp : RaporCevapDVO;
//   RaporBilgisi : RaporBilgisiDVO;
   RaporBilgisi : RaporOkuDVO;
   RaporuOkuTakipNodan : RaporOkuRaporTakipNodanDVO;

   Ts_RaporBulIlac : saglikTesisiRaporIslemleriWSIlac.eraporSorguIstekDVO;
   Ts_RaporCvpIlac : saglikTesisiRaporIslemleriWSIlac.eraporSorguCevapDVO;
   Ts_RaporSilIlac : saglikTesisiRaporIslemleriWSIlac.eraporSilIstekDVO;
   Ts_RaporSilCvp : saglikTesisiRaporIslemleriWSIlac.EraporSilCevapDVO;

   r,i : integer;
   //OkuDVO;
  _msg_ , _msg1_ , _msg2_ , _tani_: string;
begin

   //     txtinfo.Caption := 'Rapor Aranýyor';
        //datalar.Login;
   //     datalar.Rapor_.HTTPWebNode.UserName := datalar._username;
   //     datalar.Rapor_.HTTPWebNode.Password := datalar._sifre;

        datalar.Rapor_.URL := datalar.raporURL;
        if datalar.doktorKodu= ''
        Then datalar.doktorKodu := TescildoktorBul(ADO_DOKTORLAR.FieldByName('drTescilNo').AsString);

       if Tur = '10'
       then begin
            datalar.Rapor_.URL := datalar.raporIlacURL;
            if durum = 'BUL'
            then begin
                      Ts_RaporBulIlac := saglikTesisiRaporIslemleriWSIlac.eraporSorguIstekDVO.Create;
                      Ts_RaporCvpIlac := saglikTesisiRaporIslemleriWSIlac.eraporSorguCevapDVO.Create;
                      Ts_RaporBulIlac.tesisKodu := inttostr(datalar._kurumKod);
                      Ts_RaporBulIlac.raporTakipNo := RaporNo;
                      Ts_RaporBulIlac.doktorTcKimlikNo := doktorTC(datalar.doktorKodu);

                      try
                         Ts_RaporCvpIlac := (datalar.Rapor_ as saglikTesisiRaporIslemleriWSIlac.SaglikTesisiRaporIslemleri).eraporSorgula(Ts_RaporBulIlac);

                      except
                           on E: Exception do Showmessage(E.Message,'','','info');

                      end;


                      if Ts_RaporCvpIlac.sonucKodu = '0000'
                      then begin
                                if Ts_RaporCvpIlac.eraporDVO.raporNo <> null
                                then
                                    ShowMessageskin('Rapor Kayýtlý','Rapor No : ' + Ts_RaporCvpIlac.eraporDVO.raporno,
                                                'Rapor Tarihi : ' + Ts_RaporCvpIlac.eraporDVO.raporTarihi,'info')
                                else
                                    ShowMessageskin('Rapor Kayýtlý Deðil',Ts_RaporCvpIlac.eraporDVO.raporno,'','info');


                             if Ts_RaporCvpIlac.sonucKodu = '0000'
                             then begin
                                       ADO_RAPORLAR.Edit;
                                       ADO_RAPORLAR.FieldByName('RaporTakipno').AsString := Ts_RaporCvpIlac.eraporDVO.raporTakipNo;
                                       ADO_RAPORLAR.Post;
                                   //    ShowMessageSkin('Rapor Baþarý ile Kaydedildi','','','info');
                             end;

                      end else
                      begin
                           ShowMessageskin('',Ts_RaporCvpIlac.uyariMesaji,Ts_RaporCvpIlac.sonucMesaji,'info');

                      end;


            end;

            if durum = 'SÝL'
            then begin
                      Ts_RaporSilIlac := saglikTesisiRaporIslemleriWSIlac.eraporSilIstekDVO.Create;
                      Ts_RaporSilCvp := saglikTesisiRaporIslemleriWSIlac.EraporSilCevapDVO.Create;
                      Ts_RaporSilIlac.tesisKodu := inttostr(datalar._kurumKod);
                      Ts_RaporSilIlac.raporTakipNo := RaporNo;
                      Ts_RaporSilIlac.doktorTcKimlikNo := doktorTC(datalar.doktorKodu);

                      try
                         Ts_RaporSilCvp := (datalar.Rapor_ as saglikTesisiRaporIslemleriWSIlac.SaglikTesisiRaporIslemleri).eraporSil(Ts_RaporSilIlac);

                      except
                           on E: Exception do Showmessage(E.Message,'','','info');

                      end;


                      if Ts_RaporSilCvp.sonucKodu = '0000'
                      then begin
                                ShowMessageskin('Rapor Meduladan Silindi','','','info');
                                       ADO_RAPORLAR.Edit;
                                       ADO_RAPORLAR.FieldByName('RaporTakipno').AsString := '0';
                                       ADO_RAPORLAR.Post;
                                   //    ShowMessageSkin('Rapor Baþarý ile Kaydedildi','','','info');

                      end else
                              ShowMessageSkin(Ts_RaporSilCvp.uyariMesaji,Ts_RaporSilCvp.sonucMesaji,'','info');



            end;
       end
       Else
       begin

            datalar.Rapor_M.URL := datalar.raporUrl;
                //'https://medula.sgk.gov.tr:443/medulaws/services/RaporIslemleri';


            RaporuOkuTakipNodan := RaporOkuRaporTakipNodanDVO.Create;
            Ts_RaporBul := RaporSorguDVO.Create;
            Ts_RaporCvp := RaporCevapDVO.Create;
            RaporBilgisi := RaporOkuDVO.Create;
        //    RaporBilgisi := RaporBilgisiDVO.Create;

            Ts_RaporBul.saglikTesisKodu := datalar._kurumKod;

            raporBilgisi.no := RaporNo;
            raporBilgisi.tarih := RaporTarihi;
            raporBilgisi.raporTesisKodu := strtoint(verenTesis);
            RaporBilgisi.turu := tur;

            Ts_RaporBul.raporBilgisi := RaporBilgisi;


            RaporuOkuTakipNodan.raporTakipNo := ADO_RAPORLAR.fieldbyname('raporTakipNo').AsString;
            RaporuOkuTakipNodan.saglikTesisKodu := datalar._kurumKod;

            if durum = 'BUL'
            then begin

                      try
                         Ts_RaporCvp := (datalar.Rapor_M as RaporIslemleri).raporBilgisiBul(Ts_RaporBul);
                        // raporBilgisiBulRaporTakipNodan(RaporuOkuTakipNodan);
                        // raporBilgisiBul(Ts_RaporBul);

                      except
                           on E: Exception do Showmessage(E.Message,'','','info');

                      end;


                      if Ts_RaporCvp.sonucKodu = 0
                      then begin

                             if Ts_RaporCvp.raporTuru = '1'
                             Then BEgin
                                if Ts_RaporCvp.tedaviRapor.raporDVO.raporBilgisi.no <> null
                                then begin

                                                 _msg_ :=   'Rapor Medula Sistemine Kayýtlý' + #13 +
                                                    'Rapor No        : ' + Ts_RaporCvp.tedaviRapor.raporDVO.raporBilgisi.no + #13 +
                                                    'Rapor Tarihi    : ' + Ts_RaporCvp.tedaviRapor.raporDVO.raporBilgisi.tarih + #13 +
                                                    'Tesis Kodu      : ' + inttostr(Ts_RaporCvp.tedaviRapor.raporDVO.raporBilgisi.raporTesisKodu) + #13 +
                                                    'Rapor Baþlangýç : ' + Ts_RaporCvp.tedaviRapor.raporDVO.baslangicTarihi + #13 +
                                                    'Rapor Bitiþ     : ' + Ts_RaporCvp.tedaviRapor.raporDVO.bitisTarihi + #13 +
                                                    'Protokol No     : ' + Ts_RaporCvp.tedaviRapor.raporDVO.protokolNo + #13 +
                                                    'But Kodu        : ' + Ts_RaporCvp.tedaviRapor.islemler[0].diyalizRaporBilgisi.butkodu + #13 +
                                                    'Seans Gün       : ' + inttostr(Ts_RaporCvp.tedaviRapor.islemler[0].diyalizRaporBilgisi.seansGun) + #13 +
                                                    'Seans Sayý      : ' + inttostr(Ts_RaporCvp.tedaviRapor.islemler[0].diyalizRaporBilgisi.seansSayi) + #13 +
                                                    'Açýklama        : ' + Ts_RaporCvp.tedaviRapor.raporDVO.aciklama + #13 +
                                                    'Hasta Bilgileri : ' + #13 +
                                                    '------------------' + #13 +
                                                    'T.C. Kimlik No  : ' + Ts_RaporCvp.tedaviRapor.raporDVO.hakSahibi.tckimlikNo + #13 +
                                                    'Hasta Adý       : ' + Ts_RaporCvp.tedaviRapor.raporDVO.hakSahibi.adi + ' ' +Ts_RaporCvp.tedaviRapor.raporDVO.hakSahibi.soyadi + #13 +
                                                    'Devredilen Kur  : ' + Ts_RaporCvp.tedaviRapor.raporDVO.hakSahibi.devredilenKurum + #13 +
                                                    'Yakýnlýk        : ' + Ts_RaporCvp.tedaviRapor.raporDVO.hakSahibi.yakinlikKodu + #13 +
                                                    'Sigortalý Türü  : ' + Ts_RaporCvp.tedaviRapor.raporDVO.hakSahibi.sigortaliTuru + #13 +
                                                    'Sosya Güv. No   : ' + Ts_RaporCvp.tedaviRapor.raporDVO.hakSahibi.sosyalGuvenlikNo + #13 +
                                                    'Karne No        : ' + Ts_RaporCvp.tedaviRapor.raporDVO.hakSahibi.karneNo + #13 +

                                                    'Taný Bilgileri  : ' + #13 + '------------------' + #13;

                                   //                 'Taný Kodu       : ' + ifThen(Ts_RaporCvp.tedaviRapor.raporDVO.tanilar[0].taniKodu='','0', Ts_RaporCvp.tedaviRapor.raporDVO.tanilar[0].taniKodu) + #13+

                                                     For r := 0 to length(Ts_RaporCvp.tedaviRapor.raporDVO.tanilar)-1 do
                                                     Begin
                                                       _msg1_ := _msg1_ + 'Taný Kodu       : ' + Ts_RaporCvp.tedaviRapor.raporDVO.tanilar[r].taniKodu + #13;
                                                       _tani_ := _tani_ + Ts_RaporCvp.tedaviRapor.raporDVO.tanilar[r].taniKodu + ',';
                                                     End;
                                                     if pos('N18',uppercase(_msg1_)) = 0
                                                     Then ShowMessageSkin('Rapor Tanýlarý içinde N18 Tanýsý Yoktur',
                                                                          'Lütfen Kontrol Ediniz. !','','info');


                                                    _msg1_ := _msg1_ +  'Doktor Bilgileri: ' + #13;


                                                    For  r := 0 to length(Ts_RaporCvp.tedaviRapor.raporDVO.doktorlar)-1 do
                                                    Begin
                                                     _msg1_ := _msg1_ + 'Doktor Tescil   : ' +  Ts_RaporCvp.tedaviRapor.raporDVO.doktorlar[r].drTescilNo + #13 +
                                                                        'D.Adi ve Soyadý : ' + Ts_RaporCvp.tedaviRapor.raporDVO.doktorlar[r].drAdi + ' ' + Ts_RaporCvp.tedaviRapor.raporDVO.doktorlar[r].drSoyadi + #13 +
                                                                        'Doktor BranþKodu: ' + Ts_RaporCvp.tedaviRapor.raporDVO.doktorlar[r].drBransKodu+#13;

                                                    End;






                                                   ShowMessageSkin(_msg_ + _msg1_ ,'','','info');


                                end

                                else
                                    ShowMessageskin('Rapor Kayýtlý Deðil',Ts_RaporCvp.tedaviRapor.raporDVO.raporBilgisi.no,'','info');
                             End;

                             if Ts_RaporCvp.raporTuru = '10'
                             Then BEgin
                                if Ts_RaporCvp.ilacRapor.raporDVO.raporBilgisi.no <> null
                                then
                                    ShowMessageskin('Rapor Kayýtlý','Rapor No : ' + Ts_RaporCvp.ilacRapor.raporDVO.raporBilgisi.no,
                                                'Rapor Tarihi : ' + Ts_RaporCvp.ilacRapor.raporDVO.raporBilgisi.tarih,'info')
                                else
                                    ShowMessageskin('Rapor Kayýtlý Deðil',Ts_RaporCvp.ilacRapor.raporDVO.raporBilgisi.no,'','info');
                             End;


                             if Ts_RaporCvp.sonucKodu = 0
                             then begin
                                       ADO_RAPORLAR.Edit;
                                       ADO_RAPORLAR.FieldByName('RaporTakipno').AsInteger    := Ts_RaporCvp.raporTakipNo;
                                       ADO_RAPORLAR.FieldByName('BaslangicTarihi').AsString  := Ts_RaporCvp.tedaviRapor.raporDVO.BaslangicTarihi;
                                       ADO_RAPORLAR.FieldByName('BitisTarihi').AsString      := Ts_RaporCvp.tedaviRapor.raporDVO.bitisTarihi;
                                       ADO_RAPORLAR.FieldByName('ProtokolNo').AsString       := Ts_RaporCvp.tedaviRapor.raporDVO.protokolNo;
                                       ADO_RAPORLAR.FieldByName('ProtokolTarihi').AsString   := Ts_RaporCvp.tedaviRapor.raporDVO.protokolTarihi;
                                       //ADO_RAPORLAR.FieldByName('DuzenlemeTuru').AsString    := Ts_RaporCvp.tedaviRapor.raporDVO.duzenlemeTuru;
                                       ADO_RAPORLAR.FieldByName('Aciklama').AsString         := Ts_RaporCvp.tedaviRapor.raporDVO.aciklama;
                                       ADO_RAPORLAR.FieldByName('Butkodu').AsString          := Ts_RaporCvp.tedaviRapor.islemler[0].diyalizRaporBilgisi.butkodu;
                                       ADO_RAPORLAR.FieldByName('SeansGun').AsString         := inttostr(Ts_RaporCvp.tedaviRapor.islemler[0].diyalizRaporBilgisi.seansGun);
                                       ADO_RAPORLAR.FieldByName('SeansSayi').ASstring        := inttostr(Ts_RaporCvp.tedaviRapor.islemler[0].diyalizRaporBilgisi.seansSayi);
                                       ADO_RAPORLAR.FieldByName('Tanilar').AsString          := _tani_;
                                       ADO_RAPORLAR.Post;
                                   //    ShowMessageSkin('Rapor Baþarý ile Kaydedildi','','','info');
                                 //if Ts_RaporCvp.tedaviRapor.raporDVO.doktorlar[0] = ''
                                 //then begin
                                 //ShowMessageSkin('Raporda Doktor Kaydý bulunmamaktadýr...','','','info');
                                 //end;
                                 //   if ADO_RAPORLAR.RecordCount = 0
                                 //   Then Begin
                                 //       if length(Ts_RaporCvp.tedaviRapor.raporDVO.tanilar) > 0
                                 //       Then begin
                                 //          ADO_RAPORLAR.Append;
                                 //          ADO_RAPORLAR.FieldByName('Tanilar').AsString          :=ifThen(Ts_RaporCvp.tedaviRapor.raporDVO.tanilar[0].taniKodu='','0', Ts_RaporCvp.tedaviRapor.raporDVO.tanilar[0].taniKodu);
                                 //          ADO_RAPORLAR.Post;
                                 //          End;
                                 //    End;
                                    if ADO_DOKTORLAR.RecordCount = 0
                                    Then begin
                                       if length(Ts_RaporCvp.tedaviRapor.raporDVO.doktorlar) > 0
                                       Then Begin
                                           ADO_DOKTORLAR.append;
                                           ADO_DOKTORLAR.FieldByName('DrTescilNo').AsString := ifThen(Ts_RaporCvp.tedaviRapor.raporDVO.doktorlar[0].drTescilNo= '','0', Ts_RaporCvp.tedaviRapor.raporDVO.doktorlar[0].drTescilNo);
                                           ADO_DOKTORLAR.FieldByName('drAdi').AsString      := Ts_RaporCvp.tedaviRapor.raporDVO.doktorlar[0].drAdi;
                                           ADO_DOKTORLAR.FieldByName('drSoyadi').AsString   := Ts_RaporCvp.tedaviRapor.raporDVO.doktorlar[0].drSoyadi;
                                           ADO_DOKTORLAR.FieldByName('DrBransKodu').AsString:= Ts_RaporCvp.tedaviRapor.raporDVO.doktorlar[0].drBransKodu;
                                           ADO_DOKTORLAR.FieldByName('Tipi').AsString       := Ts_RaporCvp.tedaviRapor.raporDVO.doktorlar[0].tipi;
                                           ADO_DOKTORLAR.Post;
                                      End;
                                    End;
                             end;



                      end else
                      begin
                           ShowMessageskin('',Ts_RaporCvp.sonucAciklamasi,'','info');

                      end;


            end;

            if durum = 'SÝL'
            then begin

                      try
                         Ts_RaporCvp := (datalar.Rapor_M as RaporIslemleri).raporBilgisiSil(Ts_RaporBul);

                      except
                           on E: Exception do Showmessage(E.Message,'','','info');

                      end;


                      if Ts_RaporCvp.sonucKodu = 0
                      then begin
                                ShowMessageskin('Rapor Meduladan Silindi','','','info');

                      end else
                              ShowMessageSkin(Ts_RaporCvp.sonucAciklamasi,'','','info');



            end;



       end;
    //  txtinfo.Caption := '';


end;
procedure TfrmRaporDetay.dogumOncesiCalisabilirRaporu;
var
   DogumOncesi : DogumOncesiCalisabilirRaporDVO;
begin
     DogumOncesi := DogumOncesiCalisabilirRaporDVO.Create;
//     RAPORBILGISINULL;
//     DogumOncesi.raporDVO := Rapor;
//     Ts_RaporGon.dogumOncesiCalisabilirRapor := DogumOncesi;
end;

procedure TfrmRaporDetay.IsGormezlikRaporu;
var
   Isgormezlik : IsgoremezlikRaporDVO;
begin
     Isgormezlik := IsgoremezlikRaporDVO.Create;
//     RAPORBILGISINULL;
//     Isgormezlik.raporDVO := nil;
//     Ts_RaporGon.isgoremezlikRapor := Isgormezlik;
end;

(*
procedure TfrmRaporDetay.IsGormezlikRaporuEk;
var
//   IsgormezlikEk : IsgoremezlikRaporEkDVO;
begin
     IsgormezlikEk := IsgoremezlikRaporEkDVO.Create;
//     RAPORBILGISINULL;
//     Isgormezlik.raporDVO := nil;
//     Ts_RaporGon.isgoremezlikRapor := Isgormezlik;
end;
  *)

procedure TfrmRaporDetay.dogumRaporu;
var
   dogum : DogumRaporDVO;
   cocuk : CocukBilgisiDVO;
begin
     dogum := DogumRaporDVO.Create;
     cocuk := CocukBilgisiDVO.Create;
//     RAPORBILGISINULL;
//     dogum.raporDVO := rapor;
//     Ts_RaporGon.dogumRapor := dogum;
end;

procedure TfrmRaporDetay.analikRaporu;
var
   analik : AnalikIsgoremezlikRaporDVO;
begin
     analik := AnalikIsgoremezlikRaporDVO.Create;
//     RAPORBILGISINULL;
//     analik.raporDVO := rapor;
//     Ts_RaporGon.analikRapor := analik;
end;

procedure TfrmRaporDetay.B1Click(Sender: TObject);
begin
  inherited;

  if TMenuItem(sender).Tag = 1
  Then
   IlacRaporBasHekimOnay(ADO_RAPORLAR.FieldByName('raporTakipNo').AsString,'')
  Else
   IlacRaporBasHekimOnayRed(ADO_RAPORLAR.FieldByName('raporTakipNo').AsString,'');




end;

procedure TfrmRaporDetay.protezRaporu;
var
   protez : ProtezRaporDVO;
   malzeme : MalzemeBilgisiDVO;
begin
     protez := ProtezRaporDVO.Create;
     malzeme := MalzemeBilgisiDVO.Create;
//     RAPORBILGISINULL;
//     protez.raporDVO := rapor;
//     Ts_RaporGon.protezRapor := protez;
end;



procedure TfrmRaporDetay.ilacRaporu;
var
   ilac : IlacRaporDVO;
   EtkinMadde : saglikTesisiRaporIslemleriWSIlac.eraporEtkinMaddeDVO;
   EtkinMaddeEtkin : saglikTesisiRaporIslemleriWSIlac.etkinMaddeDVO;
   EtkinMaddeler : Array_Of_eraporEtkinMaddeDVO;
   Aciklama : saglikTesisiRaporIslemleriWSIlac.eraporAciklamaDVO;
   AciklamaList : Array_Of_eraporAciklamaDVO;
   x , dizi: integer;
   ado : TADOQuery;
   sql , TakipFormNo : string;
begin

     ado := TADOQuery.Create(nil);
     ado.Connection := datalar.ADOConnection2;

     sql := 'select takipFormuNo from DiyabetTakip where dosyaNo = ' + QuotedStr(ADO_RAPORLAR.fieldbyname('dosyaNo').AsString) +
            ' and gelisNo = ' + ADO_RAPORLAR.fieldbyname('gelisNo').AsString;
     datalar.QuerySelect(ado,sql);

     if not ado.Eof
     then begin
       TakipFormNo := ado.Fields[0].AsString;
       Aciklama := saglikTesisiRaporIslemleriWSIlac.eraporAciklamaDVO.Create;
       Aciklama.takipFormuNo := TakipFormNo;
       SetLength(AciklamaList,length(AciklamaList)+1) ;
       AciklamaList[length(AciklamaList)-1] := Aciklama;
       _RaporIlac.eraporAciklamaListesi := AciklamaList;
     end;



      sql := 'select * from  IlacRaporEtkenMaddeler where RaporSira = ' + ADO_RAPORLAR.fieldbyname('sira').AsString;
      datalar.QuerySelect(ado,sql);

     SetLength(EtkinMaddeler,ado.RecordCount);

     for x := 0 to ado.RecordCount - 1 do
     begin
        EtkinMadde := saglikTesisiRaporIslemleriWSIlac.eRaporEtkinMaddeDVO.Create;

        EtkinMadde.etkinMaddeKodu := ado.fieldbyname('etkenMaddeKodu').AsString;
        EtkinMadde.kullanimDoz1 := ado.fieldbyname('kullanimDoz1').AsString;
        EtkinMadde.kullanimDoz2 := ado.fieldbyname('kullanimDoz2').AsString;
        EtkinMadde.kullanimDozBirimi := ado.fieldbyname('kullanimDozBirim').AsString;
        EtkinMadde.kullanimDozPeriyot := ado.fieldbyname('kullanimPeriyot').Asstring;
        EtkinMadde.kullanimDozPeriyotBirimi := ado.fieldbyname('kullanimPeriyotBirim').AsString;

        if ado.FieldByName('form').AsString <> ''
        then begin
          EtkinMaddeEtkin := saglikTesisiRaporIslemleriWSIlac.etkinMaddeDVO.Create;
          EtkinMaddeEtkin.kodu := ado.fieldbyname('etkenMaddeKodu').AsString;
          EtkinMaddeEtkin.adi :=  ado.fieldbyname('etkenMaddeAdi').AsString;
          EtkinMaddeEtkin.icerikMiktari := '';
          EtkinMaddeEtkin.formu := '';
          EtkinMadde.etkinMaddeDVO := EtkinMaddeEtkin;
        end;
        EtkinMaddeler[x] := EtkinMadde;
        ado.Next;
     end;

     _RaporIlac.eraporEtkinMaddeListesi := EtkinMaddeler;
     ado.Free;
     SetLength(EtkinMaddeler,0);

end;



procedure TfrmRaporDetay.ilacRaporuY;
var
   aciklama : EraporAciklamaDVO;
   aciklamaList : ArrayOfEraporAciklamaDVO;
   EtkinMadde : ERaporEtkinMaddeDVO;
   EtkinMaddeler : ArrayOfEraporEtkinMaddeDVO;
   x , dizi: integer;
   ado : TADOQuery;
   sql , TakipFormNo : string;
begin
     ado := TADOQuery.Create(nil);
     ado.Connection := datalar.ADOConnection2;

     sql := 'select takipFormuNo from DiyabetTakip where dosyaNo = ' + QuotedStr(ADO_RAPORLAR.fieldbyname('dosyaNo').AsString) +
            ' and gelisNo = ' + ADO_RAPORLAR.fieldbyname('gelisNo').AsString;
     datalar.QuerySelect(ado,sql);
       TakipFormNo := ado.Fields[0].AsString;
       SetLength(aciklamaList,1);
       aciklama := EraporAciklamaDVO.Create;
       aciklama.aciklama := ADO_RAPORLAR.fieldbyname('aciklama').AsString;
       aciklama.takipFormuNo := TakipFormNo;
       aciklamaList[0] := aciklama;
       Ts_RaporGonY.eraporDVO.eraporAciklamaListesi := aciklamaList;



      sql := 'select * from  IlacRaporEtkenMaddeler where RaporSira = ' + ADO_RAPORLAR.fieldbyname('sira').AsString;
      datalar.QuerySelect(ado,sql);

     SetLength(EtkinMaddeler,ado.RecordCount);

     for x := 0 to ado.RecordCount - 1 do
     begin
        EtkinMadde := EraporEtkinMaddeDVO.Create;
        EtkinMadde.etkinMaddeKodu := ado.fieldbyname('etkenMaddeKodu').AsString;
        EtkinMadde.kullanimDoz1 := ado.fieldbyname('kullanimDoz1').AsString;
        EtkinMadde.kullanimDoz2 := ado.fieldbyname('kullanimDoz2').AsString;
        EtkinMadde.kullanimDozBirimi := ado.fieldbyname('kullanimDozBirim').AsString;
        EtkinMadde.kullanimDozPeriyot := ado.fieldbyname('kullanimPeriyot').AsString;
        EtkinMadde.kullanimDozPeriyotBirimi := ado.fieldbyname('kullanimPeriyotBirim').AsString;

        EtkinMaddeler[x] := EtkinMadde;
        ado.Next;
     end;

     Ts_RaporGonY.eraporDVO.eraporEtkinMaddeListesi := EtkinMaddeler;

     ado.Free;
     SetLength(EtkinMaddeler,0);

end;



procedure TfrmRaporDetay.maluliyetRaporu;
var
   maluliyet : MaluliyetRaporDVO;
   BransGorus : BransGorusBilgisiDVO;
begin
     maluliyet := MaluliyetRaporDVO.Create;
//     RAPORBILGISINULL;
//     maluliyet.raporDVO := rapor;
     BransGorus := BransGorusBilgisiDVO.Create;
//     Ts_RaporGon.maluliyetRapor := maluliyet;
end;

procedure TfrmRaporDetay.N1Click(Sender: TObject);
var
  sql , sablon , id, idd ,doz1,doz2 ,peryot: string;
  ado : TADOQuery;
begin

   sablon := InputBox('Teþhis , Etken Madde Þablon','Þablon Tanýmý Giriniz','Sablon1');
   if sablon <> ''
   then begin

 //    datalar.ADOConnection2.BeginTrans;

     try
       ado := TADOQuery.Create(nil);
       ado.Connection := datalar.ADOConnection2;

       sql := 'insert into IlacRaporSablon(SablonTanimi) ' +
              'values ( ' + QuotedStr(sablon) + ') select SCOPE_IDENTITY() as id ';
       datalar.QuerySelect(ado,sql);
       id := ado.fieldbyname('id').AsString;

       ADO_ILACTESHISLER.First;
       while not ADO_ILACTESHISLER.Eof do
       begin
         sql := 'insert into IlacRaporTeshislerSablon (sablonId,teshisKodu,ICD10Kodu) ' +
                'values(' + id + ',' +
                QuotedStr(ADO_ILACTESHISLER.FieldByName('teshisKodu').AsString) + ',' +
                QuotedStr(ADO_ILACTESHISLER.FieldByName('ICD10Kodu').AsString) + ')';
         datalar.QueryExec(ado,sql);
         ADO_ILACTESHISLER.Next;
       end;


       ADO_ILACETKENMADDE.First;
       while not ADO_ILACETKENMADDE.Eof do
       begin
         doz1 := ifThen(ADO_ILACETKENMADDE.FieldByName('kullanimDoz1').AsString = '','1',ADO_ILACETKENMADDE.FieldByName('kullanimDoz1').AsString);
         doz2 := ifThen(ADO_ILACETKENMADDE.FieldByName('kullanimDoz2').AsString = '','1',ADO_ILACETKENMADDE.FieldByName('kullanimDoz2').AsString);
         peryot := ifThen(ADO_ILACETKENMADDE.FieldByName('kullanimPeriyot').AsString = '','3',ADO_ILACETKENMADDE.FieldByName('kullanimPeriyot').AsString);

         sql := 'insert into IlacRaporEtkenMaddelerSablon (sablonId,etkenMaddeKodu,etkenMaddeAdi,kullanimDoz1,' +
                ' kullanimDoz2,kullanimDozBirim,kullanimPeriyot,kullanimPeriyotBirim) ' +
                'values(' + id + ',' +
                QuotedStr(ADO_ILACETKENMADDE.FieldByName('etkenMaddeKodu').AsString) + ',' +
                QuotedStr(ADO_ILACETKENMADDE.FieldByName('etkenMaddeAdi').AsString) +  ',' +
                doz1 + ',' +
                doz2 + ',' +
                QuotedStr(ADO_ILACETKENMADDE.FieldByName('kullanimDozBirim').AsString) + ',' +
                peryot + ',' +
                QuotedStr(ADO_ILACETKENMADDE.FieldByName('kullanimPeriyotBirim').AsString) +  ')';
         datalar.QueryExec(ado,sql);
         ADO_ILACETKENMADDE.Next;
       end;

       sql := 'insert into IlacRaporAciklamaSablon (sablonId,Aciklama) ' +
              'values(' + id + ',' +
              QuotedStr(ADO_RAPORLAR.FieldByName('aciklama').AsString) + ')';
       datalar.QueryExec(ado,sql);


 //      datalar.ADOConnection2.CommitTrans;
       ShowMessageSkin('Þablon Kayýt Edildi','','','info');

     except on e : Exception do
      begin
        ShowMessageSkin(e.Message,'','','info');
  //      datalar.ADOConnection2.RollbackTrans;
      end;
     end;
     ado.Free;
   end;
end;

procedure TfrmRaporDetay.TedaviRaporu;
begin
      TedaviRapor := TedaviRaporDVO.Create;
      TedaviRapor.raporDVO := _Rapor;
      TedaviRapor.tedaviRaporTuru := strtoint(trim(ADO_RAPORLAR.fieldbyname('tedaviRaporturu').AsString));
      IslemKaydet(ADO_RAPORLAR);

      Ts_RaporGon.tedaviRapor := TedaviRapor;
end;




procedure TfrmRaporDetay.IslemKaydet(data : TADOQuery);
var
   TedaviIslem : TedaviIslemBilgisiDVO;
   tedaviIslemleri : Array_Of_TedaviIslemBilgisiDVO;
   DiyalizRprB : DiyalizRaporBilgisiDVO;
   FTRRprB : FTRRaporBilgisiDVO;
   ESWLRprB : ESWLRaporBilgisiDVO;

   dizi , i : integer;

procedure DiyalizRaporBilgisi;
begin
    DiyalizRprB := DiyalizRaporBilgisiDVO.Create;
    DiyalizRprB.butKodu := data.fieldbyname('butKodu').AsString;
    DiyalizRprB.seansGun := data.fieldbyname('seansGun').AsInteger;
    DiyalizRprB.seansSayi := data.fieldbyname('seansSayi').AsInteger;
    DiyalizRprB.refakatVarMi := 'H';
end;
procedure FTRRaporBilgisi;
begin
   FTRRprB := FTRRaporBilgisiDVO.Create;
   FTRRprB.ftrVucutBolgesiKodu := strtoint(trim(data.fieldbyname('ftrVucutBolgesiKodu').AsString));
   FTRRprB.seansGun := data.fieldbyname('seansGun').AsInteger;
   FTRRprB.seansSayi := data.fieldbyname('seansSayi').AsInteger;
   FTRRprB.butKodu := data.fieldbyname('butKodu').AsString;

end;
procedure ESWLRaporBilgisi;
var
   TasBilgisi : ESWLTasBilgisiDVO;
 //  SeansBilgisi : Ar;
   TasBilgileri : Array_Of_ESWLTasBilgisiDVO;
//   SeanBilgileri : ArrayOfESWLSeansBilgisiDVO;
   x , dizi : integer;
begin
   ESWLRprB := ESWLRaporBilgisiDVO.Create;

   ESWLRprB.butKodu := data.fieldbyname('butKodu').AsString;
   ESWLRprB.eswlRaporuTasSayisi := data.fieldbyname('tasSayisi').AsInteger;
   ESWLRprB.eswlRaporuSeansSayisi := data.fieldbyname('seansSayi').AsInteger;

   x := 0;
   ADO_TAS.First;
   dizi :=  ADO_TAS.RecordCount;
   SetLength(TasBilgileri,dizi);
   while not ADO_TAS.Eof do
   begin
     TasBilgisi := ESWLTasBilgisiDVO.Create;
     TasBilgisi.tasBoyutu := ADO_TAS.fieldbyname('tasBoyutu').AsString;
    // TasBilgisi.tasinLokalizasyonu := ADO_TAS.fieldbyname('tasLokalizasyon').AsInteger;
     TasBilgileri[x] := TasBilgisi;
     ADO_TAS.Next;
     inc(x);
   end;
   x := 0;
   ADO_SEANS.First;
   dizi :=  ADO_SEANS.RecordCount;
  // SetLength(SeanBilgileri,dizi);

 (*
   while not ADO_SEANS.Eof do
   begin
     SeansBilgisi := ESWLSeansBilgisiDVO.Create;
     SeansBilgisi.seansNo := ADO_SEANS.fieldbyname('seansNo').AsInteger;
     SeansBilgisi.seansDate := ADO_SEANS.fieldbyname('seansDate').AsString;
     SeanBilgileri[x] := SeansBilgisi;
     ADO_SEANS.Next;
     inc(x);
   end;

   *)

   ESWLRprB.eswlRaporuTasBilgileri := TasBilgileri;
 //  ESWLRprB.eswlRaporuSeansBilgileri := SeanBilgileri;

 //  SetLength(SeanBilgileri,0);
   SetLength(TasBilgileri,0);
   
end;



begin
     dizi := 1;
     SetLength(tedaviIslemleri,dizi);

     for i := 0 to 0 do
     begin
        TedaviIslem := TedaviIslemBilgisiDVO.Create;

        //Diyazliz Rapor bilgisi yukle
        if trim(data.FieldByName('tedaviRaporturu').AsString) = '1'
        Then Begin
          DiyalizRaporBilgisi;
          TedaviIslem.diyalizRaporBilgisi := DiyalizRprB;
        End;
        // Ftr rapor bilgisi yükle
        if trim(data.FieldByName('tedaviRaporturu').AsString) = '5'
        Then Begin
           FTRRaporBilgisi;
           TedaviIslem.ftrRaporBilgisi := FTRRprB;
        End;

        if trim(data.FieldByName('tedaviRaporturu').AsString) = '6'
        Then Begin
           ESWLRaporBilgisi;
           TedaviIslem.eswlRaporBilgisi := ESWLRprB;
        End;




        tedaviIslemleri[i] := TedaviIslem;
     end;
     TedaviRapor.islemler := tedaviIslemleri;
     SetLength(tedaviIslemleri,0);

end;



procedure TfrmRaporDetay.DoktorKaydet(data :  TADOTable ; Tur : string);
var
   Doktor : DoktorBilgisiDVO;
   Doktorlar : Array_Of_DoktorBilgisiDVO;
   DoktorY : EraporDoktorDVO;
   DoktorlarY : ArrayOfEraporDoktorDVO;
   DoktorIlac : saglikTesisiRaporIslemleriWSIlac.eraporDoktorDVO;
   DoktorlarIlac : Array_Of_eraporDoktorDVO;

   dizi , i :integer;
begin
      data.First;
      dizi :=  data.RecordCount;
      if Tur = '10'
      then begin
          SetLength(DoktorlarIlac,dizi);

          for i := 0 to data.RecordCount - 1  do
          begin
               DoktorIlac := saglikTesisiRaporIslemleriWSIlac.eraporDoktorDVO.Create;
               doktorIlac.adi := trtoeng(data.fieldbyname('drAdi').AsString);
               doktorIlac.soyadi := trtoeng(data.fieldbyname('drSoyadi').AsString);
               DoktorIlac.tcKimlikNo := doktorTescilToTC(data.fieldbyname('drTescilNo').AsString);
               doktorIlac.bransKodu := data.fieldbyname('drBransKodu').AsString;
               doktorIlac.sertifikaKodu :=  doktorSertifikaTescil(data.fieldbyname('drTescilNo').AsString);
               doktorlarIlac[i] := doktorIlac;
               data.Next
          end;
          _raporIlac.eraporDoktorListesi := DoktorlarIlac;
          SetLength(DoktorlarIlac,0);
      end
      else
      Begin
        SetLength(Doktorlar,dizi);
        for i := 0 to data.RecordCount - 1  do
        begin
             Doktor := DoktorBilgisiDVO.Create;
             doktor.drAdi := TrtoEng(data.fieldbyname('drAdi').AsString);
             doktor.drSoyadi := TrtoEng(data.fieldbyname('drSoyadi').AsString);
             doktor.tipi := copy(data.fieldbyname('tipi').AsString,1,1);
             doktor.drBransKodu := data.fieldbyname('drBransKodu').AsString;
             doktor.drTescilNo := data.fieldbyname('drTescilNo').AsString;
             doktorlar[i] := doktor;
             data.Next
        end;
        _rapor.doktorlar := Doktorlar;

      End;

    //  SetLength(DoktorlarY,0);
end;



procedure TfrmRaporDetay.E1Click(Sender: TObject);
var
  EtkenMaddeEkleGrs : EraporEtkinMaddeEkleIstekDVO;
  EtkenMaddeEkleCvp : EraporEtkinMaddeEkleCevapDVO;

  Etkenler : ArrayOfERaporEtkinMaddeDVO;
  EtkinMadde : EraporEtkinMaddeDVO;
  sonuc : string;
  I : integer;
begin
  EtkenMaddeEkleGrs := EraporEtkinMaddeEkleIstekDVO.Create;
  EtkenMaddeEkleCvp := EraporEtkinMaddeEkleCevapDVO.Create;

  //datalar.Login;
  datalar.IlacRapor_.HTTPWebNode.UserName := datalar._doktorReceteUser;
  datalar.IlacRapor_.HTTPWebNode.Password := datalar._doktorRecetePas;
  datalar.IlacRapor_.URL := 'https://medeczane.sgk.gov.tr/eczanews/services/SaglikTesisiRaporIslemleri';


  EtkenMaddeEkleGrs.tesisKodu := datalar._tesisKodu;
  EtkenMaddeEkleGrs.doktorTcKimlikNo := doktorTc(datalar.doktorKodu);
  EtkenMaddeEkleGrs.raporTakipNo := ADO_RAPORLAR.FieldByName('raporTakipNo').AsString;

  //Etkenler := RaporEtkinMaddeler('',ADO_RAPORLAR.FieldByName('sira').AsString);

  if ADO_ILACETKENMADDE.fieldbyname('onay').AsInteger = 0
  Then Begin
    EtkinMadde := ERaporEtkinMaddeDVO.Create;
    EtkinMadde.etkinMaddeKodu := ADO_ILACETKENMADDE.fieldbyname('etkenMaddeKodu').AsString;
    EtkinMadde.kullanimDoz1 := ADO_ILACETKENMADDE.fieldbyname('kullanimDoz1').AsString;
    EtkinMadde.kullanimDoz2 := ADO_ILACETKENMADDE.fieldbyname('kullanimDoz2').AsString;
    EtkinMadde.kullanimDozBirimi := ADO_ILACETKENMADDE.fieldbyname('kullanimDozBirim').AsString;
    EtkinMadde.kullanimDozPeriyot := ADO_ILACETKENMADDE.fieldbyname('kullanimPeriyot').AsString;
    EtkinMadde.kullanimDozPeriyotBirimi := ADO_ILACETKENMADDE.fieldbyname('kullanimPeriyotBirim').AsString;
    EtkenMaddeEkleGrs.eraporEtkinMaddeDVO := EtkinMadde;

    try
      EtkenMaddeEkleCvp := (datalar.IlacRapor_ as SaglikTesisiRaporIslemleri).eraporEtkinMaddeEkle(EtkenMaddeEkleGrs);
      sonuc := EtkenMaddeEkleCvp.sonucKodu;
    except
        on E: Exception do
        begin
           ShowMessageSkin(E.Message,'','','info');
        end;
    end; // except end

    if sonuc = '0000'
    Then Begin
      ADO_ILACETKENMADDE.Edit;
      ADO_ILACETKENMADDE.fieldbyname('onay').AsInteger := 1;
      ADO_ILACETKENMADDE.Post;
    End
    else
    ShowMessageSkin(EtkenMaddeEkleCvp.sonucMesaji,EtkenMaddeEkleCvp.uyariMesaji,'','info');

  End;

end;

procedure TfrmRaporDetay.E2Click(Sender: TObject);
var
  TeshisEkleGrs : EraporTeshisEkleIstekDVO;
  TeshisEkleCvp : EraporTeshisEkleCevapDVO;
  Teshis : EraporTeshisDVO;
  TaniListesi : ArrayOf_105704153_699425500_nillable_TaniDVO;
  Tani : TaniDVO;

  sonuc : string;
  I : integer;
begin
  TeshisEkleGrs := EraporTeshisEkleIstekDVO.Create;
  TeshisEkleCvp := EraporTeshisEkleCevapDVO.Create;

  //datalar.Login;
  datalar.IlacRapor_.HTTPWebNode.UserName := datalar._doktorReceteUser;
  datalar.IlacRapor_.HTTPWebNode.Password := datalar._doktorRecetePas;
  datalar.IlacRapor_.URL := 'https://medeczane.sgk.gov.tr/eczanews/services/SaglikTesisiRaporIslemleri';


  TeshisEkleGrs.tesisKodu := datalar._tesisKodu;
  TeshisEkleGrs.doktorTcKimlikNo := doktorTc(datalar.doktorKodu);
  TeshisEkleGrs.raporTakipNo := ADO_RAPORLAR.FieldByName('raporTakipNo').AsString;

  Teshis := EraporTeshisDVO.Create;
  Teshis.raporTeshisKodu := ADO_ILACTESHISLER.FieldByName('teshisKodu').AsString;
  Teshis.baslangicTarihi := ADO_ILACTESHISLER.FieldByName('baslangicTarihi').AsString;
  Teshis.bitisTarihi := ADO_ILACTESHISLER.FieldByName('bitisTarihi').AsString;

  setlength(TaniListesi,1);
  Tani := TaniDVO.Create;
  Tani.kodu := ADO_ILACTESHISLER.FieldByName('ICD10Kodu').AsString;
  TaniListesi[0] := Tani;

  Teshis.taniListesi := TaniListesi;


  TeshisEkleGrs.eraporTeshisDVO := Teshis;

    try
      TeshisEkleCvp := (datalar.IlacRapor_ as SaglikTesisiRaporIslemleri).eraporTeshisEkle(TeshisEkleGrs);
      sonuc := TeshisEkleCvp.sonucKodu;
    except
        on E: Exception do
        begin
           ShowMessageSkin(E.Message,'','','info');
        end;
    end; // except end

end;

procedure TfrmRaporDetay.TeshisKaydet(data : TADOQuery);
var
   Teshis : TeshisBilgisiDVO;
   Teshisler : Array_Of_TeshisBilgisiDVO;
   sql : string;
   dizi , i :integer;
   ado : TADOQuery;
begin
      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;
      sql := 'select datavalue from strtotable('+#39 + RTeshisler + #39 + ',' + #39 + ',' + #39 + ')';
      datalar.QuerySelect(ado,sql);

      dizi :=  ado.RecordCount;
      SetLength(Teshisler,dizi);

      for i := 0 to ado.RecordCount - 1 do
      begin
           Teshis := TeshisBilgisiDVO.Create;
           Teshis.baslangicTarihi := _rapor.baslangicTarihi;
           Teshis.bitisTarihi := _rapor.bitisTarihi;
           Teshis.teshisKodu := strtoint(ado.fieldbyname('datavalue').AsString);
           Teshisler[i] := Teshis;
           ado.Next;
      end;
      _rapor.teshisler := Teshisler;
      SetLength(Teshisler,dizi);
      ado.Close;
      ado.Free;
end;


procedure TfrmRaporDetay.T1Click(Sender: TObject);
var
  sql : string;
  ado , adod : TADOQuery;
  L : ArrayListeSecimler;
begin
 //  L := TStringList.Create;
 //  ListeAc2.Where := 'doktor = ' + QuotedStr(datalar.doktorKodu);

   L := ListeAc2.ListeGetir;

   if L[0].kolon1 <> ''
   Then Begin
     ado := TADOQuery.Create(nil);
     ado.Connection := datalar.ADOConnection2;
     adod := TADOQuery.Create(nil);
     adod.Connection := datalar.ADOConnection2;

     sql := 'select * from IlacRaporTeshislerSablon where sablonId = ' + L[0].kolon1;
     datalar.QuerySelect(ado,sql);
     while not ado.Eof do
     Begin
       ADO_ILACTESHISLER.Append;
       ADO_ILACTESHISLER.FieldByName('teshisKodu').AsString := ado.FieldByName('teshisKodu').AsString;
       ADO_ILACTESHISLER.FieldByName('ICD10Kodu').AsString := ado.FieldByName('ICD10Kodu').AsString;
       ADO_ILACTESHISLER.Post;
       ado.Next;
     End;

     sql := 'select * from IlacRaporEtkenMaddelerSablon where sablonId = ' + L[0].kolon1;
     datalar.QuerySelect(ado,sql);
     while not ado.Eof do
     Begin
       ADO_ILACETKENMADDE.Append;
       ADO_ILACETKENMADDE.FieldByName('etkenMaddeKodu').AsString := ado.FieldByName('etkenMaddeKodu').AsString;
       ADO_ILACETKENMADDE.FieldByName('etkenMaddeAdi').AsString := ado.FieldByName('etkenMaddeAdi').AsString;
       ADO_ILACETKENMADDE.FieldByName('kullanimDoz1').AsString := ado.FieldByName('kullanimDoz1').AsString;
       ADO_ILACETKENMADDE.FieldByName('kullanimDoz2').AsString := ado.FieldByName('kullanimDoz2').AsString;
       ADO_ILACETKENMADDE.FieldByName('kullanimDozBirim').AsString := ado.FieldByName('kullanimDozBirim').AsString;
       ADO_ILACETKENMADDE.FieldByName('kullanimPeriyot').AsString := ado.FieldByName('kullanimPeriyot').AsString;
       ADO_ILACETKENMADDE.FieldByName('kullanimPeriyotBirim').AsString := ado.FieldByName('kullanimPeriyotBirim').AsString;
       ADO_ILACETKENMADDE.Post;
       ado.Next;
     End;


     ADO_RAPORLAR.edit;
     sql := 'select * from IlacRaporAciklamaSablon where sablonId = ' + L[0].kolon1;
     datalar.QuerySelect(ado,sql);
     ADO_RAPORLAR.FieldByName('aciklama').AsString := ado.FieldByName('aciklama').AsString;
     ADO_RAPORLAR.Post;
     ado.Free;
     adod.Free;
   End;

//   L.Free;
end;

procedure TfrmRaporDetay.TaniKaydet(data : TADOQuery;Tur : string);
var
   Tani : TaniBilgisiDVO;
   Tanilar : Array_Of_TaniBilgisiDVO;
   TaniY : EraporTaniDVO;
   TanilarY : ArrayOfEraporTaniDVO;
   TaniIlac : saglikTesisiRaporIslemleriWSIlac.eraporTaniDVO;
   TanilarIlac : saglikTesisiRaporIslemleriWSIlac.Array_Of_eraporTaniDVO;
   sql : string;
   dizi , i :integer;
   ado : TADOQuery;
begin

      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;

      sql := 'select datavalue from strtotable('+#39 + RTanilar + #39 + ',' + #39 + ',' + #39 + ')';
      datalar.QuerySelect(ado,sql);

      dizi :=  ado.RecordCount;
      if Tur = '10'
      then begin
          SetLength(TanilarIlac,dizi);
          for i := 0 to ado.RecordCount - 1 do
          begin
               TaniIlac := saglikTesisiRaporIslemleriWSIlac.eraporTaniDVO.Create;
               TaniIlac.taniKodu := ado.fieldbyname('datavalue').AsString;
               TanilarIlac[i] := TaniIlac;
               ado.Next;
          end;
          _raporIlac.eraporTaniListesi := TanilarIlac;
          //SetLength(TanilarIlac,0);
      end
      else
      Begin
        SetLength(Tanilar,dizi);
        for i := 0 to ado.RecordCount - 1 do
        begin
             Tani := TaniBilgisiDVO.Create;
             Tani.taniKodu := ado.fieldbyname('datavalue').AsString;
             Tanilar[i] := Tani;
             ado.Next;
        end;
        _rapor.tanilar := Tanilar;
      End;

      SetLength(Tanilar,dizi);
      ado.close;
      ado.Free;

end;

procedure TfrmRaporDetay.HaksahibiKaydet(don : integer);
var
   HaksahibiBil : HakSahibiBilgisiDVO;

begin

     if don = 1
     then begin
               HaksahibiBil := HakSahibiBilgisiDVO.Create;
               HaksahibiBil.tckimlikNo := HastaBilgileri.TcKimlikNo;
               HaksahibiBil.karneNo := HastaBilgileri.karneNo;
               HaksahibiBil.devredilenKurum := HastaBilgileri.devredilenKurum;
               HaksahibiBil.sigortaliTuru := HastaBilgileri.sigortaliTuru;
               HaksahibiBil.sosyalGuvenlikNo := HastaBilgileri.sosyalGuvenlikNo;
               HaksahibiBil.yakinlikKodu := HastaBilgileri.yakinlikKodu;
               Haksahibibil.provizyonTarihi := HastaBilgileri.provizyontarihi;
               HaksahibiBil.provizyonTipi := HastaBilgileri.provizyonTipi;
               _rapor.hakSahibi := HaksahibiBil;
     end;



end;

procedure TfrmRaporDetay.Haksahibinull;
var
   HaksahibiBil : HakSahibiBilgisiDVO;

begin
     HaksahibiBil := HakSahibiBilgisiDVO.Create;
   //  HaksahibiBil.tckimlikNo := null;
   //  HaksahibiBil.karneNo := null;
  //   HaksahibiBil.devredilenKurum := null;
  //   HaksahibiBil.sigortaliTuru := null;
  //   HaksahibiBil.sosyalGuvenlikNo := null;
  //   HaksahibiBil.yakinlikKodu := null;
  //   Haksahibibil.provizyonTarihi := null;
  //   HaksahibiBil.provizyonTipi := null;

     _rapor.hakSahibi := HaksahibiBil;
end;


procedure TfrmRaporDetay.RAPORBILGISI(data : TADOQuery ; Tur : string);
var
 Aciklama : saglikTesisiRaporIslemleriWSIlac.eraporAciklamaDVO;
 AciklamaList : Array_Of_eraporAciklamaDVO;
begin
    if Tur = '10'
    then begin
      _RaporIlac := saglikTesisiRaporIslemleriWSIlac.eRaporDVO.Create;
//      RaporBilgi := RaporOkuDVO.Create;
    //  RaporBilgi := RaporIslemleriWS.RaporBilgisiDVO.Create;
      _RaporIlac.raporNo := data.fieldbyname('raporNo').AsString;
      _RaporIlac.raporTarihi := data.fieldbyname('raporTarihi').AsString;
      _RaporIlac.tesisKodu := data.fieldbyname('verenTesisKodu').AsString;
      _RaporIlac.hastaTcKimlikNo := DosyaNoTC(hastaDosyaNo);

     // _RaporIlac.baslangicTarihi := data.fieldbyname('baslangicTarihi').AsString;
     // _rapor.bitisTarihi := data.fieldbyname('bitisTarihi').AsString;

    //  _raporIlac.aciklama := TRtoEng(data.fieldbyname('aciklama').AsString);

      _raporIlac.raporDuzenlemeTuru := copy(data.fieldbyname('duzenlemeTuru').AsString,1,1);
      _raporIlac.protokolNo := data.fieldbyname('protokolNo').AsString;
     // _raporIlac..protokolTarihi := data.fieldbyname('protokolTarihi').AsString;
     // _raporIlac. .turu := trim(copy(data.fieldbyname('turu').AsString,1,2));
     // _rapor.raporBilgisi := RaporBilgi;

     _raporIlac.takipNo := takip;

     _raporIlac.klinikTani := data.fieldbyname('klinikTani').AsString;

     if length(data.fieldbyname('aciklama').AsString) > 0
     Then Begin
       Aciklama := saglikTesisiRaporIslemleriWSIlac.eraporAciklamaDVO.Create;
       SetLength(AciklamaList,length(AciklamaList)+1) ;
       Aciklama.aciklama := TRtoEng(data.fieldbyname('aciklama').AsString);
       AciklamaList[length(AciklamaList)-1] := Aciklama;
       _RaporIlac.eraporAciklamaListesi := AciklamaList;
     End;

     TaniKaydet(data,Tur);
     IlacTeshisKaydet(data);

     DoktorKaydet(ADO_DOKTORLAR,Tur);

    end
    Else
    Begin
        _Rapor := RaporDVO.Create;
        RaporBilgi := RaporBilgisiDVO.Create;

        RaporBilgi.no := data.fieldbyname('raporNo').AsString;
        RaporBilgi.tarih := data.fieldbyname('raporTarihi').AsString;
        RaporBilgi.raporTesisKodu := data.fieldbyname('verenTesisKodu').AsInteger;

        _rapor.baslangicTarihi := data.fieldbyname('baslangicTarihi').AsString;
        _rapor.bitisTarihi := data.fieldbyname('bitisTarihi').AsString;
        _rapor.aciklama := TrtoEng(data.fieldbyname('aciklama').AsString);
        _rapor.duzenlemeTuru := copy(data.fieldbyname('duzenlemeTuru').AsString,1,1);
        _rapor.protokolNo := data.fieldbyname('protokolNo').AsString;
        _rapor.protokolTarihi := data.fieldbyname('protokolTarihi').AsString;
        _rapor.turu := trim(copy(data.fieldbyname('turu').AsString,1,2));
        _rapor.raporBilgisi := RaporBilgi;
        _rapor.takipNo := takip;
        _rapor.klinikTani := data.fieldbyname('klinikTani').AsString;
        IlacTeshisKaydet(data);
        TaniKaydet(data,Tur);
        DoktorKaydet(ADO_DOKTORLAR,Tur);

     //   if Tur = '10'
      //  then
     //      Ts_RaporGon.ilacRapor.raporDVO := _rapor;

        if Tur = '1'
        then
           Ts_RaporGon.tedaviRapor.raporDVO := _Rapor;


    End;

end;

procedure TfrmRaporDetay.IlacTeshisKaydet(data : TADOQuery);
var
   Teshis : saglikTesisiRaporIslemleriWSIlac.eraporTeshisDVO;// TeshisBilgisiDVO;
   Teshisler : Array_Of_eraporTeshisDVO;// ArrayOfTeshisBilgisiDVO;
   TaniBilgisi : Array_Of_TaniDVO;

   sql , Tanilar: string;
   dizi , i :integer;
   ado : TADOQuery;
begin
      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;
      sql := 'select * from IlacRaporTeshisler where RaporSira = ' + ADO_RAPORLAR.fieldbyname('sira').AsString ;
      datalar.QuerySelect(ado,sql);

      dizi :=  ado.RecordCount;
      SetLength(Teshisler,dizi);


      for i := 0 to ado.RecordCount - 1 do
      begin
           Tanilar := ado.fieldbyname('ICD10kodu').AsString;
           TaniBilgisi := TaniKaydetIlacTeshisIlac(Tanilar,ado);


           Teshis := saglikTesisiRaporIslemleriWSIlac.eraporTeshisDVO.Create;
           teshis.taniListesi := TaniBilgisi;
           Teshis.baslangicTarihi := ado.fieldbyname('baslangicTarihi').AsString;
           Teshis.bitisTarihi := ado.fieldbyname('bitisTarihi').AsString;
           Teshis.raporTeshisKodu := ado.fieldbyname('teshisKodu').AsString;
           Teshisler[i] := Teshis;
           ado.Next;
      end;
      _raporIlac.eraporTeshisListesi := Teshisler;
      SetLength(Teshisler,dizi);
      ado.Close;
      ado.Free;
end;



procedure TfrmRaporDetay.IlacTeshisKaydetY(data : TADOQuery);
var
   Teshis : EraporTeshisDVO;// TeshisBilgisiDVO;
   Teshisler : ArrayOfEraporTeshisDVO;// ArrayOfTeshisBilgisiDVO;
   TaniBilgisi : ArrayOf_105704153_699425500_nillable_TaniDVO;
   sql , Tanilar: string;
   dizi , i :integer;
   ado : TADOQuery;
begin
      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;
      sql := 'select * from IlacRaporTeshisler where RaporSira = ' + ADO_RAPORLAR.fieldbyname('sira').AsString ;
      datalar.QuerySelect(ado,sql);

      dizi :=  ado.RecordCount;
      SetLength(Teshisler,dizi);


      for i := 0 to ado.RecordCount - 1 do
      begin
           Tanilar := ado.fieldbyname('ICD10kodu').AsString;
           TaniBilgisi := TaniKaydetIlacTeshisY(Tanilar,ado);

           Teshis := EraporTeshisDVO.Create;
           teshis.taniListesi := TaniBilgisi;
           Teshis.baslangicTarihi := ado.fieldbyname('baslangicTarihi').AsString;
           Teshis.bitisTarihi := ado.fieldbyname('bitisTarihi').AsString;
           Teshis.raporTeshisKodu := ado.fieldbyname('teshisKodu').AsString;
           Teshisler[i] := Teshis;
           ado.Next;
      end;
      _raporY.eraporTeshisListesi := Teshisler;
      SetLength(Teshisler,dizi);
      ado.Close;
      ado.Free;
end;


function TfrmRaporDetay.TaniKaydetIlacTeshisIlac(_tanilar_ : string ;  data : TADOQuery) : Array_Of_TaniDVO;
var
   Tani : saglikTesisiRaporIslemleriWSIlac.TaniDVO;
   Tanilar : Array_Of_TaniDVO;
   sql : string;
   dizi , i :integer;
   ado : TADOQuery;
begin

      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;

      sql := 'select datavalue from strtotable('+#39 + _tanilar_ + #39 + ',' + #39 + ',' + #39 + ')';
      datalar.QuerySelect(ado,sql);

      dizi :=  ado.RecordCount;
      SetLength(Tanilar,dizi);

      for i := 0 to ado.RecordCount - 1 do
      begin
           Tani := saglikTesisiRaporIslemleriWSIlac.TaniDVO.Create;
           Tani.kodu := ado.fieldbyname('datavalue').AsString;
           Tanilar[i] := Tani;
           ado.Next;
      end;
      Result := Tanilar;
      SetLength(Tanilar,dizi);
      ado.close;
      ado.Free;

end;


function TfrmRaporDetay.TaniKaydetIlacTeshisY(_tanilar_ : string ;  data : TADOQuery) : ArrayOf_105704153_699425500_nillable_TaniDVO;
var
   Tani : TaniDVO;
   Tanilar : ArrayOf_105704153_699425500_nillable_TaniDVO;// ArrayOfTaniBilgisiDVO;
   sql : string;
   dizi , i :integer;
   ado : TADOQuery;
begin

      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;

      sql := 'select datavalue from strtotable('+#39 + _tanilar_ + #39 + ',' + #39 + ',' + #39 + ')';
      datalar.QuerySelect(ado,sql);

      dizi :=  ado.RecordCount;
      SetLength(Tanilar,dizi);

      for i := 0 to ado.RecordCount - 1 do
      begin
           Tani := TaniDVO.Create;
           Tani.kodu := ado.fieldbyname('datavalue').AsString;
           Tanilar[i] := Tani;
           ado.Next;
      end;
      Result := Tanilar;
      SetLength(Tanilar,dizi);
      ado.close;
      ado.Free;

end;



procedure TfrmRaporDetay.RaporKaydet(dosyaNo , raporNo , turu ,Tip : string);
var
   sql : string;
   i , dizi  : integer;
   sonuc ,_sonuc_ : string;
   doktor,doktorUser,doktorSifre : string;
   Ts_RaporCvp : RaporCevapDVO;
   Ts_RaporCvpY : EraporGirisCevapDVO;
   raporTakip , msj : string;
   Ts_RaporCvpIlac : saglikTesisiRaporIslemleriWSIlac.eraporGirisCevapDVO;
begin

      RTanilar := ADO_RAPORLAR.fieldbyname('tanilar').AsString;
      RTeshisler := ADO_RAPORLAR.fieldbyname('teshisler').AsString;

      if datalar.doktorKodu = ''
      Then datalar.doktorKodu := TescildoktorBul(ADO_DOKTORLAR.FieldByName('drTescilNo').AsString);

      // medula kullanýcý bilgileri alýnýyor
      //datalar.Login;
      doktorEReceteUser(datalar.doktorKodu,doktorUser,doktorSifre);
    //  datalar.Rapor_.HTTPWebNode.UserName := datalar._username;
    //  datalar.Rapor_.HTTPWebNode.Password := datalar._sifre;
     hastadosyaNo := dosyaNo;
     if Tip = '10'
     then begin
        datalar.Rapor_.URL := datalar.raporIlacURL;

        datalar.doktorKodu := TescildoktorBul(ADO_DOKTORLAR.FieldByName('drTescilNo').AsString);
        Ts_RaporGonIlac := saglikTesisiRaporIslemleriWSIlac.eraporGirisIstekDVO.Create;
        Ts_RaporCvpIlac := saglikTesisiRaporIslemleriWSIlac.eraporGirisCevapDVO.Create;
        Ts_RaporGonIlac.tesisKodu := inttostr(datalar._kurumKod);
        Ts_RaporGonIlac.doktorTcKimlikNo := doktorTescilToTC(ADO_DOKTORLAR.FieldByName('drTescilNo').AsString);

        _don := 1;
        RAPORBILGISI(ADO_RAPORLAR,Tip);
        ilacRaporu;

        Ts_RaporGonIlac.eraporDVO := _RaporIlac;

        try
            Ts_RaporCvpIlac := (datalar.Rapor_ as saglikTesisiRaporIslemleriWSIlac.SaglikTesisiRaporIslemleri).eraporGiris(Ts_RaporGonIlac);
           // takipNoileRaporBilgisiKaydet(Ts_RaporGon);

            sonuc := Ts_RaporCvpIlac.sonucKodu;
        //    if (_sonuc_ = '0') or (_sonuc_ = '500') then _don := 1 else _don := _don + 1;     //        Application.ProcessMessages;
         except
              on E: Exception do
              begin
                 sonuc := '10000';
                 ShowMessageSkin(E.Message,'','','info');
                 _don := _don + 1;
              end;
         end; // except end

     end
     else
     begin

      datalar.Rapor_M.URL := datalar.raporURL;

      datalar.IlacRapor_.HTTPWebNode.UserName := datalar._doktorReceteUser;
      datalar.IlacRapor_.HTTPWebNode.Password := datalar._doktorRecetePas;

      Ts_RaporGon := RaporGirisDVO.Create;
      Ts_RaporCvp := RaporCevapDVO.Create;
      Ts_RaporGonY := EraporGirisIstekDVO.Create;
      Ts_RaporCvpY := EraporGirisCevapDVO.Create;


      (*
      case strtoint(turu) of
          1 : TedaviRaporu;
         10 : begin
            ilacRaporu;
         end;
      end; *)

      RAPORBILGISI(ADO_RAPORLAR,turu);
      TedaviRaporu;
    (*
        if turu = '10' then
        begin
           Ts_RaporGonY.tesisKodu := inttostr(datalar._kurumKod);
           if datalar.doktor = '' then
           Ts_RaporGonY.doktorTcKimlikNo := doktorTc(ADO_DOKTORLAR.FieldByName('kod').AsString)
           Else
           Ts_RaporGonY.doktorTcKimlikNo := doktorTC(datalar.doktor);

           ilacRaporu;
           try
              Ts_RaporCvpY := (datalar.IlacRapor_ as SaglikTesisiRaporIslemleri).eraporGiris(Ts_RaporGonY);
              sonuc := Ts_RaporCvpY.sonucKodu;
           except
                on E: Exception do
                begin
                   sonuc := '10000';
                   ShowMessageSkin(E.Message,'','','info');
                end;
           end; // except end
        end;
      *)
       // if turu = '1' then
       // begin
           Ts_RaporGon.saglikTesisKodu := datalar._kurumKod;
          // TedaviRaporu;
          // ilacRaporu;
           try
              Ts_RaporCvp := (datalar.Rapor_M as RaporIslemleri).takipNoileRaporBilgisiKaydet(Ts_RaporGon);
              sonuc := inttostr(Ts_RaporCvp.sonucKodu);
           except
                on E: Exception do
                begin
                   sonuc := '10000';
                   ShowMessageSkin(E.Message,'','','info');
                end;
           end; // except end
       // end;


     end;

     if (sonuc = '0') or (sonuc = '0000')
     then begin
              ShowMessageSkin('Rapor Baþarý ile Kaydedildi','','','info');
               if Tip = '10'
               then raporTakip := Ts_RaporCvpIlac.eraporDVO.raporTakipNo
               else raporTakip := inttostr(Ts_RaporCvp.raporTakipNo);

               ADO_RAPORLAR.Edit;
               ADO_RAPORLAR.FieldByName('RaporTakipno').AsString := raporTakip;
               ADO_RAPORLAR.Post;
               (*
               ado := TADOQuery.Create(nil);
               ado.Connection := datalar.ADOConnection2;
               sql := 'update IlacRaporEtkenMaddeler set onay = 1 where RaporSira = ' + ADO_RAPORLAR.fieldbyname('sira').AsString;
               datalar.QueryExec(ado,sql);
               ado.Free;
               ADO_ILACETKENMADDE.Refresh;  *)
     end else
     begin
        if Tip = '10'
        Then
         ShowMessageSkin('Rapor Kaydedilemedi : ' + Ts_RaporCvpIlac.sonucMesaji,Ts_RaporCvpIlac.uyariMesaji,'','info')
        else begin
          msj := inttostr(Ts_RaporCvp.sonucKodu) + ' ' + Ts_RaporCvp.sonucAciklamasi;
          ShowMessageSkin('Rapor Kaydedilemedi : ' + msj,'','','info');
        end;
     end;

   //  txtinfo.Caption := '';


end;


procedure TfrmRaporDetay.Raporlar(dosyaNo ,gelisNo : string);
var
   sql : string;
begin
   sql := 'select * from Raporlar R ' +
          ' left join SAGLIKTESIS T on T.kodu = verenTesisKodu ' +
          ' where R.dosyaNo = ' + #39 + _dosyaNo_ + #39;

   datalar.QuerySelect(ADO_RAPORLAR,sql);
   ADO_RAPORLAR.Filter := 'turu = 1';

   ADO_ILACTESHISLER.Active := true;
   ADO_ILACETKENMADDE.Active := true;

   ADO_DOKTORLAR.Active := True;
end;

procedure TfrmRaporDetay.btnVazgecClick(Sender: TObject);
begin
//     datalar.gelis.dosyaNo := '';
//     datalar.gelis.gelisNo := '0';
     close;
end;

procedure TfrmRaporDetay.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//     Ts_RaporGon.Free;
//     Ts_RaporCvp.Free;

     Action := cafree;
end;

procedure TfrmRaporDetay.FormCreate(Sender: TObject);
begin
  //datalar.Login;
  Olustur(self,_TableName_,'Hasta Raporlarý',27,sqlInsert);
  Menu := PopupMenu3;
  cxPanel.Visible := false;
  SayfaCaption('','','','','');
end;

procedure TfrmRaporDetay.FormShow(Sender: TObject);
begin
  inherited;
//
  cxTab.Tabs[0].Caption := datalar.HastaBil.Adi + ' ' + datalar.HastaBil.SoyAdi;
end;

procedure TfrmRaporDetay.btnPolClick(Sender: TObject);
begin

    ADO_RAPORLAR.Append;

(*
    frmana.login;

    Application.CreateForm(TfrmMedulaDoktorlar, frmMedulaDoktorlar);

    GorselAyar(frmMedulaDoktorlar,frmAna.global_img_list4);
    frmMedulaDoktorlar.Yukle(frmAna._username,frmAna._sifre,ADO_RAPORLAR.fieldbyname('verentesisKodu').AsInteger);
    frmMedulaDoktorlar.ShowModal;
    frmMedulaDoktorlar.Release;
    frmMedulaDoktorlar := nil;
  *)
end;

procedure TfrmRaporDetay.DBGridEh1ColExit(Sender: TObject);
begin
(*
   if (DBGridEh1.Col = 3) and (
   trim(copy(ADO_RAPORDETAY.FieldByName('turu').AsString,1,2)) = '10'
   )
   Then Begin
       DBGridEh1.Columns[8].Visible := true;
       DBGridEh1.Columns[11].Visible := false;
       DBGridEh1.Columns[12].Visible := false;
   End;

   if (DBGridEh1.Col = 3) and (
   trim(copy(ADO_RAPORDETAY.FieldByName('turu').AsString,1,2)) = '1'
   )
   Then Begin
       DBGridEh1.Columns[8].Visible := false;
       DBGridEh1.Columns[11].Visible := true;
       DBGridEh1.Columns[12].Visible := true;
   End;


  *)

end;

procedure TfrmRaporDetay.btnYazdirClick(Sender: TObject);
var
   sql , dosyaNo , raporNo : string;

begin
      dosyaNo := ADO_RAPORLAR.fieldbyname('dosyaNo').AsString;
      raporNo := ADO_RAPORLAR.fieldbyname('raporNo').AsString;

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('R');
      datalar.ADO_SQL5.Close;
      datalar.ADO_SQL5.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL5,sql);

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('RD');
      datalar.ADO_SQL6.Close;
      datalar.ADO_SQL6.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL6,sql);

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('Tani');
      datalar.ADO_SQL7.Close;
      datalar.ADO_SQL7.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL7,sql);

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('IlacTeshis');
      datalar.ADO_SQL8.Close;
      datalar.ADO_SQL8.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL8,sql);

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('EtkinMadde');
      datalar.ADO_SQL11.Close;
      datalar.ADO_SQL11.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL11,sql);

      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('Aciklama');
      datalar.ADO_SQL9.Close;
      datalar.ADO_SQL9.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL9,sql);
     (*
      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('C');
      datalar.ADO_SQL10.Close;
      datalar.ADO_SQL10.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL10,sql);



      sql := 'exec sp_medularaporYazdir ' + QuotedStr(dosyaNo) + ','
             + QuotedStr(raporNo) + ','
             + QuotedStr('Anamnez');
      datalar.ADO_SQL4.Close;
      datalar.ADO_SQL4.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL4,sql);

       *)

      frmRapor.topluset.Dataset1 := datalar.ADO_SQL5;
      frmRapor.topluset.Dataset2 := datalar.ADO_SQL6;
      frmRapor.topluset.Dataset3 := datalar.ADO_SQL7;
      frmRapor.topluset.Dataset4 := datalar.ADO_SQL8;
      frmRapor.topluset.Dataset5 := datalar.ADO_SQL9;
      frmRapor.topluset.Dataset6 := datalar.ADO_SQL10;
      frmRapor.topluset.Dataset7 := datalar.ADO_SQL11;
      frmRapor.topluset.Dataset8 := datalar.ADO_SQL4;


      case strtoint(trim(copy(ADO_RAPORLAR.fieldbyname('turu').AsString,1,2))) of
        10 :  frmRapor.raporData1(frmRapor.topluset,'116','\Rapor_ilac');
         1 :  begin
                if TBitBtn(sender).Tag = 8
                Then
                 frmRapor.raporData1(frmRapor.topluset,'053','\Rapor_tedavi')
                Else
                 frmRapor.raporData1(frmRapor.topluset,'058','\FTRTekHekim');

              end;
       End;

      frmRapor.ShowModal;

      datalar.ADO_SQL5.close;
      datalar.ADO_SQL6.close;
      datalar.ADO_SQL7.close;
      datalar.ADO_SQL8.close;
      datalar.ADO_SQL9.close;



end;

procedure TfrmRaporDetay.ADO_DOKTORLARNewRecord(DataSet: TDataSet);
begin
      //ADO_DOKTORLAR.Append;

     (*
      ADO_DOKTORLAR.FieldByName('drTescilNo').AsString := DoktorTescilBul(datalar.gelis.doktor);
      ADO_DOKTORLAR.FieldByName('drBransKodu').AsString := DoktorBransBul(datalar.gelis.doktor);
      ADO_DOKTORLAR.FieldByName('drAdi').AsString := DoktorAdi(datalar.gelis.doktor);
      ADO_DOKTORLAR.FieldByName('tipi').AsString := '1';
    //  ADO_DOKTORLAR.Post;
       *)
end;

procedure TfrmRaporDetay.ADO_RAPORDETAYNewRecord(DataSet: TDataSet);
begin
 (*
    ADO_RAPORDETAY.FieldByName('baslangicTarihi').AsDateTime := strtodate(datalar.gelis.tarih);
    ADO_RAPORDETAY.FieldByName('bitisTarihi').AsDateTime :=
    ADO_RAPORDETAY.FieldByName('baslangicTarihi').AsDateTime + 730;
    ADO_RAPORDETAY.FieldByName('protokolNo').AsString := datalar.gelis.protokol;
    ADO_RAPORDETAY.FieldByName('protokolTarihi').AsDateTime := strtodate(datalar.gelis.tarih);
    ADO_RAPORDETAY.FieldByName('turu').AsString := '10';
    ADO_RAPORDETAY.FieldByName('duzenlemeTuru').AsString := '2';

    ADO_RAPORDETAY.FieldByName('tanilar').AsString := AnamnezTanilari(datalar.gelis.dosyaNo,
                                                                      datalar.gelis.gelisNo,
                                                                      datalar.gelis.detayNo);

   *)
end;

procedure TfrmRaporDetay.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin

(*
      Application.CreateForm(TfrmTaniListesi, frmTaniListesi);
      GorselAyar(frmTaniListesi,datalar.global_img_list4);
//      datalar.doktorKodu := GelisDoktor(txtDosya.Caption,txtgelis.Caption);
      frmTaniListesi.TanilarCombo;
      frmTaniListesi.Tanilar('Rapor','',datalar.doktorKodu);

      frmTaniListesi.ShowModal;
      frmTaniListesi.Release;
      frmTaniListesi := nil;
      *)
end;

procedure TfrmRaporDetay.cxDBButtonEdit2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
 (*
      Application.CreateForm(TfrmTeshisListesi, frmTeshisListesi);
      GorselAyar(frmTeshisListesi,datalar.global_img_list4);
//      datalar.doktorKodu := GelisDoktor(txtDosya.Caption,txtgelis.Caption);
      frmTeshisListesi.TanilarCombo;
      frmTeshisListesi.Tanilar('Rapor','',datalar.doktorKodu);

      frmTeshisListesi.ShowModal;
      frmTeshisListesi.Release;
      frmTeshisListesi := nil;
      *)
end;

procedure TfrmRaporDetay.cxDBButtonEdit3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
      (*
      Application.CreateForm(TfrmIlacSarf, frmIlacSarf);
      GorselAyar(frmIlacSarf,datalar.global_img_list4);
//      datalar.doktorKodu := GelisDoktor(txtDosya.Caption,txtgelis.Caption);
      frmIlacSarf.TanilarCombo;
      frmIlacSarf.Tanilar('Rapor');

      frmIlacSarf.ShowModal;
      frmIlacSarf.Release;
      frmIlacSarf := nil;
      *)
end;

procedure TfrmRaporDetay.cxDBComboBox1PropertiesChange(Sender: TObject);
begin

       if trim(ADO_RAPORLAR.FieldByName('turu').AsString) = '1'
       Then begin
         cxPageControl1.Visible := true;
         txttedaviRaporTuru.Visible := true;
         sheetIlacTeshisleri.TabVisible := false;
         SheetDiyalizRaporBilgisi.TabVisible := true;
       end;

       if trim(ADO_RAPORLAR.FieldByName('turu').AsString) = '10'
       Then begin
          cxPageControl1.Visible := true;
          txttedaviRaporTuru.Visible := false;
          sheetIlacTeshisleri.TabVisible := true;
          SheetDiyalizRaporBilgisi.TabVisible := false;

       end;

end;
procedure TfrmRaporDetay.cxRadioGroup1PropertiesChange(Sender: TObject);
begin
  inherited;
  ADO_RAPORLAR.Filter := 'turu = ' + cxRadioGroup1.EditingValue;
end;

procedure TfrmRaporDetay.txttedaviRaporTuruPropertiesChange(
  Sender: TObject);
begin
    if ADO_RAPORLAR.FieldByName('tedaviRaporTuru').AsString = '1'
    Then Begin
       SheetDiyalizRaporBilgisi.TabVisible := True;
       cxPageControl1.ActivePage := SheetDiyalizRaporBilgisi;
//       SheetESWLRaporBilgisi.TabVisible := False;
       SheetFTRRaporBilgisi.TabVisible := False;
    End;

    (*
    if ADO_RAPORLAR.FieldByName('tedaviRaporTuru').AsString = '5'
    Then Begin
       SheetDiyalizRaporBilgisi.TabVisible := False;
     //  SheetESWLRaporBilgisi.TabVisible := False;
       SheetFTRRaporBilgisi.TabVisible := True;
       cxPageControl1.ActivePage := SheetFTRRaporBilgisi;
    End;

    if ADO_RAPORLAR.FieldByName('tedaviRaporTuru').AsString = '6'
    Then Begin
       SheetDiyalizRaporBilgisi.TabVisible := False;
    //   SheetESWLRaporBilgisi.TabVisible := True;
       SheetFTRRaporBilgisi.TabVisible := False;
  //     cxPageControl1.ActivePage := SheetESWLRaporBilgisi;
    End;

      *)
end;

procedure TfrmRaporDetay.ftrVucutBolgePropertiesChange(Sender: TObject);
begin
  //  ADO_RAPORLAR.FieldByName('ftrVucutBolgesiKodu').AsInteger :=
  //  strtoint(trim(copy(ftrVucutBolge.Text,1,2)));
end;

procedure TfrmRaporDetay.txtVerenTesisKoduPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
     (*
       Application.CreateForm(TfrmTesisList, frmTesisList);
       frmTesisList.ado_BransKodlari.Open;
       GorselAyar(frmTesisList,DATALAR.global_img_list4);
       frmTesisList.ShowModal;
       frmTesisList := nil;

       ADO_RAPORLAR.FieldByName('verentesisKodu').AsString := datalar._tesisKodu;
       *)
end;

procedure TfrmRaporDetay.sBitBtn3Click(Sender: TObject);
begin
  ADO_RAPORLAR.Edit;
end;

procedure TfrmRaporDetay.btnKayitClick(Sender: TObject);
begin
  ADO_RAPORLAR.Edit;
  if ADO_RAPORLAR.FieldByName('raporNo').AsString = ''
  then
    ADO_RAPORLAR.FieldByName('raporNo').AsString := inttostr(EnsonRaporProtokolNo);
    ADO_RAPORLAR.Post;
end;

procedure TfrmRaporDetay.sBitBtn5Click(Sender: TObject);
begin
  ADO_RAPORLAR.Cancel;
end;

procedure TfrmRaporDetay.Rapor__BeforeExecute(const MethodName: String;
  var SOAPRequest: WideString);
begin
   txtXML.Clear;
   txtXML.Lines.Add(SOAPRequest);
   txtXML.Lines.SaveToFile('RaporXML.xml');
end;

procedure TfrmRaporDetay.cxButtonTESHISClick(Sender: TObject);
begin
  (*
   try
      Application.CreateForm(TfrmTeshisListesi, frmTeshisListesi);
      GorselAyar(frmTeshisListesi,datalar.global_img_list4);
//      datalar.doktorKodu := GelisDoktor(txtDosya.Caption,txtgelis.Caption);
      frmTeshisListesi.TanilarCombo;
      frmTeshisListesi.Tanilar('RaporIlac','','','');

      frmTeshisListesi.ShowModal;
      frmTeshisListesi.Release;
      frmTeshisListesi := nil;
   except

   end;
   *)
end;

procedure TfrmRaporDetay.cxButtonICDClick(Sender: TObject);
var
  t : string;
  List : ArrayListeSecimler;
  I : integer;
  sql : string;
  ado : TADOQuery;
begin
  // List := TStringList.Create;

   if chkTani.Checked
    then begin
      TaniListe.Where := 'sikkullan = 1';
     (* TaniListe.Table := 'SIK_KULLANIM';
      TaniListe.Kolonlar.Clear;
      TaniListe.Kolonlar.Add('code');
      TaniListe.Kolonlar.Add('Tanim'); *)
    end
    else
    Begin
     (* TaniListe.Table := 'icd_teshisleri';
      TaniListe.Kolonlar.Clear;
      TaniListe.Kolonlar.Add('ICDKODU');
      TaniListe.Kolonlar.Add('TANI'); *)
      TaniListe.Where := '';
    End;

   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   TaniListe.SiralamaKolonu := 'TANI';
   List := TaniListe.ListeGetir;

   for I := 0 to length(List) - 1 do
   begin
    try
       ADO_ILACTESHISLER.Edit;
       ADO_ILACTESHISLER.FieldByName('ICD10Kodu').AsString := list[I].kolon1;
       ADO_ILACTESHISLER.post;

       sql := 'update icd_teshisleri set Sikkullan = 1 where ICDKODU = ' + QuotedStr(list[I].kolon1);
       datalar.QueryExec(ado,sql);

    except
     ado.Free;
     exit;
    end;
   end;

   ado.Free;



(*
  try
      Application.CreateForm(TfrmTaniListesi, frmTaniListesi);
      GorselAyar(frmTaniListesi,datalar.global_img_list4);
//      datalar.doktorKodu := GelisDoktor(txtDosya.Caption,txtgelis.Caption);
//      frmTaniListesi.TanilarCombo;
      frmTaniListesi.Tanilar('RaporIlac','',ADO_ILACTESHISLER.fieldbyname('teshisKodu').AsString,'','');

      frmTaniListesi.ShowModal;
      frmTaniListesi.Release;
      frmTaniListesi := nil;
  except

  end;
  *)




end;

procedure TfrmRaporDetay.cxButtonETKENClick(Sender: TObject);
begin
  (*
     try
      Application.CreateForm(TfrmEtkenMadde, frmEtkenMadde);
      GorselAyar(frmEtkenMadde,datalar.global_img_list4);
//      datalar.doktorKodu := GelisDoktor(txtDosya.Caption,txtgelis.Caption);
      frmEtkenMadde.TanilarCombo;
      frmEtkenMadde.Tanilar('Rapor','');
      frmEtkenMadde.ShowModal;
      frmEtkenMadde.Release;
      frmEtkenMadde := nil;
     except

     end;
     *)
end;

procedure TfrmRaporDetay.cxButtonSUTKURALClick(Sender: TObject);
var
  kuralSec : string;
begin

   (*

 //  kuralSec := cxDBButtonEdit3.SelText;

     Application.CreateForm(TfrmEtkinMaddeSUTKurali, frmEtkinMaddeSUTKurali);
     frmEtkinMaddeSUTKurali.EtkinMaddeler(ADO_RAPORLAR.fieldbyname('sira').AsString , cxDBDateEdit3.Text);
 //    frmEtkinMaddeSUTKurali.doldur(Em_Cvp);
     frmEtkinMaddeSUTKurali.pnlTitle.Caption := 'Etkin Madde SUT Kuralý - [' + '' + ']';
     frmEtkinMaddeSUTKurali.ShowModal;
     frmEtkinMaddeSUTKurali := nil;

//   EtkinmaddeSUTKurali(kuralSec,ADO_RAPORLAR.fieldbyname('raporTarihi').AsString,datalar.yardimciIslemler);
     *)
end;

procedure TfrmRaporDetay.ADO_ILACTESHISLERNewRecord(DataSet: TDataSet);
begin
  ADO_ILACTESHISLER.FieldByName('baslangicTarihi').AsDateTime := ADO_RAPORLAR.fieldbyname('baslangicTarihi').AsDateTime;
  ADO_ILACTESHISLER.FieldByName('bitisTarihi').AsDateTime := ADO_RAPORLAR.fieldbyname('bitisTarihi').AsDateTime;


end;

procedure TfrmRaporDetay.ADO_RAPORLARAfterScroll(DataSet: TDataSet);
begin
       if trim(ADO_RAPORLAR.FieldByName('turu').AsString) = '1'
       Then begin
         cxPageControl1.Visible := true;
         txttedaviRaporTuru.Visible := true;
         sheetIlacTeshisleri.TabVisible := false;
        SheetDiyalizRaporBilgisi.TabVisible := true;
       end;

       if trim(ADO_RAPORLAR.FieldByName('turu').AsString) = '10'
       Then begin
          cxPageControl1.Visible := true;
          txttedaviRaporTuru.Visible := false;
         sheetIlacTeshisleri.TabVisible := true;
         SheetDiyalizRaporBilgisi.TabVisible := false;

       end;
end;


function TfrmRaporDetay.RaporEtkinMaddeler(m , sira: string) : ArrayOfEraporEtkinMaddeDVO;
var
   EtkinMadde : EraporEtkinMaddeDVO;
   EtkinMaddeler : ArrayOfEraporEtkinMaddeDVO;
   x , dizi: integer;
   ado : TADOQuery;
   sql , TakipFormNo : string;
begin
    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;

     sql := 'select * from  IlacRaporEtkenMaddeler where isnull(onay,0) = 0 and RaporSira = ' + sira;
     datalar.QuerySelect(ado,sql);

     SetLength(EtkinMaddeler,ado.RecordCount);

     for x := 0 to ado.RecordCount - 1 do
     begin
        EtkinMadde := ERaporEtkinMaddeDVO.Create;
        EtkinMadde.etkinMaddeKodu := ado.fieldbyname('etkenMaddeKodu').AsString;
        EtkinMadde.kullanimDoz1 := ado.fieldbyname('kullanimDoz1').AsString;
        EtkinMadde.kullanimDoz2 := ado.fieldbyname('kullanimDoz2').AsString;
        EtkinMadde.kullanimDozBirimi := ado.fieldbyname('kullanimDozBirim').AsString;
        EtkinMadde.kullanimDozPeriyot := ado.fieldbyname('kullanimPeriyot').AsString;
        EtkinMadde.kullanimDozPeriyotBirimi := ado.fieldbyname('kullanimPeriyotBirim').AsString;
        EtkinMaddeler[x] := EtkinMadde;
        ado.Next;
     end;

     Result := EtkinMaddeler;

     ado.Free;
     SetLength(EtkinMaddeler,0);

end;


procedure TfrmRaporDetay.btnDuzeltClick(Sender: TObject);
var
  RprDG : IlacRaporDuzeltDVO;
  RprDC : RaporIslemleriWS.RaporCevapDVO;
  EtkenMadde : RaporEtkinMaddeDVO;
  Tani : TaniBilgisiDVO;
  ado : TADOQuery;
  sql,ack ,msg,TakipFormNo: string;
  ek : integer;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  sql := 'select takipFormuNo from DiyabetTakip where dosyaNo = ' + QuotedStr(ADO_RAPORLAR.fieldbyname('dosyaNo').AsString) +
         ' and gelisNo = ' + ADO_RAPORLAR.fieldbyname('gelisNo').AsString;
  datalar.QuerySelect(ado,sql);
  TakipFormNo := ado.Fields[0].AsString;
  ado.Free;

  ek := pos('&',ADO_RAPORLAR.fieldbyname('aciklama').asstring);

  if (ek = 0) and (TakipFormNo = '')
  then begin
   ShowMessageSkin('Eklenecek açýklama bulunamadý','','','info');
   exit;
  end;

  ack := copy(ADO_RAPORLAR.fieldbyname('aciklama').asstring,ek+1,2000);

  if RaporAciklamaEkle(ADO_RAPORLAR.fieldbyname('raporTakipNo').asstring,
                    ack,
                    TakipFormNo,
                    msg) = '0'
  Then Begin
    ADO_RAPORLAR.Edit;
    ADO_RAPORLAR.FieldByName('aciklama').AsString :=
    StringReplace(ADO_RAPORLAR.FieldByName('aciklama').AsString,'&',' ',[rfReplaceAll]);
    ADO_RAPORLAR.Post;
    ShowMessageSkin('Açýklama eklendi','','','info');
  End
  Else
  ShowMessageSkin('Hata  : ' + msg,'','','info');

(*
  RprDG := IlacRaporDuzeltDVO.Create;
  RprDC := RaporCevapDVO.Create;
 // Tani := TaniBilgisiDVO.Create;


      datalar.Login;
      Rapor__.HTTPWebNode.UserName := datalar._username;
      Rapor__.HTTPWebNode.Password := datalar._sifre;

  RprDG.drTescilNo := ADO_DOKTORLAR.fieldbyname('drtescilNo').AsString;
  RprDG.raporNo := ADO_RAPORLAR.fieldbyname('raporNo').AsString;
  RprDG.raporTarihi := ADO_RAPORLAR.fieldbyname('raporTarihi').AsString;
  RprDG.raporTuru := trim(ADO_RAPORLAR.fieldbyname('turu').AsString);
  RprDG.tesisKodu := strtoint(ADO_RAPORLAR.fieldbyname('verenTesisKodu').AsString);
  RprDG.duzeltmeTarihi := ADO_RAPORLAR.fieldbyname('duzeltmeTarihi').AsString;
  RprDG.duzeltmeBilgisi := ADO_RAPORLAR.fieldbyname('duzeltmeBilgisi').AsString;
  RprDG.tanilar := kadirmedula3.TaniKaydet(txtTanilar.Text);

//  RprDG.raporEtkinMaddeler := RaporEtkinMaddeler(txtEtkenMadde.Text,ADO_RAPORLAR.fieldbyname('sira').AsString);

  try
     RprDC := (Rapor__ as RaporIslemleri).ilacRaporDuzelt(RprDG);

  except
       on E: Exception do Showmessage(E.Message,'','','info');

  end;

  if RprDC.sonucKodu = 0
  Then begin

     ado := TADOQuery.Create(nil);
     ado.Connection := datalar.ADOConnection2;
     sql := 'update IlacRaporEtkenMaddeler set onay = 1 where RaporSira = ' + ADO_RAPORLAR.fieldbyname('sira').AsString;
     datalar.QueryExec(ado,sql);
     ado.Free;
     ADO_ILACETKENMADDE.Refresh;

     ShowMessageSkin('Rapor Açýklma bilgisine Deðiþiklikler Eklendi','','','info');


  end else
  begin
     ShowMessageSkin(RprDC.sonucAciklamasi,'','','info');
  end;

*)
end;

procedure TfrmRaporDetay.cxButtonDoktorlarClick(Sender: TObject);
var
  t : string;
  List : ArrayListeSecimler;
begin
  // List := TStringList.Create;

   List := DrList.ListeGetir;

   if length(List) > 0
   Then BEgin
    try
       ADO_DOKTORLAR.Append;
       ADO_DOKTORLAR.FieldByName('kod').AsString := list[0].kolon1;
       ADO_DOKTORLAR.FieldByName('drAdi').AsString := list[0].kolon2;
       ADO_DOKTORLAR.FieldByName('drTescilNo').AsString := list[0].kolon3;
       ADO_DOKTORLAR.FieldByName('drBransKodu').AsString := list[0].kolon4;
       ADO_DOKTORLAR.FieldByName('tipi').AsString := '2';
       ADO_DOKTORLAR.post;
    except
    end;
   End;
end;

procedure TfrmRaporDetay.btnDiyabetClick(Sender: TObject);
var
  _ok_ : integer;
begin
  _ok_ := 0;
  ADO_ILACTESHISLER.First;
  while not ADO_ILACTESHISLER.Eof do
  begin
      if ADO_ILACTESHISLER.FieldByName('teshisKodu').AsInteger in [47,50,51,52,53,54,244,246,247,145]
      Then _ok_ := 1;

     ADO_ILACTESHISLER.Next;
  end;


   if _ok_ = 1
   Then Begin
(*
       Application.CreateForm(TfrmDiyabetTakipFormu, frmDiyabetTakipFormu);
       GorselAyar(frmDiyabetTakipFormu,datalar.global_img_list4);
       frmDiyabetTakipFormu.Formlar(ADO_RAPORLAR.fieldbyname('dosyaNo').AsString,ADO_RAPORLAR.fieldbyname('gelisNo').AsString,'0');
       frmDiyabetTakipFormu.Dosya(ADO_RAPORLAR.fieldbyname('dosyaNo').AsString,ADO_RAPORLAR.fieldbyname('gelisNo').AsString,'0');
       frmDiyabetTakipFormu.ShowModal;
       frmDiyabetTakipFormu := nil;
                        *)
   End;

end;

end.






