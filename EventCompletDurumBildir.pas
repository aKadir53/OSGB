unit EventCompletDurumBildir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxContainer,
  cxEdit, Menus, cxTextEdit, cxMemo, StdCtrls, cxButtons, cxGroupBox, cxPC,
  cxLabel,shellApi,data_modul,adodb,kadir, cxCheckBox, KadirLabel;

type
  TfrmEventDurumBildir = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    btnMesajGonder: TcxButton;
    txtmsg: TcxMemo;
    cxGroupBox2: TcxGroupBox;
    txtKonu: TcxMemo;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    txtMobil: TcxTextEditKadir;
    cxLabel1: TcxLabel;
    cxGroupBox5: TcxGroupBox;
    txtEMail: TcxTextEditKadir;
    cxLabel2: TcxLabel;
    chkMail: TcxCheckBox;
    chkSMS: TcxCheckBox;
    btnDosyaEkle: TcxButton;
    lblFileName: TcxLabel;
    procedure btnMesajGonderClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtmsgPropertiesChange(Sender: TObject);
    function findMethod(dllHandle : Cardinal; methodname : string) : FARPROC;
    function SendMesajGonder(tel,mesaj : string) : string;
    procedure txtmsgEnter(Sender: TObject);
    procedure btnDosyaEkleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    dosyaNo : string;
    hasta : string;
    MobilTel : string;
    EMail : string;
    mesaj : string;
  end;

  TSendMesaj = procedure(KullaniciAdi : string ; Sifre : string ; _from : string ;
                         TelefonNums : string ; mesaj : string;
                         var Sonuc : string);stdCall;

  const
   LIB_DLL = 'NoktaDLL.dll';

var
  frmEventDurumBildir: TfrmEventDurumBildir;
  filename : string;
implementation
    uses AnaUnit;
{$R *.dfm}


function TfrmEventDurumBildir.findMethod(dllHandle : Cardinal; methodname : string) : FARPROC;
begin
 Result := GetProcAddress(dllHandle,pchar(methodname));
end;

function TfrmEventDurumBildir.SendMesajGonder(tel,mesaj : string) : string;
var
  SendMesaj : TSendMesaj;
  dllHandle: Cardinal;
  _sonuc_ : string;
begin
  SendMesajGonder := '';
  dllHandle := LoadLibrary(LIB_DLL);
  try
    if dllHandle = 0 then exit;
    @SendMesaj := findMethod(dllHandle, 'SmsGonder');

    if addr(SendMesaj) <> nil
    then
      SendMesaj(datalar.SMSHesapUser,datalar.SMSHesapSifre,datalar.SMSHesapFrom,tel,mesaj,_sonuc_);

    SendMesajGonder := _sonuc_;

    if not Assigned(SendMesaj)
    then
      raise Exception.Create(LIB_DLL + ' içersinde SmsGonder Method bulunamadý!');
  finally
    FreeLibrary(dllHandle);
  end;
end;

procedure TfrmEventDurumBildir.btnDosyaEkleClick(Sender: TObject);
var
  open : TOpenDialog;
begin
  try
    open := TOpenDialog.Create(self);
    if not open.Execute then exit;
    filename := open.FileName;
    lblFileName.Caption := filename;
  finally
    open.Free;
  end;
end;

procedure TfrmEventDurumBildir.btnMesajGonderClick(Sender: TObject);
var
  sonuc ,tel , durum : string;
  SS : TStringList;
begin
    try
     if chkSMS.Checked then
     Begin
        Application.ProcessMessages;
        tel := MobilTel;

        if tel = ''
        then begin
          ShowMessageSkin('Mobil Telefon boþ olmamalýdýr','','','info');
          exit;
        end;
        Tel := trim(Tel); // telefondan sað sol boþluk varsa at
        if copy(Tel, 1, 1) = '0' then
        Tel := copy(Tel, 2, 20); // telefon ilk deðeri 0 sa at
        Tel := StringReplace(Tel, ' ', '', [rfReplaceAll]);
        // telefon iinde boþluk varsa at
        Tel := '90' + Tel; // tel baþýna 90 ekle

        sonuc := SendMesajGonder(Tel,txtmsg.Text);
        SS := TStringList.Create;
        try
          ExtractStrings(['|'], [], PChar(sonuc),SS);

          if SS[1] = '200'
          then
            Durum := 'SMS Mesaj Gönderildi'
          else
           Durum := 'SMS Mesaj Gönderilemedi'
        finally
          SS.Free;
        end;
      end;

      if chkMail.Checked then
      Begin
        if mailGonder(txtEMail.Text,txtKonu.Text,txtmsg.Text,filename) = '0000'
        then Durum := Durum + ' E-Mail Gönderildi'
        Else Durum := Durum + ' E-Mail Gönderilemedi';
      End;

    finally
      ShowMessageSkin(Durum,'','','info');

    end;
end;

procedure TfrmEventDurumBildir.FormShow(Sender: TObject);
begin
  txtMobil.Text := MobilTel;
  txtEMail.Text := EMail;

  txtmsg.Lines.Add(mesaj);
  txtmsg.Lines.Add('');
  txtmsg.Lines.Add(datalar.usernameAdi);
end;

procedure TfrmEventDurumBildir.txtmsgEnter(Sender: TObject);
begin
  if chkSMS.Checked then
  txtmsg.Properties.MaxLength := 160
  else
  txtmsg.Properties.MaxLength := 1000;

end;

procedure TfrmEventDurumBildir.txtmsgPropertiesChange(Sender: TObject);
begin
   cxGroupBox1.Caption := 'Mesaj : ' + inttostr(length(txtmsg.Text));
end;

end.
