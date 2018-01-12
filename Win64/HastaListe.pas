unit HastaListe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, BaseGrid, AdvGrid, DBAdvGrd, sPanel, StdCtrls,
  Buttons, sBitBtn, ExtCtrls, DBGrids,kadir,  KadirLabel,
  DBGridEh, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Menus,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, cxContainer, cxGroupBox, cxRadioGroup,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxMemo,
  cxPCdxBarPopupMenu, cxPC,NoktaFormUnit;

type
  TfrmHastaListe = class(TNoktaForm)
    pnlOnay: TPanel;
    txtinfo: TLabel;
    btnSend: TsBitBtn;
    btnVazgec: TsBitBtn;
    pnlToolBar: TPanel;
    PanelSource: TPanel;
    btnAra: TsBitBtn;
    pnlTitle: TPanel;
    sPanel1: TsPanel;
    ado_BransKodlari: TADOQuery;
    DataSource1: TDataSource;
    cxGrid2: TcxGrid;
    Liste: TcxGridDBTableView;
    ListeColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ListeColumn2: TcxGridDBColumn;
    ListeColumn3: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    PopupMenu1: TPopupMenu;
    edaviKart1: TMenuItem;
    SeansKart1: TMenuItem;
    Epikriz1: TMenuItem;
    akipRaporBul1: TMenuItem;
    SeansTahakkuk1: TMenuItem;
    Tip: TcxRadioGroup;
    txtay: TcxComboBox;
    Panel1: TPanel;
    ListeColumn4: TcxGridDBColumn;
    ListeColumn5: TcxGridDBColumn;
    ListeColumn6: TcxGridDBColumn;
    uyari: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    txtUyariMesaj: TcxMemo;
    ktip: TcxComboBox;
    Kilo: TcxGridDBColumn;
    DiyalizTip: TcxRadioGroup;
    popupYil: TPopupMenu;
    N1: TMenuItem;
    ListeColumn7: TcxGridDBColumn;
    ListeColumn8: TcxGridDBColumn;
    T1: TMenuItem;
    ListeColumn9: TcxGridDBColumn;
    ListeColumn10: TcxGridDBColumn;
    ListeColumn11: TcxGridDBColumn;
    H1: TMenuItem;
    H2: TMenuItem;
    H3: TMenuItem;
    procedure btnVazgecClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAraClick(Sender: TObject);
    procedure btnGuncelleClick(Sender: TObject);
    procedure Bilgiler;
    procedure ado_BransKodlariAfterPost(DataSet: TDataSet);
    procedure ListeDblClick(Sender: TObject);
    procedure SeansKart1Click(Sender: TObject);
    procedure edaviKart1Click(Sender: TObject);
    procedure Epikriz1Click(Sender: TObject);
    procedure SeansTahakkuk1Click(Sender: TObject);
    procedure cxRadioGroup1PropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtayPropertiesChange(Sender: TObject);
    procedure ado_BransKodlariAfterOpen(DataSet: TDataSet);
    procedure ado_BransKodlariAfterScroll(DataSet: TDataSet);
    procedure ListeDataControllerFilterRecord(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var Accept: Boolean);
    procedure popupYilPopup(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ListeCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure H1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHastaListe: TfrmHastaListe;
  ay1 , ay2  , donemYil ,_Tarih_: string;
implementation
  uses Data_model1, HastaKarti, Seanslar, TedaviBilgisi, rapor;
{$R *.dfm}

procedure TfrmHastaListe.Bilgiler;
begin
//    ado_BransKodlari.Parameters.ParamByName('tip').Value := 'H';
//    ado_BransKodlari.Parameters.ParamByName('t').value := ay1;
//    ado_BransKodlari.Parameters.ParamByName('t1').value := ay2;
//    ado_BransKodlari.Open;

   // ShowMessage(ado_BransKodlari.SQL.Text,'','','info');

    ay1 := tarihal(ayaditoay(txtAy.Text,donemYil));
    ay2 := tarihal(ayliktarih2(txtAy.Text,donemYil));
    _tarih_ := copy(ay1,1,4);
    ado_BransKodlari.Close;
    ado_BransKodlari.Parameters.ParamByName('ak').Value := Tip.EditValue;
    ado_BransKodlari.Parameters.ParamByName('tip').Value := DiyalizTip.EditValue;
    ado_BransKodlari.Parameters.ParamByName('t').value := ay1;
    ado_BransKodlari.Parameters.ParamByName('t1').value := ay2;
    ado_BransKodlari.Parameters.ParamByName('ktip').value := trim(copy(ktip.Text,1,2));
    ado_BransKodlari.Open;


end;

procedure TfrmHastaListe.btnVazgecClick(Sender: TObject);
begin
  close;
end;

procedure TfrmHastaListe.cxRadioGroup1PropertiesChange(Sender: TObject);
begin
    Bilgiler;

(*
    ado_BransKodlari.Close;
    ado_BransKodlari.Parameters.ParamByName('ak').Value := Tip.EditValue;
    ado_BransKodlari.Parameters.ParamByName('tip').Value := DiyalizTip.EditValue;
    ado_BransKodlari.Parameters.ParamByName('t').value := ay1;
    ado_BransKodlari.Parameters.ParamByName('t1').value := ay2;
    ado_BransKodlari.Parameters.ParamByName('ktip').value := trim(copy(ktip.Text,1,2));
    ado_BransKodlari.Open;
  *)


end;

procedure TfrmHastaListe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmHastaListe.FormCreate(Sender: TObject);
begin

  txtay.ItemIndex :=  strtoint(copy(tarihal(date()),5,2))-1;
 // txtay.Text := aytoayadi(date());
  ay1 := tarihal(ayaditoay(txtAy.Text));
  ay2 := tarihal(ayliktarih2(txtAy.Text));
end;

procedure TfrmHastaListe.H1Click(Sender: TObject);
var
  sql : string;
  ado,ado0,ado1,ado2,ado3,ado4,ado5,ado6,ado7,ado8,ado9,ado10,ado11,ado12 : TADOQuery;
  m : string;
begin

   case TMenuItem(sender).Tag of
    10 : m := 'E';
    11 : m := 'H';
   end;

   if TMenuItem(sender).Tag in [12]
   then begin
    frmRapor.topluset.Dataset1 := ado_BransKodlari;
    frmRapor.raporData1(frmRapor.topluset ,'203T','\\Hasta Tetkik Takip Hepatit Toplu');
    frmRapor.ShowModal;
   end
   else begin
    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;

    sql := 'exec  sp_HastaTetkikTakipPIVOTToplu @dosyaNO = '''' , @yil = ' + QuotedStr(ay1) +
                  ',@marker = ' + QuotedStr(m) + ',@f= -1';

    datalar.QuerySelect(ado,sql);

    frmRapor.topluset.Dataset0 := ado;
    frmRapor.raporData1(frmRapor.topluset ,'205','\Toplu Tetkik Takip ');
    frmRapor.ShowModal;
    ado.Free;
   end;


end;

procedure TfrmHastaListe.btnAraClick(Sender: TObject);
var
  t : string;
  List : TStringList;
begin



end;

procedure TfrmHastaListe.btnGuncelleClick(Sender: TObject);
begin

  if mrYes = ShowMessageSkin('Satýr Silmek Ýstediðinize Emin misiniz ?','','','msg')
  then begin
     ado_BransKodlari.Delete;
  end;


end;

procedure TfrmHastaListe.ado_BransKodlariAfterOpen(DataSet: TDataSet);
begin
  panel1.Caption := 'Listelenen Hasta Sayýsý : ' + inttostr(ado_BransKodlari.RecordCount);
end;

procedure TfrmHastaListe.ado_BransKodlariAfterPost(DataSet: TDataSet);
begin

//   gridBransKodlari.Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing , goRowSelect];


end;

procedure TfrmHastaListe.ado_BransKodlariAfterScroll(DataSet: TDataSet);
begin

  HastaBilgileri.TcKimlikNo := ado_BransKodlari.FieldByName('TCKIMLIKNO').AsString;

  HastaBilgileri.Adi := ado_BransKodlari.FieldByName('HASTAADI').AsString + ' ' +
                           ado_BransKodlari.FieldByName('HASTASOYADI').AsString;

  HastaBilgileri.dosyaNo := ado_BransKodlari.FieldByName('dosyaNo').AsString;
  datalar._takip_ := ado_BransKodlari.FieldByName('TakýpNo').AsString;


  datalar.Bilgi.dosyaNo := ado_BransKodlari.FieldByName('dosyaNo').AsString;
  datalar.Bilgi.gelisNo := ado_BransKodlari.FieldByName('gelisNo').AsString;
  datalar.Bilgi.Doktor := ado_BransKodlari.FieldByName('doktor').AsString;
  datalar.Bilgi.TakipNo := ado_BransKodlari.FieldByName('TakýpNo').AsString;
  datalar.Bilgi.Adi := ado_BransKodlari.FieldByName('HASTAADI').AsString + ' ' +
                           ado_BransKodlari.FieldByName('HASTASOYADI').AsString;
  datalar.Bilgi.tckimlikNo := ado_BransKodlari.FieldByName('TCKIMLIKNO').AsString;


(*
  if (ado_BransKodlari.FieldByName('tahlil').AsString = '1')
      or
     (ado_BransKodlari.FieldByName('ozelDurum').AsString = '1')
     or
     (ado_BransKodlari.FieldByName('seansKontrol').AsString = '1')
     Then Begin
       uyari.Visible := True;
       txtUyariMesaj.Lines.Add(ado_BransKodlari.FieldByName('diger').AsString);
       if ado_BransKodlari.FieldByName('tahlil').AsString = '1'
       Then txtUyariMesaj.Lines.Add('Sonucu Girilmemiþ Tetkik Bilgisi Bulunmaktadýr');
       if ado_BransKodlari.FieldByName('Kilo').AsString = '1'
       Then txtUyariMesaj.Lines.Add('Giriþ Çýkýþ Kilo Bilgisi Girilmemiþ Seans Bulunmaktadýr');
       if ado_BransKodlari.FieldByName('seansKontrol').AsString = '1'
       Then txtUyariMesaj.Lines.Add('Rapora Göre haftalýk eksik yada sebeb belirtilmeden girilmemiþ Seans bulunmaktadýr');
     End
     Else
     begin
      txtUyariMesaj.Lines.Clear;
      uyari.Visible := False;
     end;
     *)
end;

procedure TfrmHastaListe.ListeCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  if ACellViewInfo.Item.Index = 6
  Then Begin
    cxGrid2.Hint := ado_BransKodlari.FieldByName('diger').AsString;
    cxGrid2.ShowHint := True;
  End
  else
  if (ACellViewInfo.Item.Index = 11) and (ado_BransKodlari.FieldByName('TakipProvizyonTarihiKontrol').AsString = 'H')
  Then Begin
    cxGrid2.Hint := 'Takibin Provizyon Tarihi ile ilk seans tarihi uyuþmuyor';
    cxGrid2.ShowHint := True;
  End
  else
  begin
    cxGrid2.Hint := '';
    cxGrid2.ShowHint := false;
  end;


end;

procedure TfrmHastaListe.ListeDataControllerFilterRecord(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var Accept: Boolean);
begin

   panel1.Caption := 'Kayýt Sayýsý : '  +
      inttostr(liste.DataController.Summary.FooterSummaryValues[0]);

end;

procedure TfrmHastaListe.ListeDblClick(Sender: TObject);
begin


   if UserRight('Hasta Kartý', 'Giriþ') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

    try

           if datalar.HkA = 0
           Then Begin
            frmHastaKarti := TfrmHastaKarti.Create(self);
          //  GorselAyar(frmHastaKarti,datalar.global_img_list4);
            frmHastaKarti.Top := 2;
            frmHastaKarti.Left := 2 + frmHastaListe.Width + 5;
           End;

           frmHastaKarti.Combo;
           frmHastaKarti.ilCombo;
           frmHastaKarti.yakinlikCombo;
           frmHastaKarti.KartGetir(ado_BransKodlari.FieldByName('dosyaNo').AsString);
           frmHastaKarti.Gelisler(ado_BransKodlari.FieldByName('dosyaNo').AsString);
           frmHastaKarti.Durum(1);
           frmHastaKarti.btnGuncelle.Enabled := True;
          // Disabled(frmHastaKarti);
           frmHastaKarti.Disable;
    except
    end;



end;

procedure TfrmHastaListe.N1Click(Sender: TObject);
begin
  donemYil := trim(stringReplace(TMenuItem(sender).Caption,'&','',[rfReplaceAll]));
  frmHastaListe.Caption := 'Hasta Listesi [ ' + donemYil + ' ]';
  Bilgiler;

end;

procedure TfrmHastaListe.popupYilPopup(Sender: TObject);
var
  I ,yil : integer;
  item : TMenuItem;
begin
  yil := strtoint(copy(datetostr(date),7,4))+1;
//--  popupYil.Items.Clear;


  for I := 1 to 5 do
  begin
   yil := yil - 1;
   if popupYil.items.Find(inttostr(yil)) = nil
   Then Begin
     item := TMenuItem.Create(self);
     item.Caption := inttostr(yil);
    // item.Name := protokol + '-' + hasta;
     item.onClick := N1.onClick;
     popupYil.Items.Insert(popupYil.Items.Count  , item);
   End;
  end;




end;

procedure TfrmHastaListe.SeansKart1Click(Sender: TObject);
begin


   if UserRight('SEANS iÞLEMLERÝ', 'Ýzle') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

    Application.CreateForm(TfrmSeanslar, frmSeanslar);
    GorselAyar(frmSeanslar,datalar.global_img_list4);
    //frmSeanslar.HastaBil(txtDosyaNo.Text , gridGelisler.Cells[1,gridgelisler.Row] , txtHastaAdi.text+' '+txtSoyadi.text , gridGelisler.Cells[3,gridgelisler.Row] ,gridGelisler.Cells[6,gridgelisler.Row],txtMakinaNo.text);
    frmSeanslar.SeansGetir(ado_BransKodlari.fieldbyname('dosyaNo').AsString , ado_BransKodlari.fieldbyname('gelisno').AsString);
    frmSeanslar.ShowModal;
    frmSeanslar.Release;
    frmSeanslar := nil;


end;

procedure TfrmHastaListe.edaviKart1Click(Sender: TObject);
begin

   if UserRight('Hasta Kartý', 'Tedavi Kartý') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

       Application.CreateForm(TfrmTedaviBilgisi, frmTedaviBilgisi);
       frmTedaviBilgisi.TedaviFormDosyaNo := ado_BransKodlari.fieldbyname('dosyaNo').AsString;
       frmTedaviBilgisi.TedaviFormGelisNo := ado_BransKodlari.fieldbyname('gelisNo').AsString;

       GorselAyar(frmTedaviBilgisi,datalar.global_img_list4);
       frmTedaviBilgisi.TedaviBilgi(ado_BransKodlari.fieldbyname('gelisNo').AsString,ado_BransKodlari.fieldbyname('dosyaNo').AsString
                                      ,datetostr(kadir.tarihyap(ado_BransKodlari.fieldbyname('BHDAT').AsString)),'',ado_BransKodlari.fieldbyname('HASTAADI').AsString,
                                       ado_BransKodlari.fieldbyname('HASTASOYADI').AsString);
       frmTedaviBilgisi.ShowModal;
end;

procedure TfrmHastaListe.Epikriz1Click(Sender: TObject);
begin
   EpikrizYaz(ado_BransKodlari.fieldbyname('dosyaNo').AsString,ado_BransKodlari.fieldbyname('gelisNo').AsString,false);

end;

procedure TfrmHastaListe.SeansTahakkuk1Click(Sender: TObject);
begin
  DatasetiDoldur(ado_BransKodlari.fieldbyname('TakýpNo').AsString,
                 ado_BransKodlari.fieldbyname('TEDAVITURU').AsString,
                 ado_BransKodlari.fieldbyname('TakýpNo').AsString);

  frmRapor.topluset.Dataset8 := KurumBilgi;

  frmRapor.raporData1(frmRapor.topluset ,'035','\SeansTahakkuk');
  frmRapor.ShowModal;
end;

procedure TfrmHastaListe.txtayPropertiesChange(Sender: TObject);
begin
    Bilgiler;

   (*
    ay1 := tarihal(ayaditoay(txtAy.Text,donemYil));
    ay2 := tarihal(ayliktarih2(txtAy.Text,donemYil));
    ado_BransKodlari.Close;
    ado_BransKodlari.Parameters.ParamByName('ak').Value := Tip.EditValue;
    ado_BransKodlari.Parameters.ParamByName('tip').Value := DiyalizTip.EditValue;
    ado_BransKodlari.Parameters.ParamByName('t').value := ay1;
    ado_BransKodlari.Parameters.ParamByName('t1').value := ay2;
    ado_BransKodlari.Parameters.ParamByName('ktip').value := trim(copy(ktip.Text,1,2));
    ado_BransKodlari.Open;
    *)
end;

end.
