unit hizliKayit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, ExtCtrls, cxControls, cxPC,adodb,db,
  cxGraphics, cxDropDownEdit, cxMaskEdit, cxCalendar, cxLabel, cxContainer,
  cxEdit, cxTextEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,kadir,
  data_modul,kadirMedula3, KadirType,GetFormClass,
  cxDBEdit, dxmdaset, InvokeRegistry, Rio, SOAPHTTPClient,strUtils,RaporIslemleriWS,
  cxMemo, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxGroupBox, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxGridBandedTableView, cxGridDBBandedTableView, cxGridCardView,
  cxGridDBCardView, cxGridCustomLayoutView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  SQLMemMain, cxImageComboBox, KadirLabel,GirisUnit, cxButtons, Menus;

type
  TfrmHizliKayit = class(TGirisForm)
    pnlOnay: TPanel;
    txtinfo: TLabel;
    cxPageControl1: TcxPageControl;
    TakipData: TdxMemData;
    TakipDataTcKimlikNo: TStringField;
    TakipDataTakipTarihi: TStringField;
    TakipDataPTuru: TStringField;
    TakipDatatturu: TStringField;
    TakipDatatedevitipi: TStringField;
    TakipDatadurum: TStringField;
    TakipDatakurum: TStringField;
    TakipDataservis: TStringField;
    TakipDatadoktor: TStringField;
    DataSource1: TDataSource;
    Medula3Provizyon: THTTPRIO;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    txtTcKimlikNoAra: TcxTextEdit;
    txtTakipTarihi: TcxDateEdit;
    cxLabel2: TcxLabel;
    txtProvizyonTuru: TcxComboBox;
    txtTakipTuru: TcxComboBox;
    cxLabel4: TcxLabel;
    txtTedaviTipi: TcxComboBox;
    txtBranslar: TcxDBLookupComboBox;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    txtdoktorlar: TcxDBLookupComboBox;
    cxGroupBox2: TcxGroupBox;
    Sayfalar_HizliKayit: TcxPageControl;
    Sayfa_Sonuc: TcxTabSheet;
    txtCinsiyet: TRadioGroup;
    txtdogumTarihi: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxLabel11: TcxLabel;
    txtHastaSoyadi: TcxTextEdit;
    txtHastaAdi: TcxTextEdit;
    cxLabel10: TcxLabel;
    txtTakipNo: TcxTextEdit;
    txtBasvuruNo: TcxTextEdit;
    Sayfa_Log: TcxTabSheet;
    txtHata: TcxMemo;
    cxLabel7: TcxLabel;
    cxLabel6: TcxLabel;
    memDataRaporlar: TdxMemData;
    memDataRaporlarRaporTuru: TStringField;
    memDataRaporlarRaporNo: TStringField;
    memDataRaporlarRaporTarihi: TStringField;
    memDataRaporlarVerenTesis: TStringField;
    memDataRaporlarTedaviRaporTuru: TStringField;
    memDataRaporlarraporTakipNo: TStringField;
    memDataRaporlarseansGun: TIntegerField;
    memDataRaporlarseansSayi: TIntegerField;
    memDataRaporlarbaslangicTarihi: TDateTimeField;
    memDataRaporlarbitisTarihi: TDateField;
    memDataRaporlarprotokolNo: TStringField;
    memDataRaporlarbutKodu: TStringField;
    memDataRaporlartani: TStringField;
    memDataRaporlarprotokolTarihi: TDateField;
    memDataRaporlaraciklama: TStringField;
    DataSource3: TDataSource;
    MemTable_Doktorlar: TSQLMemTable;
    MemTable_Doktorlardrtescil: TStringField;
    MemTable_Doktorlardradi: TStringField;
    MemTable_DoktorlardrSoyadi: TStringField;
    MemTable_Doktorlardrbrans: TStringField;
    MemTable_DoktorlarraporTakipNo: TStringField;
    DataSource2: TDataSource;
    RbTc: TRadioButton;
    RbRt: TRadioButton;
    txtTcKimlikNo: TcxTextEdit;
    cxLabel13: TcxLabel;
    txtilkTakip: TcxTextEdit;
    txtSigortaliTuru: TcxImageComboKadir;
    txtDevredilenKurum: TcxTextEdit;
    PopupMenu1: TPopupMenu;
    B1: TMenuItem;
    H1: TMenuItem;
    N1: TMenuItem;
    Sayfa_Rapor: TcxTabSheet;
    cxGrid2: TcxGrid;
    GridEkstre: TcxGridDBTableView;
    GridEkstreRaporTuru: TcxGridDBColumn;
    GridEkstreRaporNo: TcxGridDBColumn;
    GridEkstreRaporTarihi: TcxGridDBColumn;
    GridEkstreVerenTesis: TcxGridDBColumn;
    GridEkstreTedaviRaporTuru: TcxGridDBColumn;
    GridEkstreraporTakipNo: TcxGridDBColumn;
    GridEkstreseansGun: TcxGridDBColumn;
    GridEkstreseansSayi: TcxGridDBColumn;
    GridEkstrebaslangicTarihi: TcxGridDBColumn;
    GridEkstrebitisTarihi: TcxGridDBColumn;
    GridEkstreprotokolNo: TcxGridDBColumn;
    GridEkstrebutKodu: TcxGridDBColumn;
    GridEkstretani: TcxGridDBColumn;
    GridEkstreprotokolTarihi: TcxGridDBColumn;
    GridEkstreaciklama: TcxGridDBColumn;
    cxGrid2DBCardView1: TcxGridDBCardView;
    cxGrid2DBCardView1RecId1: TcxGridDBCardViewRow;
    cxGrid2DBCardView1drTescil1: TcxGridDBCardViewRow;
    cxGrid2DBCardView1drAdi1: TcxGridDBCardViewRow;
    cxGrid2DBCardView1drSoyadi1: TcxGridDBCardViewRow;
    cxGrid2DBCardView1brans1: TcxGridDBCardViewRow;
    cxGrid2DBCardView1tip1: TcxGridDBCardViewRow;
    cxGrid2DBCardView1raporTakipNo: TcxGridDBCardViewRow;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1drtescil: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1dradi: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1drSoyadi: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1drbrans: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1tip: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1raporTakipNo: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid2Level2: TcxGridLevel;
    BtnSorgula: TcxButton;
    btnKabul: TcxButton;
    btnVazgec: TcxButton;
    procedure HizliKabul(tc : string);
    procedure Sorgula;
    procedure Kabul;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtBranslarPropertiesChange(Sender: TObject);
    procedure btnKabulClick(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtBranslarClick(Sender: TObject);
    procedure katilimpayiEkle;
    procedure katilimpayiSil;
    procedure MemTable_DoktorlarAfterScroll(DataSet: TDataSet);
    procedure RbRtClick(Sender: TObject);
    procedure RbTcClick(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure BtnSorgulaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure Rapor(RaporCvp : RaporIslemleriWS.RaporCevapTCKimlikNodanDVO);overload;
    procedure Rapor(RaporCvp : RaporIslemleriWS.raporCevapDVO);overload;
  end;

var
  frmHizliKayit: TfrmHizliKayit;
  ado , adodoktor : TADOQuery;
  datasource  ,datasourcedoktor : TDataSource;
  HastaBilgi : THastaKabul;
  _dosyaNo , _gelisNo , _tedaviTur ,    sgk , sgkk  : string;
 _msg : string;

implementation
  uses AnaUnit;
{$R *.dfm}


procedure TfrmHizliKayit.Rapor(RaporCvp : RaporIslemleriWS.RaporCevapTCKimlikNodanDVO);
var
  x , i ,y : integer;
  tanilar : string;
begin
       if Length(RaporCvp.raporlar) > 0
       Then Begin


          for x := 0 to Length(RaporCvp.raporlar) - 1 do
          Begin
            memDataRaporlar.Append;
            memDataRaporlar.FieldByName('raporTuru').AsString := RaporCvp.raporlar[x].raporTuru;
            if  RaporCvp.raporlar[x].raporTuru = '1'
            Then begin
              if RaporCvp.raporlar[x].tedaviRapor.tedaviRaporTuru = 1
              Then Begin
               memDataRaporlar.FieldByName('raporTakipNo').AsString := inttostr(RaporCvp.raporlar[x].raporTakipNo);
               memDataRaporlar.FieldByName('raporTarihi').AsString := RaporCvp.raporlar[x].tedaviRapor.raporDVO.raporBilgisi.tarih;
               memDataRaporlar.FieldByName('raporNo').AsString := RaporCvp.raporlar[x].tedaviRapor.raporDVO.raporBilgisi.no;
               memDataRaporlar.FieldByName('verenTesis').AsString := inttostr(RaporCvp.raporlar[x].tedaviRapor.raporDVO.raporBilgisi.raporTesisKodu);
               memDataRaporlar.FieldByName('baslangicTarihi').AsString := RaporCvp.raporlar[x].tedaviRapor.raporDVO.baslangicTarihi;
               memDataRaporlar.FieldByName('bitisTarihi').AsString := RaporCvp.raporlar[x].tedaviRapor.raporDVO.bitisTarihi;
               memDataRaporlar.FieldByName('tedaviRaporTuru').AsString := inttostr(RaporCvp.raporlar[x].tedaviRapor.tedaviRaporTuru);
               memDataRaporlar.FieldByName('protokolNo').AsString := RaporCvp.raporlar[x].tedaviRapor.raporDVO.protokolNo;
               memDataRaporlar.FieldByName('protokolTarihi').AsString := RaporCvp.raporlar[x].tedaviRapor.raporDVO.protokolTarihi;
               memDataRaporlar.FieldByName('Aciklama').AsString := raporCvp.raporlar[x].tedaviRapor.raporDVO.aciklama;
  //            memDataRaporlar.FieldByName('tani').AsString :=
               memDataRaporlar.FieldByName('seansGun').AsInteger := RaporCvp.raporlar[x].tedaviRapor.islemler[0].diyalizRaporBilgisi.seansGun;
               memDataRaporlar.FieldByName('seansSayi').AsInteger := RaporCvp.raporlar[x].tedaviRapor.islemler[0].diyalizRaporBilgisi.seansSayi;
               memDataRaporlar.FieldByName('butKodu').AsString := RaporCvp.raporlar[x].tedaviRapor.islemler[0].diyalizRaporBilgisi.butKodu;
               tanilar := '';

               for y := 0 to Length(RaporCvp.raporlar[x].tedaviRapor.raporDVO.tanilar) - 1 do
               begin
                 tanilar := tanilar + ',' +
                 RaporCvp.raporlar[x].tedaviRapor.raporDVO.tanilar[y].taniKodu;
               end;

               if copy(tanilar,1,1) = ','
               then
                tanilar := copy(tanilar,2,100);

               if (length(tanilar) > 0) and (tanilar[length(tanilar)] = ',')
               then
                tanilar := copy(tanilar,1,length(tanilar)-1);

                memDataRaporlar.FieldByName('tani').AsString := tanilar;

               if pos('N18',upperCase(tanilar)) = 0
               Then ShowMessageSkin('Rapor Tanýlarý içinde N18 Tanýsý Yoktur',
                                    'Lütfen Kontrol Ediniz. !','','info');

               MemTable_Doktorlar.Active := false;
               MemTable_Doktorlar.Active := True;
               for y := 0 to Length(RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar) - 1 do
               begin
                 if RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar[y].drBransKodu <> '1062'
                 Then Showmessageskin('Doktor Branþ Nefroloji Deðildir','Lütfen Kontrol Edin','','info');
                 MemTable_Doktorlar.Append;
                 MemTable_Doktorlardrtescil.Value := RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar[y].drTescilNo;
                 MemTable_Doktorlardradi.Value := RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar[y].drAdi;
                 MemTable_DoktorlardrSoyadi.Value := RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar[y].drSoyadi;
                 MemTable_Doktorlardrbrans.Value := RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar[y].drBransKodu;
                 MemTable_DoktorlarraporTakipNo.Value := inttostr(RaporCvp.raporlar[x].raporTakipNo);
                 MemTable_Doktorlar.Post;
               end;

              End;
            End;


            if  RaporCvp.raporlar[x].raporTuru = '10'
            Then Begin
              memDataRaporlar.FieldByName('raporTakipNo').AsString := inttostr(RaporCvp.raporlar[x].raporTakipNo);
              memDataRaporlar.FieldByName('raporTarihi').AsString := RaporCvp.raporlar[x].ilacRapor.raporDVO.raporBilgisi.tarih;
              memDataRaporlar.FieldByName('raporNo').AsString := RaporCvp.raporlar[x].ilacRapor.raporDVO.raporBilgisi.no;
              memDataRaporlar.FieldByName('verenTesis').AsString := inttostr(RaporCvp.raporlar[x].ilacRapor.raporDVO.raporBilgisi.raporTesisKodu);
              memDataRaporlar.FieldByName('baslangicTarihi').AsString := RaporCvp.raporlar[x].ilacRapor.raporDVO.baslangicTarihi;
              memDataRaporlar.FieldByName('bitisTarihi').AsString := RaporCvp.raporlar[x].ilacRapor.raporDVO.bitisTarihi;
            //  memDataRaporlar.FieldByName('tedaviRaporTuru').AsString := inttostr(RaporCvp.raporlar[x].ilacRapor.tedaviRaporTuru);
              memDataRaporlar.FieldByName('protokolNo').AsString := RaporCvp.raporlar[x].ilacRapor.raporDVO.protokolNo;
              memDataRaporlar.FieldByName('protokolTarihi').AsString := RaporCvp.raporlar[x].ilacRapor.raporDVO.protokolTarihi;
              memDataRaporlar.FieldByName('Aciklama').AsString := raporCvp.raporlar[x].ilacRapor.raporDVO.aciklama;


            End;
            (*
            for i := 0 to length(RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar) - 1 do
            begin

               memDataRaporDoktor.Append;
               memDataRaporDoktor.FieldByName('raporTakipNo').AsString := inttostr(RaporCvp.raporlar[x].raporTakipNo);
               memDataRaporDoktor.FieldByName('drTescil').AsString :=
               RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar[i].drTescilNo;
               memDataRaporDoktor.FieldByName('dradi').AsString := RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar[i].drAdi;
               memDataRaporDoktor.FieldByName('drSoyadi').AsString := RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar[i].drSoyadi;
               memDataRaporDoktor.FieldByName('drbrans').AsString := RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar[i].drBransKodu;
               memDataRaporDoktor.FieldByName('tip').AsString := RaporCvp.raporlar[x].tedaviRapor.raporDVO.doktorlar[i].tipi;
               memDataRaporDoktor.Post;

            end;

              *)
            memDataRaporlar.Post;
          End;
       End;

       memDataRaporlar.First;



end;


procedure TfrmHizliKayit.Rapor(RaporCvp : RaporIslemleriWS.raporCevapDVO);
var
  x , i ,y : integer;
  tanilar : string;
begin
       if RaporCvp.sonucKodu = 0
       Then Begin
        //  for x := 0 to Length(RaporCvp.raporlar) - 1 do
        //  Begin
            memDataRaporlar.Append;
            memDataRaporlar.FieldByName('raporTuru').AsString := RaporCvp.raporTuru;
            if  RaporCvp.raporTuru = '1'
            Then begin
              if RaporCvp.tedaviRapor.tedaviRaporTuru = 1
              Then Begin
               memDataRaporlar.FieldByName('raporTakipNo').AsString := inttostr(RaporCvp.raporTakipNo);
               memDataRaporlar.FieldByName('raporTarihi').AsString := RaporCvp.tedaviRapor.raporDVO.raporBilgisi.tarih;
               memDataRaporlar.FieldByName('raporNo').AsString := RaporCvp.tedaviRapor.raporDVO.raporBilgisi.no;
               memDataRaporlar.FieldByName('verenTesis').AsString := inttostr(RaporCvp.tedaviRapor.raporDVO.raporBilgisi.raporTesisKodu);
               memDataRaporlar.FieldByName('baslangicTarihi').AsString := RaporCvp.tedaviRapor.raporDVO.baslangicTarihi;
               memDataRaporlar.FieldByName('bitisTarihi').AsString := RaporCvp.tedaviRapor.raporDVO.bitisTarihi;
               memDataRaporlar.FieldByName('tedaviRaporTuru').AsString := inttostr(RaporCvp.tedaviRapor.tedaviRaporTuru);
               memDataRaporlar.FieldByName('protokolNo').AsString := RaporCvp.tedaviRapor.raporDVO.protokolNo;
               memDataRaporlar.FieldByName('protokolTarihi').AsString := RaporCvp.tedaviRapor.raporDVO.protokolTarihi;
               memDataRaporlar.FieldByName('Aciklama').AsString := raporCvp.tedaviRapor.raporDVO.aciklama;
  //            memDataRaporlar.FieldByName('tani').AsString :=
               memDataRaporlar.FieldByName('seansGun').AsInteger := RaporCvp.tedaviRapor.islemler[0].diyalizRaporBilgisi.seansGun;
               memDataRaporlar.FieldByName('seansSayi').AsInteger := RaporCvp.tedaviRapor.islemler[0].diyalizRaporBilgisi.seansSayi;
               memDataRaporlar.FieldByName('butKodu').AsString := RaporCvp.tedaviRapor.islemler[0].diyalizRaporBilgisi.butKodu;
               tanilar := '';
               for y := 0 to Length(RaporCvp.tedaviRapor.raporDVO.tanilar) - 1 do
               begin
                 tanilar := tanilar + ',' +
                 RaporCvp.tedaviRapor.raporDVO.tanilar[y].taniKodu;
               end;

               if copy(tanilar,1,1) = ','
               then
                tanilar := copy(tanilar,2,100);

               if (length(tanilar) > 0) and (tanilar[length(tanilar)] = ',')
               then
                tanilar := copy(tanilar,1,length(tanilar)-1);

                memDataRaporlar.FieldByName('tani').AsString := tanilar;

               if pos('N18',upperCase(tanilar)) = 0
               Then ShowMessageSkin('Rapor Tanýlarý içinde N18 Tanýsý Yoktur',
                                    'Lütfen Kontrol Ediniz. !','','info');

               MemTable_Doktorlar.Active := false;
               MemTable_Doktorlar.Active := True;
               for y := 0 to Length(RaporCvp.tedaviRapor.raporDVO.doktorlar) - 1 do
               begin
                 if RaporCvp.tedaviRapor.raporDVO.doktorlar[y].drBransKodu <> '1062'
                 Then Showmessageskin('Doktor Branþ Nefroloji Deðildir','Lütfen Kontrol Edin','','info');
                 MemTable_Doktorlar.Append;
                 MemTable_Doktorlardrtescil.Value := RaporCvp.tedaviRapor.raporDVO.doktorlar[y].drTescilNo;
                 MemTable_Doktorlardradi.Value := RaporCvp.tedaviRapor.raporDVO.doktorlar[y].drAdi;
                 MemTable_DoktorlardrSoyadi.Value := RaporCvp.tedaviRapor.raporDVO.doktorlar[y].drSoyadi;
                 MemTable_Doktorlardrbrans.Value := RaporCvp.tedaviRapor.raporDVO.doktorlar[y].drBransKodu;
                 MemTable_DoktorlarraporTakipNo.Value := inttostr(RaporCvp.raporTakipNo);
                 MemTable_Doktorlar.Post;
               end;

              End;
            End;


            memDataRaporlar.Post;
         // End;
       End;

       memDataRaporlar.First;

end;



procedure TfrmHizliKayit.RbRtClick(Sender: TObject);
begin
  cxLabel1.Caption := 'Rapor Takip No';
  cxLabel2.Visible := false;
  cxLabel4.Visible := false;
  txtTakipTarihi.Visible := false;
  txtilkTakip.Text := '';
  txtilkTakip.Visible := false;
  Sayfalar_HizliKayit.ActivePage := Sayfa_Rapor;

end;

procedure TfrmHizliKayit.RbTcClick(Sender: TObject);
begin
  cxLabel1.Caption := 'TC Kimlik No';
  cxLabel2.Visible := True;
  cxLabel4.Visible := True;
  txtTakipTarihi.Visible := True;
  txtilkTakip.Visible := True;
  Sayfalar_HizliKayit.ActivePage := Sayfa_Sonuc;
end;

procedure TfrmHizliKayit.katilimpayiSil;
var
  ado : TADOQuery;
  sql : string;
begin
     ado := TADOQuery.Create(nil);
     ado.Connection := datalar.ADOConnection2;
     sql :=      'if  exists(select * from hareketler where code = ' + QuotedStr('999999') + ' and  dosyaNo = ' + QuotedStr(_dosyaNo) +
                          ' and gelisNo = ' + _gelisNo + ' and gelisDetayNo = 0)' +
                          ' begin ' +

                  'delete from hareketler where code = ' + QuotedStr('999999') + ' and  dosyaNo = ' + QuotedStr(_dosyaNo) +
                  ' and gelisNo = ' + _gelisNo + ' and gelisDetayNo = 0' +

                  ' update gelisler set hastaTop = (select isnull(sum(adet*SATISF),0) from hareketler ' +
                  ' where dosyaNo = ' + QuotedStr(_dosyaNo) +
                  ' and gelisNo = ' + _gelisNo + ' and gelisDetayNo = ' + '0' + ')' +
                  ',kurumTop = (select isnull(sum(adet*KSATISF),0) from hareketler ' +
                  ' where dosyaNo = ' + #39 + _dosyaNo + #39 +
                  ' and gelisNo = ' + _gelisNo + ' and gelisDetayNo = ' + '0' + ')' +
                  ' where dosyaNo = ' + #39 + _dosyaNo + #39 +
                  ' and gelisNo = ' + _gelisNo + ' and YTakýpNo = ' + '0' +

                  ' update hastaBakiye set bakiye = bakiye - ' + '12' +
                  ' where dosyaNo = ' + QuotedStr(_dosyaNo) +
                  ' and gelisNo = ' + _gelisNo + ' and detayNo = 0 ' +

                          ' end';


     datalar.QueryExec(ado,sql);
     ado.Free;

end;

procedure TfrmHizliKayit.MemTable_DoktorlarAfterScroll(DataSet: TDataSet);
begin
 // if MemTable_Doktorlardrbrans.Value <> '1062'
 // Then Showmessageskin('Doktor Branþ Nefroloji Deðildir','Lütfen Kontrol Edin','','info');
end;

procedure TfrmHizliKayit.katilimpayiEkle;
var
  ado : TADOQuery;
  sql : string;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   sql := 'if not exists(select * from hareketler where code = ' + QuotedStr('999999') + ' and  dosyaNo = ' + QuotedStr(_dosyaNo) +
          ' and gelisNo = ' + _gelisNo + ' and gelisDetayNo = 0)' +
          ' begin ' +
          '  exec sp_HizmetKaydet ' + QuotedStr(_dosyaNo) + ',' + _gelisNo  + ',1,''01'',''01'',''999999'',' +
             QuotedStr(copy(txtdoktorlar.Text,1,4)) + ',' + QuotedStr(copy(txtdoktorlar.Text,1,4)) + ' ,1,''Katýlým Payý'',12,0,8, ' +
             QuotedStr(tarihal(txtTakipTarihi.Date)) + ',' + QuotedStr(sgk) + ',' + QuotedStr(kullanici) + ' ,'''',''H'','''', 0,'''', ' +
             QuotedStr(_tedaviTur) + ' ,1,0,0,12,''999999'' ' +

          'if not exists(select * from hastaBakiye where dosyaNo = ' + QuotedStr(_dosyaNo) +
                         ' and gelisNo = ' + _gelisNo + ' and detayNo = 0) ' +
           ' begin ' +
              'insert into hastaBakiye (dosyaNo,gelisNo,bakiye,kullanici,DetayNo,bakiyeNedeni,Aciklama) ' +
              'values(' + QuotedStr(_dosyaNo) + ',' +
                          _gelisNo + ',' +
                          txtTOtxt_M('12') + ',' +
                          QuotedStr(kullanici) + ',' +
                          '0' + ',' + QuotedStr('') + ',' + QuotedStr('') + ')' +

           ' end ' +
           ' else ' +
           ' begin ' +

            'update hastaBakiye set bakiye = bakiye + ' + '12' +
            ' where dosyaNo = ' + QuotedStr(_dosyaNo) +
            ' and gelisNo = ' + _gelisNo + ' and detayNo = 0 ' +

           ' end ' +

          ' end';


   datalar.QueryExec(ado,sql);
   ado.Free;

end;






procedure TfrmHizliKayit.HizliKabul(tc : string);
var
  servis ,sql : string;
begin
      TakipData.Active := false;
      TakipData.Active := true;
      TakipData.Append;

      txtTcKimlikNo.Text := tc;
      txtTakipTarihi.Date := date();
      
      datasource := TDataSource.Create(nil);
      datasourcedoktor := TDataSource.Create(nil);

      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;
      datasource.DataSet := ado;

      adodoktor := TADOQuery.Create(nil);
      adodoktor.Connection := datalar.ADOConnection2;
      datasourcedoktor.DataSet := adodoktor;

      
      sql := 'select SLXX from parametreler where SLK = ''33'' and SLB = ''003''';
      datalar.QuerySelect(ado,sql);
      servis := ado.Fields[0].AsString;

      ado.Close;
      ado.SQL.Clear;


      sql := 'select SLX,Kodu,BransAdi,MuayeneKodu, ' +
             '(select count(*) from Gelisler where SERVIs = SERVISLER.Kodu ' +
             'and BHDAT = convert(varchar,getdate(),112) and ' +
             ' PROVIZYONNO <> ''ÜCRETLÝ(Kontrol)'' and PROVIZYONNO <> ''KURUM(Kontrol)'''+
             ')as HastaSayisi ' +

             ' from servýsler where kodu in (' + servis + ')' +
             ' and SLVV like ' + QuotedStr('VAR%');

      datalar.QuerySelect(ado,sql);
     txtBranslar.Properties.ListSource := datasource;
end;


procedure TfrmHizliKayit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   ado.Free;
   adodoktor.Free;
   datasource.Free;
   datasourcedoktor.Free;


end;

procedure TfrmHizliKayit.FormCreate(Sender: TObject);
begin
   cxPanel.Visible := False;
end;

procedure TfrmHizliKayit.txtBranslarPropertiesChange(Sender: TObject);
var
  sql : string;
begin

  //   ShowMessage(ado.fieldbyname('SLX').AsString);

     sql := 'exec sp_KabulBransDoktorlari' + #39 + ado.fieldbyname('SLX').AsString + #39;
     datalar.QuerySelect(adodoktor,sql);
     txtdoktorlar.Properties.ListSource := datasourcedoktor;
end;


procedure TfrmHizliKayit.Kabul;
var
   sql  , servis , gelisTip , Flist , Kontrol , _ord , _tip_ , ktip  : string;
   asim , yasi : integer;
   ado : TADOQuery;
   FTR : Boolean;
   _tutar_ : double;
   Form : TGirisForm;
begin
     ado := TADOQuery.Create(nil);
     ado.Connection := datalar.ADOConnection2;

     gelisTip := 'KURUM';
     Flist := '9901';
     _ord := 'M';
     ktip := '1';
     servis := txtBranslar.Text;
     _tedaviTur := 'G';

   //  SgkKurumBilgisi(sgk,sgkk);

     asim := pos(' ',txtHastaAdi.Text);

  try
    sql := 'exec sp_YeniHastaKarti ' +
           '@KURUM = ' + #39 + '1000' + #39 +
           ',@SIGORTANO = ' + #39 + '0000' + #39 +
           ',@CINSIYETI = ' + #39 + inttostr(txtCinsiyet.ItemIndex) + #39 +
           ',@MEDENI = ' + #39 + '0' + #39 +
           ',@HASTAADI = ' + #39 + txtHastaAdi.Text + #39 +
           ',@HASTASOYADI = ' + #39 + txtHastaSoyAdi.Text + #39 +
           ',@BABAADI = ' + #39 + '' + #39 +
           ',@ANAADI = ' + #39 + '' + #39 +
           ',@EV_ADRES = ' + #39 + '' + #39 +
           ',@EV_PK = ' + #39 + '' + #39 +
           ',@EV_SEHIR = ' + #39 + '' + #39 +
           ',@EV_TEL1 = ' + #39 + '' + #39 +
           ',@EV_TEL2 = ' + #39 + '' + #39 +
           ',@EMAIL = ' + #39 + 'a@' + #39 +
           ',@DOGUMYERI = ' + #39 + '' + #39 +
           ',@DOGUMTARIHI = ' + #39 + tarih(txtDogumTarihi.Text) + #39 +
           ',@UYRUGU = ' + #39 + 'TC' + #39 +
           ',@TCKIMLIKNO = ' + #39 + txtTcKimlikNo.Text + #39 +
           ',@HUVIYETTIPI = ' + #39 + '1' + #39 +
           ',@HUVIYETNO = ' + #39 + '' + #39 +
           ',@KURUMTIPI = ' + #39 + trim(copy(txtDevredilenKurum.Text,1,2)) + #39 +
           ',@SICILNO = ' + #39 + '' + #39 +
           ',@KARNENO = ' + #39 + '' + #39 +
           ',@seans = ' + #39 + '1' + #39 +
           ',@seansSaat = ' + '4' +
           ',@SigortaliTur = ' + #39 + copy(txtSigortaliTuru.Text,1,1) + #39 +
           ',@seansTip = ' + #39 + '0' + #39 +
          (*
           ',@RaporTarih = ' + #39 + tarih(txtRaporTarihi.Text) + #39 +
           ',@GecerlikTarihi = ' + #39 + tarih (txtGecerlik.Text) + #39 +
           ',@sevkEdenTesis = ' + #39 + txtSevkEdenTesisKodu.Text + #39 +
           ',@sevkEdilenBrans = ' + #39 + txtSevkEdilenBrans.Text + #39 +
           ',@sevkEdenDoktor = ' + #39 + txtSevkEdenDoktorTescilNo.Text + #39 +
           ',@muayenAcilis = ' + #39 + tarih(txtMuayeneAcilisT.Text) + #39 +
            *)
           ',@PBH = ' + #39 + '' + #39 +
           ',@KH = ' + #39 + '' + #39 +
           ',@TS = ' + #39 + '' + #39 +
           ',@DS = ' + #39 + '' + #39 +
           ',@DC = ' + #39 + '' + #39 +
           ',@YA = ' + #39 + '' + #39 +
           ',@SD = ' + #39 + '' + #39 +
           ',@D = ' + #39 + '' + #39 +
           ',@DG = ' + #39 + '' + #39 +
           ',@H = ' + #39 + '' + #39 +
           ',@Yakinlik = ' + #39 + '' + #39 +
           ',@Baslangic = ' + #39 + '' + #39 +
           ',@hastaNot = ' + #39 + '' + #39 +
           ',@merkezdeBaslangic = ' + #39 + '' + #39 +
           ',@Istel1 = ' +  #39 + '' + #39 +
           ',@Istel2 = ' + #39 + '' + #39 +
           ',@vyer = ' + #39 + '' + #39 +
           ',@huviyetTarih = ' + #39 + '' + #39 +
           ',@kanGrubu = ' + #39 + '' + #39 +
           ',@USER_ID = ' + #39 + kullanici + #39 +
           ',@DATE_CREATE = ' + #39 + tarihal(date) + #39 +
          // ',@raporNo = ' + #39 + txtRaporNo.Text + #39 +
           ',@hastaTip = ' + #39 + '0' + #39 +
           ',@makinaNo = ' + #39 + '' + #39 +
           ',@idealKilo = ' + QuotedStr('0') +
           ',@Hepatit = ' + QuotedStr('') +
           ',@HIV = ' + QuotedStr('') +
           ',@aday = ' + QuotedStr('') +
           ',@Sandalye = ' + '0' +
           ',@APH = ' + QuotedStr('') +
           ',@Na = ' + QuotedStr('') +
           ',@Boy = ' + '0' +
           ',@Tip = ' + QuotedStr('H') +
           ',@vatandasTip = ' + QuotedStr('0');




    datalar.QuerySelect(ado,sql);
    _dosyaNo := FormatFloat('000000',ado.fieldbyname('DosyaNo').Asfloat);

   sql := 'exec sp_GelisKaydet ' +
          '@dosyaNo = ' + #39 + _dosyaNo + #39 + ',' +
          '@gelisNo = -1' + ',' +
          '@BHDAT = ' + #39 + tarihal(txtTakipTarihi.Date)  + #39 + ',' +
          '@SEVKGECSURE = 0 ,' +
          '@doktor = ' + #39 + '' + #39 + ',' +
          '@SERVIS = ' + #39 + KurumBransi + #39 + ',' +
          '@TEDAVITURU = ' + #39 + 'G' + #39 + ',' +
          '@HastaTop = 0 ,' +
          '@KurumTop = 0 ,' +
          '@Kullanici = ' + #39 + datalar.username + #39 + ',' +
          '@DIYALIZOR = ' + QuotedStr('') + ',' +
          '@GIRISYOLU = ' + QuotedStr('') + ',' +
          '@TakipNo = '   + QuotedStr(txtTakipNo.Text) + ',' +
          '@basvuruNo = ' + QuotedStr(txtBasvuruNo.Text) ;

           datalar.QuerySelect(ado,sql);
          _gelisNo := ado.Fieldbyname('Gelis').AsString;

   sql := 'select * from raporlar where dosyaNo = ' + QuotedStr(_dosyaNo) +
          ' and raporNo = ' + QuotedStr(memDataRaporlar.fieldbyname('raporNo').AsString);

   datalar.QuerySelect(ado,sql);

   if ado.Eof
   Then Begin
         sql := 'insert into raporlar (dosyaNo,raporNo,raporTarihi,verenTesisKodu,raporTakipno,turu,baslangicTarihi,bitisTarihi,' +
                'protokolNo,protokolTarihi,tedaviRaporTuru,seansGun,SeansSayi,aktif) ' +
                ' values ( ' + QuotedStr(_dosyaNo) + ','
                             + QuotedStr(memDataRaporlar.fieldbyname('raporNo').AsString) + ','
                             + QuotedStr(memDataRaporlar.fieldbyname('raporTarihi').AsString) + ','
                             + QuotedStr(memDataRaporlar.fieldbyname('verenTesis').AsString)  + ','
                             + QuotedStr(memDataRaporlar.fieldbyname('raporTakipNo').AsString) + ','
                             + QuotedStr(memDataRaporlar.fieldbyname('raporTuru').AsString) + ','
                             + ' cast( ' + QuotedStr(tarihal(memDataRaporlar.fieldbyname('baslangicTarihi').Asdatetime)) + '  as datetime) ' + ','
                             + ' cast( ' + QuotedStr(tarihal(memDataRaporlar.fieldbyname('bitisTarihi').AsDateTime)) + '  as datetime) ' + ','
                             + QuotedStr(memDataRaporlar.fieldbyname('protokolNo').AsString) + ','
                             + ' cast( ' + QuotedStr(tarihal(memDataRaporlar.fieldbyname('protokolTarihi').AsDateTime)) + '  as datetime) ' + ','
                             + QuotedStr(memDataRaporlar.fieldbyname('tedaviRaporTuru').AsString) + ','
                             + memDataRaporlar.fieldbyname('seansGun').AsString + ','
                             + memDataRaporlar.fieldbyname('seansSayi').AsString + ',1' + ')' ;
                           //  + memDataRaporlar.fieldbyname('seansSayi').AsString + ','
                            // + memDataRaporlar.fieldbyname('Tani').AsString + ')';

         datalar.QueryExec(ado,sql);


   End
   Else
     ShowMessageSkin('Rapor Sistemde Kayýtlý','','','info');

   ADO.Free;
   ShowMessageSkin('Hasta Sisteme Aktarýldý','','','info');

   if FindTab(AnaForm.sayfalar,'TabfrmHastaKart')
   Then begin
     Form := TGirisForm(FormClassType(TagfrmHastaKart));
     TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := _dosyaNo;
     TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
   end
   Else begin
    Form := FormINIT(TagfrmHastaKart,self,_dosyaNo,NewTab(AnaForm.sayfalar,'TabfrmHastaKart'),ikEvet,'Giriþ');
    if Form <> nil then Form.show;
   end;

   close;

  except on e : Exception do
    begin
       ShowMessageSkin('Ýþlem Yapýlýrken Hata Oluþtu',e.Message,'','info');
       ado.Free;
       exit;
    end;
  end;

end;


procedure TfrmHizliKayit.btnKabulClick(Sender: TObject);
begin
  Kabul;
end;

procedure TfrmHizliKayit.BtnSorgulaClick(Sender: TObject);
begin
  sorgula;
end;

procedure TfrmHizliKayit.Sorgula;
var
  cvp : string;
  _s_ : integer;
  _msg : string;
  RaporCvp1 :  RaporIslemleriWS.RaporCevapTCKimlikNodanDVO;
  RaporCvpR : RaporIslemleriWS.RaporCevapDVO;
begin
   if RbTc.Checked
   then begin
       txtinfo.Caption := 'Hasta Provizyon Bilgisi Sorgulanýyor.....';
       Application.ProcessMessages;

       HastaBilgi.tckimlikNo := txtTcKimlikNoAra.Text;
       HastaBilgi.Durum := copy(txtSigortaliTuru.Text,1,1);
       HastaBilgi.BransKodu := KurumBransi;
       HastaBilgi.devredilenKurum := trim(copy(txtDevredilenKurum.Text,1,2));
       HastaBilgi.provizyonTarihi := txtTakipTarihi.Text;
       HastaBilgi.provizyonTuru := copy(txtProvizyonTuru.Text,1,1);
       HastaBilgi.TakipTuru := copy(txtTakipturu.Text,1,1);
       HastaBilgi.ilkTakip := txtilkTakip.Text;
       HastaBilgi.YatisBitisTarihi := '';
       HastaBilgi.tedaviTuru := 'G';
       HastaBilgi.tedaviTipi := trim(copy(txtTedaviTipi.Text,1,2));
       HastaBilgi.BebekDTarihi := '';
       HastaBilgi.BebekSira := '';
       HastaBilgi.telefon := '0123456789';
       HastaBilgi.adres := 'Yeni Kayit';

       cvp := TakipAl_3KimlikDorulama(HastaBilgi , datalar.HastaKabul,True);

       if (cvp = '0000') or (cvp = '0008')
       Then BEgin
          _s_ := pos(' ',HastaBilgi.Adi);
          txtTakipNo.Text := HastaBilgi.TakipNo;
          txtBasvuruNo.Text := HastaBilgi.BasvuruNo;
          txtHastaAdi.Text := copy(HastaBilgi.Adi,1,_s_-1);
          txtHastaSoyadi.Text := copy(HastaBilgi.Adi,_s_+1,50);
          txtTcKimlikNo.Text := HastaBilgi.tckimlikNo;
          txtdogumTarihi.Text := HastaBilgi.DTarihi;
          txtCinsiyet.ItemIndex := strtoint(ifThen(HastaBilgi.Cinsiyet = 'E','0','1'));
          btnKabul.Enabled := true;
          btnVazgec.Enabled := True;
          txtSigortaliTuru.EditValue := HastaBilgi.Durum;
          txtDevredilenKurum.EditValue := HastaBilgi.devredilenKurum;

          memDataRaporlar.Close;
          memDataRaporlar.Active := True;
          RaporCvp1 := RaporCevapTCKimlikNodanDVO.Create;
          _msg := RaporOkuTcKimlikTen(txtTcKimlikNoAra.Text,'1',RaporCvp1,datalar.Rapor_);
          txtilkTakip.Text := '';
          txtTcKimlikNoAra.Text := '';

         if _msg = '0'
         Then
           Rapor(RaporCvp1)
         Else
         Sayfalar_HizliKayit.ActivePageIndex := 1;
         txtHata.Lines.Add(_msg);
       End
       Else
         Sayfalar_HizliKayit.ActivePageIndex := 1;
         txtHata.Lines.Add(cvp);
   end;

   if RbRt.Checked
   then begin
       txtinfo.Caption := 'Rapor Bilgisi Sorgulanýyor.....';
       Application.ProcessMessages;

          memDataRaporlar.Close;
          memDataRaporlar.Active := True;
          RaporCvpR := RaporCevapDVO.Create;
          _msg := raporOkuRaporTakip(txtTcKimlikNoAra.Text,'1',RaporCvpR,datalar.Rapor_);

         if _msg = '0'
         Then begin
           Rapor(RaporCvpR);
           txtilkTakip.Text := '';
           txtTakipNo.Text := '';
           txtBasvuruNo.Text := '';
           txtHastaAdi.Text := RaporCvpR.tedaviRapor.raporDVO.hakSahibi.adi; //copy(HastaBilgi.Adi,1,_s_-1);
           txtHastaSoyadi.Text := RaporCvpR.tedaviRapor.raporDVO.hakSahibi.soyadi; //copy(HastaBilgi.Adi,_s_+1,50);
           txtTcKimlikNo.Text := RaporCvpR.tedaviRapor.raporDVO.hakSahibi.tckimlikNo;
          // txtdogumTarihi.Text := '';//HastaBilgi.DTarihi;
          // txtCinsiyet.ItemIndex := strtoint(ifThen(HastaBilgi.Cinsiyet = 'E','0','1'));
           btnKabul.Enabled := true;
           btnVazgec.Enabled := True;
           txtSigortaliTuru.Text := RaporCvpR.tedaviRapor.raporDVO.hakSahibi.sigortaliTuru;
           txtDevredilenKurum.Text := RaporCvpR.tedaviRapor.raporDVO.hakSahibi.devredilenKurum;
         end
         Else
         Sayfalar_HizliKayit.ActivePageIndex :=1;
         txtHata.Lines.Add(_msg);
       End
       Else begin
         Sayfalar_HizliKayit.ActivePageIndex := 1;
         txtHata.Lines.Add(cvp);
   end;
end;


procedure TfrmHizliKayit.B1Click(Sender: TObject);
begin
  sorgula;
end;

procedure TfrmHizliKayit.btnVazgecClick(Sender: TObject);
var
  cvp : string;
begin

   cvp := TakipSil_3(HastaBilgi.TakipNo,datalar.HastaKabul);

   if cvp = '0000'
   Then Begin
     txtTakipNo.Text := '';
     txtBasvuruNo.Text := '';
     txtHastaAdi.Text := '';
     txtHastaSoyadi.Text := '';
     txtdogumTarihi.Text := '';

     memDataRaporlar.Close;

     ShowMessageSkin('Takip Ýptal Edildi','','','info');

   End
   Else
   Begin
     Sayfalar_HizliKayit.ActivePageIndex := 1;
     txtHata.Lines.Add(cvp);
   End;
end;

procedure TfrmHizliKayit.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if key = vk_f5
   Then BtnSorgula.Click;

   if key = vk_f4
   Then btnKabul.Click;


end;

procedure TfrmHizliKayit.txtBranslarClick(Sender: TObject);
begin

   if (copy(txtBranslar.Text,1,4) = '9999') or
      (copy(txtBranslar.Text,1,4) = '4400')
  Then txtProvizyonTuru.text := 'A-ACÝL'
  Else txtProvizyonTuru.text := 'N-NORMAL';
  

end;

end.
