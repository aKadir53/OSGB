unit IsKazasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel;



type
  TfrmIsKazasi = class(TGirisForm)
    PersonelList: TListeAc;
    Kazalar: TListeAc;
    PopupMenu1: TPopupMenu;
    Y1: TMenuItem;
    TaniList: TListeAc;
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const _TableName_ = 'IsKazalari';
      formGenislik = 750;
      formYukseklik = 650;

var
  frmIsKazasi: TfrmIsKazasi;


implementation


{$R *.dfm}
procedure TfrmIsKazasi.cxButtonCClick(Sender: TObject);
var
  Ado : TADOQuery;
  sql : string;
  TopluDataset : TDataSetKadir;
begin
  inherited;
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'sp_frmKazaTutanagiYazdir ' + TcxButtonEditKadir(FindComponent('ID')).Text;
    datalar.QuerySelect(ado, sql);
    TopluDataset.Dataset0 := ado;
    TopluDataset.Dataset0.Name := 'IsKazalari';
    PrintYap('003','Ýþ Kazasý Tutanak','',TopluDataset,pTNone);
  finally
    ado.free;
  end;
end;

procedure TfrmIsKazasi.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
  end;
end;

procedure TfrmIsKazasi.ButtonClick(Sender: TObject);
begin
//
end;

procedure TfrmIsKazasi.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmIsKazasi.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmIsKazasi.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmIsKazasi.FormCreate(Sender: TObject);
var
  uzuv : TcxImageComboKadir;
  Tarih,KTarih,TaniTarih : TcxDateEditKadir;
  bolum,bolumM,GorenVar,HstSapSekli : TcxImageComboKadir;
begin
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  indexFieldName := 'ID';
  TableName := _TableName_;
  Menu := PopupMenu1;

  setDataStringB(self,'ID','Sýra No',Kolon1,'',70,Kazalar,True,nil,'HASTAADI','',False,True,-100);
  setDataStringB(self,'PersonelDosyaNo','Personel Bilgisi',Kolon1,'Per',70,PersonelList,False,nil,'Adi','',False,True);
  setDataStringBLabel(self,'PersonelDosyaNo',Kolon3,'per',150,'','','');

  Tarih := TcxDateEditKadir.Create(self);
  Tarih.ValueTip := tvDate;
  setDataStringKontrol(self,Tarih,'DuzenlemeTarihi','Duzenleme Tarihi',kolon1,'',120);
  Tarih.Tag := 1;
  KTarih := TcxDateEditKadir.Create(self);
  KTarih.ValueTip := tvDate;
  setDataStringKontrol(self,KTarih,'KazaTarihi','Kaza Tarihi',kolon1,'',120);
  KTarih.Tag := 2;

  setDataString(self,'KazaTarihiIsBasiSaati','Kaza Günü Ýþ Baþý Saat',Kolon1,'',50,True);
  setDataString(self,'YaralanmaSekli','Yaralanma Þekli',Kolon1,'',250,True);

  bolum := TcxImageComboKadir.Create(self);
  bolum.Conn := Datalar.ADOConnection2;
  bolum.TableName := 'Bolumler';
  bolum.ValueField := 'kod';
  bolum.DisplayField := 'tanimi';
  bolum.Filter := '';
  bolum.BosOlamaz := True;
  setDataStringKontrol(self,bolum,'KazaninMeydanaGelBolum','Meydana Geldiði Bölüm',kolon1,'',120);
  OrtakEventAta(bolum);

  uzuv := TcxImageComboKadir.Create(self);
  uzuv.Conn := Datalar.ADOConnection2;
  uzuv.TableName := 'uzuvlar';
  uzuv.ValueField := 'kod';
  uzuv.DisplayField := 'tanimi';
  uzuv.BosOlamaz := True;
  uzuv.Filter := '';
  OrtakEventAta(uzuv);
  setDataStringKontrol(self,uzuv,'KazadaYaralananUzuv','Yaralanan Uzuv',kolon1,'',120);

  setDataStringBLabel(self,'baslik0',Kolon2,'',300,'Meslek Hastalýðý','','');
  TaniTarih := TcxDateEditKadir.Create(self);
  TaniTarih.ValueTip := tvDate;
  setDataStringKontrol(self,TaniTarih,'MeslekHastTaniTarihi','Tani Tarihi',kolon2,'',120);
  TaniTarih.Tag := 3;

  setDataStringB(self,'MeslekHastTani','Taný Bilgisi',Kolon2,'tani',70,TaniList,False,nil,'TANI','',False,True);
  setDataStringBLabel(self,'MeslekHastTani',Kolon2,'tani',150,'','','');


  bolumM := TcxImageComboKadir.Create(self);
  bolumM.Properties.Items := Bolum.Properties.Items;
(*
  bolumM.Conn := Datalar.ADOConnection2;
  bolumM.TableName := 'Bolumler';
  bolumM.ValueField := 'kod';
  bolumM.DisplayField := 'tanimi';
  bolumM.Filter := '';
  bolumM.BosOlamaz := True;   *)
  setDataStringKontrol(self,bolumM,'MeslekHastTaniileSevkEdilenPerCalBolumIs','Çalýþtýðý Bölüm',kolon2,'',120);
  OrtakEventAta(bolumM);

  HstSapSekli := TcxImageComboKadir.Create(self);
  HstSapSekli.Conn := nil;
  HstSapSekli.ItemList := '0;Peryodik Muayene,1;Meslek Hast.Hastanesi,2;Diðer';
  HstSapSekli.Filter := '';
  HstSapSekli.BosOlamaz := True;
  setDataStringKontrol(self,HstSapSekli,'MeslekHastSaptanmaSekli','Hastalýk Saptanma Þekli',kolon2,'',120);
  OrtakEventAta(HstSapSekli);


  setDataStringBLabel(self,'baslik1',Kolon1,'',300,'Kaza Sonucu Ölü / Yaralý Durumlarý','','');
  setDataStringCurr(self,'KazaSonucuOluSayisi','  Ölü Sayýsý',Kolon1,'',50,'0',1);
  setDataStringCurr(self,'KazaSonucuYaraliSayisi','  Yaralý Sayýsý',Kolon1,'',50,'0',2);
  setDataStringCurr(self,'KazaSonucuUzuvKaybi','  Uzuv Kaybý',Kolon1,'',50,'0',3);
  setDataStringCurr(self,'KazaSonucuHafifYarali','  Hafif Yaralý Sayýsý',Kolon1,'',50,'0',4);

  setDataStringBLabel(self,'baslik2',Kolon2,'',300,'','','');
  setDataStringBLabel(self,'baslik3',Kolon2,'',300,'','','');
  setDataStringBLabel(self,'baslik4',Kolon2,'',300,'','','');
  setDataStringBLabel(self,'baslik5',Kolon2,'',300,'Kaza Sonucu Ýstirahat Alma Durumlarý','','');

  setDataStringCurr(self,'KazaSonucuBirGunIstirahatAlan','  Bir Gün',Kolon2,'',50,'0',1);
  setDataStringCurr(self,'KazaSonucuikiGunIstirahatAlan','  Ýki Gün',Kolon2,'',50,'0',2);
  setDataStringCurr(self,'KazaSonucuUcGunIstirahatAlan','  Üç Gün',Kolon2,'',50,'0',3);
  setDataStringCurr(self,'KazaSonucuUcGunFazlaIstirahatAlan','  Üç Günden Fazla',Kolon2,'',50,'0',4);



  setDataStringBLabel(self,'baslik20',Kolon1,'',300,'Kazayý Gören Þahit Bilgileri','','');
  GorenVar := TcxImageComboKadir.Create(self);
  GorenVar.Conn := nil;
  GorenVar.ItemList := '1;Evet,0;Hayýr';
  GorenVar.BosOlamaz := True;
  GorenVar.Filter := '';
  OrtakEventAta(GorenVar);
  setDataStringKontrol(self,GorenVar,'KazaGorenVarmi','Gören Var mý?',kolon1,'',120);
  setDataString(self,'Sahit1','  1.Þahit',Kolon1,'',200,True);
  setDataString(self,'Sahit1Adres','  Adres',Kolon1,'',200,True);
  setDataString(self,'Sahit2','  2.Þahit',Kolon1,'',200,True);
  setDataString(self,'Sahit2Adres','  Adres',Kolon1,'',200,True);
  setDataString(self,'Sahit3','  3.Þahit',Kolon1,'',200,True);
  setDataString(self,'Sahit3Adres','  Adres',Kolon1,'',200,True);

  setDataStringMemo(self,'KazaSebebOlusSekli','Kaza Sebeb',Kolon1,'',200,80);
  //þube kodu ekle

  SayfaCaption('Ýþ Kazasý','','','','');


  Disabled(self,True);


 end;





procedure TfrmIsKazasi.cxKaydetClick(Sender: TObject);
begin
  inherited;
  case TcxButton(sender).Tag  of
    0 : begin
        // ShowMessage('Kaydet');
        // ButonClick(self,'k');
      //   Olustur(self,'Users');
      //   setDataString(self,'ADISOYADI',100,10);

        end;
    1 : begin
         // post;
         //ShowMessage('Ýptal');
    end;
  end;
end;

end.
