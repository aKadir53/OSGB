unit KadirMedula3;


interface
uses Windows, forms,Messages, SysUtils,strutils, Variants, Classes, Graphics, Controls,
     StdCtrls,ExtCtrls,dxmdaset, ComCtrls,dialogs,
     GirisUnit,
     //HastaKabulIslemleri1,
     HizmetKayitIslemleriWS,
     hastaKabulIslemleriWS,XmlSerial,xmlDoc,
     //FaturaKayitIslemleri1,
     faturaKayitIslemleriWS, OptikSaglikTesisiReceteIslemleriWSG,
     adodb,TakipFormuIslemleriWS, XSBuiltIns,
     data_modul,
     //data_Model1,
     InvokeRegistry, Rio ,SOAPHTTPClient,kadir ,kadirType,
     RaporIslemleriWS , SaglikTesisiReceteIslemleri1 ,SorgulaWS1,onlineProtokol,
     wsse,EncdDecd,saglikTesisiRaporIslemleriWSIlac,
     SaglikTesisiYardimciIslemler1,YardimciIslemlerWS;



function TedaviTipiDegis(takipNo : string ; tedavitipi : integer  ; Http1 : THTTPRIO) : string;
function ProvizyonTipiDegis(takipNo ,Ptipi : string ; Http1 : THTTPRIO) : string;
function TakipTipiDegis(takipNo : string; takiptipi : string ; Http1 : THTTPRIO) : string;


function TakipAl_3(var bilgi : THastaKabul ; Http1 : THTTPRIO ; mesaj : boolean):string;
function TakipAl_3KimlikDorulama(var bilgi : THastaKabul ; Http1 : THTTPRIO ; mesaj : boolean) : string;

function TakipSil_3(var TakipNo:string ; Http1 : THTTPRIO):string;
function KabulOku(_Takip : string;var Hasta : TTakipBilgisi ; Http1 : THTTPRIO ; _msg : integer) : string;
function SevkBildirim(_TakipNo : string ; Tarih , Brans : string ; Http1 : THTTPRIO): string;
function YatisOku(basvuruNo : String; var YatisBilgileri : Array_Of_BasvuruYatisBilgileriDVO ; http1 : THTTPRIO) : string;
function HastaCikis_3(basvuruNo,cikisTarihi : string ; Http1 : THTTPRIO) : string;
function HizmetKaydiOku(_takipNo : string; basvuruNo : string; var sonuc : string ; Http1 : THTTPRIO) : string;
function HizmetKaydiIptal(_takipNo : string ; Http1 : THTTPRIO) : string;
function HizmetKayit_3(basvuruNo , TakipNo : string ; Http1 : THTTPRIO ;
                       ameliyatveGirisim : HizmetKayitIslemleriws.Array_Of_AmeliyatveGirisimBilgisiDVO;
                       digerIslemBilgileri : Array_Of_DigerIslemBilgisiDVO;
                       disBilgileri : Array_Of_DisBilgisiDVO;
                       IlacBilgileri : Array_Of_IlacBilgisiDVO;
                       KonsiltasyonBilgisi :  Array_Of_KonsultasyonBilgisiDVO;
                       malzemeBilgisi : HizmetKayitIslemleriws.Array_Of_MalzemeBilgisiDVO;
                       muayeneBilgisi : MuayeneBilgisiDVO;
                       tahlilBilgileri : Array_Of_TahlilBilgisiDVO;
                       tanilar : HizmetKayitIslemleriws.Array_Of_TaniBilgisiDVO;
                       tetkikveRadyoloji : Array_Of_TetkikveRadyolojiBilgisiDVO;
                       yatisBilgisi : HizmetKayitIslemleriws.Array_Of_HastaYatisBilgisiDVO;
                   // var KayitliIslem : ArrayOf_tns2_nillable_KayitliIslemBilgisiDVO;
                    var HataliIslem : TStringList ; _msg_ : integer ;trajBeyan : string ) : string;

function TakipformuKayit(Diyabet : TakipFormu ; var TakipFormNo : string ; Http1 : THTTPRIO) : string;
function TakipformuSil(formNo : string ; Http1 : THTTPRIO) : string;
function TakipformuOku(TcNo : string ; var _form_ : TakipFormlari ; Http1 : THTTPRIO) : string;



function MuayeneM3(_takip : string) : MuayeneBilgisiDVO;
function YatisM3(_takip : string) : HizmetKayitIslemleriws.Array_Of_HastaYatisBilgisiDVO;
function TahlilM3(_takip , Modul , Tedavi : string) : Array_Of_TahlilBilgisiDVO;
function TahlilM3_satir(_takip : TDigerIslemTalep) : Array_Of_TahlilBilgisiDVO;
function DigerIslemBilgileriM3(_takip : string) : Array_Of_DigerIslemBilgisiDVO;
function DigerIslemBilgileriM3_Satir(_takip : TDigerIslemTalep) : Array_Of_DigerIslemBilgisiDVO;
function DigerIslemBilgileriYatisM3_Satir(_takip : TDigerIslemTalep) : HizmetKayitIslemleriws.Array_Of_HastaYatisBilgisiDVO;
function AmeliyatM3(_takip : string) : Array_Of_AmeliyatveGirisimBilgisiDVO;
function IlacM3(_takip : string) : Array_Of_IlacBilgisiDVO;
function MalzemeM3(_takip : string) : HizmetKayitIslemleriws.Array_Of_MalzemeBilgisiDVO;
function RadM3(_takip : string) : Array_Of_TetkikveRadyolojiBilgisiDVO;
function RadM3_satir(_takip : TDigerIslemTalep) : Array_Of_TetkikveRadyolojiBilgisiDVO;
function TaniM3(_takip : string) : HizmetKayitIslemleriws.Array_Of_TaniBilgisiDVO;
function Kons(_takip : string) : Array_Of_KonsultasyonBilgisiDVO;


function HizmetDetay(basvuru : string ; Detay : string) : Array_Of_hizmetDetayDVO;

function FaturaKayit(BasvuruNo , Tarih : string ; var sonuc : FaturaCevapDVO; Http1 : THTTPRIO ; HizmetDetayi : string) :  string;
function FaturaTutarOku(BasvuruNo , Tarih : string ; var sonuc : FaturaCevapDVO; Http1 : THTTPRIO ; HizmetDetayi : string) :  string;

function FaturaKayitIptal(_teslimno : FaturaKayitIslemleriWS.Array_Of_string ; http1:THTTPRIO) : string;
procedure DatalariBosalt;
procedure verisetleriyenile(_takip_ , Modul , Tedavi : string);
procedure verisetleriBosalt;
function TedaviTipleriAdi(_kod_ : string) : string;
function ProvizyonTipleriAdi(_kod_ : string) : string;
function TakipTipleri(_kod_ : string) : string;
function FaturaKayitOku(FaturaTeslimNo , FaturaTarihi : string ; Http1 : THTTPRIO ; var Fatura : FaturaOkuCevapDVO) : string;
function IlacAra(Barkod , name1 : string ; IlacList : IlacListDVO ; Http1 : THTTPRIO) : string;
function OkunanHizmetleriSistemleSorgula(msg : integer) : string;
function FaturaOku(teslimNo : string ; var FaturaCvp : FaturaOkuCevapDVO ; http1 : THTTPRIO) : string;
function RaporOkuTcKimlikTen(kimlikNo , tur  : string ; var RaporCvp : RaporCevapTCKimlikNodanDVO; http1 : THTTPRIO) : string;
function RaporOkuRaporTakip(RaporTakipNo , tur  : string ; var RaporCvp : RaporIslemleriWS.RaporCevapDVO; http1 : THTTPRIO) : string;
function RaporOkuTcKimlikTenICD(kimlikNo : string; tani : array of string ; http1 : THTTPRIO) : string;
function RaporOnSecimP(Rpr : SorgulaWS1.IsgoremezlikRaporDVO ; var msj : string) : CevapDTO;
function RaporListeGetir(tarih : string ; tesisKodu : string ; var msj : string) : CevapDTO;

function KatilimPayiTakipler(evrakId : integer ; var sonuc : string; http1 : THTTPRIO) : KatilimPaylari;

function Kesinti(evrakId : integer ; var sonuc : string; http1 : THTTPRIO) : KesintiTakipler;

function OrneklenmisTakipler(evrakId : integer ; var sonuc : string; http1 : THTTPRIO) : OrneklenenTakipler;
function EtkinmaddeSUTKuraligetir(etkinmaddeKodu , raporTarihi : string ; var EMaddeCvp : Array_Of_EtkinMaddeSUTKuraliDVO ;  http1 : THTTPRIO) : string;
function MedulaListeGetir(var Cvp : EtkinMaddeOkuCevapDVO ; var Cvp1 : TeshisOkuCevapDVO ; tip : string ; http1 : THTTPRIO) : string;

procedure TakipbilgisiYaz(PrvGrs : ProvizyonGirisDVO ; PrvCvp : ProvizyonCevapDVO);
procedure TakipSilYaz(takipno : string);
function TaniKaydet(RTanilar : string) : Array_Of_TaniBilgisiDVO;

function eReceteKaydetEImza(dosyaNo , gelisNo , Id , doktor : string ; var msj : string ; Http1 : THTTPRIO) : ImzaliEreceteGirisCevapDVO;
function eReceteKaydet(dosyaNo , gelisNo , Id , doktor : string ; var msj : string ; Http1 : THTTPRIO) : EreceteGirisCevapDVO;
function eReceteSil(ReceteId , doktor : string ; var msj : string) : EreceteSilCevapDVO;
function eReceteSorgula(ReceteId , doktor : string ; var msj : string) : EreceteDVO;
function eRecete(dosyaNo,gelisNo,Id,doktor : string) : EreceteDVO;
function eReceteListeSorgula(doktor , TC : string ; var msj : string) : ArrayOfEreceteDVO;
function eReceteIlacAciklamaEkle(ReceteId , doktor , barkod , tur , ilacack : string ; var msj : string ; Http1 : THTTPRIO) : EreceteIlacAciklamaEkleCevapDVO;
function eReceteIlacTaniEkle(ReceteId , doktor , taniKodu , taniAdi : string ; var msj : string ; Http1 : THTTPRIO) : EreceteTaniEkleCevapDVO;
function IlacListesiOku(tarih , doktor , aktif : string ; pr : TProgressBar) : string;
function onlineProtokolAl(pro : Protokol ; servis : THTTPRIO ; tip : string) : Cevap;
function onlineProtokolIptal(pro : string ; servis : THTTPRIO ; tip : string) : Cevap;
procedure HeaderWS(username , pasword: string ;  const Hdr : Security);
function DamarIziDogrulamaSorgula(tc,tarih,tesis,yas : string ; var msj : string;ad : string) : string;
function YurtDisiYardimHakkiGetirSorgula(kisiNo,pt : string ; Rio : Thttprio) : string;
function IlacRaporBasHekimOnay(RaporNo , Tc : string) : string;
function IlacRaporBasHekimOnayRed(RaporNo , Tc : string) : string;
function IlacRaporHekimOnay(RaporNo , Tc : string) : string;
function IlacRaporHekimOnayRed(RaporNo , Tc : string) : string;
function IlacRaporBul(RaporNo,Tc,tip : string) : TStringList;
function IlacRaporSil(RaporNo,Tc,tip : string) : string;
procedure HastaTakipleriBul(tckimlikNo ,tarih1,tarih2,sevkDurumu : string ; Sil : Boolean);
procedure TumHizmetleriMedulayaKaydet(TakipNo,BasvuruNo : string);
procedure TumHizmetleriIptalEt(TakipNo : string);
procedure TakipBilgisiOkuForm(Form : TForm);
procedure IslemNumaralariniAl(TakipNo : string);

var
   takipler : ArrayOfString;
   basvuruTakip : BasvuruTakipBilgisi;
   ameliyatveGirisim : Array_Of_AmeliyatveGirisimBilgisiDVO;
   digerIslemBilgileri : Array_Of_DigerIslemBilgisiDVO;
   disBilgileri : Array_Of_DisBilgisiDVO;
   IlacBilgileri : Array_Of_IlacBilgisiDVO;
   KonsiltasyonBilgisi :  Array_Of_KonsultasyonBilgisiDVO;
   malzemeBilgisi : HizmetKayitIslemleriWS.Array_Of_MalzemeBilgisiDVO;
   muayeneBilgisi : MuayeneBilgisiDVO;
   tahlilBilgileri : Array_Of_TahlilBilgisiDVO;
   tanilar : Array_Of_TaniBilgisiDVO;
   tetkikveRadyoloji : Array_Of_TetkikveRadyolojiBilgisiDVO;
   yatisBilgisi : HizmetKayitIslemleriWS.Array_Of_HastaYatisBilgisiDVO;
   KayitliIslem : Array_Of_KayitliIslemBilgisiDVO;
   _talepSira_ : Array_Of_string;

implementation

uses DB,takipOkuBilgisi, TransUtils;// , EtkinMaddeSUTKurali;

procedure IslemNumaralariniAl(TakipNo : string);
var
  msg , islemSiraNo , siraNo , sql : string;
  ado : TADOQuery;
  i , j : integer;
begin
   if mrYes = ShowMessageSkin('Hizmet Ýslem Numaralarý Kayýtlara Ýþlenecek Emin misiniz ?','','','msg')
   then begin
         if datalar.RxTahlilIslem.RecordCount = 0
         then begin
           sql := 'update hareketler set islemSiraNo = '''' ' +
                  'from hareketler h join gelisler g on g.dosyaNo = h.dosyaNo and g.gelisNo = h.gelisNo ' +
                  ' where g.takýpNo = ' + QuotedStr(TakipNo);
           datalar.QueryExec(ado,sql);
         end;

         datalar.RxTahlilIslem.First;
         while not datalar.RxTahlilIslem.Eof do
         Begin
             islemSiraNo := datalar.RxTahlilIslem.fieldbyname('islemSiraNo').AsString;
             siraNo := datalar.RxTahlilIslem.fieldbyname('HizmetSunucuRefNo').AsString;
             sql := 'update hareketler set islemSiraNo = ' + QuotedStr(islemSiraNo) +
                    ' where SIRANO = ' + copy(siraNo,2,15);
             datalar.QueryExec(ado,sql);
             datalar.RxTahlilIslem.Next;
         End;

         datalar.RxMalzemeBilgisi.First;
         while not datalar.RxMalzemeBilgisi.Eof do
         Begin
             islemSiraNo := datalar.RxMalzemeBilgisi.fieldbyname('islemSiraNo').AsString;
             siraNo := datalar.RxMalzemeBilgisi.fieldbyname('HizmetSunucuRefNo').AsString;
             sql := 'update hareketlerIS set islemSiraNo = ' + QuotedStr(islemSiraNo) +
                    ' where SIRANO = ' + copy(siraNo,2,15);
             datalar.QueryExec(ado,sql);
             datalar.RxMalzemeBilgisi.Next;
         End;

         datalar.RxYatakBilgisi.First;
         while not datalar.RxYatakBilgisi.Eof do
         Begin
             islemSiraNO := datalar.RxYatakBilgisi.fieldbyname('islemSiraNo').AsString;
             siraNO := datalar.RxYatakBilgisi.fieldbyname('HizmetSunucuRefNo').AsString;
             sql := 'update gelisDetay set islemSiraNoYatak = ' + QuotedStr(islemSiraNo) +
                    ' where SiraNoYatis = ' + QuotedStr(siraNo);
             datalar.QueryExec(ado,sql);
             datalar.RxYatakBilgisi.Next;
         End;


         if datalar.RxDigerIslem.RecordCount = 0
         then begin
           sql := 'update gelisDetay set TalepSira = '''' ' +
                  'from gelisDetay h join gelisler g on g.dosyaNo = h.dosyaNo and g.gelisNo = h.gelisNo ' +
                  ' where g.takýpNo = ' + QuotedStr(TakipNo);
           datalar.QueryExec(ado,sql);
         end;

         datalar.RxDigerIslem.First;
         while not datalar.RxDigerIslem.Eof do
         Begin
             islemSiraNO := datalar.RxDigerIslem.fieldbyname('islemSiraNo').AsString;
             siraNO := datalar.RxDigerIslem.fieldbyname('HizmetSunucuRefNo').AsString;
             sql := 'update gelisDetay set TalepSira = ' + QuotedStr(islemSiraNo) +
                    ' where sirano = ' + siraNO;
             datalar.QueryExec(ado,sql);
             datalar.RxDigerIslem.Next;
         End;

         if datalar.RxTaniBilgisi.RecordCount = 0
         then begin
           sql := 'update Anamnez_Icd set islemSiraNo = '''' ' +
                  'from Anamnez_Icd h join gelisler g on g.dosyaNo = h.dosyaNo and g.gelisNo = h.gelisNo ' +
                  ' where g.takýpNo = ' + QuotedStr(TakipNo);
           datalar.QueryExec(ado,sql);
         end;

         datalar.RxTaniBilgisi.First;
         while not datalar.RxTaniBilgisi.Eof do
         Begin
             islemSiraNO := datalar.RxTaniBilgisi.fieldbyname('islemSiraNo').AsString;
             siraNO := datalar.RxTaniBilgisi.fieldbyname('HizmetSunucuRefNo').AsString;
             sql := 'update Anamnez_Icd set islemSiraNo = ' + QuotedStr(islemSiraNo) +
                    ' where ID = ' + copy(siraNO,2,15);
             datalar.QueryExec(ado,sql);
             datalar.RxTaniBilgisi.Next;
         End;

         ShowMessageSkin('Ýþlem Sýra Numaralarý Kayýt Edildi','','','info');

   End;


 //  sBitBtn1.Enabled := false;


End;




procedure TakipBilgisiOkuForm(Form : TForm);
var
   HastaBil : TTakipBilgisi;
begin

      datalar.RxTaniBilgisi.Active := False;
      datalar.RxTaniBilgisi.Active := True;
      datalar.RxDigerIslem.Active := False;
      datalar.RxDigerIslem.Active := True;
      datalar.RxTahlilIslem.Active := False;
      datalar.RxTahlilIslem.Active := True;

      Application.ProcessMessages;

      KabulOku(TGirisForm(Form)._TakipNo_,HastaBil,datalar.HastaKabul,1);
      if 1 = 1
      Then Begin
        Application.CreateForm(TfrmTakipBilgisiOku, frmTakipBilgisiOku);
        try
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Takip No       :  ' + HastaBil.Takip);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Ýlk Takip No   :  ' + HastaBil.ilkTakip);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Takip Tarihi   :  ' + HastaBil.MuayeneTarihi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Kayýt Tarihi   :  ' + HastaBil.KayitTarihi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Hasta Adý      :  ' + HastaBil.HastaAdi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Hasta Kimlik No:  ' + HastaBil.TcKimlik);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Baþvuru No     :  ' + HastaBil.BasvuruNo);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Takip Tipi     :  ' + HastaBil.TakipTipi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Tedavi Türü    :  ' + HastaBil.tedaviTuru);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Tedavi Tipi    :  ' + HastaBil.tedaviTipi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('ProvizYon Tipi :  ' + HastaBil.provizyonTipi);
          frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add('Branþ          :  ' + HastaBil.bransKodu);


          datalar.Bilgi.TakipNo := HastaBil.Takip;
          datalar.Bilgi.BasvuruNo := HastaBil.BasvuruNo;
          datalar.Bilgi.dosyaNo := TGirisForm(Form)._dosyaNO_;
          datalar.Bilgi.gelisNo := TGirisForm(Form)._gelisNO_;
          frmTakipBilgisiOku._HastaAdSoyad_ := TGirisForm(Form)._HastaAdSoyad_;

          frmTakipBilgisiOku.ShowModal;
        finally
          FreeAndNil (frmTakipBilgisiOku);
        end;
      End;

end;


procedure TumHizmetleriIptalEt(TakipNo : string);
var
  msg , islemSiraNo , sql : string;
  ado : TADOQuery;
  i , j : integer;
begin
   if TakipNo = '' then exit;

   if mrYes = ShowMessageSkin('Tüm Hizmetler Ýptal Edilecek Emin misiniz ?','','','msg')
   then begin
      SetLength(datalar.islemSiralari,0);
      msg := HizmetKaydiIptal(TakipNo ,datalar.HizmetKayit);
      if msg = '0000'
      Then Begin
         sql := 'update gelisDetay set TalepSira = ''''' +
                ' from gelisDetay gd ' +
                ' join Gelisler g on g.dosyaNo = gd.dosyaNo and g.gelisNo = gd.gelisNo ' +
                ' where g.TakýpNo = ' + QuotedStr(TakipNo);
         datalar.QueryExec(ado,sql);

         sql := 'update gelisDetayPeriton set TalepSira = ''''' +
                ' from gelisDetay gd ' +
                ' join Gelisler g on g.dosyaNo = gd.dosyaNo and g.gelisNo = gd.gelisNo ' +
                ' where g.TakýpNo = ' + QuotedStr(TakipNo);
         datalar.QueryExec(ado,sql);

         sql := 'update gelisDetay set islemSiraNoYatak = ''''' +
                ' from gelisDetay gd ' +
                ' join Gelisler g on g.dosyaNo = gd.dosyaNo and g.gelisNo = gd.gelisNo ' +
                ' where g.TakýpNo = ' + QuotedStr(TakipNo);
         datalar.QueryExec(ado,sql);

         sql := 'update gelisler set TaniIslemSiraNo = ''''' +
                ' where TakýpNo = ' + QuotedStr(TakipNo);
         datalar.QueryExec(ado,sql);

         sql := 'update hareketler set islemSiraNo = ''''' +
                ' from hareketler gd ' +
                ' join Gelisler g on g.dosyaNo = gd.dosyaNo and g.gelisNo = gd.gelisNo ' +
                ' where g.TakýpNo = ' + QuotedStr(TakipNo);
         datalar.QueryExec(ado,sql);

         sql := 'update hareketlerIS set islemSiraNo = ''''' +
                ' from hareketlerIS gd ' +
                ' join Gelisler g on g.dosyaNo = gd.dosyaNo and g.gelisNo = gd.gelisNo ' +
                ' where g.TakýpNo = ' + QuotedStr(TakipNo);
         datalar.QueryExec(ado,sql);


         sql := 'update Anamnez_Icd set islemSiraNo = ''''' +
                ' from Anamnez_Icd gd ' +
                ' join Gelisler g on g.dosyaNo = gd.dosyaNo and g.gelisNo = gd.gelisNo ' +
                ' where g.TakýpNo = ' + QuotedStr(TakipNo);
         datalar.QueryExec(ado,sql);

         ShowMessageSkin('Hizmetler Ýptal Edildi','','','info');
         DatalariBosalt;
      End
      Else ShowMessageSkin(msg,'','','info');
   end;



end;




procedure TumHizmetleriMedulayaKaydet(TakipNo,BasvuruNo : string);
var
  fark : double;
  hatali : TStringList;
  tedavi , sonuc ,  sql : string;
begin
     if UserRight('MEDULA ÝÞLEMLERÝ', 'Ödeme Yolla') = False
     then begin
         ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
         exit;
     end;

    if LisansKontrol(fark) = false
    Then Begin
     // pnlDurum.Visible := True;

      hatali := TStringList.Create;
      try
      //  tedavi := ADO_Gelisler.FieldByName('TEDAVITURU').AsString;
        verisetleriyenile(TakipNo,'D','G');

        if  Length(datalar.VeriSeti.Tahlil) + Length(datalar.VeriSeti.Diger) +
            Length(datalar.VeriSeti.Tani) + Length(datalar.VeriSeti.Malzeme) +
            Length(datalar.VeriSeti.Rad) <= 20
        then begin
          sonuc := HizmetKayit_3(BasvuruNo,TakipNo,datalar.HizmetKayit,nil,
                        nil,nil,nil,
                        nil,DATALAR.VeriSeti.Malzeme,nil,
                        datalar.VeriSeti.Tahlil,datalar.VeriSeti.Tani,datalar.VeriSeti.Rad,
                        nil,
                        //datalar.veriSeti.KayitliIslem,
                        hatali,1,'');

          if sonuc = '0000'
          Then Begin
            Sonucyaz(sonuc,TakipNo,1,hatali);
            ShowMessageSkin('Ýþlemler Baþarý ile Kaydedildi','','','info');
  //          Gelisler(DosyaNo.Text);
          //  gridGelisler.OnClick(gridgelisler);
          End
          Else
           GonderimMesaj(hatali.Text,'C:\NoktaV3\wsHizmetKayit.xml');
        end
        Else
        Begin
            verisetleriyenile(TakipNo,'D','G');
            sonuc := HizmetKayit_3(BasvuruNo,TakipNo,datalar.HizmetKayit,nil,
                          nil,nil,nil,
                          nil,nil,nil,
                          nil,datalar.VeriSeti.Tani,datalar.VeriSeti.Rad,
                          nil,
                          //datalar.veriSeti.KayitliIslem,
                          hatali,1,'');
            if sonuc = '0000'
            then
             Sonucyaz(sonuc,TakipNo,1,hatali)
            else
             GonderimMesaj(hatali.Text,'C:\NoktaV3\wsHizmetKayit.xml');

            if Length(datalar.VeriSeti.Malzeme) > 0
            Then Begin
                sleep(3000);
                sonuc := HizmetKayit_3(BasvuruNo,TakipNo,datalar.HizmetKayit,nil,
                          nil,nil,nil,
                          nil,DATALAR.VeriSeti.Malzeme,nil,
                          nil,nil,nil,
                          nil,
                          //datalar.veriSeti.KayitliIslem,
                          hatali,1,'');

                if sonuc = '0000'
                then
                 Sonucyaz(sonuc,TakipNo,1,hatali)
                else
                 GonderimMesaj(hatali.Text,'C:\NoktaV3\wsHizmetKayit.xml');
              end;


            // Tahlilleri kaydet
            if Length(datalar.VeriSeti.Tahlil) > 20
            Then Begin
              sleep(3000);
              SetLength(datalar.VeriSeti.Tahlil,20);
              sonuc := HizmetKayit_3(BasvuruNo,TakipNo,datalar.HizmetKayit,nil,
                          nil,nil,nil,
                          nil,nil,nil,
                          datalar.VeriSeti.Tahlil,nil,nil,
                          nil,
                          //datalar.veriSeti.KayitliIslem,
                          hatali,1,'');

              if sonuc = '0000'
              then
               Sonucyaz(sonuc,TakipNo,1,hatali)
              else
               GonderimMesaj(hatali.Text,'C:\NoktaV3\wsHizmetKayit.xml');

             verisetleriyenile(TakipNo,'D','G');

             sleep(3000);
             sonuc := HizmetKayit_3(BasvuruNo,TakipNo,datalar.HizmetKayit,nil,
                          nil,nil,nil,
                          nil,nil,nil,
                          datalar.VeriSeti.Tahlil,nil,nil,
                          nil,
                          //datalar.veriSeti.KayitliIslem,
                          hatali,1,'');
              Sonucyaz(sonuc,TakipNo,1,hatali);
              if sonuc = '0000'
              Then Begin
               Sonucyaz(sonuc,TakipNo,1,hatali);
               ShowMessageSkin('Ýþlemler Baþarý ile Kaydedildi','','','info');
              // Gelisler(DosyaNo.Text);
              // gridGelisler.OnClick(gridgelisler);
              End
              Else
               GonderimMesaj(hatali.Text,'C:\NoktaV3\wsHizmetKayit.xml');
            End
            Else
            Begin
              sleep(3000);
              verisetleriyenile(TakipNo,'D','G');
              sonuc := HizmetKayit_3(BasvuruNo,TakipNo,datalar.HizmetKayit,nil,
                          nil,nil,nil,
                          nil,nil,nil,
                          datalar.VeriSeti.Tahlil,nil,nil,
                          nil,
                          //datalar.veriSeti.KayitliIslem,
                          hatali,1,'');
              Sonucyaz(sonuc,TakipNo,1,hatali);
              if sonuc = '0000'
              Then Begin
               Sonucyaz(sonuc,takipNo,1,hatali);
               ShowMessageSkin('Ýþlemler Baþarý ile Kaydedildi','','','info');
              // Gelisler(DosyaNo.Text);
              // gridGelisler.OnClick(gridgelisler);
              End
              Else
               GonderimMesaj(hatali.Text,'C:\NoktaV3\wsHizmetKayit.xml');
            End;

        End;
       // pnlDurum.Visible := false;

      finally
        hatali.Free;
      end;
    End
    Else ShowMessageskin('Lisans Yenileyiniz','','','info');
end;



procedure HastaTakipleriBul(tckimlikNo,tarih1,tarih2,sevkDurumu : string ; Sil : Boolean);
var
   PrvGrs1 : YardimciIslemlerWS.TakipAraGirisDVO;
   PrvCvp1 : YardimciIslemlerWS.TakipAraCevapDVO;
   dizi , i: integer;
   ad , _msg: string;
begin

      HTTPbaglan(datalar.yardimciIslem);

      PrvGrs1 := YardimciIslemlerWS.TakipAraGirisDVO.Create;
      PrvCvp1 := YardimciIslemlerWS.TakipAraCevapDVO.Create;

      PrvGrs1.saglikTesisKodu := datalar._kurumKod;
      PrvGrs1.hastaTCK := tckimlikNo;
      PrvGrs1.baslangicTarihi := tarih1;
      PrvGrs1.bitisTarihi := tarih2;
      PrvGrs1.sevkDurumu := sevkDurumu;

      datalar.yardimciIslem.URL :=  datalar.yardimciIslemURL; // 'https://medula.sgk.gov.tr/medulaws/services/YardimciIslemler';

      try
        PrvCvp1 := (datalar.yardimciIslem as YardimciIslemler).takipAra(PrvGrs1);
      except
        on E: sysUtils.Exception do
           begin
             Showmessageskin(E.Message,'','','info');
             exit;
           end;
      end;

      if PrvCvp1.sonucKodu = '0000'
      then begin

           if length(PrvCvp1.Takipler) = 0
           then begin
             //showmessage('Bu Hastaya Ait Takip Bulunamadý','','','info');
         //    result := '';
           //  exit;
           end;
           datalar.RxHastaTakip.Active := False;
           datalar.RxHastaTakip.Active := True;

           for i := 0 to length(PrvCvp1.takipler) - 1  do
            begin
                datalar.RxHastaTakip.Append;
                datalar.RxHastaTakip.FieldByName('Takipno').AsString := PrvCvp1.Takipler[i].takipNo;
                datalar.RxHastaTakip.FieldByName('Takiptarihi').AsString := PrvCvp1.takipler[i].takipTarihi;
                datalar.RxHastaTakip.FieldByName('TcKimlik').AsString := PrvCvp1.takipler[i].hastaBilgileri.tcKimlikNo;
                datalar.RxHastaTakip.FieldByName('sevkedentesis').AsString := PrvCvp1.takipler[i].bransKodu;
                datalar.RxHastaTakip.FieldByName('sevkedilenbrans').AsString := PrvCvp1.takipler[i].hastaBasvuruNo;
                datalar.RxHastaTakip.FieldByName('sevkedilistarihi').asString  := PrvCvp1.takipler[i].takipTipi;
                datalar.RxHastaTakip.FieldByName('takipTuru').asString  := PrvCvp1.takipler[i].takipDurumu;
                datalar.RxHastaTakip.FieldByName('sevkBildirimi').asString := PrvCvp1.takipler[i].sevkDurumu;
                datalar.RxHastaTakip.FieldByName('Tesis').AsInteger := PrvCvp1.takipler[i].tesisKodu;
                datalar.RxHastaTakip.FieldByName('basvuruNo').AsString := PrvCvp1.takipler[i].hastaBasvuruNo;                                           PrvCvp1.takipler[i].hastaBasvuruNo;
                datalar.RxHastaTakip.Post;
             End;
      end else
      begin
      end;


      PrvGrs1.Free;
      PrvCvp1.Free;

end;




function IlacRaporSil(RaporNo,Tc,tip : string) : string;
var
   Ts_RaporSilIlac : eraporSilIstekDVO;
   Ts_RaporSilCvp : EraporSilCevapDVO;
Begin
    Ts_RaporSilIlac := eraporSilIstekDVO.Create;
    Ts_RaporSilCvp := EraporSilCevapDVO.Create;
    Ts_RaporSilIlac.tesisKodu := inttostr(datalar._kurumKod);
    Ts_RaporSilIlac.raporTakipNo := RaporNo;
    Ts_RaporSilIlac.doktorTcKimlikNo := doktorTC(datalar.doktorKodu);
    datalar.doktorTip := 'H';
    datalar.Rapor_.URL := datalar.raporIlacURL;
    try
       Ts_RaporSilCvp := (datalar.Rapor_ as SaglikTesisiRaporIslemleri).eraporSil(Ts_RaporSilIlac);
       IlacRaporSil := Ts_RaporSilCvp.sonucKodu + '-' + Ts_RaporSilCvp.sonucMesaji;
    except
         on E: sysUtils.Exception do
         begin
           Showmessage(E.Message,'','','info');
           IlacRaporSil := '';
         end;
    end;
End;

function IlacRaporBul(RaporNo,Tc,tip : string) : TStringList;
var
   Ts_RaporBulIlac : eraporSorguIstekDVO;
   Ts_RaporCvpIlac : eraporSorguCevapDVO;
begin
  Result := TStringList.Create;
  try
    // SetLength(Cvp,4);
    Ts_RaporBulIlac := eraporSorguIstekDVO.Create;
    Ts_RaporCvpIlac := eraporSorguCevapDVO.Create;
    Ts_RaporBulIlac.tesisKodu := inttostr(datalar._kurumKod);
    Ts_RaporBulIlac.raporTakipNo := RaporNo;
    //   if datalar.doktorKodu = ''
    //   Then datalar.doktorKodu := TescildoktorBul(ADO_DOKTORLAR.FieldByName('drTescilNo').AsString);
    Ts_RaporBulIlac.doktorTcKimlikNo := doktorTC(datalar.doktorKodu);
    datalar.doktorTip := 'H';
    datalar.Rapor_.URL := datalar.raporIlacURL;

    Ts_RaporCvpIlac := (datalar.Rapor_ as SaglikTesisiRaporIslemleri).eraporSorgula(Ts_RaporBulIlac);
    Result.Add(Ts_RaporCvpIlac.sonucKodu);
    Result.Add(Ts_RaporCvpIlac.eraporDVO.raporTakipNo);
    Result.Add(Ts_RaporCvpIlac.eraporDVO.raporTarihi);
    Result.Add(Ts_RaporCvpIlac.eraporDVO.raporOnayDurumu);

  except
    FreeAndNil (Result);
    raise;
  end;
end;


function IlacRaporHekimOnay(RaporNo , Tc : string) : string;
var
 Onay : saglikTesisiRaporIslemleriWSIlac.eraporOnayIstekDVO;
 OnayCvp : saglikTesisiRaporIslemleriWSIlac.EraporOnayCevapDVO;
// Tcs : Tstrings;
begin
  Onay := saglikTesisiRaporIslemleriWSIlac.EraporOnayIstekDVO.Create;
  OnayCvp := saglikTesisiRaporIslemleriWSIlac.EraporOnayCevapDVO.Create;

//  Tcs := TStrings.Create;

  if Tc = ''
  Then Begin
    Tc := InputBox('Hekim Bilgisi','Hekim Tc Bilgisi','');
//    split(',',Tc,Tcs);
  End;

  datalar.hekimKodu := doktorTCtoKod(Tc);
  //datalar.Login;
  datalar.Rapor_.URL := datalar.raporIlacURL;

  Onay.tesisKodu := datalar._tesisKodu;
  Onay.doktorTcKimlikNo := doktorTc(datalar.hekimKodu);
  datalar.doktorTip := 'HO';
  Onay.raporTakipNo := Raporno;

  try
     OnayCvp := (datalar.Rapor_ as saglikTesisiRaporIslemleriWSIlac.SaglikTesisiRaporIslemleri).eraporOnay(Onay);
  except
       on E: sysUtils.Exception do Showmessage(E.Message,'','','info');
  end;

  if OnayCvp.sonucKodu = '0000'
  Then Begin
    ShowMessageSkin('Onay Ýþlemi Yapýldý','','','info');
  End
  Else
    ShowMessageSkin(OnayCvp.sonucMesaji,'','','info');

    IlacRaporHekimOnay := OnayCvp.sonucKodu;

end;


function IlacRaporHekimOnayRed(RaporNo , Tc : string) : string;
var
 Red : saglikTesisiRaporIslemleriWSIlac.eraporOnayRedIstekDVO;
 RedCvp : saglikTesisiRaporIslemleriWSIlac.eraporOnayRedCevapDVO;
begin
  Red := saglikTesisiRaporIslemleriWSIlac.eraporOnayRedIstekDVO.Create;
  RedCvp := saglikTesisiRaporIslemleriWSIlac.eraporOnayRedCevapDVO.Create;


  if Tc = ''
  Then Begin
    Tc := InputBox('Hekim Bilgisi','Hekim Tc Bilgisi','');
    datalar.hekimKodu := doktorTCtoKod(Tc);
  End;


  //datalar.Login;
  datalar.Rapor_.URL := datalar.raporIlacURL;

  Red.tesisKodu := datalar._tesisKodu;
  Red.doktorTcKimlikNo := doktorTc(datalar.hekimKodu);
  datalar.doktorTip := 'H';
  Red.raporTakipNo := Raporno;

  try
     RedCvp := (datalar.Rapor_ as saglikTesisiRaporIslemleriWSIlac.SaglikTesisiRaporIslemleri).eraporOnayRed(Red);
  except
       on E: sysUtils.Exception do Showmessage(E.Message,'','','info');
  end;

  if RedCvp.sonucKodu = '0000'
  Then Begin
    ShowMessageSkin('Red Ýþlemi Yapýldý','','','info');
  End
  Else
    ShowMessageSkin(RedCvp.sonucMesaji,'','','info');

    IlacRaporHekimOnayRed := RedCvp.sonucKodu;

end;


function IlacRaporBasHekimOnay(RaporNo , Tc : string) : string;
var
 BhekimOnay : saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayIstekDVO;
 BhekimOnayCvp : saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayCevapDVO;
begin
  BhekimOnay := saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayIstekDVO.Create;
  BhekimOnayCvp := saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayCevapDVO.Create;


  if datalar.bashekimKodu = ''
  Then Begin
    Tc := InputBox('Baþhekim Bilgisi','Baþhekim Tc Bilgisi','');
    datalar.bashekimKodu := doktorTCtoKod(Tc);
  End;


  //datalar.Login;
  datalar.Rapor_.URL := datalar.raporIlacURL;

  BhekimOnay.tesisKodu := datalar._tesisKodu;
  BhekimOnay.doktorTcKimlikNo := doktorTc(datalar.bashekimKodu);
  datalar.doktorTip := 'BH';
  BhekimOnay.raporTakipNo := Raporno;

  try
     BhekimOnayCvp := (datalar.Rapor_ as saglikTesisiRaporIslemleriWSIlac.SaglikTesisiRaporIslemleri).eraporBashekimOnay(BhekimOnay);
  except
       on E: sysUtils.Exception do Showmessage(E.Message,'','','info');
  end;

  if BhekimOnayCvp.sonucKodu = '0000'
  Then Begin
    ShowMessageSkin('Onay Ýþlemi Yapýldý','','','info');
  End
  Else
    ShowMessageSkin(BhekimOnayCvp.sonucMesaji,'','','info');

    IlacRaporBasHekimOnay := BhekimOnayCvp.sonucKodu;

end;


function IlacRaporBasHekimOnayRed(RaporNo , Tc : string) : string;
var
 BhekimOnay : saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayRedIstekDVO;
 BhekimOnayCvp : saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayRedCevapDVO;
begin
  BhekimOnay := saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayRedIstekDVO.Create;
  BhekimOnayCvp := saglikTesisiRaporIslemleriWSIlac.EraporBashekimOnayRedCevapDVO.Create;

  Tc := datalar.bashekimKodu;
  if Tc = ''
  Then Begin
    Tc := InputBox('Baþhekim Bilgisi','Baþhekim Tc Bilgisi',datalar.bashekimKodu);
  End;


  //datalar.Login;
  datalar.Rapor_.URL := datalar.raporIlacURL;

  BhekimOnay.tesisKodu := datalar._tesisKodu;
  BhekimOnay.doktorTcKimlikNo := Tc;
  datalar.bashekimKodu := doktorTCtoKod(Tc);
  datalar.doktorTip := 'BH';
  BhekimOnay.raporTakipNo := raporno;

  try
     BhekimOnayCvp := (datalar.Rapor_ as saglikTesisiRaporIslemleriWSIlac.SaglikTesisiRaporIslemleri).eraporBashekimOnayRed(BhekimOnay);
  except
       on E: sysUtils.Exception do Showmessage(E.Message,'','','info');
  end;

  if BhekimOnayCvp.sonucKodu = '0000'
  Then Begin
    ShowMessageSkin('Onay Red Ýþlemi Yapýldý','','','info');
  End
  Else
    ShowMessageSkin(BhekimOnayCvp.sonucMesaji,'','','info');

    IlacRaporBasHekimOnayRed := BhekimOnayCvp.sonucKodu;

end;



function YurtDisiYardimHakkiGetirSorgula(kisiNo,pt : string ; Rio : Thttprio) : string;
var
  yDYHG : yurtDisiYardimHakkiGetirGirisDVO;
  yDYHGCvp : YurtDisiYardimHakkiGetirCevapDVO;
  id , x : integer;
  i : TListItem;
begin

  yDYHG := YurtDisiYardimHakkiGetirGirisDVO.Create;
  yDYHGCvp := YurtDisiYardimHakkiGetirCevapDVO.Create;

  //datalar.login;
  Rio.HTTPWebNode.UserName := datalar._username;
  Rio.HTTPWebNode.Password := datalar._sifre;

  yDYHG.kisiNo := kisiNo;
  yDYHG.provizyonTarihi := pt;
  yDYHG.saglikTesisKodu := datalar._kurumKod;

  Rio.URL := datalar.yardimciIslemURL; //'https://medula.sgk.gov.tr:443/medulaws/services/YardimciIslemler';

  try
    yDYHGCvp := (Rio as YardimciIslemler).yurtDisiYardimHakkiGetir(yDYHG);
  except on e : sysUtils.Exception do
   begin
     ShowMessage(e.Message,'','','info');
   end;
  end;

  if yDYHGCvp.sonucKodu = '0000'
  Then Begin

     datalar.memData_yurtDisiYardimHakki.Active := false;
     datalar.memData_yurtDisiYardimHakki.Active := true;

     for x := 0 to length(yDYHGCvp.yurtDisiDetay) -1 do
     begin
       datalar.memData_yurtDisiYardimHakki.Append;
       datalar.memData_yurtDisiYardimHakki.FieldByName('id').AsInteger := yDYHGCvp.yurtDisiDetay[x].id;
       datalar.memData_yurtDisiYardimHakki.FieldByName('formulAdi').AsString := yDYHGCvp.yurtDisiDetay[x].formulAdi;
       datalar.memData_yurtDisiYardimHakki.FieldByName('odemeTuru').AsString := yDYHGCvp.yurtDisiDetay[x].odemeTuru;
       datalar.memData_yurtDisiYardimHakki.FieldByName('tedaviKapsami').AsString  := yDYHGCvp.yurtDisiDetay[x].tedaviKapsami;
       datalar.memData_yurtDisiYardimHakki.FieldByName('Tarih').AsString  := yDYHGCvp.yurtDisiDetay[x].sorguTarihi;
       datalar.memData_yurtDisiYardimHakki.FieldByName('aciklama').AsString  := yDYHGCvp.yurtDisiDetay[x].aciklama;
       datalar.memData_yurtDisiYardimHakki.Post;
     end;

  End
  Else
   ShowMessageSkin(yDYHGCvp.sonucKodu,yDYHGCvp.sonucMesaji,'','info');


end;


function DamarIziDogrulamaSorgula(tc,tarih,tesis,yas : string ; var msj : string;ad : string) : string;
var
  sql , s ,ss : string;
  cvp : DamarIziDogrulamaSorguCevapDVO;
  grs : DamarIziDogrulamaSorguGirisDVO;
  x,y : integer;
begin

  cvp := DamarIziDogrulamaSorguCevapDVO.Create;
  grs := DamarIziDogrulamaSorguGirisDVO.Create;

  //datalar.login;
//  datalar.YardimciIslem.HTTPWebNode.UserName := datalar._username;
//  datalar.YardimciIslem.HTTPWebNode.Password := datalar._sifre;

  grs.islemTarihi := tarih;
  grs.tckNo := tc;
  grs.sagliktesisKodu := strtoint(tesis);

  datalar.YardimciIslem.URL := datalar.yardimciIslemURL; //'https://medula.sgk.gov.tr/medula/hastane/yardimciIslemlerWS';

  try
    cvp := (datalar.YardimciIslem as YardimciIslemler).damarIziDogrulamaSorgu(grs);
  except on e : sysUtils.exception do
     begin
     //   ShowMessageSkin(e.Message,'','','info');
       cvp.sonucMesaji := e.Message;
     end;
  end;

  if cvp.sonucKodu = '0000'
  Then
    if tc = ''
    Then Begin
        datalar.memData_DamarIzi.Active := false;
        datalar.memData_DamarIzi.Active := True;
        if length(Cvp.damarIziSorguDetay) > 0
        Then begin
          for x := 0 to length(Cvp.damarIziSorguDetay) - 1 do
          begin
              datalar.memData_DamarIzi.Append;
              datalar.memData_DamarIzi.FieldByName('tc').AsString := Cvp.damarIziSorguDetay[x].tckNo;
              datalar.memData_DamarIzi.FieldByName('hasta').AsString := TCtoAd(Cvp.damarIziSorguDetay[x].tckNo);
              datalar.memData_DamarIzi.FieldByName('Tarih').AsString := Cvp.damarIziSorguDetay[x].islemTarihi;
              datalar.memData_DamarIzi.FieldByName('brans').AsString := Cvp.damarIziSorguDetay[x].brans;
              datalar.memData_DamarIzi.Post;
          end;
        end;
        msj := Cvp.sonucMesaji;
    End
    Else
    if length(Cvp.damarIziSorguDetay) > 0
    Then begin
     DamarIziDogrulamaSorgula :=  Cvp.damarIziSorguDetay[0].brans;
     msj := 'TC :' + tc + ' - ' + ad + ' - ' + yas + ' - Tarih :' + tarih + ' - ' + 'Kimlik Doðrulanan Branþ : ' +  Cvp.damarIziSorguDetay[0].brans;
    end
    Else begin
     DamarIziDogrulamaSorgula := '';
     msj := 'TC :' + tc + ' - ' + ad + ' - ' + yas + ' - Tarih :' + tarih + ' - ' + 'Kimlik Doðrulama Bulunamadý';
    end
  Else
     msj := 'TC :' + tc + ' - ' + ad + ' - ' + yas + ' - Tarih :' + tarih + ' - ' + Cvp.sonucMesaji;

end;


procedure HeaderWS(username , pasword: string ;  const Hdr : Security);
begin
    Hdr.MustUnderstand := True;
  (*  Hdr.Timestamp := TimeStamp.Create;
    Hdr.Timestamp.Id := 'Timestamp-27789929';
    Hdr.Timestamp.Created := Created.Create;
    Hdr.Timestamp.Created.AsDateTime := Now;
    Hdr.Timestamp.Expires := Expires.Create;
    Hdr.Timestamp.Expires.AsDateTime := Now;
   *)
    Hdr.UsernameToken := UsernameToken.Create;
    Hdr.UsernameToken.Id := 'SecurityToken-04ce24bd-9c7c-4ca9-9764-92c53b0662c5';//'UsernameToken';
    Hdr.UsernameToken.Username := username;
    Hdr.UsernameToken.Password := Password.Create;
    Hdr.UsernameToken.Password.Type_ := 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText';
    Hdr.UsernameToken.Password.Text := pasword;
    //    Hdr.UsernameToken.Nonce := '/qmJdpfcepocmQ19ntGmVw==';
//    Hdr.UsernameToken.Created := Created.Create;
  //  Hdr.UsernameToken.Created.XSToNative('2008-02-06T14:04:08Z');
end;



function onlineProtokolAl(pro : Protokol ; servis : THTTPRIO; tip : String) : Cevap;
var
  sql  , msj : string;
  kul : kullanici;
begin

  //datalar.login;

  kul := kullanici.Create;
  try
   // pro := Protokol.Create;
    Result := onlineProtokol.Cevap.Create;
    kul.KullaniciAdi := datalar._userSaglikNet2_;
    kul.KullaniciSifre := datalar._passSaglikNet2_;
    kul.ErisimKodu := 'C740D0288EFAC45FE0407C0A04162BDD';

    if Tip = 'D'
    then begin
      //pro.Vatandas_TCK := _tc_;
      //pro.islem_Tarihi := FormattedTarih(_tarih_) + ' 00:00' ;
      pro.KurumKodu := datalar._KurumSKRS_;
      pro.USVSPaketID := 3;
  //    pro.Klinik_Kodu := 13;
      pro.ProtokolTipi := 1;
      pro.MHRS := '0';

      //pro.Otomasyon_Kayit_id := _gelisId_;
    end;

    servis.URL := 'https://op.sagliknet.saglik.gov.tr/onlineprotokol.asmx';
    try
      Result := (servis as OnlineProtokolSoap).ProtokolVer(kul,pro);
    except on e : sysUtils.exception do
       begin
       //   ShowMessageSkin(e.Message,'','','info');
       Result.CevapKodu := -1;
       Result.CevapAciklama := e.Message;
       end;
    end;

    (*  if cvp.Cevap_Kodu in [0,7]
    Then OP.Text := cvp.Protokol_No
    Else
      ShowMessageSkin(inttostr(cvp.Cevap_Kodu),cvp.Cevap_Aciklama,cvp.Protokol_No,'info');
    *)
  finally
    kul.Free;
  end;
end;

function onlineProtokolIptal(pro : string ; servis : THTTPRIO; tip : String) : Cevap;
var
  sql  , msj : string;
  kul : kullanici;
begin

  //datalar.login;
  kul := kullanici.Create;
  try
    Result := Cevap.Create;

    kul.KullaniciAdi := datalar._userSaglikNet2_;
    kul.KullaniciSifre := datalar._passSaglikNet2_;
    kul.ErisimKodu := 'C740D0288EFAC45FE0407C0A04162BDD';

    servis.URL := 'https://op.sagliknet.saglik.gov.tr/onlineprotokol.asmx';
    try
      Result := (servis as OnlineProtokolSoap).ProtokolSil(pro,1,kul);
    except on e : sysUtils.exception do
       begin
          ShowMessageSkin(e.Message,'','','info');
          Result.CevapKodu := -1;
       end;
    end;

    if Result.CevapKodu = 0
    Then Begin

    End;

     // ShowMessageSkin(inttostr(cvp.Cevap_Kodu),cvp.Cevap_Aciklama,cvp.Protokol_No,'info');
  finally
    kul.Free;
  end;
end;





function eReceteIlacTaniEkle(ReceteId , doktor , taniKodu , taniAdi : string ; var msj : string ; Http1 : THTTPRIO) : EreceteTaniEkleCevapDVO;
var
  TaniGon : EreceteTaniEkleIstekDVO;
  TaniCvp : EreceteTaniEkleCevapDVO;
  tani : EreceteTaniDVO;
  sql : string;
  ado , ado1 : TADOQuery;
  doktorUser,doktorSifre : string;

begin
    TaniGon := EreceteTaniEkleIstekDVO.Create;
    TaniCvp := EreceteTaniEkleCevapDVO.Create;
    tani := EreceteTaniDVO.Create;

    //datalar.Login;
    doktorEReceteUser(doktor,doktorUser,doktorSifre);

    Http1.HTTPWebNode.UserName := doktorUser;
    Http1.HTTPWebNode.Password := doktorSifre;

    Http1.URL := datalar.receteURL; //'https://medeczane.sgk.gov.tr/eczanews/services/SaglikTesisiReceteIslemleri';
    TaniGon.tesisKodu := datalar._kurumKod;
    TaniGon.ereceteNo := ReceteId;
    TaniGon.doktorTcKimlikNo := StrToInt64(doktorTc(doktor));


    tani.taniKodu := taniKodu;
    tani.taniAdi := taniAdi;
    TaniGon.ereceteTaniDVO := tani;



   try
    Application.ProcessMessages;
    TaniCvp := (Http1 as SaglikTesisiReceteIslemleri).ereceteTaniEkle(TaniGon);
   except
    on E: sysUtils.Exception do
    begin
      Showmessageskin(E.Message,'','','info');
      msj := 'Servisten Sonuç Alýnamadý : ' + e.Message;
      exit;
    end;
   end;

   Result := TaniCvp;


end;



function eReceteIlacAciklamaEkle(ReceteId , doktor , barkod , tur , ilacack : string ; var msj : string ; Http1 : THTTPRIO) : EreceteIlacAciklamaEkleCevapDVO;
var
  AckGon : EreceteIlacAciklamaEkleIstekDVO;
  AckCvp : EreceteIlacAciklamaEkleCevapDVO;
  Ack : ereceteIlacAciklamaDVO;
  sql : string;
  ado , ado1 : TADOQuery;
  doktorUser,doktorSifre : string;

begin
    AckGon := EreceteIlacAciklamaEkleIstekDVO.Create;
    AckCvp := EreceteIlacAciklamaEkleCevapDVO.Create;
    Ack := EreceteIlacAciklamaDVO.Create;

    //datalar.Login;
    doktorEReceteUser(doktor,doktorUser,doktorSifre);  

    Http1.HTTPWebNode.UserName := doktorUser;
    Http1.HTTPWebNode.Password := doktorSifre;
    Http1.URL := datalar.receteURL; //'https://medeczane.sgk.gov.tr/eczanews/services/SaglikTesisiReceteIslemleri';

    AckGon.ereceteNo := ReceteId;
    AckGon.barkod := StrToInt64(barkod);
    AckGon.tesisKodu := DATALAR._kurumKod;
    AckGon.doktorTcKimlikNo := StrToInt64(doktorTc(doktor));

    Ack.aciklamaTuru := StrToInt(tur);
    ack.aciklama := ilacack;

    AckGon.ereceteIlacAciklamaDVO := Ack;



   try
    Application.ProcessMessages;
    AckCvp := (Http1 as SaglikTesisiReceteIslemleri).ereceteIlacAciklamaEkle(AckGon);
   except
    on E: sysUtils.Exception do
    begin
      Showmessageskin(E.Message,'','','info');
      msj := 'Servisten Sonuç Alýnamadý : ' + e.Message;
      exit;
    end;
   end;

   Result := AckCvp;


end;


function RaporListeGetir(tarih : string ; tesisKodu : string ; var msj : string) : CevapDTO;
var
  RprCvp : CevapDTO;
  isgor : SorgulaWS1.IsgoremezlikRaporDTO;
  RprCvpT : TXSDateTime;
begin
   RprCvp := CevapDTO.Create;



   datalar.OnSecim.URL := 'http://gss.sgk.gov.tr/WS_isGoremezlik2011/services/SorgulaWS';

   //datalar.Login;
   datalar.OnSecim.HTTPWebNode.UserName := datalar._username;// userr;
   datalar.OnSecim.HTTPWebNode.Password := datalar._sifre;// pass;

   try
    Application.ProcessMessages;
  //  RprCvp := (datalar.OnSecim as SorgulaWS).raporListeGetir(tarih,tesisKodu);
   except
    on E: sysUtils.Exception do
    begin
      Showmessageskin(E.Message,'','','info');
      msj := 'Servisten Sonuç Alýnamadý : ' + e.Message;
      exit;
    end;
   end;

   msj := RprCvp.hataMesaji;
   Result := RprCvp;



end;


function RaporOnSecimP(Rpr : SorgulaWS1.IsgoremezlikRaporDVO ; var msj : string) : CevapDTO;
var
  RprCvp : CevapDTO;
begin
   RprCvp := CevapDTO.Create;
   datalar.OnSecim.URL := 'http://gss.sgk.gov.tr/WS_isGoremezlik2011/services/SorgulaWS';
                       
   //datalar.Login;
   datalar.OnSecim.HTTPWebNode.UserName := datalar._username;// userr;
   datalar.OnSecim.HTTPWebNode.Password := datalar._sifre;// pass;

   try
    Application.ProcessMessages;
      RprCvp := (datalar.OnSecim as SorgulaWS).raporOnSecim(Rpr);
   except
    on E: sysUtils.Exception do
    begin
      Showmessageskin(E.Message,'','','info');
      msj := 'Servisten Sonuç Alýnamadý : ' + e.Message;
      exit;
    end;
   end;

   msj := RprCvp.hataMesaji;
   Result := RprCvp;



end;


function IlacListesiOku(tarih , doktor , aktif : string ; pr : TProgressBar) : string;
var
  IlacGon : IlacListesiSorguIstekDVO;
  IlacCvp1 : IlacListesiSorguCevapDVO;
  sql , msj , userr, pass: string;
  ado : TADOQuery;
  bBasari : Boolean;

procedure ilacDbYaz(IlacCvp : IlacListesiSorguCevapDVO ; Tip : string);
var
    x : integer;
begin
   if length(IlacCvp.ilacListesi) > 0
   Then Begin
      pr.Max := length(IlacCvp.ilacListesi);
      pr.Position := 0;
      for x := 0 to  length(IlacCvp.ilacListesi) - 1 do
      begin
        Application.ProcessMessages;
         sql := 'insert into ilacListesi (barkod,ilacAdi,sgkilacKodu,ambalajMiktar,tekDozMiktar,aktif,ReceteTip) ' +
                 ' values(' + SQLValue(inttostr(IlacCvp.ilacListesi[x].barkod)) + ',' +
                              SQLValue(IlacCvp.ilacListesi[x].ilacAdi) + ',' +
                              inttostr(IlacCvp.ilacListesi[x].sgkIlacKodu) + ',' +
                              floattostr(IlacCvp.ilacListesi[x].ambalajMiktari) + ',' +
                              FloatToStr(IlacCvp.ilacListesi[x].tekDozMiktari) + ',' +
                              ifThen(aktif = 'P','0','1') + ',' +
                              SQLValue(Tip) + ')';
         datalar.QueryExec(ado,sql);
         pr.Position := pr.Position + 1;
      end; // for end;
   End;
end;

procedure sonuc(IlacCvp : IlacListesiSorguCevapDVO);
begin
  if IlacCvp.sonucKodu <> '0000'
  Then Begin
  result := IlacCvp.sonucMesaji;
  end;
end;

begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    bBasari := False;
    try
      BeginTrans (datalar.ADOConnection2);
      try
        sql := 'delete from ilacListesi where ReceteTip = ' + QuotedStr(aktif);
        datalar.QueryExec(ado,sql);

        IlacGon := IlacListesiSorguIstekDVO.Create;
        IlacCvp1 := IlacListesiSorguCevapDVO.Create;

        //datalar.Login;
        doktorEReceteUser(doktor,userr,pass);

        datalar.ilacList.HTTPWebNode.UserName := datalar._username;// userr;
        datalar.ilacList.HTTPWebNode.Password := datalar._sifre;// pass;

        IlacGon.tesisKodu :=  datalar._kurumKod;
        IlacGon.islemTarihi := tarih;
        IlacGon.doktorTcKimlikNo := StrToInt64(doktorTC(doktor));

        datalar.ilacList.URL := 'https://medeczane.sgk.gov.tr/eczanews/services/SaglikTesisiYardimciIslemler';

        Application.ProcessMessages;
        if aktif = 'A'
        then begin
         IlacCvp1 := (datalar.ilacList as SaglikTesisiYardimciIslemler).aktifIlacListesiSorgula(IlacGon);
         sonuc(IlacCvp1);
         ilacDbYaz(IlacCvp1,'A');
        end
        else
        if aktif = 'N'
        then begin
         IlacCvp1 := (datalar.ilacList as SaglikTesisiYardimciIslemler).normalReceteIlacListesiSorgula(IlacGon);
         sonuc(IlacCvp1);
         ilacDbYaz(IlacCvp1,'N');
        end
        else
        if aktif = 'Y'
        then begin
         IlacCvp1 := (datalar.ilacList as SaglikTesisiYardimciIslemler).yesilReceteIlacListesiSorgula(IlacGon);
         sonuc(IlacCvp1);
         ilacDbYaz(IlacCvp1,'Y');
        end
        else
        if aktif = 'K'
        then begin
         IlacCvp1 := (datalar.ilacList as SaglikTesisiYardimciIslemler).kirmiziReceteIlacListesiSorgula(IlacGon);
         sonuc(IlacCvp1);
         ilacDbYaz(IlacCvp1,'K');
        end
        else
        if aktif = 'T'
        then begin
         IlacCvp1 := (datalar.ilacList as SaglikTesisiYardimciIslemler).turuncuReceteIlacListesiSorgula(IlacGon);
         sonuc(IlacCvp1);
         ilacDbYaz(IlacCvp1,'T');
        end
        else
        if aktif = 'P'
        then begin
         IlacCvp1 := (datalar.ilacList as SaglikTesisiYardimciIslemler).pasifIlacListesiSorgula(IlacGon);
         ilacDbYaz(IlacCvp1,'P');
        end;
        bBasari := True;
      finally
        if bBasari then CommitTrans (datalar.ADOConnection2)
        else begin
           datalar.ADOConnection2.RollbackTrans;
        end;
      end;
    except
     on E: sysUtils.Exception do
     begin
       Showmessageskin(E.Message,'','','info');
       msj := 'Servisten Sonuç Alýnamadý yada Sonuçlar Yazýlýrken Hata Oluþtu : ' + e.Message;
     end;
    end;
  finally
    ado.Free;
  end;
end;



function eRecete(dosyaNo,gelisNo,Id,doktor : string) : EreceteDVO;
var
  recete : EreceteDVO;
  kisi : SaglikTesisiReceteIslemleri1.KisiDVO;
  kisiler : array of SaglikTesisiReceteIslemleri1.KisiDVO;
  receteAciklama : EreceteAciklamaDVO;
  receteAciklamalar : ArrayOfEreceteAciklamaDVO;
  receteTani : EreceteTaniDVO;
  receteTanilar : ArrayOfEreceteTaniDVO;
  receteIlac : EreceteIlacDVO;
  receteIlaclar : ArrayOfEreceteIlacDVO;
  receteIlacAciklama : EreceteIlacAciklamaDVO;
  receteIlacAciklamalar : ArrayOfEreceteIlacAciklamaDVO;
  sql : string;
  ado , ado1 : TADOQuery;
  receteId , receteDetayId : string;
  x , y : integer;
  doktorUser , doktorSifre : string;
  yupass : string;
begin
  recete := EreceteDVO.Create;
  //  kisi := SaglikTesisiReceteIslemleri1.KisiDVO.Create;

  sql := 'select * from gelisler g ' +
         ' left join takipbilgisi t on t.takipno = g.takýpno ' +
         ' join HastaKart k on k.dosyaNo = g.dosyaNo ' +
         ' where g.dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisno = ' + gelisNo;
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    datalar.QuerySelect(ado,sql);

    //datalar.Login;

    (*
    sql := 'select top 1 TakipNo  from gelisDetay ' +
           ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisno = ' + gelisNo + ' and durum = 1 and isnull(TakipNo,'''') <> ''''' +
           ' order by UTarih desc ';
    ado2 := TADOQuery.Create(nil);
    ado2.Connection := datalar.ADOConnection2;
    datalar.QuerySelect(ado2,sql);
      *)

    yupass := ifthen(ado.fieldbyname('yupass').AsString = '',ado.fieldbyname('TCKIMLIKNO').AsString,
                     ado.fieldbyname('yupass').AsString);
    recete.tesisKodu := datalar._kurumKod;
    recete.tcKimlikNo := StrToInt64(yupass);
    recete.takipNo := ado.fieldbyname('Takýpno').AsString;
    recete.provizyonTipi := provizyonTakipTiptoReceteTip(ado.Fieldbyname('provizyontipi').AsString);

  (*
    kisi.tcKimlikNo := StrToInt64(ado.fieldbyname('TCKIMLIKNO').AsString);
    kisi.adi := ado.fieldbyname('HASTAADI').AsString;
    kisi.soyadi := ado.fieldbyname('HASTASOYADI').AsString;
    kisi.dogumTarihi := datetostr(Tarihyap((ado.fieldbyname('DOGUMTARIHI').AsString)));
    kisi.cinsiyeti :=  ifThen(ado.fieldbyname('CINSIYETI').AsString = '0' ,'K','E');

    recete.kisiDVO := kisi;
    *)

   // recete.kisiDVO.Free;

    if receteId = ''
    Then
      sql := 'select * from recete where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo + ' and id = ' + Id
    Else
      sql := 'select * from recete where id = ' + receteId;


    datalar.QuerySelect(ado,sql);

    receteId := ado.fieldbyname('id').AsString;

    recete.receteTarihi := ado.fieldbyname('tarih').AsString;
    try
     recete.receteTuru := strtoint(copy(ado.fieldbyname('receteTur').AsString,1,1));
    except on e : sysUtils.exception do
     begin
      ShowMessageSkin('Recete Turu Hata : ' + e.Message,'','','info');
     end;
    End;
    recete.receteAltTuru := ado.fieldbyname('receteAltTur').AsInteger;
    recete.protokolNo := ado.fieldbyname('protokolNo').AsString;
    recete.seriNo := '';
    recete.doktorTcKimlikNo := StrToInt64(doktorTC(copy(doktor,1,4)));
  //  recete.doktorPersonelTipi := 1;
    try
      recete.doktorBransKodu := StrToInt(doktorReceteBrans(copy(doktor,1,4)));
    except on e : sysUtils.Exception do
     begin
      ShowMessageSkin('Doktor Branþ Kodu Hata : ' + e.Message,'','','info');
     end;
    end;

    try
     recete.doktorSertifikaKodu := strtoint(doktorSertifika(copy(ado.fieldbyname('doktor').AsString,1,4)));
    except on e : sysUtils.exception do
     begin
       ShowMessageSkin('Sertifika Kodu Hata : ' + e.Message,'','','info');
     end;
    end;

    recete.doktorAdi := '';
    recete.doktorSoyadi := '';


    sql := 'select * from ReceteTani where receteId = ' + receteId;
    datalar.QuerySelect(ado,sql);
    SetLength(receteTanilar,ado.RecordCount);
    x := 0;
    while not ado.Eof do
    begin
       receteTani := EreceteTaniDVO.Create;
       receteTani.taniKodu := ado.fieldbyname('TaniKodu').AsString;
       receteTani.taniAdi := ado.fieldbyname('Tani').AsString;
       receteTanilar[x] := receteTani;
       inc(x);
       ado.Next;
    end;

    recete.ereceteTaniListesi := receteTanilar;


    sql := 'select * from ReceteAciklama where receteId = ' + receteId;
    datalar.QuerySelect(ado,sql);
    SetLength(receteAciklamalar,ado.RecordCount);
    x := 0;
    while not ado.Eof do
    begin
       receteAciklama := EreceteAciklamaDVO.Create;
       receteAciklama.aciklamaTuru := ado.fieldbyname('aciklamaTip').AsInteger;
       receteAciklama.aciklama := ado.fieldbyname('aciklama').AsString;
       receteAciklamalar[x] := receteAciklama;
       inc(x);
       ado.Next;
    end;

    recete.ereceteAciklamaListesi := receteAciklamalar;




    sql := 'select * from ReceteDetay where receteId = ' + receteId;
    datalar.QuerySelect(ado,sql);
    ado1 := TADOQuery.Create(nil);
    try
      ado1.Connection := datalar.ADOConnection2;

      SetLength(receteIlaclar,ado.RecordCount);
      x := 0;
      while not ado.Eof do
      begin
         receteDetayId := ado.fieldbyname('id').AsString;
         receteIlac := EreceteIlacDVO.Create;
         receteIlac.barkod := StrToInt64(ado.fieldbyname('ilacKodu').AsString);
         receteIlac.adet := ado.fieldbyname('Adet').AsInteger;
         try
          receteIlac.kullanimPeriyotBirimi := ado.fieldbyname('kullanZamanUnit').AsInteger;
         except
          ShowMessageSkin('Kullaným Peryot Birimi Hatalý','','','info');
         end;
         try
          receteIlac.kullanimPeriyot := ado.fieldbyname('kullanimZaman').AsInteger;
         except
          ShowMessageSkin('Kullaným Peryot Hatalý','','','info');
         end;
         try
          receteIlac.kullanimSekli := strtoint(trim(copy(ado.fieldbyname('kullanimyolu').AsString,1,2)));
         except
          ShowMessageSkin('Kullaným Þekli Hatalý','','','info');
         end;
         receteIlac.kullanimDoz1 := ado.fieldbyname('kullanimadet2').AsInteger;
         receteIlac.kullanimDoz2 := ado.fieldbyname('kullanimAdet').AsFloat;
         receteIlac.ilacAdi := ado.fieldbyname('ilacAdi').AsString;



         sql := 'select * from receteIlacAciklama where receteDetayId = ' + receteDetayId;
         datalar.QuerySelect(ado1,sql);

         SetLength(receteIlacAciklamalar,ado1.RecordCount);
         y := 0;
         while not ado1.Eof do
         begin
           receteIlacAciklama := EreceteIlacAciklamaDVO.Create;
           receteIlacAciklama.aciklamaTuru := ado1.fieldbyname('aciklamaTip').AsInteger;
           receteIlacAciklama.aciklama := ado1.fieldbyname('aciklama').AsString;
           receteIlacAciklamalar[y] := receteIlacAciklama;
           inc(y);
           ado1.Next;
         end;
         receteIlac.ereceteIlacAciklamaListesi := receteIlacAciklamalar;

         receteIlaclar[x] := receteIlac;

         inc(x);
         ado.Next;
      end;
      recete.ereceteIlacListesi := receteIlaclar;
      result := recete;
    finally
      ado1.Free;
    end;
  finally
    ado.Free;
  end;

end;

function eReceteListeSorgula(doktor , TC : string ; var msj : string) : ArrayOfEreceteDVO;
var
  sql : string;
  ado : TADOQuery;
  receteSorGon : EreceteListeSorguIstekDVO;
  receteSorCvp : EreceteListeSorguCevapDVO;
  receteList : ArrayOfEreceteDVO;
  ado1 : TADOQuery;
  doktorUser,doktorSifre : string;
begin
    receteSorGon := EreceteListeSorguIstekDVO.Create;
    receteSorCvp := EreceteListeSorguCevapDVO.Create;

    //datalar.Login;
    doktorEReceteUser(doktor,doktorUser,doktorSifre);

    datalar.ReceteKayit.HTTPWebNode.UserName := doktorUser;
    datalar.ReceteKayit.HTTPWebNode.Password := doktorSifre;

    datalar.ReceteKayit.URL := datalar.receteURL; //'https://medeczane.sgk.gov.tr/eczanews/services/SaglikTesisiReceteIslemleri';

    receteSorGon.tesisKodu := datalar._kurumKod;
    try
    receteSorGon.doktorTcKimlikNo := StrToInt64(doktorTC(doktor));
    except ShowMessageSkin('Doktor TC Bilgisi Hatalý','','','info') end;
    try
    receteSorGon.hastaTcKimlikNo := StrToInt64(TC);
    except ShowMessageSkin('Hasta TC Bilgisi Hatalý','','','info') end;

    try
     Application.ProcessMessages;
     receteSorCvp := (datalar.ReceteKayit as SaglikTesisiReceteIslemleri).ereceteListeSorgula(receteSorGon);
    except
     on E: sysUtils.Exception do
    begin
      Showmessageskin(E.Message,'','','info');
      msj := 'Servisten Sonuç Alýnamadý : ' + e.Message;
      exit;
    end;
   end;

    if receteSorCvp.sonucKodu = '0000'
    then begin
      msj := receteSorCvp.sonucKodu;
      receteList := receteSorCvp.ereceteListesi;
    end
    else
       msj := receteSorCvp.sonucMesaji;

    Result := receteList;


end;    



function eReceteSorgula(ReceteId , doktor : string ; var msj : string) : EreceteDVO;
var
  sql : string;
  ado : TADOQuery;
  receteSorGon : EreceteSorguIstekDVO;
  receteSorCvp : EreceteSorguCevapDVO;
  recete : EreceteDVO;
  ado1 : TADOQuery;
  doktorUser,doktorSifre : string;
begin
    receteSorGon := EreceteSorguIstekDVO.Create;
    receteSorCvp := EreceteSorguCevapDVO.Create;

    //datalar.Login;
    doktorEReceteUser(doktor,doktorUser,doktorSifre);

    datalar.ReceteKayit.HTTPWebNode.UserName := doktorUser;
    datalar.ReceteKayit.HTTPWebNode.Password := doktorSifre;

    datalar.ReceteKayit.URL := datalar.receteURL; //'https://medeczane.sgk.gov.tr/eczanews/services/SaglikTesisiReceteIslemleri';

    receteSorGon.tesisKodu := datalar._kurumKod;
    receteSorGon.ereceteNo := ReceteId;
    receteSorGon.doktorTcKimlikNo := StrToInt64(doktorTC(doktor));


   try
    Application.ProcessMessages;
    receteSorCvp := (datalar.ReceteKayit as SaglikTesisiReceteIslemleri).ereceteSorgula(receteSorGon);
   except
    on E: sysUtils.Exception do
    begin
      Showmessageskin(E.Message,'','','info');
      msj := 'Servisten Sonuç Alýnamadý : ' + e.Message;
      exit;
    end;
   end;

    if receteSorCvp.sonucKodu = '0000'
    then begin
      msj := receteSorCvp.sonucKodu;
      recete := receteSorCvp.ereceteDVO;
    end
    else
       msj := receteSorCvp.sonucMesaji;

    Result := recete;



end;

function eReceteSil(ReceteId , doktor : string ; var msj : string) : EreceteSilCevapDVO;
var
  sql : string;
  ado : TADOQuery;
  receteSilGon : EreceteSilIstekDVO;
  receteSilCvp : EreceteSilCevapDVO;
  doktorUser,doktorSifre : string;
begin

    receteSilGon := EreceteSilIstekDVO.Create;
    receteSilCvp := EreceteSilCevapDVO.Create;
    //datalar.Login;
    doktorEReceteUser(doktor,doktorUser,doktorSifre);

    datalar.ReceteKayit.HTTPWebNode.UserName := doktorUser;
    datalar.ReceteKayit.HTTPWebNode.Password := doktorSifre;

    datalar.ReceteKayit.URL := datalar.receteURL; //'https://medeczane.sgk.gov.tr/eczanews/services/SaglikTesisiReceteIslemleri';

    receteSilGon.ereceteNo := ReceteId;
    receteSilGon.tesisKodu := datalar._kurumKod;
    receteSilGon.doktorTcKimlikNo := StrToInt64(doktorTC(doktor));

   try
    Application.ProcessMessages;
    receteSilCvp := (datalar.ReceteKayit as SaglikTesisiReceteIslemleri).ereceteSil(receteSilGon);
   except
    on E: sysUtils.Exception do
    begin
      Showmessageskin(E.Message,'','','info');
      msj := 'Servisten Sonuç Alýnamadý : ' + e.Message;
      exit;
    end;
   end;

   if receteSilCvp.sonucKodu = '0000'
   Then Begin
     ado := TADOQuery.Create(nil);
     try
       ado.Connection := datalar.ADOConnection2;

       sql := 'update Recete set eReceteNo =  ' + QuotedStr(receteSilCvp.sonucKodu) +
              ' where eReceteNo = ' + QuotedStr(receteId);

       datalar.QueryExec(ado,sql);
     finally
       ado.Free;
     end;
   End
   Else
    msj := receteSilCvp.sonucMesaji;

    result := receteSilCvp;




end;

function eReceteKaydet(dosyaNo , gelisNo , Id , doktor : string ; var msj : string ; Http1 : THTTPRIO) : EreceteGirisCevapDVO;
var
  recete : EreceteDVO;
  receteGon : EreceteGirisIstekDVO;
  receteCvp : EreceteGirisCevapDVO;
  sql : string;
  ado , ado1 : TADOQuery;
  doktorUser,doktorSifre : string;


  lSerialize : TXmlSerializer<EreceteGirisIstekDVO>;
  lOwner : TComponent;
  lDoc   : TxmlDocument;

begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := DATALAR.ADOConnection2;

    receteCvp := EreceteGirisCevapDVO.Create;
    receteGon := EreceteGirisIstekDVO.Create;
    try
      //datalar.Login;
      doktorEReceteUser(doktor,doktorUser,doktorSifre);
      Http1.HTTPWebNode.UserName := doktorUser;
      Http1.HTTPWebNode.Password := doktorSifre;
      if doktorSifre = ''
      Then Begin
         Http1.HTTPWebNode.Password := InputBoxM('Doktor Reçete Þifre','Þifreniz :','');
         if Http1.HTTPWebNode.Password = ''
         Then Begin
           ShowMessageSkin('Reçete Þifresi Boþ olamaz','','','info');
           exit;
         End;
      End;
      Http1.URL := datalar.receteURL; //'https://medeczane.sgk.gov.tr/eczanews/services/SaglikTesisiReceteIslemleri';
     // datalar.ReceteKayit.URL := 'http://saglikt.sgk.gov.tr/eczanews/services/SaglikTesisiReceteIslemleri';
      receteGon.tesisKodu := datalar._kurumKod;
      receteGon.doktorTcKimlikNo := StrToInt64(doktorTC(doktor));

      receteGon.ereceteDVO := eRecete(dosyaNo,gelisNo,Id,doktor);

    (*

    lOwner := TComponent.Create(nil);  // Required to make TXmlDocument work!
    try
     lDoc := TXmlDocument.Create(lOwner);  // will be freed with lOwner.Free
     lSerialize := TXmlSerializer<EreceteGirisIstekDVO>.Create;
    try

      lSerialize.Serialize(lDoc,receteGon);
      lDoc.SaveToFile('c:\test.xml');
    except on e : exception do
     begin
      ShowMessage(e.message_,'','','info');
      lSerialize.Free;
     end;
    end;
    finally
     lOwner.Free;
    end;
      *)

     try
      Application.ProcessMessages;
      receteCvp := (Http1 as SaglikTesisiReceteIslemleri).ereceteGiris(receteGon);
     except
      on E: sysUtils.Exception do
      begin
        Showmessageskin(E.Message,'','','info');
        msj := 'Servisten Sonuç Alýnamadý : ' + e.Message;
        exit;
      end;
     end;

     if receteCvp.sonucKodu = '0000'
     Then Begin
         sql := 'update Recete set eReceteNo = ' + QuotedStr(receteCvp.ereceteDVO.ereceteNo) +
                ' where id = ' + Id;

         datalar.QueryExec(ado,sql);

     End;

     Http1.HTTPWebNode.Password := '';

     result := receteCvp;
    finally
      receteGon.Free;
    end
  finally
    ado.Free;
  end;
end;


function eReceteKaydetEImza(dosyaNo , gelisNo , Id , doktor : string ; var msj : string ; Http1 : THTTPRIO) : ImzaliEreceteGirisCevapDVO;
var
  recete : EreceteDVO;
  receteGon : ImzaliEreceteGirisIstekDVO;
  receteCvp : ImzaliEreceteGirisCevapDVO;
  sql : string;
  ado , ado1 : TADOQuery;
  doktorUser,doktorSifre : string;
  memo : Tmemo;
  stream: TMemoryStream;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := DATALAR.ADOConnection2;

    receteCvp := ImzaliEreceteGirisCevapDVO.Create;
    receteGon := ImzaliEreceteGirisIstekDVO.Create;


    //datalar.Login;
    doktorEReceteUser(doktor,doktorUser,doktorSifre);


    Http1.HTTPWebNode.UserName := doktorUser;
    Http1.HTTPWebNode.Password := doktorSifre;

    if doktorSifre = ''
    Then Begin
       Http1.HTTPWebNode.Password := InputBoxM('Doktor Reçete Þifre','Þifreniz :','');
       if Http1.HTTPWebNode.Password = ''
       Then Begin
         ShowMessageSkin('Reçete Þifresi Boþ olamaz','','','info');
         exit;
       End;
    End;

    Http1.URL := datalar.receteURL; //'https://medeczane.sgk.gov.tr/eczanews/services/SaglikTesisiReceteIslemleri';
   // datalar.ReceteKayit.URL := 'http://saglikt.sgk.gov.tr/eczanews/services/SaglikTesisiReceteIslemleri';
    receteGon.tesisKodu := datalar._kurumKod;
    receteGon.doktorTcKimlikNo := StrToInt64(doktorTC(doktor));

     receteGon.imzaliErecete := FIleToByteArray('C:\x.xml');

  //  ereceteDVO := eRecete(dosyaNo,gelisNo,Id,doktor);

   try
    Application.ProcessMessages;
    receteCvp := (Http1 as SaglikTesisiReceteIslemleri).imzaliEreceteGiris(receteGon);
   except
    on E: sysUtils.Exception do
    begin
      Showmessageskin(E.Message,'','','info');
      msj := 'Servisten Sonuç Alýnamadý : ' + e.Message;
      exit;
    end;
   end;

   if receteCvp.sonucKodu = '0000'
   Then Begin
       sql := 'update Recete set eReceteNo = ' + QuotedStr(receteCvp.ereceteDVO.ereceteNo) +
              ' where id = ' + Id;

       datalar.QueryExec(ado,sql);

   End;

   Http1.HTTPWebNode.Password := '';

   result := receteCvp;
   receteGon.Free;
  finally
   ado.Free;
  end;

end;



function TaniKaydet(RTanilar : string) : Array_Of_TaniBilgisiDVO;
var
   Tani : raporislemleriWS.TaniBilgisiDVO;
   Tanilar : raporislemleriWS.Array_Of_TaniBilgisiDVO;// ArrayOfTaniBilgisiDVO;
   sql : string;
   dizi , i :integer;
   ado : TADOQuery;
begin

  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select datavalue from strtotable('+#39 + RTanilar + #39 + ',' + #39 + ',' + #39 + ')';
    datalar.QuerySelect(ado,sql);

    dizi :=  ado.RecordCount;
    SetLength(Tanilar,dizi);

    for i := 0 to ado.RecordCount - 1 do
    begin
         Tani := raporislemleriWS.TaniBilgisiDVO.Create;
         Tani.taniKodu := ado.fieldbyname('datavalue').AsString;
         Tanilar[i] := Tani;
         ado.Next;
    end;
    result := Tanilar;
    SetLength(Tanilar,dizi);
    ado.close;
  finally
    ado.Free;
  end;

end;


function TedaviTipiDegis(takipNo  : string ; tedavitipi : integer ; Http1 : THTTPRIO) : string;
var
  PrvGon : TakipOkuGirisDVO;
  PrvCvp : HastaKabulIslemleriWS.TakipDVO;
  sql : string;
  ado : TADOQuery;
begin

   PrvGon := TakipOkuGirisDVO.Create;
   PrvCvp := HastaKabulIslemleriWS.TakipDVO.Create;

   //datalar.Login;
 //  http1.HTTPWebNode.UserName := datalar._username;
 //  http1.HTTPWebNode.Password := datalar._sifre;

   http1.URL := datalar.hastaKabulURL; // 'https://medula.sgk.gov.tr/medula/hastane/hastaKabulIslemleriWS';

   PrvGon.saglikTesisKodu := datalar._KurumKod;
   PrvGon.takipNo := takipNo;
   PrvGon.yeniTedaviTipi := tedavitipi;

    try
      Application.ProcessMessages;
      PrvCvp := (HTTP1 as HastaKabulIslemleri).updateTedaviTipi(PrvGon);
      result := ifThen(PrvCvp.sonucKodu = '0000',PrvCvp.sonucKodu,PrvCvp.sonucMesaji);
    except
      on E: sysUtils.Exception do
      begin
        Showmessageskin(E.Message,'','','info');
        Result := PrvCvp.sonucMesaji;
      end;
    end;

end;

function TakipTipiDegis(takipNo : string; takiptipi : string ; Http1 : THTTPRIO) : string;
var
  PrvGon : TakipTipiDegistirGirisDVO;
  PrvCvp : TakipTipiDegistirCevapDVO;
  sql : string;
  ado : TADOQuery;
begin
   PrvGon := TakipTipiDegistirGirisDVO.Create;
   PrvCvp := TakipTipiDegistirCevapDVO.Create;

   //datalar.Login;
   http1.HTTPWebNode.UserName := datalar._username;
   http1.HTTPWebNode.Password := datalar._sifre;
   http1.URL := datalar.hastaKabulURL; //'https://medula.sgk.gov.tr/medula/hastane/hastaKabulIslemleriWS';

   PrvGon.saglikTesisKodu := datalar._KurumKod;
   PrvGon.takipNo := takipNo;
   PrvGon.yeniTakiTipi := takiptipi;

    try
      Application.ProcessMessages;
      PrvCvp := (HTTP1 as HastaKabulIslemleri).updateTakipTipi(PrvGon);
      result := ifThen(PrvCvp.sonucKodu = '0000',PrvCvp.sonucKodu,PrvCvp.sonucMesaji);
    except
      on E: sysUtils.Exception do
      begin
        Showmessageskin(E.Message,'','','info');
        Result := PrvCvp.sonucMesaji;
      end;
    end;

end;



function ProvizyonTipiDegis(takipNo , Ptipi : string ; Http1 : THTTPRIO) : string;
var
  PrvGon : ProvizyonDegistirGirisDVO;
  PrvCvp : ProvizyonDegistirCevapDVO;
  sql : string;
  ado : TADOQuery;
begin

   PrvGon := ProvizyonDegistirGirisDVO.Create;
   PrvCvp := ProvizyonDegistirCevapDVO.Create;

   //datalar.Login;
   http1.HTTPWebNode.UserName := datalar._username;
   http1.HTTPWebNode.Password := datalar._sifre;
   http1.URL := datalar.hastaKabulURL; //'https://medula.sgk.gov.tr/medula/hastane/hastaKabulIslemleriWS';

   PrvGon.saglikTesisKodu := datalar._KurumKod;
   PrvGon.takipNo := takipNo;
   PrvGon.yeniProvizyonTipi := Ptipi;

    try
      Application.ProcessMessages;
      PrvCvp := (HTTP1 as HastaKabulIslemleri).updateProvizyonTipi(PrvGon);
      result := ifThen(PrvCvp.sonucKodu = '0000',PrvCvp.sonucKodu,PrvCvp.sonucMesaji);
    except
      on E: sysUtils.Exception do
      begin
        Showmessageskin(E.Message,'','','info');
        Result := PrvCvp.sonucMesaji;
      end;
    end;
end;



procedure TakipSilYaz(takipno : string);
var
  sql : string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'update takipBilgisi set durum = 0 where takipno = ' + QuotedStr(takipno);
    datalar.QueryExec(ado,sql);
  finally
    ado.Free;
  end;
end;

procedure TakipbilgisiYaz(PrvGrs : ProvizyonGirisDVO ; PrvCvp : ProvizyonCevapDVO);
var
  sql : string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    (*
    sql := 'delete from takipBilgisi where takipno = ' + QuotedStr(PrvCvp.takipNo);
    datalar.QueryExec(ado,sql);
      *)

    sql := 'select * from takipBilgisi  where takipno = ' + QuotedStr(PrvCvp.takipNo);
    datalar.QuerySelect(ado,sql);
    if ado.Eof
    Then


    sql := 'insert into takipbilgisi (takipNo, Basvuruno, sigortaliTuru, bransKodu, devredilenKurum, provizyonTarihi, provizyonTipi, takipTipi, ' +
           ' yeniDoganBilgisi, yatisBitisTarihi,tedaviTuru, tedaviTipi, SonucKodu, ilktakip,durum,tc) ' +
           ' values ( ' +
           QuotedStr(PrvCvp.takipNo) + ',' +
           QuotedStr(PrvCvp.hastaBasvuruNo) + ',' +
           QuotedStr(PrvCvp.hastaBilgileri.sigortaliTuru) + ',' +
           QuotedStr(PrvGrs.bransKodu) + ',' +
           QuotedStr(PrvCvp.hastaBilgileri.devredilenKurum) + ',' +
           QuotedStr(PrvGrs.provizyonTarihi) + ',' +
           QuotedStr(PrvGrs.provizyonTipi) + ',' +
           QuotedStr(PrvGrs.takipTipi) + ',' +
           QuotedStr('') + ',' +
           QuotedStr(PrvGrs.yatisBitisTarihi) + ',' +
           QuotedStr(PrvGrs.tedaviTuru) + ',' +
           QuotedStr(PrvGrs.tedaviTipi) + ',' +
           QuotedStr('0000') + ',' +
           QuotedStr(PrvGrs.takipNo) + ',' +
           '1' + ',' +
           QuotedStr(PrvCvp.hastaBilgileri.tcKimlikNo) +
           ')'

     else

     sql := 'update takipBilgisi set durum = 1 where takipno = ' + QuotedStr(PrvCvp.takipNo);
    ado.SQL.Clear;
    datalar.QueryExec(ado,sql);
  finally
    ado.Free;
  end;
end;

function TakipformuKayit(Diyabet : TakipFormu ; var TakipFormNo : string ; Http1 : THTTPRIO) : string;
var
   Ts_Gon : TakipFormuKaydetGirisDVO;
   Ts_Cvp : TakipFormuKaydetCevapDVO;
   form : diabetTakipFormuKayitDVO;
   doktorbilgi : TakipFormuDoktorBilgisiDVO;
   doktorBilgileri : Array_Of_TakipFormuDoktorBilgisiDVO;
   diabetEgitimi : TakipFormuDiabetEgitimiDVO;
   hastalik : TakipFormuHastalikDVO;
   hastaliklar : Array_Of_TakipFormuHastalikDVO;
   aliskanlik : TakipFormuAliskanlikDVO;
   aliskanliklar : Array_Of_TakipFormuAliskanlikDVO;
   Ilac : TakipFormuKullanilanIlaclarDVO;
   Ilaclar : Array_Of_TakipFormuKullanilanIlaclarDVO;
   ado , ado1 : TADOQuery;
   sql , _hastalik_ , _aliskanlik_ : string;
   r : integer;
   _TXSint_ : TXSInteger;
begin
  ado := TADOQuery.Create(nil);
  try
     ado.Connection := datalar.ADOConnection2;
     sql := 'select * from Diyabettakip where dosyaNo = ' + QuotedStr(Diyabet.DosyaNo) + ' and gelisNo = ' + Diyabet.GelisNo + ' and gelisdetayNo = ' + Diyabet.DetayNo;
     datalar.QuerySelect(ado,sql);

     Ts_Gon := TakipFormuKaydetGirisDVO.Create;
     //Ts_Cvp := takipFormuKaydetResponse.Create;
     form := DiabetTakipFormuKayitDVO.Create;
     doktorbilgi := TakipFormuDoktorBilgisiDVO.Create;
     diabetEgitimi := TakipFormuDiabetEgitimiDVO.Create;


     //datalar.Login;
     //http1.HTTPWebNode.UserName := datalar._username;
     //http1.HTTPWebNode.Password := datalar._sifre;

     http1.URL := datalar.DiabetFormURL; //'https://medula.sgk.gov.tr/medula/hastane/takipFormuIslemleriWS';

     Ts_Gon.saglikTesisKodu := datalar._kurumKod;


     form.tcKimlikNo := Diyabet.Tckimilk;
     form.ad := TrtoEng(Diyabet.Ad);
     form.soyad := TrtoEng(Diyabet.Soyad);
     form.cepTel := Diyabet.CepTel;
     form.cinsiyet := Diyabet.Cinsiyet;

   //  _TXSint_ := TXSInteger.Create;
  //   _TXSint_.AsInteger := datalar._kurumKod;
     form.saglikTesisKodu := datalar._kurumKod;

   //  form.ikametTuru := TXSInteger.Create;
     form.ikametTuru := ado.fieldbyname('ikametturu').AsInteger;
     form.vizitTarihi := Diyabet.vizitTarihi;

     doktorbilgi.drTescilNo := Diyabet.doktor[0].drTescilNo;
     doktorbilgi.drBransKodu := Diyabet.doktor[0].brans;
  //   doktorbilgi.dmEgitimiAlmisMi := TXSString.Create;
     doktorbilgi.dmEgitimiAlmisMi := Diyabet.doktor[0].egitimVarmi;

     SetLength(doktorBilgileri,1);
     doktorBilgileri[0] := doktorbilgi;

     form.doktorBilgileri := doktorBilgileri;

     form.taniKodu := ado.fieldbyname('tani').AsString;
     form.taniTarihi := ado.fieldbyname('tanitarihi').AsString;

     diabetEgitimi.dmEgitimiAlmisMi := ado.fieldbyname('dmEgitimiAlmisMi').AsString;
     diabetEgitimi.bireyselEgitimSayisi := ado.fieldbyname('bireyselEgitimSayisi').AsInteger;
     diabetEgitimi.grupEgitimiSayisi :=    ado.fieldbyname('grupEgitimiSayisi').AsInteger;

     form.diabetEgitimi := diabetEgitimi;

     form.tibbiBeslenmeTedavisi := ado.fieldbyname('tibbiBeslenmeTedavisi').AsInteger;
     form.egzersiz := ado.fieldbyname('egzersiz').AsInteger;

     _hastalik_ := ado.fieldbyname('hastalikkodu').AsString;

     ado1 := TADOQuery.Create(nil);
     try
       ado1.Connection := datalar.ADOConnection2;
       sql := 'select datavalue from strtotable(' + QuotedStr(_hastalik_) + ',' + QuotedStr(',') + ')';
       datalar.QuerySelect(ado1,sql);

       SetLength(hastaliklar,ado1.RecordCount);
       for r := 0 to ado1.RecordCount - 1 do
       begin
          hastalik := TakipFormuHastalikDVO.Create;
          hastalik.hastalikKodu := ado1.Fields[0].AsInteger;
          hastaliklar[r] := hastalik;
          ado1.Next;
       end;
     finally
       ado1.Free;
     end;
     form.hastaliklar := hastaliklar;

     form.basvuruNedeni := ado.fieldbyname('basvuruNedeni').AsInteger;


     _aliskanlik_ := ado.fieldbyname('aliskanlik').AsString;

     ado1 := TADOQuery.Create(nil);
     try
       ado1.Connection := datalar.ADOConnection2;
       sql := 'select datavalue from strtotable(' + QuotedStr(_aliskanlik_) + ',' + QuotedStr(',') + ')';
       datalar.QuerySelect(ado1,sql);

       SetLength(aliskanliklar,ado1.RecordCount);
       for r := 0 to ado1.RecordCount - 1 do
       begin
          aliskanlik := TakipFormuAliskanlikDVO.Create;
          aliskanlik.aliskanlik := ado1.Fields[0].AsInteger;
          aliskanliklar[r] := aliskanlik;
          ado1.Next;
       end;
     finally
       ado1.Free;
     end;
     form.aliskanliklar := aliskanliklar;

     form.glukoMetre := ado.fieldbyname('glukoMetre').AsString;
     form.kanSekeriTakipSayisi := ado.fieldbyname('kanSekeriTakipSayisi').AsInteger;
     form.sistolikKanBasinci := ado.fieldbyname('sistolikKanBasinci').AsInteger;
     form.diyastolikKanBasinci := ado.fieldbyname('diyastolikKanBasinci').AsInteger;

     form.boy := ado.fieldbyname('boy').AsFloat;
     form.kilo := ado.fieldbyname('kilo').AsFloat;
     form.vki := ado.fieldbyname('vki').AsFloat;

     form.apg := ado.fieldbyname('apg').AsFloat;
     form.tpg := ado.fieldbyname('tpg').AsFloat;
     form.hbA1c := ado.fieldbyname('hbA1c').AsFloat;
     form.kreatinin := ado.fieldbyname('kreatinin').AsFloat;
     form.trigliserid := ado.fieldbyname('trigliserid').AsFloat;
     form.ldlKol := ado.fieldbyname('ldlKol').AsFloat;
     form.hdlKol := ado.fieldbyname('hdlKol').AsFloat;
     form.alt := ado.fieldbyname('alt').AsFloat;

     form.antiGAD := ado.fieldbyname('antiGAD').AsString;
     form.ekg := ado.fieldbyname('ekg').AsInteger;
     form.mikroalbuminuri := ado.fieldbyname('mikroalbuminuri').AsString;
     form.gozMuayenesi := ado.fieldbyname('gozMuayenesi').AsInteger;
     form.periferikSensoryal := ado.fieldbyname('periferikSensoryal').AsString;
     form.koronerArterH := ado.fieldbyname('koronerArterH').AsString;
     form.serebrovaskulerH := ado.fieldbyname('serebrovaskulerH').AsString;
     form.ayakMuayenesi := ado.fieldbyname('ayakMuayenesi').AsString;
     form.akutKomplikasyon := ado.fieldbyname('akutKomplikasyon').AsInteger;

     form.insulinPompasi := ado.fieldbyname('InsulinPompasi').AsString;
     form.insulinPompasiVerTarihi := ado.fieldbyname('insulinPompasiVerTarihi').AsString;
     form.insulinPompasiDegTarihi := ado.fieldbyname('insulinPompasiDegTarihi').AsString;

     ado1 := TADOQuery.Create(nil);
     try
       ado1.Connection := datalar.ADOConnection2;
       sql := 'select * from Diyabettakip_Ilaclar where dosyaNo = ' + QuotedStr(Diyabet.DosyaNo) + ' and gelisNo = ' + Diyabet.GelisNo + ' and gelisdetayNo = ' + Diyabet.DetayNo;
       datalar.QuerySelect(ado1,sql);

       SetLength(Ilaclar,ado1.RecordCount);
       for r := 0 to ado1.RecordCount - 1 do
       begin
          Ilac := TakipFormuKullanilanIlaclarDVO.Create;
          Ilac.barkod := ado1.Fieldbyname('barkod').AsString;
          Ilac.gunlukDoz := ado1.Fieldbyname('doz').AsString;
          Ilaclar[r] := Ilac;
          ado1.Next;
       end;
     finally
       ado1.Free;
     end;
  finally
    ado.free;
  end;

  form.kullanilanIlaclar := Ilaclar;


  Ts_Gon.diabetTakipFormu := form;



  try
    Ts_Cvp := (http1 as TakipFormuIslemleri).takipFormuKaydet(Ts_Gon);
    result := Ts_Cvp.sonucKodu + '-' + Ts_Cvp.sonucMesaji;
    if Ts_Cvp.sonucKodu = '0000' then TakipFormNo := Ts_Cvp.diabetTakipFormu.takipFormuNo;
  except on e : sysUtils.Exception do
   begin
      ShowMessageSkin(e.Message,'','','info');
      exit;
   end;
  end;

  result := Ts_Cvp.sonucKodu + '-' + Ts_Cvp.sonucMesaji;
end;


function TakipformuSil(formNo : string ; Http1 : THTTPRIO) : string;
var
  Ts_Gon : TakipFormuSilGirisDVO;
  Ts_Cvp : TakipFormuSilCevapDVO;
begin

     Ts_Gon := TakipFormuSilGirisDVO.Create;
     Ts_Cvp := TakipFormuSilCevapDVO.Create;

     //datalar.Login;
//     http1.HTTPWebNode.UserName := datalar._username;
//     http1.HTTPWebNode.Password := datalar._sifre;

     http1.URL := datalar.DiabetFormURL; //'https://medula.sgk.gov.tr/medula/hastane/takipFormuIslemleriWS';

     Ts_Gon.saglikTesisKodu := DATALAR._kurumKod;
     Ts_Gon.takipFormuNo := formNo;


   try
     Ts_Cvp := (http1 as TakipFormuIslemleri).takipFormuSil(Ts_Gon);
     result := Ts_Cvp.sonucKodu + '-' + Ts_Cvp.sonucMesaji;
   except on e : sysUtils.Exception do
    begin
       ShowMessageSkin(e.Message,'','','info');
       result := Ts_Cvp.sonucMesaji;
    end;
   end;
end;


function TakipformuOku(TcNo : string ;  var _form_ : TakipFormlari ; Http1 : THTTPRIO) : string;
var
  Ts_Gon : TakipFormuOkuGirisDVO;
  Ts_Cvp : TakipFormuOkuCevapDVO;
  r : integer;
begin

     Ts_Gon := TakipFormuOkuGirisDVO.Create;
     Ts_Cvp := TakipFormuOkuCevapDVO.Create;

     //datalar.Login;
  //   http1.HTTPWebNode.UserName := datalar._username;
  //   http1.HTTPWebNode.Password := datalar._sifre;

     http1.URL := datalar.DiabetFormURL; //'https://medula.sgk.gov.tr/medula/hastane/takipFormuIslemleriWS';

     Ts_Gon.saglikTesisKodu := DATALAR._kurumKod;
     Ts_Gon.tcKimlikNo := TcNo;


   try
     Ts_Cvp := (http1 as TakipFormuIslemleri).takipFormuOku(Ts_Gon);
     result := Ts_Cvp.sonucKodu + '-' + Ts_Cvp.sonucMesaji;

     SetLength(_form_,length(Ts_Cvp.diabetTakipFormlari));
     for r := 0 to length(Ts_Cvp.diabetTakipFormlari) - 1 do
     begin
         _form_[r].formNo := Ts_Cvp.diabetTakipFormlari[r].takipFormuNo;
         _form_[r].Protokol := Ts_Cvp.diabetTakipFormlari[r].protokolNo;
         _form_[r].TaniTarihi := Ts_Cvp.diabetTakipFormlari[r].taniTarihi;
         _form_[r].Tani := Ts_Cvp.diabetTakipFormlari[r].taniKodu;
         _form_[r].tesis := inttostr(Ts_Cvp.diabetTakipFormlari[r].saglikTesisKodu);
     end;

   except on e : sysUtils.Exception do
    begin
       ShowMessageSkin(e.Message,'','','info');
       result := Ts_Cvp.sonucMesaji;
    end;
   end;
end;


function MedulaListeGetir(var Cvp : EtkinMaddeOkuCevapDVO ; var Cvp1 : TeshisOkuCevapDVO ; tip : string ; http1 : THTTPRIO) : string;
var
   Ts_Gon : EtkinMaddeOkuGirisDVO;
   Ts_Cvp : EtkinMaddeOkuCevapDVO;
   Ts_Gon1 : TeshisOkuGirisDVO;
   Ts_Cvp1 : TeshisOkuCevapDVO;

begin

     Ts_Gon := EtkinMaddeOkuGirisDVO.Create;
     Ts_Gon1 := TeshisOkuGirisDVO.Create;
     Ts_Cvp := EtkinMaddeOkuCevapDVO.Create;
     Ts_Cvp1 := TeshisOkuCevapDVO.Create;

     //datalar.Login;



     http1.HTTPWebNode.UserName := datalar._username;
     http1.HTTPWebNode.Password := datalar._sifre;

     try
      Application.ProcessMessages;

      if tip = 'EtkinMadde'
      Then Begin
        Ts_Gon.saglikTesisKodu := DATALAR._kurumKod;
        Ts_Cvp := (http1 as YardimciIslemler).etkinMaddeleriOku(Ts_Gon);
        Cvp := Ts_Cvp;
        result := Ts_Cvp.sonucKodu;
      End;

      if tip = 'Teshis'
      Then Begin
        Ts_Gon1.saglikTesisKodu := DATALAR._kurumKod;
        Ts_Cvp1 := (http1 as YardimciIslemler).teshisleriOku(Ts_Gon1);
        Cvp1 := Ts_Cvp1;
        result := Ts_Cvp1.sonucKodu;
      End;

     except
        on E: sysUtils.Exception do
        begin
          Showmessageskin(E.Message,'','','info');
          if tip = 'EtkinMadde'
          Then result := Ts_Cvp.sonucMesaji
          Else result := Ts_Cvp1.sonucMesaji;
          exit;
        end;
     end;

    Ts_Gon.Free;
    Ts_Gon1.Free;




end;


function EtkinmaddeSUTKuraliGetir(etkinmaddeKodu , raporTarihi : string ; var EMaddeCvp : Array_Of_EtkinMaddeSUTKuraliDVO ; http1 : THTTPRIO) : string;
var
   EM_Gon : YardimciIslemlerWS.EtkinMaddeSUTGirisDVO;
   Em_Cvp : EtkinMaddeSUTCevapDVO;
begin
      EM_Gon := YardimciIslemlerWS.EtkinMaddeSUTGirisDVO.Create;
      Em_Cvp := EtkinMaddeSUTCevapDVO.Create;

      //datalar.Login;

      EM_Gon.etkinMaddeKodu := etkinmaddeKodu;
      EM_Gon.raporTarihi := raporTarihi;

      EM_Gon.saglikTesisKodu := DATALAR._kurumKod;

   //   http1.HTTPWebNode.UserName := datalar._username;
   //   http1.HTTPWebNode.Password := datalar._sifre;
      http1.URL := datalar.yardimciIslemURL; //'https://medula.sgk.gov.tr/medula/hastane/yardimciIslemlerWS';

     try
       Application.ProcessMessages;
       Em_Cvp := (http1 as YardimciIslemler).etkinMaddeSutKuraliGetir(EM_Gon);
       EMaddeCvp := Em_Cvp.sutKurallari;
     except
        on E: sysUtils.Exception do
        begin
          Showmessageskin(E.Message,'','','info');
          exit;
        end;
     end;

     if Em_Cvp.sonucKodu = '0000'
     then
      result := Em_Cvp.sonucKodu
     Else
      result := Em_Cvp.sonucMesaji;

     EM_Gon.Free;
  //   Em_Cvp.Free;

end;



function OrneklenmisTakipler(evrakId : integer ; var sonuc : string; http1 : THTTPRIO) : OrneklenenTakipler;
var
   OrnTkpOku : OrneklenmisGirisDVO;
   OrnTkpCvp : OrneklenmisCevapDVO;
   x , r : integer;
   tk : kadirType.OrneklenenTakipler;
begin
    OrnTkpOku := OrneklenmisGirisDVO.Create;
    OrnTkpCvp := OrneklenmisCevapDVO.Create;
    //datalar.Login;
    datalar.yardimciIslemMethod := 'OrneklenenTakipler';

    //datalar.YardimciIslem.HTTPWebNode.UserName := datalar._username;
    //datalar.YardimciIslem.HTTPWebNode.Password := datalar._sifre;

    datalar.YardimciIslem.URL := datalar.yardimciIslemURL; //'https://medula.sgk.gov.tr/medula/hastane/yardimciIslemlerWS';

    OrnTkpOku.sagliktesisKodu := datalar._kurumKod;
    OrnTkpOku.evrakId := evrakId;

    try
     Application.ProcessMessages;
     OrnTkpCvp := (datalar.YardimciIslem as YardimciIslemler).getOrneklenmisTakipler(OrnTkpOku);
    except
        on E: sysUtils.Exception do
        begin
          Showmessageskin(E.Message,'','','info');
          exit;
        end;
    end;

  (*
  if OrnTkpCvp.sonucKodu = '0000'
  Then begin
        if Datalar.ClientDataSet1.RecordCount > 0
        Then begin
             r := Datalar.ClientDataSet1.RecordCount;
             SetLength(tk,r);
             Datalar.ClientDataSet1.First;
             while not Datalar.ClientDataSet1.Eof do
             begin
                tk[x].Takip := Datalar.ClientDataSet1.FieldByName('string').AsString;
                Datalar.ClientDataSet1.Next;
             end;
             Result := tk;

             sonuc := OrnTkpCvp.sonucMesaji;
        end;

  end
  else  sonuc := OrnTkpCvp.sonucMesaji;
    *)


   if OrnTkpCvp.sonucKodu = '0000'
   Then Begin
       r := length(OrnTkpCvp.takipler);
       SetLength(tk,r);
       for x := 0 to length(OrnTkpCvp.takipler)-1 do
       begin
          tk[x].Takip := OrnTkpCvp.takipler[x];
       end;
       Result := tk;

       sonuc := OrnTkpCvp.sonucMesaji;
   end
   Else
      sonuc := OrnTkpCvp.sonucMesaji;










end;

function Kesinti(evrakId : integer ; var sonuc : string; http1 : THTTPRIO) : KesintiTakipler;
var
   OrnTkpOku :  EvrakKesintiGirisDVO;
   OrnTkpCvp : EvrakKesintiCevapDVO;
   x , r : integer;
   tk : kadirTYpe.KesintiTakipler;
begin
    OrnTkpOku := EvrakKesintiGirisDVO.Create;
    OrnTkpCvp := EvrakKesintiCevapDVO.Create;
    //datalar.Login;
    http1.HTTPWebNode.UserName := datalar._username;
    http1.HTTPWebNode.Password := datalar._sifre;
    http1.URL := datalar.yardimciIslemURL; //'https://medula.sgk.gov.tr/medula/hastane/yardimciIslemlerWS';

    OrnTkpOku.saglikTesisKodu := datalar._kurumKod;
    OrnTkpOku.evrakRefNo := evrakId;

    try
     Application.ProcessMessages;
     OrnTkpCvp := (http1 as YardimciIslemler).kesintiYapilmisIslemler(OrnTkpOku);
    except
        on E : sysUtils.Exception do
        begin
          Showmessageskin(E.Message,'','','info');
          exit;
        end;

    end;

   if OrnTkpCvp.sonucKodu = '0000'
   Then Begin

       r := length(OrnTkpCvp.evrakKesintiIslem);


       SetLength(tk,r);


       for x := 0 to length(OrnTkpCvp.evrakKesintiIslem)-1 do
       begin
          tk[x].Takip := OrnTkpCvp.evrakKesintiIslem[x].takipNo;
          tk[x].islemSiraNo := OrnTkpCvp.evrakKesintiIslem[x].islemSiraNo;
          tk[x].tutar := OrnTkpCvp.evrakKesintiIslem[x].tutar;
          tk[x].kesintiTutari := OrnTkpCvp.evrakKesintiIslem[x].kesintiTutari;
         // tk[x].Tarih := OrnTkpCvp.evrakKesintiIslem[x].islemTarihi;
          tk[x].sutKodu := OrnTkpCvp.evrakKesintiIslem[x].sutKodu;
          tk[x].islemAdi := OrnTkpCvp.evrakKesintiIslem[x].islemAdi;
          tk[x].aciklama := OrnTkpCvp.evrakKesintiIslem[x].aciklama;
          tk[x].grupAdi := OrnTkpCvp.evrakKesintiIslem[x].grupAdi;
       end;
       Result := tk;

       sonuc := OrnTkpCvp.sonucMesaji;
   end
   Else
      sonuc := OrnTkpCvp.sonucMesaji;



end;

function KatilimPayiTakipler(evrakId : integer ; var sonuc : string; http1 : THTTPRIO) : KatilimPaylari;
var
   OrnTkpOku :  KatilimPayiGirisDVO;
   OrnTkpCvp : KatilimPayiCevapDVO;
   x , r : integer;
   tk : kadirType.KatilimPaylari;
begin
    OrnTkpOku := KatilimPayiGirisDVO.Create;
    OrnTkpCvp := KatilimPayiCevapDVO.Create;
    //datalar.Login;
    http1.HTTPWebNode.UserName := datalar._username;
    http1.HTTPWebNode.Password := datalar._sifre;
    http1.URL := datalar.yardimciIslemURL; //'https://medula.sgk.gov.tr/medula/hastane/yardimciIslemlerWS';

    OrnTkpOku.saglikTesisKodu := datalar._kurumKod;
    OrnTkpOku.evrakRefNo := evrakId;

    try
     Application.ProcessMessages;
     OrnTkpCvp := (http1 as YardimciIslemler).katilimPayiUcreti(OrnTkpOku);
    except
        on E: sysUtils.Exception do
        begin
          Showmessageskin(E.Message,'','','info');
          exit;
        end;

    end;

   if OrnTkpCvp.sonucKodu = '0000'
   Then Begin

       r := length(OrnTkpCvp.katilimPayi);


       SetLength(tk,r);


       for x := 0 to length(OrnTkpCvp.katilimPayi)-1 do
       begin
          tk[x].Takip := OrnTkpCvp.katilimPayi[x].takipNo;
          tk[x].muayeneKatilimTutari := OrnTkpCvp.katilimPayi[x].muayeneKatilimTutari;
          tk[x].malzemeKatilimTutari := OrnTkpCvp.katilimPayi[x].malzemeKatilimTutari;
          tk[x].tupBebekKatilimTutari := OrnTkpCvp.katilimPayi[x].tupBebekKatilimTutari;

       end;
       Result := tk;

       sonuc := OrnTkpCvp.sonucMesaji;
   end
   Else
      sonuc := OrnTkpCvp.sonucMesaji;



end;


function RaporOkuTcKimlikTenICD(kimlikNo : string; tani : array of string ; http1 : THTTPRIO) : string;
var
  RprOku : RaporOkuTCKimlikNodanDVO;
  RprCvp : RaporCevapTCKimlikNodanDVO;
  taniokunan : Array_Of_TaniBilgisiDVO;
  taniBilgisi : Array_Of_TaniBilgisiDVO;
  x,xx , y , z : integer;
  sonuc : string;
begin
  RprOku := RaporOkuTCKimlikNodanDVO.Create;
  RprCvp := RaporCevapTCKimlikNodanDVO.Create;
  //datalar.Login;
//  http1.HTTPWebNode.UserName := datalar._username;
//  http1.HTTPWebNode.Password := datalar._sifre;
  http1.URL := 'https://medula.sgk.gov.tr/medula/hastane/raporIslemleriWS';

  RprOku.tckimlikNo := kimlikNo;
  RprOku.raporTuru := '10';
  RprOku.saglikTesisKodu := datalar._kurumKod;

  try
     Application.ProcessMessages;
     RprCvp := (http1 as RaporIslemleri).raporBilgisiBulTCKimlikNodan(RprOku);
   except
        on E: sysUtils.Exception do
        begin
          Showmessageskin(E.Message,'','','info');
          exit;
        end;

   end;


   if RprCvp.sonucKodu = 0
   Then Begin
     xx := 0;
     y := 0;
     z := 0;
     x := 0;
     sonuc := '01';
     for z := 0 to length(RprCvp.raporlar) - 1 do
     begin
      if (RprCvp.raporlar[z].raporTuru = '10') and (strtodate(RprCvp.raporlar[z].ilacRapor.raporDVO.bitisTarihi) >= date())
      Then Begin

           SetLength(taniokunan,Length(RprCvp.raporlar[z].ilacRapor.raporDVO.tanilar));
           if Length(RprCvp.raporlar[z].ilacRapor.raporDVO.tanilar) > 0
           Then
               for xx := 0 to Length(RprCvp.raporlar[z].ilacRapor.raporDVO.tanilar) - 1 do
               begin
               //   taniokunan[xx] := RprCvp.raporlar[z].ilacRapor.raporDVO.tanilar[xx].taniKodu;
               end;

           SetLength(taniokunan,Length(RprCvp.raporlar[z].ilacRapor.raporDVO.ilacTeshisler) + Length(RprCvp.raporlar[z].ilacRapor.raporDVO.tanilar));
           if Length(RprCvp.raporlar[z].ilacRapor.raporDVO.ilacTeshisler) > 0
           Then
           for y := 0 to Length(RprCvp.raporlar[z].ilacRapor.raporDVO.ilacTeshisler) - 1 do
           begin
           //   taniokunan[xx+y] := RprCvp.raporlar[z].ilacRapor.raporDVO.ilacTeshisler[y].;
           end;

           x:=0;
           for x := 0 to length(tani) - 1 do
           begin
               for y := 0 to length(taniokunan) - 1 do
               begin
                  (*
                   if tani[x] = taniokunan[y]
                   then begin
                     sonuc := '00 - Rapor No:' + RprCvp.raporlar[z].ilacRapor.raporDVO.raporBilgisi.no + ' - ' +
                                     'Rapor Tarihi : ' + RprCvp.raporlar[z].ilacRapor.raporDVO.raporBilgisi.tarih +
                                     'Tesis No : ' + inttostr(RprCvp.raporlar[z].ilacRapor.raporDVO.raporBilgisi.raporTesisKodu);
                     break;
                   end; *)
               end;
               break;
           end;
           break;


      end;
     end;
     result := sonuc;

   End;



end;



function RaporOkuTcKimlikTen(kimlikNo , tur  : string ; var RaporCvp : RaporIslemleriWS.RaporCevapTCKimlikNodanDVO; http1 : THTTPRIO) : string;
var
  RprOku : RaporIslemleriWS.RaporOkuTCKimlikNodanDVO;
  RprCvp : RaporIslemleriWS.RaporCevapTCKimlikNodanDVO;
begin
  RprOku := RaporOkuTCKimlikNodanDVO.Create;
  RprCvp := RaporCevapTCKimlikNodanDVO.Create;
  //datalar.Login;
  http1.HTTPWebNode.UserName := datalar._username;
  http1.HTTPWebNode.Password := datalar._sifre;
  http1.URL := 'https://medula.sgk.gov.tr/medula/hastane/raporIslemleriWS';

  RprOku.tckimlikNo := kimlikNo;
  RprOku.raporTuru := tur;
  RprOku.saglikTesisKodu := datalar._kurumKod;

  http1.Port := 'RaporIslemleri';
  http1.Service := 'RaporIslemleriService';
  try
     Application.ProcessMessages;
     RprCvp := (http1 as RaporIslemleri).raporBilgisiBulTCKimlikNodan(RprOku);
   except
        on E: sysUtils.Exception do
        begin
          Showmessageskin(E.Message,'','','info');
          exit;
        end;

   end;


   if RprCvp.sonucKodu = 0
   Then Begin
       RaporCvp := RprCvp;
       result := inttostr(RaporCvp.sonucKodu);
   End
   Else
     result := RaporCvp.sonucAciklamasi;


end;

function RaporOkuRaporTakip(RaporTakipNo , tur  : string ; var RaporCvp : RaporIslemleriWS.RaporCevapDVO; http1 : THTTPRIO) : string;
var
  RprOku : RaporIslemleriWS.RaporOkuRaporTakipNodanDVO;
  RprCvp : RaporIslemleriWS.RaporCevapDVO;
begin
  RprOku := RaporOkuRaporTakipNodanDVO.Create;
  RprCvp := RaporCevapDVO.Create;
  //datalar.Login;
  http1.HTTPWebNode.UserName := datalar._username;
  http1.HTTPWebNode.Password := datalar._sifre;
  http1.URL := 'https://medula.sgk.gov.tr/medula/hastane/raporIslemleriWS';

  RprOku.raporTakipNo := RaporTakipNo;
 // RprOku.raporSiraNo := '1';
  RprOku.saglikTesisKodu := datalar._kurumKod;

  http1.Port := 'RaporIslemleri';
  http1.Service := 'RaporIslemleriService';
  try
     Application.ProcessMessages;
     RprCvp := (http1 as RaporIslemleri).raporBilgisiBulRaporTakipNodan(RprOku);
   except
        on E: sysUtils.Exception do
        begin
          Showmessageskin(E.Message,'','','info');
          exit;
        end;

   end;


   if RprCvp.sonucKodu = 0
   Then Begin
       RaporCvp := RprCvp;
       result := inttostr(RaporCvp.sonucKodu);
   End
   Else
     result := RaporCvp.sonucAciklamasi;


end;



function FaturaOku(teslimNo : string ; var FaturaCvp : FaturaOkuCevapDVO ; http1 : THTTPRIO) : string;
var
  sql : string;
  FtrOku : FaturaOkuGirisDVO;
  FtrCvp : FaturaOkuCevapDVO;
begin
   FtrOku := FaturaOkuGirisDVO.Create;
   FtrCvp := FaturaOkuCevapDVO.Create;

   //datalar.Login;
 //  http1.HTTPWebNode.UserName := datalar._username;
 //  http1.HTTPWebNode.Password := datalar._sifre;
   http1.URL := datalar.faturaKayitURL; //'https://medula.sgk.gov.tr/medula/hastane/faturaKayitIslemleriWS';

   FtrOku.faturaTeslimNo := teslimNo;
   FtrOku.saglikTesisKodu := datalar._kurumKod;
   FtrOku.faturaTarihi:= FaturaCvp.faturaTarihi;

   try
     Application.ProcessMessages;
     FtrCvp := (http1 as FaturaKayitIslemleri).faturaOku(FtrOku);
   except
        on E: sysUtils.Exception do
        begin
          Showmessageskin(E.Message,'','','info');
          exit;
        end;

   end;


   if FtrCvp.sonucKodu = '0000'
   Then Begin
       FaturaCvp := FtrCvp;
       result := FaturaCvp.sonucKodu;
   End
   Else
     result := FtrCvp.sonucMesaji;




end;



function Kons(_takip:string) : Array_Of_KonsultasyonBilgisiDVO;
var
  sql : string;
  i ,j, dizi : integer;
  KonsElemanlar : KonsultasyonBilgisiDVO;
  FKons : Array_Of_KonsultasyonBilgisiDVO;
begin
      datalar.ADO_SQL2.Close;
      datalar.ADO_SQL2.SQL.Clear;

      sql := 'exec sp_MedulaDataset_KL_M3 ' + #39 + _takip + #39 + ',' + #39 + 'konsültasyon' + #39;
      datalar.QuerySelect(datalar.ADO_SQL2,sql);
      if DATALAR.ADO_SQL2.Eof then exit;
      dizi :=  datalar.ADO_SQL2.RecordCount;
      SetLength(FKons,dizi);
        KonsElemanlar := KonsultasyonBilgisiDVO.Create;

      for i := 0 to dizi - 1 do
      begin
        KonsElemanlar := KonsultasyonBilgisiDVO.Create;
        KonsElemanlar.sutKodu := DATALAR.ADO_SQL2.fieldbyname('butKodu').AsString;
        KonsElemanlar.bransKodu := DATALAR.ADO_SQL2.fieldbyname('bransKodu').AsString;
        KonsElemanlar.drTescilNo := DATALAR.ADO_SQL2.fieldbyname('doktorTescilNo').AsString;
        KonsElemanlar.islemTarihi := FormattedTarih(DATALAR.ADO_SQL2.fieldbyname('islemTarihi').AsString);
        KonsElemanlar.hizmetSunucuRefNo := DATALAR.ADO_SQL2.fieldbyname('hizmetSunucuRefNo').AsString;
        FKons[i] := KonsElemanlar;
        Datalar.ADO_SQL2.Next;
      end;
      result := FKons;
      SetLength(FKons,0);

     // KonsElemanlar.Free;
end;



function OkunanHizmetleriSistemleSorgula(msg : integer) : string;
var
   ado : TADOQuery;
   islemSiraNo , siraNo , sql : string;
Begin
  try
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;


      datalar.RxTahlilIslem.First;
      while not datalar.RxTahlilIslem.Eof do
      Begin
          islemSiraNo := datalar.RxTahlilIslem.fieldbyname('islemSiraNo').AsString;
          siraNo := datalar.RxTahlilIslem.fieldbyname('HizmetSunucuRefNo').AsString;

         if siraNo[1] = 'T'
         Then Begin
          sql := 'update Anamnez_ICD set islemSiraNo = ' + QuotedStr(islemSiraNo) +
                 ' where ID = ' + copy(siraNo,2,15);
                 datalar.QueryExec(ado,sql);
         End
         Else Begin
          sql := 'update hareketler set islemSiraNo = ' + QuotedStr(islemSiraNo) +
                 ' where SIRANO = ' + siraNo;
          datalar.QueryExec(ado,sql);
         End;


          datalar.RxTahlilIslem.Next;
      End;

      datalar.RxYatakBilgisi.First;
      while not datalar.RxYatakBilgisi.Eof do
      Begin
          islemSiraNO := datalar.RxYatakBilgisi.fieldbyname('islemSiraNo').AsString;
          siraNO := datalar.RxYatakBilgisi.fieldbyname('HizmetSunucuRefNo').AsString;
          sql := 'update hareketler set islemSiraNo = ' + QuotedStr(islemSiraNo) +
                 ' where SIRANO = ' + siraNo;
          datalar.QueryExec(ado,sql);
          datalar.RxYatakBilgisi.Next;
      End;

      datalar.RxDigerIslem.First;
      while not datalar.RxDigerIslem.Eof do
      Begin
          islemSiraNO := datalar.RxDigerIslem.fieldbyname('islemSiraNo').AsString;
          siraNO := datalar.RxDigerIslem.fieldbyname('HizmetSunucuRefNo').AsString;


          if siraNo[1] = 'S'
          Then Begin
              sql := 'update gelisDetay set islemSiraNo = ' + QuotedStr(islemSiraNO) +
                     ' where siraNo = ' + copy(siraNO,2,15);
              datalar.QueryExec(ado,sql);
          End
          Else
          Begin
              sql := 'update hareketler set islemSiraNo = ' + QuotedStr(islemSiraNo) +
                     ' where SIRANO = ' + siraNO;
              datalar.QueryExec(ado,sql);
          End;
          datalar.RxDigerIslem.Next;
      End;

      datalar.RxMuayeneBilgisi.First;
      while not datalar.RxMuayeneBilgisi.Eof do
      Begin
          islemSiraNO := datalar.RxMuayeneBilgisi.fieldbyname('islemSiraNo').AsString;
          siraNO := datalar.RxMuayeneBilgisi.fieldbyname('HizmetSunucuRefNo').AsString;
          sql := 'update hareketler set islemSiraNo = ' + QuotedStr(islemSiraNo) +
                 ' where SIRANO = ' + siraNO;
          datalar.QueryExec(ado,sql);
          datalar.RxMuayeneBilgisi.Next;
      End;

      datalar.RxIlacBilgisi.First;
      while not datalar.RxIlacBilgisi.Eof do
      Begin
          islemSiraNO := datalar.RxIlacBilgisi.fieldbyname('islemSiraNo').AsString;
          siraNO := datalar.RxIlacBilgisi.fieldbyname('HizmetSunucuRefNo').AsString;
          sql := 'update hareketler set islemSiraNo = ' + QuotedStr(islemSiraNo) +
                 ' where SIRANO = ' + siraNO;
          datalar.QueryExec(ado,sql);
          datalar.RxIlacBilgisi.Next;
      End;

      datalar.RxMalzemeBilgisi.First;
      while not datalar.RxMalzemeBilgisi.Eof do
      Begin
          islemSiraNO := datalar.RxMalzemeBilgisi.fieldbyname('islemSiraNo').AsString;
          siraNO := datalar.RxMalzemeBilgisi.fieldbyname('HizmetSunucuRefNo').AsString;
          sql := 'update hareketler set islemSiraNo = ' + QuotedStr(islemSiraNo) +
                 ' where SIRANO = ' + siraNO;
          datalar.QueryExec(ado,sql);
          datalar.RxMalzemeBilgisi.Next;
      End;

      datalar.RxAmeliyatBilgisi.First;
      while not datalar.RxAmeliyatBilgisi.Eof do
      Begin
          islemSiraNO := datalar.RxAmeliyatBilgisi.fieldbyname('islemSiraNo').AsString;
          siraNO := datalar.RxAmeliyatBilgisi.fieldbyname('HizmetSunucuRefNo').AsString;
          sql := 'update hareketler set islemSiraNo = ' + QuotedStr(islemSiraNo) +
                 ' where SIRANO = ' + siraNO;
          datalar.QueryExec(ado,sql);
          datalar.RxAmeliyatBilgisi.Next;
      End;

      datalar.RxRadIslem.First;
      while not datalar.RxRadIslem.Eof do
      Begin
          islemSiraNO := datalar.RxRadIslem.fieldbyname('islemSiraNo').AsString;
          siraNO := datalar.RxRadIslem.fieldbyname('HizmetSunucuRefNo').AsString;
          sql := 'update hareketler set islemSiraNo = ' + QuotedStr(islemSiraNo) +
                 ' where SIRANO = ' + siraNO;
          datalar.QueryExec(ado,sql);
          datalar.RxRadIslem.Next;
      End;

      datalar.RxTaniBilgisi.First;
      while not datalar.RxTaniBilgisi.Eof do
      Begin
          islemSiraNO := datalar.RxTaniBilgisi.fieldbyname('islemSiraNo').AsString;
          siraNO := datalar.RxTaniBilgisi.fieldbyname('HizmetSunucuRefNo').AsString;
          sql := 'update Anamnez_ICD set islemSiraNo = ' + QuotedStr(islemSiraNo) +
                 ' where ID = ' + copy(siraNO,2,15);
          datalar.QueryExec(ado,sql);
          datalar.RxTaniBilgisi.Next;
      End;
    finally
      ado.Free;
    end;
  except on e : Exception do
   begin
    result := '0001';
    exit;
   End;
  End;
    result := '0000';


End;



function IlacAra(Barkod , name1 : string ; IlacList : IlacListDVO ; Http1 : THTTPRIO) : string;
var
  IlacAraGrs : IlacAraGirisDVO;
  IlacAraCvp : IlacAraCevapDVO;
  Ilac : IlacListDVO;
  x : integer;
begin
    IlacAraGrs := IlacAraGirisDVO.Create;
    IlacAraCvp := IlacAraCevapDVO.Create;

    //datalar.Login;
    http1.HTTPWebNode.UserName := datalar._username;
    http1.HTTPWebNode.Password := datalar._sifre;
    http1.URL := 'https://medula.sgk.gov.tr:443/medulaws/services/YardimciIslemler';

    IlacAraGrs.barkod := Barkod;
    IlacAraGrs.ilacAdi := name1;
    IlacAraGrs.saglikTesisKodu := datalar._kurumKod;

    try
        Application.ProcessMessages;
        IlacAraCvp := (http1 as YardimciIslemler).ilacAra(IlacAraGrs);
    except
        on E : sysUtils.Exception do
        begin
          Showmessageskin(E.Message,'','','info');
          exit;
        end;
    end;

    if IlacAraCvp.sonucKodu = '0000'
    Then Begin
       IlacList.kullanimBirimi := IlacAraCvp.ilaclar[0].kullanimBirimi;
       IlacList.barkod := IlacAraCvp.ilaclar[0].barkod;
       IlacList.ilacAdi := IlacAraCvp.ilaclar[0].ilacAdi;
       result := '0000';
    End
    Else
    Begin
       result := IlacAraCvp.sonucMesaji;
    End;




end;

  
function FaturaKayitOku(FaturaTeslimNo , FaturaTarihi : string ; Http1 : THTTPRIO ; var Fatura : FaturaOkuCevapDVO) : string;
var
   FtrOkuGrs : FaturaOkuGirisDVO;
   FtrOkuCvp : FaturaOkuCevapDVO;
begin
      FtrOkuGrs := FaturaOkuGirisDVO.Create;
      FtrOkuCvp := FaturaOkuCevapDVO.Create;

      //datalar.Login;

 //     http1.HTTPWebNode.UserName := datalar._username;
 //     http1.HTTPWebNode.Password := datalar._sifre;
      http1.URL := datalar.faturaKayitURL; //'https://medula.sgk.gov.tr/medula/hastane/faturaKayitIslemleriWS';

      FtrOkuGrs.saglikTesisKodu := datalar._kurumKod;

      FtrOkuGrs.faturaTeslimNo := FaturaTeslimNo;
      FtrOkuGrs.faturaTarihi := '01.01.2010';//FaturaTarihi;


      try
        Application.ProcessMessages;
        FtrOkuCvp := (http1 as FaturaKayitIslemleri).faturaOku(FtrOkuGrs);
      except
        on E : sysUtils.Exception do
        begin
          Showmessageskin(E.Message,'','','info');
          exit;
        end;
      end;

      if FtrOkuCvp.sonucKodu = '0000'
      Then Begin
        Fatura := FtrOkuCvp;
        result := '0000';
      End
      Else
       result :=  FaturaTeslimNo + ':' + FtrOkuCvp.sonucMesaji;




end;



function TakipTipleri(_kod_ : string) : string;
begin
  if _kod_ = 'N'
  Then result := 'Normal'
  Else
  if _kod_ = 'E'
  Then result := 'Eþlik Eden Hastalýk'
  Else
  if _kod_ = 'U'
  Then result := 'Uzayan Yatýþ'
  Else
  if _kod_ = 'K'
  Then result := 'Komplikasyon'
  Else
  if _kod_ = 'T'
  Then result := 'Taný Amaçlý Günübirlik'
  Else
  if _kod_ = 'Y'
  Then result := 'Yoðun Bakým'
  Else result := 'Hizmetin Ýptal Olmasý veya Yarým Kalmasý';

end;


function ProvizyonTipleriAdi(_kod_ : string) : string;
begin
  if _kod_ = 'N'
  Then result := 'Normal'
  Else
  if _kod_ = 'I'
  Then result := 'Ýþ Kazasý'
  Else
  if _kod_ = 'A'
  Then result := 'Acil'
  Else
  if _kod_ = 'T'
  Then result := 'Trafik Kazasý'
  Else
  if _kod_ = 'V'
  Then result := 'Adli Vaka'
  Else
  if _kod_ = 'M'
  Then result := 'Meslek Hastalýðý';

end;

function TedaviTipleriAdi(_kod_ : string) : string;
begin
   case strtoint(ifthen(_kod_='','0',_kod_)) of
     0 : result := 'Normal Sorgu';
     1 : result := 'Diyaliz';
     2 : result := 'Fiziksel tedavi ve rehabilitasyon';
     4 : result := 'Kemik iliði';
     5 : result := 'Kök hücre nakli';
     6 : result := 'Ekstrakorporeal fotoferez tedavisi';
     7 : result := 'Hiperbarik oksijen tedavisi';
     8 : result := 'ESWL';
    10 : result := 'Ketem';
    11 : result := 'Tüp Bebek 1';
    14 : result := 'Onkolojik Tedavi';
    15 : result := 'Plazmaferez Tedavisi';
    16 : result := 'ESWT';
   End;


end;


procedure verisetleriBosalt;
begin
    datalar.VeriSeti.Muayene := nil;
    datalar.VeriSeti.Tahlil := nil;
    datalar.VeriSeti.Rad := nil;
    datalar.VeriSeti.Ameliyat := nil;
    datalar.VeriSeti.Yatis := nil;
    datalar.VeriSeti.Ilac := nil;
    datalar.VeriSeti.Malzeme := nil;
    datalar.VeriSeti.Tani := nil;
    datalar.VeriSeti.Diger := nil;
end;

function SevkBildirim(_TakipNo : string ; Tarih , Brans : string ; Http1 : THTTPRIO): string;
var
   Ts_SevkGon : SevkBildirGirisDVO;
   Ts_SevkCvp : SevkBildirSonucDVO;
begin
      //datalar.Login;

      http1.HTTPWebNode.UserName := datalar._username;
      http1.HTTPWebNode.Password := datalar._sifre;
      http1.URL := datalar.hastaKabulURL; //'https://medula.sgk.gov.tr/medula/hastane/hastaKabulIslemleriWS';

      Ts_SevkGon := SevkBildirGirisDVO.Create;
      Ts_SevkCvp := SevkBildirSonucDVO.Create;

      Ts_SevkGon.saglikTesisKodu := datalar._kurumKod;
      Ts_SevkGon.takipNo := _TakipNo;
      Ts_SevkGon.sevkEdilisTarihi := Tarih;
      Ts_SevkGon.yesilKartSevkEdilenBransKodu :=  Brans;

      try
        Application.ProcessMessages;
        Ts_SevkCvp := (HTTP1 as HastaKabulIslemleri).sevkBildir(Ts_SevkGon);
      except
        on E : sysUtils.Exception do
        begin
          Showmessageskin(E.Message,'','','info');
          exit;
        end;
      end;

      if Ts_SevkCvp.sonucKodu = '0000'
      Then Begin
          result := Ts_SevkCvp.sonucKodu;
      End
      Else
        result := Ts_SevkCvp.sonucMesaji;



end;


function YatisOku(basvuruNo : String; var YatisBilgileri : Array_Of_BasvuruYatisBilgileriDVO ; http1 : THTTPRIO) : string;
var
  Ts_YatisOku : HastaYatisOkuDVO;
  Ts_YatisCvp : HastaYatisOkuCevapDVO;
begin
      //datalar.Login;

      http1.HTTPWebNode.UserName := datalar._username;
      http1.HTTPWebNode.Password := datalar._sifre;
      http1.URL := datalar.hastaKabulURL; //'https://medula.sgk.gov.tr/medula/hastane/hastaKabulIslemleriWS';

      Ts_YatisOku := HastaYatisOkuDVO.Create;
      Ts_YatisCvp := HastaYatisOkuCevapDVO.Create;

      Ts_YatisOku.saglikTesisKodu := datalar._kurumKod;
      Ts_YatisOku.hastaBasvuruNo := basvuruNo;


      try
        Application.ProcessMessages;
        Ts_YatisCvp := (HTTP1 as HastaKabulIslemleri).hastaYatisOku(Ts_YatisOku);
      except
        on E : sysUtils.Exception do
        begin
          Showmessageskin(E.Message,'','','info');
          exit;
        end;
      end;

     if Ts_YatisCvp.sonucKodu = '0000'
     Then begin
         YatisBilgileri := Ts_YatisCvp.basvuruYatisBilgileri;
         result := Ts_YatisCvp.sonucKodu;
     End
     Else
        result := Ts_YatisCvp.sonucMesaji;



end;


procedure DatalariBosalt;
begin

   datalar.RxTahlilIslem.Active := False;
   datalar.RxTahlilIslem.Active := True;
   datalar.RxMuayeneBilgisi.Active := False;
   datalar.RxMuayeneBilgisi.Active := True;
   datalar.RxRadIslem.Active := false;
   datalar.RxRadIslem.Active := True;
   datalar.RxAmeliyatBilgisi.Active := False;
   datalar.RxAmeliyatBilgisi.Active := true;
   datalar.RxDigerIslem.Active := False;
   datalar.RxDigerIslem.Active := true;
   datalar.RxYatakBilgisi.Active := false;
   datalar.RxYatakBilgisi.Active := true;
   datalar.RxIlacBilgisi.Active := False;
   datalar.RxIlacBilgisi.Active := True;
   datalar.RxMalzemeBilgisi.Active := False;
   datalar.RxMalzemeBilgisi.Active := true;
   datalar.RxTaniBilgisi.Active := False;
   datalar.RxTaniBilgisi.Active := True;
   datalar.RxKonsultasyon.Active := false;
   datalar.RxKonsultasyon.Active := true;
   datalar.RxKayitliIslem.Active := False;
   datalar.RxKayitliIslem.Active := True;
   datalar.RxTahlilSonuc.Active := False;
   datalar.RxTahlilSonuc.Active := True;

end;

procedure verisetleriYenile(_takip_ , Modul , tedavi : string);
begin
    datalar.VeriSeti.Muayene := nil;
    datalar.VeriSeti.Tahlil := nil;
    datalar.VeriSeti.Rad := nil;
    datalar.VeriSeti.Ameliyat := nil;
    datalar.VeriSeti.Yatis := nil;
    datalar.VeriSeti.Ilac := nil;
    datalar.VeriSeti.Malzeme := nil;
    datalar.VeriSeti.Tani := nil;
    datalar.VeriSeti.Diger := nil;
    datalar.VeriSeti.Kons := nil;

    if Modul = 'D'
    Then Begin
        datalar.VeriSeti.Tahlil := TahlilM3(_takip_,'D',Tedavi);
//        datalar.VeriSeti.Rad := RadM3(_takip_);
       // datalar.VeriSeti.Yatis := YatisM3(_takip_);
        datalar.VeriSeti.Tani := TaniM3(_takip_);
        datalar.VeriSeti.Rad := RadM3(_takip_);
        datalar.VeriSeti.Diger := DigerIslemBilgileriM3(_takip_);
        datalar.VeriSeti.Malzeme := MalzemeM3(_takip_);
   End Else
   Begin

    datalar.VeriSeti.Muayene := MuayeneM3(_takip_);
    datalar.VeriSeti.Tahlil := TahlilM3(_takip_,'K',Tedavi);
    datalar.VeriSeti.Rad := RadM3(_takip_);
    datalar.VeriSeti.Ameliyat := AmeliyatM3(_takip_);
    datalar.VeriSeti.Yatis := YatisM3(_takip_);
    datalar.VeriSeti.Ilac := IlacM3(_takip_);
    datalar.VeriSeti.Malzeme := MalzemeM3(_takip_);
    datalar.VeriSeti.Tani := TaniM3(_takip_);
    datalar.VeriSeti.Diger := DigerIslemBilgileriM3(_takip_);
    datalar.VeriSeti.Kons := Kons(_takip_);
   End;
end;


function HizmetDetay(basvuru : string ; Detay : string) : Array_Of_hizmetDetayDVO;
var
  sql : string;
  i ,j, dizi : integer;
  ts_Fatura : HizmetDetayDVO;
  fFatura : Array_Of_hizmetDetayDVO;
  ado : TADOQuery;
begin
  if Detay = '' then Detay := '1';

  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'exec sp_MedulaDataset_kl_m3 ' + #39 + basvuru + #39 + ',' + #39 + 'HizmetDetay' + #39 + ',' + Detay;
    datalar.QuerySelect(ado,sql);
    if ado.Eof then exit;

    dizi :=  ado.RecordCount;
    SetLength(FFatura,dizi);

    for i := 0 to dizi - 1 do
    begin
      ts_Fatura := HizmetDetayDVO.Create;
      ts_Fatura.aciklama := ado.fieldbyname('aciklama').AsString;
      ts_Fatura.protokolNo := ado.fieldbyname('protokolNo').AsString;
      ts_Fatura.taburcuKodu := ado.fieldbyname('taburcuKodu').AsString;
      ts_Fatura.takipNo := ado.fieldbyname('TakipNo').AsString;
      FFatura[i] := ts_Fatura;
      ado.Next;
    end;
    result := fFatura;
    SetLength(fFatura,0);
  finally
    ado.Free;
  end;
end;

function FaturaKayitIptal(_teslimNo : FaturaKayitIslemleriWS.Array_Of_string; http1:THTTPRIO) : string;
var
  Ts_Ipt : FaturaIptalGirisDVO;
  Ts_IptCvp : FaturaIptalCevapDVO;
  _t , msg : string;
  x : integer;
begin
      //datalar.Login;

   //   http1.HTTPWebNode.UserName := datalar._username;
 //     http1.HTTPWebNode.Password := datalar._sifre;
      http1.URL := datalar.faturaKayitURL; //'https://medula.sgk.gov.tr/medula/hastane/faturaKayitIslemleriWS';

      Ts_Ipt := FaturaIptalGirisDVO.Create;
      Ts_IptCvp := FaturaIptalCevapDVO.Create;

      Ts_Ipt.saglikTesisKodu := datalar._kurumKod;
      Ts_Ipt.faturaTeslimNo := _teslimno;

      try
        Application.ProcessMessages;
        Ts_IptCvp := (http1 as FaturaKayitIslemleri).faturaIptal(Ts_Ipt);
      except
        on E : sysUtils.Exception do
        begin
          Showmessageskin(E.Message,'','','info');
          exit;
        end;
      end;

      if Ts_IptCvp.sonucKodu = '0000'
      Then result := '0000'
      Else
      Begin
        for x := 0 to length(Ts_IptCvp.hataliKayitlar) - 1 do
        begin
          msg := msg + Ts_IptCvp.hataliKayitlar[x].hataMesaji;
        end;

        result := Ts_IptCvp.sonucMesaji + msg;

      End;

end;


function FaturaKayit(BasvuruNo , Tarih : string ; var sonuc : FaturaCevapDVO; Http1 : THTTPRIO ; HizmetDetayi : string) :  string;
var
  Ts_Gon : FaturaGirisDVO;
  Ts_Cvp : FaturaCevapDVO;
Begin

      //datalar.Login;

//      http1.HTTPWebNode.UserName := datalar._username;
//      http1.HTTPWebNode.Password := datalar._sifre;
      http1.URL := datalar.faturaKayitURL; //'https://medula.sgk.gov.tr/medula/hastane/faturaKayitIslemleriWS';

      Ts_Gon := FaturaGirisDVO.Create;
      Ts_Cvp := FaturaCevapDVO.Create;

      Ts_Gon.saglikTesisKodu := datalar._kurumKod;
    //  Tarih := '01.04.2009';
      Ts_Gon.faturaTarihi := Tarih;
      Ts_Gon.hastaBasvuruNo := BasvuruNo;
      Ts_Gon.hizmetDetaylari := HizmetDetay(BasvuruNo,HizmetDetayi);
      Ts_Gon.faturaRefNo := Tarih;

      try
        Application.ProcessMessages;
        Ts_Cvp := (HTTP1 as FaturaKayitIslemleri).faturaKayit(Ts_Gon);
      except
        on E : sysUtils.Exception do
        begin
          Showmessageskin(E.Message,'','','info');
          result := 'Servisten Sonuç Alýnamadý : ' + e.Message;
          exit;
        end;
      end;


      if Ts_Cvp.sonucKodu = '0000'
      Then Begin
          result := '0000';
          sonuc := Ts_Cvp;
      End
      Else begin
       result := Ts_Cvp.sonucMesaji;
       sonuc := Ts_Cvp;
      End;

End;


function FaturaTutarOku(BasvuruNo , Tarih : string ; var sonuc : FaturaCevapDVO; Http1 : THTTPRIO ; HizmetDetayi : string) :  string;
var
  Ts_Gon : FaturaGirisDVO;
  Ts_Cvp : FaturaCevapDVO;
Begin

      //datalar.Login;

   //   http1.HTTPWebNode.UserName := datalar._username;
 //     http1.HTTPWebNode.Password := datalar._sifre;
      http1.URL := datalar.faturaKayitURL; //'https://medula.sgk.gov.tr/medula/hastane/faturaKayitIslemleriWS';
      Ts_Gon := FaturaGirisDVO.Create;
      Ts_Cvp := FaturaCevapDVO.Create;

      Ts_Gon.saglikTesisKodu := datalar._kurumKod;
    //  Tarih := '01.04.2009';
      Ts_Gon.faturaTarihi := Tarih;
      Ts_Gon.hastaBasvuruNo := BasvuruNo;

      Ts_Gon.hizmetDetaylari := HizmetDetay(BasvuruNo,HizmetDetayi);

      Ts_Gon.faturaRefNo := Tarihal(strtodate(Tarih));

      try
        Application.ProcessMessages;
        Ts_Cvp := (HTTP1 as FaturaKayitIslemleri).faturaTutarOku(Ts_Gon);
      except
        on E : sysUtils.Exception do
        begin
          //Showmessageskin(E.Message,'','','info');
          result := 'Servisten Sonuç Alýnamadý : ' + e.Message;
          exit;
        end;
      end;


      if Ts_Cvp.sonucKodu = '0000'
      Then Begin
          result := '0000';
          sonuc := Ts_Cvp;
      End
      Else begin
       Ts_Cvp.hastaBasvuruNo := BasvuruNo;
       if length(Ts_Cvp.hataliKayitlar) > 0
       Then
         result := Ts_Cvp.sonucMesaji + ' ' + Ts_Cvp.hataliKayitlar[0].hataMesaji
       Else result := Ts_Cvp.sonucMesaji;
       sonuc := Ts_Cvp;
      End;

End;


function HizmetKaydiIptal(_takipNo : string; Http1 : THTTPRIO) : string;
var
  Ts_Hiz : HizmetIptalGirisDVO;
  Ts_HizS : HizmetIptalCevapDVO;
  islemSiraNumaralari : Array_Of_string;
  i , j: integer;
begin
      //datalar.Login;

      http1.HTTPWebNode.UserName := datalar._username;
      http1.HTTPWebNode.Password := datalar._sifre;
      http1.URL := datalar.hizmetKayitURL; // 'https://medula.sgk.gov.tr/medula/hastane/hizmetKayitIslemleriWS';

      Ts_Hiz := HizmetIptalGirisDVO.Create;
      Ts_HizS := HizmetIptalCevapDVO.Create;

      Ts_Hiz.saglikTesisKodu := datalar._kurumKod;
      Ts_Hiz.takipNo := _TakipNo;

      Ts_Hiz.islemSiraNumaralari := datalar.islemSiralari;
(*
      i := length(datalar.islemSiralari);
      if i > 0
      Then Begin
          for j:= 0 to i-1 do
          Begin
           Ts_Hiz.islemSiraNumaralari := datalar.islemSiralari;
          End;
      End; *)
      try
        Application.ProcessMessages;
        Ts_HizS := (HTTP1 as HizmetKayitIslemleriService).hizmetIptal(Ts_Hiz);
      except
        on E : sysUtils.Exception do
        begin
          Showmessageskin(E.Message,'','','info');
          Result := Ts_HizS.sonucKodu;
          exit;
        end;
      end;

      if Ts_HizS.sonucKodu = '0000'
      Then result := Ts_HizS.sonucKodu
      Else result := Ts_HizS.sonucKodu + ' ' + Ts_HizS.sonucMesaji;


    Ts_Hiz.Free;
    Ts_HizS.Free;


end;

function HizmetKaydiOku(_takipNo : string; basvuruNo : string; var sonuc : string ; Http1 : THTTPRIO) : string;
var
  Ts_Gon : HizmetOkuGirisDVO;
  Ts_Cvp : HizmetOkuCevapDVO;
  j , i , sira , r : integer;
begin
      //datalar.Login;

      http1.HTTPWebNode.UserName := datalar._username;
      http1.HTTPWebNode.Password := datalar._sifre;
      http1.URL := datalar.hizmetKayitURL; //'https://medula.sgk.gov.tr/medula/hastane/hizmetKayitIslemleriWS';
      Ts_Gon := HizmetOkuGirisDVO.Create;
      Ts_Cvp := HizmetOkuCevapDVO.Create;



      Ts_gon.saglikTesisKodu := datalar._kurumKod;
      Ts_Gon.takipNo := _TakipNo;

      try
        Application.ProcessMessages;
        Ts_Cvp := (HTTP1 as HizmetKayitIslemleriService).hizmetOku(Ts_Gon);
      except
        on E : sysUtils.Exception do
        begin
          Showmessageskin(E.Message,'','','info');
          sonuc := Ts_Cvp.sonucKodu;
          exit;
        end;
      end;

      Application.ProcessMessages;
      
      if (Ts_Cvp.sonucKodu = '0000')
      Then Begin
         sonuc := Ts_Cvp.sonucKodu;
         result := sonuc;
         if Ts_Cvp.hizmetler.muayeneBilgisi <> nil
         then begin
           datalar.RxMuayeneBilgisi.Append;
           datalar.RxMuayeneBilgisi.FieldByName('sutKodu').AsString := Ts_Cvp.hizmetler.muayeneBilgisi.sutKodu;
           datalar.RxMuayeneBilgisi.FieldByName('bransKodu').AsString := Ts_Cvp.hizmetler.muayeneBilgisi.bransKodu;
           datalar.RxMuayeneBilgisi.FieldByName('islemTarihi').AsString := Ts_Cvp.hizmetler.muayeneBilgisi.muayeneTarihi;
           datalar.RxMuayeneBilgisi.FieldByName('drTescilNo').AsString := Ts_Cvp.hizmetler.muayeneBilgisi.drTescilNo;
           datalar.RxMuayeneBilgisi.FieldByName('hizmetSunucuRefNo').AsString := Ts_Cvp.hizmetler.muayeneBilgisi.hizmetSunucuRefNo;
           datalar.RxMuayeneBilgisi.FieldByName('islemSiraNo').AsString := Ts_Cvp.hizmetler.muayeneBilgisi.islemSiraNo;
           datalar.RxMuayeneBilgisi.FieldByName('ozelDurum').AsString := Ts_Cvp.hizmetler.muayeneBilgisi.ozelDurum;
           datalar.RxMuayeneBilgisi.Post;
         end;

         datalar.RxTahlilSonuc.Active := False;
         datalar.RxTahlilSonuc.Active := true;
         j := length(Ts_Cvp.hizmetler.tahlilBilgileri);
         for i := 0 to j - 1 do
         Begin
             datalar.RxTahlilIslem.Append;
             datalar.RxTahlilIslem.FieldByName('TakipNo').AsString := _takipNo;
             datalar.RxTahlilIslem.FieldByName('sutKodu').AsString := Ts_Cvp.hizmetler.tahlilBilgileri[i].sutKodu;
             datalar.RxTahlilIslem.FieldByName('bransKodu').AsString := Ts_Cvp.hizmetler.tahlilBilgileri[i].bransKodu;
             datalar.RxTahlilIslem.FieldByName('islemTarihi').AsString := Ts_Cvp.hizmetler.tahlilBilgileri[i].islemTarihi;
             datalar.RxTahlilIslem.FieldByName('drTescilNo').AsString := Ts_Cvp.hizmetler.tahlilBilgileri[i].drTescilNo;
             datalar.RxTahlilIslem.FieldByName('hizmetSunucuRefNo').AsString := Ts_Cvp.hizmetler.tahlilBilgileri[i].hizmetSunucuRefNo;
             datalar.RxTahlilIslem.FieldByName('islemSiraNo').AsString := Ts_Cvp.hizmetler.tahlilBilgileri[i].islemSiraNo;
             datalar.RxTahlilIslem.FieldByName('adet').AsInteger := Ts_Cvp.hizmetler.tahlilBilgileri[i].adet;
             datalar.RxTahlilIslem.FieldByName('siraNO').AsInteger := i + 1;
             datalar.RxTahlilIslem.FieldByName('name').AsString := HizmetKoduToHizmetAdi(Ts_Cvp.hizmetler.tahlilBilgileri[i].sutKodu);
             datalar.RxTahlilIslem.FieldByName('ozelDurum').AsString := Ts_Cvp.hizmetler.tahlilBilgileri[i].ozelDurum;
             datalar.RxTahlilIslem.Post;


             For r := 0 to length(Ts_Cvp.hizmetler.tahlilBilgileri[i].tahlilSonuclari) - 1 do
             Begin
                datalar.RxTahlilSonuc.Append;
                datalar.RxTahlilSonuc.FieldByName('TakipNo').AsString := _takipNo;
                datalar.RxTahlilSonuc.FieldByName('code').AsString := Ts_Cvp.hizmetler.tahlilBilgileri[i].sutKodu;
                datalar.RxTahlilSonuc.FieldByName('islemSiraNo').AsString := Ts_Cvp.hizmetler.tahlilBilgileri[i].hizmetSunucuRefNo;
                datalar.RxTahlilSonuc.FieldByName('sonuc').AsString := Ts_Cvp.hizmetler.tahlilBilgileri[i].tahlilSonuclari[r].sonuc;
                datalar.RxTahlilSonuc.FieldByName('birim').AsString := Ts_Cvp.hizmetler.tahlilBilgileri[i].tahlilSonuclari[r].birim;
                datalar.RxTahlilSonuc.FieldByName('tip').AsString := trim(Ts_Cvp.hizmetler.tahlilBilgileri[i].tahlilSonuclari[r].tahlilTipi);
                try
                  datalar.RxTahlilSonuc.FieldByName('Tanim').AsString :=
                  HareketSiraNoHizmetAdi(StringReplace(Ts_Cvp.hizmetler.tahlilBilgileri[i].sutKodu,'L','',[rfReplaceAll]),
                  trim(Ts_Cvp.hizmetler.tahlilBilgileri[i].tahlilSonuclari[r].tahlilTipi));
                except
                end;
                datalar.RxTahlilSonuc.Post;
             End;




         End;


         j := length(Ts_Cvp.hizmetler.tetkikveRadyolojiBilgileri);
         for i := 0 to j - 1 do
         Begin
             datalar.RxRadIslem.Append;
             datalar.RxRadIslem.FieldByName('TakipNo').AsString := _takipNo;
             datalar.RxRadIslem.FieldByName('sutKodu').AsString := Ts_Cvp.hizmetler.tetkikveRadyolojiBilgileri[i].sutKodu;
             datalar.RxRadIslem.FieldByName('bransKodu').AsString := Ts_Cvp.hizmetler.tetkikveRadyolojiBilgileri[i].bransKodu;
             datalar.RxRadIslem.FieldByName('islemTarihi').AsString := Ts_Cvp.hizmetler.tetkikveRadyolojiBilgileri[i].islemTarihi;
             datalar.RxRadIslem.FieldByName('drTescilNo').AsString := trim(Ts_Cvp.hizmetler.tetkikveRadyolojiBilgileri[i].drTescilNo);
             datalar.RxRadIslem.FieldByName('hizmetSunucuRefNo').AsString := Ts_Cvp.hizmetler.tetkikveRadyolojiBilgileri[i].hizmetSunucuRefNo;
             datalar.RxRadIslem.FieldByName('islemSiraNo').AsString := Ts_Cvp.hizmetler.tetkikveRadyolojiBilgileri[i].islemSiraNo;
             datalar.RxRadIslem.FieldByName('ozeldurum').AsString := Ts_Cvp.hizmetler.tetkikveRadyolojiBilgileri[i].ozelDurum;
             datalar.RxRadIslem.FieldByName('aciklama').AsString := Ts_Cvp.hizmetler.tetkikveRadyolojiBilgileri[i].aciklama;
             datalar.RxRadIslem.FieldByName('aynifarklikesi').AsString := Ts_Cvp.hizmetler.tetkikveRadyolojiBilgileri[i].ayniFarkliKesi;
             datalar.RxRadIslem.FieldByName('sonuc').AsString := Ts_Cvp.hizmetler.tetkikveRadyolojiBilgileri[i].sonuc;
             datalar.RxRadIslem.FieldByName('name').AsString := HizmetKoduToHizmetAdi(Ts_Cvp.hizmetler.tetkikveRadyolojiBilgileri[i].sutKodu);
             datalar.RxRadIslem.FieldByName('adet').AsString := inttostr(Ts_Cvp.hizmetler.tetkikveRadyolojiBilgileri[i].adet);
             datalar.RxRadIslem.FieldByName('birim').AsString := Ts_Cvp.hizmetler.tetkikveRadyolojiBilgileri[i].birim;


             datalar.RxRadIslem.Post;



         End;
         sira := 1;
         j := length(Ts_Cvp.hizmetler.digerIslemBilgileri);
         for i := 0 to j - 1 do
         Begin
             datalar.RxDigerIslem.Append;
             datalar.RxDigerIslem.FieldByName('TakipNo').AsString := _takipNo;
             datalar.RxDigerIslem.FieldByName('sutKodu').AsString := Ts_Cvp.hizmetler.digerIslemBilgileri[i].sutKodu;
             datalar.RxDigerIslem.FieldByName('bransKodu').AsString := Ts_Cvp.hizmetler.digerIslemBilgileri[i].bransKodu;
             datalar.RxDigerIslem.FieldByName('islemTarihi').AsString := Ts_Cvp.hizmetler.digerIslemBilgileri[i].islemTarihi;
             datalar.RxDigerIslem.FieldByName('drTescilNo').AsString := Ts_Cvp.hizmetler.digerIslemBilgileri[i].drTescilNo;
             datalar.RxDigerIslem.FieldByName('hizmetSunucuRefNo').AsString := Ts_Cvp.hizmetler.digerIslemBilgileri[i].hizmetSunucuRefNo;
             datalar.RxDigerIslem.FieldByName('islemSiraNo').AsString := Ts_Cvp.hizmetler.digerIslemBilgileri[i].islemSiraNo;
             datalar.RxDigerIslem.FieldByName('raporTakipNo').AsString := Ts_Cvp.hizmetler.digerIslemBilgileri[i].raporTakipNo;
             datalar.RxDigerIslem.FieldByName('siraNO').AsInteger := i + 1;
             datalar.RxDigerIslem.FieldByName('ozeldurum').AsString := Ts_Cvp.hizmetler.digerIslemBilgileri[i].ozelDurum;
             datalar.RxDigerIslem.FieldByName('aynifarklikesi').AsString := Ts_Cvp.hizmetler.digerIslemBilgileri[i].ayniFarkliKesi;
             datalar.RxDigerIslem.FieldByName('raporNo').AsString := raporTakipNoToraporNo(Ts_Cvp.hizmetler.digerIslemBilgileri[i].raporTakipNo);

             datalar.RxDigerIslem.Post;


         End;

         j := length(Ts_Cvp.hizmetler.ameliyatveGirisimBilgileri);
         for i := 0 to j - 1 do
         Begin
             datalar.RxAmeliyatBilgisi.Append;
             datalar.RxAmeliyatBilgisi.FieldByName('sutKodu').AsString := Ts_Cvp.hizmetler.ameliyatveGirisimBilgileri[i].sutKodu;
             datalar.RxAmeliyatBilgisi.FieldByName('bransKodu').AsString := Ts_Cvp.hizmetler.ameliyatveGirisimBilgileri[i].bransKodu;
             datalar.RxAmeliyatBilgisi.FieldByName('islemTarihi').AsString := Ts_Cvp.hizmetler.ameliyatveGirisimBilgileri[i].islemTarihi;
             datalar.RxAmeliyatBilgisi.FieldByName('drTescilNo').AsString := Ts_Cvp.hizmetler.ameliyatveGirisimBilgileri[i].drTescilNo;
             datalar.RxAmeliyatBilgisi.FieldByName('hizmetSunucuRefNo').AsString := Ts_Cvp.hizmetler.ameliyatveGirisimBilgileri[i].hizmetSunucuRefNo;
             datalar.RxAmeliyatBilgisi.FieldByName('islemSiraNo').AsString := Ts_Cvp.hizmetler.ameliyatveGirisimBilgileri[i].islemSiraNo;
             datalar.RxAmeliyatBilgisi.FieldByName('aciklama').AsString := Ts_Cvp.hizmetler.ameliyatveGirisimBilgileri[i].aciklama;
             datalar.RxAmeliyatBilgisi.FieldByName('sagSol').AsString := Ts_Cvp.hizmetler.ameliyatveGirisimBilgileri[i].sagSol;
             datalar.RxAmeliyatBilgisi.FieldByName('ayniFarkliKesi').AsString := Ts_Cvp.hizmetler.ameliyatveGirisimBilgileri[i].ayniFarkliKesi;
             datalar.RxAmeliyatBilgisi.FieldByName('ozeldurum').AsString := Ts_Cvp.hizmetler.ameliyatveGirisimBilgileri[i].ozelDurum;

             datalar.RxAmeliyatBilgisi.Post;


         End;

         j := length(Ts_Cvp.hizmetler.ilacBilgileri);
         for i := 0 to j - 1 do
         Begin
             datalar.RxIlacBilgisi.Append;
             datalar.RxIlacBilgisi.FieldByName('barkod').AsString := Ts_Cvp.hizmetler.ilacBilgileri[i].barkod;
             datalar.RxIlacBilgisi.FieldByName('ilacTuru').AsString := Ts_Cvp.hizmetler.ilacBilgileri[i].ilacTuru;
             datalar.RxIlacBilgisi.FieldByName('islemTarihi').AsString := Ts_Cvp.hizmetler.ilacBilgileri[i].islemTarihi;
             datalar.RxIlacBilgisi.FieldByName('tutar').AsFloat := Ts_Cvp.hizmetler.ilacBilgileri[i].tutar;
             datalar.RxIlacBilgisi.FieldByName('hizmetSunucuRefNo').AsString := Ts_Cvp.hizmetler.ilacBilgileri[i].hizmetSunucuRefNo;
             datalar.RxIlacBilgisi.FieldByName('islemSiraNo').AsString := Ts_Cvp.hizmetler.ilacBilgileri[i].islemSiraNo;
             datalar.RxIlacBilgisi.FieldByName('aciklama').AsString := Ts_Cvp.hizmetler.ilacBilgileri[i].aciklama;
             datalar.RxIlacBilgisi.FieldByName('paketHaric').AsString := Ts_Cvp.hizmetler.ilacBilgileri[i].paketHaric;
             datalar.RxIlacBilgisi.FieldByName('adet').AsFloat := Ts_Cvp.hizmetler.ilacBilgileri[i].adet;
             datalar.RxIlacBilgisi.FieldByName('ozelDurum').AsString := Ts_Cvp.hizmetler.ilacBilgileri[i].ozelDurum;

             datalar.RxIlacBilgisi.Post;


         End;

         j := length(Ts_Cvp.hizmetler.malzemeBilgileri);
         for i := 0 to j - 1 do
         Begin
             datalar.RxMalzemeBilgisi.Append;
             datalar.RxMalzemeBilgisi.FieldByName('takipNo').AsString := _takipNo;
             datalar.RxMalzemeBilgisi.FieldByName('barkod').AsString := Ts_Cvp.hizmetler.malzemeBilgileri[i].barkod;
             datalar.RxMalzemeBilgisi.FieldByName('malzemeTuru').AsString := Ts_Cvp.hizmetler.malzemeBilgileri[i].malzemeTuru;
             datalar.RxMalzemeBilgisi.FieldByName('islemTarihi').AsString := Ts_Cvp.hizmetler.malzemeBilgileri[i].islemTarihi;
             datalar.RxMalzemeBilgisi.FieldByName('kodsuzMalzemeFiyati').AsFloat := Ts_Cvp.hizmetler.malzemeBilgileri[i].kodsuzMalzemeFiyati;
             datalar.RxMalzemeBilgisi.FieldByName('hizmetSunucuRefNo').AsString := Ts_Cvp.hizmetler.malzemeBilgileri[i].hizmetSunucuRefNo;
             datalar.RxMalzemeBilgisi.FieldByName('islemSiraNo').AsString := Ts_Cvp.hizmetler.malzemeBilgileri[i].islemSiraNo;
             datalar.RxMalzemeBilgisi.FieldByName('kodsuzMalzemeAdi').AsString := Ts_Cvp.hizmetler.malzemeBilgileri[i].kodsuzMalzemeAdi;
             datalar.RxMalzemeBilgisi.FieldByName('paketHaric').AsString := Ts_Cvp.hizmetler.malzemeBilgileri[i].paketHaric;
             datalar.RxMalzemeBilgisi.FieldByName('adet').AsFloat := Ts_Cvp.hizmetler.malzemeBilgileri[i].adet;
             datalar.RxMalzemeBilgisi.FieldByName('malzemeKodu').AsString := Ts_Cvp.hizmetler.malzemeBilgileri[i].malzemeKodu;
             datalar.RxMalzemeBilgisi.FieldByName('ozeldurum').AsString := Ts_Cvp.hizmetler.malzemeBilgileri[i].ozelDurum;
      
             datalar.RxMalzemeBilgisi.Post;


         End;

         j := length(Ts_Cvp.hizmetler.hastaYatisBilgileri);
         for i := 0 to j - 1 do
         Begin
             datalar.RxYatakBilgisi.Append;
             datalar.RxYatakBilgisi.FieldByName('bransKodu').AsString := Ts_Cvp.hizmetler.hastaYatisBilgileri[i].bransKodu;
             datalar.RxYatakBilgisi.FieldByName('sutKodu').AsString := Ts_Cvp.hizmetler.hastaYatisBilgileri[i].sutKodu;
             datalar.RxYatakBilgisi.FieldByName('drTescilNo').AsString := Ts_Cvp.hizmetler.hastaYatisBilgileri[i].drTescilNo;
//             datalar.RxYatakBilgisi.FieldByName('islemTarihi').AsString := Ts_Cvp.hizmetler.hastaYatisBilgileri[i].islemTarihi;
             datalar.RxYatakBilgisi.FieldByName('hizmetSunucuRefNo').AsString := Ts_Cvp.hizmetler.hastaYatisBilgileri[i].hizmetSunucuRefNo;
             datalar.RxYatakBilgisi.FieldByName('islemSiraNo').AsString := Ts_Cvp.hizmetler.hastaYatisBilgileri[i].islemSiraNo;
             datalar.RxYatakBilgisi.FieldByName('refakatciGunsayisi').AsString := Ts_Cvp.hizmetler.hastaYatisBilgileri[i].refakatciGunSayisi;
             datalar.RxYatakBilgisi.FieldByName('yatisBaslangicTarihi').AsString := Ts_Cvp.hizmetler.hastaYatisBilgileri[i].yatisBaslangicTarihi;
             datalar.RxYatakBilgisi.FieldByName('yatisBitisTarihi').AsString := Ts_Cvp.hizmetler.hastaYatisBilgileri[i].yatisBitisTarihi;
             datalar.RxYatakBilgisi.Post;


         End;

         j := length(Ts_Cvp.hizmetler.tanilar);
         for i := 0 to j - 1 do
         Begin
             datalar.RxTaniBilgisi.Append;
             datalar.RxTaniBilgisi.FieldByName('taniKodu').AsString := Ts_Cvp.hizmetler.tanilar[i].taniKodu;
             datalar.RxTaniBilgisi.FieldByName('taniTipi').AsString := Ts_Cvp.hizmetler.tanilar[i].taniTipi;
             datalar.RxTaniBilgisi.FieldByName('birincilTani').AsString := Ts_Cvp.hizmetler.tanilar[i].birincilTani;
             datalar.RxTaniBilgisi.FieldByName('hizmetSunucuRefNo').AsString := Ts_Cvp.hizmetler.tanilar[i].hizmetSunucuRefNo;
             datalar.RxTaniBilgisi.FieldByName('islemSiraNo').AsString := Ts_Cvp.hizmetler.tanilar[i].islemSiraNo;
             datalar.RxTaniBilgisi.Post;


         End;

         j := length(Ts_Cvp.hizmetler.konsultasyonBilgileri);
         for i := 0 to j - 1 do
         Begin
             datalar.RxKonsultasyon.Append;
             datalar.RxKonsultasyon.FieldByName('sutKodu').AsString := Ts_Cvp.hizmetler.konsultasyonBilgileri[i].sutKodu;
             datalar.RxKonsultasyon.FieldByName('bransKodu').AsString := Ts_Cvp.hizmetler.konsultasyonBilgileri[i].bransKodu;
             datalar.RxKonsultasyon.FieldByName('drTescilNo').AsString := Ts_Cvp.hizmetler.konsultasyonBilgileri[i].drTescilNo;
             datalar.RxKonsultasyon.FieldByName('islemTarihi').AsString := Ts_Cvp.hizmetler.konsultasyonBilgileri[i].islemTarihi;
             datalar.RxKonsultasyon.FieldByName('hizmetSunucuRefNo').AsString := Ts_Cvp.hizmetler.konsultasyonBilgileri[i].hizmetSunucuRefNo;
             datalar.RxKonsultasyon.FieldByName('islemSiraNo').AsString := Ts_Cvp.hizmetler.konsultasyonBilgileri[i].islemSiraNo;
             datalar.RxKonsultasyon.Post;
         End;

      End
      Else
         Begin
              sonuc := Ts_Cvp.sonucKodu + ' ' + Ts_Cvp.sonucMesaji;
              result := sonuc;
         End;

      Ts_Gon.Free;
      Ts_Cvp.Free;

end;


function KabulOku(_Takip : string ; var Hasta : TTakipBilgisi ; Http1 : THTTPRIO ; _msg : integer) : string;
var
   Ts_Gon1 : TakipOkuGirisDVO;
   Ts_Cvp1 : HastaKabulIslemleriWS.TakipDVO;
   sql : string;
begin
      //datalar.Login;
    //  http1.HTTPWebNode.UserName := datalar._username;
    //  http1.HTTPWebNode.Password := datalar._sifre;
    //  http1.URL := 'https://medula.sgk.gov.tr:443/medulaws/services/HastaKabulIslemleri';
      http1.URL := datalar.hastaKabulURL; //'https://medula.sgk.gov.tr/medula/hastane/hastaKabulIslemleriWS';
      Ts_gon1 := TakipOkuGirisDVO.Create;
      Ts_cvp1 := HastaKabulIslemleriWS.TakipDVO.Create;

      Ts_gon1.saglikTesisKodu := datalar._kurumKod;
      Ts_Gon1.takipNo := _Takip;

      try
        Ts_Cvp1 := (http1 as HastaKabulIslemleri).hastaKabulOku(Ts_Gon1);
      except
        on E : sysUtils.Exception do
          begin
            if _msg = 1 then Showmessage(E.Message,'','','info');
            result := e.Message;
            hasta.Takip := '';
            hasta.ilkTakip := '';
            hasta.MuayeneTarihi := '';
            hasta.KayitTarihi := '';
            hasta.TesisKodu := '0';
            hasta.bransKodu := '';
            hasta.donerTcKimlik := '';
            hasta.BasvuruNo := '';
            hasta.TakipTipi := '';
            hasta.tedaviTuru := '';
            hasta.TalipDurumu := '';
            hasta.provizyonTipi := '';
            hasta.tedaviTipi := '';
            hasta.HastaAdi := '';
            hasta.TcKimlik := '';
            hasta.faturaTeslimNo := '';
            hasta.bransKodu := '';
            exit;
          end;

      end;

      if Ts_Cvp1.sonucKodu = '0000'
      then begin
            result := Ts_Cvp1.sonucKodu;
            hasta.Takip := Ts_Cvp1.takipNo;
            hasta.ilkTakip := Ts_Cvp1.ilkTakipNo;
            hasta.MuayeneTarihi := Ts_Cvp1.takipTarihi;
            hasta.KayitTarihi := Ts_Cvp1.kayitTarihi;
            hasta.TesisKodu := inttostr(Ts_Cvp1.tesisKodu);
            hasta.bransKodu := Ts_Cvp1.bransKodu;
            hasta.donerTcKimlik := Ts_Cvp1.donorTCKimlikNo;
            hasta.BasvuruNo := Ts_Cvp1.hastaBasvuruNo;
            hasta.TakipTipi := Ts_Cvp1.takipTipi;
            hasta.tedaviTuru := Ts_Cvp1.tedaviTuru;
            hasta.TalipDurumu := Ts_Cvp1.takipDurumu;
            hasta.provizyonTipi := Ts_Cvp1.provizyonTipi;
            hasta.tedaviTipi := Ts_Cvp1.tedaviTipi;
            hasta.HastaAdi := Ts_Cvp1.hastaBilgileri.ad + ' ' + Ts_Cvp1.hastaBilgileri.soyad;
            hasta.TcKimlik := Ts_Cvp1.hastaBilgileri.tcKimlikNo;
            hasta.faturaTeslimNo := Ts_Cvp1.faturaTeslimNo;
            hasta.bransKodu := Ts_Cvp1.bransKodu;

            

      end
      else begin
            result := Ts_Cvp1.sonucMesaji;

            hasta.Takip := '';
            hasta.ilkTakip := '';
            hasta.MuayeneTarihi := '';
            hasta.KayitTarihi := '';
            hasta.TesisKodu := '0';
            hasta.bransKodu := '';
            hasta.donerTcKimlik := '';
            hasta.BasvuruNo := '';
            hasta.TakipTipi := '';
            hasta.tedaviTuru := '';
            hasta.TalipDurumu := '';
            hasta.provizyonTipi := '';
            hasta.tedaviTipi := '';
            hasta.HastaAdi := '';
            hasta.TcKimlik := '';
            hasta.faturaTeslimNo := '';
            hasta.bransKodu := '';
            if _msg = 1 then ShowMessageSkin(Ts_Cvp1.sonucMesaji , '' ,'' ,'info');

      end;

     Ts_Gon1.Free;
     Ts_Cvp1.Free;


end;


function HastaCikis_3(basvuruNo,cikisTarihi : string; Http1 : THTTPRIO) : string;
var
  PrvHstCikGir : HastaCikisDVO;
  PrvHstCikCvp : HastaCikisCevapDVO;
begin
          //datalar.Login;
//          frmTakipNo.pnlDurum.Caption := 'Ýþlem Yapýlýyor , Lütfen Bekleyiniz ...';
//          pnlDurum.Refresh;
          //datalar.login;
//          Http1.HTTPWebNode.UserName := datalar._username;
//          Http1.HTTPWebNode.Password := datalar._sifre;
          http1.URL := datalar.hastaKabulURL; //'https://medula.sgk.gov.tr/medula/hastane/hastaKabulIslemleriWS';

          PrvHstCikGir := HastaCikisDVO.Create;
          PrvHstCikCvp := HastaCikisCevapDVO.Create;

          PrvHstCikGir.saglikTesisKodu := datalar._kurumKod;
          PrvHstCikGir.hastaBasvuruNo := basvuruNo;
          PrvHstCikGir.hastaCikisTarihi := CikisTarihi;

          try
            Application.ProcessMessages;
            PrvHstCikCvp := (HTTP1 as HastaKabulIslemleri).hastaCikisKayit(PrvHstCikGir);
          except
            on E : sysUtils.Exception do
            begin
              Showmessageskin(E.Message,PrvHstCikCvp.sonucMesaji,'','info');
              Result := PrvHstCikCvp.sonucKodu;
            end;
          end;

          if PrvHstCikCvp.sonucKodu = '0000'
          Then
            Result := PrvHstCikCvp.sonucKodu
          Else
            Result := PrvHstCikCvp.sonucMesaji;

         PrvHstCikGir.Free;
         PrvHstCikCvp.Free;


end;


function TakipSil_3(var TakipNo :string ; Http1 : THTTPRIO):string;
var
  PrvSilGir : TakipSilGirisDVO;
  PrvSilCvp : TakipSilCevapDVO;

begin
          //datalar.Login;
//          frmTakipNo.pnlDurum.Caption := 'Ýþlem Yapýlýyor , Lütfen Bekleyiniz ...';
//          pnlDurum.Refresh;
          //datalar.login;
 //         Http1.HTTPWebNode.UserName := datalar._username;
 //         Http1.HTTPWebNode.Password := datalar._sifre;
          http1.URL := datalar.hastaKabulURL; //'https://medula.sgk.gov.tr/medula/hastane/hastaKabulIslemleriWS';

          PrvSilGir := TakipSilGirisDVO.Create;
          PrvSilCvp := TakipSilCevapDVO.Create;

          PrvSilGir.saglikTesisKodu := datalar._kurumKod;
          PrvSilGir.takipNo := TakipNo;

          try
            Application.ProcessMessages;
            PrvSilCvp := (HTTP1 as HastaKabulIslemleri).hastaKabulIptal(PrvSilGir);
          except
            on E : sysUtils.Exception do
            begin
              Showmessageskin(E.Message,PrvSilCvp.sonucMesaji,'','info');
              Result := PrvSilCvp.sonucKodu;
            end;
          end;

          if PrvSilCvp.sonucKodu = '0000'
          Then Begin
            Result := PrvSilCvp.sonucKodu;
            TakipSilYaz(PrvSilGir.takipNo);
          End
          else
          if PrvSilCvp.sonucKodu = '0535'
          Then Begin
             TakipSilYaz(PrvSilGir.takipNo);
             Result := PrvSilCvp.sonucKodu;
          End
          Else Result := PrvSilCvp.sonucKodu + '-' + PrvSilCvp.sonucMesaji;

         PrvSilGir.Free;
         PrvSilCvp.Free;

end;



function TakipAl_3KimlikDorulama(var bilgi : THastaKabul ; Http1 : THTTPRIO ; mesaj : boolean) : string;
var
  Sql ,s1,s2: string;
  DonenAd,DonenSoyad,donenTarih ,msg: string;
  YD : YeniDoganBilgisiDVO;
  PrvGrs : ProvizyonGirisDVO;
  PrvCvp : ProvizyonCevapDVO;
  i : integer;
  _Adligecmis_ : TAdliGecmis;
begin
         datalar.TakipDevam := true;

        //      HastaTakipBulP(datalar.bilgi,datetostr(date() - 60),datetostr(date()),True);

          //datalar.Login;
//          frmTakipNo.pnlDurum.Caption := 'Ýþlem Yapýlýyor , Lütfen Bekleyiniz ...';
//          pnlDurum.Refresh;
          //datalar.login;
      //    Http1.HTTPWebNode.UserName := datalar._username;
      //    Http1.HTTPWebNode.Password := datalar._sifre;
      //    http1.URL := 'https://medula.sgk.gov.tr:443/medulaws/services/HastaKabulIslemleri';
          http1.URL := datalar.hastaKabulURL; //'https://medula.sgk.gov.tr/medula/hastane/hastaKabulIslemleriWS';
//          http1.URL := hastaKabulURL; //'https://medula.sgk.gov.tr/medula/hastane/hastaKabulIslemleriWS';
          PrvGrs := ProvizyonGirisDVO.Create;
          PrvCvp := ProvizyonCevapDVO.Create;
          Yd := YeniDoganBilgisiDVO.Create;

          PrvGrs.saglikTesisKodu := datalar._KurumKod;

          PrvGrs.hastaTCKimlikNo := bilgi.tckimlikNo;
          PrvGrs.sigortaliTuru := bilgi.Durum;
          PrvGrs.devredilenKurum := bilgi.devredilenKurum;
          PrvGrs.provizyonTarihi := bilgi.ProvizyonTarihi;
          PrvGrs.provizyonTipi := bilgi.provizyonTuru;
          PrvGrs.takipTipi := bilgi.TakipTuru;
          PrvGrs.takipNo := bilgi.ilkTakip;
          PrvGrs.tedaviTipi := bilgi.tedaviTipi;
          PrvGrs.tedaviTuru := bilgi.tedaviTuru;
          PrvGrs.bransKodu := bilgi.BransKodu;
          PrvGrs.yatisBitisTarihi := bilgi.YatisBitisTarihi;
          PrvGrs.yakinlikKodu := TrtoEng(trim(copy(bilgi.yakinlikKodu,1,3)));
          PrvGrs.yardimHakkiID := bilgi.id;
          if bilgi.sevkedenTesisKodu > 0 then
          PrvGrs.yesilKartSevkEdenTesisKodu := bilgi.sevkedenTesisKodu;




        //  PrvGrs.takipNo := bilgi.TakipNo;



          if (bilgi.BebekSira <> '') and (bilgi.BebekDTarihi <> '')
          Then Begin
               Yd.dogumTarihi := bilgi.BebekDTarihi;
               Yd.cocukSira := strtoint(bilgi.BebekSira);
               PrvGrs.yeniDoganBilgisi := yd;
          End;

          SetLength(bilgi.ArrayOfAdliGecmis,0);
//          CoInitialize(nil);
   // if mrYes = ShowMessageSkin(PrvGrs.hastaTCKimlikNo ,PrvGrs.devredilenKurum ,PrvGrs.takipNo,'msg')
  //  Then Begin
          try
            Application.ProcessMessages;
            PrvCvp := (HTTP1 as HastaKabulIslemleri).hastaKabulKimlikDogrulama(PrvGrs);
          except
            on E : sysUtils.Exception do
            begin
              if mesaj = True Then Showmessageskin(E.Message,'','','info');
              Result := e.Message;
            end;
          end;

 //   End;


          if ((PrvCvp.sonucKodu = '0000') or (PrvCvp.sonucKodu = '1163') or (PrvCvp.sonucKodu = '0008'))
          then begin
              if PrvCvp.sonucKodu = '0000'
               Then result := PrvCvp.sonucKodu
              else
               result := PrvCvp.sonucKodu +'-'+ PrvCvp.sonucMesaji;

              if length(PrvCvp.sigortaliAdliGecmisi) > 0
              Then Begin
                SetLength(bilgi.ArrayOfAdliGecmis, length(PrvCvp.sigortaliAdliGecmisi));
                for i := 0 to length(PrvCvp.sigortaliAdliGecmisi)-1 do
                begin
                   bilgi.ArrayOfAdliGecmis[i].provTarihi := PrvCvp.sigortaliAdliGecmisi[i].provTarihi;
                   bilgi.ArrayOfAdliGecmis[i].provTipi := PrvCvp.sigortaliAdliGecmisi[i].provTipi;
                   bilgi.ArrayOfAdliGecmis[i].tckNo := PrvCvp.sigortaliAdliGecmisi[i].tckNo;
                end;
              End;


              //bilgi.ilkTakip := bilgi.TakipNo;
              bilgi.TakipNo := PrvCvp.takipNo;
              bilgi.BasvuruNo := PrvCvp.hastaBasvuruNo;

              bilgi.Adi := PrvCvp.hastaBilgileri.ad + ' ' + PrvCvp.hastaBilgileri.soyad;
              bilgi.tckimlikNo := PrvCvp.hastaBilgileri.tcKimlikNo;
              bilgi.DTarihi := PrvCvp.hastaBilgileri.dogumTarihi;
              bilgi.Cinsiyet := PrvCvp.hastaBilgileri.cinsiyet;
              if bilgi.ilkTakip = '' then bilgi.devredilenKurum := PrvCvp.hastaBilgileri.devredilenKurum;
              bilgi.Durum := PrvCvp.hastaBilgileri.sigortaliTuru;


              TakipbilgisiYaz(PrvGrs,PrvCvp);






//              //TakipAl_3.hastaBilgileri.ad := PrvCvp.hastaBilgileri.ad;
//              DonenAd := Trim(PrvCvp.hastaBilgileri.ad);
//              DonenSoyad := Trim(PrvCvp.hastaBilgileri.soyad);
//              donenTarih := Trim(PrvCvp.hastaBilgileri.dogumTarihi);
//              ShowMessageSkin(Trim(PrvCvp.hastaBilgileri.ad) + ' ' + Trim(PrvCvp.hastaBilgileri.soyad) + ' Adlý Hasta Kabul Edildi','Sistem Kaydý Gerçekleþtirilecek...','','info');

          End
          Else
          if (PrvCvp.sonucKodu = '9000')
          then begin
              result := PrvCvp.sonucKodu +'-'+ PrvCvp.sonucMesaji;
              bilgi.ilkTakip := bilgi.TakipNo;
              bilgi.TakipNo := PrvCvp.takipNo;
              bilgi.BasvuruNo := PrvCvp.hastaBasvuruNo;
              bilgi.Adi := PrvCvp.hastaBilgileri.ad + ' ' + PrvCvp.hastaBilgileri.soyad;
              bilgi.tckimlikNo := PrvCvp.hastaBilgileri.tcKimlikNo;
              bilgi.DTarihi := PrvCvp.hastaBilgileri.dogumTarihi;
              bilgi.Cinsiyet := PrvCvp.hastaBilgileri.cinsiyet;
//              //TakipAl_3.hastaBilgileri.ad := PrvCvp.hastaBilgileri.ad;
//              DonenAd := Trim(PrvCvp.hastaBilgileri.ad);
//              DonenSoyad := Trim(PrvCvp.hastaBilgileri.soyad);
//              donenTarih := Trim(PrvCvp.hastaBilgileri.dogumTarihi);
//              ShowMessageSkin(Trim(PrvCvp.hastaBilgileri.ad) + ' ' + Trim(PrvCvp.hastaBilgileri.soyad) + ' Adlý Hasta Kabul Edildi','Sistem Kaydý Gerçekleþtirilecek...','','info');

          End
          Else
          if PrvCvp.sonucKodu = '0543'
          then begin
            bilgi.TakipNo := HastaKabul0543HatasiTakipAl(PrvCvp.sonucMesaji);
            bilgi.BasvuruNo := '';
            result := '0000';
          end

          Else result := PrvCvp.sonucKodu +'-'+ PrvCvp.sonucMesaji;

         try
          PrvGrs.Free;
          PrvCvp.Free;
          yd.Free;
         except
         end;

         //StopThread(TID);

end;



function TakipAl_3(var bilgi : THastaKabul ; Http1 : THTTPRIO ; mesaj : boolean) : string;
var
  Sql ,s1,s2: string;
  DonenAd,DonenSoyad,donenTarih ,msg: string;
  YD : YeniDoganBilgisiDVO;
  PrvGrs : ProvizyonGirisDVO;
  PrvCvp : ProvizyonCevapDVO;
  i : integer;
  _Adligecmis_ : TAdliGecmis;
begin
         datalar.TakipDevam := true;

        //      HastaTakipBulP(datalar.bilgi,datetostr(date() - 60),datetostr(date()),True);

          //datalar.Login;
//          frmTakipNo.pnlDurum.Caption := 'Ýþlem Yapýlýyor , Lütfen Bekleyiniz ...';
//          pnlDurum.Refresh;
          //datalar.login;
        //  Http1.HTTPWebNode.UserName := datalar._username;
       //   Http1.HTTPWebNode.Password := datalar._sifre;

          http1.URL := datalar.hastaKabulURL; //'https://medula.sgk.gov.tr/medula/hastane/hastaKabulIslemleriWS';
        //  http1.URL := 'https://medula.sgk.gov.tr:443/medulaws/services/HastaKabulIslemleri';

          PrvGrs := ProvizyonGirisDVO.Create;
          PrvCvp := ProvizyonCevapDVO.Create;
          Yd := YeniDoganBilgisiDVO.Create;

          PrvGrs.saglikTesisKodu := datalar._KurumKod;

          PrvGrs.hastaTCKimlikNo := bilgi.tckimlikNo;
          PrvGrs.sigortaliTuru := bilgi.Durum;
          PrvGrs.devredilenKurum := bilgi.devredilenKurum;
          PrvGrs.provizyonTarihi := bilgi.ProvizyonTarihi;
          PrvGrs.provizyonTipi := bilgi.provizyonTuru;
          PrvGrs.takipTipi := bilgi.TakipTuru;
          PrvGrs.takipNo := bilgi.ilkTakip;
          PrvGrs.tedaviTipi := bilgi.tedaviTipi;
          PrvGrs.tedaviTuru := bilgi.tedaviTuru;
          PrvGrs.bransKodu := bilgi.BransKodu;
          PrvGrs.yatisBitisTarihi := bilgi.YatisBitisTarihi;
          PrvGrs.yakinlikKodu := trim(copy(bilgi.yakinlikKodu,1,3));
          PrvGrs.yardimHakkiID := bilgi.id;
          if bilgi.sevkedenTesisKodu > 0 then
          PrvGrs.yesilKartSevkEdenTesisKodu := bilgi.sevkedenTesisKodu;


        //  PrvGrs.takipNo := bilgi.TakipNo;



          if (bilgi.BebekSira <> '') and (bilgi.BebekDTarihi <> '')
          Then Begin
               Yd.dogumTarihi := bilgi.BebekDTarihi;
               Yd.cocukSira := strtoint(bilgi.BebekSira);
               PrvGrs.yeniDoganBilgisi := yd;
          End;

          SetLength(bilgi.ArrayOfAdliGecmis,0);
//          CoInitialize(nil);
   // if mrYes = ShowMessageSkin(PrvGrs.hastaTCKimlikNo ,PrvGrs.devredilenKurum ,PrvGrs.takipNo,'msg')
  //  Then Begin
          try
            Application.ProcessMessages;
            PrvCvp := (HTTP1 as HastaKabulIslemleri).hastaKabul(PrvGrs);
          except
            on E : sysUtils.Exception do
            begin
              if mesaj = True Then Showmessageskin(E.Message,'','','info');
              Result := e.Message;
            end;
          end;

 //   End;


          if ((PrvCvp.sonucKodu = '0000') or (PrvCvp.sonucKodu = '1163') or (PrvCvp.sonucKodu = '0008'))
          then begin
              if PrvCvp.sonucKodu = '0000'
               Then result := PrvCvp.sonucKodu
              else
               result := PrvCvp.sonucKodu +'-'+ PrvCvp.sonucMesaji;

              if length(PrvCvp.sigortaliAdliGecmisi) > 0
              Then Begin
                SetLength(bilgi.ArrayOfAdliGecmis, length(PrvCvp.sigortaliAdliGecmisi));
                for i := 0 to length(PrvCvp.sigortaliAdliGecmisi)-1 do
                begin
                   bilgi.ArrayOfAdliGecmis[i].provTarihi := PrvCvp.sigortaliAdliGecmisi[i].provTarihi;
                   bilgi.ArrayOfAdliGecmis[i].provTipi := PrvCvp.sigortaliAdliGecmisi[i].provTipi;
                   bilgi.ArrayOfAdliGecmis[i].tckNo := PrvCvp.sigortaliAdliGecmisi[i].tckNo;
                end;
              End;


              //bilgi.ilkTakip := bilgi.TakipNo;
              bilgi.TakipNo := PrvCvp.takipNo;
              bilgi.BasvuruNo := PrvCvp.hastaBasvuruNo;

              bilgi.Adi := PrvCvp.hastaBilgileri.ad + ' ' + PrvCvp.hastaBilgileri.soyad;
              bilgi.tckimlikNo := PrvCvp.hastaBilgileri.tcKimlikNo;
              bilgi.DTarihi := PrvCvp.hastaBilgileri.dogumTarihi;
              bilgi.Cinsiyet := PrvCvp.hastaBilgileri.cinsiyet;
              if bilgi.ilkTakip = '' then bilgi.devredilenKurum := PrvCvp.hastaBilgileri.devredilenKurum;
              bilgi.Durum := PrvCvp.hastaBilgileri.sigortaliTuru;


              TakipbilgisiYaz(PrvGrs,PrvCvp);
              result := '0000';





//              //TakipAl_3.hastaBilgileri.ad := PrvCvp.hastaBilgileri.ad;
//              DonenAd := Trim(PrvCvp.hastaBilgileri.ad);
//              DonenSoyad := Trim(PrvCvp.hastaBilgileri.soyad);
//              donenTarih := Trim(PrvCvp.hastaBilgileri.dogumTarihi);
//              ShowMessageSkin(Trim(PrvCvp.hastaBilgileri.ad) + ' ' + Trim(PrvCvp.hastaBilgileri.soyad) + ' Adlý Hasta Kabul Edildi','Sistem Kaydý Gerçekleþtirilecek...','','info');

          End
          Else
          if (PrvCvp.sonucKodu = '9000')
          then begin
              result := PrvCvp.sonucKodu +'-'+ PrvCvp.sonucMesaji;
              bilgi.ilkTakip := bilgi.TakipNo;
              bilgi.TakipNo := PrvCvp.takipNo;
              bilgi.BasvuruNo := PrvCvp.hastaBasvuruNo;
              bilgi.Adi := PrvCvp.hastaBilgileri.ad + ' ' + PrvCvp.hastaBilgileri.soyad;
              bilgi.tckimlikNo := PrvCvp.hastaBilgileri.tcKimlikNo;
              bilgi.DTarihi := PrvCvp.hastaBilgileri.dogumTarihi;
              bilgi.Cinsiyet := PrvCvp.hastaBilgileri.cinsiyet;
//              //TakipAl_3.hastaBilgileri.ad := PrvCvp.hastaBilgileri.ad;
//              DonenAd := Trim(PrvCvp.hastaBilgileri.ad);
//              DonenSoyad := Trim(PrvCvp.hastaBilgileri.soyad);
//              donenTarih := Trim(PrvCvp.hastaBilgileri.dogumTarihi);
//              ShowMessageSkin(Trim(PrvCvp.hastaBilgileri.ad) + ' ' + Trim(PrvCvp.hastaBilgileri.soyad) + ' Adlý Hasta Kabul Edildi','Sistem Kaydý Gerçekleþtirilecek...','','info');

          End

          Else
          if PrvCvp.sonucKodu = '0543'
          then begin
            bilgi.TakipNo := HastaKabul0543HatasiTakipAl(PrvCvp.sonucMesaji);
          end
          Else
           result := PrvCvp.sonucKodu +'-'+ PrvCvp.sonucMesaji;

         try
          PrvGrs.Free;
          PrvCvp.Free;
          yd.Free;
         except
         end;

         //StopThread(TID);

end;

function HizmetKayit_3(basvuruNo , TakipNo : string ; Http1 : THTTPRIO ;
                       ameliyatveGirisim : Array_Of_AmeliyatveGirisimBilgisiDVO;
                       digerIslemBilgileri : Array_Of_DigerIslemBilgisiDVO;
                       disBilgileri : Array_Of_DisBilgisiDVO;
                       IlacBilgileri : Array_Of_IlacBilgisiDVO;
                       KonsiltasyonBilgisi :  Array_Of_KonsultasyonBilgisiDVO;
                       malzemeBilgisi : HizmetKayitIslemleriws.Array_Of_MalzemeBilgisiDVO;
                       muayeneBilgisi : MuayeneBilgisiDVO;
                       tahlilBilgileri : Array_Of_TahlilBilgisiDVO;
                       tanilar : HizmetKayitIslemleriws.Array_Of_TaniBilgisiDVO;
                       tetkikveRadyoloji : Array_Of_TetkikveRadyolojiBilgisiDVO;
                       yatisBilgisi : HizmetKayitIslemleriws.Array_Of_HastaYatisBilgisiDVO;
                    //var KayitliIslem : ArrayOf_tns2_nillable_KayitliIslemBilgisiDVO;
                    var HataliIslem : TStringList ; _msg_ : integer ; trajBeyan : string) : string;

var
  PrvHizGir : HizmetKayitGirisDVO;
  PrvHizCvp : HizmetKayitCevapDVO;
  sql , _islemNo_ , refNo : string;
  i,j , a,b,c : integer;
  ado : TADOQuery;
  Hdr : Security;
begin

          datalar.RxKayitliIslem.Active := False;
          datalar.RxKayitliIslem.Active := True;
          datalar.VeriSeti.HataliIslem := nil;
         // HataliIslem := TStringList.Create;

          //datalar.Login;

          PrvHizGir := HizmetKayitGirisDVO.Create;
          PrvHizCvp := HizmetKayitCevapDVO.Create;

        //  Http1.HTTPWebNode.UserName := datalar._username;
        //  Http1.HTTPWebNode.Password := datalar._sifre;
          http1.URL := datalar.hizmetKayitURL; //'https://medula.sgk.gov.tr/medula/hastane/hizmetKayitIslemleriWS';
          //'https://medula.sgk.gov.tr:443/medulaws/services/HizmetKayitIslemleri';

          PrvHizGir.triajBeyani := trajBeyan;
          PrvHizGir.saglikTesisKodu := datalar._kurumKod;
          PrvHizGir.hastaBasvuruNo := basvuruNo;
          PrvHizGir.takipNo := takipNo;
          PrvHizGir.muayeneBilgisi := muayeneBilgisi;
          PrvHizGir.ameliyatveGirisimBilgileri := ameliyatveGirisim;
          PrvHizGir.digerIslemBilgileri := digerIslemBilgileri;
          PrvHizGir.disBilgileri := disBilgileri;
          PrvHizGir.ilacBilgileri := IlacBilgileri;
          PrvHizGir.konsultasyonBilgileri := KonsiltasyonBilgisi;
          PrvHizGir.malzemeBilgileri := malzemeBilgisi;
          PrvHizGir.tahlilBilgileri := tahlilBilgileri;
          PrvHizGir.tanilar := tanilar;
          PrvHizGir.tetkikveRadyolojiBilgileri := tetkikveRadyoloji;
          PrvHizGir.hastaYatisBilgileri := yatisBilgisi;

        //  Hdr := Security.Create;
        //  HeaderWS(datalar._username,datalar._sifre,Hdr);
        //  HTTP1.SOAPHeaders.Send(Hdr);

          try
            Application.ProcessMessages;
            PrvHizCvp := (HTTP1 as HizmetKayitIslemleriService).hizmetKayit(PrvHizGir);
          except
            on E : sysUtils.Exception do
            begin
              if _msg_ = 1 then Showmessageskin(E.Message,'','','info');
              //Result := PrvHizCvp.sonucKodu;
              result := 'Servisten Sonuç Alýnamadý : ' + e.Message;
              exit;
            end;
          end;

          if PrvHizCvp.sonucKodu = '0000'
          Then begin
            result := PrvHizCvp.sonucKodu;
            j := length(PrvHizCvp.islemBilgileri);
            for i := 0 to j - 1 do
            Begin
              datalar.RxKayitliIslem.Append;
              datalar.RxKayitliIslem.FieldByName('hizmetSunucuRefNo').AsString := PrvHizCvp.islemBilgileri[i].hizmetSunucuRefNo;
              datalar.RxKayitliIslem.FieldByName('islemSiraNo').AsString := PrvHizCvp.islemBilgileri[i].islemSiraNo;
              datalar.RxKayitliIslem.Post;
            End;

          End
          Else
          Begin
          try
             result := PrvHizCvp.sonucKodu+' '+PrvHizCvp.sonucMesaji;
             j := length(PrvHizCvp.hataliKayitlar);

             if PrvHizCvp.hataliKayitlar <> nil
             Then
             for i := 0 to j - 1 do
             Begin
                try
                if PrvHizCvp.hataliKayitlar[i].hataKodu = '1229'
                Then Begin
                     a := pos('önce', string(PrvHizCvp.hataliKayitlar[i].hataMesaji));
                     a := a + 4;
                     b := pos('numaralý',string(PrvHizCvp.hataliKayitlar[i].hataMesaji));
                     b := b -1;
                     _islemNo_ := trim(copy(PrvHizCvp.hataliKayitlar[i].hataMesaji,a,b-a));
                     refNo := PrvHizCvp.hataliKayitlar[i].hizmetSunucuRefNo;

                     if datalar._program_ = 'Diyaliz'
                     Then Begin

                           if copy(refNo,1,1) = 'T'
                           Then Begin
                               sql := 'update gelisler set TaniIslemSiraNo = ' + QuotedStr(_islemNo_) +
                                      ' where TakýpNo = ' + QuotedStr(takipNo);
                               datalar.QueryExec(ado,sql);
                           End
                           Else
                           if copy(refNo,1,1) = 'L'
                           Then Begin
                               sql := 'update hareketler set islemSiraNo = ' + QuotedStr(_islemNo_) +
                                      ' where SIRANO = ' + copy(refNO,2,15);

                               datalar.QueryExec(ado,sql);
                           End
                           Else
                           if copy(refNo,1,1) = 'M'
                           Then Begin
                               sql := 'update hareketlerIS set islemSiraNo = ' + QuotedStr(_islemNo_) +
                                      ' where SIRANO = ' + copy(refNO,2,15);

                               datalar.QueryExec(ado,sql);
                           End
                           Else
                           Begin
                               sql := 'update gelisDetay set TalepSira = ' + QuotedStr(_islemNo_) +
                                      ' where siraNo = ' + refno;
                               datalar.QueryExec(ado,sql);
                           End;
                     End
                     Else
                     Begin

                     End;

                     HataliIslem.Add(PrvHizCvp.sonucKodu +'-'+ PrvHizCvp.takipNo +'-'+ PrvHizCvp.hataliKayitlar[i].hataMesaji +
                                     '- [ islemSiraNo Meduladan Alýnýp Sisteme Yazýldý , Ok..]');

                End
                Else
                 HataliIslem.Add(PrvHizCvp.sonucKodu+'-'+PrvHizCvp.takipNo +'-'+ PrvHizCvp.hataliKayitlar[i].hataMesaji
                                // ifthen(medulaHataCozumBul(PrvHizCvp.hataliKayitlar[i].hataKodu)<>'','ÇÖZÜM : ' + medulaHataCozumBul(PrvHizCvp.hataliKayitlar[i].hataKodu),'')

                                 );
                except
                end;
             End
             Else HataliIslem.Add(PrvHizCvp.sonucKodu+' '+PrvHizCvp.sonucMesaji);
          except
          end;

          End;
          tanilar := nil;

end;

function MuayeneM3(_takip : string) : MuayeneBilgisiDVO;
var
  sql : String;
  mb : MuayeneBilgisiDVO;
  od : HizmetKayitIslemleriWS.Array_Of_string;
  ozelDurumlar : TStringList;
  I : integer;
begin
  datalar.ADO_SQL2.Close;
  datalar.ADO_SQL2.SQL.Clear;

  mb := MuayeneBilgisiDVO.Create;

  sql := 'exec sp_MedulaDataset_KL_M3 ' + #39 + _takip + #39 + ',' + #39 + 'Muayene' + #39;
  datalar.QuerySelect(datalar.ADO_SQL2,sql);
  if DATALAR.ADO_SQL2.Eof then exit;

//   mb := MuayeneBilgisiDVO.Create;
  mb.sutKodu := datalar.ADO_SQL2.fieldbyname('butKodu').AsString;
  mb.bransKodu := datalar.ADO_SQL2.fieldbyname('bransKodu').AsString;
  mb.muayeneTarihi := FormattedTarih(datalar.ADO_SQL2.fieldbyname('muayeneTarihi').AsString);
  mb.drTescilNo := datalar.ADO_SQL2.fieldbyname('doktorTescilNo').AsString;
  mb.hizmetSunucuRefNo := datalar.ADO_SQL2.fieldbyname('hizmetsunucuRefno').AsString;

  ozelDurumlar := TStringList.Create;
  try
    Split(',',DATALAR.ADO_SQL2.fieldbyname('ozeldurum').AsString,ozelDurumlar);

    if ozelDurumlar.Count > 1
    then begin
      SetLength(od,ozelDurumlar.Count);
      for I := 0 to ozelDurumlar.Count  - 1 do
      begin
       od[I] := ozelDurumlar[I];
      end;
      mb.cokluOzelDurum := od;
    end;

    if length(DATALAR.ADO_SQL2.fieldbyname('ozeldurum').AsString) = 1
    then
      mb.ozelDurum :=  DATALAR.ADO_SQL2.fieldbyname('ozeldurum').AsString;

    result := mb;

  finally
    ozelDurumlar.Free;
  end;
end;




function MalzemeM3(_takip : string) : HizmetKayitIslemleriws.Array_Of_MalzemeBilgisiDVO;
var
  sql : string;
  i ,j, dizi : integer;
  MalzemeElemanlar : HizmetKayitIslemleriws.MalzemeBilgisiDVO;
  FMalzeme : HizmetKayitIslemleriws.Array_Of_MalzemeBilgisiDVO;
begin
      datalar.ADO_SQL2.Close;
      datalar.ADO_SQL2.SQL.Clear;

      sql := 'exec sp_MedulaDataset_kl_M3 ' + #39 + _takip + #39 + ',' + #39 + 'Malzeme' + #39;
      datalar.QuerySelect(datalar.ADO_SQL2,sql);
      if DATALAR.ADO_SQL2.Eof then exit;
      dizi :=  datalar.ADO_SQL2.RecordCount;
      SetLength(FMalzeme,dizi);
        MalzemeElemanlar := HizmetKayitIslemleriws.MalzemeBilgisiDVO.Create;

      for i := 0 to dizi - 1 do
      begin
        MalzemeElemanlar := HizmetKayitIslemleriws.MalzemeBilgisiDVO.Create;
        MalzemeElemanlar.malzemeKodu := DATALAR.ADO_SQL2.fieldbyname('malzemeKodu').AsString;
        MalzemeElemanlar.adet:= DATALAR.ADO_SQL2.fieldbyname('adet').AsInteger;
        MalzemeElemanlar.islemTarihi := FormattedTarih(DATALAR.ADO_SQL2.fieldbyname('islemTarihi').AsString);
        MalzemeElemanlar.malzemeTuru := DATALAR.ADO_SQL2.fieldbyname('malzemeTuru').AsString;
        MalzemeElemanlar.kodsuzMalzemeFiyati := DATALAR.ADO_SQL2.fieldbyname('kodsuzMalzemeFiyati').AsFloat;
        MalzemeElemanlar.kodsuzMalzemeAdi := DATALAR.ADO_SQL2.fieldbyname('kodsuzMalzemeAdi').AsString;
//        MalzemeElemanlar.islemDurum := DATALAR.ADO_SQL2.fieldbyname('islemDurum').AsString;
        MalzemeElemanlar.hizmetSunucuRefNo := DATALAR.ADO_SQL2.fieldbyname('hizmetSunucuRefNo').AsString;
        MalzemeElemanlar.barkod := DATALAR.ADO_SQL2.fieldbyname('UBB').AsString;
        MalzemeElemanlar.paketHaric := DATALAR.ADO_SQL2.fieldbyname('PaketHaric').AsString;
        MalzemeElemanlar.katkiPayi := DATALAR.ADO_SQL2.fieldbyname('katkiPayi').AsString;
        MalzemeElemanlar.ozelDurum := DATALAR.ADO_SQL2.fieldbyname('ozeldurum').AsString;

      //  MalzemeElemanlar.lot := DATALAR.ADO_SQL2.fieldbyname('lot').AsString;
     //   MalzemeElemanlar.partiKodu := DATALAR.ADO_SQL2.fieldbyname('partiKodu').AsString;
      //  MalzemeElemanlar.seriNumarasi := DATALAR.ADO_SQL2.fieldbyname('seriNumarasi').AsString;
    //    MalzemeElemanlar.sonKullanimTarihi := FormattedTarih(DATALAR.ADO_SQL2.fieldbyname('sonKullanimTarihi').AsString);
        MalzemeElemanlar.kdv := DATALAR.ADO_SQL2.fieldbyname('kdv').AsInteger;
        MalzemeElemanlar.firmaTanimlayiciNo := DATALAR.ADO_SQL2.fieldbyname('firmaTanimlayiciNo').AsString;


        MalzemeElemanlar.malzemeSatinAlisTarihi  := FormattedTarih(DATALAR.ADO_SQL2.fieldbyname('malzemeSatinAlisTarihi').AsString);





        FMalzeme[i] := MalzemeElemanlar;
        Datalar.ADO_SQL2.Next;
      end;
      result := FMalzeme;
      SetLength(FMalzeme,0);
      datalar.ADO_SQL2.Close;

    //  MalzemeElemanlar.Free;
end;


function IlacM3(_takip : string) : Array_Of_IlacBilgisiDVO;
var
  sql : string;
  i ,j, dizi : integer;
  IlacElemanlar : HizmetKayitIslemleriws.IlacBilgisiDVO;
  FIlac : Array_Of_IlacBilgisiDVO;
begin
      datalar.ADO_SQL2.Close;
      datalar.ADO_SQL2.SQL.Clear;

      sql := 'exec sp_MedulaDataset_kl_M3 ' + #39 + _takip + #39 + ',' + #39 + 'ilac' + #39;
      datalar.QuerySelect(datalar.ADO_SQL2,sql);
      if DATALAR.ADO_SQL2.Eof then exit;
      dizi :=  datalar.ADO_SQL2.RecordCount;
      SetLength(FIlac,dizi);
      IlacElemanlar := HizmetKayitIslemleriws.IlacBilgisiDVO.Create;
      for i := 0 to dizi - 1 do
      begin
        IlacElemanlar := HizmetKayitIslemleriws.IlacBilgisiDVO.Create;
        IlacElemanlar.aciklama := DATALAR.ADO_SQL2.fieldbyname('Aciklama').AsString;
        IlacElemanlar.barkod := DATALAR.ADO_SQL2.fieldbyname('barkod').AsString;
        IlacElemanlar.adet:= DATALAR.ADO_SQL2.fieldbyname('adet').AsInteger;
        IlacElemanlar.islemTarihi := FormattedTarih(DATALAR.ADO_SQL2.fieldbyname('islemTarihi').AsString);
        IlacElemanlar.ilacTuru := DATALAR.ADO_SQL2.fieldbyname('ilacTuru').AsString;
        IlacElemanlar.tutar := DATALAR.ADO_SQL2.fieldbyname('tutar').AsFloat;
        IlacElemanlar.hizmetSunucuRefNo := DATALAR.ADO_SQL2.fieldbyname('hizmetSunucuRefNo').AsString;
        IlacElemanlar.paketHaric := DATALAR.ADO_SQL2.fieldbyname('PaketHaric').AsString;
        IlacElemanlar.ozelDurum  := DATALAR.ADO_SQL2.fieldbyname('ozeldurum').AsString;
    //    IlacElemanlar.islemDurum := DATALAR.ADO_SQL2.fieldbyname('islemDurum').AsString;

        FIlac[i] := IlacElemanlar;
        Datalar.ADO_SQL2.Next;
      end;
      Result := FIlac;
      SetLength(FIlac,0);
      datalar.ADO_SQL2.Close;


end;


function AmeliyatM3(_takip : string) : Array_Of_AmeliyatveGirisimBilgisiDVO;
var
  sql : string;
  i ,j, dizi : integer;
  AmeliyatElemanlar : HizmetKayitIslemleriws.AmeliyatveGirisimBilgisiDVO;
  FAmeliyatlar : Array_Of_AmeliyatveGirisimBilgisiDVO;
begin
      datalar.ADO_SQL2.Close;
      datalar.ADO_SQL2.SQL.Clear;

      sql := 'exec sp_MedulaDataset_KL_M3 ' + #39 + _takip + #39 + ',' + #39 + 'Ameliyat' + #39;
      datalar.QuerySelect(datalar.ADO_SQL2,sql);
      if DATALAR.ADO_SQL2.Eof then exit;
      dizi :=  datalar.ADO_SQL2.RecordCount;
      SetLength(FAmeliyatlar,dizi);
    //  AmeliyatElemanlar := AmeliyatveGirisimBilgisiDVO.Create;

      for i := 0 to dizi - 1 do
      begin
        AmeliyatElemanlar := HizmetKayitIslemleriws.AmeliyatveGirisimBilgisiDVO.Create;
        AmeliyatElemanlar.sutKodu := DATALAR.ADO_SQL2.fieldbyname('butKodu').AsString;
        AmeliyatElemanlar.adet:= DATALAR.ADO_SQL2.fieldbyname('adet').AsInteger;
        AmeliyatElemanlar.islemTarihi := FormattedTarih(DATALAR.ADO_SQL2.fieldbyname('islemTarihi').AsString);
        AmeliyatElemanlar.drTescilNo := DATALAR.ADO_SQL2.fieldbyname('doktorTescilNo').AsString;
        AmeliyatElemanlar.bransKodu := DATALAR.ADO_SQL2.fieldbyname('bransKodu').AsString;
        AmeliyatElemanlar.ayniFarkliKesi := DATALAR.ADO_SQL2.fieldbyname('ayniFarkliKesi').AsString;
        AmeliyatElemanlar.hizmetSunucuRefNo := DATALAR.ADO_SQL2.fieldbyname('hizmetSunucuRefNo').AsString;
        AmeliyatElemanlar.sagSol := DATALAR.ADO_SQL2.fieldbyname('sagsol').AsString;
        AmeliyatElemanlar.aciklama := DATALAR.ADO_SQL2.fieldbyname('Aciklama').AsString;
        AmeliyatElemanlar.ozelDurum  := DATALAR.ADO_SQL2.fieldbyname('ozeldurum').AsString;
        FAmeliyatlar[i] := AmeliyatElemanlar;
        Datalar.ADO_SQL2.Next;
      end;
      result := FAmeliyatlar;
      SetLength(FAmeliyatlar,0);
      datalar.ADO_SQL2.Close;

end;


function YatisM3(_takip : string) : HizmetKayitIslemleriws.Array_Of_HastaYatisBilgisiDVO;
var
  sql : string;
  i ,j, dizi : integer;
  YatisElemanlar : HizmetKayitIslemleriws.HastaYatisBilgisiDVO;
  FYatis : HizmetKayitIslemleriws.Array_Of_HastaYatisBilgisiDVO;
begin
      sql := 'exec sp_MedulaDataset_KL_M3 ' + #39 + _takip + #39 + ',' + #39 + 'Hastayatis' + #39;
      datalar.QuerySelect(datalar.ADO_SQL2,sql);
      if DATALAR.ADO_SQL2.Eof then exit;
      dizi :=  datalar.ADO_SQL2.RecordCount;
      SetLength(FYatis,dizi);

      for i := 0 to dizi - 1 do
      begin
        YatisElemanlar := HizmetKayitIslemleriws.HastaYatisBilgisiDVO.Create;
        YatisElemanlar.sutKodu := DATALAR.ADO_SQL2.fieldbyname('butKodu').AsString;
        YatisElemanlar.bransKodu := DATALAR.ADO_SQL2.fieldbyname('bransKodu').AsString;
        YatisElemanlar.drTescilNo := DATALAR.ADO_SQL2.fieldbyname('doktorTescilNo').AsString;
        YatisElemanlar.yatisBaslangicTarihi := FormattedTarih(DATALAR.ADO_SQL2.fieldbyname('yatisBaslangicTarihi').AsString);
        YatisElemanlar.yatisBitisTarihi := FormattedTarih(DATALAR.ADO_SQL2.fieldbyname('yatisBitisTarihi').AsString);
        YatisElemanlar.hizmetSunucuRefNo := DATALAR.ADO_SQL2.fieldbyname('hizmetSunucuRefNo').AsString;
        YatisElemanlar.refakatciGunSayisi := DATALAR.ADO_SQL2.fieldbyname('refakatciGun').AsString;
//        YatisElemanlar.islemDurum := DATALAR.ADO_SQL2.fieldbyname('islemDurum').AsString;
        FYatis[i] := YatisElemanlar;
        Datalar.ADO_SQL2.Next;
      end;
      result := FYatis;
      SetLength(FYatis,0);
  //    YatisElemanlar.Free;
end;

function TahlilM3_satir(_takip : TDigerIslemTalep) : Array_Of_TahlilBilgisiDVO;
var
  sql : string;
  i ,j, dizi : integer;
  TahlilElemanlar : HizmetKayitIslemleriws.TahlilBilgisiDVO;
  Ftahliller : Array_Of_TahlilBilgisiDVO;
begin

      dizi :=  1;
      SetLength(Ftahliller,dizi);
  //    TahlilElemanlar := TahlilBilgisiDVO.Create;
      for i := 0 to dizi - 1 do
      begin
        TahlilElemanlar := HizmetKayitIslemleriws.TahlilBilgisiDVO.Create;
        TahlilElemanlar.sutKodu := _takip.sutKodu;
        TahlilElemanlar.adet := 1;
        TahlilElemanlar.islemTarihi := _takip.islemTarihi;
        TahlilElemanlar.drTescilNo := _takip.drTescilNo;
        TahlilElemanlar.bransKodu := _takip.bransKodu;
        TahlilElemanlar.hizmetSunucuRefNo := _takip.hizmetSunucuRefNo;
        TahlilElemanlar.ozelDurum := DATALAR.ADO_SQL2.fieldbyname('ozeldurum').AsString;
//        TahlilElemanlar.islemDurum := DATALAR.ADO_SQL2.fieldbyname('islemDurum').AsString;
        Ftahliller[i] := TahlilElemanlar;

      end;
      result := Ftahliller;
      SetLength(Ftahliller,0);
  //    TahlilElemanlar.Free;


end;



function TahlilM3(_takip , Modul , tedavi : string) : Array_Of_TahlilBilgisiDVO;
var
  sql,sql1 , dosyaNo , gelisNo : string;
  i ,j, dizi , dizi1 , r : integer;
  TahlilElemanlar : HizmetKayitIslemleriws.TahlilBilgisiDVO;
  Ftahliller : Array_Of_TahlilBilgisiDVO;
  Sonuclar : HizmetKayitIslemleriws.TahlilSonucDVO;
  Fsonuclar : HizmetKayitIslemleriws.Array_Of_TahlilSonucDVO;
  adoS : TADOQuery;
  memData : TdxMemData;
begin

  memData := TdxMemData.Create(nil);
  try
    memData.Active := true;
    adoS := TADOQuery.Create(nil);
    try
      adoS.Connection := datalar.ADOConnection2;

      sql := 'exec sp_MedulaDataset_kl_M3 ' + #39 + _takip + #39 + ',' + #39 + 'Tahlil' + #39;
      //datalar.QuerySelect(datalar.ADO_SQL2,sql);

      adoS.SQL.Clear;
      datalar.QuerySelect(adoS,sql);

      if ados.Eof then
      begin
         result := nil;
         exit;
      End;
      dosyaNo := adoS.fieldbyname('dosyaNo').AsString;
      gelisNo := adoS.fieldbyname('gelisNo').AsString;
      memData.LoadFromDataSet(ados);
      memData.First;
      adoS.Close;
      ados.Active := false;
    finally
      ados.Free;
    end;

    dizi :=  memData.RecordCount;
    SetLength(Ftahliller,dizi);
    //TahlilElemanlar := TahlilBilgisiDVO.Create;
    for i := 0 to dizi - 1 do
    begin
      TahlilElemanlar := HizmetKayitIslemleriws.TahlilBilgisiDVO.Create;
      TahlilElemanlar.sutKodu := memData.fieldbyname('butKodu').AsString;
      TahlilElemanlar.adet := memData.fieldbyname('adet').AsInteger;
      TahlilElemanlar.islemTarihi := FormattedTarih(memData.fieldbyname('islemTarihi').AsString);
      TahlilElemanlar.drTescilNo := memData.fieldbyname('doktorTescilNo').AsString;
      TahlilElemanlar.bransKodu := memData.fieldbyname('bransKodu').AsString;
      TahlilElemanlar.hizmetSunucuRefNo := memData.fieldbyname('hizmetSunucuRefNo').AsString;
      TahlilElemanlar.ozeldurum := memData.fieldbyname('ozeldurum').AsString;
      //sql1 := 'exec sp_MedulaDataset_KL_M3 @dataset = ''TahlilSonuc'',@hsira = ' + memData.fieldbyname('hizmetSunucuRefNo').AsString;


      if Modul = 'D'
      Then Begin

         if memData.fieldbyname('butKodu').AsString <> '901620'
         Then Begin
                SetLength(Fsonuclar,memData.fieldbyname('adet').AsInteger);
                Sonuclar := HizmetKayitIslemleriws.TahlilSonucDVO.Create;
                Sonuclar.islemSiraNo := memData.fieldbyname('hizmetSunucuRefNo').AsString;
                Sonuclar.sonuc := memData.fieldbyname('gd').AsString;
                Sonuclar.tahlilTipi := memData.fieldbyname('SGKTip').AsString;
                Sonuclar.birim := memData.fieldbyname('birim').AsString;
                Fsonuclar[0] := Sonuclar;

                if memData.fieldbyname('adet').AsInteger = 2
                Then Begin
                  //SetLength(Fsonuclar,1);
                  Sonuclar := HizmetKayitIslemleriws.TahlilSonucDVO.Create;
                  Sonuclar.islemSiraNo := memData.fieldbyname('hizmetSunucuRefNo').AsString;
                  Sonuclar.sonuc := memData.fieldbyname('cd').AsString;
                  Sonuclar.tahlilTipi := memData.fieldbyname('SGKTip').AsString;
                  Sonuclar.birim := memData.fieldbyname('birim').AsString;
                  Fsonuclar[1] := Sonuclar;
                 // TahlilElemanlar.tahlilSonuclari := Fsonuclar;
                End;

                TahlilElemanlar.tahlilSonuclari := Fsonuclar;
          End;

         if memData.fieldbyname('butKodu').AsString = '901620'
         Then Begin
            sql1 := 'select h.code,''L''+cast(h.SIRANO as varchar) sira ,h.gd,h.cd,t.SGKTip,t.birim ' +
                    ' from hareketler h ' +
                    ' join labtestler t on t.butkodu = h.code ' +
                    '  where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo + ' and (charindex(''901620.'',h.code)) > 0 and isnull(SGKTip,'''') <> ''''';

            datalar.ADO_SQL2.SQL.Clear;
            datalar.QuerySelect(datalar.ADO_SQL2,sql1);
            dizi1 :=  datalar.ADO_SQL2.RecordCount;
            SetLength(Fsonuclar,dizi1);
            for r := 0 to dizi1 - 1 do
            begin
                Sonuclar := HizmetKayitIslemleriws.TahlilSonucDVO.Create;
                Sonuclar.islemSiraNo := datalar.ADO_SQL2.fieldbyname('sira').AsString;
                Sonuclar.sonuc := datalar.ADO_SQL2.fieldbyname('gd').AsString;
                Sonuclar.tahlilTipi := datalar.ADO_SQL2.fieldbyname('SGKTip').AsString;
                Sonuclar.birim := datalar.ADO_SQL2.fieldbyname('birim').AsString;
                Fsonuclar[r] := Sonuclar;
                datalar.ADO_SQL2.Next;
            end;
            TahlilElemanlar.tahlilSonuclari := Fsonuclar;
           End;

    End; // Modul = 'D' end



    if ((Modul = 'K') and ((Tedavi = 'Y') or (Tedavi = 'G'))) or
       ((Modul = 'K') and (EK10C(memData.fieldbyname('butKodu').AsString) = True))
    Then BEgin
        sql1 :=   'select s.hareketsira,s.sonuc1,s.parametrebirim,p.SGKtip  from  laboratuvar_sonuc S ' +
                  ' join laboratuvar_parametre P on p.sira = s.parametre_sira and p.kodu = s.testno' +
                  ' where s.hareketSira = ' + memData.fieldbyname('hizmetSunucuRefNo').AsString  +
                  ' and isnull(p.SGKtip,'''') <> '''' and ISNULL(sonuc1,'''') <> '''' and sonuc1 <> ''0'' ';

          datalar.ADO_SQL2.SQL.Clear;
          datalar.QuerySelect(datalar.ADO_SQL2,sql1);
          dizi1 :=  datalar.ADO_SQL2.RecordCount;
          SetLength(Fsonuclar,dizi1);
          for r := 0 to dizi1 - 1 do
          begin
              Sonuclar := HizmetKayitIslemleriws.TahlilSonucDVO.Create;
              Sonuclar.islemSiraNo := datalar.ADO_SQL2.fieldbyname('hareketsira').AsString;
              Sonuclar.sonuc := TrtoEng(datalar.ADO_SQL2.fieldbyname('sonuc1').AsString);
              Sonuclar.tahlilTipi := datalar.ADO_SQL2.fieldbyname('SGKTip').AsString;
              Sonuclar.birim := datalar.ADO_SQL2.fieldbyname('parametrebirim').AsString;
              Fsonuclar[r] := Sonuclar;
              datalar.ADO_SQL2.Next;
          end;
          TahlilElemanlar.tahlilSonuclari := Fsonuclar;
      End;
      Ftahliller[i] := TahlilElemanlar;
      memData.Next;
    end; // for end
    result := Ftahliller;
  finally
    memData.Free;
    SetLength(Ftahliller,0);
    SetLength(Fsonuclar,0);
  end;

  //    TahlilElemanlar.Free;
end;

function RadM3(_takip : string) : Array_Of_TetkikveRadyolojiBilgisiDVO;
var
  sql , raporTakipNo : string;
  i ,j, dizi : integer;
  Rad : HizmetKayitIslemleriws.TetkikveRadyolojiBilgisiDVO;
  FRad : HizmetKayitIslemleriws.Array_Of_TetkikveRadyolojiBilgisiDVO;
begin
      sql := 'exec sp_MedulaDataset_Kl_M3 ' + #39 + _takip + #39 + ',' + #39 + 'Radyoloji' + #39;
      datalar.QuerySelect(datalar.ADO_SQL2,sql);
      if DATALAR.ADO_SQL2.Eof then exit;

      dizi :=  datalar.ADO_SQL2.RecordCount;
      SetLength(FRad ,dizi);

      for i := 0 to dizi - 1 do
      begin
          Rad := HizmetKayitIslemleriws.TetkikveRadyolojiBilgisiDVO.Create;
          Rad.sutKodu := DATALAR.ADO_SQL2.fieldbyname('butKodu').AsString;
          Rad.adet := DATALAR.ADO_SQL2.fieldbyname('adet').AsInteger;
          Rad.islemTarihi := FormattedTarih(DATALAR.ADO_SQL2.fieldbyname('islemTarihi').AsString);
          Rad.drTescilNo := DATALAR.ADO_SQL2.fieldbyname('drTescilNo').AsString;
          Rad.bransKodu := DATALAR.ADO_SQL2.fieldbyname('bransKodu').AsString;
          Rad.hizmetSunucuRefNo := DATALAR.ADO_SQL2.fieldbyname('hizmetSunucuRefNo').AsString;
          Rad.ozelDurum := DATALAR.ADO_SQL2.fieldbyname('ozeldurum').AsString;
          Rad.sonuc := DATALAR.ADO_SQL2.fieldbyname('sonuc').AsString;
          Rad.birim := DATALAR.ADO_SQL2.fieldbyname('birim').AsString;
          Rad.aciklama := DATALAR.ADO_SQL2.fieldbyname('aciklama').AsString;
          Rad.modality := DATALAR.ADO_SQL2.fieldbyname('modality').AsString;
          Rad.accession := DATALAR.ADO_SQL2.fieldbyname('accession').AsString;
         // Rad.ayniFarkliKesi := DATALAR.ADO_SQL2.fieldbyname('ayniFarkliKesi').AsString;
          FRad[i] := Rad;
          datalar.ADO_SQL2.Next;
      end;
      result := Frad;
      SetLength(FRad,0);

end;

function RadM3_satir(_takip : TDigerIslemTalep) : Array_Of_TetkikveRadyolojiBilgisiDVO;
var
  sql , raporTakipNo : string;
  i ,j, dizi : integer;
  Rad : HizmetKayitIslemleriws.TetkikveRadyolojiBilgisiDVO;
  FRad : Array_Of_TetkikveRadyolojiBilgisiDVO;
begin
      dizi :=  1;
      SetLength(FRad ,dizi);

      for i := 0 to dizi - 1 do
      begin
          Rad := HizmetKayitIslemleriws.TetkikveRadyolojiBilgisiDVO.Create;
          Rad.sutKodu := _takip.sutKodu;
          Rad.adet := 1;
          Rad.islemTarihi := _takip.islemTarihi;
          Rad.drTescilNo := _takip.drTescilNo;
          Rad.bransKodu := _takip.bransKodu;
          Rad.hizmetSunucuRefNo := _takip.hizmetSunucuRefNo;
          FRad[i] := Rad;

      end;
      result := Frad;
      SetLength(FRad,0);

end;


function TaniM3(_takip : string) : HizmetKayitIslemleriws.Array_Of_TaniBilgisiDVO;
var
  sql , raporTakipNo : string;
  i ,j, dizi : integer;
  Tani : HizmetKayitIslemleriws.TaniBilgisiDVO;
  FTani : HizmetKayitIslemleriws.Array_Of_TaniBilgisiDVO;
begin

      sql := 'exec sp_MedulaDataset_Kl_M3 ' + #39 + _takip + #39 + ',' + #39 + 'Tani' + #39;
      datalar.QuerySelect(datalar.ADO_SQL2,sql);
      if DATALAR.ADO_SQL2.Eof then
      begin
         result := nil;
         exit;
      End;

      dizi :=  datalar.ADO_SQL2.RecordCount;
      SetLength(FTani ,dizi);

      for i := 0 to dizi - 1 do
      begin
          tani := HizmetKayitIslemleriws.TaniBilgisiDVO.Create;
          tani.taniKodu := DATALAR.ADO_SQL2.fieldbyname('TaniKodu').AsString;
          tani.birincilTani := DATALAR.ADO_SQL2.fieldbyname('birincilTani').AsString;
          tani.taniTipi := DATALAR.ADO_SQL2.fieldbyname('tanitip').AsString;
          tani.hizmetSunucuRefNo := DATALAR.ADO_SQL2.fieldbyname('hizmetSunucuRefNo').AsString;
          Ftani[i] := tani;
          datalar.ADO_SQL2.Next;
      end;
      result := Ftani;
      SetLength(Ftani,0);

end;



function DigerIslemBilgileriM3(_takip : string) : Array_Of_DigerIslemBilgisiDVO;
var
  sql , raporTakipNo : string;
  i ,j, dizi : integer;
  DigerIslemEleman : HizmetKayitIslemleriws.DigerIslemBilgisiDVO;
  FDigerIslemler : Array_Of_DigerIslemBilgisiDVO;

function RaporTakipNoBul(butkodu : string) : string;
var
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'exec sp_MedulaDataset_kl_M3 ' + #39 + _takip + #39 + ',' + QuotedStr('Rapor_' + butkodu);
    datalar.QuerySelect(ado,sql);
    if not ado.Eof
    Then
      result := ado.fieldbyname('raporTakipNo').AsString
    Else
      result := '';
    ado.close;
  finally
    ado.free;
  end;
end;

begin
      sql := 'exec sp_MedulaDataset_Kl_M3 ' + #39 + _takip + #39 + ',' + #39 + 'Diger' + #39;
      datalar.QuerySelect(datalar.ADO_SQL2,sql);
      if DATALAR.ADO_SQL2.Eof then exit;

      dizi :=  datalar.ADO_SQL2.RecordCount;
      SetLength(FDigerIslemler ,dizi);
  //    TahlilElemanlar := TahlilBilgisiDVO.Create;
      for i := 0 to dizi - 1 do
      begin
        DigerIslemEleman := HizmetKayitIslemleriws.DigerIslemBilgisiDVO.Create;
        DigerIslemEleman.sutKodu := DATALAR.ADO_SQL2.fieldbyname('butKodu').AsString;
        DigerIslemEleman.adet := DATALAR.ADO_SQL2.fieldbyname('adet').AsInteger;
        DigerIslemEleman.islemTarihi := FormattedTarih(DATALAR.ADO_SQL2.fieldbyname('islemTarihi').AsString);
        DigerIslemEleman.drTescilNo := DATALAR.ADO_SQL2.fieldbyname('drTescilNo').AsString;
        DigerIslemEleman.bransKodu := DATALAR.ADO_SQL2.fieldbyname('bransKodu').AsString;
        DigerIslemEleman.hizmetSunucuRefNo := DATALAR.ADO_SQL2.fieldbyname('hizmetSunucuRefNo').AsString;
        DigerIslemEleman.raporTakipNo := DATALAR.ADO_SQL2.fieldbyname('raporTakipNo').AsString;
        //raporTakipNoBul(DATALAR.ADO_SQL2.fieldbyname('butKodu').AsString);
        DigerIslemEleman.ozelDurum := DATALAR.ADO_SQL2.fieldbyname('ozeldurum').AsString;
       // DigerIslemEleman.ayniFarkliKesi := DATALAR.ADO_SQL2.fieldbyname('ayniFarkliKesi').AsString;
        FDigerIslemler[i] := DigerIslemEleman;
        Datalar.ADO_SQL2.Next;
      end;
      result := FDigerIslemler;
      SetLength(FDigerIslemler,0);

    //  TahlilElemanlar.Free;
end;


function DigerIslemBilgileriYatisM3_Satir(_takip : TDigerIslemTalep) : HizmetKayitIslemleriws.Array_Of_HastaYatisBilgisiDVO;
var
  sql , raporTakipNo : string;
  i ,j, dizi : integer;
  YatisBilgisi : HizmetKayitIslemleriws.HastaYatisBilgisiDVO;
  FYatisBilgisi : HizmetKayitIslemleriws.Array_Of_HastaYatisBilgisiDVO;
begin
      dizi :=  1;
      SetLength(FYatisBilgisi ,dizi);

      for i := 0 to dizi - 1 do
      begin
        YatisBilgisi := HizmetKayitIslemleriws.HastaYatisBilgisiDVO.Create;
        YatisBilgisi.sutKodu := '510120';
        YatisBilgisi.yatisBaslangicTarihi := _takip.islemTarihi;
        YatisBilgisi.yatisBitisTarihi := _takip.islemTarihi;
        YatisBilgisi.drTescilNo := _takip.drTescilNo;
        YatisBilgisi.bransKodu := _takip.bransKodu;
        YatisBilgisi.hizmetSunucuRefNo := 'Y'+_takip.hizmetSunucuRefNo;
        FYatisBilgisi[i] := YatisBilgisi;
      end;
      result := FYatisBilgisi;
      SetLength(FYatisBilgisi,0);


end;

function DigerIslemBilgileriM3_Satir(_takip : TDigerIslemTalep) : Array_Of_DigerIslemBilgisiDVO;
var
  sql , raporTakipNo : string;
  i ,j, dizi : integer;
  DigerIslemEleman : HizmetKayitIslemleriws.DigerIslemBilgisiDVO;
  FDigerIslemler : Array_Of_DigerIslemBilgisiDVO;
  YatisBilgisi : HizmetKayitIslemleriws.HastaYatisBilgisiDVO;
  FYatisBilgisi : HizmetKayitIslemleriws.Array_Of_HastaYatisBilgisiDVO;
begin
      dizi :=  1;
      SetLength(FDigerIslemler ,dizi);
      for i := 0 to dizi - 1 do
      begin
        DigerIslemEleman := HizmetKayitIslemleriws.DigerIslemBilgisiDVO.Create;
        DigerIslemEleman.sutKodu := _takip.sutKodu;
        DigerIslemEleman.adet := 1;
        DigerIslemEleman.islemTarihi := _takip.islemTarihi;
        DigerIslemEleman.drTescilNo := _takip.drTescilNo;
        DigerIslemEleman.bransKodu := _takip.bransKodu;
        DigerIslemEleman.hizmetSunucuRefNo := _takip.hizmetSunucuRefNo;
        DigerIslemEleman.raporTakipNo := _takip.raporTakipNo;
        DigerIslemEleman.ozelDurum := '';
        FDigerIslemler[i] := DigerIslemEleman;
      end;
      result := FDigerIslemler;
      SetLength(FDigerIslemler,0);

end;

end.
