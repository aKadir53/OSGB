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
  cxImageComboBox, cxMemo,Variants, cxCheckGroup,cxImage,dxLayoutControl,dxLayoutContainer;

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
    List: TListeAc;
    Olcumler: TcxCheckGroupKadir;
    Grid: TcxGridDBTableView;
    cxGridKadir1Level1: TcxGridLevel;
    cxGridKadir1: TcxGridKadir;
    GridColumn1: TcxGridDBColumn;
    procedure txtDozClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtMsgEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SetDataTarih(Tarih : TDate);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxMemoPropertiesChange(Sender: TObject);
    procedure PropertiesEditValueChanged(Sender: TObject);override;
    procedure PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure ButtonClick(Sender: TObject);
    procedure CalismaplaninaAylarikoy;
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
       AButtonIndex: Integer);override;
    procedure BeforePost(DataSet: TDataSet);


  private
    { Private declarations }
    Fislem_ : integer;
    Fcaption_ : string;
    Fvalue_ : string;
    FFormName_ : string;

  public
    _islem_ :integer;
    _caption_ : string;
    _value_ : string;
    FGirisForm : TGirisForm;
    { Public declarations }

    property islem_ : integer read Fislem_ write Fislem_;
    property caption_ : string read Fcaption_ write Fcaption_;
    property value_ : string read Fvalue_ write Fvalue_;
    property FormName_ : string read FFormName_ write FFormName_;
  end;

  Const
      formGenislik = 310;
      formYukseklik = 150;
      insertCek = 'insert into cari_Cekler (evrakNo,VadeTarihi,sirketKod,TedarikciKod,tutar,Tip,Durum,Tarih,user_create,aciklama) ' +
                  ' values(%s,%s,%s,%s,%g,%s,%s,%s,%s,%s)';

var
  frmPopup: TfrmPopup;
  sql : string;

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

procedure TfrmPopup.CalismaplaninaAylarikoy;
var
  Combo : TcxImageComboKadir;
begin
  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'ocak','Ocak',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'subat','Þubat',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'mart','Mart',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'nisan','Nisan',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'mayis','Mayis',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'haziran','Haziran',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'temmuz','Temmuz',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'agustos','Aðustos',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'eylul','Eylül',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'ekim','Ekim',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'kasim','Kasim',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'P;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'aralik','Aralik',Kolon1,'',50);



  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'ocak_R','Ocak',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'subat_R','Þubat',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'mart_R','Mart',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'nisan_R','Nisan',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'mayis_R','Mayis',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'haziran_R','Haziran',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'temmuz_R','Temmuz',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'agustos_R','Aðustos',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'eylul_R','Eylül',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'ekim_R','Ekim',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'kasim_R','Kasim',Kolon1,'',50);

  Combo := TcxImageComboKadir.Create(self);
  Combo.Conn := nil;
  Combo.ItemList := 'G;1,;0';
  Combo.Filter := '';
  setDataStringKontrol(self,Combo,'aralik_R','Aralik',Kolon1,'',50);



end;


procedure TfrmPopup.BeforePost(DataSet: TDataSet);
begin
  cxGridKadir1.Dataset.FieldByName('sirketKod').AsString := datalar.FirmaSubeBilgi.SirketKodu;
  cxGridKadir1.Dataset.FieldByName('subeKod').AsString := datalar.FirmaSubeBilgi.SubeKodu;

end;

procedure TfrmPopup.ButtonClick(Sender: TObject);
var
  open : TOpenDialog;
  filename : string;
  Jpeg1 : TJPEGImage;
  Image : TcxImage;
begin
  case TcxButton(Sender).tag of
    20 : begin
            if mrYes = ShowPopupForm('Risk Bölüm Ekle',yeniRiskBolum,'','RiskTanimEkleForm')
            then
               TcxImageComboKadir(FindComponent('RiskBolum')).Filter := '';
         end;

    21 : begin
            if mrYes = ShowPopupForm('Tehlike Kaynak Ekle',yeniTehlikeKaynak,'','RiskTanimEkleForm')
            then
               TcxImageComboKadir(FindComponent('TehlikeKaynak')).Filter := '';
         end;
    22 : begin
           ShowPopupForm('Tehlike Kaynak Ekle',yeniKKDEkle,'','KKDTanimEkleForm')
        end;
    23 : begin
           ShowPopupForm('Tehlike Ekle',yeniTehlike,'','RiskTanimEkleForm')


        end;
    24 : begin
           if mrYes = ShowPopupForm('Etkilenecekler Ekle',yeniEkilenecekler,'','RiskTanimEkleForm')
           then
             TcxImageComboKadir(FindComponent('Etkilenecekler')).Filter := '';
         end;

    30 : begin
             datalar.Cek.evrakNo := '';
             datalar.Cek.vade := date();
             datalar.Cek.tutar := 0;
             datalar.Cek.sirketKod := '';
             datalar.Cek.tedarikciKod := '';
             datalar.Cek.tip := '';
             datalar.CEk.durum := '';

             if mrYEs = ShowPopupForm('Çek Tanýmla',yeniCek,'')
             then begin
                //evrakNo,VadeTarihi,sirketKod,kimden,TedarikciKod,kime,tutar,Tip,Durum,date_create,user_create

             end;

         end;


  98,99 : begin
          open := TOpenDialog.Create(self);
          try
            if not open.Execute then Exit;
            filename := open.FileName;
            TcxImage(FindComponent('ImageResim')).Picture.LoadFromFile(filename);
            Image := TcxImage(FindComponent('ImageResim'));
            StretchImage(Image,stHerDurumdaStretch,400,300);
            Jpeg1 := TJPEGImage.Create;
            try
              Jpeg1.Assign(Image.Picture.Bitmap);
              TcxImage(FindComponent('ImageResim')).Clear;
              TcxImage(FindComponent('ImageResim')).Picture.Assign(Jpeg1);
            finally
              Jpeg1.Free;
            end;
          finally
            open.Free;
          end;
         end;
  end;





end;


procedure TfrmPopup.PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
 L : ArrayListeSecimler;

begin


  if TControl(sender).Name = 'TS_EN_KODLARI'
  Then begin
    List.KaynakTableTip := tpTable;
    List.Table := '(select TS_EN_NO kod,STANDART_ADI tanimi from KISISEL_KORUYUCU_TS_EN) t';
    L := List.ListeGetir;
    if Length(L) = 0 then exit;
    TcxButtonEditKadir(FindComponent('TS_EN_KODLARI')).EditValue := L[0].Kolon1;
  end;

  if TControl(sender).Name = 'KKD'
  Then begin
    List.KaynakTableTip := tpTable;
    List.Table := 'KKD';
    L := List.ListeGetir;
    if Length(L) = 0 then exit;
    TcxButtonEditKadir(FindComponent('KKD')).EditValue := L[0].Kolon2;
  end;


  if TControl(sender).Name = 'VucutKisim'
  Then begin
    List.KaynakTableTip := tpTable;
    List.Table := 'Uzuvlar';
    L := List.ListeGetir;
    if Length(L) = 0 then exit;
    TcxButtonEditKadir(FindComponent('VucutKisim')).EditValue := L[0].Kolon2;
  end;

  if TControl(sender).Name = 'VucutUzuv'
  Then begin
    List.KaynakTableTip := tpTable;
    List.Table := 'Uzuvlar';
    L := List.ListeGetir;
    if Length(L) = 0 then exit;
    TcxButtonEditKadir(FindComponent('VucutUzuv')).EditValue := L[0].Kolon2;
  end;


  if TControl(sender).Name = 'Risk_tanimi'
  Then begin
    List.KaynakTableTip := tpTable;
    List.Table := 'RDS_Risk';
    L := List.ListeGetir;
    if Length(L) = 0 then exit;
    TcxImageComboKadir(FindComponent('Risk_tanimi')).EditValue := L[0].Kolon2;
  end;

  if TControl(sender).Name = 'Tehlike'
  Then begin
    if datalar.Risk.SektorId  = ''
    then begin
     List.KaynakTableTip := tpTable;
     List.Table := 'RDS_Tehlike';
    end
    else begin
      List.KaynakTableTip := tpSp;
      List.Table := 'select 0 kod,Tehlike tanimi from RDS_RiskKaynakSektorEslesmeTablosu ES ' +
                    'join RDS_TehlikeKaynak TK on TK.kod = ES.TehlikeKaynagi ' +
                    'where TehlikeKaynagi = ' + vartoStr(TcxImageComboKadir(FindComponent('TehlikeKaynak')).EditingValue);

    end;
    L := List.ListeGetir;
    if Length(L) = 0 then exit;
    TcxImageComboKadir(FindComponent('Tehlike')).EditValue := L[0].Kolon2;
  end;

end;


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
  if TfrmPopup(self).ModalResult = mrYes
  then
  case TfrmPopup(self).islem_ of

      PersonelBelgeDuzenle,yeniPersonelBelge :
            begin
                //
                datalar.PersonelBelge.id := TcxTextEdit(FindComponent('id')).EditValue;
                datalar.PersonelBelge.BelgeTip := TcxImageComboKadir(FindComponent('BelgeTip')).EditValue;
                datalar.PersonelBelge.BelgeTarihi := TcxDateEdit(FindComponent('BelgeTarihi')).EditValue;
                datalar.PersonelBelge.GecerlilikTarihi := TcxDateEdit(FindComponent('GecerlilikTarihi')).EditValue;
                datalar.PersonelBelge.Durum := TcxCheckBox(FindComponent('Durum')).EditValue;
                datalar.PersonelBelge.AlinanKurum := TcxTextEdit(FindComponent('AlinanKurum')).EditValue;
            end;

      yeniPersonelLevel,PersonelLevelDuzenle :
            begin
                datalar.PersonelLevel.id := TcxTextEdit(FindComponent('id')).EditValue;
                datalar.PersonelLevel.Tarih := TcxDateEdit(FindComponent('Tarih')).EditValue;
            //    datalar.PersonelLevel.PersonelKodu := vartostr(TcxTextEdit(FindComponent('DosyaNo')).EditingValue);
            //    datalar.PersonelLevel.SirketKodu := vartostr(TcxTextEdit(FindComponent('sirketKod')).EditingValue);
                datalar.PersonelLevel.Aciklama := TcxCheckBox(FindComponent('Aciklama')).EditValue;
                datalar.PersonelLevel.Tip := TcxTextEdit(FindComponent('Tip')).EditValue;
                datalar.PersonelLevel.personelLevel := TcxTextEdit(FindComponent('personelLevel')).EditValue;
                datalar.PersonelLevel.Durum := TcxTextEdit(FindComponent('Durum')).EditValue;

            end;

      SeansTarihiUpdate   :
            begin
              if TfrmPopup(self).ModalResult = mrYes
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

           if (TcxTextEdit(FindComponent('doz')).EditValue <> '') and
              (TcxCurrencyEdit(FindComponent('adet')).EditValue <> null) and
              (TcxCurrencyEdit(FindComponent('adet')).EditValue <> 0)
            then begin
              datalar.ReceteSatir.barkod := TcxTextEdit(FindComponent('code')).EditValue;
              datalar.ReceteSatir.barkodadi := TcxLabel(FindComponent('Label'+'code')).Caption;
              datalar.ReceteSatir.kutuadet := TcxCurrencyEdit(FindComponent('adet')).EditValue;
              datalar.ReceteSatir.peryot := TcxComboBox(FindComponent('peryotR')).EditValue;
              datalar.ReceteSatir.peryotAdet := TcxCurrencyEdit(FindComponent('Padet')).EditValue;
              datalar.ReceteSatir.doz := TcxTextEdit(FindComponent('doz')).EditValue;
              datalar.ReceteSatir.doz1 := TcxCurrencyEdit(FindComponent('doz1')).EditValue;
              datalar.ReceteSatir.doz2 := TcxCurrencyEdit(FindComponent('doz2')).EditValue;
              datalar.ReceteSatir.kulyol := TcxTextEdit(FindComponent('kulYol')).EditValue;
            end
            else
            begin
               ShowMessageSkin(TcxLabel(FindComponent('Label'+'code')).Caption + ' için doz veya adet bilgisi girilmemiþ','','','info');
              exit;
            end;


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
              datalar.YeniRecete.takipNo := TcxTextEditKadir(FindComponent('eReceteNo')).EditValue;
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
             end
             else if not SifreGecerliMi (TcxTextEdit(FindComponent('YeniSifre')).EditValue, 6, 1, 0, 0, 1) then
             begin
               Action := caNone;
             end;
             datalar.SifreDegistir.Sifre := TcxTextEdit(FindComponent('YeniSifre')).EditValue;
           end;

       userSifre :
           begin
               if TcxTextEdit(FindComponent('YeniSifre')).EditValue <>
                TcxTextEdit(FindComponent('YeniSifreTekrar')).EditValue then
              begin
                ShowMessageSkin('Yeni þifre ve tekrar giriþleri uyumsuz', '', '', 'info');
                Action := caNone;
              end
              else
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
riskDuzenle,yeniRisk :
           begin
              datalar.Risk.Bolum := TcxImageComboKadir(FindComponent('RiskBolum')).EditValue;
              datalar.Risk.TehlikeKaynagi := TcxImageComboKadir(FindComponent('TehlikeKaynak')).EditValue;
              datalar.Risk.Tehlike := TcxImageComboKadir(FindComponent('Tehlike')).Text;
              datalar.Risk.Etkilenecek := TcxImageComboKadir(FindComponent('Etkilenecekler')).EditValue;
              datalar.Risk.Risk_tanim := TcxImageComboKadir(FindComponent('Risk_tanimi')).Text;
              datalar.Risk.Onlemler := TcxMemo(FindComponent('Onlemler')).Text;
              datalar.Risk.Olasilik := TcxImageComboKadir(FindComponent('Olasilik')).EditValue;
              if (datalar.Risk.Method = 1) or (datalar.Risk.Method = 3)
              then datalar.Risk.Frekans := TcxImageComboKadir(FindComponent('Frekans')).EditValue;

              datalar.Risk.Siddet := TcxImageComboKadir(FindComponent('Siddet')).EditValue;
              datalar.Risk.Risk := TcxCurrencyEdit(FindComponent('Risk')).EditValue;

              datalar.Risk.MevcutOnlem := TcxMemo(FindComponent('MevcutOnlem')).Text;
              datalar.Risk.Sorumlu := TcxTextEditKadir(FindComponent('Sorumlu')).Text;
              datalar.Risk.Termin := TcxTextEditKadir(FindComponent('Termin')).Text;
              datalar.Risk.TerminSure := TcxImageComboKadir(FindComponent('TerminTipleri')).EditingValue;

              datalar.Risk.Gerceklesme := TcxTextEditKadir(FindComponent('Gercek')).Text;
              datalar.Risk.Olasilik_2 := TcxImageComboKadir(FindComponent('Olasilik_2')).EditValue;
              if (datalar.Risk.Method = 1) or (datalar.Risk.Method = 3)
              then datalar.Risk.Frekans_2 := TcxImageComboKadir(FindComponent('Frekans_2')).EditValue;
              datalar.Risk.Siddet_2 := TcxImageComboKadir(FindComponent('Siddet_2')).EditValue;
              datalar.Risk.Risk_2 := TcxCurrencyEdit(FindComponent('Risk_2')).EditValue;
           //   datalar.Risk.RDS_2 := Null;
              datalar.Risk.yasalDayanak := TcxMemo(FindComponent('yasalDayanak')).Text;
              datalar.Risk.Image.Picture := TcxImage(FindComponent('ImageResim')).Picture;

            end;
 gozetimDuzenle,yeniGozetim :
            begin
              datalar.Risk.Onlemler := TcxMemo(FindComponent('Tespitler')).Text;
              datalar.Risk.SSGBolum := (TcxImageComboKadir(FindComponent('Bolum')).EditValue);
              datalar.Risk.SSGYapilacakFaliyetTuru := (TcxImageComboKadir(FindComponent('YapilacakFaliyetTuru')).EditValue);
              datalar.Risk.SSGKokNeden := TcxTextEdit(FindComponent('KokNeden')).Text;
              datalar.Risk.SSGFaliyetPlan := TcxTextEdit(FindComponent('FaliyetPlan')).Text;
              datalar.Risk.SSGUygulanacakFaliyetTarihi := VarToStr (TcxTextEdit(FindComponent('UygulanacakFaliyetTarihi')).EditValue);
              datalar.Risk.SSGBolumYetkilisi := TcxTextEdit(FindComponent('BolumYetkilisi')).Text;
              datalar.Risk.SSGSonuc := (TcxImageComboKadir(FindComponent('Sonuc')).EditValue);
              datalar.Risk.SSGYapilanFaliyet := TcxTextEdit(FindComponent('YapilanFaliyet')).Text;
              datalar.Risk.SSGFaliyetKapamaTarihi := VarToStr (TcxTextEdit(FindComponent('FaliyetKapamaTarihi')).EditValue);
              datalar.Risk.SSGTakipSüresi := VarToStr (TcxTextEdit(FindComponent('TakipSüresi')).EditValue);
              datalar.Risk.SSGKapamaOnayi := TcxImageComboKadir(FindComponent('KapamaOnayi')).EditValue;
              //datalar.Risk.Image := TcxImage.Create(nil);
             // datalar.Risk.Image.Picture := TcxImage(FindComponent('ImageResim')).Picture;
            end;
 denetimDuzenle,yeniDenetim :
            begin
              datalar.SahaDenetim.TehlikeliDurum := TcxMemo(FindComponent('TehlikeliDurum')).Text;
              datalar.SahaDenetim.Bolum := (TcxImageComboKadir(FindComponent('Bolum')).EditValue);
              datalar.SahaDenetim.Yonetmelik := TcxTextEdit(FindComponent('Yonetmelik')).Text;
              datalar.SahaDenetim.IlgiliKisi := TcxTextEdit(FindComponent('IlgiliKisi')).Text;
              datalar.SahaDenetim.isinDurumu := TcxImageComboKadir(FindComponent('isinDurumu')).EditValue;
             // datalar.SahaDenetim.Image := TcxImage.Create(nil);
              datalar.SahaDenetim.Image.Picture := TcxImage(FindComponent('ImageResim')).Picture;
            end;

 yeniKKD,KKDDuzenle :
            begin
              datalar.KKD.VucutKisim := TcxButtonEditKadir(FindComponent('VucutKisim')).Text;
              datalar.KKD.VucutUzuv := TcxButtonEditKadir(FindComponent('VucutUzuv')).Text;
              datalar.KKD.KKD := TcxButtonEditKadir(FindComponent('KKD')).Text;
              datalar.KKD.TSE := TcxButtonEditKadir(FindComponent('TS_EN_KODLARI')).EditText;
              datalar.KKD.KullanilacakIs := TcxButtonEditKadir(FindComponent('KullanilacakIS')).EditText;
              datalar.KKD.Bolum := TcxImageComboKadir(FindComponent('RiskBolum')).EditValue;

            end;


   yeniRiskBolum ,
   yeniTehlikeKaynak,
   yeniTehlike,
   yeniEkilenecekler,
   yeniKKDEkle
              :
              begin

                 case TfrmPopup(self).islem_ of
                   yeniRiskBolum :
                         begin
                          datalar.QueryExec('insert into RDS_RiskBolum (tanimi) values(' +
                                             QuotedStr(TcxTextEditKadir(FindComponent('RiskBolum')).EditingValue) +
                                             ')');
                         end;
                   yeniTehlikeKaynak :
                         begin
                          datalar.QueryExec('insert into RDS_TehlikeKaynak (tanimi) values(' +
                                             QuotedStr(TcxTextEditKadir(FindComponent('TehlikeKaynak')).EditingValue) +
                                             ')');
                         end;
                   yeniTehlike :
                         begin
                          datalar.QueryExec('insert into RDS_Tehlike (tanimi) values(' +
                                             QuotedStr(TcxTextEditKadir(FindComponent('Tehlike')).EditingValue) +
                                             ')');
                         end;

                   yeniEkilenecekler :
                        begin
                          datalar.QueryExec('insert into RDS_Etkilenecekler (tanimi) values(' +
                                             QuotedStr(TcxTextEditKadir(FindComponent('yeniEkilenecekler')).EditingValue) +
                                             ')');
                        end;

                   yeniKKDEkle :
                         datalar.QueryExec('insert into KKD (tanimi) values(' +
                                           QuotedStr(TcxTextEditKadir(FindComponent('KKD')).EditingValue) +
                                           ')');
                 end;


              end;
   riskRaporuPaylas :
              begin
                  datalar.QueryExec('update RDS_SirketRisk set paylasilan = ' +
                     QuotedStr(TcxImageComboKadir(FindComponent('paylasilan')).EditingValue) +
                     ' where id = ' + datalar.Risk.RiskID);
              end;
   sahaGozetimPaylas :
              begin
                  datalar.QueryExec('update SirketSahaGozetim set paylasilan = ' +
                     QuotedStr(TcxImageComboKadir(FindComponent('paylasilan')).EditingValue) +
                     ' where id = ' + datalar.Risk.RiskID);
              end;
   FaturaTahsilatEkle :
              begin
                   if TcxImageComboKadir(FindComponent('OdemeTip')).EditValue = 1
                   Then
                     HesapIsle(TcxImageComboKadir(FindComponent('HesapKod')).EditValue,
                               self._value_,
                               TcxTextEdit(FindComponent('Aciklama')).EditValue ,
                               TcxCurrencyEdit(FindComponent('Tutar')).EditValue,
                               TcxDateEditKadir(FindComponent('Tarih')).GetSQLValue,'H','','','','',''

                               )
                   else
                   begin
                     HesapIsle(vartostr(TcxImageComboKadir(FindComponent('HesapKod')).EditValue),
                               self._value_,
                               TcxTextEdit(FindComponent('Aciklama')).EditValue ,
                               TcxCurrencyEdit(FindComponent('Tutar')).EditValue,
                               TcxDateEditKadir(FindComponent('Tarih')).GetSQLValue,
                               'E',
                               TcxDateEditKadir(FindComponent('VadeTarih')).GetSQLValue,'2',
                               '',
                               '1',
                               TcxDateEditKadir(FindComponent('CekId')).EditValue);

                   end;
              end;

     yeniCek       :
              begin
                 datalar.Cek.evrakNo := vartoStr(TcxTextEdit(FindComponent('evrakNo')).EditingValue);
                 datalar.Cek.vade := TcxDateEdit(FindComponent('VadeTarihi')).EditingValue;
                 datalar.Cek.tutar := TcxCurrencyEdit(FindComponent('tutar')).EditingValue;
                 datalar.Cek.sirketKod := vartoStr(TcxImageComboKadir(FindComponent('sirketKod')).EditingValue);
                 datalar.Cek.kimden := TcxImageComboKadir(FindComponent('sirketKod')).Text;
                 datalar.Cek.tedarikciKod := vartoStr(TcxImageComboKadir(FindComponent('TedarikciKod')).EditingValue);
                 datalar.Cek.kime := TcxImageComboKadir(FindComponent('TedarikciKod')).Text;
                 datalar.Cek.tip := TcxImageComboKadir(FindComponent('Tip')).EditingValue;
                 datalar.Cek.durum := TcxImageComboKadir(FindComponent('Durum')).EditingValue;
                 datalar.Cek.aciklama := vartoStr(TcxTextEdit(FindComponent('aciklama')).EditingValue);

                 try
                  sql := Format(insertCek,
                                           [QuotedStr(datalar.Cek.evrakNo),
                                            QuotedStr(tarihal(datalar.Cek.vade)),
                                            ifThen(datalar.Cek.sirketKod <> '',QuotedStr(datalar.Cek.sirketKod),'null'),
                                            ifThen(datalar.Cek.TedarikciKod <> '',QuotedStr(datalar.Cek.TedarikciKod),'null'),
                                            datalar.Cek.tutar,
                                            QuotedStr(datalar.Cek.Tip),
                                            QuotedStr(datalar.Cek.Durum),
                                            QuotedStr(FormatDateTime('YYYY-MM-DD HH:NN:SS',now())),
                                            QuotedStr(datalar.username),
                                            QuotedStr(datalar.Cek.aciklama)]);

                   datalar.QueryExec(sql);
                 except on e : exception do
                  begin
                    ShowMessageSkin(e.Message,'','','info');
                  end;
                 end;

              end;
     OdemeEkle     :
              begin
                   if TcxImageComboKadir(FindComponent('OdemeTip')).EditValue = 1
                   Then
                     HesapIsleOdeme(TcxImageComboKadir(FindComponent('HesapKod')).EditValue,
                               self._value_,
                               TcxTextEdit(FindComponent('Aciklama')).EditValue ,
                               TcxCurrencyEdit(FindComponent('Tutar')).EditValue,
                               TcxDateEditKadir(FindComponent('Tarih')).GetSQLValue,'H','','','','',''

                               )
                   else
                   begin
                     HesapIsleOdeme(vartostr(TcxImageComboKadir(FindComponent('HesapKod')).EditValue),
                               self._value_,
                               TcxTextEdit(FindComponent('Aciklama')).EditValue ,
                               TcxCurrencyEdit(FindComponent('Tutar')).EditValue,
                               TcxDateEditKadir(FindComponent('Tarih')).GetSQLValue,
                               'E',
                               TcxDateEditKadir(FindComponent('VadeTarih')).GetSQLValue,'','','','');

                   end;

              end;

    CekTahsilat    :
              begin
                     HesapIsle(vartostr(TcxImageComboKadir(FindComponent('HesapKod')).EditValue),
                               '',
                               TcxTextEdit(FindComponent('Aciklama')).EditValue ,
                               TcxCurrencyEdit(FindComponent('Tutar')).EditValue,
                               TcxDateEditKadir(FindComponent('Tarih')).GetSQLValue,
                               'T',
                               QuotedStr(''),
                               '3','','2',self._value_);

              end;

    FirmaUzmanDegistir,FirmaDoktorDegistir :
             begin
                if self.islem_ = FirmaUzmanDegistir
                then
                  datalar.GirisFormRecord.F_Igu_ := vartostr(TcxImageComboKadir(FindComponent('Uzman')).EditValue)
                else
                 datalar.GirisFormRecord.F_Doktor_ := vartostr(TcxImageComboKadir(FindComponent('Uzman')).EditValue);
             end;

    PersonelSirketDegistir :
             begin
                 datalar.GirisFormRecord.F_firmaKod_ := vartostr(TcxImageComboKadir(FindComponent('sirketKod')).EditValue);
                 datalar.GirisFormRecord.F_sube_ := vartostr(TcxImageComboKadir(FindComponent('subeKod')).EditValue);
             end;

    yeniFaaliyet,
    FaaliyetDuzenle :
             begin
                    datalar.YillikCalismaPlan.peryod := TcxImageComboKadir(FindComponent('peryod')).EditValue;
                    datalar.YillikCalismaPlan.ocak := TcxImageComboKadir(FindComponent('ocak')).EditValue;
                    datalar.YillikCalismaPlan.subat := TcxImageComboKadir(FindComponent('subat')).EditValue;
                    datalar.YillikCalismaPlan.mart := TcxImageComboKadir(FindComponent('mart')).EditValue;
                    datalar.YillikCalismaPlan.nisan := TcxImageComboKadir(FindComponent('nisan')).EditValue;
                    datalar.YillikCalismaPlan.mayis := TcxImageComboKadir(FindComponent('mayis')).EditValue;
                    datalar.YillikCalismaPlan.haziran := TcxImageComboKadir(FindComponent('haziran')).EditValue;
                    datalar.YillikCalismaPlan.temmuz := TcxImageComboKadir(FindComponent('temmuz')).EditValue;
                    datalar.YillikCalismaPlan.agustos := TcxImageComboKadir(FindComponent('agustos')).EditValue;
                    datalar.YillikCalismaPlan.eylul := TcxImageComboKadir(FindComponent('eylul')).EditValue;
                    datalar.YillikCalismaPlan.ekim := TcxImageComboKadir(FindComponent('ekim')).EditValue;
                    datalar.YillikCalismaPlan.kasim := TcxImageComboKadir(FindComponent('kasim')).EditValue;
                    datalar.YillikCalismaPlan.aralik := TcxImageComboKadir(FindComponent('aralik')).EditValue;
                    datalar.YillikCalismaPlan.ocakR := TcxImageComboKadir(FindComponent('ocak_R')).EditValue;
                    datalar.YillikCalismaPlan.subatR := TcxImageComboKadir(FindComponent('subat_R')).EditValue;
                    datalar.YillikCalismaPlan.martR := TcxImageComboKadir(FindComponent('mart_R')).EditValue;
                    datalar.YillikCalismaPlan.nisanR := TcxImageComboKadir(FindComponent('nisan_R')).EditValue;
                    datalar.YillikCalismaPlan.mayisR := TcxImageComboKadir(FindComponent('mayis_R')).EditValue;
                    datalar.YillikCalismaPlan.haziranR := TcxImageComboKadir(FindComponent('haziran_R')).EditValue;
                    datalar.YillikCalismaPlan.temmuzR := TcxImageComboKadir(FindComponent('temmuz_R')).EditValue;
                    datalar.YillikCalismaPlan.agustosR := TcxImageComboKadir(FindComponent('agustos_R')).EditValue;
                    datalar.YillikCalismaPlan.eylulR := TcxImageComboKadir(FindComponent('eylul_R')).EditValue;
                    datalar.YillikCalismaPlan.ekimR := TcxImageComboKadir(FindComponent('ekim_R')).EditValue;
                    datalar.YillikCalismaPlan.kasimR := TcxImageComboKadir(FindComponent('kasim_R')).EditValue;
                    datalar.YillikCalismaPlan.aralikR := TcxImageComboKadir(FindComponent('aralik_R')).EditValue;


             end;

    PersonelTetkisIste :
             begin
                 datalar.PersonelTetkikler.Tetkik :=
                   TcxCheckGroupKadir(FindComponent('istemler')).getItemCheckString;


             end;

   YeniSube,SubeDuzenle :
               begin
                    datalar.FirmaSubeBilgi.SubeKodu := TcxTextEdit(FindComponent('subeKod')).EditValue;
                    datalar.FirmaSubeBilgi.SirketAdi := TcxTextEdit(FindComponent('subeTanim')).EditValue;
                    datalar.FirmaSubeBilgi.subeSiciNo :=  TcxTextEdit(FindComponent('subeSiciNo')).EditValue;
                    datalar.FirmaSubeBilgi.doktor :=  TcxTextEdit(FindComponent('subeDoktor')).EditValue;
                    datalar.FirmaSubeBilgi.IGU :=  TcxTextEdit(FindComponent('IGU')).EditValue;
                    datalar.FirmaSubeBilgi.BolgeMudurlukSicilNo :=  TcxTextEdit(FindComponent('BolgeMudurlukSicilNo')).EditValue;
                    datalar.FirmaSubeBilgi.MuayeneProtokolNo :=  TcxTextEdit(FindComponent('MuayeneProtokolNo')).EditValue;
                    datalar.FirmaSubeBilgi.DoktorCalismaDakika :=  TcxTextEdit(FindComponent('DoktorCalismaDakika')).EditValue;
                    datalar.FirmaSubeBilgi.IGUCalismaDakika :=  TcxTextEdit(FindComponent('IGUCalismaDakika')).EditValue;
                    datalar.FirmaSubeBilgi.NaceKod :=  TcxTextEdit(FindComponent('NaceKod')).EditValue;
                    datalar.FirmaSubeBilgi.tehlikeSinifi :=  TcxTextEdit(FindComponent('tehlikeSinifi')).EditValue;
                    datalar.FirmaSubeBilgi.DigerSaglikPers :=  TcxTextEdit(FindComponent('DigerSaglikPers')).EditValue;
                    datalar.FirmaSubeBilgi.DigerSaglikPersCalismaDakika :=  TcxTextEdit(FindComponent('DigerSaglikPersCalismaDakika')).EditValue;
                    datalar.FirmaSubeBilgi.Pasif :=  TcxTextEdit(FindComponent('Pasif')).EditValue;
                    datalar.FirmaSubeBilgi.SemtLokasyon :=  TcxTextEdit(FindComponent('SemtLokasyon')).EditValue;
                    datalar.FirmaSubeBilgi.calisanSayi :=  TcxTextEdit(FindComponent('calisanSayi')).EditValue;
                    datalar.FirmaSubeBilgi.Adres :=  TcxTextEdit(FindComponent('Adres')).EditValue;
                    datalar.FirmaSubeBilgi.KapaliAlan :=  TcxTextEdit(FindComponent('KapaliAlan')).EditValue;
                    datalar.FirmaSubeBilgi.AcikAlan :=  TcxTextEdit(FindComponent('AcikAlan')).EditValue;
                    datalar.FirmaSubeBilgi.BolgeKodu :=  TcxTextEdit(FindComponent('BolgeKodu')).EditValue;
               end;
   olcumEkle :
               begin
                  datalar.OrtamOlcum.Bolum := TcxImageComboKadir(FindComponent('Bolum')).EditValue;
                  datalar.OrtamOlcum.Olcumler :=  TcxCheckGroupKadir(FindComponent('Olcumler')).getItemCheckArrayOfString;

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
  Doktorlar,kulYolList,sirketKos,subeKod,tetkikIstemGrupSablon : TcxImageComboKadir;
  txtTetkikIstem : TcxCheckGroupKadir;
  TabCaption ,TahsilatOdemeTipCaption : string;
  Image1 : TcxImage;
  //Listx : TListeAc;
  ICombo : TcxImageComboKadir;
  Tarih : TcxDateEditKadir;
  ComboList : TStringList;
begin
inherited;

  btnYes.Visible := True;
  btnYes.Caption := '&Tamam';
  btnIptal.Visible := True;
  btnIptal.Caption := '&Vazgeç';
  btnIptal.TabOrder := 0;
  btnYes.TabOrder := 1;
  btnIptal.SetFocus;

//  self.Caption := PopupFormCaption(TfrmPopup(self).islem_ ,TabCaption);
  self.Caption := '';
  cxTab.Tabs[0].Caption := _caption_;

  case TfrmPopup(self).islem_ of

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

        //  setDataStringB(self,'code','&Ilaç Barkod',Kolon1,'ik',120,ilacList,True,nil,'name1','',false);

          setDataString(self,'code','&Ilaç Barkod',Kolon1,'ik',120,False,'',True);

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




          if TfrmPopup(self).islem_ = ReceteIlacDuzenle //then

         // frmPopup._islem_ = ReceteIlacDuzenle
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

          if TfrmPopup(self).islem_ in [ReceteAckDuzenle,ReceteIlacAckDuzenle]
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
          Doktorlar.Filter := ' durum = ''Aktif''';
          setDataStringKontrol(self,Doktorlar,'kod','Doktor',kolon1,'',200);


          setDataString(self,'ProtokolNo','ProtokolNo',Kolon1,'',307);
          setDataString(self,'eReceteNo','e-Reçete No',Kolon1,'',307);
          TcxButtonEditKadir(FindComponent('kod')).EditValue := datalar.YeniRecete.doktor;
         // TcxLabel(FindComponent('Labelkod')).Caption := datalar.YeniRecete.doktorAdi;
          TcxTextEdit(FindComponent('ProtokolNo')).EditValue := datalar.YeniRecete.protokolNo;
          TcxTextEdit(FindComponent('ReceteTuru')).EditValue := datalar.YeniRecete.ReceteTuru;
          TcxTextEdit(FindComponent('ReceteAltTuru')).EditValue := datalar.YeniRecete.ReceteAltTuru;
          TcxTextEdit(FindComponent('ReceteTarih')).EditValue := datalar.YeniRecete.Tarih;
           TcxTextEdit(FindComponent('eReceteNo')).EditValue := datalar.YeniRecete.takipNo;
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

   FirmaUzmanDegistir,FirmaDoktorDegistir :
       begin
          ClientHeight := 200;
          ClientWidth := 310;

          Doktorlar := TcxImageComboKadir.Create(self);
          Doktorlar.Conn := Datalar.ADOConnection2;
          Doktorlar.ValueField := 'Kod';
          Doktorlar.DisplayField := 'Tanimi';

          if frmPopup.islem_ = FirmaUzmanDegistir
          Then begin
            Doktorlar.TableName := 'IGU';
            setDataStringKontrol(self,Doktorlar, 'Uzman','Ýþ Güvenlik Uzmaný',Kolon1,'',120);
          end
          Else begin
            Doktorlar.TableName := 'DoktorlarT';
            setDataStringKontrol(self,Doktorlar, 'Uzman','Ýþ Yeri Hekimi',Kolon1,'',120);
          end;
          Doktorlar.Filter := ' durum = ''Aktif''';


       end;

   PersonelSirketDegistir :
       begin
          ClientHeight := 250;
          ClientWidth := 330;

          setDataStringBLabel(self,'ackSatir',kolon1,'',300,'Ýþlem Görmeyen Kartlar Taþýnacaktýr');

          Doktorlar := TcxImageComboKadir.Create(self);
          Doktorlar.Name := 'sirketKod';
      //    Doktorlar.Tag := -20;
          Doktorlar.Conn := Datalar.ADOConnection2;
          Doktorlar.TableName := 'SIRKETLER_TNM';
          Doktorlar.ValueField := 'sirketKod';
          Doktorlar.DisplayField := 'Tanimi';
          Doktorlar.Filter := ' aKtif = 1';
          TcxImageComboKadir(FindComponent('sirketKod')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
          setDataStringKontrol(self,Doktorlar, 'sirketKod','Firma',Kolon1,'',250);


          Doktorlar := TcxImageComboKadir.Create(self);
          Doktorlar.Name := 'subeKod';
          Doktorlar.Conn := Datalar.ADOConnection2;
          Doktorlar.TableName := 'SIRKETLER_TNM_view';
          Doktorlar.ValueField := 'subeKod';
          Doktorlar.DisplayField := 'subeTanim';
         // Doktorlar.Filter := '';
          setDataStringKontrol(self,Doktorlar, 'subeKod','Þube',Kolon1,'',120);


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
          Doktorlar.Filter := ' durum = ''Aktif''';
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
            Doktorlar.Filter := ' durum = ''Aktif''';
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
          if DATALAR.SifreDegistir.SifreyiDoldur then
            TcxTextEdit(FindComponent('MevcutSifre')).Text := DATALAR.SifreDegistir.Sifre;
          ClientHeight := 250;
          ClientWidth := 400;
          if DATALAR.SifreDegistir.SifreyiDoldur then
            TcxTextEdit(FindComponent('YeniSifre')).SetFocus
           else
            TcxTextEdit(FindComponent('MevcutSifre')).SetFocus;
       end;

    userSifre :
       begin
          Caption := _caption_;
          cxTab.Tabs[0].Caption := datalar.SifreDegistir.KullaniciAdi;
          cxTab.Tabs[0].ImageIndex := 38;
          setDataString(self,'YeniSifre','Yeni Þifre',Kolon1,'',100);
          setDataString(self,'YeniSifreTekrar','Yeni Þifre Tekrar',Kolon1,'',100);
          TcxTextEdit(FindComponent('YeniSifre')).Properties.EchoMode := eemPassword;
          TcxTextEdit(FindComponent('YeniSifre')).Properties.PasswordChar := '*';
          TcxTextEdit(FindComponent('YeniSifreTekrar')).Properties.EchoMode := eemPassword;
          TcxTextEdit(FindComponent('YeniSifreTekrar')).Properties.PasswordChar := '*';


          ClientHeight := 235;
          ClientWidth := 350;



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
         Doktorlar.Filter := ' SirketKod = ' + QuotedStr(_SahaDenetimVeri_.FirmaKod) + ' and (Pasif = 0 or Pasif is Null)';


         doktorlar := TcxImageComboKadir.Create(self);
         doktorlar.Conn := Datalar.ADOConnection2;
         doktorlar.TableName := 'SahaGozlemSoruGrup';
         doktorlar.ValueField := 'GozlemGrup';
         doktorlar.DisplayField := 'Tanimi';
         doktorlar.BosOlamaz := True;
         doktorlar.Filter := '';
         Doktorlar.Properties.ReadOnly := (frmPopup.islem_ = GozlemDuzenle);
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

 yeniRisk ,
 riskDuzenle :    begin
                    ClientHeight := 650;
                    ClientWidth := 460;

                    ICombo := TcxImageComboKadir.Create(self);
                    ICombo.Name := 'RiskBolum';
                    ICombo.Tag := -1;
                    ICombo.Conn := datalar.ADOConnection2;
                    ICombo.TableName := 'RDS_RiskBolum';
                    ICombo.ValueField := 'Kod';
                    ICombo.DisplayField := 'tanimi';
                    ICombo.Filter := '';
                    setDataStringKontrol(self,ICombo,'RiskBolum','Risk Bölümü',Kolon1,'RB',250);
                    addButton(self,nil,'btnRiskBolumEkle','','Ekle',Kolon1,'RB',40,ButtonClick,20);
                    TcxImageComboKadir(FindComponent('RiskBolum')).EditValue := datalar.Risk.Bolum;


                    ICombo := TcxImageComboKadir.Create(self);
                    ICombo.Name := 'TehlikeKaynak';
                    ICombo.Tag := -1;
                    ICombo.Properties.DropDownRows := 20;
                    ICombo.Conn := datalar.ADOConnection2;

                    case datalar.Risk.Method of
                     1,2 : begin
                              if datalar.Risk.SektorId = ''
                              then
                               ICombo.TableName := 'RDS_TehlikeKaynak'
                              else
                              ICombo.TableName := '(select * from RDS_RiskKaynakSektorEslesmeTablosu ES ' +
                                                  ' join RDS_TehlikeKaynak TK on TK.kod = ES.TehlikeKaynagi ' +
                                                  ' where sektorid = ' + datalar.Risk.SektorId+ ') T ';

                              ICombo.ValueField := 'Kod';
                              ICombo.DisplayField := 'tanimi';
                              ICombo.Filter := ' Method is null';
                     end;
                        3 : begin
                              ICombo.TableName := 'RDS_TehlikeKaynak';
                              ICombo.ValueField := 'Kod';
                              ICombo.DisplayField := 'tanimi';
                              ICombo.Filter := ' Method = ' + vartostr(datalar.Risk.Method);
                            end;
                    end;


                    setDataStringKontrol(self,ICombo,'TehlikeKaynak','Tehlike Kaynaðý',Kolon1,'TK',250);
                    addButton(self,nil,'btnTehlikeKaynakEkle','','Ekle',Kolon1,'TK',40,ButtonClick,21);
                    TcxImageComboKadir(FindComponent('TehlikeKaynak')).EditValue := datalar.Risk.TehlikeKaynagi;

                 (*
                    ICombo := TcxImageComboKadir.Create(self);
                    ICombo.Name := 'Tehlike';
                    ICombo.Tag := -100;
                    ICombo.Conn := datalar.ADOConnection2;
                    ICombo.TableName := 'RDS_Tehlike';
                    ICombo.ValueField := 'Kod';
                    ICombo.DisplayField := 'tanimi';
                    ICombo.Filter := '';
                    setDataStringKontrol(self,ICombo,'Tehlike','Tehlike',Kolon1,'',300);
                   *)
                    setDataStringB(self,'Tehlike','Tehlike',Kolon1,'Teh',250,List,False,nil,'','',False,True,-100);
                    addButton(self,nil,'btnTehlikeEkle','','Ekle',Kolon1,'Teh',40,ButtonClick,23);
                    TcxButtonEditKadir(FindComponent('Tehlike')).Properties.OnButtonClick := PropertiesButtonClick;
                    TcxButtonEditKadir(FindComponent('Tehlike')).EditValue := datalar.Risk.Tehlike;



                    ICombo := TcxImageComboKadir.Create(self);
                    ICombo.Name := 'Etkilenecekler';
                 //   ICombo.Tag := 100;
                    ICombo.Conn := datalar.ADOConnection2;
                    ICombo.TableName := 'RDS_Etkilenecekler';
                    ICombo.ValueField := 'Kod';
                    ICombo.DisplayField := 'tanimi';
                    ICombo.Filter := '';
                    setDataStringKontrol(self,ICombo,'Etkilenecekler','Etkilenecekler',Kolon1,'Etki',250);
                    addButton(self,nil,'btnEtkileneceklerEkle','','Ekle',Kolon1,'Etki',40,ButtonClick,24);
                    TcxImageComboKadir(FindComponent('Etkilenecekler')).EditValue := datalar.Risk.Etkilenecek;

                    setDataStringB(self,'Risk_tanimi','Risk Taným',Kolon1,'',250,List,False,nil,'','',False,True,-100);
                    TcxButtonEditKadir(FindComponent('Risk_tanimi')).Properties.OnButtonClick := PropertiesButtonClick;
                    TcxImageComboKadir(FindComponent('Risk_tanimi')).EditValue := datalar.Risk.Risk_tanim;

                    setDataStringMemo(self,'Onlemler','Alýnmasý Gereken Önlem',Kolon1,'',250,80);
                    TcxMemo(FindComponent('Onlemler')).text := datalar.Risk.Onlemler;

                    ICombo := TcxImageComboKadir.Create(self);
                    ICombo.Name := 'Olasilik';
                    ICombo.Tag := -100;
                    ICombo.Conn := datalar.ADOConnection2;
                    ICombo.TableName := 'RDS_OLASILIK';
                    ICombo.ValueField := 'degeri';
                    ICombo.DisplayField := 'tanimi';
                    ICombo.Filter := ' Metod = ' + vartostr(datalar.Risk.Method);

                    setDataStringKontrol(self,ICombo,'Olasilik','Olasýlýk',Kolon1,'',250);
                    TcxImageComboKadir(FindComponent('Olasilik')).Properties.OnEditValueChanged := PropertiesEditValueChanged;

                  //  if datalar.Risk.Method = 1  // FineKenny
                //    then begin
                     ICombo := TcxImageComboKadir.Create(self);
                     ICombo.Name := 'Frekans';
                     ICombo.Tag := -100;
                     ICombo.Conn := datalar.ADOConnection2;
                     ICombo.TableName := 'RDS_Frekans';
                     ICombo.ValueField := 'degeri';
                     ICombo.DisplayField := 'tanimi';
                     ICombo.Filter := ' Method = ' + vartostr(datalar.Risk.Method);

                     case datalar.Risk.Method of
                       3 : setDataStringKontrol(self,ICombo,'Frekans','Saptanabilirlik',Kolon1,'',250);
                       1 : setDataStringKontrol(self,ICombo,'Frekans','Frekans',Kolon1,'',250);
                     end;


                     TcxImageComboKadir(FindComponent('Frekans')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
                 //   end;

                    ICombo := TcxImageComboKadir.Create(self);
                    ICombo.Name := 'Siddet';
                    ICombo.Tag := -100;
                    ICombo.Conn := datalar.ADOConnection2;
                    ICombo.TableName := 'RDS_SIDDET';
                    ICombo.ValueField := 'degeri';
                    ICombo.DisplayField := 'tanimi';
                    ICombo.Filter := 'Metod = ' + vartostr(datalar.Risk.Method);
                    setDataStringKontrol(self,ICombo,'Siddet','Þiddet',Kolon1,'',250);
                    TcxImageComboKadir(FindComponent('Siddet')).Properties.OnEditValueChanged := PropertiesEditValueChanged;

                    setDataStringCurr(self,'Risk','Risk',Kolon1,'',80);

                    TcxImageComboKadir(FindComponent('Olasilik')).EditValue := datalar.Risk.Olasilik;
                    case datalar.Risk.Method of
                     1,3 :  TcxImageComboKadir(FindComponent('Frekans')).EditValue := datalar.Risk.Frekans;
                    end;
                    TcxImageComboKadir(FindComponent('Siddet')).EditValue := datalar.Risk.Siddet;


                    setDataStringMemo(self,'MevcutOnlem','Mevcut Önlemler',Kolon1,'',250,80);
                    TcxMemo(FindComponent('MevcutOnlem')).text := datalar.Risk.MevcutOnlem;

                    setDataString(self,'Sorumlu','Sorumlu',Kolon1,'',120);
                    TcxTextEditKadir(FindComponent('Sorumlu')).EditValue := datalar.Risk.Sorumlu;

                    ICombo := TcxImageComboKadir.Create(self);
                    ICombo.Name := 'TerminTipleri';
                   // ICombo.Tag := -100;
                    ICombo.Conn := datalar.ADOConnection2;
                    ICombo.TableName := 'TerminTipleri';
                    ICombo.ValueField := 'kod';
                    ICombo.DisplayField := 'tanimi';
                    ICombo.Filter := '';
                    setDataStringKontrol(self,ICombo,'TerminTipleri','Termin Sure',Kolon1,'',100);
                    TcxImageComboKadir(FindComponent('TerminTipleri')).EditValue := datalar.Risk.TerminSure;

                    Tarih := TcxDateEditKadir.Create(self);
                    setDataStringKontrol(self,Tarih, 'Termin','Termin Tarihi',Kolon1,'',100);
                    TcxTextEditKadir(FindComponent('Termin')).EditValue := datalar.Risk.Termin;

                 //   setDataStringKontrol(self,Tarih, 'Gercek','Gerçekleþme Tarihi',Kolon1,'',100);
                  //  TcxTextEditKadir(FindComponent('Gercek')).EditValue := datalar.Risk.Gerceklesme;


                    Tarih := TcxDateEditKadir.Create(self);
                    setDataStringKontrol(self,Tarih, 'Gercek','Gerçekleþme Tarihi',Kolon1,'',100);
                    TcxTextEditKadir(FindComponent('Gercek')).EditValue := datalar.Risk.Gerceklesme;

                    ICombo := TcxImageComboKadir.Create(self);
                    ICombo.Name := 'Olasilik_2';
                    ICombo.Tag := -2;
                    TcxImageComboKadir(FindComponent('Olasilik_2')).Properties.Items :=
                    TcxImageComboKadir(FindComponent('Olasilik')).Properties.Items;
                    setDataStringKontrol(self,ICombo,'Olasilik_2','Olasýlýk',Kolon1,'',250);
                    TcxImageComboKadir(FindComponent('Olasilik_2')).Tag := -2;
                    TcxImageComboKadir(FindComponent('Olasilik_2')).Properties.OnEditValueChanged := PropertiesEditValueChanged;

                    if (datalar.Risk.Method = 1) or (datalar.Risk.Method = 3)
                    then begin
                      ICombo := TcxImageComboKadir.Create(self);
                      ICombo.Name := 'Frekans_2';
                      ICombo.Tag := -2;
                      TcxImageComboKadir(FindComponent('Frekans_2')).Properties.Items :=
                      TcxImageComboKadir(FindComponent('Frekans')).Properties.Items;
                      case datalar.Risk.Method of
                        3 : setDataStringKontrol(self,ICombo,'Frekans_2','Saptanabilirlik',Kolon1,'',250);
                        1 : setDataStringKontrol(self,ICombo,'Frekans_2','Frekans',Kolon1,'',250);
                      end;
                      TcxImageComboKadir(FindComponent('Frekans_2')).Tag := -2;
                      TcxImageComboKadir(FindComponent('Frekans_2')).Properties.OnEditValueChanged := PropertiesEditValueChanged;
                    end;

                    ICombo := TcxImageComboKadir.Create(self);
                    ICombo.Name := 'Siddet_2';
                    ICombo.Tag := -2;
                    TcxImageComboKadir(FindComponent('Siddet_2')).Properties.Items :=
                    TcxImageComboKadir(FindComponent('Siddet')).Properties.Items;
                    setDataStringKontrol(self,ICombo,'Siddet_2','Þiddet',Kolon1,'',250);
                    TcxImageComboKadir(FindComponent('Siddet_2')).Tag := -2;
                    TcxImageComboKadir(FindComponent('Siddet_2')).Properties.OnEditValueChanged := PropertiesEditValueChanged;

                    setDataStringCurr(self,'Risk_2','Risk',Kolon1,'',80);

                    TcxImageComboKadir(FindComponent('Olasilik_2')).EditValue := datalar.Risk.Olasilik_2;
                    if (datalar.Risk.Method = 1) or (datalar.Risk.Method = 3)
                    Then TcxImageComboKadir(FindComponent('Frekans_2')).EditValue := datalar.Risk.Frekans_2;
                    TcxImageComboKadir(FindComponent('Siddet_2')).EditValue := datalar.Risk.Siddet_2;

                    setDataStringMemo(self,'yasalDayanak','Yasal Dayanak',Kolon1,'',250,80);
                    TcxMemo(FindComponent('yasalDayanak')).text := datalar.Risk.yasalDayanak;

                    Image1 := TcxImage.Create(self);
                    Image1.Properties.GraphicClassName := 'TJPEGImage';
                    setDataStringKontrol(self,Image1,'ImageResim','Image',Kolon1,'',300,300);
                  //  datalar.Risk.Image.Picture.SaveToFile('dd.jpg');
                    try
                     TcxImage(FindComponent('ImageResim')).Picture := datalar.Risk.Image.Picture;
                    finally
                    end;
                    addButton(self,nil,'btnResimEkle','','Resim Ekle',Kolon1,'',100,ButtonClick,98);


               end;
  yeniFaaliyet,
  FaaliyetDuzenle :
               begin
                    ClientHeight := 500;
                    ClientWidth := 300;
                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'FaaliyetKonulari';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := True;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'FaaliyetKonulari','Faaliyet Konulari',Kolon1,'',150);
                    Doktorlar.EditValue := datalar.YillikCalismaPlan.faliyetid;

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'KontrolPeryodTipleri';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := True;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'KontrolPeryodTipleri','Peryot',Kolon1,'',100);

                    CalismaplaninaAylarikoy;
                    TcxImageComboKadir(FindComponent('peryod')).EditValue := datalar.YillikCalismaPlan.peryod;
                    TcxImageComboKadir(FindComponent('ocak')).EditValue := datalar.YillikCalismaPlan.ocak;
                    TcxImageComboKadir(FindComponent('subat')).EditValue := datalar.YillikCalismaPlan.subat;
                    TcxImageComboKadir(FindComponent('mart')).EditValue := datalar.YillikCalismaPlan.mart;
                    TcxImageComboKadir(FindComponent('nisan')).EditValue := datalar.YillikCalismaPlan.nisan;
                    TcxImageComboKadir(FindComponent('mayis')).EditValue := datalar.YillikCalismaPlan.mayis;
                    TcxImageComboKadir(FindComponent('haziran')).EditValue := datalar.YillikCalismaPlan.mayis;
                    TcxImageComboKadir(FindComponent('temmuz')).EditValue := datalar.YillikCalismaPlan.mayis;
                    TcxImageComboKadir(FindComponent('agustos')).EditValue := datalar.YillikCalismaPlan.mayis;
                    TcxImageComboKadir(FindComponent('eylul')).EditValue := datalar.YillikCalismaPlan.mayis;
                    TcxImageComboKadir(FindComponent('ekim')).EditValue := datalar.YillikCalismaPlan.mayis;
                    TcxImageComboKadir(FindComponent('kasim')).EditValue := datalar.YillikCalismaPlan.mayis;
                    TcxImageComboKadir(FindComponent('aralik')).EditValue := datalar.YillikCalismaPlan.mayis;
                    TcxImageComboKadir(FindComponent('ocak_R')).EditValue := datalar.YillikCalismaPlan.ocakR;
                    TcxImageComboKadir(FindComponent('subat_R')).EditValue := datalar.YillikCalismaPlan.subatR;
                    TcxImageComboKadir(FindComponent('mart_R')).EditValue := datalar.YillikCalismaPlan.martR;
                    TcxImageComboKadir(FindComponent('nisan_R')).EditValue := datalar.YillikCalismaPlan.nisanR;
                    TcxImageComboKadir(FindComponent('mayis_R')).EditValue := datalar.YillikCalismaPlan.mayisR;
                    TcxImageComboKadir(FindComponent('haziran_R')).EditValue := datalar.YillikCalismaPlan.mayisR;
                    TcxImageComboKadir(FindComponent('temmuz_R')).EditValue := datalar.YillikCalismaPlan.mayisR;
                    TcxImageComboKadir(FindComponent('agustos_R')).EditValue := datalar.YillikCalismaPlan.mayisR;
                    TcxImageComboKadir(FindComponent('eylul_R')).EditValue := datalar.YillikCalismaPlan.mayisR;
                    TcxImageComboKadir(FindComponent('ekim_R')).EditValue := datalar.YillikCalismaPlan.mayisR;
                    TcxImageComboKadir(FindComponent('kasim_R')).EditValue := datalar.YillikCalismaPlan.mayisR;
                    TcxImageComboKadir(FindComponent('aralik_R')).EditValue := datalar.YillikCalismaPlan.mayisR;

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := nil;
                    Doktorlar.ItemList := 'Ýþyeri Hekimi;1,Ýþ Güvenliði Uzm.;2,ÝÞ GÜVENLÝÐÝ UZMANI/ÝÞ YERÝ HEKÝMÝ;3,ÝÞVEREN;4,ÝÞ GÜVENLÝÐÝ UZMANI/ÝÞVEREN;5';
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'Sorumlu1','Sorumlu',Kolon1,'',100);

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := nil;
                    Doktorlar.ItemList := 'TAKÝP;1,KATILIM;2,TESPÝT;3,ÖNERÝ;4,KATILIM VE ÖNERÝ;5,PLANLAMAVE TAKÝBÝ;6,UYGULAMA;7,ÖNERÝ VE PLANLAMA;8,EÐÝTÝM ÖNERÝ;9,KONTROL VE HAZIRLIK;10,EÐÝTÝM ALINMASI;11,EÐÝTÝM UYGULAMASI;12';
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'Sorumlu1Konu','Sorumlu',Kolon1,'',100);

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := nil;
                    Doktorlar.ItemList := 'Ýþyeri Hekimi;1,Ýþ Güvenliði Uzm.;2,ÝÞ GÜVENLÝÐÝ UZMANI/ÝÞ YERÝ HEKÝMÝ;3,ÝÞVEREN;4,ÝÞ GÜVENLÝÐÝ UZMANI/ÝÞVEREN;5';
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'Sorumlu2','Sorumlu',Kolon1,'',100);

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := nil;
                    Doktorlar.ItemList := 'TAKÝP;1,KATILIM;2,TESPÝT;3,ÖNERÝ;4,KATILIM VE ÖNERÝ;5,PLANLAMAVE TAKÝBÝ;6,UYGULAMA;7,ÖNERÝ VE PLANLAMA;8,EÐÝTÝM ÖNERÝ;9,KONTROL VE HAZIRLIK;10,EÐÝTÝM ALINMASI;11,EÐÝTÝM UYGULAMASI;12';
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'Sorumlu2Konu','Sorumlu',Kolon1,'',100);

               end;

   yeniGozetim,gozetimDuzenle :
               begin
                    ClientHeight := 500;
                    ClientWidth := 500;
                    setDataStringMemo(self,'Tespitler','Tespitler',Kolon1,'',250,80);
                    TcxMemo(FindComponent('Tespitler')).text := datalar.Risk.Onlemler;

                    (*
                    Image1 := TcxImage.Create(self);
                    Image1.Properties.GraphicClassName := 'TJPEGImage';
                    setDataStringKontrol(self,Image1,'ImageResim','Image',Kolon1,'',300,300);
                     *)
                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'RDS_RiskBolum';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := True;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'Bolum','Bölüm',Kolon1,'',150);
                    Doktorlar.EditValue := datalar.Risk.SSGBolum;

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'SahaGozetimFaaliyetTuru';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := True;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'YapilacakFaliyetTuru','Yapýlacak Faaliyet Türü',Kolon1,'',150);
                    Doktorlar.EditValue := datalar.Risk.SSGYapilacakFaliyetTuru;

                    setDataStringMemo(self, 'KokNeden', 'Kok Neden', kolon1, '', 250,50);
                    TcxTextEdit(FindComponent('KokNeden')).Text := datalar.Risk.SSGKokNeden;

                    setDataStringMemo(self, 'FaliyetPlan', 'Faaliyet Plan', kolon1, '', 250,50);
                    TcxTextEdit(FindComponent('FaliyetPlan')).Text := datalar.Risk.SSGFaliyetPlan;

                    _Tarih_ := TcxDateEditKadir.Create(self);
                    _Tarih_.Name := 'UygulanacakFaliyetTarihi';
                    setDataStringKontrol(self,_Tarih_, 'UygulanacakFaliyetTarihi','Uygulanacak Faaliyet Tarihi',Kolon1,'',100);
                    TcxTextEdit(FindComponent('UygulanacakFaliyetTarihi')).Text := datalar.Risk.SSGUygulanacakFaliyetTarihi;
                    setDataString(self, 'BolumYetkilisi', 'Bolum Yetkilisi', kolon1, '', 200);
                    TcxTextEdit(FindComponent('BolumYetkilisi')).Text := datalar.Risk.SSGBolumYetkilisi;

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'SahaGozetimTakipTetkikSonuc';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := True;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'Sonuc','Takip Tetkik Sonucu',Kolon1,'',150);
                    Doktorlar.EditValue := datalar.Risk.SSGSonuc;

                    setDataStringMemo(self, 'YapilanFaliyet', 'Yapýlan Faaliyet', kolon1, '', 250,50);
                    TcxTextEdit(FindComponent('YapilanFaliyet')).Text := datalar.Risk.SSGYapilanFaliyet;

                    _Tarih_ := TcxDateEditKadir.Create(self);
                    _Tarih_.Name := 'FaliyetKapamaTarihi';
                    setDataStringKontrol(self,_Tarih_, 'FaliyetKapamaTarihi','Kapatma Tarihi',Kolon1,'',100);
                    TcxTextEdit(FindComponent('FaliyetKapamaTarihi')).Text := datalar.Risk.SSGFaliyetKapamaTarihi;

                    _Tarih_ := TcxDateEditKadir.Create(self);
                    _Tarih_.Name := 'TakipSüresi';
                    setDataStringKontrol(self,_Tarih_, 'TakipSüresi','Takip Süresi',Kolon1,'',100);
                    TcxTextEdit(FindComponent('TakipSüresi')).Text := datalar.Risk.SSGTakipSüresi;


                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Name := 'KapamaOnayi';
                    Doktorlar.Conn := nil;
                    Doktorlar.ItemList := '1;Evet,0;Hayýr';
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'KapamaOnayi','Kapama Onayi',kolon1,'',50);
                    Doktorlar.EditValue := datalar.Risk.SSGKapamaOnayi;
                  //  datalar.Risk.Image.Picture.SaveToFile('dd.jpg');
                   (*
                    try
                     TcxImage(FindComponent('ImageResim')).Picture := datalar.Risk.Image.Picture;
                    finally
                    end;
                     *)
                   // addButton(self,nil,'btnResimEkle','','Resim Ekle',Kolon1,'',100,ButtonClick,99);

               end;

   yeniDenetim,denetimDuzenle :
               begin
                    ClientHeight := 500;
                    ClientWidth := 500;
                    setDataStringMemo(self,'TehlikeliDurum','Tehlikeli Durum',Kolon1,'',250,80);
                    TcxMemo(FindComponent('TehlikeliDurum')).text := datalar.SahaDenetim.TehlikeliDurum;

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'RDS_RiskBolum';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := True;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'Bolum','Bölüm',Kolon1,'',150);
                    Doktorlar.EditValue := datalar.SahaDenetim.Bolum;



                    setDataStringMemo(self, 'Yonetmelik', 'Yonetmelik - Ek Açýklama', kolon1, '', 250,50);
                    TcxTextEdit(FindComponent('Yonetmelik')).Text := datalar.SahaDenetim.Yonetmelik;

                    setDataString(self, 'IlgiliKisi', 'Bolum Yetkilisi', kolon1, '', 200);
                    TcxTextEdit(FindComponent('IlgiliKisi')).Text := datalar.SahaDenetim.IlgiliKisi;


                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Name := 'KapamaOnayi';
                    Doktorlar.Conn := nil;
                    Doktorlar.ItemList := '1;Baþladý,2;Planlandý,3;Tamamlandý';
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'isinDurumu','Ýþin Durumu',kolon1,'',50);
                    Doktorlar.EditValue := datalar.SahaDenetim.isinDurumu;
                  //  datalar.Risk.Image.Picture.SaveToFile('dd.jpg');

                    Image1 := TcxImage.Create(self);
                    Image1.Properties.GraphicClassName := 'TJPEGImage';
                    setDataStringKontrol(self,Image1,'ImageResim','Image',Kolon1,'',300,300);

                    try
                     TcxImage(FindComponent('ImageResim')).Picture := datalar.SahaDenetim.Image.Picture;
                    finally
                    end;

                    addButton(self,nil,'btnResimEkle','','Resim Ekle',Kolon1,'',100,ButtonClick,99);

               end;

    yeniKKD,KKDDuzenle :
               begin
                  ClientHeight := 500;
                  ClientWidth := 500;
                 (*
                  uzuv := TcxImageComboKadir.Create(self);
                  uzuv.Conn := datalar.ADOConnection2;
                  uzuv.TableName := 'Uzuvlar';
                  uzuv.ValueField := 'Kod';
                  uzuv.DisplayField := 'tanimi';
                  uzuv.Filter := '';
                  setDataStringKontrol(self,uzuv,'VucutKisim','Vücut Kýsým',Kolon1,'',150);
                  TcxImageComboKadir(FindComponent('VucutKisim')).Text := datalar.KKD.VucutKisim;
                  *)
                  setDataStringB(self,'VucutKisim','Vücut Kýsým',Kolon1,'',150,List,False,nil,'','',False,True,-100);
                  TcxButtonEditKadir(FindComponent('VucutKisim')).Properties.OnButtonClick := PropertiesButtonClick;
                  TcxButtonEditKadir(FindComponent('VucutKisim')).EditText := datalar.KKD.VucutKisim;
               (*
                  uzuv := TcxImageComboKadir.Create(self);
                  uzuv.Conn := datalar.ADOConnection2;
                  uzuv.TableName := 'Uzuvlar';
                  uzuv.ValueField := 'Kod';
                  uzuv.DisplayField := 'tanimi';
                  uzuv.Filter := '';
                  setDataStringKontrol(self,uzuv,'VucutUzuv','Vücut Uzuv',Kolon1,'',150);
                  TcxImageComboKadir(FindComponent('VucutUzuv')).EditText := datalar.KKD.VucutUzuv;
                 *)
                  setDataStringB(self,'VucutUzuv','Vücut Uzuv',Kolon1,'',150,List,False,nil,'','',False,True,-100);
                  TcxButtonEditKadir(FindComponent('VucutUzuv')).Properties.OnButtonClick := PropertiesButtonClick;
                  TcxButtonEditKadir(FindComponent('VucutUzuv')).EditText := datalar.KKD.VucutUzuv;
                (*
                  uzuv := TcxImageComboKadir.Create(self);
                  uzuv.Name := 'KKD';
                  uzuv.Tag := -100;
                  uzuv.Conn := datalar.ADOConnection2;
                  uzuv.TableName := 'KKD';
                  uzuv.ValueField := 'Kod';
                  uzuv.DisplayField := 'tanimi';
                  uzuv.Filter := '';
                  setDataStringKontrol(self,uzuv,'KKD','Kullanýlacak KKD',Kolon1,'kk',150);
                  *)
                  setDataStringB(self,'KKD','Kiþisel Donaným',Kolon1,'kk',150,List,False,nil,'','',False,True,-100);
                  TcxButtonEditKadir(FindComponent('KKD')).Properties.OnButtonClick := PropertiesButtonClick;
                  TcxButtonEditKadir(FindComponent('KKD')).EditText := datalar.KKD.KKD;
                  addButton(self,nil,'btnKKDEkle','','Ekle',Kolon1,'kk',40,ButtonClick,22);

                  setDataStringB(self,'TS_EN_KODLARI','Ulusal Standart',Kolon1,'',150,List,False,nil,'','',False,True,-100);
                  TcxButtonEditKadir(FindComponent('TS_EN_KODLARI')).Properties.OnButtonClick := PropertiesButtonClick;
                  TcxButtonEditKadir(FindComponent('TS_EN_KODLARI')).EditText := datalar.KKD.TSE;

                  setDataString(self,'KullanilacakIS','KullanilacakIS',Kolon1,'',250);
                  TcxTextEditKadir(FindComponent('KullanilacakIS')).EditingText := datalar.KKD.KullanilacakIs;

                  ICombo := TcxImageComboKadir.Create(self);
                  ICombo.Name := 'RiskBolum';
                  ICombo.Tag := -1;
                  ICombo.Conn := datalar.ADOConnection2;
                  ICombo.TableName := 'RDS_RiskBolum';
                  ICombo.ValueField := 'Kod';
                  ICombo.DisplayField := 'tanimi';
                  ICombo.Filter := '';
                  setDataStringKontrol(self,ICombo,'RiskBolum','Risk Bölümü',Kolon1,'',250);
              //    addButton(self,nil,'btnRiskBolumEkle','','Ekle',Kolon1,'RB',40,ButtonClick,20);
                  TcxImageComboKadir(FindComponent('RiskBolum')).EditValue := datalar.KKD.Bolum;

                  (*
                  setDataStringB(self,'Risk_tanimi','Risk Taným',Kolon1,'',250,List,False,nil,'','',False,True,-100);
                  TcxButtonEditKadir(FindComponent('Risk_tanimi')).Properties.OnButtonClick := PropertiesButtonClick;
                  TcxImageComboKadir(FindComponent('Risk_tanimi')).EditValue := datalar.Risk.Risk_tanim;
                    *)

               end;


   yeniRiskBolum ,
   yeniTehlikeKaynak,
   yeniTehlike,
   yeniEkilenecekler,
   yeniKKDEkle
              :
              begin
                 ClientHeight := 200;
                 ClientWidth := 330;
                 kolon2.Width := 0;
                 kolon3.Width := 0;
                 kolon4.Width := 0;
                 case TfrmPopup(self).islem_ of
                   yeniRiskBolum : setDataString(self,'RiskBolum','Risk Bölüm',Kolon1,'',200,True,'',False,0,'',ecUpperCase);
                   yeniTehlikeKaynak : setDataString(self,'TehlikeKaynak','Tehlike Kaynaðý',Kolon1,'',200,True,'',False,0,'',ecUpperCase);
                   yeniTehlike : setDataString(self,'Tehlike','Tehlike',Kolon1,'',200,True,'',False,0,'',ecUpperCase);
                   yeniEkilenecekler : setDataString(self,'yeniEkilenecekler','Ekilenecekler',Kolon1,'',200,True,'',False,0,'',ecUpperCase);
                   yeniKKDEkle : setDataString(self,'KKD','Kiþisel Koruyucu Donaným',Kolon1,'',200,True,'',False,0,'',ecUpperCase);
                 end;


              end;
   riskRaporuPaylas,
   sahaGozetimPaylas
              : begin
                   ClientHeight := 200;
                   ClientWidth := 330;
                   kolon2.Width := 0;
                   kolon3.Width := 0;
                   kolon4.Width := 0;

                   Doktorlar := TcxImageComboKadir.Create(self);
                   Doktorlar.Conn := Datalar.ADOConnection2;
                   Doktorlar.Name := 'paylasilan';
                   Doktorlar.TableName := 'users';
                   Doktorlar.ValueField := 'Kullanici';
                   Doktorlar.DisplayField := 'ADISOYADI';
                   Doktorlar.Filter := '';
                   setDataStringKontrol(self,Doktorlar, 'paylasilan','Kullanýcý',Kolon1,'',180);
                end;



   FaturaTahsilatEkle,
   CekTahsilat ,
   OdemeEkle
              : begin
                    ClientHeight := 350;
                    ClientWidth := 300;
                    TahsilatOdemeTipCaption := ifThen(TfrmPopup(self).islem_ = OdemeEkle,'Ödeme Tip','Tahsilat Tip');

                    List := TListeAc.Create(nil);
                    List.Table := '(select c.id,c.VadeTarihi,tutar, evrakNo, aciklama,isnull(S.tanimi,'')+isnull(T.tanimi,'') tanimi '+
                                   ' from cari_cekler c ' +
                                   ' left join SIRKETLER_TNM S on s.sirketKod = c.sirketKod '+
                                   ' left join  cari_Tedarikciler T on T.kod = c.TedarikciKod '+
                                   ' where c.Durum = 1) t ';

                    List.kolonlar.Add('id');// := Ts;
                    List.kolonlar.Add('VadeTarihi');// := Ts;
                    List.kolonlar.Add('tutar');// := Ts;
                    List.kolonlar.Add('evrakNo'); // := Ts;
                    List.kolonlar.Add('aciklama'); // := Ts;
                    List.kolonlar.Add('tanimi'); // := Ts;


                    List.KolonBasliklari.Add('CekID');// := Ts1;
                    List.KolonBasliklari.Add('Vade');// := Ts1;
                    List.KolonBasliklari.Add('Tutar');// := Ts1;
                    List.KolonBasliklari.Add('Çek No');// := Ts1;
                    List.KolonBasliklari.Add('Açýklama');// := Ts1;
                    List.KolonBasliklari.Add('Tanimi');// := Ts1;

                    List.TColcount := 5;
                    List.TColsW := '40,80,80,200,200,50';
                    List.ListeBaslik := 'Çekler';
                    List.Conn := Datalar.ADOConnection2;

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'cari_OdemeTip';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := True;
                    Doktorlar.Filter := '';
                    Doktorlar.tag := -3;
                    setDataStringKontrol(self,Doktorlar,'OdemeTip',TahsilatOdemeTipCaption,Kolon1,'',150);
                    TcxImageComboKadir(FindComponent('OdemeTip')).Properties.OnEditValueChanged := PropertiesEditValueChanged;

                    setDataStringB(self,'CekId','Çek Bilgisi',Kolon1,'ÇB',70,List,False,nil,'','',False,True,-100);

                    TcxButtonEditKadir(FindComponent('CekId')).Properties.OnButtonClick := cxButtonEditPropertiesButtonClick;
                  //  setDataString(self,'evrakNo','Evrak No',Kolon1,'',70,False,'',False,-100);
                    addButton(self,nil,'btnyeniCek','','Çek Ekle',Kolon1,'ÇB',80,ButtonClick,30);
                   // TcxButton(FindComponent('btnyeniCek')).Visible := False;

                    _Tarih_ := TcxDateEditKadir.Create(self);
                    _Tarih_.Name := 'Tarih';
                    setDataStringKontrol(self,_Tarih_, 'Tarih','Tarih',Kolon1,'',100);
                    TcxDateEditKadir(FindComponent('Tarih')).EditValue := date;

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'cari_Hesaplar';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := True;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'HesapKod','Hesap',Kolon1,'',150);


                    _Tarih_ := TcxDateEditKadir.Create(self);
                    _Tarih_.Name := 'VadeTarih';
                    setDataStringKontrol(self,_Tarih_, 'VadeTarih','Vade Tarihi',Kolon1,'',100);
                    TcxDateEditKadir(FindComponent('VadeTarih')).EditValue := date;
                    TcxDateEditKadir(FindComponent('VadeTarih')).Visible := False;


                    setDataStringCurr(self,'Tutar','Meblað',Kolon1,'',100,',0.00');
                    TcxCurrencyEdit(FindComponent('Tutar')).EditValue := datalar.CariHareket.tutar;

                    setDataString(self,'Aciklama','Açýklama',Kolon1,'',200,True,'',False,0,'',ecUpperCase);


                    TcxImageComboKadir(FindComponent('OdemeTip')).EditValue := 1;

                    case TfrmPopup(self).islem_ of
                      CekTahsilat : TcxImageComboKadir(FindComponent('OdemeTip')).Enabled := false;
                    end;

                end;

   yeniCek :  begin

                    ClientHeight := 350;
                    ClientWidth := 300;

                    setDataString(self,'evrakNo','Evrak No',Kolon1,'',70,False,'',False,-100);


                    _Tarih_ := TcxDateEditKadir.Create(self);
                    _Tarih_.Name := 'Tarih';
                    setDataStringKontrol(self,_Tarih_, 'VadeTarihi','Vade Tarihi',Kolon1,'',100);
                    TcxDateEditKadir(FindComponent('VadeTarihi')).EditValue := date;

                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'cari_CariKartView';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := True;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'sirketKod','Kimden',Kolon1,'',150);

                     Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'cari_CariKartView';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := True;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'TedarikciKod','Kime',Kolon1,'',150);


                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := Datalar.ADOConnection2;
                    Doktorlar.TableName := 'cari_CekDurum';
                    Doktorlar.ValueField := 'kod';
                    Doktorlar.DisplayField := 'tanimi';
                    Doktorlar.BosOlamaz := False;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'Durum','Durum',Kolon1,'',150);


                    Doktorlar := TcxImageComboKadir.Create(self);
                    Doktorlar.Conn := nil;
                    Doktorlar.ItemList := 'G;Giren,C;Çýkan';
                    Doktorlar.BosOlamaz := False;
                    Doktorlar.Filter := '';
                    setDataStringKontrol(self,Doktorlar,'Tip','Tip',Kolon1,'',150);


                    setDataStringCurr(self,'Tutar','Meblað',Kolon1,'',100,',0.00');


                    setDataString(self,'Aciklama','Açýklama',Kolon1,'',200,True,'',False,0,'',ecUpperCase);


              end;


   PersonelTetkisIste :
               begin
                      ClientHeight := 320;
                      tetkikIstemGrupSablon := TcxImageComboKadir.Create(self);
                      tetkikIstemGrupSablon.Conn := datalar.ADOConnection2;
                      tetkikIstemGrupSablon.TableName := 'tetkikIstemGrupSablon';
                      tetkikIstemGrupSablon.ValueField := 'kod';
                      tetkikIstemGrupSablon.DisplayField := 'tanimi';
                      tetkikIstemGrupSablon.Filter := '';
                      setDataStringKontrol(self,tetkikIstemGrupSablon,'tetkikIstemGrupSablon','',kolon1,'',250);
                      TcxImageComboKadir(FindComponent('tetkikIstemGrupSablon')).Properties.OnEditValueChanged := PropertiesEditValueChanged;

                      txtTetkikIstem := TcxCheckGroupKadir.Create(self);
                      txtTetkikIstem.Properties.EditValueFormat := cvfStatesString;
                      txtTetkikIstem.Alignment := alCenterCenter;
                      txtTetkikIstem.Conn := Datalar.ADOConnection2;
                      txtTetkikIstem.Name := 'txtTetkikIstem';
                      txtTetkikIstem.TableName := 'TetkikIstemSablonItem';
                      txtTetkikIstem.ValueField := 'id';
                      txtTetkikIstem.DisplayField := 'tanimi';
                      setDataStringKontrol(self,txtTetkikIstem,'istemler','',Kolon1,'',250,150);

               end;
   YeniSube,SubeDuzenle :
               begin
                  cxTab.Width := 150;
                  ClientHeight := 700;
                  ClientWidth := 460;
                  TableName := 'SIRKET_SUBE_TNM';
                  setDataString(self,'subeKod','Þube Kodu',Kolon1,'aa',50,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('subeKod')).EditValue := datalar.FirmaSubeBilgi.SubeKodu;
                  setDataString(self,'subeTanim','Þube Tanýmý',Kolon1,'',150,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('subeTanim')).EditValue := datalar.FirmaSubeBilgi.SirketAdi;

                  setDataStringIC(self,'BolgeKodu','Bölge',Kolon1,'sat',120,'SCH_BolgeTanimlari','kod','tanimi');
                  TcxImageComboKadir(FindComponent('BolgeKodu')).EditValue := datalar.FirmaSubeBilgi.BolgeKodu;

                  setDataString(self,'subeSiciNo','Þube Sicil No',Kolon1,'',240,True,'',False,0,'',ecUpperCase,'9-0009-09-09-9999999-099-09-09-000');
                  TcxTextEdit(FindComponent('subeSiciNo')).EditValue := datalar.FirmaSubeBilgi.subeSiciNo;

                  setDataStringIC(self,'subeDoktor','Doktor',kolon1,'',150,'DoktorlarT','kod','tanimi','Durum = ''Aktif''');
                  TcxImageComboKadir(FindComponent('subeDoktor')).EditValue := datalar.FirmaSubeBilgi.doktor;
                  setDataStringIC(self,'IGU','ÝþG.Uzmaný',kolon1,'',150,'IGU','kod','tanimi','Durum = ''Aktif''');
                  TcxImageComboKadir(FindComponent('IGU')).EditValue := datalar.FirmaSubeBilgi.IGU;

                  setDataStringKontrol(self,cxGridKadir1,'cxGridKadir1','Yardýmcý Uzmanlar',Kolon1,'',150,100,alNone,'',clLeft);
                  cxGridKadir1.Visible := True;
                  cxGridKadir1.Dataset.BeforePost := BeforePost;
                  cxGridKadir1.Dataset.Connection := datalar.ADOConnection2;
                  cxGridKadir1.Dataset.SQL.Text := 'select * from SIRKET_SUBE_IGU where sirketKod = ' + QuotedStr(datalar.FirmaSubeBilgi.SirketKodu) +
                                                   ' and subeKod = ' + QuotedStr(datalar.FirmaSubeBilgi.SubeKodu);
                  cxGridKadir1.Dataset.Open;

                  TcxImageComboBoxProperties(Grid.Columns[0].Properties).Items :=
                   TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('IGU')).Properties).Items;




                  setDataString(self,'BolgeMudurlukSicilNo','Müdürlük Sicil No',Kolon1,'',100,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('BolgeMudurlukSicilNo')).EditValue := datalar.FirmaSubeBilgi.BolgeMudurlukSicilNo;
                  setDataString(self,'MuayeneProtokolNo','Protokol No',Kolon1,'',100,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('MuayeneProtokolNo')).EditValue := datalar.FirmaSubeBilgi.MuayeneProtokolNo;
                  setDataString(self,'DoktorCalismaDakika','Doktor Çalýþma Dakika',Kolon1,'',100,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('DoktorCalismaDakika')).EditValue := datalar.FirmaSubeBilgi.DoktorCalismaDakika;
                  setDataString(self,'IGUCalismaDakika','Uzm. Çalýþma Dakika',Kolon1,'',100,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('IGUCalismaDakika')).EditValue := datalar.FirmaSubeBilgi.IGUCalismaDakika;

                  setDataStringB(self,'NaceKod','Nace Kodu',Kolon1,'',100,List,False,nil,'','',False,True);
                  TcxButtonEditKadir(FindComponent('NaceKod')).Properties.OnButtonClick := NaceKodPropertiesButtonClick;
                  TcxTextEdit(FindComponent('NaceKod')).EditValue := datalar.FirmaSubeBilgi.NaceKod;

                  setDataStringIC(self,'tehlikeSinifi','Tehlike Sýnýfý',kolon1,'',150,'TehlikeSiniflari','TehlikeSinifi','tanimi');
                  TcxImageComboKadir(FindComponent('tehlikeSinifi')).EditValue := datalar.FirmaSubeBilgi.tehlikeSinifi;
                  setDataStringIC(self,'DigerSaglikPers','Saðlýk Personeli',kolon1,'',150,'DigerSaglikPersonel','kod','tanimi');
                  TcxImageComboKadir(FindComponent('DigerSaglikPers')).EditValue := datalar.FirmaSubeBilgi.DigerSaglikPers;
                  setDataString(self,'DigerSaglikPersCalismaDakika','D.Saðlýk Per. Çalýþma Dak.',Kolon1,'',100,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('DigerSaglikPersCalismaDakika')).EditValue := datalar.FirmaSubeBilgi.DigerSaglikPersCalismaDakika;

                  setDataStringChk (Self, 'Pasif', 'Þube Pasif Edilsin', Kolon1, 'aa', 120);

                 // setDataString(self,'Pasif','Aktif',Kolon1,'',100,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('Pasif')).EditValue := datalar.FirmaSubeBilgi.Pasif;

                  setDataString(self,'SemtLokasyon','Lokasyon',Kolon1,'',100,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('SemtLokasyon')).EditValue := datalar.FirmaSubeBilgi.SemtLokasyon;
                  setDataString(self,'calisanSayi','Çalýþan Sayýsý',Kolon1,'',100,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('calisanSayi')).EditValue := datalar.FirmaSubeBilgi.calisanSayi;
                  setDataString(self,'Adres','Adres',Kolon1,'',300,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('Adres')).EditValue := datalar.FirmaSubeBilgi.Adres;
                  setDataString(self,'KapaliAlan','Kapalý Alan(m2)',Kolon1,'',50,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('KapaliAlan')).EditValue := datalar.FirmaSubeBilgi.KapaliAlan;
                  setDataString(self,'AcikAlan','Açýk Alan(m2)',Kolon1,'',50,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('AcikAlan')).EditValue := datalar.FirmaSubeBilgi.AcikAlan;

               end;
   olcumEkle :
               begin
                  cxTab.Width := 150;
                  ClientHeight := 600;
                  ClientWidth := 450;
                  setDataStringIC(self,'Bolum','Bolum Seçin',kolon1,'',150,'RDS_RiskBolum','kod','tanimi');
                  TcxImageComboKadir(FindComponent('Bolum')).EditValue := datalar.OrtamOlcum.Bolum;

                  Olcumler.Conn := Datalar.ADOConnection2;
                  Olcumler.TableName := 'OrtamOlcumTipleri';
                  Olcumler.Filter := '';
                  setDataStringKontrol(self,Olcumler,'Olcumler','',kolon1,'',250,250);




               end;

      PersonelBelgeDuzenle,yeniPersonelBelge :
            begin
                  cxTab.Width := 150;
                  ClientHeight := 400;
                  ClientWidth := 400;

                  setDataString(self,'id','ID',Kolon1,'',50,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('id')).EditValue := datalar.PersonelBelge.id;

                  setDataStringIC(self,'BelgeTip','Belge Tip',Kolon1,'',150,'Personel_BelgeTipleri','kod','tanimi');
                  TcxImageComboKadir(FindComponent('BelgeTip')).EditValue := datalar.PersonelBelge.BelgeTip;

                  _Tarih_ := TcxDateEditKadir.Create(self);
                  _Tarih_.Name := 'BelgeTarihi';
                  setDataStringKontrol(self,_Tarih_, 'BelgeTarihi','Belge Tarihi',Kolon1,'',100);
                  TcxDateEditKadir(FindComponent('BelgeTarihi')).EditValue := datalar.PersonelBelge.BelgeTarihi;

                  _Tarih_ := TcxDateEditKadir.Create(self);
                  _Tarih_.Name := 'GecerlilikTarihi';
                  setDataStringKontrol(self,_Tarih_, 'GecerlilikTarihi','Geçerlilik Tarihi',Kolon1,'',100);
                  TcxDateEditKadir(FindComponent('GecerlilikTarihi')).EditValue := datalar.PersonelBelge.GecerlilikTarihi;


                  setDataString(self,'AlinanKurum','Alýnan Kurum',Kolon1,'',200,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('AlinanKurum')).EditValue := datalar.PersonelBelge.AlinanKurum;

                  setDataStringChk (Self, 'Durum', 'Aktif', Kolon1, '', 50);
                  TcxCheckBox(FindComponent('Durum')).Properties.Alignment := taRightJustify;
                  TcxCheckBox(FindComponent('Durum')).Properties.ValueChecked := 1;
                  TcxCheckBox(FindComponent('Durum')).Properties.ValueGrayed := 0;
                  TcxCheckBox(FindComponent('Durum')).Properties.ValueUnchecked := 0;
                  TcxCheckBox(FindComponent('Durum')).EditValue := datalar.PersonelBelge.Durum;
            end;

      PersonelLevelDuzenle,yeniPersonelLevel :
            begin
                  cxTab.Width := 150;
                  ClientHeight := 400;
                  ClientWidth := 400;

                  setDataString(self,'id','ID',Kolon1,'',50,True,'',False,0,'',ecUpperCase);
                  TcxTextEdit(FindComponent('id')).EditValue := datalar.PersonelLevel.id;

                  _Tarih_ := TcxDateEditKadir.Create(self);
                  _Tarih_.Name := 'GecerlilikTarihi';
                  setDataStringKontrol(self,_Tarih_, 'Tarih','Tarihi',Kolon1,'',100);
                  TcxDateEditKadir(FindComponent('Tarih')).EditValue := datalar.PersonelLevel.Tarih;

                  setDataStringIC(self,'Tip','Deðerlendirme Tip',Kolon1,'',150,'Personel_Degerlendirme_tipleri','kod','tanimi');
                  TcxImageComboKadir(FindComponent('Tip')).EditValue := datalar.PersonelLevel.Tip;

                  setDataStringMemo(self,'Aciklama','Açýklama',Kolon1,'',250,100);
                  TcxMemo(FindComponent('Aciklama')).text := datalar.PersonelLevel.Aciklama;

                  ComboList := TStringList.Create;
                  Try
                   ComboList.Add('1');ComboList.Add('2');ComboList.Add('3');ComboList.Add('4');
                   setDataStringC(self,'personelLevel','Seviye',Kolon1,'',50,ComboList);
                  Finally
                    ComboList.free;
                  End;

                  TcxComboBox(FindComponent('personelLevel')).EditValue := datalar.PersonelLevel.personelLevel;
                  TcxComboBox(FindComponent('personelLevel')).Properties.OnEditValueChanged := PropertiesEditValueChanged;

                  setDataStringIC(self,'Durum','Durum',Kolon1,'',150,'Personel_Degerlendirme_Durum','kod','tanimi');
                  TcxImageComboKadir(FindComponent('Durum')).EditValue := datalar.PersonelLevel.Durum;

                  // seviye sadece admin tarafýndan deðiþtirilebilir.
                  if datalar.UserGroup = '1' then
                   TcxComboBox(FindComponent('personelLevel')).Enabled := True
                  else
                   TcxComboBox(FindComponent('personelLevel')).Enabled := False;
              //    addButton(self,nil,'btnPersonelLevelBelgeYukle','','Belge Ekle',Kolon1,'',80,ButtonClick,30);

            end;

  end;



end;

procedure TfrmPopup.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
(*
  if TcxButtonEditKadir(sender).Name = 'CekId'
  then begin
    if TcxButtonEditKadir(sender).Text <> ''
    then begin
      TcxTextEdit(FindComponent('evrakNo')).Text := TcxButtonEditKadir(sender).kolon3;
      TcxTextEdit(FindComponent('evrakNo')).Properties.ReadOnly := True;
    end
    else
    begin
      TcxTextEdit(FindComponent('evrakNo')).Text := '';
      TcxTextEdit(FindComponent('evrakNo')).Properties.ReadOnly := False;
    end;

  end;
  *)
end;

procedure TfrmPopup.PropertiesEditValueChanged(Sender: TObject);
begin
  inherited;

  if TcxComboBox(sender).Name = 'personelLevel'
  Then begin
    if TcxComboBox(sender).EditValue < 4
    Then
      TcxImageComboKadir(FindComponent('Durum')).EditValue := 1
       else
         TcxImageComboKadir(FindComponent('Durum')).EditValue := 2;

  end;

  if TcxImageComboKadir(sender).Name = 'tetkikIstemGrupSablon'
  Then begin
    TcxCheckGroupKadir(FindComponent('istemler')).Filter := ' SablonGrupKod = ' +
      vartoStr(TcxImageComboKadir(FindComponent('tetkikIstemGrupSablon')).EditValue);
  end;

  if TcxImageComboKadir(sender).Name = 'sirketKod'
  Then begin
    TcxImageComboKadir(FindComponent('subeKod')).Filter :=
    ' sirketKod = ' + QuotedStr(vartoStr(TcxImageComboKadir(FindComponent('sirketKod')).EditValue));
  end;

  if TcxImageComboKadir(sender).Tag = -3
  Then begin
    if TcxImageComboKadir(FindComponent('OdemeTip')).EditingValue = 1
    Then begin
     TdxLayoutItem(FindComponent('dxLaVadeTarih')).Visible := False;
     TdxLayoutItem(FindComponent('dxLaHesapKod')).Visible := True;
     TdxLayoutItem(FindComponent('dxLacekID')).Visible := False;
     TdxLayoutItem(FindComponent('dxLaBbtnyeniCek')).Visible := False;
    end
    else
    begin
     TdxLayoutItem(FindComponent('dxLaVadeTarih')).Visible := True;
     TdxLayoutItem(FindComponent('dxLaHesapKod')).Visible := False;
     TdxLayoutItem(FindComponent('dxLacekID')).Visible := True;
     TdxLayoutItem(FindComponent('dxLaBbtnyeniCek')).Visible := True;
    end;
  end
  else
  if TcxImageComboKadir(sender).Tag = -2
  Then begin
   case  datalar.Risk.Method of
     1,3 : TcxCurrencyEdit(FindComponent('Risk_2')).EditValue :=
          TcxImageComboKadir(FindComponent('Olasilik_2')).EditValue *
          TcxImageComboKadir(FindComponent('Frekans_2')).EditValue*
          TcxImageComboKadir(FindComponent('Siddet_2')).EditValue;
     2 : TcxCurrencyEdit(FindComponent('Risk_2')).EditValue :=
          TcxImageComboKadir(FindComponent('Olasilik_2')).EditValue *
          TcxImageComboKadir(FindComponent('Siddet_2')).EditValue;
   end;
  end
  else
  if TcxImageComboKadir(sender).Tag = -5
  Then begin



  end
  else if TcxImageComboKadir(sender).Tag = -100
  then begin
   case  datalar.Risk.Method of
     1,3 : TcxCurrencyEdit(FindComponent('Risk')).EditValue :=
          TcxImageComboKadir(FindComponent('Olasilik')).EditValue *
          TcxImageComboKadir(FindComponent('Frekans')).EditValue*
          TcxImageComboKadir(FindComponent('Siddet')).EditValue;
     2 : TcxCurrencyEdit(FindComponent('Risk')).EditValue :=
          TcxImageComboKadir(FindComponent('Olasilik')).EditValue *
          TcxImageComboKadir(FindComponent('Siddet')).EditValue;
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

