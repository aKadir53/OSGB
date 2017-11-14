unit About_Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, cxImage;



type
  TfrmAbout = class(TGirisForm)
    Image1abx: TcxImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const _TableName_ = 'DoktorlarT';
      formGenislik = 500;
      formYukseklik = 500;

var
  frmAbout: TfrmAbout;


implementation

{$R *.dfm}
procedure TfrmAbout.FormCreate(Sender: TObject);
var
  List : TListeAc;
  bransKodu,calismaTipi : TcxImageComboKadir;
begin
  Tag := TagfrmAbout;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  indexFieldName := 'kod';
  TableName := _TableName_;
  Olustur(self,_TableName_,'Doktor Taným',22);


  List := TListeAc.Create(nil);

  List.Table := 'DoktorlarT';

  List.kolonlar.Add('kod');// := Ts;
  List.kolonlar.Add('tanimi'); // := Ts;


  List.KolonBasliklari.Add('Doktor Kodu');// := Ts1;
  List.KolonBasliklari.Add('Doktor Adi');// := Ts1;
  List.TColcount := 2;
  List.TColsW := '50,200';
  List.ListeBaslik := 'Doktorlar';
  List.Name := 'kod';
  List.Conn := Datalar.ADOConnection2;
  List.SkinName := 'coffee';//AnaForm.dxSkinController1.SkinName;

  setDataImage(self,'Image1abx','Foto',Kolon1,'',155,121);
  setDataStringB(self,'kod','Doktor Kodu',Kolon2,'',70,List,True,nil);

  setDataString(self,'tanimi','Adý Soyadý',Kolon2,'',200,True);
  setDataString(self,'tcKimlikNo','TC Kimlik No',Kolon2,'',150,True);

  bransKodu := TcxImageComboKadir.Create(self);
  bransKodu.Conn := Datalar.ADOConnection2;
  bransKodu.TableName := 'SERVIS_TNM';
  bransKodu.ValueField := 'kod';
  bransKodu.DisplayField := 'tanimi';
  bransKodu.BosOlamaz := True;
  bransKodu.Filter := '';
  OrtakEventAta(bransKodu);
  setDataStringKontrol(self,bransKodu,'bransKodu','Branþ Kodu',Kolon2,'',120);



  setDataString(self,'tescilNo','Tescil No',Kolon2,'',80,True);
  setDataString(self,'eReceteKullanici','Reçete Kullanýcý Adý',Kolon2,'cc',100,True);
  setDataString(self,'eReceteSifre','Reçete Þifresi',Kolon2,'',100,True);
  setDataString(self,'pin','Ýmza Token Pin',Kolon2,'',50);
  setDataString(self,'TesisKodu','Tesis Kodu',Kolon2,'',100);
  setDataString(self,'GSM','GSM',Kolon2,'',100);
  setDataString(self,'EPosta','E-Posta',Kolon2,'',200);
 // setDataString(self,'TDisID','TDis ID',Kolon2,'TDIS',80);
 // addButton(self,nil,'btnTDis','','TDIS ID Getir',Kolon2,'TDIS',120,ButtonClick);
  setDataString(self,'sertifika','Sertifika',Kolon2,'',80);


  calismaTipi := TcxImageComboKadir.Create(self);
  calismaTipi.Conn := nil;
  calismaTipi.BosOlamaz := True;
  calismaTipi.ItemList := '0;Tam Zamanlý,1;Yarý Zamanlý';
  calismaTipi.Filter := '';
  OrtakEventAta(calismaTipi);
  setDataStringKontrol(self,calismaTipi,'calismaTipi','Çalýþma Tipi',Kolon2,'',120);

  setDataStringC(self,'uzman','Uzman mý?',Kolon2,'',80,'Evet,Hayýr');
  setDataStringC(self,'durum','Durum',Kolon2,'',80,'Aktif,Pasif');

  setDataStringBLabel(self,'CalismaBilgisi',sayfa2_Kolon2,'',290,'Seans Çalýþma Bilgisi');
  TcxLabel(FindComponent('labelCalismaBilgisi')).Properties.Alignment.Horz := taCenter;
  setDataStringC(self,'pazartesi','Pazatesi',sayfa2_Kolon2,'',80,'0,1,1-2,1-3,2,2-3,3');
  setDataStringC(self,'sali','Salý',sayfa2_Kolon2,'',80,'0,1,1-2,1-3,2,2-3,3');
  setDataStringC(self,'carsamba','Çarþamba',sayfa2_Kolon2,'',80,'0,1,1-2,1-3,2,2-3,3');
  setDataStringC(self,'persembe','Perþembe',sayfa2_Kolon2,'',80,'0,1,1-2,1-3,2,2-3,3');
  setDataStringC(self,'cuma','Cuma',sayfa2_Kolon2,'',80,'0,1,1-2,1-3,2,2-3,3');
  setDataStringC(self,'cumartesi','Cumartesi',sayfa2_Kolon2,'',80,'0,1,1-2,1-3,2,2-3,3');

 // setDataImage(self,'foto','Foto',Kolon3,'',120,100);

  SayfaCaption('Taným Bilgileri','Çalýþma Bilgileri','','','');


  Disabled(self,True);


end;

end.
