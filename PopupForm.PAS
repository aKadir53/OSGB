unit PopupForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, jpeg, kadir,kadirType,kadirLabel,
  dxGDIPlusClasses, cxGraphics, cxControls,GirisUnit,GetFormClass,StrUtils,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  Menus, cxButtons, cxGroupBox, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxCurrencyEdit, cxGridLevel, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxLabel, cxCheckBox,
  cxImageComboBox, cxMemo,Variants, cxCheckGroup;

type
  TfrmPopup = class(TGirisForm)
    cxPanelBottom: TcxGroupBox;
    btnYes: TcxButton;
    btnIptal: TcxButton;
    cxGroupDoktorlar: TcxGroupBox;
    cxLabel3: TcxLabel;
    cxGrid3: TcxGrid;
    doktorlarGrid: TcxGridDBTableView;
    doktorlarGridkod: TcxGridDBColumn;
    doktorlarGridADI: TcxGridDBColumn;
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
    peryotR: TcxImageComboBox;
    procedure txtDozClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtMsgEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SetDataTarih(Tarih : TDate);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxMemoPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    _islem_ :integer;
    _caption_ : string;
    _value_ : string;
    FGirisForm : TGirisForm;
    { Public declarations }
  end;

  Const
      formGenislik = 310;
      formYukseklik = 150;

var
  frmPopup: TfrmPopup;

implementation

uses message, data_modul;

{$R *.DFM}
var
   frmTop_ :word = 0;
   frmLeft_ :word = 0;
   mevcutTarih_,txtT_,ReceteTarih , _Tarih_ : TcxDateEditKadir;
   ImageCombo : TcxImageComboBox;
   MemoKalanLen : integer;
   textEdit : TcxTextEdit;
   _sahaDenetim_ : TSahaDenetimler;

procedure TfrmPopup.txtDozClick(Sender: TObject);
begin
   TcxCurrencyEdit(FindComponent('Doz1')).Value := strtoint(TcxCurrencyEdit(FindComponent('Doz')).Text[1]);
   TcxCurrencyEdit(FindComponent('Doz2')).Value := strtoint(TcxCurrencyEdit(FindComponent('Doz')).Text[3]);
end;

procedure TfrmPopup.SetDataTarih(Tarih : TDate);
var
   Year, Month, Day: Word;
begin
  mevcutTarih_.Date := Tarih;//TarihYap(Datalar.SeansBilgi.islemTarihi);
  DecodeDate(mevcutTarih_.Date, Year, Month, Day);
  txtT_.Properties.MinDate := EncodeDate(Year, Month, 1);
  txtT_.Properties.MaxDate := EncodeDate(Year, Month, MonthDays[IsLeapYear(Year), Month]);
  txtT_.Date := txtT_.Properties.MaxDate;//date;
end;

procedure TfrmPopup.FormClose(Sender: TObject; var Action: TCloseAction);
var
  xSahaDenetimVeri : TSahaDenetimler;
begin
  if frmPopup.ModalResult = mrYes
  then
  case frmPopup._islem_ of

      SeansTarihiUpdate   :
            begin
              if ModalResult = mrYes
              then
               datalar.SeansBilgi.islemTarihi := tarihal(txtT_.Date);
            end;
      SeansDoktorUpdate :
            begin
              datalar.SeansBilgi.drTescilNo := datalar.Ado_Doktorlar.FieldByName('kod').AsString;
            end;
      SeansInsert :
            begin
              datalar.SeansOlusturPrm.ilkSeansTarihi := TcxDateEdit(FindComponent('mevcutTarih_')).EditValue;
              datalar.SeansOlusturPrm.sonSeansTarihi := TcxDateEdit(FindComponent('txtT_')).EditValue;
              datalar.SeansOlusturPrm.gunSayisi := TcxCurrencyEdit(FindComponent('txtGun')).EditValue;
    //          datalar.SeansOlusturPrm.HizmetTip := TcxCheckBox(FindComponent('chkEv')).EditValue;
              datalar.SeansOlusturPrm.araSeans := TcxCheckBox(FindComponent('chkPlan')).EditValue;
              datalar.SeansOlusturPrm.SeansKodu := TcxImageComboKadir(FindComponent('HizmetKod')).EditValue;
            end;
      ReceteIlacEkle,ReceteIlacDuzenle :
            begin
              datalar.ReceteSatir.barkod := TcxTextEdit(FindComponent('code')).EditValue;
              datalar.ReceteSatir.barkodadi := TcxLabel(FindComponent('Label'+'code')).Caption;
              datalar.ReceteSatir.kutuadet := TcxCurrencyEdit(FindComponent('adet')).EditValue;
              datalar.ReceteSatir.peryot := TcxComboBox(FindComponent('peryotR')).EditValue;
              datalar.ReceteSatir.peryotAdet := TcxCurrencyEdit(FindComponent('Padet')).EditValue;
              datalar.ReceteSatir.doz := TcxTextEdit(FindComponent('doz')).EditValue;
              datalar.ReceteSatir.doz1 := TcxCurrencyEdit(FindComponent('doz1')).EditValue;
              datalar.ReceteSatir.doz2 := TcxCurrencyEdit(FindComponent('doz2')).EditValue;
              datalar.ReceteSatir.kulyol := TcxTextEdit(FindComponent('kulYol')).EditValue;
            end;
      ReceteAckEkle,ReceteAckDuzenle,ReceteIlacAckDuzenle,ReceteIlacAckEkle :
            begin
              datalar.ReceteAciklama.ackKod := StringReplace(trim(copy(TcxComboBox(FindComponent('ackKodu')).EditValue,1,2)),'-','',[rfReplaceAll]);
              datalar.ReceteAciklama.ack := TcxTextEdit(FindComponent('ack')).EditValue;
            end;
      ReceteYeni,ReceteDuzenle :
            begin
              datalar.YeniRecete.Tarih := TcxDateEdit(FindComponent('ReceteTarih')).Text;
              datalar.YeniRecete.ReceteTuru := TcxImageComboBox(FindComponent('ReceteTuru')).EditValue;
              datalar.YeniRecete.ReceteAltTuru := TcxImageComboBox(FindComponent('ReceteAltTuru')).EditValue;
              datalar.YeniRecete.doktor := TcxTextEditKadir(FindComponent('kod')).EditValue;
              datalar.YeniRecete.doktorAdi := TcxLabel(FindComponent('Labelkod')).Caption;
              datalar.YeniRecete.protokolNo := TcxTextEditKadir(FindComponent('ProtokolNo')).EditValue;
            end;
      TeleEkgDuzenle :
            begin
              datalar.TeleEkg.Tarih := TcxDateEdit(FindComponent('Tarih')).Date;
              datalar.TeleEkg.ack := TcxTextEdit(FindComponent('islemAciklamasi')).Text;
            end;
      gdgelisDuzenle :
            begin
              datalar.GelisDuzenleRecord.TedaviTuru := TcxImageComboKadir(FindComponent('TEDAVITURU')).EditValue;
              datalar.GelisDuzenleRecord.TakipNo := TcxTextEdit(FindComponent('TakipNo')).EditValue;
              datalar.GelisDuzenleRecord.GirisTarihi := TcxTextEdit(FindComponent('GirisTarihi')).EditValue;
              datalar.GelisDuzenleRecord.doktor := TcxImageComboKadir(FindComponent('Doktor')).EditValue;
              datalar.GelisDuzenleRecord.BransKodu := TcxTextEdit(FindComponent('BransKodu')).EditValue;
              datalar.GelisDuzenleRecord.ProtokolNo := TcxTextEdit(FindComponent('protokolNo')).EditValue;
            end;
       gdgelisAc :
            begin
              datalar.GelisDuzenleRecord.GirisTarihi := TcxTextEdit(FindComponent('GirisTarihi')).EditValue;
              datalar.GelisDuzenleRecord.TedaviTuru := TcxImageComboKadir(FindComponent('TEDAVITURU')).EditValue;
              datalar.GelisDuzenleRecord.ProtokolNo := TcxTextEdit(FindComponent('protokolNo')).EditValue;
              datalar.GelisDuzenleRecord.ProtokolNoGuncelle := TcxCheckBox(FindComponent('ProtokolNoGuncelle')).EditValue;
              if Assigned(FindComponent('Doktor'))
              Then
               datalar.doktorKodu := TcxImageComboKadir(FindComponent('Doktor')).EditValue;
            end;
       gdPeryodikgelisAc :
            begin
              datalar.GelisDuzenleRecord.GirisTarihi := TcxTextEdit(FindComponent('GirisTarihi')).EditValue;
              datalar.GelisDuzenleRecord.TedaviTuru := TcxImageComboKadir(FindComponent('TEDAVITURU')).EditValue;

              if Assigned(FindComponent('Doktor'))
              Then
               datalar.doktorKodu := TcxImageComboKadir(FindComponent('Doktor')).EditValue;

               datalar.GelisDuzenleRecord.Tetkikler := TcxCheckGroupKadir(FindComponent('tetkikIstemGrupSablon')).getItemCheckString;

            end;

       PrgSifre :
           begin
             if TcxTextEdit(FindComponent('MevcutSifre')).EditValue <> DATALAR.usersifre then
             begin
               ShowMessageSkin('Mevcut þifre hatalý!','', '', 'info');
               Action := caNone;
             end
             else if TcxTextEdit(FindComponent('YeniSifre')).EditValue <>
               TcxTextEdit(FindComponent('YeniSifreTekrar')).EditValue then
             begin
               ShowMessageSkin('Yeni þifre ve tekrar giriþleri uyumsuz', '', '', 'info');
               Action := caNone;
             end;
             datalar.SifreDegistir.Sifre := TcxTextEdit(FindComponent('YeniSifre')).EditValue;
           end;
       yeniGozlem, GozlemDuzenle :
           begin
             xSahaDenetimVeri.DenetimTarihi := TcxTextEdit(FindComponent('DenetimTarihi')).EditValue;
             xSahaDenetimVeri.FirmaKod := TcxTextEdit(FindComponent('FirmaKodu')).EditValue;
             xSahaDenetimVeri.SubeKod := TcxTextEdit(FindComponent('SubeKod')).EditValue;
             xSahaDenetimVeri.KullaniciAdi := TcxTextEdit(FindComponent('Kullanici')).EditValue;
             xSahaDenetimVeri.DenetimDefterNo := TcxTextEdit(FindComponent('DenetimDefterNo')).EditValue;
             xSahaDenetimVeri.GozlemGrubu := TcxTextEdit(FindComponent('GozlemGrup')).EditValue;
             TGirisForm(FGirisForm)._SahaDenetimVeri_ := xSahaDenetimVeri;
           //  (Application.FindComponent(FGirisForm.name) as TGirisForm)._SahaDenetimVeri_ := xSahaDenetimVeri;
           end;
ptPersonelTetkikleri :
           begin
             datalar.TarihAralik.ilkTarih := TcxTextEdit(FindComponent('ilkTarih')).EditValue;
             datalar.TarihAralik.sonTarih := TcxTextEdit(FindComponent('sonTarih')).EditValue;
           end;

  end;
end;

procedure TfrmPopup.FormCreate(Sender: TObject);
begin
  Image2.Visible := false;
  cxPanel.Visible := false;
  SayfaCaption(' ','','','','');
end;

procedure TfrmPopup.txtMsgEnter(Sender: TObject);
begin
 //perform(wm_nextdlgctl,0,0);
 ActiveControl := btnYes;
end;

procedure TfrmPopup.FormShow(Sender: TObject);
var
  ilacList : TlisteAc;
  Doktorlar,kulYolList : TcxImageComboKadir;
  txtTetkikIstem : TcxCheckGroupKadir;
  TabCaption : string;
begin
inherited;

  btnYes.Visible := True;
  btnYes.Caption := '&Tamam';
  btnIptal.Visible := True;
  btnIptal.Caption := '&Vazgeç';
  btnIptal.TabOrder := 0;
  btnYes.TabOrder := 1;
  btnIptal.SetFocus;

  self.Caption := PopupFormCaption(_islem_ ,TabCaption);
  cxTab.Tabs[0].Caption := TabCaption;

  case frmPopup._islem_ of

  ReceteIlacEkle,ReceteIlacDuzenle :
       begin
          Olustur(self,'','Ýlaç Düzenle',62,'');
          cxTab.Width := 150;
          ClientHeight := 320;
          ClientWidth := 450;
          TableName := 'ILACLARMM';

          ilacList := ListeAcCreate('ILACLARM','code,name1,ICD,doz,adet,kulyol',
                                    'StokKodu,StokAdý,ICD,Doz,Adet,KYolu',
                                    '90,250,30,30,30,60','code','Ýlaçlar','',6,True);
          setDataStringB(self,'code','&Ilaç Barkod',Kolon1,'ik',120,ilacList,True,nil,'name1','',false);

          setDataStringBLabel(self,'code',Kolon1,'ik',200,' ');
          setDataStringCurr(self,'adet','Adet',Kolon1,'',50,'0');
          setDataStringKontrol(self,peryotR, 'PeryotR','Peryot',Kolon1,'',50);

//          setDataStringC(self,'peryotR','Peryot',Kolon1,'p',50,',,,Gün,Hafta,Ay,Yýl');

          setDataStringCurr(self,'Padet','Peryot Adet',Kolon1,'p',50,'0');
          setDataStringC(self,'doz','Doz',Kolon1,'d',50,'1x1,2x1,3x1,3x2,1x2,1x3,1x4,2x1,2x2,2x3,2x4,3x1,3x2,3x3,3x4,4x1,4x2,4x3,4x4');
          TcxComboBox(FindComponent('Doz')).OnClick := txtDozClick;
          setDataStringCurr(self,'Doz1','Doz1',Kolon1,'d',50,'0');
          setDataStringCurr(self,'Doz2','Doz2',Kolon1,'d',50,'0');

         (*
          kulYolList := ListeAcCreate('ReceteKullanimYol','SLX,SLT',
                                    'Kodu,Tanýmý',
                                    '50,250','kulYol','Ýlaç Kullaným','',2,True);
          setDataStringB(self,'kulYol','Kullaným Yolu',Kolon1,'ky',120,kulYolList,false,nil,'SLT','',false);
          setDataStringBLabel(self,'kulYol',Kolon1,'ky',200,' ');
          *)

          kulYolList := TcxImageComboKadir.Create(self);
          kulYolList.Conn := Datalar.ADOConnection2;
          kulYolList.TableName := 'ReceteKullanimYol';
          kulYolList.ValueField := 'kod';
          kulYolList.DisplayField := 'tanimi';
          kulYolList.Filter := '';
          setDataStringKontrol(self,kulYolList,'kulYol','Kullaným Yolu',kolon1,'',150);




          if  frmPopup._islem_ = ReceteIlacDuzenle
          Then begin
            TcxTextEdit(FindComponent('code')).EditValue := datalar.ReceteSatir.barkod;
            TcxLabel(FindComponent('Label'+'code')).Caption := datalar.ReceteSatir.barkodadi;
            TcxCurrencyEdit(FindComponent('adet')).EditValue := datalar.ReceteSatir.kutuadet;
            TcxComboBox(FindComponent('peryotR')).EditValue := datalar.ReceteSatir.peryot;
            TcxCurrencyEdit(FindComponent('Padet')).EditValue := datalar.ReceteSatir.peryotAdet;
            TcxTextEdit(FindComponent('doz')).EditValue := datalar.ReceteSatir.doz;
            TcxCurrencyEdit(FindComponent('doz1')).EditValue := datalar.ReceteSatir.doz1;
            TcxCurrencyEdit(FindComponent('doz2')).EditValue := datalar.ReceteSatir.doz2;
            TcxTextEdit(FindComponent('kulYol')).EditValue := datalar.ReceteSatir.kulyol;
         end;

       end;

  ReceteAckEkle,ReceteAckDuzenle,ReceteIlacAckEkle,ReceteIlacAckDuzenle :
       begin
          Olustur(self,'','Açýklama Ekle',62,'');
          cxTab.Width := 150;
          ClientHeight := 280;
          ClientWidth := 450;
          TableName := 'ReceteAciklama';
          setDataStringC(self,'AckKodu','Açýklama Kodu',Kolon1,'',200,'1-Teþhiþ/Taný,2-TedaviSüresi,'+
                                                        '3-HastaGüvenlikveÝzlemeFormu,4-TetkikSonucu,'+
                                                        '5-EndikasyonDýþýKullanýmizni,99-Diðer');
          setDataStringMemo(self,'Ack','Açýklama',kolon1,'',200,50);

          if frmPopup._islem_ in [ReceteAckDuzenle,ReceteIlacAckDuzenle]
          then begin
            TcxComboBox(FindComponent('ackKodu')).EditValue := datalar.ReceteAciklama.ackKod;
            TcxTextEdit(FindComponent('ack')).EditValue := datalar.ReceteAciklama.ack;
          end;

       end;
  ReceteYeni,ReceteDuzenle :
       begin
          Olustur(self,'',_caption_,62,'');
          cxTab.Width := 150;
          ClientHeight := 280;
          ClientWidth := 450;
          TableName := 'Receteler';
          ReceteTarih := TcxDateEditKadir.Create(self);
          setDataStringKontrol(self,ReceteTarih, 'ReceteTarih','Tarih',Kolon1,'',100);
          ImageCombo := TcxImageComboBox.Create(self);
          ImageCombo.name := 'ReceteTuru';
          ImageComboItemAdd('1','Normal',ImageCombo);
          ImageComboItemAdd('2','Kýrmýzý',ImageCombo);
          ImageComboItemAdd('3','Turuncu',ImageCombo);
          ImageComboItemAdd('4','Mor',ImageCombo);
          ImageComboItemAdd('5','Yeþil',ImageCombo);
          setDataStringKontrol(self,ImageCombo, 'ReceteTuru','Reçete Türü',Kolon1,'',100);
          ImageCombo := TcxImageComboBox.Create(self);
          ImageCombo.name := 'ReceteAltTuru';
          ImageComboItemAdd('1','Ayaktan Reçetesi',ImageCombo);
          ImageComboItemAdd('2','Yatan Reçetesi',ImageCombo);
          ImageComboItemAdd('3','Taburcu Reçetesi',ImageCombo);
          ImageComboItemAdd('4','Günübirlik Reçetesi',ImageCombo);
          ImageComboItemAdd('5','Acil Reçetesi',ImageCombo);
          ImageComboItemAdd('6','Yeþil Alan Reçetesi',ImageCombo);
          ImageComboItemAdd('7','Evde Bakým Reçetesi',ImageCombo);
          setDataStringKontrol(self,ImageCombo, 'ReceteAltTuru','Reçete Alt Türü',Kolon1,'',100);

        (*
          Doktorlar := ListeAcCreate('Doktorlar','kod,ADI',
                                    'Kodu,Doktor',
                                    '60,250','kod','Doktorlar','',2,False);
          setDataStringB(self,'kod','Doktor',Kolon1,'d',100,Doktorlar,False,nil,'ADI','',false);
          setDataStringBLabel(self,'kod',Kolon1,'d',200,' ');
          *)

          Doktorlar := TcxImageComboKadir.Create(self);
          Doktorlar.Conn := Datalar.ADOConnection2;
          Doktorlar.TableName := 'DoktorlarT';
          Doktorlar.ValueField := 'kod';
          Doktorlar.DisplayField := 'tanimi';
          Doktorlar.Filter := '';
          setDataStringKontrol(self,Doktorlar,'kod','Doktor',kolon1,'',200);


          setDataString(self,'ProtokolNo','ProtokolNo',Kolon1,'',307);
          TcxButtonEditKadir(FindComponent('kod')).EditValue := datalar.YeniRecete.doktor;
         // TcxLabel(FindComponent('Labelkod')).Caption := datalar.YeniRecete.doktorAdi;
          TcxTextEdit(FindComponent('ProtokolNo')).EditValue := datalar.YeniRecete.protokolNo;
          TcxTextEdit(FindComponent('ReceteTuru')).EditValue := datalar.YeniRecete.ReceteTuru;
          TcxTextEdit(FindComponent('ReceteAltTuru')).EditValue := datalar.YeniRecete.ReceteAltTuru;
          TcxTextEdit(FindComponent('ReceteTarih')).EditValue := datalar.YeniRecete.Tarih;
       end;

   TeleEkgDuzenle :
       begin
          Olustur(self,'','Sonuç Düzenle',8,'');
          mevcutTarih_ := TcxDateEditKadir.Create(self);
          setDataStringKontrol(self,mevcutTarih_, 'Tarih','Tarih',Kolon1,'',100);
          setDataStringMemo(self,'islemAciklamasi','Sonuç',Kolon1,'',270,70);
          TcxTextEdit(FindComponent('islemAciklamasi')).Properties.MaxLength := 200;
          setDataStringBLabel(self,'ackLabel',Kolon1,'',50,'','Kalan Karakter : ');
          TcxMemo(FindComponent('islemAciklamasi')).Properties.OnChange := cxMemoPropertiesChange;
          mevcutTarih_.Date := datalar.TeleEkg.Tarih;
          TcxTextEdit(FindComponent('islemAciklamasi')).Text := datalar.TeleEkg.ack;
          ClientHeight := 270;
          ClientWidth := 400;
       end;

  gdgelisDuzenle :
       begin
          cxTab.Tabs[0].ImageIndex := 15;
          //Olustur(self,'','Gelis Duzenle',9,'');
          ClientHeight := 390;
          ClientWidth := 310;

          Doktorlar := TcxImageComboKadir.Create(self);
          Doktorlar.Conn := Datalar.ADOConnection2;
          Doktorlar.Name := 'TEDAVITURU';
          Doktorlar.TableName := 'vw_muayenetipleri';
          Doktorlar.ValueField := 'Kod';
          Doktorlar.DisplayField := 'Tanim';
          Doktorlar.Filter := '';
          setDataStringKontrol(self,Doktorlar, 'TEDAVITURU','Tedavi Türü',Kolon1,'',120);

          TcxImageComboKadir(FindComponent('TEDAVITURU')).EditValue := datalar.GelisDuzenleRecord.TedaviTuru;

          textEdit := TcxTextEdit.Create(self);
          textEdit.Name := 'dosyaNo';
          setDataStringKontrol(self,textEdit, 'dosyaNo','Dosya No',Kolon1,'',100);
          TcxTextEdit(FindComponent('dosyaNo')).EditValue := datalar.GelisDuzenleRecord.dosyaNo;

          textEdit := TcxTextEdit.Create(self);
          textEdit.Name := 'gelisNo';
          setDataStringKontrol(self,textEdit, 'gelisNo','Gelis No',Kolon1,'',60);
          TcxTextEdit(FindComponent('gelisNo')).EditValue := datalar.GelisDuzenleRecord.gelisNo;

          textEdit := TcxTextEdit.Create(self);
          textEdit.Name := 'TakipNo';
          setDataStringKontrol(self,textEdit, 'TakipNo','Takip No',Kolon1,'',100);
          TcxTextEdit(FindComponent('TakipNo')).EditValue := datalar.GelisDuzenleRecord.TakipNo;

          mevcutTarih_ := TcxDateEditKadir.Create(self);
          mevcutTarih_.Name := 'GirisTarihi';
          setDataStringKontrol(self,mevcutTarih_, 'GirisTarihi','Giriþ Tarih',Kolon1,'',100);
          TcxTextEdit(FindComponent('GirisTarihi')).EditValue := datalar.GelisDuzenleRecord.GirisTarihi;

          Doktorlar := TcxImageComboKadir.Create(self);
          Doktorlar.Conn := Datalar.ADOConnection2;
          Doktorlar.Name := 'Doktor';
          Doktorlar.TableName := 'DoktorlarT';
          Doktorlar.ValueField := 'kod';
          Doktorlar.DisplayField := 'Tanimi';
          Doktorlar.Filter := '';
          setDataStringKontrol(self,Doktorlar,'Doktor','Doktor',kolon1,'',120);
          TcxImageComboKadir(FindComponent('Doktor')).EditValue := datalar.GelisDuzenleRecord.doktor;

          textEdit := TcxTextEdit.Create(self);
          textEdit.Name := 'BransKodu';
          setDataStringKontrol(self,textEdit, 'BransKodu','Branþ Kodu',Kolon1,'',100);
          TcxTextEdit(FindComponent('BransKodu')).EditValue := datalar.GelisDuzenleRecord.BransKodu;

          textEdit := TcxTextEdit.Create(self);
          textEdit.Name := 'protokolNo';
          setDataStringKontrol(self,textEdit, 'protokolNo','Muayene Protokol No',Kolon1,'',100);
          TcxTextEdit(FindComponent('protokolNo')).EditValue := datalar.GelisDuzenleRecord.ProtokolNo;

       end;

    gdgelisAc,gdPeryodikgelisAc :
       begin
          cxTab.Tabs[0].ImageIndex := 21;
          //Olustur(self,'','',21,'');
          mevcutTarih_ := TcxDateEditKadir.Create(self);
          mevcutTarih_.Name := 'GirisTarihi';
          setDataStringKontrol(self,mevcutTarih_, 'GirisTarihi','Muayene Tarih',Kolon1,'',100);
          TcxTextEdit(FindComponent('GirisTarihi')).EditValue := date;

          Doktorlar := TcxImageComboKadir.Create(self);
          Doktorlar.Conn := Datalar.ADOConnection2;
          Doktorlar.Name := 'TEDAVITURU';
          Doktorlar.TableName := 'vw_muayenetipleri';
          Doktorlar.ValueField := 'Kod';
          Doktorlar.DisplayField := 'Tanim';
          Doktorlar.Filter := '';
          setDataStringKontrol(self,Doktorlar, 'TEDAVITURU','Tedavi Türü',Kolon1,'',120);

          if datalar.doktorKodu = ''
          then begin
            Doktorlar := TcxImageComboKadir.Create(self);
            Doktorlar.Conn := Datalar.ADOConnection2;
            Doktorlar.TableName := 'DoktorlarT';
            Doktorlar.ValueField := 'kod';
            Doktorlar.DisplayField := 'tanimi';
            Doktorlar.Filter := '';
            setDataStringKontrol(self,Doktorlar,'Doktor','Doktor',kolon1,'',120);
          end;

          if frmPopup._islem_ = gdPeryodikgelisAc
          then begin
            cxTab.Tabs[0].Caption := _caption_;
            cxTab.Tabs[0].ImageIndex := 39;
            ClientHeight := 320;
            Doktorlar.EditValue := 2;
            txtTetkikIstem := TcxCheckGroupKadir.Create(self);
            txtTetkikIstem.Properties.EditValueFormat := cvfStatesString;
            txtTetkikIstem.Properties.Columns := 2;
            txtTetkikIstem.Alignment := alCenterCenter;
            txtTetkikIstem.Conn := Datalar.ADOConnection2;
            txtTetkikIstem.TableName := 'TetkikIstemSablonItem';
            txtTetkikIstem.ValueField := 'id';
            txtTetkikIstem.DisplayField := 'tanimi';
            txtTetkikIstem.Filter := ' SablonGrupKod = ' + ifThen(_value_ = '','0',_value_);
            setDataStringKontrol(self,txtTetkikIstem,'tetkikIstemGrupSablon','Tetkikler',kolon1,'',180,80);
            txtTetkikIstem.Caption := '';

          end
          else begin
            textEdit := TcxTextEdit.Create(self);
            textEdit.Name := 'protokolNo';
            setDataStringKontrol(self,textEdit, 'protokolNo','Muayene Protokol No',Kolon1,'',100);
            TcxTextEdit(FindComponent('protokolNo')).EditValue := datalar.GelisDuzenleRecord.ProtokolNo;

            setDataStringChk (Self, 'ProtokolNoGuncelle', 'Protokol Numarasýný Buradan Devam Ettir', Kolon1, '', 220);
            TcxCheckBox(FindComponent('ProtokolNoGuncelle')).Properties.Alignment := taRightJustify;
            ClientHeight := 250;
          end;

       end;

   PrgSifre :
       begin
          setDataString(self,'MevcutSifre','Mevcut Þifre',Kolon1,'',100);
          setDataString(self,'YeniSifre','Yeni Þifre',Kolon1,'',100);
          setDataString(self,'YeniSifreTekrar','Yeni Þifre Tekrar',Kolon1,'',100);
          TcxTextEdit(FindComponent('MevcutSifre')).Properties.EchoMode := eemPassword;
          TcxTextEdit(FindComponent('MevcutSifre')).Properties.PasswordChar := '*';
          TcxTextEdit(FindComponent('YeniSifre')).Properties.EchoMode := eemPassword;
          TcxTextEdit(FindComponent('YeniSifre')).Properties.PasswordChar := '*';
          TcxTextEdit(FindComponent('YeniSifreTekrar')).Properties.EchoMode := eemPassword;
          TcxTextEdit(FindComponent('YeniSifreTekrar')).Properties.PasswordChar := '*';

          ClientHeight := 250;
          ClientWidth := 400;
       end;

   yeniGozlem, GozlemDuzenle :
       begin
         ClientHeight := 310;
         ClientWidth := 442;
         textEdit := TcxTextEdit.Create(self);
         textEdit.Name := 'FirmaKodu';
         textEdit.Properties.ReadOnly := True;
         setDataStringKontrol(self,textEdit, 'FirmaKodu','Firma No',Kolon1,'',60);
         TcxTextEdit(FindComponent('FirmaKodu')).EditValue := _SahaDenetimVeri_.FirmaKod;

         textEdit := TcxTextEdit.Create(self);
         textEdit.Name := 'FirmaAdi';
         textEdit.Properties.ReadOnly := True;
         setDataStringKontrol(self,textEdit, 'FirmaAdi','Firma Ünvaný',Kolon1,'',250);
         TcxTextEdit(FindComponent('FirmaAdi')).EditValue := DATALAR.AktifSirketAdi;

         Doktorlar := TcxImageComboKadir.Create(self);
         Doktorlar.Conn := Datalar.ADOConnection2;
         Doktorlar.TableName := 'SIRKET_SUBE_TNM';
         Doktorlar.ValueField := 'subeKod';
         Doktorlar.DisplayField := 'subeTanim';
         Doktorlar.BosOlamaz := True;
         setDataStringKontrol(self,Doktorlar,'SubeKod','Þube',Kolon1,'',150);
         Doktorlar.EditValue := _SahaDenetimVeri_.SubeKod;
         Doktorlar.Filter := ' SirketKod = ' + QuotedStr(_SahaDenetimVeri_.FirmaKod);


         doktorlar := TcxImageComboKadir.Create(self);
         doktorlar.Conn := Datalar.ADOConnection2;
         doktorlar.TableName := 'SahaGozlemSoruGrup';
         doktorlar.ValueField := 'GozlemGrup';
         doktorlar.DisplayField := 'Tanimi';
         doktorlar.BosOlamaz := True;
         doktorlar.Filter := '';
         Doktorlar.Properties.ReadOnly := (frmPopup._islem_ <> yeniGozlem);
         OrtakEventAta(doktorlar);
         setDataStringKontrol(self,doktorlar,'GozlemGrup','Saha Gözlem Tipi',kolon1,'',250);
         TcxTextEdit(FindComponent('GozlemGrup')).EditValue := _SahaDenetimVeri_.GozlemGrubu;


         textEdit := TcxTextEdit.Create(self);
         textEdit.Name := 'Kullanici';
         textEdit.Properties.ReadOnly := True;
         setDataStringKontrol(self,textEdit, 'Kullanici','Denetimi Yapan Kullanici',Kolon1,'',80);
         TcxTextEdit(FindComponent('Kullanici')).EditValue := _SahaDenetimVeri_.KullaniciAdi;

         _Tarih_ := TcxDateEditKadir.Create(self);
         _Tarih_.Name := 'DenetimTarihi';
         setDataStringKontrol(self,_Tarih_, 'DenetimTarihi','Tarih',Kolon1,'',100);
         TcxTextEdit(FindComponent('DenetimTarihi')).EditValue := _SahaDenetimVeri_.DenetimTarihi;

         textEdit := TcxTextEdit.Create(self);
         textEdit.Name := 'DenetimDefterNo';
         textEdit.Properties.ReadOnly := False;
         setDataStringKontrol(self,textEdit, 'DenetimDefterNo','Denetim Defter No.',Kolon1,'',60);
         TcxTextEdit(FindComponent('DenetimDefterNo')).EditValue := _SahaDenetimVeri_.DenetimDefterNo;
       end;

ptPersonelTetkikleri :
       begin
          ClientHeight := 200;
          ClientWidth := 300;

          mevcutTarih_ := TcxDateEditKadir.Create(self);
          mevcutTarih_.Name := 'GirisTarihi';
          setDataStringKontrol(self,mevcutTarih_, 'ilkTarih','Ýlk Tarih',Kolon1,'',100);
          TcxTextEdit(FindComponent('ilkTarih')).EditValue := date;

          _Tarih_ := TcxDateEditKadir.Create(self);
          _Tarih_.Name := 'DenetimTarihi';
          setDataStringKontrol(self,_Tarih_, 'SonTarih','Son Tarih',Kolon1,'',100);
          TcxTextEdit(FindComponent('SonTarih')).EditValue := date;


       end;

  end;



end;

procedure TfrmPopup.cxMemoPropertiesChange(Sender: TObject);
begin
  inherited;
  MemoKalanLen := TcxMemo(sender).Properties.MaxLength - length(TcxMemo(sender).Text);
  TcxLabel(FindComponent('LabelackLabel')).Caption := inttostr(MemoKalanLen);
end;

procedure TfrmPopup.FormActivate(Sender: TObject);
begin
   if frmTop_ = 0
   Then frmTop_ := Trunc(TScreen(frmPopup).DesktopHeight/2);
   if frmLeft_ = 0
   Then frmLeft_ := Trunc(TScreen(frmPopup).DesktopWidth/2);

   Top := frmTop_ - Trunc(Height/2);
   Left := frmLeft_ - Trunc(Width/2);
end;

end.

