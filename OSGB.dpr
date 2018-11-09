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
  MerkezBilgisi in 'MerkezBilgisi.pas' {frmMerkezBilgisi},
  HizmetKart in 'HizmetKart.pas' {frmHizmetKart},
  Receteler in 'Receteler.pas' {frmReceteler},
  receteSablonlari in 'receteSablonlari.pas' {frmReceteSablon},
  Update_G in 'Update_G.pas' {frmUpdate},
  MESSAGE in 'MESSAGE.PAS' {frmMessage},
  PersonelEgitimFrm in 'PersonelEgitimFrm.pas' {frmPersonelEgitim},
  Sorgulamalar in 'Sorgulamalar.pas' {frmSorgulamalar},
  PopupDBVerticalGridForm in 'PopupDBVerticalGridForm.PAS' {frmPopupDBVerticalGridForm},
  IsKazasi in 'IsKazasi.pas' {frmIsKazasi},
  LisansUzat in 'LisansUzat.pas' {frmLisansBilgisi},
  About_Frm in 'About_Frm.pas' {frmAbout},
  SahaSaglikGozetim in 'SahaSaglikGozetim.pas' {frmSahaSaglikGozetim},
  CihazKontrol in 'CihazKontrol.pas' {frmCihazKontrol},
  labParametreleri in 'labParametreleri.pas' {frmLabParams},
  labaratuvarKabul in 'labaratuvarKabul.pas' {frmLabaratuvarKabul},
  LabSonucGir in 'LabSonucGir.pas' {frmLabSonucGir},
  HastaListe in 'HastaListe.pas' {frmHastaListe},
  GrupDetayTanim in 'GrupDetayTanim.pas' {frmGrupDetayTanim},
  MESSAGE_y in 'MESSAGE_y.PAS' {frmMessage_y},
  EventCompletDurumBildir in 'EventCompletDurumBildir.pas' {frmEventDurumBildir},
  FaturaDetay in 'FaturaDetay.pas' {frmFaturaDetay},
  Faturalar in 'Faturalar.pas' {frmFaturalar},
  Tedarikci in 'Tedarikci.pas' {frmTedarikci},
  Cekler in 'Cekler.pas' {frmCekler},
  FirmaKontrol in 'FirmaKontrol.pas' {frmFirmaKontrol},
  FirmaEkipmanList in 'FirmaEkipmanList.pas' {frmFirmaEkipmanList},
  KasaBanka in 'KasaBanka.pas' {frmKasaBanka},
  RDS in 'RDS.pas' {frmRDS},
  sirketISGKurulToplanti in 'sirketISGKurulToplanti.pas' {frmISGKurulToplanti},
  sirketSahaGozetim in 'sirketSahaGozetim.pas' {frmSirketSahaGozetim},
  SirketSozlesme in 'SirketSozlesme.pas' {frmSirketSozlesme},
  Sozlesmeler in 'Sozlesmeler.pas' {frmSozlesmeler},
  UyumSoftPortal in 'UyumSoftPortal.pas' {frmPortal},
  sirketYillikCalismaPlan in 'sirketYillikCalismaPlan.pas' {frmSirketYillikCalismaPlan},
  sirketYillikEgitimPlan in 'sirketYillikEgitimPlan.pas' {frmSirketYillikEgitimPlan},
  AjandaOzet in 'AjandaOzet.pas' {frmAjandaOzet},
  CariHareketGiris in 'CariHareketGiris.pas' {frmCariHareket},
  CariHesapBorcAlacakToplam in 'CariHesapBorcAlacakToplam.pas' {frmCariHesapBorcAlacakToplam},
  CariHesapExtresi in 'CariHesapExtresi.pas' {frmCariHesapEkstre},
  DokumanYukle in 'DokumanYukle.pas' {frmDokumanYonetim},
  TransUtils in 'TransUtils.pas',
  DestekSorunBildir in 'DestekSorunBildir.pas' {frmDestekSorunBildir},
  CSGBservice in 'CSGBservice.pas';

// KadirMedula3 in '..\..\medula3wsdl\KadirMedula3.pas';

const
  AppalicationVer : integer = 1081;
  NoktaDLLGuncelle : string = 'E'; // NoktaDLL ve ek dll ler guncellenecekse E , yoksa H
  // Versiyon info kontrol etmeyi unutma

{$R *.res}
{$WEAKLINKRTTI ON}
  {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}

 var SiteVersiyon,ExeVersiyon: string; V1, V2, V3, V4: word;
   versiyon,sql,isg : string;
  _exe : PAnsiChar;
  dosya : TFileStream;


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDATALAR, DATALAR);
  Application.CreateForm(TAnaForm, AnaForm);
  //Application.CreateForm(TfrmUpdate, frmUpdate);???

  // form2.show;

//  FormatSettings.ShortDateFormat := 'dd.mm.yyyy';
//  FormatSettings.LongDateFormat := 'dd mmmm yyyy dddd';

  //if pos('UYUM',paramStr(0)) > 0 then isg := 'UYUMISG.exe' else isg := 'isg.exe';

  isg := 'isg.exe';
  datalar.versiyon := inttostr(AppalicationVer);
  if ForceDirectories ('C:\OSGB') then
  begin
      if FileExists('C:\OSGB\' + isg) = False
      Then begin
        dosya := TFileStream.Create('C:\OSGB\' + isg,fmCreate);
        try
        datalar.HTTP1.Get('http://213.159.30.6/' + isg ,TStream(dosya));
        finally
        dosya.Free;
      end;
    end;

  try
    versiyon := (datalar.HTTP1.Get('http://www.noktayazilim.net/OSGBVersiyon.txt'));
  except
    versiyon := inttostr(AppalicationVer);
  end;

  if versiyon = '' then versiyon := inttostr(AppalicationVer);

  if (strtoint(versiyon) > AppalicationVer)
  Then Begin
    try
     _exe :=  PAnsiChar(AnsiString('C:\OSGB\' + isg));
     WinExec(_exe,SW_SHOW);
    // datalar.KillTask('Diyaliz.exe');
    except on e : exception do
      begin
        ShowMessageSkin(e.Message,'','','info');
      end;
    end;
  End;


  if NoktaDLLGuncelle = 'E' then
  begin
      dosya := TFileStream.Create('C:\OSGB\NoktaDLL.dll',fmCreate);
      datalar.HTTP1.Get('http://www.noktayazilim.net/NoktaDLL.dll' ,TStream(dosya));
      dosya.Free;

      dosya := TFileStream.Create('C:\OSGB\BouncyCastle.Crypto.dll',fmCreate);
      datalar.HTTP1.Get('http://www.noktayazilim.net/BouncyCastle.Crypto.dll' ,TStream(dosya));
      dosya.Free;

      dosya := TFileStream.Create('C:\OSGB\EdocLib.dll',fmCreate);
      datalar.HTTP1.Get('http://www.noktayazilim.net/EdocLib.dll' ,TStream(dosya));
      dosya.Free;

      dosya := TFileStream.Create('C:\OSGB\Net.Pkcs11.dll',fmCreate);
      datalar.HTTP1.Get('http://www.noktayazilim.net/Net.Pkcs11.dll' ,TStream(dosya));
      dosya.Free;

      dosya := TFileStream.Create('C:\OSGB\itextsharp.dll',fmCreate);
      datalar.HTTP1.Get('http://www.noktayazilim.net/itextsharp.dll' ,TStream(dosya));
      dosya.Free;

    end;
  end;

 (*
    if FileExists('C:\OSGB\AlpemixCMX.exe') = False
    Then begin
      dosya := TFileStream.Create('C:\OSGB\AlpemixCMX.exe',fmCreate);
      datalar.HTTP1.Get('http://www.noktayazilim.net/AlpemixCMX.exe' ,TStream(dosya));
      dosya.Free;
    end;

    *)


  GetBuildInfo(Application.ExeName, V1, V2, V3,V4);
  ExeVersiyon:= Format('%d.%d.%d.%d', [V1, V2, V3,V4]);




  Application.CreateForm(TfrmLogin, frmLogin);
  try
    if frmLogin.ShowModal <> mrYes then Exit;
  finally
    FreeAndNil (frmLogin);
  end;
    Application.Run;
end.
