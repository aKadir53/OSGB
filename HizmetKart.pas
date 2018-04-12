unit HizmetKart;

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
  TfrmHizmetKart = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    MenucxKaydet: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    lemler1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;

  private
    { Private declarations }
  protected
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'HIZMET';
      formGenislik = 750;
      formYukseklik = 580;
      sqlInsert = 'exec sp_YeniHastaKarti ';//,%s,%s,%s,%s,%s,%s';
      sqlUpdate = 'exec sp_GuncelHastaKarti ';
      sqlDelete = 'delete from HIZMET where CODE = %s';
      FotoTable = 'select * from FirmaLogo where CODE = %s';

var
  frmHizmetKart: TfrmHizmetKart;
  ord : integer;
  _gez : integer;
  aktifKart : integer = 0;
  kart : sqlType;

implementation
    uses AnaUnit,SMS, TransUtils;
{$R *.dfm}



procedure TfrmHizmetKart.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
    enabled;
end;

function TfrmHizmetKart.Init(Sender : TObject) : Boolean;
var
  key : word;
begin

  Result := False;
  if not inherited Init(Sender) then exit;
  key := 13;
  if TcxButtonEditKadir(FindComponent('CODE')).EditingValue  <> ''
  then
   TcxButtonEditKadir(FindComponent('CODE')).OnKeyDown(TcxButtonEditKadir(FindComponent('CODE')),key,[]);
  Result := True;
end;

procedure TfrmHizmetKart.FormCreate(Sender: TObject);
var
  List : TListeAc;
  HizmetGrup: TcxImageComboKadir;
begin
  // Burdaki User_ID ve CODE base formda dolduruluyor. Visible false (true set etmeyin)
  // Eðer kayýt eklediðiniz tabloda bu alanlar varsa ve bunlarý otomatik set etmek isterseniz
  //tag deðerini burda 0 set edin default -100 dür -100 obje kayýt iþlemize girmez.
  USER_ID.Tag := -100;
  //CODE.Tag := 1;
//  CODE.Visible := True;
 // CODE.Properties.OnButtonClick := cxButtonEditPropertiesButtonClick;
  //

  Menu := PopupMenu1;

//  Tag := TagfrmHastaKart;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;


  indexFieldName := 'CODE';
  TableName := _TableName_;
  Olustur(self,_TableName_,'Hizmet Taným Kartý',22,sqlInsert);

  cxPanel.Visible := True;

  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;

  List := ListeAcCreate('HIZMET','CODE,NAME1,TANIM',
                       'Kodu,Hizmet Adý,Grubu',
                       '50,250,20','CODE','Merkez Listesi','',5,True);

  setDataStringB(self,'CODE','Merkez Kodu',Kolon1,'',80,List,True,nil,'','',True,True,1);
  setDataString(self,'NAME1','Merkez Adý  ',Kolon1,'',350,True);

  HizmetGrup := TcxImageComboKadir.Create(self);
  HizmetGrup.Conn := Datalar.ADOConnection2;
  HizmetGrup.TableName := 'Hizmet_Gruplari';
  HizmetGrup.ValueField := 'kod';
  HizmetGrup.DisplayField := 'Tanimi';
  HizmetGrup.BosOlamaz := False;
  HizmetGrup.Filter := '';
  setDataStringKontrol(self,HizmetGrup,'TANIM','Hizmet Grubu',kolon1,'',100);
  OrtakEventAta(HizmetGrup);

  setDataString(self,'','TANIM',Kolon1,'',350,True);//varchar (2) NOT NULL
  setDataString(self,'OZELKOD','OZELKOD',Kolon1,'',80,True);//varchar (10)
  setDataStringCurr(self,'KDV','KDV',Kolon1,'',30,',0.00', 0);//float (53) NOT NULL
  setDataString(self,'BUT','BUT',Kolon1,'',300,True);//varchar (50)
  setDataStringCurr(self,'PARSAYI','PARSAYI',Kolon1,'',60,'#', 0);//int
  setDataString(self,'MATERYAL','MATERYAL',Kolon1,'',120,True);//varchar (20)
  setDataString(self,'LABTIPI','LABTIPI',Kolon1,'',20,True);//char (1)
  setDataString(self,'GELIRGRUBU','GELIRGRUBU',Kolon1,'',60,True);//varchar (10)
  setDataString(self,'OTOISLE','OTOISLE',Kolon1,'',20,True);//char (1)
  setDataStringCurr(self,'DRYUZDE','DRYUZDE',Kolon1,'',60,',0.00', 0);//float (53)
  setDataStringCurr(self,'PHYUZDE','PHYUZDE',Kolon1,'',60,',0.00', 0);//float (53)
  setDataString(self,'HAVUZ','HAVUZ',Kolon1,'',30,True);//varchar (4)
  setDataString(self,'KKODU','KKODU',Kolon1,'',300,True);//varchar (50)
  setDataString(self,'PAKETLEGIRILIR','PAKETLEGIRILIR',Kolon1,'',20,True);//varchar (1)
  setDataStringChk(self,'ListedeGorunsun','ListedeGorunsun',Kolon1,'',300);//bit
  setDataString(self,'UyariMesaji','UyariMesaji',Kolon1,'',350,True);//varchar (550)
  setDataStringChk(self,'SeansAcilir','SeansAcilir',Kolon1,'',300);//bit
  setDataStringCurr(self,'SATISF00','Satýþ Fiyat 0',Kolon1,'SFX',60, ',0.00', 0);//float (53)
  setDataStringCurr(self,'SATISF01','1',Kolon1,'SFX',60, ',0.00', 0);//float (53)
  setDataStringCurr(self,'SATISF02','2',Kolon1,'SFX',60, ',0.00', 0);//float (53)
  setDataStringCurr(self,'SATISF03','3',Kolon1,'SFX',60, ',0.00', 0);//float (53)
  setDataStringCurr(self,'SATISF04','4',Kolon1,'SFX',60, ',0.00', 0);//float (53)
  setDataStringCurr(self,'SATISF05','5',Kolon1,'SFX',60, ',0.00', 0);//float (53)
  setDataStringCurr(self,'KSATISF00','Kurum Satýþ Fy. 0',Kolon1,'KSFX',60, ',0.00', 0);//float (53)
  setDataStringCurr(self,'KSATISF01','1',Kolon1,'KSFX',60, ',0.00', 0);//float (53)
  setDataStringCurr(self,'KSATISF02','2',Kolon1,'KSFX',60, ',0.00', 0);//float (53)
  setDataStringCurr(self,'KSATISF03','3',Kolon1,'KSFX',60, ',0.00', 0);//float (53)
  setDataStringCurr(self,'KSATISF04','4',Kolon1,'KSFX',60, ',0.00', 0);//float (53)
  setDataStringCurr(self,'KSATISF05','5',Kolon1,'KSFX',60, ',0.00', 0);//float (53)
  setDataString(self,'cinsKontrol','cinsKontrol',Kolon1,'',20,True);//varchar (1)
  setDataStringCurr(self,'yasKontrol','yasKontrol',Kolon1,'',60, ',0.00', 0);//int
  setDataString(self,'faturalanamazlar','faturalanamazlar',Kolon1,'',350,True);//varchar (500)
  setDataStringChk(self,'medulaGitsin','medulaGitsin',Kolon1,'',300);//bit
  setDataStringChk(self,'HemenKaydet','HemenKaydet',Kolon1,'',300);//bit
  setDataString(self,'Cihaz','Cihaz',Kolon1,'',120,True);//varchar (20)
  setDataStringCurr(self,'AyaktanMaxAdet','AyaktanMaxAdet',Kolon1,'',60, ',0.00', 0);//int
  setDataStringChk(self,'HizmetDisaridanAlinir','HizmetDisaridanAlinir',Kolon1,'',300);//bit
  setDataStringCurr(self,'IstemFormSira','IstemFormSira',Kolon1,'',60, ',0.00', 0);//int
  setDataString(self,'TUR','TUR',Kolon1,'',30,True);//varchar (5)
  setDataString(self,'DisFirma','DisFirma',Kolon1,'',20,True);//varchar (2)

  tableColumnDescCreate;

  SayfaCaption('Merkez Bilgileri','','' ,'','');
  Disabled(self,True);

 end;


procedure TfrmHizmetKart.cxKaydetClick(Sender: TObject);
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
              //TcxButtonEditKadir(FindComponent('CODE')).EditValue := dosyaNoYeniNumaraAl('FN');
              //if TcxButtonEditKadir(FindComponent('CODE')).EditingValue = '0'
              //then begin
              //  ShowMessageskin('Dosya No Alýnamadý','','','info');
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
