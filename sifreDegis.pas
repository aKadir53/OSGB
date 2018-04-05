unit sifreDegis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,  ExtCtrls, Mask, kadir,GirisUnit,kadirType,adodb,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, cxTextEdit, cxGroupBox, Menus,
  cxButtons, KadirLabel;

type
  TfrmSifreDegis = class(TGirisForm)
    txtSifre: TcxTextEdit;
    txtTekrar: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    cxGroupBox1: TcxGroupBox;
    btnSend: TcxButtonKadir;
    btnVazgec: TcxButtonKadir;
    procedure btnSendClick(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    doktorSifre,doktorKullanici,Sifre,Kullanici  : string;
    sifreTip : integer;
  end;

var
  frmSifreDegis: TfrmSifreDegis;

implementation

uses data_modul;

{$R *.dfm}

procedure TfrmSifreDegis.btnSendClick(Sender: TObject);
var
   sql : string;
   ado : TADOQuery;
begin
  if sifreTip = ReceteSifre
  then begin
    if txtSifre.Text = txtTekrar.Text
    Then Begin
      sql := 'update DoktorEreceteSifre set ereceteSifre = ' + QuotedStr(txtSifre.Text)
             + ' where doktorKodu = ' + QuotedStr(doktorKullanici);
      ado := TADOQuery.Create(nil);
      try
        datalar.QueryExec(ado,sql);
        ShowMessageSkin('�ifreniz De�i�tirildi','','','info');
        close;
      finally
        ado.Free;
      end;
    End else
     ShowMessageSkin('�ifre Tekrar� Hatal�','','','info');
  end
  else
  begin
    if txtSifre.Text <> txtTekrar.Text Then
    Begin
     ShowMessageSkin('�ifre Tekrar� Hatal�','','','info');
     Exit;
    end;
    if SifreGecerliMi (txtSifre.Text, 6, 1, 0, 0, 1) Then Exit;
    sql :=
      'update Users set password = ' + QuotedStr(txtSifre.Text) + ', SifreDegisiklikTarihi = getdate (), Dogrulama = 1 where Kullanici = ' + QuotedStr(datalar.username);
    ado := TADOQuery.Create(nil);
    try
      datalar.QueryExec(ado,sql);
      ShowMessageSkin('�ifreniz De�i�tirildi','','','info');
      close;
    finally
      ado.Free;
    end;
  end;

end;

procedure TfrmSifreDegis.btnVazgecClick(Sender: TObject);
begin
    close;
end;

procedure TfrmSifreDegis.FormCreate(Sender: TObject);
begin
  inherited;
  cxPanel.Visible := False;
  Olustur(self,'','�ifre De�i�tir',17);
  SayfaCaption('','','','','');
end;

end.
