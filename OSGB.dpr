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
  AcilisMesajForm in 'AcilisMesajForm.pas' {Form2},
  data_modul in 'data_modul.pas' {DATALAR: TDataModule},
  rapor in 'rapor.pas' {frmRapor},
  HastaKart in 'HastaKart.pas' {frmHastaKart},
  Tnm_UserSettings in 'Tnm_UserSettings.pas' {frmUsers},
  FormKontrolUserSet in 'FormKontrolUserSet.pas' {frmKontrolUserSet},
  KadirType in 'KadirType.pas',
  AktifPasifSebeb in 'AktifPasifSebeb.pas' {frmAktifPasifSebebleri},
  HastaAsiKArti in 'HastaAsiKArti.pas' {frmAsiKarti},
  SMS in 'SMS.pas' {frmSMS},
  PopupForm in 'PopupForm.PAS' {frmPopup},
  sifreDegis in 'sifreDegis.pas' {frmSifreDegis},
  GridListe in 'GridListe.pas' {frmGridListeForm},
  TedaviKart in 'TedaviKart.pas' {frmTedaviBilgisi},
  HastaRecete in 'HastaRecete.pas' {frmHastaRecete},
  kadir in 'kadir.pas',
  NoktaDLL_TLB in 'NoktaDLL_TLB.pas',
  MedEczane in 'MedEczane.pas' {frmMedEczane},
  TeleEKG in 'TeleEKG.pas' {frmTeleEKG},
  Son6AylikTetkikSonuc in 'Son6AylikTetkikSonuc.pas' {frmSon6AylikTetkikSonuc},
  HastaTetkikEkle in 'HastaTetkikEkle.pas' {frmHastaTetkikEkle},
  KanTetkikleriTakip in 'KanTetkikleriTakip.pas' {frmKanTetkikTakip},
  KanTetkikleriDegerlendir in 'KanTetkikleriDegerlendir.pas' {frmKanTetkikTakipDegerlendir},
  IlacSarfListesi in 'IlacSarfListesi.pas' {frmIlacSarf},
  PopupDBGridForm in 'PopupDBGridForm.PAS' {frmPopupDBGridForm},
  GetFormClass in 'GetFormClass.pas',
  HastaTaniKart in 'HastaTaniKart.pas' {frmTaniKart},
  KurumLogin in 'KurumLogin.pas' {frmKurumBilgi},
  MedulaKurumSifreDegis in 'MedulaKurumSifreDegis.pas' {KurumSifreDegisForm},
  hizliKayit in 'hizliKayit.pas' {frmHizliKayit},
  TedaviListPivot in 'TedaviListPivot.pas' {frmTedaviListP},
  FirmaKart in 'FirmaKart.pas' {frmFirmaKart},
  Receteler in 'Receteler.pas' {frmReceteler};

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
  // form2.show;

 // form2.Label1.Caption := 'NoktaDLL Kontrol Ediliyor...';
 // Application.ProcessMessages;

  if FileExists('C:\OSGB\NoktaDLL.dll') = False
  Then begin
//    dosya := TFileStream.Create('C:\OSGB\NoktaDLL.dll',fmCreate);
//    datalar.HTTP1.Get('http://www.noktayazilim.net/NoktaDLL.dll' ,TStream(dosya));
 //   dosya.Free;
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
