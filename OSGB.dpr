program OSGB;

uses
  Vcl.Forms,
  strutils,
  windows,
  Controls,
  Classes,
  ShellAPI,
  System.SysUtils,
  AnaUnit in 'AnaUnit.pas' {AnaForm},
  GirisUnit in 'GirisUnit.pas' {GirisForm},
  Tnm_Doktor in 'Tnm_Doktor.pas' {frmDoktorlar},
  Tnm_Ilaclar in 'Tnm_Ilaclar.pas' {frmIlaclar},
  Tnm_LabTest in 'Tnm_LabTest.pas' {frmLabTest},
  login in 'login.pas' {frmLogin},
  TedaviKart in 'TedaviKart.pas' {frmTedaviBilgisi},
  AcilisMesajForm in 'AcilisMesajForm.pas' {Form2},
  data_modul in 'data_modul.pas' {DATALAR: TDataModule},
  rapor in 'rapor.pas' {frmRapor},
  HastaKart in 'HastaKart.pas' {frmHastaKart},
  Tnm_UserSettings in 'Tnm_UserSettings.pas' {frmUsers},
  FormKontrolUserSet in 'FormKontrolUserSet.pas' {frmKontrolUserSet},
  KadirType in 'KadirType.pas',
  HastaAsiKArti in 'HastaAsiKArti.pas' {frmAsiKarti},
  SMS in 'SMS.pas' {frmSMS},
  PopupForm in 'PopupForm.PAS' {frmPopup},
  sifreDegis in 'sifreDegis.pas' {frmSifreDegis},
  GridListe in 'GridListe.pas' {frmGridListeForm},
  HastaRecete in 'HastaRecete.pas' {frmHastaRecete},
  kadir in 'kadir.pas',
  MedEczane in 'MedEczane.pas' {frmMedEczane},
  Son6AylikTetkikSonuc in 'Son6AylikTetkikSonuc.pas' {frmSon6AylikTetkikSonuc},
  HastaTetkikEkle in 'HastaTetkikEkle.pas' {frmHastaTetkikEkle},
  IlacSarfListesi in 'IlacSarfListesi.pas' {frmIlacSarf},
  PopupDBGridForm in 'PopupDBGridForm.PAS' {frmPopupDBGridForm},
  GetFormClass in 'GetFormClass.pas',
  HastaTaniKart in 'HastaTaniKart.pas' {frmTaniKart},
  KurumLogin in 'KurumLogin.pas' {frmKurumBilgi},
  MedulaKurumSifreDegis in 'MedulaKurumSifreDegis.pas' {KurumSifreDegisForm},
  hizliKayit in 'hizliKayit.pas' {frmHizliKayit},
  FirmaKart in 'FirmaKart.pas' {frmFirmaKart},
  Receteler in 'Receteler.pas' {frmReceteler},
  receteSablonlari in 'receteSablonlari.pas' {frmReceteSablon};

// KadirMedula3 in '..\..\medula3wsdl\KadirMedula3.pas';

const
  AppalicationVer : integer = 2209;
  // Versiyon info kontrol etmeyi unutma

{$R *.res}
 var SiteVersiyon,ExeVersiyon: string; V1, V2, V3, V4: word;
   versiyon,sql : string;
  _exe : PAnsiChar;
  dosya : TFileStream;

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDATALAR, DATALAR);
  Application.CreateForm(TAnaForm, AnaForm);
  Application.CreateForm(TfrmTedaviBilgisi, frmTedaviBilgisi);
  // form2.show;

 // form2.Label1.Caption := 'NoktaDLL Kontrol Ediliyor...';
 // Application.ProcessMessages;
  if ForceDirectories ('C:\OSGB') then
  begin
    if FileExists('C:\OSGB\YvOSGB.exe') = False
    Then begin
      dosya := TFileStream.Create('C:\OSGB\YvOSGB.exe',fmCreate);
      datalar.HTTP1.Get('http://www.noktayazilim.net/Yv.exe' ,TStream(dosya));
      dosya.Free;
    end;

    if FileExists('C:\OSGB\AlpemixCMX.exe') = False
    Then begin
      dosya := TFileStream.Create('C:\OSGB\AlpemixCMX.exe',fmCreate);
      datalar.HTTP1.Get('http://www.noktayazilim.net/AlpemixCMX.exe' ,TStream(dosya));
      dosya.Free;
    end;

    if FileExists('C:\OSGB\NoktaDLL.dll') = False
    Then begin
      dosya := TFileStream.Create('C:\OSGB\NoktaDLL.dll',fmCreate);
      datalar.HTTP1.Get('http://www.noktayazilim.net/NoktaDLL.dll' ,TStream(dosya));
      dosya.Free;
    end;

    if FileExists('C:\OSGB\E-imza\BouncyCastle.Crypto.dll') = False
    Then begin
      dosya := TFileStream.Create('C:\OSGB\BouncyCastle.Crypto.dll',fmCreate);
      datalar.HTTP1.Get('http://www.noktayazilim.net/BouncyCastle.Crypto.dll' ,TStream(dosya));
      dosya.Free;
    end;

    if FileExists('C:\OSGB\E-imza\EdocLib.dll') = False
    Then begin
      dosya := TFileStream.Create('C:\OSGB\EdocLib.dll',fmCreate);
      datalar.HTTP1.Get('http://www.noktayazilim.net/EdocLib.dll' ,TStream(dosya));
      dosya.Free;
    end;

    if FileExists('C:\OSGB\E-imza\Net.Pkcs11.dll') = False
    Then begin
      dosya := TFileStream.Create('C:\OSGB\Net.Pkcs11.dll',fmCreate);
      datalar.HTTP1.Get('http://www.noktayazilim.net/Net.Pkcs11.dll' ,TStream(dosya));
      dosya.Free;
    end;
  end;

  GetBuildInfo(Application.ExeName, V1, V2, V3,V4);
  ExeVersiyon:= Format('%d.%d.%d.%d', [V1, V2, V3,V4]);
 // ShowMessage(ExeVersiyon,'','','info');

 // form2.Label1.Caption := ExeVersiyon + ' Versiyon Kontrolü Yapýlýyor, Lütfen Bekleyiniz...';
 // Application.ProcessMessages;
 // Sleep(2000);

 // form2.Hide;




  Application.CreateForm(TfrmLogin, frmLogin);
  frmLogin.ShowModal;
  frmLogin := nil;

  if datalar.loginLog = True
  then begin
//    Application.CreateForm(TfrmRapor, frmRapor);
//    form2.Destroy;
    Application.Run;
  //  AnaForm.Show;
  end
  else
  begin
    Application.Terminate;
  end;
end.
