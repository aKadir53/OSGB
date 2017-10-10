unit Tnm_Makina;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,KadirLabel,GirisUnit,KadirType,GetFormClass,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar;

type
  TfrmMakina = class(TGirisForm)
    procedure FormCreate(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'MAKINA_TNM';
      formGenislik = 400;
      formYukseklik = 250;
var
  frmMakina: TfrmMakina;

implementation
      uses Data_Modul,AnaUnit,kadir;
{$R *.dfm}

procedure TfrmMakina.cxKaydetClick(Sender: TObject);
begin
  inherited;
    case TControl(sender).Tag  of
    2 : begin
         TcxTextEditKadir(FindComponent('id')).EditValue := '0';
         TcxTextEditKadir(FindComponent('kod')).EditValue := _Makina_;
         TcxTextEditKadir(FindComponent('tanimi')).EditValue := _HastaAdSoyad_;
        end;
    end;
end;


procedure TfrmMakina.ButtonClick(Sender: TObject);
var
  F : TGirisForm;
  GirisRecord : TGirisFormRecord;
  List : TListeAc;
  id : string;
begin
  GirisRecord.F_HastaAdSoyad_ := TcxTextEditKadir(FindComponent('tanimi')).EditValue;
  GirisRecord.F_Makina_ := TcxTextEditKadir(FindComponent('kod')).EditValue;
  if TcxTextEditKadir(FindComponent('kod')).EditValue = '' then
  begin
    ShowMessageSkin('Makina Se�ilmemi�','','','info');
    exit;
  end;
  F := FormINIT(TagfrmMakinaBakim,GirisRecord,ikHayir,'');
  if F <> nil then F.ShowModal;
end;

function TfrmMakina.Init(Sender : TObject) : Boolean;
var
  key : word;
  List,List1 : TListeAc;
  tarih,tarih1,tarih2 : TcxDateEditKadir;
begin

  if self.Tag = TagfrmMakina then
  begin
    ClientHeight := 350;
    ClientWidth := formGenislik;
    indexFieldName := 'kod';
    TableName := _TableName_;
    Olustur(self,_TableName_,'Makina Tan�m�',23);
    List := TListeAc.Create(nil);
    List.Table := 'MAKINA_TNM';
    List.kolonlar.Create;
    List.kolonlar.Add('kod');
    List.kolonlar.Add('tanimi');
    List.kolonlar.Add('seriNo');
    List.kolonlar.Add('salon');
    List.KolonBasliklari.Create;
    List.KolonBasliklari.Add('Kodu');
    List.KolonBasliklari.Add('Makina Tan�m�');
    List.KolonBasliklari.Add('Seri No');
    List.KolonBasliklari.Add('Salon');
    List.TColcount := 4;
    List.TColsW := '50,200,80,80';
    List.ListeBaslik := 'Makinalar';
    List.Name := 'kod';
    List.Conn := Datalar.ADOConnection2;
    List.SkinName := 'coffee';
    setDataStringB(self,'kod','Makina Kodu',Kolon1,'',100,List,True,nil);
    setDataString(self,'tanimi','Makina Tan�m�',Kolon1,'',200);
    setDataString(self,'seriNo','Seri Numaras�',Kolon1,'',100);
    setDataStringC(self,'salon','Salon',Kolon1,'',100,'Salon1,Salon2,Salon3,Salon4');
    tableColumnDescCreate;
    setDataStringBLabel(self,'bosSatir',Kolon1,'',10);
    addButton(self,nil,'btnServis','','Servis Bilgileri',Kolon1,'Servis',120,ButtonClick);

    SayfaCaption('Tan�m Bilgileri','','','','');
  end
  else
  begin
    ClientHeight := 550;
    ClientWidth := formGenislik;
    indexFieldName := 'kod';
    TableName := 'MAKINA_BAKIM';
    Olustur(self,'MAKINA_BAKIM','Makina Bak�m�',23);


    List := TListeAc.Create(nil);
    List.Table := 'MAKINA_BAKIM';
    List.kolonlar.Create;
    List.Kolonlar.Add('id');
    List.kolonlar.Add('kod');
    List.kolonlar.Add('tanimi');
    List.kolonlar.Add('arizaTespitZamani');

    List.KolonBasliklari.Create;
    List.KolonBasliklari.Add('ID');
    List.KolonBasliklari.Add('Kodu');
    List.KolonBasliklari.Add('Makina Tan�m�');
    List.KolonBasliklari.Add('Ariza Zaman�');

    List.TColcount := 4;
    List.TColsW := '50,50,200,150';
    List.ListeBaslik := 'Makina Bak�mlar';
    List.Name := 'kod';

    List.Conn := Datalar.ADOConnection2;
    List.SkinName := 'coffee';

    setDataStringB(self,'id','ID',Kolon1,'',50,List,True,nil,'','kod');
    TcxButtonEditKadir(FindComponent('id')).Tag := -100;
    TcxButtonEditKadir(FindComponent('id')).Properties.ReadOnly := True;

    setDataString(self,'kod','Makina Kodu',Kolon1,'',100);
    TcxTextEditKadir(FindComponent('kod')).Properties.ReadOnly := True;
    List.Where := 'kod = %s';// +  QuotedStr(TcxTextEditKadir(FindComponent('kod')).EditValue);
    setDataString(self,'tanimi','Makina Tan�m�',Kolon1,'',200);
    TcxTextEditKadir(FindComponent('tanimi')).Properties.ReadOnly := True;

    TcxTextEditKadir(FindComponent('tanimi')).EditValue :=   _HastaAdSoyad_;
    TcxTextEditKadir(FindComponent('kod')).EditValue :=   _Makina_;

    tarih := TcxDateEditKadir.Create(self);
    tarih.Properties.Kind := ckDateTime;
    tarih.Properties.ImmediateDropDownWhenKeyPressed := True;
    tarih.Properties.ValidateOnEnter := True;
    tarih.Properties.DateOnError := deToday;
    tarih.BosOlamaz := True;
    tarih.ValueTip := tvDate;

    tarih1 := TcxDateEditKadir.Create(self);
    tarih1.Properties.Kind := ckDateTime;
    tarih1.Properties.ImmediateDropDownWhenKeyPressed := True;
    tarih1.Properties.ValidateOnEnter := True;
    tarih1.Properties.DateOnError := deToday;
    tarih1.BosOlamaz := True;
    tarih1.ValueTip := tvDate;

    tarih2 := TcxDateEditKadir.Create(self);
    tarih2.Properties.Kind := ckDateTime;
    tarih2.Properties.ImmediateDropDownWhenKeyPressed := True;
    tarih2.Properties.ValidateOnEnter := True;
    tarih2.Properties.DateOnError := deToday;
    tarih2.BosOlamaz := True;
    tarih2.ValueTip := tvDate;
 //   tarih.Name := 'arizaTespitZamani';

    setDataStringKontrol(self,tarih,'arizaTespitZamani','Ar�za Tespit Zaman�',Kolon1,'',140);
  //  setDataString(self,'arizaTespitZamani','Ar�za Tespit Zaman�',Kolon1,'',100);
    setDataString(self,'arizayiTespitEden','Ar�za Tespit Eden',Kolon1,'',140);
    setDataStringMemo(self,'arizaDetay','Ar�za Detay�',Kolon1,'',250,40);
    setDataStringBLabel(self,'bosSatir',Kolon1,'',10);
    setDataString(self,'ServisPersoneli','Servis Personel',Kolon1,'',140);
    setDataStringKontrol(self,tarih1,'ServisBaslamaZamani','Servis Ba�lama Zaman�',Kolon1,'',140);
    setDataStringMemo(self,'ServisYapilanIsler','Yap�lan ��lemler',Kolon1,'',250,40);
    setDataStringMemo(self,'ServisYedekParca','Yedek Par�a',Kolon1,'',250,40);
    setDataStringKontrol(self,tarih2,'ServisBitisZamani','Servis Biti� Zaman�',Kolon1,'',140);
    setDataStringMemo(self,'ServisSonuDurum','Servis Sonu Durum',Kolon1,'',250,40);

    tableColumnDescCreate;

    indexKaydiBul(_Makina_,'kod');
    SayfaCaption('Bak�m Bilgileri','','','','');
  end;

    inherited;

end;

procedure TfrmMakina.FormCreate(Sender: TObject);
var
  index,i : integer;
  Ts,Ts1 : TStringList;
  List,List1 : TListeAc;
begin
end;

end.
