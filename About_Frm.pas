unit About_Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, cxImage;



type
  TfrmAbout = class(TGirisForm)
    Image1abx: TcxImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const formGenislik = 600;
      formYukseklik = 378;

var
  frmAbout: TfrmAbout;


implementation

{$R *.dfm}
procedure TfrmAbout.FormCreate(Sender: TObject);
var
  HostName : String;
  clHostNameColor : TColor;
begin
  Tag := TagfrmAbout;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  indexFieldName := '';
  TableName := '';
  if not GetLocalHostName (HostName) then
  begin
    HostName := '<okunamadý>';
    clHostNameColor := clRed;
  end
  else clHostNameColor := clGreen;

  //Olustur(self,TableName,'Doktor Taným',22);
  setDataImage(self,'Image1abx','',Kolon1,'',155,121);
  setDataStringBLabel(self,'CRX',Kolon1,'',155,'Copyright Mavi Nokta Bilgi Teknolojileri, 1996-2017', '', '', False, clBlack, taCenter);
  TcxLabel(FindComponent('labelCRX')).Properties.WordWrap := True;
  TcxLabel(FindComponent('labelCRX')).AutoSize := True;
  TcxLabel(FindComponent('labelCRX')).AutoSize := False;

  setDataStringBLabel(self,'Firma1',Kolon2,'Grup001',100,'Yayýncý Firma', '', '', False, clBlack);
  setDataStringBLabel(self,'Firma2',Kolon2,'Grup001',216,'Mavi Nokta Bilgi Teknolojileri Ltd.Þti.', '', '', True, clGreen);

  setDataStringBLabel(self,'Firma3',Kolon2,'Grup005',100,'web adresi', '', '', False, clBlack);
  setDataStringBLabel(self,'Firma4',Kolon2,'Grup005',216,'www.noktayazilim.net', '', '', True, clGreen);

  setDataStringBLabel(self,'Prg1',Kolon2,'Grup002',100,'Program Tanýmý', '', '', False, clBlack);
  setDataStringBLabel(self,'Prg2',Kolon2,'Grup002',216,'Ýþyeri Hekimliði E-Reçete Modülü', '', '', True, clGreen);

  setDataStringBLabel(self,'Prg3',Kolon2,'Grup006',100,'Sürüm Numarasý', '', '', False, clBlack);
  setDataStringBLabel(self,'Prg4',Kolon2,'Grup006',216,DATALAR.versiyon, '', '', True, clGreen);

  setDataStringBLabel(self,'Lisans',Kolon2,'',322,'Lisans Bilgileri','', '', True, clRed, taCenter);

  setDataStringBLabel(self,'Bilgisayar1',Kolon2,'Grup003',100,'Bilgisayar', '', '', False, clBlack);
  setDataStringBLabel(self,'Bilgisayar2',Kolon2,'Grup003',216,HostName, '', '', True, clHostNameColor);

  setDataStringBLabel(self,'Lisans1',Kolon2,'Grup004',100,'Lisans Durumu', '', '', False, clBlack);
  setDataStringBLabel(self,'Lisans2',Kolon2,'Grup004',216,'Bilinmiyor', '', '', True, clGreen);

  setDataStringBLabel(self,'YasalUyari1',Kolon2,'',322,'Yasal Uyarý','', '', True, clRed, taCenter);
  setDataStringBLabel(self,'YasalUyari2',Kolon2,'',322,
    'Kullanmakta olduðunuz Ýþyeri Hekimliði E-Reçete Modülü programý '+
    'Telif Yasalarý ve diðer yasal mevzuatlarla koruma altýna alýnmýþ olup,'+
    ' tamamýnýn veya bir bölümünün izinsiz bir þekilde kullandýrýlmasý, kopyalanmasý'+
    ' veya taþýnmasý ve bu durumun tarafýmýzca tespiti halinde hukuki müeyyideler'+
    ' iþletilecektir','', '', True, clRed, taCenter);
  TcxLabel(FindComponent('labelYasalUyari2')).Properties.WordWrap := True;
  TcxLabel(FindComponent('labelYasalUyari2')).AutoSize := True;
  TcxLabel(FindComponent('labelYasalUyari2')).AutoSize := False;

  SayfaCaption('', '', '', '', '');
  cxPanel.Visible := False;
  Image1.Visible := False;
  Image2.Visible := False;
  Disabled(self,True);
end;

end.
