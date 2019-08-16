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
  data_modul in 'data_modul.pas' {DATALAR: TDataModule},
  rapor in 'rapor.pas' {frmRapor},
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
  CSGBservice in 'CSGBservice.pas',
  Anamnez in 'Anamnez.pas' {frmAnamnez},
  HastaListe in 'HastaListe.pas' {frmHastaListe},
  PersonelKart in 'PersonelKart.pas' {frmPersonelKart},
  GetFormClass in 'GetFormClass.pas',


  //Klinik Diyaliz
  HastaKart in 'HastaKart.pas' {frmHastaKart};

// KadirMedula3 in '..\..\medula3wsdl\KadirMedula3.pas';

const
  AppalicationVer : integer = 1097;   // Versiyon info kontrol etmeyi unutma  OSGBVersiyon.txt içine AppalicationVer deðerini yaz ftp at
  OSGBDllVersiyon : integer = 8;     //  DLLVersiyon.txt  içine DllVersiyon deðerini yaz ftp at
                                     // isg.exe yapý deðiþikliðinden sonra buna gerek kalmýyor

  NoktaURL : string = 'https://www.noktayazilim.net';
  OSGBVersiyonURL : string = 'http://www.noktayazilim.net/OSGBVersiyon.txt';
  DLLVersiyonURL : string = 'http://www.noktayazilim.net/OSGBDLLVersiyon.txt';

{$R *.res}
{$WEAKLINKRTTI ON}
  {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}

 var
   SiteVersiyon,ExeVersiyon: string; V1, V2, V3, V4: word;
   versiyon,Dversiyon ,sql,isg,isgOld : string;
   _exe : PAnsiChar;
   dosya : TFileStream;
   _httpPos_ : integer;

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDATALAR, DATALAR);
  Application.CreateForm(TAnaForm, AnaForm);


  datalar.programTip := copy(ExtractFileName(Application.ExeName),1,1);
  datalar.versiyonDownloadURL := RegOku('versiyonDownloadURL');
  datalar.versiyonDownloadURL := ifThen(datalar.versiyonDownloadURL = '' ,'https://www.noktayazilim.net', datalar.versiyonDownloadURL);
 _httpPos_ := pos(':',datalar.versiyonDownloadURL) - 1;

  isgOld := 'isg10.exe';
  isg := 'isg11.exe';


  datalar.versiyon := inttostr(AppalicationVer);
  if ForceDirectories ('C:\OSGB') then
  begin
      if FileExists('C:\OSGB\' + isg) = False
      Then begin
         if copy(datalar.versiyonDownloadURL,1,_httpPos_) = 'http'
         then begin
            dosya := TFileStream.Create('C:\OSGB\' + isg,fmCreate);
            try
             datalar.HTTP1.Get(datalar.versiyonDownloadURL + '/isg/' + isg ,TStream(dosya));
            finally
             dosya.Free;
            end;
            DeleteFile('C:\OSGB\isg.exe');
            CopyFile(pChar('C:\OSGB\'+isg),pChar('C:\OSGB\isg.exe'),true);
            DeleteFile('C:\OSGB\'+isgOld);
         end
         else
         begin
            try
              Download(datalar.versiyonDownloadURL + '/isg/' + isg,'mavinokta','nokta53Nokta','C:\OSGB\' + isg);
              DeleteFile('C:\OSGB\isg.exe');
              CopyFile(pChar('C:\OSGB\'+isg),pChar('C:\OSGB\isg.exe'),true);
              DeleteFile('C:\OSGB\'+isgOld);
            finally
            end;
         end;
  end;


  if copy(datalar.versiyonDownloadURL,1,_httpPos_) = 'https'
  then begin
     try
        Download(datalar.versiyonDownloadURL + '/OSGBVersiyon.txt','mavinokta','nokta53Nokta','C:\OSGB\OSGBVersiyon.txt');
        versiyon := FileToString('C:\OSGB\OSGBVersiyon.txt');
        Download(datalar.versiyonDownloadURL + '/OSGBDLLVersiyon.txt','mavinokta','nokta53Nokta','C:\OSGB\OSGBDLLVersiyon.txt');
        Dversiyon := FileToString('C:\OSGB\OSGBDLLVersiyon.txt');
     except
        versiyon := inttostr(AppalicationVer);
        Dversiyon := inttostr(OSGBDllVersiyon);
     end;
  end
  else
  begin
      try
        versiyon := (datalar.HTTP1.Get(datalar.versiyonDownloadURL + '/OSGBVersiyon.txt'));
        Dversiyon := (datalar.HTTP1.Get(datalar.versiyonDownloadURL + '/OSGBDLLVersiyon.txt'));
      except
        versiyon := inttostr(AppalicationVer);
        Dversiyon := inttostr(OSGBDllVersiyon);
      end;

  end;

  if versiyon = '' then versiyon := inttostr(AppalicationVer);
  if Dversiyon = '' then Dversiyon := inttostr(OSGBDllVersiyon);


  if (strtoint(Dversiyon) > OSGBDllVersiyon)
  Then Begin
     if copy(datalar.versiyonDownloadURL,1,_httpPos_) = 'http'
     then begin
        dosya := TFileStream.Create('C:\OSGB\NoktaDLL.dll',fmCreate);
        try
         datalar.HTTP1.Get(datalar.versiyonDownloadURL + '/NoktaDLL.dll' ,TStream(dosya));
        finally
         dosya.Free;
        end;

        dosya := TFileStream.Create('C:\OSGB\EdocLib.dll.dll',fmCreate);
        try
          datalar.HTTP1.Get(datalar.versiyonDownloadURL + '/EdocLib.dll.dll' ,TStream(dosya));
        finally
          dosya.Free;
        end;
        dosya := TFileStream.Create('C:\OSGB\EFaturaDLL.dll.dll',fmCreate);
        try
          datalar.HTTP1.Get(datalar.versiyonDownloadURL + '/EFaturaDLL.dll.dll' ,TStream(dosya));
        finally
          dosya.Free;
        end;
     end
     else
     begin
      Download(datalar.versiyonDownloadURL + '/NoktaDLL.dll','mavinokta','nokta53Nokta','C:\OSGB\NoktaDLL.dll');
      Download(datalar.versiyonDownloadURL + '/EdocLib.dll','mavinokta','nokta53Nokta','C:\OSGB\EdocLib.dll');
      Download(datalar.versiyonDownloadURL + '/EFaturaDLL.dll','mavinokta','nokta53Nokta','C:\OSGB\EFaturaDLL.dll');
     end;


  End;



  if (strtoint(versiyon) > AppalicationVer)
  Then Begin
    try
     _exe :=  PAnsiChar(AnsiString('C:\OSGB\isg.exe'));
     WinExec(_exe,SW_SHOW);
    // datalar.KillTask('Diyaliz.exe');
    except on e : exception do
      begin
        ShowMessageSkin(e.Message,'','','info');
      end;
    end;
  End;





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
