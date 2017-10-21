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
  dateEdit: TcxDateEditKadir;
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

  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvString;
  setDataStringKontrol(self,dateEdit, 'BaslamaTarihi','Baþlama Tarihi',Kolon1,'',100);

  setDataString(self,'BaslamaSaati','Baþlama Saati',Kolon1,'',100);

  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvString;
  setDataStringKontrol(self,dateEdit, 'BitisTarihi','Bitiþ Tarihi',Kolon1,'',100);

  setDataString(self,'Sure','Süre (Saat)',Kolon1,'',100);
  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := Datalar.ADOConnection2;
  kombo.TableName := 'DoktorlarT';
  kombo.ValueField := 'kod';
  kombo.DisplayField := 'tanimi';
  kombo.BosOlamaz := True;
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'Egitimci','Eðitimci',kolon1,'',120);{}
  //setDataString(self,'Egitimci','Eðitimci',Kolon1,'',100);
  setDataStringC(self,'EgitimTuru','Eðitim Türü',Kolon1,'',100, 'Ýç Eðitim,Dýþ Eðitim,Diðer');
  setDataString(self,'EgitimYeri','Eðitim Yeri',Kolon1,'',100);
  setDataString(self,'SertifikaNo','Sertifika No.',Kolon1,'',100);
  setDataString(self,'EgitimIcerigi','Eðitim Ýçeriði',Kolon1,'',100);
  setDataString(self,'EgitimUcreti','Eðitim Ücreti',Kolon1,'',100);
  setDataString(self,'EgitimUcretParaBirimi','Para Birimi',Kolon1,'',100);

  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := nil;
  kombo.BosOlamaz := True;
  kombo.ItemList := '0;Hayýr,1;Evet';
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'EgitimUcretiOdendi','Ödendi mi?',kolon1,'',120);

  setDataStringC(self,'','',Kolon1,'',100, 'Evet,Hayýr');

  Disabled(self,True);
  _HastaBilgileriniCaptionGoster_ := True;
end;





function TfrmPersonelEgitim.Init(Sender: TObject): Boolean;
begin
  result := inherited;
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
