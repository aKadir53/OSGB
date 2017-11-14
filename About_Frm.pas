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
      formYukseklik = 500;

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
    HostName := '<okunamad�>';
    clHostNameColor := clRed;
  end
  else clHostNameColor := clGreen;

  Olustur(self,TableName,'Doktor Tan�m',22);
  setDataImage(self,'Image1abx','',Kolon1,'',155,121);

  setDataStringBLabel(self,'Firma1',Kolon2,'Grup001',100,'Yay�nc� Firma');
  TcxLabel(FindComponent('labelFirma1')).Style.TextColor := clBlack;
  TcxLabel(FindComponent('labelFirma1')).Style.Font.style := TcxLabel(FindComponent('labelFirma1')).Style.Font.style - [fsBold];
  setDataStringBLabel(self,'Firma2',Kolon2,'Grup001',216,'Mavi Nokta Bilgi Teknolojileri Ltd.�ti.');
  TcxLabel (FindComponent ('labelFirma2')).Style.TextColor := clGreen;

  setDataStringBLabel(self,'Firma3',Kolon2,'Grup005',100,'web adresi');
  TcxLabel(FindComponent('labelFirma3')).Style.TextColor := clBlack;
  TcxLabel(FindComponent('labelFirma3')).Style.Font.Style := TcxLabel(FindComponent('labelFirma3')).Style.Font.Style - [fsBold];
  setDataStringBLabel(self,'Firma4',Kolon2,'Grup005',216,'www.noktayazilim.net');
  TcxLabel (FindComponent ('labelFirma4')).Style.TextColor := clGreen;

  setDataStringBLabel(self,'Prg1',Kolon2,'Grup002',100,'Program Tan�m�');
  TcxLabel(FindComponent('labelPrg1')).Style.TextColor := clBlack;
  TcxLabel(FindComponent('labelPrg1')).Style.Font.Style := TcxLabel(FindComponent('labelPrg1')).Style.Font.Style - [fsBold];
  setDataStringBLabel(self,'Prg2',Kolon2,'Grup002',216,'��yeri Hekimli�i E-Re�ete Mod�l�');
  TcxLabel (FindComponent ('labelPrg2')).Style.TextColor := clGreen;

  setDataStringBLabel(self,'Prg3',Kolon2,'Grup006',100,'S�r�m Numaras�');
  TcxLabel(FindComponent('labelPrg3')).Style.TextColor := clBlack;
  TcxLabel(FindComponent('labelPrg3')).Style.Font.Style := TcxLabel(FindComponent('labelPrg3')).Style.Font.Style - [fsBold];
  setDataStringBLabel(self,'Prg4',Kolon2,'Grup006',216,DATALAR.versiyon);
  TcxLabel (FindComponent ('labelPrg4')).Style.TextColor := clGreen;

  setDataStringBLabel(self,'Lisans',Kolon2,'',322,'Lisans Bilgileri');
  TcxLabel(FindComponent('labelLisans')).Properties.Alignment.Horz := taCenter;

  setDataStringBLabel(self,'Bilgisayar1',Kolon2,'Grup003',100,'Bilgisayar');
  TcxLabel(FindComponent('labelBilgisayar1')).Style.TextColor := clBlack;
  TcxLabel(FindComponent('labelBilgisayar1')).Style.Font.Style := TcxLabel(FindComponent('labelBilgisayar1')).Style.Font.Style - [fsBold];
  setDataStringBLabel(self,'Bilgisayar2',Kolon2,'Grup003',216,HostName);
  TcxLabel (FindComponent ('labelBilgisayar2')).Style.TextColor := clHostNameColor;

  setDataStringBLabel(self,'Lisans1',Kolon2,'Grup004',100,'Lisans Durumu');
  TcxLabel(FindComponent('labelLisans1')).Style.TextColor := clBlack;
  TcxLabel(FindComponent('labelLisans1')).Style.Font.Style := TcxLabel(FindComponent('labelLisans1')).Style.Font.Style - [fsBold];
  setDataStringBLabel(self,'Lisans2',Kolon2,'Grup004',216,'Bilinmiyor');
  TcxLabel (FindComponent ('labelLisans2')).Style.TextColor := clGreen;

  setDataStringBLabel(self,'YasalUyari1',Kolon2,'',322,'Yasal Uyar�');
  TcxLabel(FindComponent('labelYasalUyari1')).Properties.Alignment.Horz := taCenter;
  setDataStringBLabel(self,'YasalUyari2',Kolon2,'',322,
    'Kullanmakta oldu�unuz ��yeri Hekimli�i E-Re�ete Mod�l� program� '+
    'Telif Yasalar� ve di�er yasal mevzuatlarla koruma alt�na al�nm�� olup,'+
    ' tamam�n�n veya bir b�l�m�n�n izinsiz bir �ekilde kulland�r�lmas�, kopyalanmas�'+
    ' veya ta��nmas� ve bu durumun taraf�m�zca tespiti halinde hukuki m�eyyideler'+
    ' i�letilecektir');
  TcxLabel(FindComponent('labelYasalUyari2')).Properties.Alignment.Horz := taCenter;
  TcxLabel(FindComponent('labelYasalUyari2')).Properties.WordWrap := True;
  TcxLabel(FindComponent('labelYasalUyari2')).AutoSize := True;
  TcxLabel(FindComponent('labelYasalUyari2')).AutoSize := False;

  SayfaCaption('Yaz�l�m Bilgileri', '', '', '', '');

  Disabled(self,True);
end;

end.
