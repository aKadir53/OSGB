unit Anamnez;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,
  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,cxMemo,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel,
  TedaviKart,GetFormClass;



type
  TfrmAnamnez = class(TfrmTedaviBilgisi)
    PopupMenu1: TPopupMenu;
    T1: TMenuItem;
    R1: TMenuItem;
    T2: TMenuItem;
    procedure cxKaydetClick(Sender: TObject);
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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

const _TableName_ = 'Gelisler';
      formGenislik = 700;
      formYukseklik = 550;

var
  frmAnamnez: TfrmAnamnez;


implementation
      uses AnamnezListe;
{$R *.dfm}

function TfrmAnamnez.Init(Sender: TObject) : Boolean;
 var
  index,i,_left_ : integer;
  Ts,Ts1 : TStringList;
  List,List1,List3 : TListeAc;
  bransKodu,calismaTipi,cardType,sirket,medulaGonderimTipi,servisler : TcxImageComboKadir;
begin
  Result := False;

case self.Tag of
 TagfrmAnamnez
  : begin
        Tag := TagfrmAnamnez;
        ClientHeight := formYukseklik;
        ClientWidth := formGenislik;

        indexFieldName := 'dosyaNo = ' + _dosyaNO_ + ' and  gelisNo = ' + _gelisNo_ ;
        TableName := _TableName_;
        cxYeni.Visible := False;
        cxIptal.Visible := False;
        Menu := PopupMenu1;
        setDataStringBLabel(self,'lblSikayet',Kolon1,'',550,'Hastanýn Þikayeti');
        setDataStringMemo(self,'SIKAYETLERI','',Kolon1,'',550,80);
        addButton(self,nil,'btnSikayet','','Þikayet Seç',Kolon1,'',120,ButtonClick,1);
        setDataStringBLabel(self,'lblBulgu',Kolon1,'',550,'Muayene Bulgularý');
        setDataStringMemo(self,'MUAYENEBULGULARI','',Kolon1,'Bulgu',550,80);
        addButton(self,nil,'btnMuayeneBulgu','','Bulgu Seç',Kolon1,'',120,ButtonClick,2);
        setDataStringBLabel(self,'lblSonuc',Kolon1,'',550,'Tedavi ve Sonuç');
        setDataStringMemo(self,'MUAYENESONUC','',Kolon1,'sonuc',550,80);
        addButton(self,nil,'btnMuayeneSouc','','Sonuç Seç',Kolon1,'',120,ButtonClick,4);

        setDataStringCurr(self,'ISTIRAHATGUN','ÝstirahatGün',Kolon1,'sevk',40,'0',1);

        servisler := TcxImageComboKadir.Create(self);
        servisler.Conn := Datalar.ADOConnection2;
        servisler.TableName := 'SERVIS_TNM';
        servisler.ValueField := 'kod';
        servisler.DisplayField := 'tanimi';
        servisler.BosOlamaz := True;
        servisler.Filter := '';
        OrtakEventAta(servisler);
        setDataStringKontrol(self,servisler,'SEVKBRANS','Sevk Edilen Branþ',kolon1,'sevk',150);


        SayfaCaption('Muayene Bilgileri','','','','');
        _fields_ := '*';
        yukle;
        sqlRunLoad;

       // tableColumnDescCreate;

        Result := True;
  end;
end;
end;


procedure TfrmAnamnez.cxButtonCClick(Sender: TObject);
var
 List : TListeAc;
 _L_ : ArrayListeSecimler;
 _name_, tel,msj : string;
 F : TGirisForm;
 GirisFormRecord : TGirisFormRecord;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  GirisFormRecord.F_dosyaNo_ := _dosyaNo_;
  GirisFormRecord.F_gelisNo_ := _gelisNo_;
  GirisFormRecord.F_HastaAdSoyad_ := _HastaAdSoyad_;

    case TControl(sender).Tag  of
      -1 : begin
             F := FormINIT(TagfrmTaniKarti,GirisFormRecord,ikEvet,'');
             if F <> nil then F.ShowModal;
      end;
      -2 : begin
             F := FormINIT(TagfrmHastaRecete,GirisFormRecord,ikEvet,'');
             if F <> nil then F.ShowModal;
           end;
      -3 : begin
             F := FormINIT(TagfrmHastaTetkikEkle,GirisFormRecord);
             if F <> nil then F.ShowModal;
           end;

    end;


end;


procedure TfrmAnamnez.ButtonClick(Sender: TObject);
var
  tip : string;
begin
     Application.CreateForm(TfrmAnamnezListe, frmAnamnezListe);
     frmAnamnezListe.compIndex(TcxButton(Sender).tag);
     frmAnamnezListe.Tanilar(inttostr(TcxButton(Sender).tag),'',datalar.doktorkodu);
     frmAnamnezListe.ShowModal;
     frmAnamnezListe.Release;
     frmAnamnezListe := nil;
end;

procedure TfrmAnamnez.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmAnamnez.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmAnamnez.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmAnamnez.cxKaydetClick(Sender: TObject);
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
