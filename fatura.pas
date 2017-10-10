unit fatura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, strUtils,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons, sBitBtn, AdvToolBtn,
  Grids, BaseGrid, AdvGrid, DBAdvGrd, DB, ADODB, data_modul,
  Mask,  Menus , kadirMedula3 , FaturaKayitIslemleriWS , ComObj, AdvObj,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxCurrencyEdit, cxGridDBTableView,cxGridExportlink,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, rxAnimate,GirisUnit,
  rxGIFCtrl, DBCtrls,math, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  JvExControls, JvAnimatedImage, JvGIFCtrl, DBAdvGrid, EditType,kadir,kadirType,KadirLabel,
  cxCalendar, cxGroupBox, cxRadioGroup, cxButtons, FScxGrid,getFormClass,
  cxCheckComboBox, cxLabel, cxImageComboBox, cxPCdxBarPopupMenu, cxCheckBox,
  cxPC, cxCheckGroup;

type
  TfrmFatura = class(TGirisForm)
    pnlTitle: TPanel;
    pnlOnay: TPanel;
    txtinfo: TLabel;
    PopupMenu1: TPopupMenu;
    eyitNoKontrolYap1: TMenuItem;
    PopupMenu2: TPopupMenu;
    KurumFaturacmali1: TMenuItem;
    KurumFatura1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    txtLog: TMemo;
    N1: TMenuItem;
    Faturaptal1: TMenuItem;
    FaturaptalTm1: TMenuItem;
    Button1: TButton;
    FaturaOkuTm1: TMenuItem;
    N2: TMenuItem;
    Onay1: TMenuItem;
    utarOnayTm1: TMenuItem;
    HizmetleriOku1: TMenuItem;
    N3: TMenuItem;
    mnSe1: TMenuItem;
    mSeme1: TMenuItem;
    gridBransKodlari: TDBAdvGrid;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    SaveDialog1: TSaveDialog;
    N4: TMenuItem;
    T1: TMenuItem;
    H1: TMenuItem;
    F1: TMenuItem;
    N5: TMenuItem;
    pnlFaturaList: TPanel;
    DBMemo1: TDBMemo;
    Panel2: TPanel;
    Splitter1: TSplitter;
    cxGrid4: TFScxGrid;
    FaturaList: TcxGridDBTableView;
    FaturaListdosyaNo: TcxGridDBColumn;
    FaturaListgelisNo: TcxGridDBColumn;
    FaturaListHASTA: TcxGridDBColumn;
    FaturaListTarih: TcxGridDBColumn;
    FaturaListButKodu: TcxGridDBColumn;
    FaturaListaciklama: TcxGridDBColumn;
    FaturaListadet: TcxGridDBColumn;
    FaturaListbirimFiyat: TcxGridDBColumn;
    FaturaListtutar: TcxGridDBColumn;
    FaturaListkdv: TcxGridDBColumn;
    FaturaListkdvTutar: TcxGridDBColumn;
    FaturaListfaturaTutar: TcxGridDBColumn;
    FaturaListfaturaNo: TcxGridDBColumn;
    FaturaListtakipNo: TcxGridDBColumn;
    FaturaListGSSFaturaTeslimNo: TcxGridDBColumn;
    FaturaListbasvuruNo: TcxGridDBColumn;
    FaturaListKontrol: TcxGridDBColumn;
    FaturaListfaturaTarihi: TcxGridDBColumn;
    FaturaListrefNo: TcxGridDBColumn;
    FaturaListchk: TcxGridDBColumn;
    FaturaListCOLUMN1: TcxGridDBColumn;
    FaturaListADI1: TcxGridDBColumn;
    FaturaListIlIlce: TcxGridDBColumn;
    FaturaListTCKIMLIKNO: TcxGridDBColumn;
    FaturaListKARNENO: TcxGridDBColumn;
    FaturaListSicilNo: TcxGridDBColumn;
    FaturaListilkTarih: TcxGridDBColumn;
    FaturaListbitisTarih: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    ADO_Detay: TADOQuery;
    DataSource2: TDataSource;
    ADO_Detay_toplam: TADOQuery;
    DataSource3: TDataSource;
    F2: TMenuItem;
    F3: TMenuItem;
    E1: TMenuItem;
    F5: TMenuItem;
    K1: TMenuItem;
    K2: TMenuItem;
    S1: TMenuItem;
    F4: TMenuItem;
    T2: TMenuItem;
    H2: TMenuItem;
    T3: TMenuItem;
    cxPageControl1: TcxPageControl;
    fatura_sayfa1: TcxTabSheet;
    fatura_sayfa2: TcxTabSheet;
    chkTutarTip: TcxCheckBoxKadir;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6: TcxGridDBBandedTableView;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7: TcxGridDBBandedTableView;
    cxGridDBBandedTableView8: TcxGridDBBandedTableView;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridDBBandedColumn23: TcxGridDBBandedColumn;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn25: TcxGridDBBandedColumn;
    cxGridDBBandedColumn26: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1HizmetKodu: TcxGridDBColumn;
    cxGridDBTableView1Tutar: TcxGridDBColumn;
    cxGridDBTableView1Adet: TcxGridDBColumn;
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
    procedure cxButtonCClick(Sender: TObject);
    procedure cxListeleClick(Sender : TObject);
    procedure txtKurumTipiChange(Sender: TObject);
    procedure btnYazdirClick(Sender: TObject);
    procedure tarihbilgi;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnAraClick(Sender: TObject);
    procedure gridBransKodlariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridBransKodlariDblClick(Sender: TObject);
    procedure eyitNoKontrolYap1Click(Sender: TObject);
    procedure RenkKontrol;
    procedure Faturaptal1Click(Sender: TObject);
    procedure eyitNoKontrolYapSatr1Click(Sender: TObject);
    procedure FaturaOku1Click(Sender: TObject);
    procedure FaturaptalTm1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure txtLogKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FaturaOkuTm1Click(Sender: TObject);
    procedure utarOnayTm1Click(Sender: TObject);
    procedure Onay1Click(Sender: TObject);
    procedure HizmetleriOku1Click(Sender: TObject);
    procedure cxGridDBTableView2StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure T1Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure FaturaCevapYaz(Cvp : FaturaCevapDVO);
    procedure FaturaOkuCevapYaz(Cvp: FaturaOkuCevapDVO);
    procedure HizmetDetayKodToplam;
    procedure FaturaListFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FaturadanCikar;
    procedure Listele;
    procedure TeslimEt(_Tag_ : integer);
    procedure FaturaIcmal;
    procedure FaturaKes;
    procedure HakedisIcmal;
    procedure btnVazgecClick(Sender: TObject);
    procedure TopPanelButonClick(Sender: TObject);
    procedure chkTutarTipClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
       function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'kurumFatura';
      formGenislik = 780;
      formYukseklik = 480;

var
  frmFatura: TfrmFatura;
  _stop : integer;
  _teslimNumaralari : Array_Of_string;
  hasta : TTakipBilgisi;
  BirimFiyat : double;

implementation
uses AnaUnit,rapor, takipOkuBilgisi,SeansHakedis;

{$R *.dfm}

function TfrmFatura.Init(Sender: TObject) : Boolean;
begin
 inherited;

   Result := True;
end;

procedure TfrmFatura.TopPanelButonClick(Sender: TObject);
begin
  inherited;
  Listele;
end;

procedure TfrmFatura.cxListeleClick(Sender : TObject);
begin
 inherited;
 if datalar.ZorunluAlanVar = true then exit;

 case TControl(sender).Tag of

       -21   : begin
                  Listele;
               end;
 end;

end;

procedure TfrmFatura.chkTutarTipClick(Sender: TObject);
begin
  inherited;
  if chkTutarTip.Checked = True
  then begin
   cxGridDBTableView3.DataController.Filter.Active := False;
   cxGridDBTableView3.DataController.Filter.Active := True;
   cxGridDBTableView3.DataController.Filter.Root.Clear;
 //  sender.DataController.Filter.Options := [fcoCaseInsensitive];
   cxGridDBTableView3.DataController.Filter.Root.AddItem(cxGridDBTableView3.Columns[5],
   foNotEqual, 0 , '0');
   cxGridDBTableView3.DataController.Filter.Refresh;
  end
  else
    cxGridDBTableView3.DataController.Filter.Root.Clear;
end;

procedure TfrmFatura.cxButtonCClick(Sender: TObject);
var
  Form : TGirisForm;
  GirisFormRecord : TGirisFormRecord;
begin
inherited;


  GirisFormRecord.F_dosyaNo_ :=  _Dataset.FieldByName('dosyaNo').AsString;
  GirisFormRecord.F_gelisNo_ := _Dataset.FieldByName('gelisNo').AsString;
  GirisFormRecord.F_HastaAdSoyad_ := _Dataset.FieldByName('HASTA').AsString;

  case Tcontrol(sender).Tag of
  -3,-2,-1 : begin
               TeslimEt(Tcontrol(sender).Tag);
             end;
  -10 : begin
         FaturaList.Controller.SelectAll;
        end;
  -15 : begin
         FaturadanCikar;
        end;
  -18 : begin
         FaturaIcmal;
        end;
  -19 : begin
         FaturaKes;
        end;

   -20 : begin
           HakedisIcmal;
         end;
  -25 : begin
           if FindTab(AnaForm.sayfalar,'TabfrmHastaKart')
           Then begin
             Form := TGirisForm(FormClassType(TagfrmHastaKart));
             TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := _Dataset.FieldByName('dosyaNo').AsString;
             TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
           end
           Else begin
            Form := FormINIT(TagfrmHastaKart,self,_Dataset.FieldByName('dosyaNo').AsString,NewTab(AnaForm.sayfalar,'TabfrmHastaKart'),ikEvet,'Giriþ');
            if Form <> nil then Form.show;
           end;
        end;

    -26 : begin
            Form := FormINIT(TagfrmHastaTetkikEkle,GirisFormRecord);
            if Form <> nil then Form.ShowModal;
          end;

  9998 : begin
          cxGrid4.ExceleGonder;
         end;
  end;


end;



procedure TfrmFatura.HakedisIcmal;
begin
   Application.CreateForm(TfrmHakedis, frmHakedis);
   frmHakedis.list(txtTopPanelTarih1.GetValue,txtTopPanelTarih2.GetValue);
   frmHakedis.ShowModal;
   frmHakedis := nil;
end;

procedure TfrmFatura.FaturaKes;
var
   sql , Tip , birimfiyat ,dosyaNo,tutar,adet : string;
   ado : TADOQuery;

begin
  (*
       Application.CreateForm(TfrmHizmetFaturasi, frmHizmetFaturasi);
       GorselAyar(frmHizmetFaturasi,datalar.global_img_list4);
       birimfiyat := floattostr(HizmetFiyat('P704230'));
       frmHizmetFaturasi.t1 := tarihal(txttarih1.Date);
       frmHizmetFaturasi.t2 := tarihal(txttarih2.Date);

       if trim(copy(ktip.Text,1,2)) = '1'
       then begin
         frmHizmetFaturasi.faturaDetayDoldur('',txtAdet.Text,birimfiyat,'8',txtTOtxt_M(txtToplam.Text),'','','','');
         frmHizmetFaturasi.ShowModal;
         frmHizmetFaturasi := nil;
       end;


       if trim(copy(ktip.Text,1,2)) = '99'
       then begin
         dosyaNo := ADO_SQL.FieldByName('dosyaNo').AsString;
         tutar := ADO_SQL.FieldByName('tutar').AsString;
         adet := ADO_SQL.FieldByName('adet').AsString;
         frmHizmetFaturasi.faturaDetayDoldur('',adet,birimfiyat,'8',txtTOtxt_M(tutar),'','','',dosyaNo);
         frmHizmetFaturasi.ShowModal;
         frmHizmetFaturasi := nil;
       end;

*)
end;


procedure TfrmFatura.FaturaIcmal;
var
  sql , Tip : string;
begin
     Tip := chkList.EditValue[1];

     datalar.ADO_SQL1.close;
     datalar.ADO_SQL1.SQL.Clear;
     sql := 'exec sp_kurumFatura_m3 ' + #39 + copy('',1,1) + #39 + ',' +
            #39 + copy('',1,5) + #39 + ',' +
            txtTopPanelTarih1.GetSQLValue + ',' +
            txtTopPanelTarih2.GetSQLValue + ',' +
            QuotedStr('') + ',' + QuotedStr(Tip);

     datalar.QuerySelect(datalar.ADO_SQL1,sql);


     frmRapor.topluset.Dataset2 := KurumBilgi;
     frmRapor.topluset.Dataset1 := datalar.ADO_SQL1;

     datalar.ADO_SQL5.close;
     datalar.ADO_SQL5.SQL.Clear;
     sql := '';
     sql := 'exec sp_kurumFatura_m3 ' + #39 + copy('',1,1) + #39 + ',' +
            #39 + copy('',1,5) + #39 + ',' +
            txtTopPanelTarih1.GetSQLValue + ',' +
            txtTopPanelTarih2.GetSQLValue + ',' +
            QuotedStr('') + ',' + QuotedStr('3');

     datalar.QuerySelect(datalar.ADO_SQL5,sql);
     frmRapor.topluset.Dataset3 := datalar.ADO_SQL5;


     frmRapor.raporData1(frmRapor.topluset ,'033','\KurumFaturaIcmali');
     frmRapor.ShowModal;
end;

procedure TfrmFatura.TeslimEt(_Tag_ : integer);
var
  FaturaCevap : FaturaCevapDVO;
  FaturaOkuCevap : FaturaOkuCevapDVO;
  x ,i,ii,j,r,y: integer;
  fark  : double;
  tip , msj , _bv_ , sql , teslimNo,_tn_ : string;
  state : boolean;
  ado : TADOQuery;
begin
 (*
   if datalar._donemSonlandir_ <> 'EVET'
   Then Begin
     ShowMessageSkin('Bakým Ýþlemi Yapýlýyor ','Lütfen , Fatura Teslim Ýçin Bakým Ýþleminin Bitmesini Bekleyin','','info');
     exit;
   End;
   *)
(*
   if LisansKontrol(fark) = False
   Then Begin
     ShowMessageSkin('Lisans Yenileyin','','','info');
     exit;
   End;
  *)


   tip := '';
   if _Tag_ = -2
   Then
    tip :=',tutarOkuGssFaturaTeslimNo = '
   else
    Tip := ',GSSFaturaTeslimNo = ';


   txtinfo.Caption := 'Faturalar Kayýt Ediliyor , Lütfen Bekleyiniz...';
   Application.ProcessMessages;
   BirimFiyat := HizmetFiyat('704230');


   FaturaCevap := FaturaCevapDVO.Create;
   FaturaOkucevap := FaturaOkuCevapDVO.Create;

   _Dataset.First;
   Application.ProcessMessages;
   gridBransKodlari.Enabled := false;
   x := 1;

   DurumGoster;
   cxGrid4.Enabled := false;

   for x := 0 to FaturaList.Controller.SelectedRowCount - 1 do
   begin
       sleep(2000);
       Application.ProcessMessages;
       pnlDurum.Caption := FaturaList.DataController.GetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('HASTA').Index);
       _bv_ := FaturaList.DataController.GetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('basvuruNo').Index);
       teslimNo := FaturaList.DataController.GetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('GSSFaturaTeslimNo').Index);

       _tn_ := FaturaList.DataController.GetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('takipNo').Index);

     if _Tag_ = -1
     Then Begin
         FaturaKayit(_bv_,datetostr(txtTopPanelTarih2.Date),FaturaCevap,datalar.FaturaKaydet,'')
     End
     Else
     if _Tag_ = -2
     Then Begin
         msj := FaturaTutarOku(_bv_,datetostr(txtTopPanelTarih2.Date),FaturaCevap,datalar.FaturaKaydet,'')
     End
     Else
     begin
       ado := TADOQuery.Create(nil);
       ado.Connection := datalar.ADOConnection2;
       if teslimNo = '' then Continue;
       msj := FaturaKayitOku(teslimNo,datetostr(txtTopPanelTarih2.date) ,datalar.FaturaKaydet,FaturaOkucevap);
       if msj = '0000'
       Then Begin
         FaturaOkuCevapYaz(FaturaOkucevap);
         r := length(FaturaOkucevap.faturaDetaylari);
         for j := 0 to r -1 do
         begin
           if FaturaOkucevap.faturaDetaylari[j].takipNo = _tn_
           Then Begin
             sql := 'delete from FaturaHizmetDetayTutarOku where takipNo = ' + QuotedStr(FaturaOkucevap.faturaDetaylari[j].takipNo);
             datalar.QueryExec(ado,sql);
             for i := 0 to length(FaturaOkucevap.faturaDetaylari[j].islemDetaylari) - 1 do
             begin
                   // sql := 'delete from FaturaHizmetDetayTutarOku where islemsiraNo = ' + QuotedStr(FaturaOkucevap.faturaDetaylari[j].islemDetaylari[i].islemSiraNo) +
                    sql := ' insert into FaturaHizmetDetayTutarOku (takipNo,islemsiraNo,tutar,aciklama,protokol) '+
                           ' values(' + QuotedStr(FaturaOkucevap.faturaDetaylari[j].takipNo) + ',' +
                                        QuotedStr(FaturaOkucevap.faturaDetaylari[j].islemDetaylari[i].islemSiraNo) + ',' +
                                        floattostr(FaturaOkucevap.faturaDetaylari[j].islemDetaylari[i].islemTutari) + ',' +
                                        QuotedStr(FaturaOkuCevap.faturaDetaylari[j].aciklama) + ',' +
                                        QuotedStr(FaturaOkuCevap.faturaDetaylari[j].protokolNo) + ')';
                    datalar.QueryExec(ado,sql);


             end;
           End;
         end;
       End
       Else
       begin
        txtLog.Lines.Add(msj);
       end;
       Continue;
       ado.free;
     end;

    if FaturaCevap.sonucKodu = '0000'
    Then Begin
           FaturaCevapYaz(FaturaCevap);
         try
           FaturaList.Controller.FocusedRow := FaturaList.Controller.SelectedRows[x];
//           FaturaList.DataController.SetValue(
  //                                    FaturaList.Controller.SelectedRows[x].RecordIndex,7,BirimFiyat);
        //   cxGridDBTableView2.DataController.SetValue(
        //                              cxGridDBTableView2.Controller.SelectedRows[x].RecordIndex,8,Roundto((FaturaCevap.faturaTutari/1.08),2));
           FaturaList.DataController.SetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,
                                      FaturaList.DataController.GetItemByFieldName('faturaTutar').Index,FaturaCevap.faturaTutari);
           FaturaList.DataController.SetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('Tutar').Index,
                                      (FaturaCevap.faturaTutari  - roundTo((faturacevap.faturaTutari/1.08),2)));
         //  FaturaList.DataController.SetValue(
           //                           FaturaList.Controller.SelectedRows[x].RecordIndex,9,8);
           if tip = ',GSSFaturaTeslimNo = '
           Then Begin
             FaturaList.DataController.SetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('GSSFaturaTeslimNo').Index,
                                      FaturaCevap.faturaTeslimNo);
           end;
           FaturaList.DataController.SetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('faturaTarihi').Index,
                                      txtTopPanelTarih2.GetValue);
         except
         end;


           txtLog.Lines.Add(FaturaCevap.hastaBasvuruNo+' ; ' + FaturaCevap.sonucMesaji);

           if length(FaturaCevap.faturaDetaylari[0].islemDetaylari) > 0
           then begin
             ado := TADOQuery.Create(nil);
             ado.Connection := datalar.ADOConnection2;

             sql := 'delete from FaturaHizmetDetayTutarOku where takipNo = ' + QuotedStr(FaturaCevap.faturaDetaylari[0].takipNo);
             datalar.QueryExec(ado,sql);

             for  i := 0 to length(FaturaCevap.faturaDetaylari[0].islemDetaylari) - 1 do
             begin
              try
                txtLog.Lines.Add('Takip No : ' + FaturaCevap.faturaDetaylari[0].takipNo +
                                 ' Takip Tutar = ' + floattostr(FaturaCevap.faturaDetaylari[0].takipToplamTutar) +
                                 ' [' + FaturaCevap.faturaDetaylari[0].islemDetaylari[i].islemSiraNo + ' = ' +
                                 floattostr(FaturaCevap.faturaDetaylari[0].islemDetaylari[i].islemTutari) + ']');

                sql := //'delete from FaturaHizmetDetayTutarOku where islemsiraNo = ' + QuotedStr(FaturaCevap.faturaDetaylari[0].islemDetaylari[i].islemSiraNo) +
                       ' insert into FaturaHizmetDetayTutarOku (takipNo,islemsiraNo,tutar) '+
                       ' values(' + QuotedStr(FaturaCevap.faturaDetaylari[0].takipNo) + ',' +
                                    QuotedStr(FaturaCevap.faturaDetaylari[0].islemDetaylari[i].islemSiraNo) + ',' +
                                    floattostr(FaturaCevap.faturaDetaylari[0].islemDetaylari[i].islemTutari) + ')';
                datalar.QueryExec(ado,sql);



              except end;
             end;
             ado.Free;
           end;

       End
       Else Begin
           txtLog.Lines.Add(FaturaCevap.hastaBasvuruNo+' ; ' + FaturaCevap.sonucMesaji + msj);
       End;


   end;
   cxGrid4.Enabled := True;
   //   gridBransKodlari.Enabled := true;
   FaturaCevap.Free;

   RenkKontrol;

   DurumGoster(False);

end;


procedure TfrmFatura.Listele;
var
   sql , Tip : string;
   maxFaturaNo : double;
   x : integer;
   Ado : TADOQuery;
begin
     cxGrid4.Enabled := True;
     sql := 'select max(convert(float,faturaNo)) + 1 as fatno from kurumfatura';
     ado := datalar.QuerySelect(sql);
     maxFaturaNo := ado.Fields[0].AsFloat;
     _FaturaNo_ := floattostr(maxFaturaNo);
     ado.Free;

   (*
     if txtFaturalanmamislar.Checked = False
     then Tip := '0' + ifthen(chkKontrol.Checked,'O','')
       else Tip := '1' +ifthen(chkKontrol.Checked,'O','');
     ADO_SQL.close;
     ADO_SQL.SQL.Clear;

     sql := 'exec sp_kurumFatura_m3 ' + QuotedStr(trim(copy(ktip.Text,1,2))) + ',' +
            QuotedStr('')+ ',' +
            #39 + tarihal(txttarih1.Date) + #39 + ',' +
            #39 + tarihal(txttarih2.Date) + #39 + ',' +
            #39 + txtDosyaNo.Text + #39 + ',' + #39 + Tip + #39 + ',' + QuotedStr(inttostr(hastaTip.ItemIndex));

     datalar.QuerySelect(ADO_SQL,sql);
      *)
     HizmetDetayKodToplam;
     RenkKontrol;
end;


procedure TfrmFatura.FaturadanCikar;
var
   sql ,silinenSatir ,_takip ,dosyaNo , gelisNo , teslimNo : string;
   x : integer;
   state : boolean;
begin
   if mrYes = ShowMessageSkin('Kurum Fatura Bilgisi Ýptal Edilecek, Eminmsiniz ?','','','msg')
   then begin

     DurumGoster;
     for x := 0 to FaturaList.Controller.SelectedRowCount - 1 do
     begin
             Application.ProcessMessages;
             pnlDurum.Caption := FaturaList.DataController.GetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('HASTA').Index);

             dosyaNo := FaturaList.DataController.GetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('dosyaNo').Index);

             gelisNo := FaturaList.DataController.GetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('gelisNo').Index);
             try
             teslimNo := FaturaList.DataController.GetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('GSSFaturaTeslimNo').Index);
             except on e : Exception do
               begin
                 teslimNo := '';
                 //ShowMessage(e.Message,'','','info');
               end;

             end;
             datalar.ADO_SQL2.closE;
             datalar.ADO_SQL2.SQL.Clear;
             sql := 'delete from kurumFatura where dosyaNO = ' + QuotedStr(dosyaNo) +
                    ' and gelisNo = ' + gelisNo;

             if teslimNo = ''
             Then datalar.QueryExec(datalar.ADO_SQL2,sql);

     end;
         DurumGoster(false);
         ShowMessageSkin('Kurum Fatura Ýptal Edildi' , 'Kayýt Geriye Alýndý','','info');
         Listele;
   end;

end;


procedure TfrmFatura.HizmetDetayKodToplam;
var
 sql : string;
begin
  sql :=
  'SELECT sutkodu HizmetKodu,sum(tutar) Tutar,count(*) Adet ' +
  ' FROM FaturaHizmetDetayTutarOku fd ' +
  ' JOIN Gelisler g ON g.TakýpNo = fd.takipNo ' +
  ' JOIN gssTakipOkuDiger d ON d.islemSiraNo = fd.islemsiraNo ' +
  ' WHERE g.BHDAT BETWEEN ' + txtTopPanelTarih1.GetSQLValue + ' and ' + txtTopPanelTarih2.GetSQLValue +
  ' GROUP BY d.sutKodu ';

  datalar.QuerySelect(ADO_Detay_toplam,sql);


end;


procedure TfrmFatura.FaturaCevapYaz(Cvp: FaturaCevapDVO);
var
 ado : TADOQuery;
 sql , TNo , teslimNo,Ftarihi: string;
 r , j: integer;
 faturaTutar,Tutar,kdv,kdvTutar : Double;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   r := length(Cvp.faturaDetaylari);
   for j := 0 to r - 1 do
   begin
      TNo := Cvp.faturaDetaylari[j].takipNo;
      teslimNo := Cvp.faturaTeslimNo;
      Ftarihi := txtTopPanelTarih2.GetValue;
      faturaTutar := Cvp.faturaDetaylari[j].takipToplamTutar;
      tutar := RoundTo((Cvp.faturaDetaylari[j].takipToplamTutar/1.08),-2);
      kdv := 8;
      kdvTutar := faturaTutar - tutar;
      if teslimNo = '0' Then teslimNo := '';
      sql := 'update kurumfatura set tutar = ' + floattostr(tutar) +
             ',faturatutar = ' + floattostr(faturaTutar) +
             ',kdvtutar = ' + floattostr(kdvTutar) +
             ',GssFaturaTeslimNo = ' + QuotedStr(teslimNo) +
             ',FaturaTarihi = ' + QuotedStr(Ftarihi) +
             ',birimFiyat = ' + floattostr(BirimFiyat) +
             ',kdv = ' + floattostr(kdv) +
             ' where takipNo = ' + QuotedStr(TNo);
      datalar.QueryExec(ado,sql);
   end;

  ado.free;

end;

procedure TfrmFatura.FaturaOkuCevapYaz(Cvp: FaturaOkuCevapDVO);
var
 ado : TADOQuery;
 sql , TNo , teslimNo,Ftarihi: string;
 r , j: integer;
 faturaTutar,Tutar,kdv,kdvTutar : Double;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   r := length(Cvp.faturaDetaylari);
   for j := 0 to r - 1 do
   begin
      TNo := Cvp.faturaDetaylari[j].takipNo;
      teslimNo := Cvp.faturaTeslimNo;
      Ftarihi := txtTopPanelTarih2.GetValue;
      faturaTutar := Cvp.faturaDetaylari[j].takipToplamTutar;
      tutar := RoundTo((Cvp.faturaDetaylari[j].takipToplamTutar/1.08),-2);
      kdv := 8;
      kdvTutar := faturaTutar - tutar;
      if teslimNo = '0' Then teslimNo := '';
      sql := 'update kurumfatura set tutar = ' + floattostr(tutar) +
             ',faturatutar = ' + floattostr(faturaTutar) +
             ',kdvtutar = ' + floattostr(kdvTutar) +
             ',GssFaturaTeslimNo = ' + QuotedStr(teslimNo) +
             ',FaturaTarihi = ' + QuotedStr(Ftarihi) +
             ',birimFiyat = ' + floattostr(BirimFiyat) +
             ',kdv = ' + floattostr(kdv) +
             ' where takipNo = ' + QuotedStr(TNo);
      datalar.QueryExec(ado,sql);
   end;

  ado.free;

end;

procedure TfrmFatura.RenkKontrol;
var
   x : integer;
begin
(*
     for x := 1 to gridBransKodlari.RowCount do
     begin
          if gridBransKodlari.Cells[25,x] = 'DEL'
          then SatiriRenklendir(gridBransKodlari,x,20,clred);
          if gridBransKodlari.Cells[25,x] = 'INS'
          then SatiriRenklendir(gridBransKodlari,x,20,clAqua);

           if
             (gridBransKodlari.ints[7,x] * gridBransKodlari.floats[8,x]) <>
             gridBransKodlari.floats[10,x]
           Then
             SatiriRenklendir(gridBransKodlari,x,20,clYellow);


     end;
     *)
end;


procedure TfrmFatura.tarihbilgi;
begin
//   txtAylar.Text := aytoayadi(date());
//   txtAylarClick(txtAylar);
  // tarihata(txttarih1,txttarih2,txtAylar);


end;


procedure TfrmFatura.txtKurumTipiChange(Sender: TObject);
var
   sql : string;
   x : integer;
begin

   sql := 'select kurum,ADI1 from Kurumlar where KURUMTIPI like ' + #39 + copy('',1,1) + '%' + #39;
   datalar.QuerySelect(datalar.ADO_SQL3,sql);
  // txtKurum.Items.Clear;
   if not datalar.ADO_SQL3.Eof
   then begin
       for x := 1 to datalar.ADO_SQL3.RecordCount do
       begin
         // txtKurum.Items.Add(datalar.ADO_SQL3.Fields[0].AsString + '-' + datalar.ADO_SQL3.Fields[1].AsString);
          datalar.ADO_SQL3.Next;
       end;
   end;



end;

procedure TfrmFatura.btnYazdirClick(Sender: TObject);
var
  x , y , z , icmaldekiTakipAdedi : integer;
  basvuru , _tarih_  ,sql : string;
  _sonuc_ : FaturaCevapDVO;
  ado : TADOQuery;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;

   _sonuc_ := FaturaCevapDVO.Create;

   _Dataset.First;
   while not _Dataset.Eof do
   Begin
       basvuru := _Dataset.fieldbyname('basvuru').AsString;
       _tarih_ := tarih(txtTopPanelTarih2.GetValue);

       if FaturaKayit(basvuru,_tarih_,_sonuc_,datalar.FaturaKaydet,'') = '0000'
       Then Begin
           sql := 'update kurumfatura set GSSFaturaTeslimNo = ' + _sonuc_.faturaTeslimNo +
                  ' where basvuruNo = ' + _sonuc_.hastaBasvuruNo;

           datalar.QueryExec(ado,sql);
       End;

       _Dataset.Next;
   end;


   ado.Free;


end;

procedure TfrmFatura.SpeedButton1Click(Sender: TObject);
var
  sql : string;
begin
 (*
  try
    Application.CreateForm(TrptFaturaIcmal, rptFaturaIcmal);
    rptFaturaIcmal.ADO_SQL.close;
    sql := 'exec sp_kurumFatura ' + #39 + copy('',1,1) + #39 + ',' +
          #39 + copy('',1,5) + #39 + ',' +
          #39 + tarihal(txttarih1.Date) + #39 + ',' +
          #39 + tarihal(txttarih2.Date) + #39 + ',' +
          #39 + txtDosyaNo.Text + #39;
    datalar.QuerySelect(rptFaturaIcmal.ADO_SQL,sql);

    rptFaturaIcmal.Preview;
    rptFaturaIcmal.Free;
  except
    rptFaturaIcmal.Free;
  end;
   *)
end;


procedure TfrmFatura.T1Click(Sender: TObject);
begin
(*
  Application.CreateForm(TfrmTopluEpikriz, frmTopluEpikriz);
  frmTopluEpikriz.ShowModal;
  frmTopluEpikriz := nil;
  *)
end;

procedure TfrmFatura.btnAraClick(Sender: TObject);
begin
   //  gridara(gridBransKodlari,txtarama.Text);
end;

procedure TfrmFatura.btnVazgecClick(Sender: TObject);
begin
  inherited;
   _stop := 0;
   gridBransKodlari.Enabled := true;

end;

procedure TfrmFatura.gridBransKodlariKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
   renk : TColor;

begin
(*
     if key = vk_delete
     then begin
               renk := gridBransKodlari.Colors[25,gridBransKodlari.Row];
               if gridBransKodlari.Cells[25,gridBransKodlari.Row] = 'DEL'
               then gridBransKodlari.Cells[25,gridBransKodlari.Row] := '' else
               gridBransKodlari.Cells[25,gridBransKodlari.Row] := 'DEL';
               if gridBransKodlari.Cells[25,gridBransKodlari.Row] = ''
               then SatiriRenklendir(gridBransKodlari,gridBransKodlari.Row,20,renk);
               RenkKontrol;
     end;

     if key = vk_insert
     then begin
              
               renk := gridBransKodlari.Colors[25,gridBransKodlari.Row];
               if gridBransKodlari.Cells[25,gridBransKodlari.Row] = 'INS'
               then gridBransKodlari.Cells[25,gridBransKodlari.Row] := '' else
               gridBransKodlari.Cells[25,gridBransKodlari.Row] := 'INS';
               if gridBransKodlari.Cells[25,gridBransKodlari.Row] = ''
               then SatiriRenklendir(gridBransKodlari,gridBransKodlari.Row,20,renk);
               RenkKontrol;
     end;
(*
     if key = vk_delete
     then begin
               btnSil.Click;

     end;
  *)
end;

procedure TfrmFatura.gridBransKodlariDblClick(Sender: TObject);
begin

  ShowMessage(gridBransKodlari.Cells[14,gridBransKodlari.Row],'','','info');
//     ShowMessageSkin(TeyitNoBul(gridBransKodlari.Cells[13,gridBransKodlari.row]),'','','info');

end;

procedure TfrmFatura.eyitNoKontrolYap1Click(Sender: TObject);
var
   sql ,teyidNo , takipNo , faturaNo  , msg : string;
   x : integer;
   state : boolean;
begin
  (*
     faturaNo := copy(tarihal(txttarih2.Date),6,1);
     _stop := 1;
     Application.ProcessMessages;
      *)
     _stop := 1;

 (*
     for x := 0 to cxGridDBTableView2.Controller.SelectedRowCount - 1 do
     begin
       takipNo :=
       cxGridDBTableView2.DataController.GetValue(
       cxGridDBTableView2.Controller.SelectedRows[x].RecordIndex,13);

     end;
   *)

     DurumGoster;
     for x := 0 to FaturaList.Controller.SelectedRowCount - 1 do
     begin
          if _stop = 0 then Break;
          Application.ProcessMessages;

                takipNo := FaturaList.DataController.GetValue(
                           FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('takipNo').Index);
                pnlDurum.Caption := FaturaList.DataController.GetValue(
                           FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('HASTA').Index);

                msg := KabulOku(takipNo,hasta,datalar.HastaKabul,1);

                 if msg = '0000'
                 Then Begin

                      begin
                          datalar.ADO_SQL.close;
                          datalar.ADO_SQL.SQL.clear;
                      sql := 'update kurumfatura set ' +
                             'GSSFaturaTeslimNo = ' + QuotedStr(ifThen(hasta.faturaTeslimNo = '0','',hasta.faturaTeslimNo)) +
                             'where takipNo = ' + QuotedStr(takipNo);
                          datalar.QueryExec(datalar.ADO_SQL,sql);
                      end;

                     txtLog.Lines.Add(takipNo+' ; ' + hasta.faturaTeslimNo);


                 End
                 Else Begin
                     txtLog.Lines.Add(takipNo+' ; ' + msg);
                 End;

         // gridBransKodlari.Row := x;
     end;
     DurumGoster(false);

end;

procedure TfrmFatura.Faturaptal1Click(Sender: TObject);
var
  sonuc : string;
begin

   txtinfo.Caption := 'Fatura Ýptal Ediliyor...';
   Application.ProcessMessages;

   setlength(_teslimNumaralari,0);
   setlength(_teslimNumaralari,1);

   _teslimNumaralari[0] := _Dataset.fieldbyname('GSSFaturaTeslimNo').AsString;

 //   sonuc := FaturaKayitIptal(_teslimNumaralari,datalar.FaturaKaydet);

    if sonuc = '0000'
    Then Begin
           _Dataset.Edit;
           _Dataset.FieldByName('BirimFiyat').AsFloat := 0;
           _Dataset.FieldByName('tutar').AsFloat := 0;
           _Dataset.FieldByName('kdv').AsFloat := 8;
           _Dataset.FieldByName('KdvTutar').asfloat := 0;
           _Dataset.FieldByName('faturatutar').AsFloat := 0;
           _Dataset.FieldByName('GSSFaturaTeslimNo').AsString := '';
           _Dataset.Post;

           ShowMessageSkin('Fatura Ýptal Edildi','','','info');
           txtinfo.Caption := '';
    End
    Else ShowMessageSkin(sonuc,'','','info');


end;

procedure TfrmFatura.eyitNoKontrolYapSatr1Click(Sender: TObject);
var
   sql ,teyidNo , takipNo , faturaNo  , msg : string;
   x : integer;

begin

          txtinfo.Caption := 'TeyitNo Kontrol Yapýlýyor....';
          Application.ProcessMessages;
          takipNo := gridBransKodlari.Cells[14,gridBransKodlari.Row];
          msg := KabulOku(takipNo,hasta,datalar.HastaKabul,1);

           if msg = '0000'
           Then Begin

                begin
                    datalar.ADO_SQL.close;
                    datalar.ADO_SQL.SQL.clear;
                sql := 'update kurumfatura set ' +
                       'GSSFaturaTeslimNo = ' + QuotedStr(ifThen(hasta.faturaTeslimNo = '0','',hasta.faturaTeslimNo)) +
                       'where takipNo = ' + QuotedStr(takipNo);
                    datalar.QueryExec(datalar.ADO_SQL,sql);
                end;

               txtLog.Lines.Add(takipNo+' ; ' + hasta.faturaTeslimNo);


           End
           Else Begin
               txtLog.Lines.Add(takipNo+' ; ' + msg);
           End;

end;

procedure TfrmFatura.F1Click(Sender: TObject);
var
  x : integer;
  sql : string;
  ado : TADOQuery;
begin

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  sql := 'select code,name1,f.* from FaturaHizmetDetayTutarOku f ' +
         ' left join hareketler h on h.islemSiraNo = f.islemSirano ' +
         ' where takipno = ' + QuotedStr(_Dataset.FieldByName('takipno').AsString);

  datalar.QuerySelect(ado,sql);
  txtLog.Lines.Clear;
   while not ado.Eof do
   begin
    txtLog.Lines.Add(ado.Fields[0].AsString + ' - ' + ado.Fields[1].AsString + ' - ' +
                     ado.Fields[2].AsString + ' - ' + ado.Fields[3].AsString + ' - ' +
                     ado.Fields[4].AsString);
    ado.Next;
   end;

  ado.Free;

end;

procedure TfrmFatura.FaturaOku1Click(Sender: TObject);
var
   sql ,teyidNo , teslimNo , faturaNo  , msg : string;
   x : integer;
   Cvp : FaturaOkuCevapDVO;
begin

          Cvp := FaturaOkuCevapDVO.Create;
          teslimNo := gridBransKodlari.Cells[15,gridBransKodlari.Row];
          //Cvp.faturaTarihi := gridBransKodlari.Cells[3,gridBransKodlari.Row];

          msg := FaturaOku(teslimNO,Cvp,datalar.FaturaKaydet);

           if msg = '0000'
           Then Begin
               datalar.ADO_SQL.close;
               datalar.ADO_SQL.SQL.clear;
                sql := 'update kurumfatura set ' +
                       'tutar = ' + floattostr(Cvp.faturaTutari/1.08) +
                       ',faturaTutar = ' + floattostr(Cvp.faturaTutari) +
                       ',birimFiyat = ' + floattostr(Cvp.faturaTutari/1.08) + '/adet' +
                       ',faturatarihi = ' + tarihal(strtodate(Cvp.faturaTarihi)) +
                       'where GSSFaturaTeslimNo = ' + QuotedStr(teslimNo);
                    datalar.QueryExec(datalar.ADO_SQL,sql);
           End
           Else Begin
               txtLog.Lines.Add(teslimNO +' ; ' + msg);
           End;

           Cvp.Free;





end;

procedure TfrmFatura.FaturaptalTm1Click(Sender: TObject);
var
  sonuc , sql : string;
  x : integer;
  state : boolean;
  ado : TADOQuery;
begin

     _stop := 1;

     _Dataset.First;
     Application.ProcessMessages;
//     gridBransKodlari.Enabled := false;
     x := 1;

     DurumGoster;
     for x := 0 to FaturaList.Controller.SelectedRowCount - 1 do

     begin
          if _stop = 0 then Break;
          Application.ProcessMessages;

           pnlDurum.Caption := FaturaList.DataController.GetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('HASTA').Index);

              setlength(_teslimNumaralari,0);
              setlength(_teslimNumaralari,1);

              _teslimNumaralari[0] := FaturaList.DataController.GetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('GSSFaturaTeslimNo').Index);

              sonuc := FaturaKayitIptal(_teslimNumaralari,datalar.FaturaKaydet);

              if sonuc = '0000'
              Then Begin
                     ado := TADOQuery.Create(nil);
                     ado.Connection := datalar.ADOConnection2;
                     sql := 'update kurumFatura set BirimFiyat = 0 , tutar = 0 , kdv = 8 , KdvTutar = 0 ,faturatutar = 0 ,' +
                            'GSSFaturaTeslimNo = ' + QuotedStr('') +
                            ' where GSSFaturaTeslimNo = ' + QuotedStr(_teslimNumaralari[0]);
                     datalar.QueryExec(ado,sql);
                     ado.Free;
                  //   gridBransKodlari.Cells[15,x] := '';
                    FaturaList.DataController.SetValue(
                                      FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('GSSFaturaTeslimNo').Index,'');
                     txtLog.Lines.Add('Fatura Ýptal Edildi');
                     //ShowMessageSkin('Fatura Ýptal Edildi','','','info');
              End
              Else txtLog.Lines.Add(sonuc + ' - Fatura Ýptal Edilmedi');

     End; // while End
     DurumGoster(False);


end;

procedure TfrmFatura.FormCreate(Sender: TObject);
var
 chk : TcxCheckGroupItem;
begin
   cxPanel.Visible := false;
   dxStatusBar1.Visible := false;
   SayfaCaption('','','','','');
   TableName := _TableName_;
   Olustur(self,'','Fatura',28);
   Menu := PopupMenu1;

   TopPanel.Visible := True;
   TapPanelElemanVisible(True,True,True,false,false,false,True,false,False,False,True,True,True);
   chkList.Properties.Items.Clear;
   Chk := chkList.Properties.Items.Add;
   Chk.Caption := 'Faturalanmamýþlar';
   Chk.Tag := 0;
   Chk := chkList.Properties.Items.Add;
   Chk.Caption := 'Kontrol Onay';
   Chk.Tag := 1;
   chkList.EditValue := '10';
   txtDonemTopPanel.Yil := copy(tarihal(date()),1,4);

   FaturaList.DataController.DataSource := DataSource;

(*
  inherited;
  setDataStringKontrol(self,txttarih1, 'Tarih1','Tarih Aralýðý',Kolon1,'trh',110);
  setDataStringKontrol(self,txttarih2, 'Tarih2','',Kolon1,'trh',110);
  setDataStringKontrol(self,txtAylar, 'Donem','Dönem',Kolon1,'trh',110);
  setDataStringKontrol(self,txtDosyaNo, 'DosyaNo','Dosya No',Kolon1,'trh',110);
  setDataStringKontrol(self,hastaTip, 'hastaTip','',Kolon1,'trh',110);
  setDataStringKontrol(self,ktip, 'ktip','',Kolon1,'trh',110);

  addButton(self,btnListe,'btnListe', '','Liste',Kolon1,'trh',60);
  *)
end;

procedure TfrmFatura.Button1Click(Sender: TObject);
var
  memo : TMemo;
begin
   memo := TMemo.Create(nil);
   memo.Parent := frmFatura;
   memo.Lines.Add(datalar.SOAPRequestText);
   memo.Lines.SaveToFile('SOAPRequest.xml');
   memo.Free;

end;

procedure TfrmFatura.txtLogKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = VK_F10
   Then Begin
       Button1.Click;

   End;


end;

procedure TfrmFatura.FaturaOkuTm1Click(Sender: TObject);
var
   sql ,teyidNo , takipNo , faturaNo  , msg , teslimNo : string;
   x : integer;
   Cvp : FaturaOkuCevapDVO;
   state : boolean;
   adet : integer;
begin
      Cvp := FaturaOkuCevapDVO.Create;

     _stop := 1;

     DurumGoster;
     for x := 0 to FaturaList.Controller.SelectedRowCount - 1  do
     begin
          if _stop = 0 then Break;
          Application.ProcessMessages;

                pnlDurum.Caption := FaturaList.DataController.GetValue(
                           FaturaList.Controller.SelectedRows[x].RecordIndex,FaturaList.DataController.GetItemByFieldName('HASTA').Index);


                teslimNo := GridCellToString(FaturaList,'GSSFaturaTeslimNo',x);
                          // FaturaList.DataController.GetValue(
                          // FaturaList.Controller.SelectedRows[x].RecordIndex,14);
                adet :=   GridCellToString(FaturaList,'Adet',x);
                          // FaturaList.DataController.GetValue(
                          // FaturaList.Controller.SelectedRows[x].RecordIndex,6);
                //Cvp.faturaTarihi := gridBransKodlari.Cells[3,gridBransKodlari.Row];

                msg := FaturaOku(teslimNO,Cvp,datalar.FaturaKaydet);

                 if msg = '0000'
                 Then Begin
                     datalar.ADO_SQL.close;
                     datalar.ADO_SQL.SQL.clear;
                      sql := 'update kurumfatura set ' +
                             'tutar = ' + floattostr(Cvp.faturaTutari) +
                             ',faturaTutar = ' + floattostr(Cvp.faturaTutari* 1.08) +
                             ',faturatarihi = ' + tarihal(strtodate(Cvp.faturaTarihi)) +
                             ',BirimFiyat = ' + floattostr(Cvp.faturaTutari / adet) +
                             'where GSSFaturaTeslimNo = ' + QuotedStr(teslimNo);
                          datalar.QueryExec(datalar.ADO_SQL,sql);


                     txtLog.Lines.Add(teslimNo+' ; ' + cvp.faturaRefNo+';'+cvp.faturaTarihi);

                 End
                 Else Begin
                     txtLog.Lines.Add(teslimNO +' ; ' + msg);
                 End;

     End;
           Cvp.Free;
     DurumGoster(False);
end;

procedure TfrmFatura.utarOnayTm1Click(Sender: TObject);
var
  x : integer;
  state : boolean;
begin
     _stop := 1;


     DurumGoster;
     for x := 0 to FaturaList.Controller.SelectedRowCount - 1 do
     begin
          if _stop = 0 then Break;
          Application.ProcessMessages;
          pnlDurum.Caption :=  GridCellToString(FaturaList,'HASTA',x);
                             // FaturaList.DataController.GetValue(
                             // FaturaList.Controller.SelectedRows[x].RecordIndex,2);

              FaturaList.Controller.FocusedRow := FaturaList.Controller.SelectedRows[x];
              _Dataset.Edit;
              GridCellSetValue(FaturaList,'Kontrol',x,'1');
              //FaturaList.DataController.SetValue(
              //FaturaList.Controller.SelectedRows[x].RecordIndex,16,'O');


              _Dataset.FieldByName('Kontrol').AsString := GridCellToString(FaturaList,'Kontrol',x);
                          // FaturaList.DataController.GetValue(
                          // FaturaList.Controller.SelectedRows[x].RecordIndex,16);

              _Dataset.Post;
     End; // for End

     DurumGoster(False);

end;

procedure TfrmFatura.FaturaListFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  ado_detay.Close;
  ADO_Detay.Parameters[0].Value := _Dataset.FieldByName('takipNo').AsString;
  ADO_Detay.Open;

end;

procedure TfrmFatura.cxGridDBTableView2StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
 r : integer;
begin
 (*
 try
  if  (ARecord.Values[6] * ARecord.Values[7]) <> ARecord.Values[8]
  Then
    AStyle := cxStyle2;
 except end;
   *)
end;

procedure TfrmFatura.Onay1Click(Sender: TObject);
begin
  _Dataset.Edit;
  _Dataset.FieldByName('Kontrol').AsString := '1';
  _Dataset.Post;

end;

procedure TfrmFatura.H1Click(Sender: TObject);
begin
(*
  DatasetiDoldur(ADO_SQL.FieldByName('takipNo').AsString,'G',ADO_SQL.FieldByName('basvuruNo').AsString);

  frmRapor.raporData1(frmRapor.topluset ,'014','\HizmetDetay');
  frmRapor.ShowModal;
  *)
end;

procedure TfrmFatura.HizmetleriOku1Click(Sender: TObject);
var
 GirisFormRecord : TGirisFormRecord;
begin
  GirisFormRecord.F_TakipNo_ := _Dataset.FieldByName('takipNo').AsString;
  GirisFormRecord.F_BasvuruNo_ := _Dataset.FieldByName('basvuruNo').AsString;
  FormINIT(TagfrmTakipBilgisiOku,GirisFormRecord).ShowModal;
end;

end.
