unit Gonderilmisler;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, InvokeRegistry, Rio, SOAPHTTPClient, Grids, BaseGrid,
  AdvGrid, ExtCtrls, sPanel, kadir, Mask,GetFormClass,KadirType,
  EditType, ImgList, Buttons, sBitBtn, Data_modul, ComCtrls, Menus,
  JvComponentBase, JvBalloonHint, DBCtrlsEh, AdvToolBtn, (*odemeDurumKontrolIslemleriG,*)
  sCheckBox,(*OdemeBilgisiIslemleriG*)(*ProvizyonIslemleriG,*)
  kadirMedula3, AdvObj, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinMcSkin,
  cxGroupBox, cxRadioGroup,GirisUnit, dxSkinMoneyTwins, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, cxDropDownEdit, cxTextEdit, cxMaskEdit, cxCalendar, cxPC,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, KadirLabel, Data.Win.ADODB,
  cxButtons;

type
  TfrmGonderilmis = class(TGirisForm)
    JvBalloonHint1: TJvBalloonHint;
    PopupMenu1: TPopupMenu;
    Kaydet1: TMenuItem;
    akipSil1: TMenuItem;
    N2: TMenuItem;
    FaturaBilgisiKayt1: TMenuItem;
    Takip: THTTPRIO;
    HTTPRIO1: THTTPRIO;
    global_img_list4: TImageList;
    KilitKoy1: TMenuItem;
    N5: TMenuItem;
    Kilitz1: TMenuItem;
    N6: TMenuItem;
    mnSe1: TMenuItem;
    mptal1: TMenuItem;
    Kopyala1: TMenuItem;
    N8: TMenuItem;
    ExceleGnder1: TMenuItem;
    H1: TMenuItem;
    cxGroupBox1: TcxGroupBox;
    cxPageControl_Gelisler: TcxPageControl;
    page_Gonderilmisler: TcxTabSheet;
    page_Gonderilmemis: TcxTabSheet;
    page_TakipYok: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    DiyalizTip: TcxRadioGroup;
    txtAylar: TcxComboBox;
    L1: TMenuItem;
    gridGonderilmisler: TcxGridDBTableView;
    cxGridKadir1Level1: TcxGridLevel;
    cxGridKadir1: TcxGridKadir;
    cxGridKadir2: TcxGridKadir;
    gridGonderilmemisler: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridKadir3: TcxGridKadir;
    gridTakipAlinmamisler: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    S1: TMenuItem;
    ADO_Gonderilmis: TADOQuery;
    DataSource1: TDataSource;
    txtTarih1: TcxDateEditKadir;
    txtTarih2: TcxDateEditKadir;
    DataSource2: TDataSource;
    ADO_Gonderilmemis: TADOQuery;
    gridGonderilmislerbasvuruNo: TcxGridDBColumn;
    gridGonderilmislertakipno: TcxGridDBColumn;
    gridGonderilmislerdosyaNo: TcxGridDBColumn;
    gridGonderilmislerHastaAd: TcxGridDBColumn;
    gridGonderilmislerhastaSoyAd: TcxGridDBColumn;
    gridGonderilmislerBrasKodu: TcxGridDBColumn;
    gridGonderilmislerTedaviTuru: TcxGridDBColumn;
    gridGonderilmislerGelinenSeans: TcxGridDBColumn;
    gridGonderilmislerSeansDurum: TcxGridDBColumn;
    gridGonderilmislergelisNo: TcxGridDBColumn;
    gridGonderilmislerislemAdedi: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    btnList: TcxButton;
    gridGonderilmemislerbasvuruNo: TcxGridDBColumn;
    gridGonderilmemislertakipno: TcxGridDBColumn;
    gridGonderilmemislerdosyaNo: TcxGridDBColumn;
    gridGonderilmemislerHastaAd: TcxGridDBColumn;
    gridGonderilmemislerhastaSoyAd: TcxGridDBColumn;
    gridGonderilmemislerBrasKodu: TcxGridDBColumn;
    gridGonderilmemislerTedaviTuru: TcxGridDBColumn;
    gridGonderilmemislerGelinenSeans: TcxGridDBColumn;
    gridGonderilmemislerSeanDurum: TcxGridDBColumn;
    gridGonderilmemislerislemAdedi: TcxGridDBColumn;
    gridGonderilmemislergelisno: TcxGridDBColumn;
    procedure cxButtonCClick(Sender: TObject);
    procedure gridDetayGonderilmis;
    procedure gridDetayGonderilmemisGetir;
    procedure btnVazgecClick(Sender: TObject);
    procedure akipKontrol1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure akipSil1Click(Sender: TObject);
    procedure demeBilgisiKontrolEt1Click(Sender: TObject);
    procedure HataBilgisi1Click(Sender: TObject);
    procedure FaturaBilgisiKayt1Click(Sender: TObject);
    procedure SeiliOlanlarcmaleAt1Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure KilitKoy1Click(Sender: TObject);
    procedure txtTarih1Exit(Sender: TObject);
    procedure Gonderilmemiseat(_TakipNo : string);
    procedure GnderilmemilereAt1Click(Sender: TObject);
    procedure txtAylarClick(Sender: TObject);
    procedure tarihbilgi;
    procedure gridDetayGonderilmemisDblClick(Sender: TObject);
    procedure sBitBtn9Click(Sender: TObject);
    procedure Kaydet1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnListClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmGonderilmis: TfrmGonderilmis;

implementation
{$R *.dfm}
Uses  AnaUnit, HastaSeansIsle, HastaKart, takipOkuBilgisi;

function TfrmGonderilmis.Init(Sender : TObject) : Boolean;
var
 t1 : Tdate;
begin
  txttarih2.Date := ayliktarih(Date,txtTarih1);
 // txtTarih1.Date := t1;
  Result := True;
end;


procedure TfrmGonderilmis.tarihbilgi;
begin
    tarihata(txtTarih1,txtTarih2,txtAylar);
end;

procedure TfrmGonderilmis.Gonderilmemiseat(_TakipNo : string);
var
  sql : string;
begin
    sql := 'update Gelisler set TakýpSend = ' + #39 + '9' + #39 + ' where TakýpNo = ' + #39 + _TakipNo + #39;
    datalar.QueryExec(datalar.ADO_SQL2,sql);
end;

procedure TfrmGonderilmis.cxButtonCClick(Sender: TObject);
var
  F : TGirisForm;
  r : integer;
  GirisFormRecord : TGirisFormRecord;
  GridDetay : TcxGridDBTableView;
begin
   inherited;

   case cxPageControl_Gelisler.ActivePageIndex  of
    0 : GridDetay := gridGonderilmisler;
    1 : GridDetay := gridGonderilmemisler;
   end;

    r := GridDetay.DataController.DataControllerInfo.FocusedRecordIndex;
    datalar.Bilgi.dosyaNo := GridDetay.DataController.Values[r, 2];
    //datalar.Bilgi.tckimlikNo := _Tc_;
    datalar.Bilgi.Adi := GridDetay.DataController.Values[r, 3];
    GirisFormRecord.F_dosyaNo_ := GridDetay.DataController.Values[r, GridDetay.GetColumnByFieldName('dosyaNo').Index];
    GirisFormRecord.F_gelisNo_ := GridDetay.DataController.Values[r, GridDetay.GetColumnByFieldName('gelisNo').Index];
   // GirisFormRecord.F_provizyonTarihi_ := NoktasizTarih(Takipler.DataController.Values[r, 5]);
    GirisFormRecord.F_TakipNo_ := GridDetay.DataController.Values[r, GridDetay.GetColumnByFieldName('TakipNo').Index];
    GirisFormRecord.F_HastaAdSoyad_ := GridDetay.DataController.Values[r, 3];



   case Tcontrol(sender).Tag of
    -1 : begin

         end;
    -2 : begin
            F := FormINIT(TagfrmHastaSeans,GirisFormRecord,ikEvet,'Giriþ');
            if F <> nil then F.ShowModal;
         end;
    -3 : begin
           if FindTab(AnaForm.sayfalar,'TabfrmHastaKart')
           Then begin
             F := TGirisForm(FormClassType(TagfrmHastaKart));
             TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := GridDetay.DataController.Values[r, 2];
             TGirisForm(FormClassType(TagfrmHastaKart)).Init(F);
           end
           Else begin
            F := FormINIT(TagfrmHastaKart,self,GridDetay.DataController.Values[r, 2],NewTab(AnaForm.sayfalar,'TabfrmHastaKart'),ikEvet,'Giriþ');
            if F <> nil then F.show;
           end;
         end;

   end;


end;


procedure TfrmGonderilmis.gridDetayGonderilmis;
var
  sql ,tip,KurumTip,Durum : string;
  i , ilkkayit , Hatali , hatasiz : integer;
begin
   KurumTip := '';
   Durum := '';
   tip := DiyalizTip.EditValue;

   ADO_Gonderilmis.Close;
   ADO_Gonderilmis.SQL.Clear;
   sql := 'exec sp_GelisTakipSend_M3 ' +  txttarih1.GetSQLValue  + ','  + txttarih2.GetSQLValue +
          ',' + #39 + KurumTip + #39 + ',' + #39 + Durum + #39 +
          ',' + #39 + Tip + #39;

   datalar.QuerySelect(ADO_Gonderilmis,sql);
end;

procedure TfrmGonderilmis.gridDetayGonderilmemisGetir;
var
  sql : string;
begin
   sql := 'exec sp_GelisTakipAL_m3 ' + txtTarih1.GetSQLValue + ',' + txtTarih2.GetSQLValue +  ',' + #39 + '' + #39;
   datalar.QuerySelect(ADO_Gonderilmemis,sql);

end;

procedure TfrmGonderilmis.PopupMenu1Popup(Sender: TObject);
begin
(*

     if gridDetayGonderilmemis.Cells[7,gridDetayGonderilmemis.Row] <> 'Hatalý'
     then HataBilgisi1.Visible := false else HataBilgisi1.Visible := True;



     if txtDurum.ItemIndex = 2
     //gridDetayGonderilmemis.Cells[7,gridDetayGonderilmemis.Row] = 'Hatasýz'

     then FaturaBilgisiKayt1.Visible := True else FaturaBilgisiKayt1.Visible := False;

     if gridDetayGonderilmemis.Cells[8,gridDetayGonderilmemis.Row] <> gridDetayGonderilmemis.Cells[9,gridDetayGonderilmemis.Row]
     then begin
          KaytlarDnenDeerlereGreGncelle1.Visible := True;
     end else
     begin
          KaytlarDnenDeerlereGreGncelle1.Visible := False;
     end;

     if txtDurum.ItemIndex = 3 then
     GnderilmemilereAt1.Visible := False else GnderilmemilereAt1.Visible := False;
  *)
end;

procedure TfrmGonderilmis.akipSil1Click(Sender: TObject);
var
//   Ts_Gon1 : TakipSilGirisDVO;
//   Ts_Cvp1 : TakipSilCevapDVO;
   sql : string;
begin
  (*
          frmAna.Login;

          Takip.HTTPWebNode.UserName := frmAna._username;
          Takip.HTTPWebNode.Password := frmAna._sifre;

          Ts_gon1 := TakipSilGirisDVO.Create;
          Ts_cvp1 := TakipSilCevapDVO.Create;

          Ts_gon1.saglikTesisKodu := frmAna._Kurumkod;
          Ts_Gon1.takipNo := gridDetayGonderilmemis.Cells[1,gridDetayGonderilmemis.Row];

          try
            Ts_Cvp1 := (takip as ProvizyonIslemleri).takipSil(Ts_Gon1);
          except
            on E: Exception do Showmessage(E.Message,'','','info');
          end;

          if Ts_Cvp1.sonucKodu = '0000' then
          begin

             sql := 'update Gelisler set Takýpsend = ' + #39 + '9' + #39 + ', TakipNo = ' + #39 + '' + #39
             + ' where takýpNo = ' + #39 + gridDetayGonderilmemis.Cells[1,gridDetayGonderilmemis.Row] + #39;

             datalar.QueryExec(datalar.ADO_SQL2,sql);

             ShowMessageSkin('Takip Silindi , Silinen Takip : ' + Ts_Cvp1.takipNo,'','','info');

          end
          else begin
             ShowMessageSkin('Takip Silinemedi , Takip : ' + Ts_Cvp1.takipNo +'-' + Ts_Cvp1.sonucMesaji ,'','','info');
          end;
  *)
end;

procedure TfrmGonderilmis.demeBilgisiKontrolEt1Click(Sender: TObject);
begin
   (*
    Application.CreateForm(TfrmTakipDetay, frmTakipDetay);
    GorselAyar(frmTakipDetay,frmAna.global_img_list4);
    frmTakipDetay.Detay(gridDetayGonderilmemis.Cells[1,gridDetayGonderilmemis.row]);
    frmTakipDetay.ShowModal;
    frmTakipDetay.Release;
    frmTakipDetay := nil;
     *)
end;

procedure TfrmGonderilmis.btnListClick(Sender: TObject);
begin
   DurumGoster;
   gridDetayGonderilmis;
   gridDetayGonderilmemisGetir;
   DurumGoster(false);
end;

procedure TfrmGonderilmis.btnVazgecClick(Sender: TObject);
begin
  close;
end;


procedure TfrmGonderilmis.akipKontrol1Click(Sender: TObject);
var
//    OD_gon1 : OdemeDurumKontrolGirisDVO;
//    OD_cvp1 : DOdemeSorguCevapDVO;
    i : integer;
    sql : string;
begin
  {
    if (TPopupMenu(sender).Tag = 1) or (TsBitBtn(sender).Tag = 1)
    then begin
      for i := 1 to gridDetayGonderilmemis.RowCount - 2  do
      begin
            frmAna.Login;
            HTTPRIO1.HTTPWebNode.UserName := frmAna._username;
            HTTPRIO1.HTTPWebNode.Password := frmAna._sifre;

            OD_gon1 := OdemeDurumKontrolGirisDVO.Create;
            OD_cvp1 := DOdemeSorguCevapDVO.Create;

            OD_gon1.saglikTesisKodu := frmAna._Kurumkod;
            OD_gon1.takipNo := gridDetayGonderilmemis.Cells[1,i];

            try
              OD_Cvp1 := (HTTPRIO1 as OdemeDurumKontrolIslemleri).odemeDurumunuKontrolEt(OD_gon1);
            except
              on E: Exception do Showmessage(E.Message,'','','info');
            end;

            sql := 'update Gelisler set Takýpsend = ' + #39 + OD_cvp1.durum + #39 + ', TAKIPTUTAR = ' + FLOATTOSTR(OD_cvp1.toplamTutar)
                 + ' where takýpNo = ' + #39 + gridDetayGonderilmemis.Cells[1,i] + #39;



            datalar.QueryExec(datalar.ADO_SQL2,sql);
        //    gridDetayGonderilmis;

            if gridDetayGonderilmemis.Cells[7,i] = 'Hatalý'
            then begin
                 Gonderilmemiseat(gridDetayGonderilmemis.Cells[1,i]);
            end;

            if gridDetayGonderilmemis.Cells[8,i] <> gridDetayGonderilmemis.Cells[9,i]
            then begin
                gridDetayGonderilmemis.Colors[8,i] := clred;
                gridDetayGonderilmemis.Colors[9,i] := clred;
//                KaytlarDnenDeerlereGreGncelle1.Visible := True;
            end else
            begin
//                KaytlarDnenDeerlereGreGncelle1.Visible := False;
            end;

            gridDetayGonderilmemis.Row := i;

      end;
      gridDetayGonderilmis;
  end else begin

          frmAna.Login;

          HTTPRIO1.HTTPWebNode.UserName := frmAna._username;
          HTTPRIO1.HTTPWebNode.Password := frmAna._sifre;

          OD_gon1 := OdemeDurumKontrolGirisDVO.Create;
          OD_cvp1 := DOdemeSorguCevapDVO.Create;

          OD_gon1.saglikTesisKodu := frmAna._Kurumkod;
          OD_gon1.takipNo := gridDetayGonderilmemis.Cells[1,gridDetayGonderilmemis.Row];

          try
            OD_Cvp1 := (HTTPRIO1 as OdemeDurumKontrolIslemleri).odemeDurumunuKontrolEt(OD_gon1);
          except
            on E: Exception do Showmessage(E.Message,'','','info');
          end;

          showmessage(od_cvp1.sonucMesaji +',' + OD_cvp1.sonucKodu + ',' + OD_cvp1.durum + floattostr(OD_cvp1.toplamTutar) ,'','','info');

        (*  sql := 'update behand set Takýpsend = ' + #39 + OD_cvp1.durum + #39
                 + ' where takýpNo = ' + #39 + gridDetayGonderilmemis.Cells[1,gridDetayGonderilmemis.Row] + #39;
          *)

          sql := 'update Gelisler set Takýpsend = ' + #39 + OD_cvp1.durum + #39 + ', TAKIPTUTAR = ' + FLOATTOSTR(OD_cvp1.toplamTutar)
               + ' where takýpNo = ' + #39 + gridDetayGonderilmemis.Cells[1,gridDetayGonderilmemis.Row] + #39;
          datalar.QueryExec(datalar.ADO_SQL2,sql);

       //   Gonderilmemiseat(gridDetayGonderilmemis.Cells[1,gridDetayGonderilmemis.Row]);
          gridDetayGonderilmis;

  end;
  }
end;

procedure TfrmGonderilmis.HataBilgisi1Click(Sender: TObject);
var
   x : integer;
begin
  (*
   if TControl(sender).ClassType = TMenuItem
   then
       x := TPopupMenu(sender).Tag
   else
       x := TsBitBtn(sender).Tag;
   Application.CreateForm(TfrmHataBilgisi, frmHataBilgisi);
   GorselAyar(frmHataBilgisi, frmAna.global_img_list4);
   frmHataBilgisi.Hatabilgisi(gridDetayGonderilmemis.Cells[1,gridDetayGonderilmemis.row] , x);

   frmHataBilgisi.Show;
   *)

end;

procedure TfrmGonderilmis.FaturaBilgisiKayt1Click(Sender: TObject);
var
   sql , takipNo: string;
   secili , x ,satir , i ,r : integer;
   ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  for r := 0 to gridGonderilmisler.Controller.SelectedRowCount - 1 do
  begin
    takipNo := gridGonderilmisler.DataController.GetValue(gridGonderilmisler.Controller.SelectedRows[r].RecordIndex, 1);
    sql := 'exec sp_kurumFaturaIsle_M3 ' + #39 + takipNo + #39 + ',' + txtTarih1.GetSQLValue + ',' + txttarih2.GetSQLValue;
    datalar.QuerySelect(ado, sql);
  end;
  ado.Free;
  gridDetayGonderilmis;




end;

procedure TfrmGonderilmis.SeiliOlanlarcmaleAt1Click(Sender: TObject);
begin

//  GorselAyar(frmFaturaIcmalBilgisi,frmTakipler.global_img_list4);
//  frmFaturaIcmalBilgisi.ShowModal;

end;

procedure TfrmGonderilmis.sBitBtn1Click(Sender: TObject);
begin
     gridDetayGonderilmis;
     gridDetayGonderilmemisGetir;
end;

procedure TfrmGonderilmis.FormCreate(Sender: TObject);
begin
  Menu := PopupMenu1;
 // Olustur(self,_TableName_,'Kimlik Doðrula',71,sqlInsert);
  cxPanel.Visible := false;
  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;
  SayfaCaption('','','','','');
end;

procedure TfrmGonderilmis.KilitKoy1Click(Sender: TObject);
var
   sql : string;
begin
(*
  if (TPopupMenu(sender).Tag = 10) or (TsBitBtn(sender).Tag = 10)
  then begin
     sql := 'update behand set XLOCK = 1 where TakýpNo = ' + #39 + gridDetayGonderilmemis.Cells[1,gridDetayGonderilmemis.row] + #39;
     datalar.QueryExec(datalar.ADO_SQL2,sql);
     ShowMessageSkin('Hasta Ýþlem Kartý Kilitlendi','','','info');
  end;

  if (TPopupMenu(sender).Tag = 11)  or (TsBitBtn(sender).Tag = 11)
  then begin
     sql := 'update behand set XLOCK = 0 where TakýpNo = ' + #39 + gridDetayGonderilmemis.Cells[1,gridDetayGonderilmemis.row] + #39;
     datalar.QueryExec(datalar.ADO_SQL2,sql);
     ShowMessageSkin('Hasta Ýþlem Kartý Kilit Kaldýrýldý','','','info');
  end;

     gridDetayGonderilmis;
  *)
end;

procedure TfrmGonderilmis.txtTarih1Exit(Sender: TObject);
begin
   try
    txttarih2.text := datetostr(ayliktarih(strtodate(txttarih1.text)));
   except
   end;
end;


procedure TfrmGonderilmis.GnderilmemilereAt1Click(Sender: TObject);
var
  i , j , secilisatiradet : integer;
  sql , secilisatirlar : string;
begin
  (*
   secilisatiradet  := secilisatirsayisi(gridDetayGonderilmemis,25);
   secilisatirlar := secilisatirbilgisi(gridDetayGonderilmemis,25,0);
   sql := 'select datavalue from strtotable('+ #39 + secilisatirlar + #39+''+','+ ''',''' +')';
   datalar.ADO_SQL.Close;
   datalar.ADO_SQL.SQL.Clear;
   datalar.QuerySelect(datalar.ADO_SQL,sql);

   if mryes = ShowMessageSkin('Geri Alma Ýþlemi Baþlayacak','','','msg')
   then begin

      datalar.ADO_SQL.First;

      for i := 1 to secilisatiradet  do
      begin
          j := datalar.ADO_SQL.fieldbyname('datavalue').AsInteger;
          gridDetayGonderilmemis.Row := j;
          //if gridDetay.Cells[25,i] = 'T' then
          Gonderilmemiseat(gridDetayGonderilmemis.Cells[1,j]);
          DATALAR.ADO_SQL.next;
      end;

   end;

   gridDetayGonderilmis;
   *)

end;

procedure TfrmGonderilmis.txtAylarClick(Sender: TObject);
begin
    txttarih1.date := ayaditoay(txtAylar.Text);
    txttarih2.date := ayliktarih2(txtAylar.Text);
end;

procedure TfrmGonderilmis.gridDetayGonderilmemisDblClick(Sender: TObject);
begin
 (*
    Application.CreateForm(TfrmSeanslar, frmSeanslar);
    GorselAyar(frmSeanslar,global_img_list4);
    frmSeanslar.HastaBil(gridDetayGonderilmemis.Cells[2,gridDetayGonderilmemis.Row],
                         gridDetayGonderilmemis.Cells[9,gridDetayGonderilmemis.Row] ,
                         gridDetayGonderilmemis.Cells[3,gridDetayGonderilmemis.Row]+' '+gridDetayGonderilmemis.Cells[4,gridDetayGonderilmemis.Row] ,
                         '','','');

    frmSeanslar.SeansGetir(gridDetayGonderilmemis.Cells[2,gridDetayGonderilmemis.Row] ,
                           gridDetayGonderilmemis.Cells[9,gridDetayGonderilmemis.Row]);
    frmSeanslar.KaydetDisable;                       
    frmSeanslar.ShowModal;
    frmSeanslar.Release;
    frmSeanslar := nil;
    *)

end;

procedure TfrmGonderilmis.sBitBtn9Click(Sender: TObject);
begin
   (*
       if FindComponent('frmHastaKarti') <> nil
       then begin
                 frmHastaKarti.KartGetir(gridDetayGonderilmemis.Cells[3,gridDetayGonderilmemis.row]);
                 frmHastaKarti.Gelisler(gridDetayGonderilmemis.Cells[3,gridDetayGonderilmemis.row]);
                 frmHastaKarti.Durum(1);
                 frmHastaKarti.btnGuncelle.Enabled := True;
                 //Disabled(frmHastaKarti);
                 frmHastaKarti.Disable;
       end else
       begin

             frmHastaKarti := TfrmHastaKarti.Create(self);
             frmHastaKarti.Top := 2;
             frmHastaKarti.Left := 2;


             frmHastaKarti.KartGetir(gridDetayGonderilmemis.Cells[3,gridDetayGonderilmemis.row]);
             frmHastaKarti.Gelisler(gridDetayGonderilmemis.Cells[3,gridDetayGonderilmemis.row]);
             frmHastaKarti.Durum(1);
             frmHastaKarti.btnGuncelle.Enabled := True;
           //  Disabled(frmHastaKarti);
             frmHastaKarti.Disable;
       end;
       *)

end;

procedure TfrmGonderilmis.Kaydet1Click(Sender: TObject);
var
   sql : string;
   HastaBil : TTakipBilgisi;
begin
 (*
      txtinfo.Caption := 'Takip Bilgisi Okunuyor , Lütfen Bekleyiniz !';
      Application.ProcessMessages;


      if KabulOku(gridDetayGonderilmemis.Cells[2,gridDetayGonderilmemis.row],
               HastaBil , datalar.takip,1) = '0000'
      Then Begin
          Application.CreateForm(TfrmTakipBilgisiOku, frmTakipBilgisiOku);
          GorselAyar(frmTakipBilgisiOku,datalar.global_img_list4);

          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Takip No       :  ' + HastaBil.Takip);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Ýlk Takip No   :  ' + HastaBil.ilkTakip);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Takip Tarihi   :  ' + HastaBil.MuayeneTarihi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Kayýt Tarihi   :  ' + HastaBil.KayitTarihi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Hasta Adý      :  ' + HastaBil.HastaAdi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Hasta Kimlik No:  ' + HastaBil.TcKimlik);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Baþvuru No     :  ' + HastaBil.BasvuruNo);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Takip Tipi     :  ' + HastaBil.TakipTipi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Tedavi Türü    :  ' + HastaBil.tedaviTuru);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Tedavi Tipi    :  ' + HastaBil.tedaviTipi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('ProvizYon Tipi :  ' + HastaBil.provizyonTipi);

          datalar.Bilgi.TakipNo := HastaBil.Takip;
          datalar.Bilgi.BasvuruNo := HastaBil.BasvuruNo;

          DatalariBosalt;

          frmTakipBilgisiOku.ShowModal;
          frmTakipBilgisiOku := nil;

      End;
      
      txtinfo.Caption := '';
        *)
end;

end.
