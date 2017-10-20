unit PersonelEgitimFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel;



type
  TfrmPersonelEgitim = class(TGirisForm)
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'Personel_Egitim';
      formGenislik = 500;
      formYukseklik = 500;

var
  frmPersonelEgitim: TfrmPersonelEgitim;


implementation

{$R *.dfm}
procedure TfrmPersonelEgitim.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
  end;
end;

procedure TfrmPersonelEgitim.ButtonClick(Sender: TObject);
var
  ID : integer;
begin
  TcxTextEditKadir(FindComponent('TDisID')).EditValue := ID;
end;

procedure TfrmPersonelEgitim.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmPersonelEgitim.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmPersonelEgitim.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmPersonelEgitim.FormCreate(Sender: TObject);
var
  index,i : integer;
  Ts,Ts1 : TStringList;
  List,List1,List3 : TListeAc;
  kombo : TcxImageComboKadir;
begin
  Tag := TagfrmPersonelEgitim;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
  indexFieldName := 'id';
  TableName := _TableName_;
  Olustur(self,_TableName_,'Personel Eðitimleri',22);


  List := TListeAc.Create(nil);

  List.Table := 'Personel_Egitim';

  List.kolonlar.Add('id');// := Ts;
  List.kolonlar.Add('EgitimKod');// := Ts;
  List.kolonlar.Add('BaslamaTarihi'); // := Ts;


  List.KolonBasliklari.Add('ID');// := Ts1;
  List.KolonBasliklari.Add('Eðitim Kodu');// := Ts1;
  List.KolonBasliklari.Add('Baþlama Tarihi');// := Ts1;
  List.TColcount := 3;
  List.TColsW := '50,200,20';
  List.ListeBaslik := 'Eðitimler';
  List.Name := 'id';
  List.Conn := Datalar.ADOConnection2;
  List.SkinName := 'coffee';//AnaForm.dxSkinController1.SkinName;

  setDataStringB(self,'id','Eðitim NO.',Kolon1,'',70,List,True,nil);

  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := Datalar.ADOConnection2;
  kombo.TableName := 'Egitim_tnm';
  kombo.ValueField := 'kod';
  kombo.DisplayField := 'tanimi';
  kombo.BosOlamaz := True;
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'Egitimkod','Eðitim Kodu',kolon1,'',120);


  _HastaAdSoyad_
id
PersonelDosyaNo

BaslamaTarihi
BaslamaSaati
BitisTarihi
Sure
Egitimci
EgitimTuru
EgitimYeri
SertifikaNo
EgitimIcerigi
EgitimUcreti
EgitimUcretParaBirimi
EgitimUcretiOdendi

  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := Datalar.ADOConnection2;
  kombo.TableName := 'DoktorlarT';
  kombo.ValueField := 'kod';
  kombo.DisplayField := 'tanimi';
  kombo.BosOlamaz := True;
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'Doktor','Doktor',kolon1,'',120);{}


  setDataStringB(self,'kod','Doktor Kodu',Kolon1,'',70,List,True,nil);

  setDataString(self,'tanimi','Adý Soyadý',Kolon1,'',200,True);
  setDataString(self,'tcKimlikNo','TC Kimlik No',Kolon1,'',150,True);

  bransKodu := TcxImageComboKadir.Create(self);
  bransKodu.Conn := Datalar.ADOConnection2;
  bransKodu.TableName := 'SERVIS_TNM';
  bransKodu.ValueField := 'kod';
  bransKodu.DisplayField := 'tanimi';
  bransKodu.BosOlamaz := True;
  bransKodu.Filter := '';
  OrtakEventAta(bransKodu);
  setDataStringKontrol(self,bransKodu,'bransKodu','Branþ Kodu',kolon1,'',120);{}



  setDataString(self,'tescilNo','Tescil No',Kolon1,'',80,True);
  setDataString(self,'eReceteKullanici','Reçete Kullanýcý Adý',Kolon1,'cc',100,True);
  setDataString(self,'eReceteSifre','Reçete Þifresi',Kolon1,'',100,True);
  setDataString(self,'pin','Ýmza Token Pin',Kolon1,'',50);
  setDataString(self,'TesisKodu','Tesis Kodu',Kolon1,'',100);
  setDataString(self,'GSM','GSM',Kolon1,'',100);
  setDataString(self,'EPosta','E-Posta',Kolon1,'',200);
 // setDataString(self,'TDisID','TDis ID',Kolon1,'TDIS',80);
 // addButton(self,nil,'btnTDis','','TDIS ID Getir',Kolon1,'TDIS',120,ButtonClick);
  setDataString(self,'sertifika','Sertifika',Kolon1,'',80);


  calismaTipi := TcxImageComboKadir.Create(self);
  calismaTipi.Conn := nil;
  calismaTipi.BosOlamaz := True;
  calismaTipi.ItemList := '0;Tam Zamanlý,1;Yarý Zamanlý';
  calismaTipi.Filter := '';
  OrtakEventAta(calismaTipi);
  setDataStringKontrol(self,calismaTipi,'calismaTipi','Çalýþma Tipi',kolon1,'',120);
   {}
  setDataStringC(self,'uzman','Uzman mý?',Kolon1,'',80,'Evet,Hayýr');
  setDataStringC(self,'durum','Durum',Kolon1,'',80,'Aktif,Pasif');

  setDataStringBLabel(self,'CalismaBilgisi',sayfa2_Kolon1,'',290,'Seans Çalýþma Bilgisi');
  TcxLabel(FindComponent('labelCalismaBilgisi')).Properties.Alignment.Horz := taCenter;
  setDataStringC(self,'pazartesi','Pazatesi',sayfa2_Kolon1,'',80,'0,1,1-2,1-3,2,2-3,3');
  setDataStringC(self,'sali','Salý',sayfa2_Kolon1,'',80,'0,1,1-2,1-3,2,2-3,3');
  setDataStringC(self,'carsamba','Çarþamba',sayfa2_Kolon1,'',80,'0,1,1-2,1-3,2,2-3,3');
  setDataStringC(self,'persembe','Perþembe',sayfa2_Kolon1,'',80,'0,1,1-2,1-3,2,2-3,3');
  setDataStringC(self,'cuma','Cuma',sayfa2_Kolon1,'',80,'0,1,1-2,1-3,2,2-3,3');
  setDataStringC(self,'cumartesi','Cumartesi',sayfa2_Kolon1,'',80,'0,1,1-2,1-3,2,2-3,3');

 // setDataImage(self,'foto','Foto',Kolon2,'',120,100);

  SayfaCaption('Taným Bilgileri','Çalýþma Bilgileri','','','');


  Disabled(self,True);
 end;





function TfrmPersonelEgitim.Init(Sender: TObject): Boolean;
begin
  result := inherited;
  _HastaBilgileriniCaptionGoster_ := True;
end;

procedure TfrmPersonelEgitim.cxKaydetClick(Sender: TObject);
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
