unit Tnm_Hemsire;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,KadirLabel,GirisUnit,KadirType;

type
  TfrmHemsireler = class(TGirisForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const _TableName_ = 'HemsirelerT';
      formGenislik = 500;
      formYukseklik = 300;
var
  frmHemsireler: TfrmHemsireler;

implementation

{$R *.dfm}

uses data_modul;

procedure TfrmHemsireler.FormCreate(Sender: TObject);
var
  index,i : integer;
  List,List1 : TListeAc;
  bransKodu : TcxImageComboKadir;
begin
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
  indexFieldName := 'kod';
  TableName := _TableName_;

  Olustur(self,_TableName_,'Hemþire Taným',21);

  List := TListeAc.Create(nil);
  List.Table := 'HemsirelerT';
  List.kolonlar.Add('kod');
  List.kolonlar.Add('tanimi');
  List.KolonBasliklari.Add('Hemþire Kodu');
  List.KolonBasliklari.Add('Hemþire Adi');
  List.TColcount := 2;
  List.TColsW := '50,200';
  List.ListeBaslik := 'Hemþireler';
  List.Name := 'kod';
  List.Conn := Datalar.ADOConnection2;;
  List.SkinName := 'coffee';


  setDataStringB(self,'kod','Hemþire Kodu',Kolon1,'',70,List,True,nil);
  setDataString(self,'tanimi','Adý Soyadý',Kolon1,'',200);
  setDataString(self,'tcKimlikNo','TC Kimlik No',Kolon1,'',120,True);
  setDataString(self,'tescilNo','Tescil No',Kolon1,'',100);

  bransKodu := TcxImageComboKadir.Create(self);
  bransKodu.Conn := Datalar.ADOConnection2;
  bransKodu.TableName := 'SERVISLER';
  bransKodu.ValueField := 'kodu';
  bransKodu.DisplayField := 'bransAdi';
  bransKodu.BosOlamaz := True;
  bransKodu.Filter := '';
  OrtakEventAta(bransKodu);
  setDataStringKontrol(self,bransKodu,'bransKodu','Branþ Kodu',kolon1,'',120);

  setDataImage(self,'foto','Foto',Kolon2,'',120,100);
  setDataStringC(self,'durum','Durum',Kolon1,'',80,'Aktif,Pasif');
  SayfaCaption('Taným Bilgileri','','','','');

end;

end.
