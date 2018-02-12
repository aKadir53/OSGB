unit HastaTetkikEkle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,KadirLabel,GirisUnit,KadirType,Kadir,TedaviKart,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, dxSkinscxPCPainter,Adodb,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxPC, cxGroupBox, cxImageComboBox,GetFormClass,
  cxDBLookupComboBox, cxLabel, cxMemo, cxLookupEdit, cxDBLookupEdit,
  cxCurrencyEdit, Vcl.StdCtrls, Vcl.Buttons, cxCheckBox,
  Vcl.ExtCtrls,  cxButtons, cxDBEdit, Menus;

type
  TfrmHastaTetkikEkle = class(TfrmTedaviBilgisi)
    PopupMenu1: TPopupMenu;
    cxIlacTedaviPanel: TcxGroupBox;
    N1: TMenuItem;
    ADO_Tetkikler: TADOQuery;
    DataSource8: TDataSource;
    frmHastaIlacTedavi_cxGroupBox1: TcxGroupBox;
    frmHastaIlacTedavi_cxPageControl1: TcxPageControl;
    cxTabTetkikler: TcxTabSheet;
    cxGrid15: TcxGrid;
    cxGridTetkikler: TcxGridDBTableView;
    cxGridLevel15: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    K: TcxStyle;
    Yesil_siyah: TcxStyle;
    Sari_Siyah: TcxStyle;
    cxGridTetkiklerdosyaNo: TcxGridDBColumn;
    cxGridTetkiklergelisNo: TcxGridDBColumn;
    cxGridTetkiklerSIRANO: TcxGridDBColumn;
    cxGridTetkiklerCODE: TcxGridDBColumn;
    cxGridTetkikleryapanDoktor: TcxGridDBColumn;
    cxGridTetkikleristeyenDoktor: TcxGridDBColumn;
    cxGridTetkiklerADET: TcxGridDBColumn;
    cxGridTetkiklerNAME1: TcxGridDBColumn;
    cxGridTetkiklerTARIH: TcxGridDBColumn;
    cxGridTetkiklerKurum: TcxGridDBColumn;
    cxGridTetkiklertip: TcxGridDBColumn;
    cxGridTetkikleronay: TcxGridDBColumn;
    SonucGiris: TcxGridDBColumn;
    SonucCikis: TcxGridDBColumn;
    cxGridTetkiklerislemSiraNo: TcxGridDBColumn;
    cxGridTetkiklerDate_Create: TcxGridDBColumn;
    cxGridTetkiklerislemSira: TcxGridDBColumn;
    cxGridTetkiklerKabulNo: TcxGridDBColumn;
    Aciklama: TcxGridDBColumn;
    cxGridTetkiklerISLENDIMI: TcxGridDBColumn;
    cxGridTetkiklerbutKodu: TcxGridDBColumn;
    cxGridTetkiklertanimi: TcxGridDBColumn;
    cxGridTetkikleruygulamaSuresi: TcxGridDBColumn;
    cxGridTetkikleruygulamaAdet: TcxGridDBColumn;
    cxGridTetkiklertip_1: TcxGridDBColumn;
    cxGridTetkiklerDurum: TcxGridDBColumn;
    cxGridTetkiklersira: TcxGridDBColumn;
    cxGridTetkiklerminD: TcxGridDBColumn;
    cxGridTetkiklermaxD: TcxGridDBColumn;
    cxGridTetkiklerSGKTip: TcxGridDBColumn;
    cxGridTetkiklerbirim: TcxGridDBColumn;
    cxGridTetkiklerislemKodu: TcxGridDBColumn;
    cxGridTetkiklerislemKoduC: TcxGridDBColumn;
    cxGridTetkiklerhepatitMarker: TcxGridDBColumn;
    cxGridTetkiklerSonucTip: TcxGridDBColumn;
    cxGridTetkiklerTurId: TcxGridDBColumn;
    cxGridTetkiklergrupKodu: TcxGridDBColumn;
    cxGridTetkiklergrupKodu_Centro: TcxGridDBColumn;
    cxGridTetkiklerColumn1: TcxGridDBColumn;
    T2: TMenuItem;
    T3: TMenuItem;
    K1: TMenuItem;
    cxTabTetkik: TcxTabControl;
    ADO_TetkikDegerlendir: TADOQuery;
    DataSource1: TDataSource;
    cxPanelHesapla: TcxGroupBox;
    txtUrr: TcxDBTextEdit;
    Label2: TLabel;
    txtKtv: TcxDBTextEdit;
    Label1: TLabel;
    txtCaXP: TcxDBTextEdit;
    Label3: TLabel;
    txtDuzCa: TcxDBTextEdit;
    Label4: TLabel;
    ktv: TcxButtonKadir;
    spKtv: TcxButtonKadir;
    cxBtnHesapKaydet: TcxButtonKadir;
    K2: TMenuItem;
    T4: TMenuItem;
    T5: TMenuItem;
    Tetkikler: TListeAc;
    cxGridTetkiklerColumn2: TcxGridDBColumn;
    cxGridTetkiklerColumn3: TcxGridDBColumn;
    T6: TMenuItem;
    T1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ItemClick(Sender: TObject);

    procedure SubItemClick(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);
    procedure cxGridIlacTedaviPlaniStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure GrupTetkikEkle(grup : integer);
    procedure TetkikEkle;
    procedure TetkikSil;
    procedure Sonuclar;
    procedure cxTabTetkikChange(Sender: TObject);
    procedure ktvClick(Sender: TObject);
    procedure spKtvClick(Sender: TObject);
    procedure cxBtnHesapKaydetClick(Sender: TObject);
    procedure PopupMenuItemEkle(MenuCaptionField,MenuTagField,sql : string;SubMenu : TMenuItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const _TableName_ = 'Hareketler';
      formGenislik = 950;
      formYukseklik = 600;
var
  frmHastaTetkikEkle: TfrmHastaTetkikEkle;


implementation
      uses Data_Modul,AnaUnit,LAbsonucGir, UmitTrans;
{$R *.dfm}

procedure TfrmHastaTetkikEkle.SubItemClick(Sender: TObject);
begin
 GrupTetkikEkle(TMenuItem(sender).Tag);
end;

procedure TfrmHastaTetkikEkle.PopupMenuItemEkle(MenuCaptionField,MenuTagField,Sql : string;SubMenu : TMenuItem);
var
  Ado : TADOQuery;
  caption : string;
  tag : integer;
  item : TMenuItem;
begin
  Ado := TADOQuery.Create(nil);
  try
    datalar.QuerySelect(ado,sql);
    SubMenu.Clear;
    while not ado.Eof do
    begin
      caption := Ado.FieldByName(MenuCaptionField).AsString;
      tag := Ado.FieldByName(MenuTagField).AsInteger;
      item := TMenuItem.Create(SubMenu);
      item.Caption := caption;
      item.Tag := tag;
      item.OnClick := SubItemClick;
      SubMenu.Add(item);
      ado.Next;
    end;
  finally
    ado.Free;
  end;
end;

procedure TfrmHastaTetkikEkle.cxKaydetClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmHastaTetkikEkle.cxTabTetkikChange(Sender: TObject);
begin
  inherited;
  sonuclar;
(*
  case cxTabTetkik.TabIndex of
  1 : begin
         SonucGiris.Visible := false;
         SonucCikis.Visible := false;
         Aciklama.Width := 230;
      end;
  0 : begin
         SonucGiris.Visible := true;
         SonucCikis.Visible := true;
         Aciklama.Width := 150;
      end;

  end;
  *)
end;

procedure TfrmHastaTetkikEkle.Sonuclar;
var
 F : string;
begin
   case cxTabTetkik.TabIndex  of
    0 : F := '';
    1 : F := '02';
    2 : F := '03';
    3 : F := '04';
   end;

   sql := 'select h.*,t.NAME1 from hareketler h join HIZMET t on t.code = h.code ' +
          ' where dosyaNo = ' + #39 + _dosyaNo_ + #39 +
          ' and gelisNo = ' + _gelisNo_ + ' and t.TANIM like ' + QuotedStr('%'+F+'%') + // sql1 +
          ' order by h.TARIH,h.SIRANO ';
   datalar.QuerySelect(ADO_Tetkikler,sql);

(*
   sql := 'select * from labsonucdegerlendirme where dosyaNo = ' + #39 + _dosyaNo_ + #39 +
          ' and gelisNo = ' + _gelisNo_;
   datalar.QuerySelect(ADO_TetkikDegerlendir,sql);
   *)
end;

procedure TfrmHastaTetkikEkle.TetkikSil;
var
  sql,sira : string;
  ado : TADOQuery;
  bsucc: Boolean;
begin
  sira := ADO_Tetkikler.FieldByName('SIRANO').AsString;
  try
    ado := TADOQuery.Create(nil);
    try
      if mrYES = ShowMessageSkin('Tekik ve Sonuç Bilgisi Silinecek Emin misiniz?','','','msg')
      then begin
        bsucc := False;
        BeginTrans (datalar.ADOConnection2);
        try
          sql :=
              //  'if not exists(select * from LaboratuvarKabul where hareketlerSira = ' + sira + ')' +
           //     'begin '+
                ' delete from laboratuvar_sonuc where hareketSira = ' + sira +
                ' delete from LaboratuvarKabul where hareketlerSira = ' + sira +
                ' delete from hareketler where SIRANO = ' + sira;

           //     '  select @@rowcount ' +
            //    'end '+
            //    'else ' +
            //    'begin '+
            //    '  select -1 ' +
            //    'end';
          datalar.QueryExec(ado,sql);
          bsucc := True;
        finally
          if bsucc then
            CommitTrans (datalar.ADOConnection2)
           else
            RollbackTrans (datalar.ADOConnection2);
        end;
      end;
    finally
      ado.Free;
    end;
  except on e : Exception do
   begin
      ShowMessageSkin(e.Message,'','','info');
   end;
  end;
  AdoQueryActiveYenile(ADO_Tetkikler);

end;

procedure TfrmHastaTetkikEkle.TetkikEkle;
var
  List : ArrayListeSecimler;
  F : string;
begin

   case cxTabTetkik.TabIndex  of
    0 : F := '';
    1 : F := '02';
    2 : F := '03';
    3 : F := '04';
   end;

   Tetkikler.SkinName := AnaForm.dxSkinController1.SkinName;

   Tetkikler.Table := 'exec sp_KurumHizmetFiyat ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(F);

   List := Tetkikler.ListeGetir;
   if length(List) > 0 then
   begin
     ADO_Tetkikler.Append;
     ADO_Tetkikler.FieldByName('dosyaNo').AsString := _dosyaNO_;
     ADO_Tetkikler.FieldByName('gelisNo').AsString := _gelisNO_;
     ADO_Tetkikler.FieldByName('TARIH').AsString := NoktasizTarih(_provizyonTarihi_);
     ADO_Tetkikler.FieldByName('isteyenDoktor').AsString := _Doktor_;
     ADO_Tetkikler.FieldByName('adet').AsInteger := 1;
     ADO_Tetkikler.FieldByName('code').AsString := List[0].kolon1;
     ADO_Tetkikler.FieldByName('name1').AsString := List[0].kolon2;
     ADO_Tetkikler.FieldByName('tip').AsString := List[0].kolon3;
     ADO_Tetkikler.FieldByName('SATISF').AsString := List[0].kolon4;

     ADO_Tetkikler.Post;
   end;
end;

procedure TfrmHastaTetkikEkle.GrupTetkikEkle(grup : integer);
var
  sql : string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    if mrYES = ShowMessageSkin('Grup Tetkik Ýþlenecek','','','msg')
    Then Begin
      try
        sql := 'exec sp_hastaLabIsle ' + QuotedStr(_dosyaNo_) + ',' +
                _gelisNo_ + ',' + QuotedStr(tarihal(date())) + ',' + inttostr(grup);
        datalar.QueryExec(ado,sql);
        AdoQueryActiveYenile(ADO_Tetkikler);
      except on e : Exception do
         begin
             ShowMessageSkin('Hata :' + e.Message,'','','info');
             exit;
         end;
      end;
      ShowMessageSkin('Hizmetler Eklendi','','','info');
    End;
  finally
    ado.Free;
  end;
end;


procedure TfrmHastaTetkikEkle.ItemClick(Sender: TObject);
var
  ado : TADOQuery;
  kabulNo ,code,grup,name,sira : string;
  DataSource : TDataSource;
begin
    case TMenuItem(sender).Tag of
   -1,-3,-6,-12 : begin
                    GrupTetkikEkle(TMenuItem(sender).Tag);
                  end;
    -2 : begin
          TetkikSil;
         end;
    -4 : begin
           Kantetkikleri(_dosyaNO_,datalar.HastaBil.Tarih);
         end;
    -5 : begin

         end;
    -20 : begin
            //
          end;
    -21 : begin
           (*
            GirisRecord.F_dosyaNO_ := self._dosyaNO_;
            GirisRecord.F_gelisNO_ := self._gelisNO_;
            GirisRecord.F_HastaAdSoyad_ := self._HastaAdSoyad_;
            F := FormINIT(TagfrmKanTetkikTakipDegerlendir,GirisRecord,ikHayir,'Giriþ');
            if F <> nil then F.show;
            *)

            //KanTetkikleriDegerlendir(_dosyaNO_,_gelisNO_);
          end;
    -22 : begin
           TetkikEkle;
          end;

    -30 : begin
            ado := TADOQuery.Create(nil);
            try
              ado.Connection := datalar.ADOConnection2;

              code := ADO_Tetkikler.FieldByName('CODE').AsString;
              name := ADO_Tetkikler.FieldByName('NAME1').AsString;
              sira := ADO_Tetkikler.fieldbyname('SIRANO').AsString;

              sql := 'select * from LaboratuvarKabul where hareketlerSira = ' + sira;
              datalar.QuerySelect(ado,sql);
              if ado.Eof
              then begin
                  sql := ' exec sp_YeniLabKabulNoAl ';
                  datalar.QuerySelect(ado,sql);
                  kabulNO := ado.Fields[0].AsString;
                  ado.Close;

                  sql := 'exec sp_YeniLabKabul ' +
                          #39 + _dosyaNO_ + #39 + ',' +
                          _gelisNO_ + ',' +
                          #39 + code + #39 + ',' +
                          #39 + '' + #39 + ',' +
                          #39 + tarihal(date()) + #39 + ',' +
                          #39 + datalar._username + #39 + ',' +
                          #39 + '' + #39 + ',' +
                          #39 + '' + #39 + ',' +
                          #39 + name + #39 + ',' +
                          #39 + sira + #39 + ',' +
                          #39 + kabulNo + #39;

                   datalar.QueryExec(ado,sql);


                  sql := 'exec sp_labSonucGir ' + #39 + tarihal(date()) + #39 + ',' +
                         #39 + _dosyaNo_ + #39 + ',' +
                         #39 + code + #39 + ',' +
                         #39 + '1' + #39 + ',' +
                         #39 + 'H' + #39;

                  datalar.QueryExec(ado,sql);
              end;

             sql := 'select parametre_sira,parametreadi,parametreadi1,parametrebirim ,normal1,normal2,ref_aciklama,sonuc1,sonuc2,sonuc3,' +
                    ' aciklama,tip,testno,lk.OZELKOD,g.SLT ' +
                    ' from laboratuvar_sonuc ls ' +
                    ' left join HIZMET lk on lk.code = ls.testno ' +
                    ' left join lab_gruplari g on g.SLB = lk.OZELKOD ' +
                    ' where ls.dosyaNo = ' + QuotedStr(_dosyaNo_) + ' and ls.gelisno = ' + _gelisNO_ +
                  //  ' and OZELKOD = ' + QuotedStr(_grup_) +
                    ' order by ls.code,parametre_sira ';

             datalar.QuerySelect(ado,sql);
             DataSource := TDataSource.Create(nil);
             try
               DataSource.DataSet := ado;
               Application.CreateForm(TfrmLabSonucGir, frmLabSonucGir);
               try
                 frmLabSonucGir.sonucGir.DataController.DataSource := DataSource;
                 frmLabSonucGir.ShowModal;
               finally
                 FreeAndNil(frmLabSonucGir);
               end;
             finally
               DataSource.Free;
             end;
            finally
              ado.Free;
            end;
          end;
    end;
end;

procedure TfrmHastaTetkikEkle.ktvClick(Sender: TObject);
var
   CaxP , G_ure , C_ure, demir , demirbaglama : double;
   ca , p , URR , Kt_VB: double;
   Ts : string;
begin

    try
      ADO_Tetkikler.Locate('CODE','901910',[]);
      Ca := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      ADO_Tetkikler.Locate('CODE','901260',[]);
      P := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      ADO_Tetkikler.Locate('CODE','901020',[]);
      demir := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      ADO_Tetkikler.Locate('CODE','901040',[]);
      demirbaglama := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      ADO_Tetkikler.Locate('CODE','901940',[]);
      G_ure := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      C_ure := ADO_Tetkikler.FieldByName('Cd').AsFloat;

      URR := strtofloat(FormatFloat('#.##',(1 - (C_ure/G_ure))));
      Kt_VB := strtofloat(FormatFloat('#.##',(0.031 * ((G_ure - C_ure)/G_ure*100) - 0.66)));


      CaxP := Ca * P;
      txtktv.Text := FloatToStr(kt_vb);
      txtUrr.Text := FloatToStr(URR*100);
      txtCaxP.Text := FloatToStr(CaxP);
      Ts := FloatToStr((demir / demirbaglama) * 100);

    except  on e : Exception do
     begin
        ShowMessageSkin(e.Message,'','','info');
     end;
    end;

end;

procedure TfrmHastaTetkikEkle.spKtvClick(Sender: TObject);
var
   CaxP , G_ure , C_ure , iKilo , kilofark , g,c ,Dca  ,alb : double;
   ca , p , URR , Kt_VB: double;
begin

    iKilo := idealKilo(_dosyaNo_);
    kilofark := SonSeansGCKilo(_dosyaNo_,_gelisNo_ , g,c);

    try
      ADO_Tetkikler.Locate('CODE','901910',[]);
      Ca := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      ADO_Tetkikler.Locate('CODE','901260',[]);
      P := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      ADO_Tetkikler.Locate('CODE','900210',[]);
      alb := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      ADO_Tetkikler.Locate('CODE','901940',[]);
      G_ure := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      C_ure := ADO_Tetkikler.FieldByName('Cd').AsFloat;


      URR := strtofloat(FormatFloat('#.##',(1 - (C_ure/G_ure))));

      Kt_VB := strtofloat(FormatFloat('#.##',

      -ln((C_ure/G_ure) - (0.008 * 4)) + ((4 - (3.5 * C_ure/G_ure)) * kilofark / iKilo) ));


      CaxP := Ca * P;
      txtktv.Text := FloatToStr(kt_vb);
      txtUrr.Text := FloatToStr(URR * 100);
      txtCaxP.Text := FloatToStr(CaxP);

      Dca := Ca + ((4 - alb) * 0.8);
      txtDuzCa.Text := FloatToStr(Dca);



    except on e : Exception do
     begin
         ShowMessageSkin(e.Message,'','','info');
     end;

    end;

end;

procedure TfrmHastaTetkikEkle.cxBtnHesapKaydetClick(Sender: TObject);
begin
  inherited;
      ADO_TetkikDegerlendir.Post;
end;

procedure TfrmHastaTetkikEkle.cxGridIlacTedaviPlaniStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
   if (ARecord.Values[1] = '0')
   Then begin
    AStyle := K;
   end;

   if (ARecord.Values[13] = '0')
   Then begin
    AStyle := Sari_Siyah;
   end;

   if (ARecord.Values[13] = '1')
   Then begin
    AStyle := Yesil_Siyah;
   end;
end;

procedure TfrmHastaTetkikEkle.FormCreate(Sender: TObject);
begin
 //cxYeni.Visible := false;
  inherited;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  TableName := _TableName_;
  cxPanel.Visible := false;
  SayfaCaption('Tetkik ve Hizmetler','','','','');
  Olustur(self,_TableName_,'Hasta Hizmetleri',23);

  PopupMenuItemEkle('Tanimi','Kod','select tanimi,Kod from TetkikIstemGrupSablon',T6);



  Menu := PopupMenu1;

  cxTabTetkik.Tabs[1].ImageIndex := 47;
  cxTabTetkik.Tabs[2].ImageIndex := 95;


end;

end.
