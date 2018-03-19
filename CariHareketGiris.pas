unit CariHareketGiris;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel, cxcalendar,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxDropDownEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, cxPC;



type
  TfrmCariHareket = class(TGirisForm)
    PersonelList: TListeAc;
    PopupMenu1: TPopupMenu;
    Y1: TMenuItem;
    T1: TMenuItem;
    S1: TMenuItem;
    L1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure SayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
       var AllowChange: Boolean);
    procedure SayfalarChange(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure PropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetEgitimPersonelSQL : String;
    procedure ResetDetayDataset;
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'cariHareketler';
      formGenislik = 600;
      formYukseklik = 600;

var
  frmCariHareket: TfrmCariHareket;


implementation

uses StrUtils;

{$R *.dfm}

procedure TfrmCariHareket.PropertiesEditValueChanged(Sender: TObject);
var
  xDeger : String;
begin
  TcxCheckGroupKadir(FindComponent('Egitimkod')).Clear;
  xDeger := vartoStr(TcxImageComboKadir(FindComponent('EgitimTuru')).EditValue);
  if not IsNull (xDeger) then
    TcxCheckGroupKadir(FindComponent('Egitimkod')).Filter := ' grup = ' + xDeger
   else
    TcxCheckGroupKadir(FindComponent('Egitimkod')).Filter := '';
end;

procedure TfrmCariHareket.ButtonClick(Sender: TObject);
var
  i : Integer;
  sTmp: String;
  ado : TADOQuery;
begin
end;

procedure TfrmCariHareket.cxButtonCClick(Sender: TObject);
var
  Ado,ado1 : TADOQuery;
  sql : string;
  TopluDataset : TDataSetKadir;
begin
  inherited;

end;

procedure TfrmCariHareket.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
    FormInputZorunluKontrolPaint(self,$00FCDDD1);
  end;
  //if TcxButtonEditKadir(FindComponent('id')).Text = '' then exit;
  ResetDetayDataset;
end;

procedure TfrmCariHareket.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmCariHareket.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmCariHareket.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmCariHareket.FormCreate(Sender: TObject);
var
  List : TListeAc;
  kombo , kombo1 ,sirketlerx ,sirketlerxx , EvrakTip: TcxImageComboKadir;
  dateEdit: TcxDateEditKadir;
  Egitimler : TcxCheckGroupKadir;
begin
  cxPanel.Visible := True;

  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
  indexFieldName := 'id';
  TableName := _TableName_;


  Menu := PopupMenu1;
 // Olustur(self,_TableName_,'Personel Eðitimleri',22);


  List := TListeAc.Create(nil);
  List.KaynakTableTip := tpSp;
  List.Table := 'select ch.id,ch.cariKod,s.tanimi,ch.tarih,ch.evrakNo,ch.borc,ch.alacak '+
                ' from carihareketler ch ' +
                ' join SIRKETLER_TNM s on s.sirketKod = ch.carikod';


  List.kolonlar.Add('id');// := Ts;
  List.kolonlar.Add('cariKod');// := Ts;
  List.kolonlar.Add('Tanimi'); // := Ts;
  List.kolonlar.Add('tarih'); // := Ts;
  List.kolonlar.Add('evrakNo');// := Ts;
  List.kolonlar.Add('borc');// := Ts;
  List.kolonlar.Add('alacak');// := Ts;

  List.KolonBasliklari.Add('ID');// := Ts1;
  List.KolonBasliklari.Add('Cari Kod');// := Ts1;
  List.KolonBasliklari.Add('Cari Tanýmý');// := Ts1;
  List.KolonBasliklari.Add('Tarih'); // := Ts;
  List.KolonBasliklari.Add('Evrak No');// := Ts1;
  List.KolonBasliklari.Add('Borç');// := Ts1;
  List.KolonBasliklari.Add('Alacak');// := Ts1;

  List.TColcount := 7;
  List.TColsW := '30,80,150,80,40,70,70';
  List.ListeBaslik := 'Cari Hareketler';
  List.Name := 'id';
  List.Conn := Datalar.ADOConnection2;
  List.SkinName := 'coffee';//AnaForm.dxSkinController1.SkinName;
  List.Where := '1=1';//'SirketKod = ' + QuotedStr (DATALAR.AktifSirket);

  setDataStringB(self,'id','Cari ID',Kolon1,'',70,List,True,nil, 'tanimi', '', False, True, -100);
  TcxButtonEditKadir(FindComponent('id')).Identity := True;

  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  dateEdit.Properties.Kind := ckdatetime;
  setDataStringKontrol(self,dateEdit, 'tarih','Ýþlem Zamaný',Kolon1,'',145);



 // setDataStringB(self,'SirketKod','Þirket Kodu',Kolon1,'',100,nil, True, SirketKod);
 // SirketKod.Properties.ReadOnly := True;

  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'SIRKETLER_TNM_view';
  sirketlerx.ValueField := 'SirketKod';
  sirketlerx.DisplayField := 'Tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Filter := '';
  setDataStringKontrol(self,sirketlerx,'cariKod','Þirket',Kolon1,'',250,0,alNone,'');


  setDataString(self,'evrakNo','Evrak No',Kolon1,'',100);

  EvrakTip := TcxImageComboKadir.Create(self);
  EvrakTip.Conn := datalar.ADOConnection2;
  EvrakTip.TableName := 'EvrakTipleri';
  EvrakTip.ValueField := 'Kod';
  EvrakTip.DisplayField := 'tanimi';
  EvrakTip.Filter := '';
  EvrakTip.BosOlamaz := True;
  setDataStringKontrol(self,EvrakTip,'EvrakTipi','Evrak Tipi',Kolon1,'',100);
  OrtakEventAta(EvrakTip);

  setDataStringCurr(self,'Borc','Borç',Kolon1,'',100,'',1);
  setDataStringCurr(self,'Alacak','Alacak',Kolon1,'',100,'',1);


  Disabled(self,True);
  SayfaCaption('Cari Hareket', '', '', '', '');
end;

function TfrmCariHareket.GetEgitimPersonelSQL: String;

begin

end;

function TfrmCariHareket.Init(Sender: TObject): Boolean;
begin
  result := inherited;
  result := True;
end;

procedure TfrmCariHareket.ResetDetayDataset;
begin

end;

procedure TfrmCariHareket.SayfalarChange(Sender: TObject);
begin
  //d
end;

procedure TfrmCariHareket.SayfalarPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  cxPanel.Visible := (newPage <> sayfa2);

end;

procedure TfrmCariHareket.cxKaydetClick(Sender: TObject);
var
  xObj : TcxButtonEditKadir;
begin
  //SirketKodx.Text := datalar.AktifSirket; giriþ formuna eklendi.
  inherited;
  //post ettikten sonra veritabanýndan Identity deðeri alýp edit kutusuna yazmasý için....
  case TControl(sender).Tag  of
    0 : begin
      xObj := TcxButtonEditKadir (FindComponent('id'));
      if IsNull (xObj.EditingValue) then
      begin
        xObj.Text := IntToStr (F_IDENTITY);

      end;
    end;
    2 : begin
      xObj := TcxButtonEditKadir (FindComponent('id'));
      xObj.Text := '';

    end;
  end;
end;

end.
