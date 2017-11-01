unit yvunit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinLilian, dxSkinsDefaultPainters,Registry,
  dxActivityIndicator, cxContainer, cxEdit, cxLabel, cxProgressBar,ShellApi,TlHelp32,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, dxStatusBar, Vcl.ExtCtrls,ShlObj,ActiveX,ComObj;

type
  TfrmYv = class(TForm)
    Progress: TcxProgressBar;
    txtinfo: TcxLabel;
    HTTP1: TIdHTTP;
    cxButton1: TcxButton;
    dxStatusBar1: TdxStatusBar;
    Timer1: TTimer;
    procedure HTTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure cxButton1Click(Sender: TObject);
    procedure HTTP1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure HTTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure Timer1Timer(Sender: TObject);
    function KillTask(Dosyadi: string): integer;
    function DesktopPath : string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmYv: TfrmYv;
  filename : string;
  _max_,_ps_,_step_ : double;

  implementation

{$R *.dfm}


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



function TfrmYv.KillTask(Dosyadi: string): integer;
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
      Result := Integer(TerminateProcess(OpenProcess(PROCESS_TERMINATE, BOOL(0),islem32.th32ProcessID), 0));
    devam := Process32Next(fyakhandle,islem32);
   end;
  CloseHandle(fyakhandle);
end;

procedure TfrmYv.cxButton1Click(Sender: TObject);
var
 par , p : string;
 Handle : HWND;
 dosya : TFileStream;

begin

 KillTask('OSGB.exe');

 if ForceDirectories ('C:\OSGB') then
  begin

   // if FileExists('C:\OSGB\AlpemixCMX.exe') = False
   // Then begin
      filename := 'AlpemixCMX.exe';
      dosya := TFileStream.Create('C:\OSGB\AlpemixCMX.exe',fmCreate);
      HTTP1.Get('http://www.noktayazilim.net/AlpemixCMX.exe' ,TStream(dosya));
   // end;

   // if FileExists('C:\OSGB\NoktaDLL.dll') = False
   // Then begin
      filename := 'NoktaDLL.dll';
      dosya := TFileStream.Create('C:\OSGB\NoktaDLL.dll',fmCreate);
      HTTP1.Get('http://www.noktayazilim.net/NoktaDLL.dll' ,TStream(dosya));
   // end;

      filename := 'SmsApi.dll';
      dosya := TFileStream.Create('C:\OSGB\SmsApi.dll',fmCreate);
      HTTP1.Get('http://www.noktayazilim.net/SmsApi.dll' ,TStream(dosya));


  //  if FileExists('C:\OSGB\BouncyCastle.Crypto.dll') = False
   // Then begin
      filename := 'BouncyCastle.Crypto.dll';
      dosya := TFileStream.Create('C:\OSGB\BouncyCastle.Crypto.dll',fmCreate);
      HTTP1.Get('http://www.noktayazilim.net/BouncyCastle.Crypto.dll' ,TStream(dosya));
   // end;

   // if FileExists('C:\OSGB\EdocLib.dll') = False
   // Then begin
      filename := 'EdocLib.dll';
      dosya := TFileStream.Create('C:\OSGB\EdocLib.dll',fmCreate);
      HTTP1.Get('http://www.noktayazilim.net/EdocLib.dll' ,TStream(dosya));
   // end;

   // if FileExists('C:\OSGB\Net.Pkcs11.dll') = False
  //  Then begin
      filename := 'Net.Pkcs11.dll';
      dosya := TFileStream.Create('C:\OSGB\Net.Pkcs11.dll',fmCreate);
      HTTP1.Get('http://www.noktayazilim.net/Net.Pkcs11.dll' ,TStream(dosya));
   // end;

     // if FileExists('C:\OSGB\Net.Pkcs11.dll') = False
  //  Then begin
      filename := 'Microsoft.Web.Services3.dll';
      dosya := TFileStream.Create('C:\OSGB\Microsoft.Web.Services3.dll',fmCreate);
      HTTP1.Get('http://www.noktayazilim.net/Microsoft.Web.Services3.dll' ,TStream(dosya));
   // end;

   // if FileExists('C:\OSGB\OSGB.exe') = False
   // Then begin
      filename := 'OSGB.exe';
      dosya := TFileStream.Create('C:\OSGB\OSGB.exe',fmCreate);
      HTTP1.Get('http://www.noktayazilim.net/OSGB.exe' ,TStream(dosya));
  //  end;

    dosya.Free;
    filename := 'C:\OSGB\OSGB.exe';
    ShellExecute(Handle,'open', pwidechar(filename),
                pwidechar(''), nil, SW_SHOWNORMAL);

    p := DesktopPath;
    CreateLink('C:\OSGB\OSGB.exe','','', p+'\OSGB.lnk');

    halt;
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
