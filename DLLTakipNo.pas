unit DLLTakipNo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,KadirLabel,GirisUnit,KadirType,Kadir,KadirMedula3,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, cxDropDownEdit, cxImageComboBox,
  cxTextEdit, cxMaskEdit, cxCalendar, cxButtonEdit, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  Vcl.Buttons, cxGroupBox, Menus, cxButtons , adoDb,dxLayoutContainer, dxLayoutControl;

type
  TfrmTakipNo = class(TGirisForm)
    txtTakipTuru: TcxImageComboBox;
    txtTarih: TcxDateEditKadir;
    txtProvizyonTur: TcxImageComboBox;
    DURUM: TcxImageComboBox;
    txtTcKimlikNo: TcxTextEditKadir;
    pnlYardimHakki: TcxGroupBox;
    cxGrid6: TcxGrid;
    gridYardimHakki: TcxGridDBTableView;
    gridYardimHakkiRecId: TcxGridDBColumn;
    gridYardimHakkiid: TcxGridDBColumn;
    gridYardimHakkikisiNo: TcxGridDBColumn;
    gridYardimHakkiTarih: TcxGridDBColumn;
    gridYardimHakkiodemeTuru: TcxGridDBColumn;
    gridYardimHakkitedaviKapsami: TcxGridDBColumn;
    gridYardimHakkiformulAdi: TcxGridDBColumn;
    gridYardimHakkiaciklama: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    btnYardimHakki: TcxButtonKadir;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    akipAl1: TMenuItem;
    txtilkTakipNo: TcxTextEditKadir;
    txtAdi: TcxTextEditKadir;
    txtDogumTarihi: TcxTextEditKadir;
    txtdonenSigortaTur: TcxTextEditKadir;
    txtdonendevKurum: TcxTextEditKadir;
    Kapat1: TMenuItem;
    txtDevredilenKurum: TcxImageComboKadir;
    txtYUPASS: TcxTextEditKadir;
    procedure FormCreate(Sender: TObject);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnYardimHakkiClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure TakipAl;
    procedure cxKaydetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'Takipler';
      formGenislik = 410;
      formYukseklik = 300;
var
  frmTakipNo: TfrmTakipNo;

implementation
      uses Data_Modul,AnaUnit, HastaKart;
{$R *.dfm}

function TFrmTakipNo.Init(Sender: TObject) : Boolean;
begin
   txtTarih.Date := tarihyap(_provizyonTarihi_);
   DURUM.EditValue := _SigortaliTur_;
   txtDevredilenKurum.EditValue := _DevKurum_;
   txtTcKimlikNo.EditValue := _TC_;
   txtYUPASS.EditValue := _Yupass_;

  if _DevKurum_ = '99' then
  begin
    TdxLayoutItem(FindComponent('dxLAtxtYUPASS')).Visible := True;
    txtYUPASS.Visible := True;
  end
  else
  begin
    TdxLayoutItem(FindComponent('dxLAtxtYUPASS')).Visible := false;
    txtYUPASS.Visible := false;
  end;

end;
procedure TFrmTakipNo.TakipAl;
var
  Sql ,s1,s2 , d  , sonuckodu , takip: string;
  ado : TADOQuery;

begin
          pnlDurum.Visible := True;
          Application.ProcessMessages;

          datalar.Bilgi.tckimlikNo := '';
          datalar.Bilgi.Durum := '';
          datalar.Bilgi.devredilenKurum := '';
          datalar.Bilgi.ilkTakip := '';
          datalar.Bilgi.TakipNo := '';

          datalar.Bilgi.tckimlikNo := txtTcKimlikNo.Text;
          datalar.Bilgi.Durum := DURUM.EditingValue; //copy(txtSigortaliTur.text,1,1);
          datalar.Bilgi.devredilenKurum := txtDevredilenKurum.EditingValue;// trim(copy(txtDevredilenKurum.Text,1,2));
          datalar.Bilgi.provizyonTuru := copy(txtProvizyonTur.Text,1,1);
          datalar.Bilgi.tedaviTuru := 'G';
          datalar.Bilgi.TakipTuru := 'N';
          datalar.Bilgi.tedaviTipi := '1';
          datalar.Bilgi.BransKodu := KurumBransi;
          datalar.Bilgi.ProvizyonTarihi := txtTarih.Text;
          datalar.Bilgi.ilkTakip := txtilkTakipNo.Text;
          datalar.Bilgi.bebekSira := '';
          datalar.Bilgi.BebekDTarihi := '';
      //    datalar.Bilgi.yakinlikKodu := copy(txtYakinlik.Text,1,3);
      //    if txtSevkEdenTesis.Text <>  then
      //    datalar.Bilgi.sevkedenTesisKodu :=  txtSevkEdenTesis.Value;

          if not datalar.memData_yurtDisiYardimHakki.Eof
          then
           datalar.Bilgi.id :=  datalar.memData_yurtDisiYardimHakki.FieldByName('id').AsInteger  //ClientDataSet1.FieldByName('id').AsInteger
          else
          datalar.Bilgi.id := 0;

      //    if TsBitBtn(sender).Tag = 0
      //    Then
      //        sonuckodu := TakipAl_3(datalar.bilgi,datalar.HastaKabul,True)
      //    Else
              sonuckodu := TakipAl_3KimlikDorulama(datalar.bilgi,datalar.HastaKabul,True);


          if sonuckodu = '0000'
          then begin

              txtAdi.Text := datalar.Bilgi.Adi;
              txtDogumTarihi.Text := datalar.Bilgi.DTarihi;
              frmTakipNo._TakipNo_ := datalar.Bilgi.TakipNo;
              frmTakipNo._BasvuruNo_ := datalar.Bilgi.BasvuruNo;
              frmTakipNo._SigortaliTur_ := datalar.Bilgi.Durum;
              frmTakipNo._DevKurum_ := datalar.Bilgi.devredilenKurum;

              txtdonenSigortaTur.Text := datalar.Bilgi.Durum;
              txtdonendevKurum.Text := datalar.Bilgi.devredilenKurum;


              if mryes = ShowMessageSkin(datalar.Bilgi.Adi + ' Adlý Hasta Kabul Edildi','Sistem Kaydý Gerçekleþtirilsin mi ?',
                                                             'Sigortalý Turu : ' + txtdonenSigortaTur.Text + '  Devredilen Kurum : ' + txtdonendevKurum.Text,'msg')
              then begin
                   ado := TADOQuery.Create(nil);
                   ado.Connection := datalar.ADOConnection2;

                   sql := 'Update Gelisler set TakýpNo = ' + #39 + datalar.Bilgi.TakipNo + #39 + ',BHDAT = ' + #39 + tarih(txtTarih.Text) + #39 +
                          ',BasvuruNo = ' + QuotedStr(datalar.Bilgi.BasvuruNo) + ',ilkTakipNo = ' + QuotedStr(datalar.Bilgi.ilkTakip) +
                          ' where DosyaNo = ' + #39 + frmTakipNo._dosyaNO_ + #39 + ' and GelisNo = ' + #39 + frmTakipNo._gelisNO_ +#39;
                   datalar.QueryExec(ado,sql);

                   if not datalar.Bilgi.id = 0
                   then begin
                     sql := 'Update Gelisler set yupass = ' + QuotedStr(txtTcKimlikNo.Text) + ',' +
                            ' yardimHakki = ' + inttostr(datalar.Bilgi.id) +
                            ' where DosyaNo = ' + #39 + frmTakipNo._dosyaNO_ + #39 + ' and GelisNo = ' + #39 + frmTakipNo._gelisNO_ +#39;
                     datalar.QueryExec(ado,sql);
                   end;


                   datalar.ADO_SQL3.Close;
                   datalar.ADO_SQL3.SQL.Clear;
                   sql := 'update hareketler set TARIH = ' + #39 + tarih(txtTarih.Text) + #39 +
                          ' where  dosyaNo = ' + QuotedStr(frmTakipNo._dosyaNO_) + ' and gelisNo = ' + frmTakipNo._gelisNO_;
                   datalar.QueryExec(ado,sql);

                   if txtdonendevKurum.Text <> ''
                   Then
                   if (txtdonenSigortaTur.Text  <> trim(copy(DURUM.Text,1,1))) or
                      (txtdonendevKurum.Text <> trim(copy(txtDevredilenKurum.Text,1,2)))
                   Then Begin
                       sql := 'update hastakart set DURUM = ' + QuotedStr(txtdonenSigortaTur.Text) +
                              ',KurumTip = ' + QuotedStr(txtdonendevKurum.Text) +
                              ' where dosyaNO = ' + QuotedStr(frmTakipNo._dosyaNO_);
                        datalar.QueryExec(ado,sql);
                       // frmHastaKart.KartGetir(frmTakipNo._dosyaNO_);
                   End;
                   ado.Free;

                   frmHastaKart.Gelisler(frmTakipNo._dosyaNO_);
                   datalar.Bilgi.TakipNo := '';

                //   frmHastaKarti.Gelisler(txtKnr.Text);
                   Close;

                   (*
                   if ZorunluTel('GSSDONEN') = true
                   then begin

                           if (txtAdi.Text = Trim(PrvCvp1.hastaBilgileri.ad)) or (txtSoyadi.Text = Trim(PrvCvp1.hastaBilgileri.soyad))
                           then begin
                                    if mrYes = ShowMessageSkin('Hasta Adý ,Soyadý Bilgisi Tutmuyor','Sistemdeki Kayýt ile Dönen Deðer','Deðiþtirilsin mi?','msg')
                                    then begin
                                              datalar.ADO_SQL1.close;
                                              datalar.ADO_SQL1.SQL.Clear;
                                              sql := 'Update HastaKart set HASTAADI = ' + #39 + Trim(PrvCvp1.hastaBilgileri.ad) + #39 +
                                                     ',HASTASOYADI = ' + #39 + Trim(PrvCvp1.hastaBilgileri.soyad) + #39 +
                                                     ' where dosyaNo = ' + #39 + txtKnr.Text + #39;
                                              datalar.QueryExec(datalar.ADO_SQL1,sql);
                                              ShowMessageSkin('Hasta Bilgisi Dönen deðerle Deðiþtirildi',,,'info');
                                    end;
                           end;
                   end;
                   *)


              end else
              begin
                   TakipSil_3(datalar.bilgi.takipno,datalar.HastaKabul);
              end; // Showmessage end

          end // sonuc = '0000' end
          Else ShowMessageSkin(sonuckodu,'','','info');

          pnlDurum.Visible := false;



end;

procedure TfrmTakipNo.btnYardimHakkiClick(Sender: TObject);
begin
  if txtYUPASS.Text <> '' then
   YurtDisiYardimHakkiGetirSorgula(txtYUPASS.Text,txtTarih.Text,datalar.yardimciIslem)
  else
   ShowMessageSkin('Yupass Bilgisi Girilmemiþ','Lütfen Yupass Bilgisini Girip ,tekrar deneyin','','info');
end;

procedure TfrmTakipNo.cxButtonCClick(Sender: TObject);
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  case Tcontrol(sender).Tag of
 -1 : begin
        TakipAl;
      end;

  end;


end;

procedure TfrmTakipNo.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
 inherited;
//
end;

procedure TfrmTakipNo.cxKaydetClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmTakipNo.FormCreate(Sender: TObject);
var
  index,i : integer;
  Ts,Ts1 : TStringList;
begin
  inherited;

  Height := formYukseklik;
  Width := formGenislik;

  TableName := _TableName_;
  cxPanel.Visible := false;

  Olustur(self,_TableName_,'Hasta Kabul',23);
  menu := PopupMenu1;

  setDataStringKontrol(self,txtTarih, 'txtTarih','Tarih',Kolon1,'pt',100);
  setDataStringKontrol(self,txtProvizyonTur, 'txtProvizyonTur','Provizyon Türü',Kolon1,'pt',80);
  setDataStringKontrol(self,txtTcKimlikNo, 'txtTcKimlikNo','TC Kimlik No',Kolon1,'tc',100);
  setDataStringKontrol(self,txtYUPASS, 'txtYUPASS','Yupass',Kolon1,'',100);


  setDataStringKontrol(self,DURUM, 'DURUM','Sigortalý Tipi',Kolon1,'drm',100);
  setDataStringKontrol(self,txtilkTakipNo, 'txtilkTakipNo','Ýlk Takip',Kolon1,'drm',80);

  txtDevredilenKurum.Conn := Datalar.ADOConnection2;
  txtDevredilenKurum.TableName := 'DevredilenKurum_Tnm';
  txtDevredilenKurum.ValueField := 'kod';
  txtDevredilenKurum.DisplayField := 'tanimi';
  txtDevredilenKurum.BosOlamaz := True;
  txtDevredilenKurum.Filter := '';
  OrtakEventAta(txtDevredilenKurum);
  setDataStringKontrol(self,txtDevredilenKurum,'txtDevredilenKurum','Dev. Kurum',kolon1,'',100);

  setDataStringKontrol(self,txtTakipTuru, 'txtTakipTuru','Takip Türü',Kolon1,'tc',80);

  setDataStringBLabel(self,'',Kolon1,'',100,'');



  setDataStringKontrol(self,txtAdi, 'txtAdi','Hasta Adý Soyadý',Sayfa2_Kolon1,'',150);
  setDataStringKontrol(self,txtDogumTarihi, 'txtDogumTarihi','Doðum Tarihi',Sayfa2_Kolon1,'',100);
  setDataStringKontrol(self,txtdonenSigortaTur, 'txtdonenSigortaTur','Sigortalý Türü',Sayfa2_Kolon1,'',100);
  setDataStringKontrol(self,txtdonendevKurum, 'txtdonendevKurum','Devrdilen Kurum',Sayfa2_Kolon1,'',100);

  setDataStringKontrol(self,pnlYardimHakki, 'pnlYardimHakki','',Sayfa3_Kolon1,'',360,200,alClient);

  SayfaCaption('Takip Parametreleri','Takip Sonuçlarý','Yurt Dýþý Yardým Hakký','','');
  //pnlYardimHakki.Align := alBottom;

 kolon2.Width := 0;
 Kolon3.Width := 0;

end;

procedure TfrmTakipNo.FormShow(Sender: TObject);
begin
   inherited;

 (*
   if _DevKurum_ = '99'
   then begin
     Height := 400;
     pnlYardimHakki. Height := 165;
   end
   else
   begin
    Height := 250;
    pnlYardimHakki.Height := 0;
   end;
   *)


end;

end.
