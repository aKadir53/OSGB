unit PersonelEgitimFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel, cxcalendar;



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
begin
  TcxTextEditKadir (FindComponent('PersonelDosyaNo')).Text := _dosyaNO_;
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
  Olustur(self,_TableName_,'Personel E�itimleri',22);


  List := TListeAc.Create(nil);

  List.Table := 'Personel_Egitim';

  List.kolonlar.Add('id');// := Ts;
  List.kolonlar.Add('EgitimKod');// := Ts;
  List.kolonlar.Add('BaslamaTarihi'); // := Ts;


  List.KolonBasliklari.Add('ID');// := Ts1;
  List.KolonBasliklari.Add('E�itim Kodu');// := Ts1;
  List.KolonBasliklari.Add('Ba�lama Tarihi');// := Ts1;
  List.TColcount := 3;
  List.TColsW := '50,200,20';
  List.ListeBaslik := 'E�itimler';
  List.Name := 'id';
  List.Conn := Datalar.ADOConnection2;
  List.SkinName := 'coffee';//AnaForm.dxSkinController1.SkinName;

  setDataStringB(self,'id','E�itim No.',Kolon1,'',70,List,True,nil, 'tanimi', '', False, True, -100);

  setDataString(self,'PersonelDosyaNo','DosyaNo',Kolon1,'TDIS',100,True);
  TcxTextEditKadir (FindComponent('PersonelDosyaNo')).Properties.ReadOnly := True;
  addButton(self,nil,'btnDosyaNo','','Dosya No''yu Ata',Kolon1,'TDIS',150,ButtonClick);

  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := Datalar.ADOConnection2;
  kombo.TableName := 'Egitim_tnm';
  kombo.ValueField := 'kod';
  kombo.DisplayField := 'tanimi';
  kombo.BosOlamaz := True;
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'Egitimkod','E�itim',kolon1,'',130);

  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  dateEdit.Properties.Kind := ckdatetime;
  setDataStringKontrol(self,dateEdit, 'BaslamaTarihi','Ba�lama Zaman�',Kolon1,'',130);

  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  setDataStringKontrol(self,dateEdit, 'BitisTarihi','Biti� Tarihi',Kolon1,'',100);

  setDataString(self,'Sure','S�re (Saat)',Kolon1,'',100);
  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := Datalar.ADOConnection2;
  kombo.TableName := 'DoktorlarT';
  kombo.ValueField := 'kod';
  kombo.DisplayField := 'tanimi';
  kombo.BosOlamaz := True;
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'Egitimci','E�itimci',kolon1,'',120);{}
  //setDataString(self,'Egitimci','E�itimci',Kolon1,'',100);
  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := nil;
  kombo.BosOlamaz := True;
  kombo.ItemList := '0;�� E�itim,1;D�� E�itim';
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'EgitimTuru','E�itim T�r�',kolon1,'',120);
  //setDataStringC(self,'EgitimTuru','E�itim T�r�',Kolon1,'',100, '�� E�itim,D�� E�itim,Di�er');
  setDataString(self,'EgitimYeri','E�itim Yeri',Kolon1,'',100);
  setDataString(self,'SertifikaNo','Sertifika No.',Kolon1,'',100);
  setDataStringMemo(self,'EgitimIcerigi','E�itim ��eri�i',Kolon1,'',300, 65);
  setDataString(self,'EgitimUcreti','E�itim �creti',Kolon1,'',100);
  setDataString(self,'EgitimUcretParaBirimi','Para Birimi',Kolon1,'',100);

  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := nil;
  kombo.BosOlamaz := True;
  kombo.ItemList := '0;Hay�r,1;Evet';
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'EgitimUcretiOdendi','�dendi mi?',kolon1,'',120);

  //setDataStringC(self,'EgitimUcretiOdendi','�dendi mi?',Kolon1,'',100, 'Evet,Hay�r');

  //Disabled(self,True);
  SayfaCaption('E�itim Bilgileri', '', '', '', '');
  _HastaBilgileriniCaptionGoster_ := True;
end;





function TfrmPersonelEgitim.Init(Sender: TObject): Boolean;
begin
  result := inherited;
  TcxTextEditKadir (FindComponent('PersonelDosyaNo')).Text := _dosyaNO_;
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
         //ShowMessage('�ptal');
    end;
  end;
end;

end.
