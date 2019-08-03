unit yvunit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeelPainters, dxSkinsCore,  dxSkinsDefaultPainters,Registry,
   cxContainer, cxEdit, cxLabel, cxProgressBar,ShellApi,TlHelp32,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  Vcl.StdCtrls, cxButtons, dxStatusBar, Vcl.ExtCtrls,ShlObj,ActiveX,ComObj,
  dxSkinsdxStatusBarPainter, acPNG, WinInet,strUtils,
  Menus,cxLookAndFeels, dxSkinsForm, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky;

type
  TfrmYv = class(TForm)
    Progress: TcxProgressBar;
    txtinfo: TcxLabel;
    HTTP1: TIdHTTP;
    cxButton1: TcxButton;
    dxStatusBar1: TdxStatusBar;
    Timer1: TTimer;
    UyumImage: TImage;
    NoktaImage: TImage;
    dxSkinController1: TdxSkinController;
    HTTP1id: TIdHTTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    procedure HTTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure cxButton1Click(Sender: TObject);
    procedure HTTP1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure HTTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure Timer1Timer(Sender: TObject);
    function KillTaskt(Dosyadi: string): integer;
    function DesktopPath : string;
    procedure FormShow(Sender: TObject);
    function Download(URL, User, Pass, FileName :  string ; FullURL : string = '443'): Boolean;
    function RegOku(dizi : string ; openKey : string = '') : Variant;
    procedure RegYaz(dizi , diziDegeri : string ; openKey : string = '');
    function IsNull (const s: String): Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  UYUM = 'UYUMOSGB.exe';
  Nokta = 'OSGB.exe';

var
  frmYv: TfrmYv;
  filename : string;
  _max_,_ps_,_step_ : double;
  versiyonDownloadURL : string;
  _httpPos_ : integer;

  implementation

{$R *.dfm}

function TfrmYv.IsNull (const s: String): Boolean;
begin
  Result := Trim (s) = '';
end;

function TfrmYv.RegOku(dizi : string ; openKey : string = '') : Variant;
var
   reg : tregistry;
   value : Variant;
begin
   reg := Tregistry.Create;
   try
     if isnull (openKey) then openkey := 'Software\NOKTA\NOKTA';

     reg.OpenKey(openKey,True);
     try
       value := reg.ReadString(dizi);
     finally
       reg.CloseKey;
     end;
   finally
     reg.Free;
   end;
   Result := value;
end;

procedure TfrmYv.RegYaz(dizi , diziDegeri : string ; openKey : string = '');
var
  reg : tregistry;
begin
 (*
  reg := TRegistry.Create(KEY_READ);
  reg.RootKey := HKEY_LOCAL_MACHINE;

  if (not reg.KeyExists('Software\\MyCompanyName\\MyApplication\\')) then
    begin
      MessageDlg('Key not found! Created now.',
                            mtInformation, mbOKCancel, 0);
    end;
  reg.Access := KEY_WRITE;
  openResult := reg.OpenKey('Software\\MyCompanyName\\MyApplication\\',True);

    *)

  reg := Tregistry.Create;
  try
    if IsNull (OpenKey) then OpenKey := 'Software\NOKTA\NOKTA';
    reg.OpenKey(openKey,True);
    try
      reg.WriteString(dizi,diziDegeri);
    finally
      reg.CloseKey;
    end;
  finally
    reg.Free;
  end;
end;


function TfrmYv.Download(URL, User, Pass, FileName :  string ; FullURL : string = '443'): Boolean;
const
  BufferSize = 1024;
var
  hSession, hURL: HInternet;
  Buffer: array[1..BufferSize] of Byte;
  BufferLen: DWORD;
  F: File;
begin
   Result := False;
   hSession := InternetOpen('', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0) ;

   // Establish the secure connection
   InternetConnect (
     hSession,
     PChar(FullURL),
     INTERNET_DEFAULT_HTTPS_PORT,
     PChar(User),
     PChar(Pass),
     INTERNET_SERVICE_HTTP,
     0,
     0
   );

  try
    hURL := InternetOpenURL(hSession, PChar(URL), nil, 0, INTERNET_FLAG_RELOAD, 0) ;
    try
      AssignFile(f, FileName);
      Rewrite(f,1);
      try
        repeat
          InternetReadFile(hURL, @Buffer, SizeOf(Buffer), BufferLen) ;
          BlockWrite(f, Buffer, BufferLen)
        until BufferLen = 0;
      finally
        CloseFile(f) ;
        Result := True;
        Progress.Position := Progress.Position + 1;
        Application.ProcessMessages;
      end;
    finally
      InternetCloseHandle(hURL)
    end
  finally
    InternetCloseHandle(hSession)
  end;
end;



function TfrmYv.DesktopPath : string;
var
 theReg  : TRegistry;
 KeyName : String;
begin
 theReg := TRegistry.Create;
 KeyName := 'Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders';
 if (theReg.KeyExists(KeyName)) then
   begin
     theReg.OpenKey(KeyName, False);
     DesktopPath := theReg.ReadString('Desktop');
   end
 else
   begin
     theReg.OpenKey(KeyName, True);
     DesktopPath := 'Error';
   end;
 theReg.Free;
end;


procedure TfrmYv.FormShow(Sender: TObject);
var
  p : string;
begin
(*
  p := paramStr(0);
  if pos('UYUM',p) > 0
  then begin
    Caption := 'Uyumsoft Bilgi Sistemleri ve Teknolojileri A.Þ.';
    UyumImage.Visible := True;
    NoktaImage.Visible := False;
  end
  Else
  Begin
    Caption := 'Mavi Nokta Bilgi Teknolojileri LTD.ÞTÝ.';
    UyumImage.Visible := False;
    NoktaImage.Visible := True;
  End;

  *)

end;

procedure CreateLink(Target, Args, WorkDir, ShortCutName: string);
var
  IObj: IUnknown;
  Link: IShellLink;
  IPFile: IPersistFile;
  TargetW: WideString;
begin
  IObj := CreateComObject(CLSID_ShellLink);
  Link := IObj as IShellLink;
  IPFile := IObj as IPersistFile;

  with Link do
  begin
    SetPath(PChar(Target));
    SetArguments(PChar(Args));
    SetShowCmd(SW_SHOWMINIMIZED);
    SetWorkingDirectory(PChar(WorkDir));
  end;
  TargetW := ShortCutName;
  IPFile.Save(PWChar(TargetW), False);
end;



function TfrmYv.KillTaskt(Dosyadi: string): integer;
const
   PROCESS_TERMINATE = $0001;
var
   devam: BOOL;
   fyakhandle: THandle;
   islem32: TProcessEntry32;
begin
   result := 0;
   fyakhandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
   islem32.dwSize := Sizeof(islem32);
   devam := Process32First(fyakhandle,islem32);

   while integer(devam) <> 0 do
   begin
     if ((UpperCase(ExtractFileName(islem32.szExeFile)) = UpperCase(Dosyadi))
      or (UpperCase(islem32.szExeFile) = UpperCase(Dosyadi))) then
      begin
      Result := Integer(TerminateProcess(OpenProcess(PROCESS_TERMINATE, BOOL(0),islem32.th32ProcessID), 0));
      end;
    devam := Process32Next(fyakhandle,islem32);
   end;
  CloseHandle(fyakhandle);
end;

procedure TfrmYv.cxButton1Click(Sender: TObject);
var
 par , p : string;
 Handle : HWND;
 dosya : TFileStream;
 exeFile : string;
begin

 KillTaskt('OSGB.exe');
// KillTaskt('UYUMOSGB.exe');
//  RegYaz ('versiyonDownloadURL','');



  versiyonDownloadURL := RegOku('versiyonDownloadURL');
  versiyonDownloadURL := ifThen(versiyonDownloadURL = '' ,'https://www.noktayazilim.net', versiyonDownloadURL);
 _httpPos_ := pos(':',versiyonDownloadURL) - 1;


 if ForceDirectories ('C:\OSGB') then
  begin

    if FileExists('C:\OSGB\ALPEMIXCMX.exe') = False
    Then begin
      try
        filename := 'ALPEMIXCMX.exe';
        Download(versiyonDownloadURL + '/'+filename,'mavinokta','nokta53Nokta','C:\OSGB\'+filename);
      finally
      end;
    end;


     if copy(versiyonDownloadURL,1,_httpPos_) = 'http'
     then begin
        dosya := TFileStream.Create('C:\OSGB\NoktaDLL.dll',fmCreate);
        try
          HTTP1.Get(versiyonDownloadURL + '/NoktaDLL.dll' ,TStream(dosya));
        finally
         dosya.Free;
        end;
        dosya := TFileStream.Create('C:\OSGB\EFaturaDLL.dll',fmCreate);
        try
          HTTP1.Get(versiyonDownloadURL + '/EFaturaDLL.dll' ,TStream(dosya));
        finally
         dosya.Free;
        end;
        dosya := TFileStream.Create('C:\OSGB\SmsApi.dll',fmCreate);
        try
          HTTP1.Get(versiyonDownloadURL + '/SmsApi.dll' ,TStream(dosya));
        finally
         dosya.Free;
        end;
        dosya := TFileStream.Create('C:\OSGB\BouncyCastle.Crypto.dll',fmCreate);
        try
          HTTP1.Get(versiyonDownloadURL + '/BouncyCastle.Crypto.dll' ,TStream(dosya));
        finally
         dosya.Free;
        end;
        dosya := TFileStream.Create('C:\OSGB\EdocLib.dll',fmCreate);
        try
          HTTP1.Get(versiyonDownloadURL + '/EdocLib.dll' ,TStream(dosya));
        finally
         dosya.Free;
        end;
        dosya := TFileStream.Create('C:\OSGB\Net.Pkcs11.dll',fmCreate);
        try
          HTTP1.Get(versiyonDownloadURL + '/Net.Pkcs11.dll' ,TStream(dosya));
        finally
         dosya.Free;
        end;
        dosya := TFileStream.Create('C:\OSGB\itextsharp.dll',fmCreate);
        try
          HTTP1.Get(versiyonDownloadURL + '/itextsharp.dll' ,TStream(dosya));
        finally
         dosya.Free;
        end;
        dosya := TFileStream.Create('C:\OSGB\Microsoft.Web.Services3.dll',fmCreate);
        try
          HTTP1.Get(versiyonDownloadURL + '/Microsoft.Web.Services3.dll' ,TStream(dosya));
        finally
         dosya.Free;
        end;
        dosya := TFileStream.Create('C:\OSGB\Microsoft.VisualBasic.PowerPacks.Vs.dll',fmCreate);
        try
          HTTP1.Get(versiyonDownloadURL + '/Microsoft.VisualBasic.PowerPacks.Vs.dll' ,TStream(dosya));
        finally
         dosya.Free;
        end;
        dosya := TFileStream.Create('C:\OSGB\OSGB.exe',fmCreate);
        try
          HTTP1.Get(versiyonDownloadURL + '/OSGB.exe' ,TStream(dosya));
        finally
         dosya.Free;
        end;

     end
     else
     begin
      filename := 'NoktaDLL.dll';
      Download(versiyonDownloadURL + '/'+filename,'mavinokta','nokta53Nokta','C:\OSGB\'+filename);
      filename := 'EFaturaDLL.dll';
      Download(versiyonDownloadURL + '/'+filename,'mavinokta','nokta53Nokta','C:\OSGB\'+filename);
      filename := 'SmsApi.dll';
      Download(versiyonDownloadURL + '/'+filename,'mavinokta','nokta53Nokta','C:\OSGB\'+filename);
      filename := 'BouncyCastle.Crypto.dll';
      Download(versiyonDownloadURL + '/'+filename,'mavinokta','nokta53Nokta','C:\OSGB\'+filename);
      filename := 'EdocLib.dll';
      Download(versiyonDownloadURL + '/'+filename,'mavinokta','nokta53Nokta','C:\OSGB\'+filename);
      filename := 'Net.Pkcs11.dll';
      Download(versiyonDownloadURL + '/'+filename,'mavinokta','nokta53Nokta','C:\OSGB\'+filename);
      filename := 'itextsharp.dll';
      Download(versiyonDownloadURL + '/'+filename,'mavinokta','nokta53Nokta','C:\OSGB\'+filename);
      filename := 'Microsoft.Web.Services3.dll';
      Download(versiyonDownloadURL + '/'+filename,'mavinokta','nokta53Nokta','C:\OSGB\'+filename);
      filename := 'Microsoft.VisualBasic.PowerPacks.Vs.dll';
      Download(versiyonDownloadURL + '/'+filename,'mavinokta','nokta53Nokta','C:\OSGB\'+filename);
      filename := Nokta;
      Download(versiyonDownloadURL + '/'+filename,'mavinokta','nokta53Nokta','C:\OSGB\'+filename);
     end;


    filename := 'C:\OSGB\' + Nokta;
    ShellExecute(Handle,'open', pwidechar(filename),pwidechar(''), nil, SW_SHOWNORMAL);

    p := DesktopPath;
    CreateLink('C:\OSGB\' + Nokta,'','', p+'\OSGB.lnk');

    halt;
    //x
  end
end;

procedure TfrmYv.HTTP1Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
 // Progress.Position := Progress.Position + AWorkCount;
 // Application.ProcessMessages;
end;

procedure TfrmYv.HTTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
  txtinfo.Caption := filename + ' Yükleniyor , Lütfen Bekleyiniz ... ';
  Progress.Position := Progress.Position + 1;
  Application.ProcessMessages;
end;

procedure TfrmYv.HTTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  txtinfo.Caption := filename + ' Yüklendi ';
  Application.ProcessMessages;
end;

procedure TfrmYv.Timer1Timer(Sender: TObject);
begin
 Timer1.Enabled := false;
 Progress.Properties.Max := 8;
 cxButton1.Click;
end;

end.
