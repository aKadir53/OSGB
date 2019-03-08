unit Tedarikci;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,
  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel;



type
  TfrmTedarikci = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    E1: TMenuItem;
    T1: TMenuItem;
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
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'DoktorlarT';
      formGenislik = 400;
      formYukseklik = 500;

var
  frmTedarikci: TfrmTedarikci;


implementation

{$R *.dfm}

function TfrmTedarikci.Init(Sender: TObject) : Boolean;
var
  List : TListeAc;
  bransKodu,cardType : TcxImageComboKadir;
begin
  Result := False;

  case self.Tag of
    TagfrmTedarikci : begin
        Tag := TagfrmTedarikci;
        ClientHeight := formYukseklik;
        ClientWidth := formGenislik;
        Menu := PopupMenu1;
        indexFieldName := 'kod';
        TableName := 'cari_Tedarikciler';


        List := TListeAc.Create(nil);
        List.Table := 'cari_Tedarikciler';
        List.kolonlar.Add('kod');// := Ts;
        List.kolonlar.Add('tanimi'); // := Ts;


        List.KolonBasliklari.Add('Kodu');// := Ts1;
        List.KolonBasliklari.Add('Tedarikçi');// := Ts1;
        List.TColcount := 2;
        List.TColsW := '50,200';
        List.ListeBaslik := 'Tedarikçiler';
        List.Conn := Datalar.ADOConnection2;

        setDataStringB(self,'kod','Kodu',Kolon1,'',70,List,True,nil,'','',True,True);
       // TcxButtonEditKadir(FindComponent('kod')).Identity := True;

        setDataString(self,'tanimi','Tedarikçi',Kolon1,'',300,True);

        bransKodu := TcxImageComboKadir.Create(self);
        bransKodu.Conn := Datalar.ADOConnection2;
        bransKodu.TableName := 'cari_CariGruplar';
        bransKodu.ValueField := 'kod';
        bransKodu.DisplayField := 'tanimi';
        bransKodu.BosOlamaz := True;
        bransKodu.Filter := '';
        OrtakEventAta(bransKodu);
        setDataStringKontrol(self,bransKodu,'CariGrup','Cari Grup',kolon1,'',100);


        cardType := TcxImageComboKadir.Create(self);
        cardType.Conn := Datalar.ADOConnection2;
        cardType.TableName := 'cari_TedarikciGrup';
        cardType.ValueField := 'kod';
        cardType.DisplayField := 'tanimi';
        cardType.BosOlamaz := True;
        cardType.Filter := '';
        OrtakEventAta(cardType);
        setDataStringKontrol(self,cardType,'TedarikciGrup','Tedarikci Grup',kolon1,'',100);

        cardType := TcxImageComboKadir.Create(self);
        cardType.Conn := Datalar.ADOConnection2;
        cardType.TableName := 'cari_CariKartDurum';
        cardType.ValueField := 'kod';
        cardType.DisplayField := 'tanimi';
        cardType.BosOlamaz := True;
        cardType.Filter := '';
        OrtakEventAta(cardType);
        setDataStringKontrol(self,cardType,'Durum','Durum',kolon1,'',100);

        setDataString(self,'VD','Vergi Dairesi',Kolon1,'',100,True);
        setDataString(self,'VN','Vergi No',Kolon1,'',100,True);
        setDataString(self,'ePosta','EMail',Kolon1,'',100,True);
        setDataString(self,'Telefon','Telefon',Kolon1,'',100,True);
        setDataString(self,'Yetkili','Yetkili',Kolon1,'',100,True);

        SayfaCaption('Tedarikçi Bilgileri','','','','');
        Result := True;
        Disabled(self,True);

    end;

  TagfrmIGU : begin

    end;
  TagfrmDigerSaglikPers : begin

    end;
  end;

end;



procedure TfrmTedarikci.cxButtonCClick(Sender: TObject);
begin
  inherited;
   case TMenuItem(sender).Tag of
    -1 : begin
           if mrYEs = ShowPopupForm('Ödeme Ekle',OdemeEkle,TcxButtonEditKadir(FindComponent('kod')).EditingValue)
           then begin
           end;
         end;
    -2 : begin
           if mrYEs = ShowPopupForm('Tedarikçi Tahsilat Ekle',FaturaTahsilatEkle,TcxButtonEditKadir(FindComponent('kod')).EditingValue)
           then begin
           end;
         end;
   end;

end;

procedure TfrmTedarikci.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
      FormInputZorunluKontrolPaint(self,$00FCDDD1);
  end;
end;

procedure TfrmTedarikci.ButtonClick(Sender: TObject);
begin
//
end;

procedure TfrmTedarikci.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmTedarikci.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmTedarikci.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmTedarikci.cxKaydetClick(Sender: TObject);
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
    2 : begin
          TcxButtonEditKadir(FindComponent('Kod')).EditValue := dosyaNoYeniNumaraAl('TE');
        end;

  end;
end;

end.
