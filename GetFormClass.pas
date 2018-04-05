unit GetFormClass;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Consts,
  Dialogs, ADODB, registry, ComCtrls, StdCtrls, db, ExtCtrls,Kadir,KadirType,
  ShellApi, forms,GirisUnit,cxPc,strUtils;


function FormClass(formId : integer) : TComponentClass;
function FormINIT(FormTag : Integer;MidiForm : TForm;
                  Values : TGirisFormRecord ; Value : String = '';
                  Tab : TcxTabSheet = nil;ik : izinKontrol = ikHayir ;
                  izinPrm : string = '') : TGirisForm;overload;

function FormINIT(FormTag : Integer;MidiForm : TForm;
                  Value : String = '';
                  Tab : TcxTabSheet = nil;ik : izinKontrol = ikHayir ;
                  izinPrm : string = '';
                  tc : String = '') : TGirisForm;overload;

function FormINIT(FormTag : Integer;Value : TGirisFormRecord;ik : izinKontrol = ikHayir ;
                  izinPrm : string = '') : TGirisForm;overload;

function FormINIT(MenuID : Integer) : Boolean;overload;


function FormINITTForm(FormTag : Integer) : TForm;
//function FormINIT(FormTag : Integer; Hasta : THasta ; Dialog : showDialog = OFShowModal) : Boolean;overload;

function FormClassType(formId : integer) : TComponent;
function GetFormCaptionInfo(const formId : integer; var pFormCaption, pFormAltCaption, pUserGroup, pUserGroupDesc : String; pMsg: boolean = True) : Boolean;

function FormTabImageIndex(formId : integer) : integer;
function PopupFormCaption(islemTag : integer ; var TabCaption : string) : String;

implementation

uses message,Data_Modul,AnaUnit,message_y,popupForm,rapor,TedaviKart,Son6AylikTetkikSonuc,
             HastaRecete,sifreDegis,HastaTetkikEkle,DokumanYukle,
             Receteler,Sorgulamalar,sorguRaporCalistir,CariHareketGiris,CariHesapExtresi,
             HastaKart,FirmaKart,hizliKayit,receteSablonlari,RDS,KKD,Tedarikci,Cekler,
             HastaListe,IsKazasi,Anamnez,GrupDetayTanim,Sozlesmeler,KasaBanka,
             Tnm_UserSettings,HastaAsiKarti,HastaTaniKart,sirketSahaGozetim,
             KurumLogin,Update_G, labaratuvarKabul,Faturalar,FaturaDetay,
             MedulaKurumSifreDegis,labParametreleri,SirketSozlesme,
             Tnm_Doktor,LabTestAyarlari,SahaSaglikGozetim, CariHesapBorcAlacakToplam,
             PopupDBGridForm,PopupDBVerticalGridForm,AjandaOzet,sirketISGKurulToplanti,
             Tnm_Ilaclar, PersonelEgitimFrm, About_Frm, MerkezBilgisi,
  HizmetKart;




function FormTabImageIndex(formId : integer) : integer;
begin
   case formId of
     TagfrmHastaKart : Result := 39;
     TagfrmFirmaKart : Result := -1;
     TagfrmMerkezBilgisi : Result := -1;
     TagfrmHizmetKart : Result := -1;
     TagfrmTedaviBilgisi : Result := 2;
     TagfrmSaglikNetOnline : Result := 3;
     TagfrmHastaRecete : Result := 4;
     TagfrmHastaListe : Result := 6;
     TagfrmTeleEkg : Result := 7;
     TagfrmSeansDagilimi : Result := 9;
     TagfrmFatura : Result := 38;
     TagfrmTakipBilgisiOku : Result := 11;
     TagfrmUsers : Result := 12;
     TagfrmHastaIlacTedavi : Result := 13;
     TagfrmTakipNo : Result := 14;
     TagfrmAsiKarti : Result := 15;
     TagfrmHastaDiyalizIzlem : Result := 20;
     TagfrmDamarIzi : Result := 66;
     TagfrmKurumBilgi : Result := 87;
     TagKurumSifreDegisForm : Result := -1;
     TagfrmDonemSonlandir : Result := -1;
     TagfrmGonderilmis : Result := -1;
     TagfrmTahliltakip : Result := -1;
     TagfrmTahlilsonucGir : Result := -1;
     TagfrmDoktorlar : Result := -1;
     TagfrmAbout : Result := -1;
     TagfrmPersonelEgitim : Result := -1;
     TagfrmHemsireler : Result := -1;
     TagfrmMakina : Result := 89;
     TagfrmTestAyarlari : Result := -1;
     TagfrmKiloOrder : Result := -1;
     TagfrmHizliKayitPersonel : Result := -1;
     TagfrmHizliKayitDisAktarimlar : Result := -1;
     TagfrmIlaclar : Result := -1;
     TagfrmReceteler : Result := -1;
  end;
end;

function PopupFormCaption(islemTag : integer ; var TabCaption : string) : String;
begin
   case islemTag of
     gdgelisAc :
         Begin
           TabCaption := 'Geliþ Aç';
           Result := 'GELÝÞ ÝÞLEMLERÝ';
         End;

     gdgelisDuzenle :
         Begin
           TabCaption := 'Geliþ Düzenle';
           Result := 'GELÝÞ ÝÞLEMLERÝ';
         End;
     ReceteIlacEkle,ReceteIlacDuzenle :
         Begin
           TabCaption := ifThen(islemTag = ReceteIlacEkle,'Ýlaç Ekle','Ýlaç Düzenle');
           Result := 'REÇETE ÝÞLEMLERÝ';
         End;
    SeansInsert :
         Begin
           TabCaption := 'Seans Oluþtur';
           Result := 'SEANS ÝÞLEMLERÝ';
         End;
    SeansDoktorUpdate :
         begin
           TabCaption := 'Seans Doktor Düzenle';
           Result := 'SEANS ÝÞLEMLERÝ';
         end;
    SeansTarihiUpdate :
         begin
           TabCaption := 'Seans Tarihi Düzenle';
           Result := 'SEANS ÝÞLEMLERÝ';
         end;
    PrgSifre  :
         begin
           TabCaption := 'Þifre Deðiþtir';
           Result := 'AYARLAR';
         end;
   end;

end;

function GetFormCaptionInfo(const formId : integer; var pFormCaption, pFormAltCaption, pUserGroup, pUserGroupDesc : String; pMsg: boolean = True) : Boolean;
var
  sql : string;
  ado : TADOQuery;
  T : TstringList;
begin
  Result := False;
  sql := 'select fc.formCaption, fc.formAltCaption, fc.UserGroup, ug.ADI UserGroupDesc '+
         'from FormCaption fc '+
         'left outer join UserGroups ug on ug.KODU = fc.UserGroup '+
         'where fc.formTag = ' + inttostr(abs(formId));
  ado := TADOQuery.Create(nil);
  try
    datalar.QuerySelect(ado,sql);
    if ado.Eof then
    begin
      pFormCaption := '';
      pFormAltCaption := '';
      pUserGroup := '';
      pUserGroupDesc := '';
      if pMsg then ShowMessageSkin('Form Baþlýk Bilgisi Tanýmlanmamýþ : "FormCaption" ('+IntToStr (formID)+')', '', '', 'info');
      Exit;
    end;
    pFormCaption := ado.Fields[0].AsString;
    pFormAltCaption := ado.Fields[1].AsString;
    if ado.Fields[2].IsNull then
      pUserGroup := ''
     else
      pUserGroup := IntToStr (ado.Fields[2].AsInteger);
    pUserGroupDesc := ado.Fields[3].AsString;
    if not IsNull (pUserGroup) then
    begin
      T := TStringList.Create;
      ExtractStrings(['0'],[],pchar(pUserGroup),T);

      if (pUserGroup <> DATALAR.UserGroup)
      then
      begin
        if pMsg then ShowMessageSkin('Bu form "' + pUserGroupDesc + '" kullanýcý grubuna özeldir', '', '', 'info');
        Exit;
      end;

    end;
    Result := True;
  finally
    ado.Free;
  end;
end;

function FormClass(formId : integer) : TComponentClass;
begin
  case abs(formId) of
   TagfrmHastaKart : Result := TfrmHastaKart;
   TagfrmFirmaKart : Result := TfrmFirmaKart;
   TagfrmMerkezBilgisi : Result := TfrmMerkezBilgisi;
   TagfrmHizmetKart : Result := TfrmHizmetKart;
   TagfrmPopupDBGridForm,TagfrmBolum,TagfrmBirim : Result := TfrmPopupDBGridForm;
   TagfrmPopupDBVerticalGridForm : Result := TfrmPopupDBVerticalGridForm;
   TagfrmHizliKayitPersonel, TagfrmHizliKayitDisAktarimlar : Result := TfrmHizliKayit;
   TagfrmReceteSablon : Result := TfrmReceteSablon;
   TagfrmSorgulamalar : Result := TfrmSorgulamalar;
   TagfrmSorguCalistir : Result := TfrmRaporCalistir;
   TagfrmIsKazasi : Result := TfrmIsKazasi;
   TagfrmAnamnez,TagfrmIseGiris : Result := TfrmAnamnez;
   TagfrmTetkikIstemSablon : Result := TfrmGrupDetayTanim;
   TagfrmDokumanYonetim : Result := TfrmDokumanYonetim;

   TagfrmTedaviBilgisi : Result := TfrmTedaviBilgisi;
   TagfrmHastaRecete : Result := TfrmHastaRecete;
   TagfrmHastaListe,TagfrmDoktorHastaListe : Result := TfrmHastaListe;

   TagfrmUsers : Result := TfrmUsers;
   TagfrmHastaTetkikEkle : Result := TfrmHastaTetkikEkle;
   TagfrmAsiKarti : Result := TfrmAsiKarti;
   TagfrmTaniKarti : Result := TfrmTaniKart;

   TagfrmKurumBilgi : Result := TfrmKurumBilgi;
   TagKurumSifreDegisForm : Result := TKurumSifreDegisForm;

   TagfrmDoktorlar,TagfrmIGU,TagfrmDigerSaglikPers : Result := TfrmDoktorlar;
   TagfrmAbout : Result := TfrmAbout;
   TagfrmPersonelEgitim : Result := TfrmPersonelEgitim;
   TagfrmTestAyarlari : Result := TfrmTestAyarlari;

   TagfrmLabParametreleri : Result := TfrmLabParams;
   TagfrmLabKabul : Result := TfrmLabaratuvarKabul;

   TagfrmIlaclar,TagfrmIlacAnaGrup,TagfrmIlacEtkenMadde : Result := TfrmIlaclar;
   TagfrmSon6AylikTetkikSonuc : Result := TfrmSon6AylikTetkikSonuc;
   TagfrmReceteler : Result := TfrmReceteler;
   TagfrmFaturalar : Result := TfrmFaturalar;
   TagfrmFatura : Result := TfrmFaturaDetay;
   TagfrmSirketSozlesme : Result := TfrmSirketSozlesme;
   TagfrmSirketSozlesmeler : Result := TfrmSozlesmeler;
   TagfrmCariHareketGiris : Result := TfrmCariHareket;
   TagfrmCariHesapEkstre : Result := TfrmCariHesapEkstre;
   TagfrmCariHesapBorcAlacakToplam : Result := TfrmCariHesapBorcAlacakToplam;
   TagfrmSahaSaglikGozetim : Result := TfrmSahaSaglikGozetim;
   TagfrmRDS : Result := TfrmRDS;
   TagfrmKKD : Result := TfrmKKD;
   TagfrmCekler : Result := TfrmCekler;
   TagfrmKasaBanka : Result := TfrmKasaBanka;
   TagfrmTedarikci : Result := TfrmTedarikci;
   TagfrmSirketSahaGozetim : Result := TfrmSirketSahaGozetim;
   TagfrmISGKurulToplanti : Result := TfrmISGKurulToplanti;
 //  TagfrmAjandaOzet : Result := TfrmAjandaOzet;
  end;
end;

function FormClassType(formId : integer) : TComponent;
begin
  case abs(formId) of
   TagfrmHastaKart : Result := frmHastaKart;
   TagfrmFirmaKart : Result := frmFirmaKart;
   TagfrmMerkezBilgisi : Result := frmMerkezBilgisi;
   TagfrmHizmetKart : Result := frmHizmetKart;
   TagfrmPopupDBGridForm,TagfrmBolum,TagfrmBirim,TagfrmSube,TagFirmaCalismalari : Result := frmPopupDBGridForm;
   TagfrmPopupDBVerticalGridForm : Result := frmPopupDBVerticalGridForm;
   TagfrmHizliKayitPersonel, TagfrmHizliKayitDisAktarimlar : Result := frmHizliKayit;
   TagfrmReceteSablon : Result := frmReceteSablon;
   TagfrmSorgulamalar : Result := frmSorgulamalar;
   TagfrmSorguCalistir : Result := frmRaporCalistir;
   TagfrmIsKazasi : Result := frmIsKazasi;
   TagfrmTedaviBilgisi : Result := frmTedaviBilgisi;
   TagfrmAnamnez,TagfrmIseGiris : Result := frmAnamnez;
   TagfrmHastaRecete : Result := frmHastaRecete;
   TagfrmHastaListe,TagfrmDoktorHastaListe : Result := frmHastaListe;
   TagfrmTetkikIstemSablon : Result := frmGrupDetayTanim;
   TagfrmDokumanYonetim : Result := frmDokumanYonetim;
   TagfrmUsers : Result := frmUsers;
   TagfrmHastaTetkikEkle : Result := frmHastaTetkikEkle;
   TagfrmAsiKarti : Result := frmAsiKarti;
   TagfrmTaniKarti : Result := frmTaniKart;

   TagfrmKurumBilgi : Result := frmKurumBilgi;
   TagKurumSifreDegisForm : Result := KurumSifreDegisForm;

   TagfrmDoktorlar,TagfrmIGU,TagfrmDigerSaglikPers : Result := frmDoktorlar;
   TagfrmAbout : Result := frmAbout;
   TagfrmPersonelEgitim : Result := frmPersonelEgitim;
   TagfrmTestAyarlari : Result := frmTestAyarlari;

   TagfrmIlaclar,TagfrmIlacAnaGrup,TagfrmIlacEtkenMadde  : Result := frmIlaclar;
   TagfrmSon6AylikTetkikSonuc : Result := frmSon6AylikTetkikSonuc;
   TagfrmReceteler : Result := frmReceteler;
   TagfrmSahaSaglikGozetim : Result := frmSahaSaglikGozetim;
   TagfrmUpdate : Result := frmUpdate;þ
   TagfrmFaturalar : Result := frmFaturalar;
   TagfrmFatura : Result := frmFaturaDetay;
   TagfrmSirketSozlesme : Result := frmSirketSozlesme;
   TagfrmSirketSozlesmeler : Result := frmSozlesmeler;

   TagfrmCariHareketGiris : Result := frmCariHareket;
   TagfrmCariHesapEkstre : Result := frmCariHesapEkstre;
   TagfrmCariHesapBorcAlacakToplam : Result := frmCariHesapBorcAlacakToplam;
   TagfrmRDS : Result := frmRDS;
   TagfrmKKD : Result := frmKKD;
   TagfrmCekler : Result := frmCekler;
   TagfrmKasaBanka : Result := frmKasaBanka;
   TagfrmTedarikci : Result := frmTedarikci;
   TagfrmSirketSahaGozetim : Result := frmSirketSahaGozetim;
   TagfrmISGKurulToplanti : Result := frmISGKurulToplanti;

   TagfrmLabParametreleri : Result := frmLabParams;
   TagfrmLabKabul : Result := frmLabaratuvarKabul;
//   TagfrmAjandaOzet : Result := frmAjandaOzet;

  end;
end;


function FormINIT(FormTag : Integer;MidiForm : TForm;
                  Values : TGirisFormRecord ; Value : String = '';
                  Tab : TcxTabSheet = nil;ik : izinKontrol = ikHayir;
                  izinPrm : string = '') : TGirisForm;
var
  Form : TGirisForm;
  sFormCaption, sFormAltCaption, sFormUserGroup, sFormUserGroupDesc: String;
  bTamam : Boolean;
begin
  Result := nil;
  if not GetFormCaptionInfo (abs(FormTag), sFormCaption, sFormAltCaption, sFormUserGroup, sFormUserGroupDesc) then
    Exit;
  izinPrm := ifThen(izinPrm = '',sFormAltCaption,izinPrm);
  if ik = ikEvet
  then
  if UserRight(sFormCaption, izinPrm) = False
  then begin
      UserRightInsert(sFormCaption,izinPrm,datalar.username);
      ShowMessageSkin(sFormCaption,izinPrm + ' Ýþlemi Ýçin Yetkiniz Bulunmamaktadýr !','','info');
      exit;
  end;
  bTamam := False;
  case abs(FormTag) of
     TagfrmHastaKart : frmHastaKart := TfrmHastaKart.Create(Tab);
     TagfrmFirmaKart : frmFirmaKart := TfrmFirmaKart.Create(Tab);
     TagfrmMerkezBilgisi : frmMerkezBilgisi := TfrmMerkezBilgisi.Create(Tab);
     TagfrmHizmetKart : frmHizmetKart := TfrmHizmetKart.Create(Tab);
     TagfrmHizliKayitPersonel, TagfrmHizliKayitDisAktarimlar : frmHizliKayit := TfrmHizliKayit.Create(Tab);
     TagfrmPopupDBVerticalGridForm : frmPopupDBVerticalGridForm := TfrmPopupDBVerticalGridForm.Create(Tab);

     TagfrmHastaListe,TagfrmDoktorHastaListe : frmHastaListe := TfrmHastaListe.Create(Tab);
     TagfrmSorguCalistir : frmRaporCalistir := TfrmRaporCalistir.Create(Tab);
     TagfrmSon6AylikTetkikSonuc : frmSon6AylikTetkikSonuc := TfrmSon6AylikTetkikSonuc.Create(Tab);
     TagfrmReceteler : frmReceteler := TfrmReceteler.Create(Tab);
     TagfrmSahaSaglikGozetim : frmSahaSaglikGozetim := TfrmSahaSaglikGozetim.Create(Tab);

     TagfrmLabParametreleri : frmLabParams:= TfrmLabParams.Create(Tab);
     TagfrmLabKabul : frmLabaratuvarKabul := TfrmLabaratuvarKabul.Create(Tab);
     TagfrmAnamnez,TagfrmIseGiris : frmAnamnez := TfrmAnamnez.Create(Tab);
     TagfrmTetkikIstemSablon : frmGrupDetayTanim := TfrmGrupDetayTanim.Create(Tab);
     TagfrmDokumanYonetim : frmDokumanYonetim := TfrmDokumanYonetim.Create(Tab);
     TagfrmFaturalar : frmFaturalar := TfrmFaturalar.Create(Tab);
     TagfrmFatura : frmFaturaDetay := TfrmFaturaDetay.Create(Tab);
     TagfrmSirketSozlesme : frmSirketSozlesme := TfrmSirketSozlesme.Create(Tab);
     TagfrmSirketSozlesmeler : frmSozlesmeler := TfrmSozlesmeler.Create(Tab);
     TagfrmCariHareketGiris : frmCariHareket := TfrmCariHareket.Create(Tab);
     TagfrmCariHesapEkstre : frmCariHesapEkstre := TfrmCariHesapEkstre.Create(Tab);
     TagfrmCariHesapBorcAlacakToplam : frmCariHesapBorcAlacakToplam := TfrmCariHesapBorcAlacakToplam.Create(Tab);
     TagfrmRDS: frmRDS := TfrmRDS.Create(Tab);
     TagfrmKKD: frmKKD := TfrmKKD.Create(Tab);
     TagfrmCekler: frmCekler := TfrmCekler.Create(Tab);
     TagfrmKasaBanka: frmKasaBanka := TfrmKasaBanka.Create(Tab);

     TagfrmTedarikci: frmTedarikci := TfrmTedarikci.Create(Tab);
     TagfrmSirketSahaGozetim: frmSirketSahaGozetim := TfrmSirketSahaGozetim.Create(Tab);
     TagfrmAjandaOzet : frmAjandaOzet := TfrmAjandaOzet.Create(Tab);
     TagfrmISGKurulToplanti : frmISGKurulToplanti := TfrmISGKurulToplanti.Create(Tab);
  end;
  try
    if not (Form is TGirisForm) then
    begin
      Form.BorderStyle := bsToolWindow;
      Form.Align := alNone;
      Form.Tag := abs(FormTag);
      Result := Form;
      Exit;
    end;

    Form := TGirisForm(FormClassType(abs(FormTag)));
    Tab.Caption := sFormAltCaption;
    TGirisForm(Form).cxTab.Tabs[0].Caption := Tab.Caption;
    TGirisForm(Form).cxTab.Tabs[0].ImageIndex := FormTabImageIndex(abs(FormTag));
    if Tab = nil
    then begin
     TgirisForm(Form).BorderStyle := bsToolWindow;
     TgirisForm(Form).Align := alNone;
    end
    else
    begin
     TgirisForm(Form).BorderStyle := bsNone;
     TgirisForm(Form).Align := alClient;
    end;

   if not (Form is TGirisForm) then þ
   begin
     Form.BorderStyle := bsToolWindow;
     Form.Align := alNone;
     Form.Tag := abs(FormTag);
     Result := Form;
     Exit;
   end;

   Form := TGirisForm(FormClassType(abs(FormTag)));
   Tab.Caption := sFormAltCaption;
   TGirisForm(Form).cxTab.Tabs[0].Caption := Tab.Caption;
   TGirisForm(Form).cxTab.Tabs[0].ImageIndex := FormTabImageIndex(abs(FormTag));
   if Tab = nil
   then begin
    TgirisForm(Form).BorderStyle := bsToolWindow;
    TgirisForm(Form).Align := alNone;
   end
   else
   begin
    TgirisForm(Form).BorderStyle := bsNone;
    TgirisForm(Form).Align := alClient;
   end;

   TGirisForm(Form)._dosyaNO_ := Values.F_dosyaNO_;//datalar.Bilgi.dosyaNo;
   TGirisForm(Form)._gelisNO_ := Values.F_gelisNO_;//datalar.Bilgi.gelisNo;
   TGirisForm(Form)._provizyonTarihi_ := Values.F_provizyonTarihi_;
   TGirisForm(Form)._HastaAdSoyad_ := Values.F_HastaAdSoyad_;
   TGirisForm(Form)._TakipNo_ := Values.F_TakipNo_;
   TGirisForm(Form)._BasvuruNo_ := Values.F_BasvuruNo_;
   TGirisForm(Form)._Doktor_ := Values.F_Doktor_;
   TGirisForm(Form)._Makina_ := Values.F_Makina_;
   TGirisForm(Form)._Seans_ := Values.F_Seans_;
   TGirisForm(Form)._TC_ := Values.F_TC_;
   TGirisForm(Form)._Yupass_ := Values.F_Yupass_;
   TGirisForm(Form)._DevKurum_ := Values.F_DevKurum_;
   TGirisForm(Form)._SigortaliTur_ := Values.F_SigortaliTur_;
   TGirisForm(Form)._SeansSira_ := Values.F_SeansSira_;
   TGirisForm(Form)._sube_ := Values.F_Sube_;
   TGirisForm(Form)._firmaKod_ := Values.F_firmaKod_;
   TGirisForm(Form)._MuayeneProtokolNo_ := Values.F_MuayeneProtokolNo_;
   TGirisForm(Form)._FaturaNo_ := Values.F_FaturaNO_;
    TGirisForm(Form)._Tarih1_ := Values.F_Tarih1_;
    TGirisForm(Form)._Tarih2_ := Values.F_Tarih2_;
    TGirisForm(Form)._ResourceID := Values.F_ResourceID_;

   TGirisForm(Form).Tag := FormTag;
   TgirisForm(Form).Parent := Tab;
   TGirisForm(Form).BringToFront;
    if TGirisForm(Form).Init(Form) Then
    begin
     result := TGirisForm(Form);
     bTamam := True;
    end;
end;


function FormINIT(FormTag : Integer;MidiForm : TForm;Value : String = '';
                   Tab : TcxTabSheet = nil;ik : izinKontrol = ikHayir;
                   izinPrm : string = '';tc : string = '') : TGirisForm;
var
  Form : TGirisForm;
  sFormCaption1, sFormAltCaption1, sFormUserGroup1, sFormUserGroupDesc1: String;
  sFormCaption2, sFormAltCaption2, sFormUserGroup2, sFormUserGroupDesc2: String;
  bTamam : Boolean;
begin
  result := nil;
  if not GetFormCaptionInfo (abs(FormTag), sFormCaption1, sFormAltCaption1, sFormUserGroup1, sFormUserGroupDesc1) then
    Exit;
  if not GetFormCaptionInfo (FormTag, sFormCaption2, sFormAltCaption2, sFormUserGroup2, sFormUserGroupDesc2) then
    Exit;
  izinPrm := ifThen(izinPrm = '',sFormAltCaption1,izinPrm);
  if ik = ikEvet
  then
  if UserRight(sFormCaption1, izinPrm) = False
  then begin
      UserRightInsert(sFormCaption2,izinPrm,datalar.username);
      ShowMessageSkin(sFormCaption2,izinPrm + ' Ýþlemi Ýçin Yetkiniz Bulunmamaktadýr !','','info');
      exit;
  end;
  bTamam := False;
  case abs(FormTag) of
     TagfrmHastaKart : frmHastaKart := TfrmHastaKart.Create(Tab);
     TagfrmFirmaKart : frmFirmaKart := TfrmFirmaKart.Create(Tab);
     TagfrmMerkezBilgisi : frmMerkezBilgisi := TfrmMerkezBilgisi.Create(Tab);
     TagfrmHizmetKart : frmHizmetKart := TfrmHizmetKart.Create(Tab);
     TagfrmHizliKayitPersonel, TagfrmHizliKayitDisAktarimlar : frmHizliKayit := TfrmHizliKayit.Create(Tab);
     TagfrmSorgulamalar : frmSorgulamalar := TfrmSorgulamalar.Create(Tab);
     TagfrmSorguCalistir : frmRaporCalistir := TfrmRaporCalistir.Create(Tab);
     TagfrmAnamnez,TagfrmIseGiris : frmAnamnez := TfrmAnamnez.Create(Tab);

     TagfrmHastaListe,TagfrmDoktorHastaListe : frmHastaListe := TfrmHastaListe.Create(Tab);
     TagfrmPopupDBVerticalGridForm : frmPopupDBVerticalGridForm := TfrmPopupDBVerticalGridForm.Create(Tab);

     TagfrmSon6AylikTetkikSonuc : frmSon6AylikTetkikSonuc := TfrmSon6AylikTetkikSonuc.Create(Tab);
     TagfrmReceteler : frmReceteler := TfrmReceteler.Create(Tab);
     TagfrmSahaSaglikGozetim : frmSahaSaglikGozetim := TfrmSahaSaglikGozetim.Create(Tab);

     TagfrmLabParametreleri : frmLabParams := TfrmLabParams.Create(Tab);
     TagfrmLabKabul : frmLabaratuvarKabul := TfrmLabaratuvarKabul.Create(Tab);
     TagfrmTetkikIstemSablon : frmGrupDetayTanim := TfrmGrupDetayTanim.Create(Tab);
     TagfrmDokumanYonetim : frmDokumanYonetim := TfrmDokumanYonetim.Create(Tab);
     TagfrmFaturalar : frmFaturalar := TfrmFaturalar.Create(Tab);
     TagfrmFatura : frmFaturaDetay := TfrmFaturaDetay.Create(Tab);
     TagfrmSirketSozlesme : frmSirketSozlesme := TfrmSirketSozlesme.Create(Tab);
     TagfrmSirketSozlesmeler : frmSozlesmeler := TfrmSozlesmeler.Create(Tab);
     TagfrmCariHareketGiris : frmCariHareket := TfrmCariHareket.Create(Tab);
     TagfrmCariHesapEkstre : frmCariHesapEkstre := TfrmCariHesapEkstre.Create(Tab);
     TagfrmCariHesapBorcAlacakToplam : frmCariHesapBorcAlacakToplam := TfrmCariHesapBorcAlacakToplam.Create(Tab);

     TagfrmRDS : frmRDS := TfrmRDS.Create(Tab);
     TagfrmKKD : frmKKD := TfrmKKD.Create(Tab);
     TagfrmCekler: frmCekler := TfrmCekler.Create(Tab);
     TagfrmKasaBanka: frmKasaBanka := TfrmKasaBanka.Create(Tab);
     TagfrmTedarikci: frmTedarikci := TfrmTedarikci.Create(Tab);
     TagfrmSirketSahaGozetim: frmSirketSahaGozetim := TfrmSirketSahaGozetim.Create(Tab);
     TagfrmAjandaOzet : TfrmAjandaOzet.Create(Tab);
     TagfrmISGKurulToplanti : frmISGKurulToplanti := TfrmISGKurulToplanti.Create(Tab);
  end;
  try
    Form := TGirisForm(FormClassType(abs(FormTag)));
    Tab.Caption := sFormAltCaption1;
    TGirisForm(Form).cxTab.Tabs[0].Caption := Tab.Caption;
    TGirisForm(Form).cxTab.Tabs[0].ImageIndex := FormTabImageIndex(abs(FormTag));
    if Tab = nil
    then begin
     TgirisForm(Form).BorderStyle := bsToolWindow;
     TgirisForm(Form).Align := alNone;
    end
    else
    begin
     TgirisForm(Form).BorderStyle := bsNone;
     TgirisForm(Form).Align := alClient;
    end;

    TGirisForm(Form)._dosyaNO_ := Value;
    TGirisForm(Form)._TC_ := tc;
    TGirisForm(Form).Tag := FormTag;
    TgirisForm(Form).Parent := Tab;
    TGirisForm(Form).BringToFront;
    if TGirisForm(Form).Init(Form) Then
    begin
      result := TGirisForm(Form);
      bTamam := True;
    end;
  finally
    if not bTamam and Assigned (Form) then FreeAndNil(Form);
  end;
end;

function FormINIT(FormTag : Integer; Value : TGirisFormRecord;ik : izinKontrol = ikHayir;izinPrm : string = '') : TGirisForm;
var
  Form : TGirisForm;
  sFormCaption, sFormAltCaption, sFormUserGroup, sFormUserGroupDesc: String;
  bTamam : Boolean;
begin
   result := nil;
   if not GetFormCaptionInfo (abs(FormTag), sFormCaption, sFormAltCaption, sFormUserGroup, sFormUserGroupDesc) then
     Exit;
   izinPrm := ifThen(izinPrm = '',sFormAltCaption,izinPrm);
   if ik = ikEvet
   then
   if UserRight(sFormCaption, izinPrm) = False
   then begin
       UserRightInsert(sFormCaption,izinPrm,datalar.username);
       ShowMessageSkin(sFormCaption,izinPrm + ' Ýþlemi Ýçin Yetkiniz Bulunmamaktadýr !','','info');
       exit;
   end;
  bTamam := False;
  case abs(FormTag) of
    TagfrmFirmaKart : Application.CreateForm(TfrmFirmaKart,frmFirmaKart);
    TagfrmMerkezBilgisi : Application.CreateForm(TfrmMerkezBilgisi,frmMerkezBilgisi);
    TagfrmHizmetKart : Application.CreateForm(TfrmHizmetKart,frmHizmetKart);
    TagfrmPopupDBGridForm,TagfrmBolum,TagfrmBirim,TagfrmSube,TagFirmaCalismalari: Application.CreateForm(TfrmPopupDBGridForm , frmPopupDBGridForm);
    TagfrmPopup : Application.CreateForm(TfrmPopup , frmPopup);
    TagfrmDoktorlar,TagfrmIGU,TagfrmDigerSaglikPers :  Application.CreateForm(TfrmDoktorlar, frmDoktorlar);
    TagfrmAbout :  Application.CreateForm(TfrmAbout, frmAbout);
    TagfrmPersonelEgitim :  Application.CreateForm(TfrmPersonelEgitim, frmPersonelEgitim);
    TagfrmKurumBilgi : Application.CreateForm(TfrmKurumBilgi, frmKurumBilgi);
    TagfrmReceteler : Application.CreateForm(TfrmReceteler, frmReceteler);
    TagfrmHastaRecete : Application.CreateForm(TfrmHastaRecete,frmHastaRecete);
    TagfrmReceteSablon : Application.CreateForm(TfrmReceteSablon,frmReceteSablon);
    TagfrmUpdate :  Application.CreateForm(TfrmUpdate ,frmUpdate );
    TagfrmSorgulamalar : Application.CreateForm(TfrmSorgulamalar, frmSorgulamalar);
    TagfrmSorguCalistir : Application.CreateForm(TfrmRaporCalistir, frmRaporCalistir);
    TagfrmAnamnez,TagfrmIseGiris : Application.CreateForm(TfrmAnamnez, frmAnamnez);
    TagfrmTedaviBilgisi : Application.CreateForm(TfrmTedaviBilgisi,frmTedaviBilgisi);
    TagfrmIsKazasi : Application.CreateForm(TfrmIsKazasi,frmIsKazasi);
    TagfrmTetkikIstemSablon : Application.CreateForm(TfrmGrupDetayTanim, frmGrupDetayTanim);
    TagfrmDokumanYonetim : Application.CreateForm(TfrmDokumanYonetim, frmDokumanYonetim);

    TagfrmLabParametreleri : Application.CreateForm(TfrmLabParams, frmLabParams);
    TagfrmLabKabul : Application.CreateForm(TfrmLabaratuvarKabul, frmLabaratuvarKabul);

    TagfrmUsers : Application.CreateForm(TfrmUsers, frmUsers);
    TagfrmHastaTetkikEkle : Application.CreateForm(TfrmHastaTetkikEkle, frmHastaTetkikEkle);
    TagfrmAsiKarti : Application.CreateForm(TfrmAsiKarti, frmAsiKarti);
    TagfrmTaniKarti : Application.CreateForm(TfrmTaniKart, frmTaniKart);

    TagKurumSifreDegisForm : Application.CreateForm(TKurumSifreDegisForm, KurumSifreDegisForm);

    TagfrmTestAyarlari : Application.CreateForm(TfrmTestAyarlari, frmTestAyarlari);
    TagfrmIlaclar,TagfrmIlacAnaGrup,TagfrmIlacEtkenMadde : Application.CreateForm(TfrmIlaclar , frmIlaclar);
    TagfrmSon6AylikTetkikSonuc : Application.CreateForm(TfrmSon6AylikTetkikSonuc , frmSon6AylikTetkikSonuc);
    TagfrmSahaSaglikGozetim : Application.CreateForm(TfrmSahaSaglikGozetim, frmSahaSaglikGozetim);
    TagfrmFaturalar : Application.CreateForm(TfrmFaturalar, frmFaturalar);
    TagfrmFatura : Application.CreateForm(TfrmFaturaDetay, frmFaturaDetay);
    TagfrmSirketSozlesme : Application.CreateForm(TfrmSirketSozlesme , frmSirketSozlesme);
    TagfrmSirketSozlesmeler : Application.CreateForm(TfrmSozlesmeler , frmSozlesmeler);
    TagfrmCariHareketGiris : Application.CreateForm(TfrmCariHareket, frmCariHareket);
    TagfrmCariHesapEkstre : Application.CreateForm(TfrmCariHesapEkstre, frmCariHesapEkstre);
    TagfrmCariHesapBorcAlacakToplam : Application.CreateForm(TfrmCariHesapBorcAlacakToplam, frmCariHesapBorcAlacakToplam);

    TagfrmRDS : Application.CreateForm(TfrmRDS, frmRDS);
    TagfrmKKD : Application.CreateForm(TfrmKKD, frmKKD);
    TagfrmCekler : Application.CreateForm(TfrmCekler, frmCekler);
    TagfrmKasaBanka : Application.CreateForm(TfrmKasaBanka, frmKasaBanka);

    TagfrmTedarikci : Application.CreateForm(TfrmTedarikci, frmTedarikci);

    TagfrmSirketSahaGozetim : Application.CreateForm(TfrmSirketSahaGozetim, frmSirketSahaGozetim);
    TagfrmISGKurulToplanti : Application.CreateForm(TfrmISGKurulToplanti, frmISGKurulToplanti);

  end;
  try
    Form := TGirisForm(FormClassType(abs(FormTag)));

    if not (Form is TGirisForm) then
    begin
      Form.BorderStyle := bsToolWindow;
      Form.Align := alNone;
      Form.Tag := abs(FormTag);
      Result := Form;
      Exit;
    end;

  if not (Form is TGirisForm) then þ
  begin
    Form.BorderStyle := bsToolWindow;
    Form.Align := alNone;
    Form.Tag := abs(FormTag);
    Result := Form;
    Exit;
  end;
    TGirisForm(Form)._Tarih1_ := Value.F_Tarih1_;
    TGirisForm(Form)._Tarih2_ := Value.F_Tarih2_;
    TGirisForm(Form)._ResourceID := Value.F_ResourceID_;

    TgirisForm(Form).Caption := sFormCaption + ' - ' + sFormAltCaption;
    if ik = ikEvet
     then
      TGirisForm(Form).cxTab.Tabs[0].Caption := izinPrm
     else begin
      if Value.F_HastaAdSoyad_ <> '' then
        TGirisForm(Form).cxTab.Tabs[0].Caption := Value.F_HastaAdSoyad_
      else
        TGirisForm(Form).cxTab.Tabs[0].Caption := izinPrm;

     end;
    TGirisForm(Form).cxTab.Tabs[0].ImageIndex := FormTabImageIndex(abs(FormTag));

    TGirisForm(Form).Tag := FormTag;
    if TGirisForm(Form).Init(Form) = True Then
    begin
      result := TGirisForm(Form);
      bTamam := True;
    end;
  finally
    if not bTamam and Assigned (Form) then FreeAndNil(Form);
  end;
end;


function FormINIT(MenuID : Integer) : Boolean;overload;
begin
  MenuIDRun(MenuID);
  Result := True;
end;


function FormINITTForm(FormTag : Integer) : TForm;
var
  Form : TComponent;
begin
  Form := FormClassType(abs(FormTag));
  Application.CreateForm(FormClass(abs(FormTag)), Form);
  Form.Tag := FormTag;
  case FormTag of
    TagfrmSaglikNetOnline : begin
     end
     else
      result := nil;
   end;
   result := TForm(Form);
end;

end.
