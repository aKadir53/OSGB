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
function FormCaption(formId : integer) : String;
function FormAltCaption(formId : integer) : String;
function FormTabImageIndex(formId : integer) : integer;
function PopupFormCaption(islemTag : integer ; var TabCaption : string) : String;

implementation

uses message,Data_Modul,AnaUnit,message_y,popupForm,rapor,TedaviKart,Son6AylikTetkikSonuc,
             HastaRecete,sifreDegis,HastaTetkikEkle,
             Receteler,Sorgulamalar,sorguRaporCalistir,
             HastaKart,FirmaKart,hizliKayit,receteSablonlari,
             HastaListe,IsKazasi,Anamnez,
             Tnm_UserSettings,HastaAsiKarti,HastaTaniKart,
             KurumLogin,Update_G, labaratuvarKabul,
             MedulaKurumSifreDegis,labParametreleri,
             Tnm_Doktor,LabTestAyarlari,SahaSaglikGozetim,
             PopupDBGridForm,PopupDBVerticalGridForm,
             Tnm_Ilaclar, PersonelEgitimFrm, About_Frm;




function FormTabImageIndex(formId : integer) : integer;
begin
   case formId of
     TagfrmHastaKart : Result := 39;
     TagfrmFirmaKart : Result := -1;
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
     TagfrmHizliKayit : Result := -1;
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

function FormCaption(formId : integer) : String;
var
  sql : string;
  ado : TADOQuery;
begin
  sql := 'select formCaption from FormCaption where formTag = ' + inttostr(abs(formId));
  ado := TADOQuery.Create(nil);
  try
    datalar.QuerySelect(ado,sql);
    if not ado.Eof then
      FormCaption := ado.Fields[0].AsString
     else
      raise Exception.Create('Form Baþlýk Bilgisi Tanýmlanmamýþ : "FormCaption" ('+IntToStr (formID)+')');
  finally
    ado.Free;
  end;
end;

function FormAltCaption(formId : integer) : String;
var
  sql : string;
  ado : TADOQuery;
begin
  sql := 'select formAltCaption from FormCaption where formTag = ' + inttostr(abs(formId));
  ado := TADOQuery.Create(nil);
  try
    datalar.QuerySelect(ado,sql);
    if not ado.Eof then
      FormAltCaption := ado.Fields[0].AsString
     else
      raise Exception.Create('Form Baþlýk Bilgisi Tanýmlanmamýþ : "FormCaption" ('+IntToStr (formID)+')');
  finally
    ado.free;
  end;
end;

function FormClass(formId : integer) : TComponentClass;
begin
  case abs(formId) of
   TagfrmHastaKart : Result := TfrmHastaKart;
   TagfrmFirmaKart : Result := TfrmFirmaKart;
   TagfrmPopupDBGridForm,TagfrmBolum,TagfrmBirim : Result := TfrmPopupDBGridForm;
   TagfrmPopupDBVerticalGridForm : Result := TfrmPopupDBVerticalGridForm;
   TagfrmHizliKayit : Result := TfrmHizliKayit;
   TagfrmReceteSablon : Result := TfrmReceteSablon;
   TagfrmSorgulamalar : Result := TfrmSorgulamalar;
   TagfrmSorguCalistir : Result := TfrmRaporCalistir;
   TagfrmIsKazasi : Result := TfrmIsKazasi;
   TagfrmAnamnez : Result := TfrmAnamnez;

   TagfrmTedaviBilgisi : Result := TfrmTedaviBilgisi;
   TagfrmHastaRecete : Result := TfrmHastaRecete;
   TagfrmHastaListe,TagfrmDoktorHastaListe : Result := TfrmHastaListe;

   TagfrmUsers : Result := TfrmUsers;
   TagfrmHastaTetkikEkle : Result := TfrmHastaTetkikEkle;
   TagfrmAsiKarti : Result := TfrmAsiKarti;
   TagfrmTaniKarti : Result := TfrmTaniKart;

   TagfrmKurumBilgi : Result := TfrmKurumBilgi;
   TagKurumSifreDegisForm : Result := TKurumSifreDegisForm;

   TagfrmDoktorlar,TagfrmIGU : Result := TfrmDoktorlar;
   TagfrmAbout : Result := TfrmAbout;
   TagfrmPersonelEgitim : Result := TfrmPersonelEgitim;
   TagfrmTestAyarlari : Result := TfrmTestAyarlari;

   TagfrmLabParametreleri : Result := TfrmLabParams;
   TagfrmLabKabul : Result := TfrmLabaratuvarKabul;

   TagfrmIlaclar,TagfrmIlacAnaGrup,TagfrmIlacEtkenMadde : Result := TfrmIlaclar;
   TagfrmSon6AylikTetkikSonuc : Result := TfrmSon6AylikTetkikSonuc;
   TagfrmReceteler : Result := TfrmReceteler;

   TagfrmSahaSaglikGozetim : Result := TfrmSahaSaglikGozetim;
  end;
end;

function FormClassType(formId : integer) : TComponent;
begin
  case abs(formId) of
   TagfrmHastaKart : Result := frmHastaKart;
   TagfrmFirmaKart : Result := frmFirmaKart;
   TagfrmPopupDBGridForm,TagfrmBolum,TagfrmBirim,TagfrmSube,TagFirmaCalismalari : Result := frmPopupDBGridForm;
   TagfrmPopupDBVerticalGridForm : Result := frmPopupDBVerticalGridForm;
   TagfrmHizliKayit : Result := frmHizliKayit;
   TagfrmReceteSablon : Result := frmReceteSablon;
   TagfrmSorgulamalar : Result := frmSorgulamalar;
   TagfrmSorguCalistir : Result := frmRaporCalistir;
   TagfrmIsKazasi : Result := frmIsKazasi;
   TagfrmTedaviBilgisi : Result := frmTedaviBilgisi;
   TagfrmAnamnez : Result := frmAnamnez;
   TagfrmHastaRecete : Result := frmHastaRecete;
   TagfrmHastaListe,TagfrmDoktorHastaListe : Result := frmHastaListe;

   TagfrmUsers : Result := frmUsers;
   TagfrmHastaTetkikEkle : Result := frmHastaTetkikEkle;
   TagfrmAsiKarti : Result := frmAsiKarti;
   TagfrmTaniKarti : Result := frmTaniKart;

   TagfrmKurumBilgi : Result := frmKurumBilgi;
   TagKurumSifreDegisForm : Result := KurumSifreDegisForm;

   TagfrmDoktorlar,TagfrmIGU : Result := frmDoktorlar;
   TagfrmAbout : Result := frmAbout;
   TagfrmPersonelEgitim : Result := frmPersonelEgitim;
   TagfrmTestAyarlari : Result := frmTestAyarlari;

   TagfrmIlaclar,TagfrmIlacAnaGrup,TagfrmIlacEtkenMadde  : Result := frmIlaclar;
   TagfrmSon6AylikTetkikSonuc : Result := frmSon6AylikTetkikSonuc;
   TagfrmReceteler : Result := frmReceteler;
   TagfrmSahaSaglikGozetim : Result := frmSahaSaglikGozetim;
   TagfrmUpdate : Result := frmUpdate;þ

   TagfrmLabParametreleri : Result := frmLabParams;
   TagfrmLabKabul : Result := frmLabaratuvarKabul;
  end;
end;


function FormINIT(FormTag : Integer;MidiForm : TForm;
                  Values : TGirisFormRecord ; Value : String = '';
                  Tab : TcxTabSheet = nil;ik : izinKontrol = ikHayir;
                  izinPrm : string = '') : TGirisForm;
var
  Form : TGirisForm;
begin
   izinPrm := ifThen(izinPrm = '',FormAltCaption(abs(FormTag)),izinPrm);
   if ik = ikEvet
   then
   if UserRight(FormCaption(abs(FormTag)), izinPrm) = False
   then begin
       UserRightInsert(FormCaption(abs(FormTag)),izinPrm,datalar.username);
       ShowMessageSkin(FormCaption(abs(FormTag)),izinPrm + ' Ýþlemi Ýçin Yetkiniz Bulunmamaktadýr !','','info');
       Tab.Free;
       result := nil;
       exit;
   end;

   case abs(FormTag) of
      TagfrmHastaKart : frmHastaKart := TfrmHastaKart.Create(Tab);
      TagfrmFirmaKart : frmFirmaKart := TfrmFirmaKart.Create(Tab);
      TagfrmHizliKayit : frmHizliKayit := TfrmHizliKayit.Create(Tab);
      TagfrmPopupDBVerticalGridForm : frmPopupDBVerticalGridForm := TfrmPopupDBVerticalGridForm.Create(Tab);

      TagfrmHastaListe,TagfrmDoktorHastaListe : frmHastaListe := TfrmHastaListe.Create(Tab);
      TagfrmSorguCalistir : frmRaporCalistir := TfrmRaporCalistir.Create(Tab);
      TagfrmSon6AylikTetkikSonuc : frmSon6AylikTetkikSonuc := TfrmSon6AylikTetkikSonuc.Create(Tab);
      TagfrmReceteler : frmReceteler := TfrmReceteler.Create(Tab);
      TagfrmSahaSaglikGozetim : frmSahaSaglikGozetim := TfrmSahaSaglikGozetim.Create(Tab);

      TagfrmLabParametreleri : frmLabParams:= TfrmLabParams.Create(Tab);
      TagfrmLabKabul : frmLabaratuvarKabul := TfrmLabaratuvarKabul.Create(Tab);
      TagfrmAnamnez : frmAnamnez := TfrmAnamnez.Create(Tab);
     else
      result := nil;
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
   Tab.Caption := FormAltCaption(abs(FormTag));
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

   TGirisForm(Form).Tag := FormTag;
   TgirisForm(Form).Parent := Tab;
   TGirisForm(Form).BringToFront;
   if TGirisForm(Form).Init(Form) = True
   Then
    result := TGirisForm(Form)
   Else
    result := nil;
end;


function FormINIT(FormTag : Integer;MidiForm : TForm;Value : String = '';
                   Tab : TcxTabSheet = nil;ik : izinKontrol = ikHayir;
                   izinPrm : string = '';tc : string = '') : TGirisForm;
var
  Form : TGirisForm;
begin
   izinPrm := ifThen(izinPrm = '',FormAltCaption(abs(FormTag)),izinPrm);
   if ik = ikEvet
   then
   if UserRight(FormCaption(abs(FormTag)), izinPrm) = False
   then begin
       UserRightInsert(FormCaption(FormTag),izinPrm,datalar.username);
       ShowMessageSkin(FormCaption(FormTag),izinPrm + ' Ýþlemi Ýçin Yetkiniz Bulunmamaktadýr !','','info');
       Tab.Free;
       result := nil;
       exit;
   end;

   case abs(FormTag) of
      TagfrmHastaKart : frmHastaKart := TfrmHastaKart.Create(Tab);
      TagfrmFirmaKart : frmFirmaKart := TfrmFirmaKart.Create(Tab);
      TagfrmHizliKayit : frmHizliKayit := TfrmHizliKayit.Create(Tab);
      TagfrmSorgulamalar : frmSorgulamalar := TfrmSorgulamalar.Create(Tab);
      TagfrmSorguCalistir : frmRaporCalistir := TfrmRaporCalistir.Create(Tab);
      TagfrmAnamnez : frmAnamnez := TfrmAnamnez.Create(Tab);

      TagfrmHastaListe,TagfrmDoktorHastaListe : frmHastaListe := TfrmHastaListe.Create(Tab);
      TagfrmPopupDBVerticalGridForm : frmPopupDBVerticalGridForm := TfrmPopupDBVerticalGridForm.Create(Tab);

      TagfrmSon6AylikTetkikSonuc : frmSon6AylikTetkikSonuc := TfrmSon6AylikTetkikSonuc.Create(Tab);
      TagfrmReceteler : frmReceteler := TfrmReceteler.Create(Tab);
      TagfrmSahaSaglikGozetim : frmSahaSaglikGozetim := TfrmSahaSaglikGozetim.Create(Tab);

      TagfrmLabParametreleri : frmLabParams := TfrmLabParams.Create(Tab);
      TagfrmLabKabul : frmLabaratuvarKabul := TfrmLabaratuvarKabul.Create(Tab);
     else
      result := nil;
   end;


   Form := TGirisForm(FormClassType(abs(FormTag)));
   Tab.Caption := FormAltCaption(abs(FormTag));
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
   if TGirisForm(Form).Init(Form) = True
   Then
    result := TGirisForm(Form)
   Else
    result := nil;
end;

function FormINIT(FormTag : Integer; Value : TGirisFormRecord;ik : izinKontrol = ikHayir;izinPrm : string = '') : TGirisForm;
var
  Form : TGirisForm;
begin
   izinPrm := ifThen(izinPrm = '',FormAltCaption(abs(FormTag)),izinPrm);
   if ik = ikEvet
   then
   if UserRight(FormCaption(abs(FormTag)), izinPrm) = False
   then begin
       UserRightInsert(FormCaption(abs(FormTag)),izinPrm,datalar.username);
       ShowMessageSkin(FormCaption(abs(FormTag)),izinPrm + ' Ýþlemi Ýçin Yetkiniz Bulunmamaktadýr !','','info');
       result := nil;
       exit;
   end;

  case abs(FormTag) of
    TagfrmFirmaKart : Application.CreateForm(TfrmFirmaKart,frmFirmaKart);
    TagfrmPopupDBGridForm,TagfrmBolum,TagfrmBirim,TagfrmSube,TagFirmaCalismalari: Application.CreateForm(TfrmPopupDBGridForm , frmPopupDBGridForm);
    TagfrmDoktorlar,TagfrmIGU :  Application.CreateForm(TfrmDoktorlar, frmDoktorlar);
    TagfrmAbout :  Application.CreateForm(TfrmAbout, frmAbout);
    TagfrmPersonelEgitim :  Application.CreateForm(TfrmPersonelEgitim, frmPersonelEgitim);
    TagfrmKurumBilgi : Application.CreateForm(TfrmKurumBilgi, frmKurumBilgi);
    TagfrmReceteler : Application.CreateForm(TfrmReceteler, frmReceteler);
    TagfrmHastaRecete : Application.CreateForm(TfrmHastaRecete,frmHastaRecete);
    TagfrmReceteSablon : Application.CreateForm(TfrmReceteSablon,frmReceteSablon);
    TagfrmUpdate :  Application.CreateForm(TfrmUpdate ,frmUpdate );
    TagfrmSorgulamalar : Application.CreateForm(TfrmSorgulamalar, frmSorgulamalar);
    TagfrmSorguCalistir : Application.CreateForm(TfrmRaporCalistir, frmRaporCalistir);
    TagfrmAnamnez : Application.CreateForm(TfrmAnamnez, frmAnamnez);
    TagfrmTedaviBilgisi : Application.CreateForm(TfrmTedaviBilgisi,frmTedaviBilgisi);
    TagfrmIsKazasi : Application.CreateForm(TfrmIsKazasi,frmIsKazasi);


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

    else
      result := nil;
   end;

  Form := TGirisForm(FormClassType(abs(FormTag)));

  if not (Form is TGirisForm) then þ
  begin
    Form.BorderStyle := bsToolWindow;
    Form.Align := alNone;
    Form.Tag := abs(FormTag);
    Result := Form;
    Exit;
  end;

  TGirisForm(Form)._dosyaNO_ := Value.F_dosyaNO_;//datalar.Bilgi.dosyaNo;
  TGirisForm(Form)._gelisNO_ := Value.F_gelisNO_;//datalar.Bilgi.gelisNo;
  TGirisForm(Form)._provizyonTarihi_ := Value.F_provizyonTarihi_;
  TGirisForm(Form)._HastaAdSoyad_ := Value.F_HastaAdSoyad_;
  TGirisForm(Form)._TakipNo_ := Value.F_TakipNo_;
  TGirisForm(Form)._BasvuruNo_ := Value.F_BasvuruNo_;
  TGirisForm(Form)._Doktor_ := Value.F_Doktor_;
  TGirisForm(Form)._Makina_ := Value.F_Makina_;
  TGirisForm(Form)._Seans_ := Value.F_Seans_;
  TGirisForm(Form)._TC_ := Value.F_TC_;
  TGirisForm(Form)._Yupass_ := Value.F_Yupass_;
  TGirisForm(Form)._DevKurum_ := Value.F_DevKurum_;
  TGirisForm(Form)._SigortaliTur_ := Value.F_SigortaliTur_;
  TGirisForm(Form)._SeansSira_ := Value.F_SeansSira_;
  TGirisForm(Form)._firmaKod_ := Value.F_FirmaKod_;
  TGirisForm(Form)._mobilTel_ := Value.F_mobilTel_;
  TGirisForm(Form)._sp_ := Value.F_sp_;
  TGirisForm(Form)._kod_ := Value.F_kod_;
  TGirisForm(Form)._sube_ := Value.F_sube_;

  TgirisForm(Form).Caption := FormCaption(abs(FormTag)) + ' - ' + FormAltCaption(abs(FormTag));
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
   if TGirisForm(Form).Init(Form) = True
   Then
    result := TGirisForm(Form)
   Else
    result := nil;

end;


function FormINIT(MenuID : Integer) : Boolean;overload;
begin
  MenuIDRun(MenuID);
end;


function FormINITTForm(FormTag : Integer) : TForm;
var
  Form : TComponent;
  FormC : TComponentClass;
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
