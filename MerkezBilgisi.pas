unit MerkezBilgisi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,pngImage,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,
  kadirType,KadirLabel,Kadir,Data_Modul,
  GirisUnit, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,jpeg,
  dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, cxRadioGroup, cxDropDownEdit,
  cxCalendar, cxImageComboBox, cxPCdxBarPopupMenu, cxPC, cxCheckGroup, cxImage,
  cxGridBandedTableView, cxGridDBBandedTableView, cxSplitter, cxCheckBox,
  cxDBLookupComboBox, cxCurrencyEdit, cxVGrid, cxDBVGrid, cxInplaceContainer,
  cxLabel, Vcl.Buttons, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxLayoutContainer, dxLayoutControl, cxMemo,GetFormClass,
  dxSkinsdxStatusBarPainter, dxStatusBar, cxCheckListBox, dxSkinBlack,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;



type
  TfrmMerkezBilgisi = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    MenucxKaydet: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    lemler1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;

  private
    { Private declarations }
  protected
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'MerkezBilgisi';
      formGenislik = 750;
      formYukseklik = 580;
      sqlInsert = 'exec sp_YeniHastaKarti ';//,%s,%s,%s,%s,%s,%s';
      sqlUpdate = 'exec sp_GuncelHastaKarti ';
      sqlDelete = 'delete from MerkezBilgisi where MerkezKodu = %s';
      FotoTable = 'select * from FirmaLogo where MerkezKodu = %s';

var
  frmMerkezBilgisi: TfrmMerkezBilgisi;
  ord : integer;
  _gez : integer;
  aktifKart : integer = 0;
  kart : sqlType;

implementation
    uses AnaUnit,SMS, TransUtils;
{$R *.dfm}



procedure TfrmMerkezBilgisi.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
    enabled;
end;

function TfrmMerkezBilgisi.Init(Sender : TObject) : Boolean;
var
  key : word;
begin

  Result := False;
  if not inherited Init(Sender) then exit;
  key := 13;
  if TcxButtonEditKadir(FindComponent('MerkezKodu')).EditingValue  <> ''
  then
   TcxButtonEditKadir(FindComponent('MerkezKodu')).OnKeyDown(TcxButtonEditKadir(FindComponent('MerkezKodu')),key,[]);
  Result := True;
end;

procedure TfrmMerkezBilgisi.FormCreate(Sender: TObject);
var
  List : TListeAc;
  MerkezTip: TcxImageComboKadir;
begin
  // Burdaki User_ID ve MerkezKodu base formda dolduruluyor. Visible false (true set etmeyin)
  // E�er kay�t ekledi�iniz tabloda bu alanlar varsa ve bunlar� otomatik set etmek isterseniz
  //tag de�erini burda 0 set edin default -100 d�r -100 obje kay�t i�lemize girmez.
  USER_ID.Tag := -100;
  //MerkezKodu.Tag := 1;
//  MerkezKodu.Visible := True;
 // MerkezKodu.Properties.OnButtonClick := cxButtonEditPropertiesButtonClick;
  //

  Menu := PopupMenu1;

//  Tag := TagfrmHastaKart;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;


  indexFieldName := 'MerkezKodu';
  TableName := _TableName_;
  Olustur(self,_TableName_,'Merkez Tan�m Kart�',22,sqlInsert);

  cxPanel.Visible := True;

  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;

  List := ListeAcCreate('MerkezBilgisi','MerkezKodu,MerkezAdi',
                       'MerkezKodu,Merkez',
                       '50,250','MerkezKodu','Merkez Listesi','',5,True);


  setDataStringB(self,'MerkezKodu','Merkez Kodu',Kolon1,'',80,List,True,nil,'','',True,True,1);
  setDataString(self,'MerkezAdi','Merkez Ad�  ',Kolon1,'',350,True);
  setDataString(self,'Adres','Adres',Kolon1,'',350,True);
  setDataString(self,'KapiNo','Kap� No',Kolon1,'',30,True);
  setDataString(self,'PostaKodu','Posta Kodu',Kolon1,'',50,True);
  setDataString(self,'Ilce','�lce',Kolon1,'',100,True);
  setDataString(self,'Il','�l',Kolon1,'',100,True);
  setDataString(self,'SorumluKisi1','Sorumlu Ki�i 1',Kolon1,'',150,True);
  setDataString(self,'SorumluKisi2','Sorumlu Ki�i 2',Kolon1,'',150,True);
  setDataString(self,'Telefon','Telefon',Kolon1,'',80,True);
  setDataString(self,'Fax','Fax',Kolon1,'',80,True);
  setDataString(self,'e_mail','e-Mail',Kolon1,'',100,True);
  setDataString(self,'vergiDairesi','Vergi Dairesi',Kolon2,'',120,True);
  setDataString(self,'vergiNo','Vergi No',Kolon2,'',100,True);
  setDataString(self,'postaKutusu','Posta Kutusu',Kolon1,'',100,True);
  setDataString(self,'sifre','�ifre',Kolon1,'',100,True);
  setDataString(self,'kullaniciAdi','Kullan�c�Ad�',Kolon1,'',100,True);
  setDataString(self,'webUrl','web Url',Kolon1,'',350,True);
  setDataString(self,'SGKSicilNo','SGK Sicil No',Kolon2,'',200,True);
  setDataString(self,'MERSISNo','MERS�S No',Kolon2,'',120,True);
  setDataString(self,'BankaAdi1','Banka Ad� 1',Kolon2,'',120,True);
  setDataString(self,'IBAN1','IBAN 1',Kolon2,'',150,True);
  setDataString(self,'BankaAdi2','Banka Ad� 2',Kolon2,'',120,True);
  setDataString(self,'IBAN2','IBAN 2',Kolon2,'',150,True);
  setDataString(self,'BankaAdi3','Banka Ad� 3',Kolon2,'',120,True);
  setDataString(self,'IBAN3','IBAN 3',Kolon2,'',150,True);
  setDataString(self,'BankaAdi4','Banka Ad� 4',Kolon2,'',120,True);
  setDataString(self,'IBAN4','IBAN 4',Kolon2,'',150,True);

  MerkezTip := TcxImageComboKadir.Create(self);
  MerkezTip.Conn := Datalar.ADOConnection2;
  MerkezTip.TableName := 'MerkezTipleri';
  MerkezTip.ValueField := 'kod';
  MerkezTip.DisplayField := 'Tanimi';
  MerkezTip.BosOlamaz := False;
  MerkezTip.Filter := '';
  setDataStringKontrol(self,MerkezTip,'MerkezTipi','Merkez Tipi',kolon1,'',100);
  OrtakEventAta(MerkezTip);

  tableColumnDescCreate;

  SayfaCaption('Merkez Bilgileri','','' ,'','');
  Disabled(self,True);

 end;


procedure TfrmMerkezBilgisi.cxKaydetClick(Sender: TObject);
begin
  datalar.KontrolUserSet := False;
  BeginTrans (DATALAR.ADOConnection2);
  try
    inherited;
    if datalar.KontrolUserSet then exit;
    if not cxKaydetResult then Exit;

    case TControl(sender).Tag  of
      0 : begin
           Kart := sql_none;
          end;
      1 : begin
            Kart := sql_delete;
          end;
      2 : begin
              Kart := sql_new;
              //TcxButtonEditKadir(FindComponent('MerkezKodu')).EditValue := dosyaNoYeniNumaraAl('FN');
              //if TcxButtonEditKadir(FindComponent('MerkezKodu')).EditingValue = '0'
              //then begin
              //  ShowMessageskin('Dosya No Al�namad�','','','info');
              //end;
          end;
    end;
  finally
    if cxKaydetResult then
      CommitTrans (DATALAR.ADOConnection2)
     else
      RollbackTrans (DATALAR.ADOConnection2);
  end;

end;

end.
