unit Tnm_Doktor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel;



type
  TfrmDoktorlar = class(TGirisForm)
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

const _TableName_ = 'DoktorlarT';
      formGenislik = 500;
      formYukseklik = 530;

var
  frmDoktorlar: TfrmDoktorlar;


implementation

{$R *.dfm}

function TfrmDoktorlar.Init(Sender: TObject) : Boolean;
 var
  index,i : integer;
  Ts,Ts1 : TStringList;
  List,List1,List3 : TListeAc;
  bransKodu,calismaTipi,cardType,sirket,medulaGonderimTipi : TcxImageComboKadir;
begin
  Result := False;

case self.Tag of
 TagfrmDoktorlar
  : begin
        Tag := TagfrmDoktorlar;
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
        list.filter := GetUserDoktorFilter;//login olan kullanýcý admin grubunda deðilse onun doktor kodu;
        List.SkinName := 'coffee';//AnaForm.dxSkinController1.SkinName;

        setDataStringB(self,'kod','Doktor Kodu',Kolon1,'',70,List,True,nil);

        setDataString(self,'tanimi','Adý Soyadý',Kolon1,'',200,True);
        setDataString(self,'tcKimlikNo','TC Kimlik No',Kolon1,'',100,True);

        bransKodu := TcxImageComboKadir.Create(self);
        bransKodu.Conn := Datalar.ADOConnection2;
        bransKodu.TableName := 'SERVIS_TNM';
        bransKodu.ValueField := 'kod';
        bransKodu.DisplayField := 'tanimi';
        bransKodu.BosOlamaz := True;
        bransKodu.Filter := '';
        OrtakEventAta(bransKodu);
        setDataStringKontrol(self,bransKodu,'bransKodu','Branþ Kodu',kolon1,'',200);



        setDataString(self,'tescilNo','Tescil No',Kolon1,'',80,True);
        setDataString(self,'eReceteKullanici','Reçete Kullanýcý Adý',Kolon1,'cc',100,True);
        TcxTextEditKadir (FindComponent ('eReceteKullanici')).Properties.EchoMode := eemPassword;
        TcxTextEditKadir (FindComponent ('eReceteKullanici')).Properties.PasswordChar := '*';
        setDataString(self,'eReceteSifre','Reçete Þifresi',Kolon1,'',100,True);
        TcxTextEditKadir (FindComponent ('eReceteSifre')).Properties.EchoMode := eemPassword;
        TcxTextEditKadir (FindComponent ('eReceteSifre')).Properties.PasswordChar := '*';

        setDataString(self,'pin','Ýmza Token Pin',Kolon1,'',50);
        TcxTextEditKadir (FindComponent ('pin')).Properties.EchoMode := eemPassword;
        TcxTextEditKadir (FindComponent ('pin')).Properties.PasswordChar := '*';

        cardType := TcxImageComboKadir.Create(self);
        cardType.Conn := Datalar.ADOConnection2;
        cardType.TableName := 'cardTypes';
        cardType.ValueField := 'cardType';
        cardType.DisplayField := 'tanimi';
        cardType.BosOlamaz := True;
        cardType.Filter := '';
        OrtakEventAta(cardType);
        setDataStringKontrol(self,cardType,'cardType','Card Type',kolon1,'',150);

        medulaGonderimTipi := TcxImageComboKadir.Create(self);
        medulaGonderimTipi.Conn := nil;
        medulaGonderimTipi.BosOlamaz := True;
        medulaGonderimTipi.ItemList := '0;Ýmzalý,1;Ýmzasýz';
        medulaGonderimTipi.Filter := '';
        OrtakEventAta(medulaGonderimTipi);
        setDataStringKontrol(self,medulaGonderimTipi,'medulaGonderimTipi','Medula Gönderim',kolon1,'',100);

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

        setDataStringC(self,'uzman','Uzman mý?',Kolon1,'',80,'Evet,Hayýr');
        setDataStringC(self,'durum','Durum',Kolon1,'',80,'Aktif,Pasif');

        setDataStringBLabel(self,'CalismaBilgisi',sayfa2_Kolon1,'',290,'Seans Çalýþma Bilgisi', '', '', True, clRed, taCenter);
        setDataStringC(self,'pazartesi','Pazatesi',sayfa2_Kolon1,'',80,'0,1,1-2,1-3,2,2-3,3');
        setDataStringC(self,'sali','Salý',sayfa2_Kolon1,'',80,'0,1,1-2,1-3,2,2-3,3');
        setDataStringC(self,'carsamba','Çarþamba',sayfa2_Kolon1,'',80,'0,1,1-2,1-3,2,2-3,3');
        setDataStringC(self,'persembe','Perþembe',sayfa2_Kolon1,'',80,'0,1,1-2,1-3,2,2-3,3');
        setDataStringC(self,'cuma','Cuma',sayfa2_Kolon1,'',80,'0,1,1-2,1-3,2,2-3,3');
        setDataStringC(self,'cumartesi','Cumartesi',sayfa2_Kolon1,'',80,'0,1,1-2,1-3,2,2-3,3');

       // setDataImage(self,'foto','Foto',Kolon2,'',120,100);

        SayfaCaption('Taným Bilgileri','Çalýþma Bilgileri','','','');



        Result := True;
  end;

 TagfrmIGU
  : begin
        Tag := TagfrmIGU;
        ClientHeight := formYukseklik;
        ClientWidth := formGenislik;

        indexFieldName := 'kod';
        TableName := 'IGU';
     //   Olustur(self,_TableName_,'Doktor Taným',22);


        List := TListeAc.Create(nil);
        List.Table := 'IGU';
        List.kolonlar.Add('kod');// := Ts;
        List.kolonlar.Add('tanimi'); // := Ts;


        List.KolonBasliklari.Add('Uzman Kodu');// := Ts1;
        List.KolonBasliklari.Add('Uzman Adi');// := Ts1;
        List.TColcount := 2;
        List.TColsW := '50,200';
        List.ListeBaslik := 'Ýþ Güvenlik Uzmanlarý';
        List.Name := 'kod';
        List.Conn := Datalar.ADOConnection2;
        List.SkinName := 'coffee';//AnaForm.dxSkinController1.SkinName;

        setDataStringB(self,'kod','Uzman Kodu',Kolon1,'',70,List,True,nil);

        setDataString(self,'tanimi','Adý Soyadý',Kolon1,'',200,True);
        setDataString(self,'tcKimlikNo','TC Kimlik No',Kolon1,'',150,True);

        setDataString(self,'Sinifi','Sýnýfý',Kolon1,'', 20, True);

     //   setDataString(self,'tescilNo','Tescil No',Kolon1,'',80,True);
    //    setDataString(self,'eReceteKullanici','Reçete Kullanýcý Adý',Kolon1,'cc',100,True);
   //     setDataString(self,'eReceteSifre','Reçete Þifresi',Kolon1,'',100,True);
        setDataString(self,'pin','Ýmza Token Pin',Kolon1,'',50);

        cardType := TcxImageComboKadir.Create(self);
        cardType.Conn := Datalar.ADOConnection2;
        cardType.TableName := 'cardTypes';
        cardType.ValueField := 'cardType';
        cardType.DisplayField := 'tanimi';
        cardType.BosOlamaz := True;
        cardType.Filter := '';
        OrtakEventAta(cardType);
        setDataStringKontrol(self,cardType,'cardType','Card Type',kolon1,'',150);

      //  setDataString(self,'TesisKodu','Tesis Kodu',Kolon1,'',100);
        setDataString(self,'GSM','GSM',Kolon1,'',100);
        setDataString(self,'EPosta','E-Posta',Kolon1,'',200);
        setDataString(self,'sertifika','Sertifika',Kolon1,'',80);

    (*
        calismaTipi := TcxImageComboKadir.Create(self);
        calismaTipi.Conn := nil;
        calismaTipi.BosOlamaz := True;
        calismaTipi.ItemList := '0;Tam Zamanlý,1;Yarý Zamanlý';
        calismaTipi.Filter := '';
        OrtakEventAta(calismaTipi);
        setDataStringKontrol(self,calismaTipi,'calismaTipi','Çalýþma Tipi',kolon1,'',120);
        *)
     //   setDataStringC(self,'uzman','Uzman mý?',Kolon1,'',80,'Evet,Hayýr');
        setDataStringC(self,'durum','Durum',Kolon1,'',80,'Aktif,Pasif');

        SayfaCaption('Taným Bilgileri','','','','');



        Result := True;
    end;


end;
        Disabled(self,True);
end;



procedure TfrmDoktorlar.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
      FormInputZorunluKontrolPaint(self,$00FCDDD1);
  end;
end;

procedure TfrmDoktorlar.ButtonClick(Sender: TObject);
var
  ID : integer;
begin
  TcxTextEditKadir(FindComponent('TDisID')).EditValue := ID;
end;

procedure TfrmDoktorlar.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmDoktorlar.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmDoktorlar.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmDoktorlar.cxKaydetClick(Sender: TObject);
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
