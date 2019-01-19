unit PersonelEgitimFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,jpeg,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,
  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
   dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel, cxcalendar,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxDropDownEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, cxPC, cxImageComboBox,dxLayoutContainer, cxImage,ShellApi,
  cxCurrencyEdit,CSGBservice, dxSkinBlack, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinMcSkin, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue;



type
  TfrmPersonelEgitim = class(TGirisForm)
    EgitimPersonel: TcxGridKadir;
    GridList: TcxGridDBBandedTableView;
    GridListMuayeneSoru: TcxGridDBBandedColumn;
    GridListGrupKod: TcxGridDBBandedColumn;
    EgitimPersonelLevel1: TcxGridLevel;
    PersonelList: TListeAc;
    PopupMenu1: TPopupMenu;
    Y1: TMenuItem;
    T1: TMenuItem;
    S1: TMenuItem;
    L1: TMenuItem;
    Egitimci: TcxGridKadir;
    EgitimciList: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    EgitimciListid: TcxGridDBBandedColumn;
    EgitimciListegitimciTuru: TcxGridDBBandedColumn;
    EgitimciListegitimciUnvan: TcxGridDBBandedColumn;
    EgitimciListegitimciTC: TcxGridDBBandedColumn;
    EgitimciListegitimciAdiSoyadi: TcxGridDBBandedColumn;
    Egitimciler: TListeAc;
    EgitimGrid: TcxGridKadir;
    EgitimGridSatirlar: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    EgitimGridSatirlarid: TcxGridDBBandedColumn;
    EgitimGridSatirlarBaslamaTarihi: TcxGridDBBandedColumn;
    EgitimGridSatirlarBitisTarihi: TcxGridDBBandedColumn;
    EgitimGridSatirlartanimi: TcxGridDBBandedColumn;
    EgitimGridSatirlarSirketTanimi: TcxGridDBBandedColumn;
    EgitimGridSatirlarEgitimBilgi: TcxGridDBBandedColumn;
    EgitimGridSatirlarEgitimCSGBGonderimSonuc: TcxGridDBBandedColumn;
    miEgitimBilgisiniIBYSyeGonder: TMenuItem;
    EgitimAltDetayGrid: TcxGridKadir;
    EgitimAltDetayGridSatir: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    EgitimAltDetayGridSatiregitimID: TcxGridDBBandedColumn;
    EgitimAltDetayGridSatirkod: TcxGridDBBandedColumn;
    EgitimAltDetayGridSatirid: TcxGridDBBandedColumn;
    EgitimAltDetayGridSatirtanimi: TcxGridDBBandedColumn;
    EgitimAltDetayGridSatirsure: TcxGridDBBandedColumn;
    Egitimler: TListeAc;
    foto2: TcxImage;
    Foto1: TcxImage;
    GridListColumn1: TcxGridDBBandedColumn;
    GridListColumn2: TcxGridDBBandedColumn;
    GridListColumn3: TcxGridDBBandedColumn;
    btnEgitimGonderTek: TcxButtonKadir;
    btnEgitimGonderTekImzager: TcxButtonKadir;
    EgitimGridSatirlarColumn1: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure SayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
       var AllowChange: Boolean);
    procedure SayfalarChange(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure PropertiesEditValueChanged(Sender: TObject);override;
    procedure EgitimAltDetay;
    procedure Foto;
    procedure Foto1PropertiesCustomClick(Sender: TObject);
    procedure BeforePost(DataSet: TDataSet);
    function EgitimImzala(pin,egitim,cardType : string): string;
    procedure EgitimPersonelResize(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetEgitimPersonelSQL : String;
    function GetEgitimEgitimciSQL: String;
    procedure ResetDetayDataset;
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
    function EgitimKaydetCSGB(egitim : egitimBilgisi ; pin,cardType,_xml_,_xmlSOAP_,egitimID : string) : egitimBilgisiCevap;
 //   function EgitimKaydetCSGB(egitim : cokluEgitimBilgisi ; pin,cardType,_xml_,_xmlSOAP_ : string) : cokluEgitimCevapDVO; overload;
    function EgitimKaydetMASTER(egitim : egitimBilgisi ; pin,cardType,_xml_,_xmlSOAP_,egitimID : string) : string;

  end;


type
  TEgitimImzala = procedure(egitim : PWideChar;
                            var imzaliEgitim : PWideChar;
                            pin : string;
                            cardType : string;
                            var sonuc : PWideChar); stdcall;

const _TableName_ = 'Egitimler';
      formGenislik = 600;
      formYukseklik = 600;

      LIB_DLL2 = 'D:\Projeler\VS\c#\ListeDLL_Cades\ListeDLL\bin\x86\Debug\NoktaDLL.dll';
    //  LIB_DLL2 = 'NoktaDLL.dll';

var
  frmPersonelEgitim: TfrmPersonelEgitim;


implementation

uses StrUtils, TransUtils;

{$R *.dfm}

function TfrmPersonelEgitim.EgitimImzala(pin,egitim,cardType : string): string;
var
  imzala : TEgitimImzala;
  dllHandle: Cardinal;
  receteId,TesisKodu: integer;
  recete,doktorKullanici,doktorsifre : string;
  doktorTc : string;
  ss,imzali : PWideChar;
  sql : string;
begin
  ss := '';
  imzali := '';
  dllHandle := LoadLibrary(LIB_DLL2);
  try
    if dllHandle = 0 then exit;

    @imzala := findMethod(dllHandle, 'EgitimImzala');
    if addr(imzala) <> nil then
    imzala(pwidechar(egitim),imzali,pin,cardType,ss);

    EgitimImzala := imzali;

    if not Assigned(imzala) then
      raise Exception.Create(LIB_DLL + ' i�ersinde EgitimImzala bulunamad�!');

  finally
    FreeLibrary(dllHandle);
  end;
end;


function TfrmPersonelEgitim.EgitimKaydetCSGB(egitim : egitimBilgisi ; pin,cardType,_xml_,_xmlSOAP_,egitimID : string) : egitimBilgisiCevap;
var
  sayi,EgitimString : string;
  Cvp : egitimBilgisiCevap;
begin
    Cvp := egitimBilgisiCevap.Create;
  //  EgitimString := EgitimVerisiXML(egitim);

//  DurumGoster(True,False,'E�itim Bilgisi �mzalan�yor...L�tfen Bekleyiniz...',1);
    EgitimString := EgitimImzala(pin,_xml_,cardType);

    DurumGoster(True,False,'E�itim Bilgisi G�nderiliyor...L�tfen Bekleyiniz...',1);
    try
      Application.ProcessMessages;
      datalar.CSGBsoap.URL := 'http://213.159.30.6/CSGBservice.asmx';
      Cvp := (datalar.CSGBsoap as CSGBServiceSoap).egitimKaydetSOAP(egitim,EgitimString,_xml_);
      EgitimKaydetCSGB := Cvp;
      if Cvp.status = 200
      Then begin
        ShowMessageSkin('Sorgu No:' + Cvp.sorguNo,'','','info');
      end
      else begin
        ShowMessageSkin(Cvp.message_,'','','info');
      //  Cvp.sorguNo := egitim.sorguNo;
      end;

      EgitimKaydetCSGBCvpBilgiGuncelle(egitimID,Cvp.message_,Cvp.sorguNo);

    except
      on E : Exception do
      begin
        ShowmessageSkin(E.Message,'','','info');
      end;
    end;
end;


function TfrmPersonelEgitim.EgitimKaydetMASTER(egitim : egitimBilgisi ; pin,cardType,_xml_,_xmlSOAP_,egitimID : string) : string;
var
  sayi,EgitimString : string;
  Cvp : string;
begin

    EgitimString := EgitimImzala(pin,_xml_,cardType);

    DurumGoster(True,False,'E�itim Bilgisi Kaydediliyor...L�tfen Bekleyiniz...',1);
    try
      Application.ProcessMessages;
      datalar.CSGBsoap.URL := 'http://213.159.30.6/CSGBservice.asmx';
      Cvp := (datalar.CSGBsoap as CSGBServiceSoap).egitimKaydetMASTER(egitim,EgitimString,_xml_,datalar._database,datalar.osgbKodu);
      EgitimKaydetMASTER := Cvp;
      if copy(Cvp,1,4) = '0000'
      Then begin
        ShowMessageSkin(Cvp,'','','info');
      end
      else begin
        ShowMessageSkin(Cvp,'','','info');
      //  Cvp.sorguNo := egitim.sorguNo;
      end;


    except
      on E : Exception do
      begin
        ShowmessageSkin(E.Message,'','','info');
      end;
    end;
end;

 (*
function TfrmPersonelEgitim.EgitimKaydetCSGB(egitim : cokluEgitimBilgisi ; pin,cardType,_xml_,_xmlSOAP_ : string) : cokluEgitimCevapDVO;
var
  sayi,EgitimString : string;
  Cvp : cokluEgitimCevapDVO;
begin
    Cvp := cokluEgitimCevapDVO.Create;
  //  EgitimString := EgitimVerisiXML(egitim);

    EgitimString := EgitimImzala(pin,_xml_,cardType);
    try
      DurumGoster(True,False,'E�itim Bilgisi G�nderiliyor...L�tfen Bekleyiniz...',1);
      Application.ProcessMessages;
      datalar.CSGBsoap.URL := 'http://213.159.30.6/CSGBservice.asmx';
      Cvp := (datalar.CSGBsoap as CSGBServiceSoap).egitimKaydetCoklu(egitim,EgitimString);
      EgitimKaydetCSGB := Cvp;
      if Cvp.status = 200
      Then begin
        ShowMessageSkin('Sorgu No:' + intTostr(Cvp.sorguNo),'','','info');
      end
      else begin
        ShowMessageSkin(Cvp.message_,'','','info');
        Cvp.sorguNo := egitim.sorguNo;
      end;

      EgitimKaydetCSGBCvpBilgiGuncelle('0',Cvp.message_,'');

    except
      on E : Exception do
      begin
        ShowmessageSkin(E.Message,'','','info');
      end;
    end;
end;
*)

procedure TfrmPersonelEgitim.EgitimPersonelResize(Sender: TObject);
begin
  inherited;
 // if TcxGridDBBandedTableView(TcxGridKadir(Sender)).Bands.Count = 1
 // Then
//  GridList.Bands [0].Width := EgitimPersonel.Width-5;
end;

procedure TfrmPersonelEgitim.BeforePost(DataSet: TDataSet);
var
  BPuan : integer;
begin
  BPuan := TcxTextEdit(FindComponent('EgitimBasariPuan')).EditValue;
  if((EgitimPersonel.Dataset.FieldByName('onTest').AsInteger +
     EgitimPersonel.Dataset.FieldByName('sonTest').AsInteger) / 2) >= BPuan
  Then
   EgitimPersonel.Dataset.FieldByName('durum').AsInteger := 1
  Else
   EgitimPersonel.Dataset.FieldByName('durum').AsInteger := 0;
end;

procedure TfrmPersonelEgitim.Foto;
var
  g : TGraphic;
begin
   Ado_Foto.Close;
   Ado_Foto.SQL.Text := 'select * from EgitimFoto where egitimID = ' +
                               QuotedStr(TcxButtonEditKadir(FindComponent('id')).Text);
   Ado_Foto.Open;


   g := TJpegimage.Create;
   try
    if Ado_Foto.FieldByName('Foto1').AsVariant <> Null
    Then begin
      g.Assign(Ado_Foto.FieldByName('Foto1'));
      TcxImage(FindComponent('Foto1')).Picture.Assign(g);
    end
    else
    TcxImage(FindComponent('Foto1')).Picture.Assign(nil);

    if Ado_Foto.FieldByName('Foto2').AsVariant <> Null
    Then begin
      g.Assign(Ado_Foto.FieldByName('Foto2'));
      TcxImage(FindComponent('Foto2')).Picture.Assign(g);
    end
    else
    TcxImage(FindComponent('Foto2')).Picture.Assign(nil);

   finally
     g.Free;
   end;

end;
procedure TfrmPersonelEgitim.Foto1PropertiesCustomClick(Sender: TObject);
var
 ImageFileName : string;
begin
  inherited;
  TcxImage(sender).Picture.SaveToFile('tempBrowser.jpg');
  ImageFileName := 'tempBrowser.jpg';
  ShellExecute(Handle,
               'open',
               'C:\Windows\explorer.exe',
               PwideChar(ImageFileName),
               nil,
               SW_SHOWNORMAL);
end;

procedure TfrmPersonelEgitim.EgitimAltDetay;
begin
  EgitimAltDetayGrid.Dataset.Connection := Datalar.ADOConnection2;
  EgitimAltDetayGrid.Dataset.Active := False;
  EgitimAltDetayGrid.Dataset.SQL.Text := 'select * from EgitimAltDetay where egitimID = ' +
                                         ifThen(vartostr(TcxButtonEditKadir(FindComponent('id')).EditValue) = '','0',vartostr(TcxButtonEditKadir(FindComponent('id')).EditValue));
  EgitimAltDetayGrid.Dataset.Active := True;

end;

procedure TfrmPersonelEgitim.PropertiesEditValueChanged(Sender: TObject);
var
  xDeger ,where: String;
begin
  inherited;
(*
  if not sametext (TcxImageComboKadir(Sender).name, 'EgitimTuru') then Exit;
  TcxCheckGroupKadir(FindComponent('Egitimkod')).Clear;
  xDeger := vartoStr(TcxImageComboKadir(FindComponent('EgitimTuru')).EditValue);
  if (xDeger <> '5') and (not IsNull (xDeger)) then
    TcxCheckGroupKadir(FindComponent('Egitimkod')).Filter := ' grup = ' + xDeger
   else
    TcxCheckGroupKadir(FindComponent('Egitimkod')).Filter := '';
    *)

 if (vartostr(TcxImageComboKadir(FindComponent('EgitimTuru')).EditingValue) = '') or
    (TcxImageComboKadir(FindComponent('EgitimTuru')).Text = 'T�m�')
 then
  where := ''
 else
  where := ' where grup = ' +
                     vartostr(TcxImageComboKadir(FindComponent('EgitimTuru')).EditingValue);

 if TcxImageComboKadir(Sender).name = 'EgitimTuru'
 Then
  Egitimler.Table := '(select * from Egitim_Tnm ' + where + ' ) egitimler';

end;

procedure TfrmPersonelEgitim.ButtonClick(Sender: TObject);
var
  i : Integer;
  sTmp,sql: String;
  ado : TADOQuery;
  Lst : ArrayListeSecimler;
  L : ListeSecimler;
  open : TOpenDialog;
  filename,imageField,egitimXML,pin,cardType,_xml_ ,_xmlSOAP_: string;
  Jpeg1 : TJPEGImage;
  Image : TcxImage;
  Blob : TADOBlobStream;
  Veri : egitimBilgisi;
//  VeriCoklu : cokluEgitimBilgisi;
begin

  if TcxButtonEditKadir(FindComponent('id')).Text <> ''
  Then
  if TcxButtonKadir (Sender).ButtonName = 'btnEgitimler' then
  begin
    Lst := Egitimler.ListeGetir;
    if Length(Lst) > 0
    then begin
     for L in Lst do
      begin
        if EgitimAltDetayGrid.Dataset.locate('kod',L.kolon1,[]) then Continue;
        EgitimAltDetayGrid.Dataset.Append;
        EgitimAltDetayGrid.Dataset.FieldByName('egitimID').AsString := TcxButtonEditKadir (FindComponent('id')).Text;
        EgitimAltDetayGrid.Dataset.FieldByName('kod').AsString := L.kolon1;
        EgitimAltDetayGrid.Dataset.FieldByName('tanimi').AsString := L.kolon2;
        EgitimAltDetayGrid.Dataset.FieldByName('sure').AsString := L.kolon3;
        EgitimAltDetayGrid.Dataset.Post;
      end;
    end;
  end;

  if pos('btnFoto',TcxButtonKadir(Sender).ButtonName) > 0 then
  begin
      imageField := TcxButtonKadir(Sender).ButtonName;
      imageField := StringReplace(imageField,'btn','',[rfReplaceAll]);

      open := TOpenDialog.Create(self);
      try
        if not open.Execute then Exit;
        filename := open.FileName;
        TcxImage(FindComponent(imageField)).Picture.LoadFromFile(filename);
        Image := TcxImage(FindComponent(imageField));
        StretchImage(Image,stHerDurumdaStretch,400,300);
        Jpeg1 := TJPEGImage.Create;
        try
          Jpeg1.Assign(Image.Picture.Bitmap);
          TcxImage(FindComponent(imageField)).Clear;
          TcxImage(FindComponent(imageField)).Picture.Assign(Jpeg1);
        finally
          Jpeg1.Free;
        end;
      finally
        open.Free;
      end;

      if not Ado_Foto.Eof
       then Ado_Foto.Edit
       Else begin
        Ado_Foto.Append;
        Ado_Foto.FieldByName('egitimID').AsString := TcxButtonEditKadir(FindComponent('id')).Text;
       end;

      if Assigned(TcxImage(FindComponent(imageField)).Picture.Graphic)
      then begin
        Blob := TADOBlobStream.Create(TBlobField(Ado_Foto.FieldByName(imageField)),bmwrite);
        try
          //datalar.Risk.Image.Picture.SaveToFile('dd.jpg');
          TcxImage(FindComponent(imageField)).Picture.Graphic.SaveToStream(Blob);
          Blob.Position := 0;
          TBlobField(Ado_Foto.FieldByName(imageField)).LoadFromStream(Blob);
          Ado_Foto.Post;
        finally
          //Blob.Free;
        end;
      end;

  end;


  if TcxButtonKadir(Sender).ButtonName = 'btnEgitimGonderTek' then
  begin
       if varToStr(TcxButtonEditKadir(FindComponent('id')).EditingValue) = '' then exit;
       veri := EgitimVerisi(TcxButtonEditKadir(FindComponent('id')).Text,pin,cardType,_xml_,_xmlSOAP_);
       EgitimKaydetCSGB(veri,pin,cardType,_xml_,_xmlSOAP_,TcxButtonEditKadir(FindComponent('id')).Text);
//      EgitimKaydetMASTER(veri,pin,cardType,_xml_,_xmlSOAP_,TcxButtonEditKadir(FindComponent('id')).Text);


       DurumGoster(False,False,'',1);
       (*
       if datalar.CSGBImza = 'Imzager' then
       begin
          DeleteFile('EgitimDVO256Hash.txt.p7s');
          DeleteFile('EgitimDVO256Hash.txt');
          DeleteFile('EgitimDVO.txt.p7s');
          //EgitimHash(_xml_);
          ShellExecute(Handle,
                       'open',
                       'C:\Program Files\Imzager\Imzager.exe',
                       PwideChar(''),
                       nil,
                       SW_SHOWNORMAL);
         btnEgitimGonderTekImzager.Enabled := True;
       end
       else
       begin
        EgitimKaydetCSGB(veri,pin,cardType,_xml_);
      end;
      *)

  end;

  if TcxButtonKadir (Sender).ButtonName = 'btnEgitimListele' then
  begin
    sql :=
         ' Select e.id, e.BaslamaTarihi,e.BitisTarihi, et.tanimi tanimi, s.Tanimi SirketTanimi ,'+
          ' dbo.egitimCheckStateToTanim(e.EgitimKod,e.EgitimTuru) EgitimBilgi,'+
          ' EgitimCSGBGonderimSonuc,sorguNo '+
          ' from Egitimler e  left join egitimGrup_tnm et on et.Kod = e.EgitimTuru '+
          ' left outer join SIRKETLER_TNM s on s.SirketKod = e.SirketKod ';
     //     ' where e.BaslamaTarihi between ' +

    EgitimGrid.Dataset.Connection := datalar.ADOConnection2;
    EgitimGrid.Dataset.Active := false;
    EgitimGrid.Dataset.SQL.Text := sql;
    EgitimGrid.Dataset.Active := True;

  end
  else
  if TcxButtonKadir (Sender).ButtonName = 'btnEgitimciSil' then
  begin
   Egitimci.Dataset.Delete;
  end
  else
  if TcxButtonKadir (Sender).ButtonName = 'btnEgitimciEkle' then
  begin
    if Egitimci.Dataset.Eof then exit;

    if IsNull (vartostr(TcxTextEditKadir(FindComponent('EgitimciTc')).EditingValue)) then
    begin
      ShowMessageSkin('TC Kimlik No Bo� Olamaz','L�tfen Kontrol Ediniz','','info');
      TcxCustomEdit(FindComponent('EgitimciTc')).SetFocus;
      Exit;
    end;
    if IsNull (vartostr(TcxTextEditKadir(FindComponent('egitimciAdiSoyadi')).EditingValue)) then
    begin
      ShowMessageSkin('Ad / Soyad bilgisi bo� olamaz','L�tfen Kontrol Ediniz','','info');
      TcxCustomEdit(FindComponent('egitimciAdiSoyadi')).SetFocus;
      exit;
    end;
    if not TCKontrol(vartoStr(TcxTextEditKadir(FindComponent('EgitimciTc')).EditingValue)) Then
    begin
      ShowMessageSkin('TC Kimlik No Hatal�','L�tfen Kontrol Ediniz','','info');
      TcxCustomEdit(FindComponent('EgitimciTc')).SetFocus;
      exit;
    end;
      Egitimci.Dataset.Append;
      try
        Egitimci.Dataset.FieldByName('egitimciUnvan').AsString := vartostr(TcxTextEditKadir(FindComponent('EgitimciUnvan')).EditingValue);
        if IsNull (vartostr(TcxTextEditKadir(FindComponent('EgitimciTc')).EditingValue)) then
          Egitimci.Dataset.FieldByName('egitimciTC').Clear
         else
          Egitimci.Dataset.FieldByName('egitimciTC').AsString := vartostr(TcxTextEditKadir(FindComponent('EgitimciTc')).EditingValue);
        if IsNull (vartostr(TcxTextEditKadir(FindComponent('egitimciAdiSoyadi')).EditingValue)) then
          Egitimci.Dataset.FieldByName('egitimciAdiSoyadi').Clear
         else
          Egitimci.Dataset.FieldByName('egitimciAdiSoyadi').AsString := vartostr(TcxTextEditKadir(FindComponent('egitimciAdiSoyadi')).EditingValue);
        Egitimci.Dataset.FieldByName('Egitimid').AsString := TcxButtonEditKadir (FindComponent('id')).Text;
        Egitimci.Dataset.FieldByName('egitimciTuru').AsString := '2';
        Egitimci.Dataset.Post;
        ShowMessageSkin('E�itimci listeye eklendi. Ayn� e�itimciyi art�k listeden se�ebilirsiniz.', '', '', 'info');
     except
        Egitimci.Dataset.Cancel;
        raise;
      end;
    Egitimci.Dataset.Active := False;
    Egitimci.Dataset.Active := True;
  end
  else
  if TcxButtonKadir (Sender).ButtonName = 'btnEgitimciListesi' then
  begin
    if Egitimci.Dataset.Eof then exit;
    if IsNull (TcxButtonEditKadir (FindComponent('id')).Text) then
    begin
      ShowMessageSkin('Bu i�lem i�in e�itim kayd� se�meniz ya da ekrandaki bilgileri kaydetmeniz gerekir.', '', '', 'info');
      Exit;
    end;
    Egitimciler.Where :=
    '  durum = ''Aktif''';
    datalar.ButtonEditSecimlist := Egitimciler.ListeGetir;
    if length (datalar.ButtonEditSecimlist) > 0 then
    begin
      for i := Low (datalar.ButtonEditSecimlist) to High (datalar.ButtonEditSecimlist) do
      begin
        Egitimci.Dataset.Append;
        try
          Egitimci.Dataset.FieldByName('egitimciUnvan').AsString := DATALAR.ButtonEditSecimlist [i].kolon1;
          if IsNull (DATALAR.ButtonEditSecimlist [i].kolon2) then
            Egitimci.Dataset.FieldByName('egitimciTC').Clear
           else
            Egitimci.Dataset.FieldByName('egitimciTC').AsString := DATALAR.ButtonEditSecimlist [i].kolon2;
          if IsNull (DATALAR.ButtonEditSecimlist [i].kolon3) then
            Egitimci.Dataset.FieldByName('egitimciAdiSoyadi').Clear
           else
            Egitimci.Dataset.FieldByName('egitimciAdiSoyadi').AsString := DATALAR.ButtonEditSecimlist [i].kolon3;
          Egitimci.Dataset.FieldByName('Egitimid').AsString := TcxButtonEditKadir (FindComponent('id')).Text;
          Egitimci.Dataset.FieldByName('egitimciTuru').AsString := '1';
          Egitimci.Dataset.Post;
        except
          Egitimci.Dataset.Cancel;
          raise;
        end;
      end;
      Egitimci.Dataset.Active := False;
      Egitimci.Dataset.Active := True;
    end;

  end
  else
  if TcxButtonKadir (Sender).ButtonName = 'btnPersonelEkle' then
  begin
    if IsNull (TcxButtonEditKadir (FindComponent('id')).Text) then
    begin
      ShowMessageSkin('Bu i�lem i�in e�itim kayd� se�meniz ya da ekrandaki bilgileri kaydetmeniz gerekir.', '', '', 'info');
      Exit;
    end;
    PersonelList.Where :=
      'Aktif = 1 '+
      'and SirketKod = ' + QuotedStr(varTOstr(TcxImageComboKadir((FindComponent('SirketKod'))).EditingValue)) +
      'and not exists (select 1 '+
      'from Personel_Egitim pe '+
      'where pe.EgitimId '+ IfThen (IsNull (TcxButtonEditKadir (FindComponent('id')).Text), 'is NULL', '= ' +  TcxButtonEditKadir (FindComponent('id')).Text) + ' '+
      'and pe.PersonelDosyaNo = PersonelKartview.DosyaNo)';
    datalar.ButtonEditSecimlist := PersonelList.ListeGetir;
    if length (datalar.ButtonEditSecimlist) > 0 then
    begin
      for i := Low (datalar.ButtonEditSecimlist) to High (datalar.ButtonEditSecimlist) do
      begin
        EgitimPersonel.Dataset.Append;
        try
          EgitimPersonel.Dataset.FieldByName('PersonelDosyaNo').AsString := DATALAR.ButtonEditSecimlist [i].kolon1;
          EgitimPersonel.Dataset.FieldByName('Egitimid').AsString := TcxButtonEditKadir (FindComponent('id')).Text;
          EgitimPersonel.Dataset.Post;
        except
          EgitimPersonel.Dataset.Cancel;
          raise;
        end;
      end;
      EgitimPersonel.Dataset.Active := False;
      EgitimPersonel.Dataset.Active := True;
    end;
  end
  else if TcxButtonKadir (Sender).ButtonName = 'btnPersonelSil' then
  begin
    sTmp := EgitimPersonel.Dataset.FieldByName ('id').AsString;
    if not IsNull (sTmp) then
    begin
      if ShowMessageSkin ('Se�illi Personeli Silmek �stiyor Musunuz ?', '', '', 'conf') <> mrYes then Exit;
      i := EgitimPersonel.Dataset.RecNo;
      datalar.QueryExec(ado, 'delete from Personel_Egitim where id = '+ sTmp);
      EgitimPersonel.Dataset.Active := False;
      EgitimPersonel.Dataset.Active := True;
      if i > EgitimPersonel.Dataset.RecordCount then i := EgitimPersonel.Dataset.RecordCount;
      if i > 0 then EgitimPersonel.Dataset.RecNo := i;
    end;

  end;
end;

procedure TfrmPersonelEgitim.cxButtonCClick(Sender: TObject);
var
  Ado,ado1 : TADOQuery;
  sql : string;
  TopluDataset : TDataSetKadir;
begin
  inherited;
  if IsNull (TcxButtonEditKadir (FindComponent('id')).Text) then
  begin
    ShowMessageSkin('Bu i�lemden �nce E�itim Bilgisini kaydetmeniz gerekir.', '', '', 'info');
    Exit;
  end;
  ado := TADOQuery.Create(nil);
  try
    ado1 := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;
      ado1.Connection := datalar.ADOConnection2;
      if TMenuItem (Sender).Tag = -40 then
      begin
        showmessageSkin ('Servisler aktif de�il ya da servislere ula��lam�yor', '', '', 'info');
        Exit;
      end;
      sql := 'sp_frmPersonelEgitim ' + TcxButtonEditKadir(FindComponent('id')).Text;
      if TMenuItem (Sender).Tag = -20 then sql := sql + ', ' + QuotedStr (EgitimPersonel.Dataset.FieldByName('PersonelDosyaNo').AsString);

      datalar.QuerySelect(ado, sql);
      TopluDataset.Dataset0 := ado;
      TopluDataset.Dataset0.Name := 'PersonelEgitimleri';

     (*
      sql := 'declare @ek varchar(max),@et int ' +
             ' select @ek = EgitimKod,@et = EgitimTuru from egitimler where id = ' + TcxButtonEditKadir(FindComponent('id')).Text +
             ' select datavalue Egitimler from dbo.strtotable(dbo.egitimCheckStateToTanim(@ek,@et),'','') where datavalue <> ''''';
      datalar.QuerySelect(ado1, sql);
      TopluDataset.Dataset1 := ado1;
      *)
      if TMenuItem (Sender).Tag = -30 then
        PrintYap('004','E�itime Kat�lan Personel Listesi','',TopluDataset,pTNone)
       else
        PrintYap('005','Personel E�itimi Sertifikas�','',TopluDataset,pTNone);
    finally
      ado1.free;
    end;
  finally
    ado.free;
  end;
end;

procedure TfrmPersonelEgitim.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
var
  obje : TComponent;
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
    EgitimGrid.Enabled := True;
    FormInputZorunluKontrolPaint(self,$00FCDDD1);

  if datalar.CSGBImza = 'Imzager' then
  begin
   btnEgitimGonderTekImzager.Enabled := False;
  end;

  end;
  //if TcxButtonEditKadir(FindComponent('id')).Text = '' then exit;
  ResetDetayDataset;
end;

procedure TfrmPersonelEgitim.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmPersonelEgitim.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmPersonelEgitim.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmPersonelEgitim.FormCreate(Sender: TObject);
var
  List : TListeAc;
  kombo , kombo1 ,sirketlerx ,sirketlerxx: TcxImageComboKadir;
  dateEdit: TcxDateEditKadir;
  Egitimler : TcxCheckGroupKadir;
  where,GonderButtonCaption : string;
begin
  Tag := TagfrmPersonelEgitim;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
  indexFieldName := 'id';
  TableName := _TableName_;
  Olustur(self,_TableName_,'Personel E�itimleri',22);


  List := TListeAc.Create(nil);

  where := '';
  if datalar.IGU <> '' then
   where := ' where e.id in (select EgitimID from Personel_Egitim_Egitimci where egitimciTC in (select tcKimlikNo from IGU where kod = ' + QuotedStr(datalar.IGU) + '))';
  if datalar.doktorKodu <> '' then
   where := ' where e.id in (select EgitimID from Personel_Egitim_Egitimci where egitimciTC in (select tcKimlikNo from DoktorlarT where kod = ' + QuotedStr(datalar.doktorKodu) + '))';


  List.Table :=
    '(Select e.id, e.EgitimKod, e.BaslamaTarihi, et.tanimi tanimi, s.Tanimi SirketTanimi , '+
    ' dbo.egitimCheckStateToTanim(e.EgitimKod,e.EgitimTuru) EgitimBilgi ' +
    'from Egitimler e ' +
    ' left join egitimGrup_tnm et on et.Kod = e.EgitimTuru '+
    ' left outer join SIRKETLER_TNM s on s.SirketKod = e.SirketKod ' +
     where +
    ') Egitimler';

  List.kolonlar.Add('id');// := Ts;
  List.kolonlar.Add('Tanimi');// := Ts;
  List.kolonlar.Add('BaslamaTarihi'); // := Ts;
  List.kolonlar.Add('SirketTanimi'); // := Ts;
  List.kolonlar.Add('EgitimBilgi');// := Ts;

  List.KolonBasliklari.Add('ID');// := Ts1;
  List.KolonBasliklari.Add('Tan�m�');// := Ts1;
  List.KolonBasliklari.Add('Ba�lama Tarihi');// := Ts1;
  List.KolonBasliklari.Add('�irket'); // := Ts;
  List.KolonBasliklari.Add('E�itimler');// := Ts1;
  List.TColcount := 5;
  List.TColsW := '10,80,70,200,400';
  List.ListeBaslik := 'Kay�tl� E�itimler';
  List.Name := 'id';
  List.Conn := Datalar.ADOConnection2;
  List.SkinName := 'coffee';//AnaForm.dxSkinController1.SkinName;

  List.Where := '';//'SirketKod = ' + QuotedStr (DATALAR.AktifSirket);


  setDataStringB(self,'id','E�itim No.',Kolon1,'ababa',70,List,True,nil, 'tanimi', '', False, True, -100);

  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := nil;
  kombo.BosOlamaz := True;
  kombo.ItemList := '1;��yeri Hekimi,2;�� G�venli�i Uzman�';
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'belgeTipi','Belge Tipi',kolon1,'',100);


(*
  if datalar.CSGBImza = 'Imzager' then
  begin
   addButton(self,btnEgitimGonderTekImzager,'btnEgitimGonderTekImzager','','G�nder',Kolon1,'ababa',100,ButtonClick,30);
   btnEgitimGonderTekImzager.Enabled := False;
   btnEgitimGonderTek.Caption := 'Imzager';
  end
  else begin
   btnEgitimGonderTek.Caption  := 'E�itim G�nder';
  end;
  *)


 // setDataStringB(self,'SirketKod','�irket Kodu',Kolon1,'',100,nil, True, SirketKod);
 // SirketKod.Properties.ReadOnly := True;


  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'SIRKETLER_TNM_view';
  sirketlerx.ValueField := 'SirketKod';
  sirketlerx.DisplayField := 'Tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Filter := SirketComboFilter;
  setDataStringKontrol(self,sirketlerx,'SirketKod','�irket',Kolon1,'',370,0,alNone,'');

  (*
  //�ube kodu ekle
  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := Datalar.ADOConnection2;
  kombo.TableName := 'Egitim_tnm';
  kombo.ValueField := 'kod';
  kombo.DisplayField := 'tanimi';
  kombo.BosOlamaz := True;
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'Egitimkod','E�itim',kolon1,'',145);
    *)


  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  dateEdit.Properties.Kind := ckdatetime;
  setDataStringKontrol(self,dateEdit, 'BaslamaTarihi','Ba�lama Zaman�',Kolon1,'',150);
  OrtakEventAta(dateEdit);

  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  setDataStringKontrol(self,dateEdit, 'BitisTarihi','Biti� Tarihi',Kolon1,'',150);
  OrtakEventAta(dateEdit);

  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  setDataStringKontrol(self,dateEdit, 'GecerlilikTarihi','Ge�erlilik Tarihi',Kolon1,'',100);
  OrtakEventAta(dateEdit);
  setDataString(self,'Sure','Toplam S�re (Dakika)',Kolon1,'',100);

  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := nil;
  kombo.BosOlamaz := True;
  kombo.ItemList := '1;��,2;D��';
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'EgitimTip','E�itim Tipi',kolon1,'',100);

  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := nil;
  kombo.BosOlamaz := True;
  kombo.ItemList := '0;Uzaktan,1;Y�zy�ze';
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'EgitimYontem','E�itim Y�ntemi',kolon1,'',100);

  kombo1 := TcxImageComboKadir.Create(self);
  kombo1.Conn := datalar.ADOConnection2;
  kombo1.TableName := 'egitimGrup_tnm';
  kombo1.DisplayField := 'tanimi';
  kombo1.ValueField := 'kod';
  kombo1.BosOlamaz := True;
  kombo1.Filter := '';
  OrtakEventAta(kombo1);
  setDataStringKontrol(self,kombo1,'EgitimTuru','E�itim T�r�',kolon1,'etg',100);
  TcxImageComboKadir(FindComponent('EgitimTuru')).Properties.OnEditValueChanged := PropertiesEditValueChanged;

  addButton(self,nil,'btnEgitimler','','Egitimler',sayfa4_kolon1,'etg',50,ButtonClick,30);
  TcxButtonKadir(FindComponentButtonName('btnEgitimler',self)).Enabled := False;



 (*
  Egitimler := TcxCheckGroupKadir.Create(self);
  Egitimler.Properties.EditValueFormat := cvfStatesString;
  Egitimler.Properties.Columns := 4;
  Egitimler.Alignment := alCenterCenter;
  Egitimler.Conn := Datalar.ADOConnection2;
  Egitimler.TableName := 'egitim_tnm';
  Egitimler.ValueField := 'kod';
  Egitimler.DisplayField := 'tanimi';
  Egitimler.tumuSecili := False;
  Egitimler.OrderField := value;
  Egitimler.Filter := ' grup = -1';// grup = ' + ifThen(_value_ = '','0',_value_);
 *)
 // setDataStringKontrol(self,Egitimler,'Egitimkod','E�itimler',kolon1,'',450,140);
  setDataStringKontrol(self,EgitimAltDetayGrid,'EgitimAltDetayGrid','E�itim Alt Detay',kolon1,'',370,130,alNone,'',clLeft);
 // Egitimler.Caption := '';


  //setDataStringC(self,'EgitimTuru','E�itim T�r�',Kolon1,'',100, '�� E�itim,D�� E�itim,Di�er');
  setDataString(self,'EgitimYeri','E�itim Yeri',Kolon1,'',100);
  setDataString(self,'SertifikaNo','Sertifika No.',Kolon1,'',100);
  setDataStringMemo(self,'EgitimIcerigi','E�itim A��klama',Kolon1,'',370, 50);

  setDataStringCurr(self,'EgitimBasariPuan','Ba�ar� Puan',Kolon1,'',100,'0',0);

  setDataString(self,'EgitimUcreti','E�itim �creti',Kolon1,'ecr',100);
  setDataString(self,'EgitimUcretParaBirimi','Para Birimi',Kolon1,'ecr',50);

  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := nil;
  kombo.BosOlamaz := True;
  kombo.ItemList := '0;Hay�r,1;Evet';
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'EgitimUcretiOdendi','�dendi mi?',kolon1,'ecr',100);
  setDataStringBLabel(self,'bosSatir',kolon1,'',100,'');

  setDataString(self,'EgitimCSGBGonderimSonuc','�SGB G�nderim Sonucu',Kolon1,'Gonder',270, False, '', True);
  setDataString(self,'sorguNo','�SGB SorguNo',Kolon1,'Sorgula',270, False, '', True);
  addButton(self,btnEgitimGonderTek,'btnEgitimGonderTek','','E�itim G�nder',Kolon1,'Gonder',100,ButtonClick,30);
  addButton(self,nil,'btnEgitimSorgu','','E�itim Sorgula',Kolon1,'Sorgula',100,ButtonClick,30);
  setDataString(self,'sorguSonuc','�SGB Sorgu Sonucu',Kolon1,'',270, False, '', True);


 (*
  sirketlerxx := TcxImageComboKadir.Create(self);
  sirketlerxx.Conn := Datalar.ADOConnection2;
  sirketlerxx.TableName := 'SIRKETLER_TNM';
  sirketlerxx.ValueField := 'SirketKod';
  sirketlerxx.DisplayField := 'Tanimi';
  sirketlerxx.BosOlamaz := False;
  sirketlerxx.Filter := '';
  sirketlerxx.Tag := -100;
  setDataStringKontrol(self,sirketlerxx,'PersonelSirketKod','�irketler',Sayfa2_Kolon1,'',250,0,alNone,'');
  *)

 // setDataStringBLabel(self,'bosSatir2',kolon3,'',500,'E�itime Kat�lan Personeller');
  addButton(self,nil,'btnPersonelEkle','','Personel Getir',Kolon3,'PERS',120,ButtonClick);
  addButton(self,nil,'btnPersonelSil','','Se�ili Personeli Sil',Kolon3,'PERS',120,ButtonClick);

  setDataStringKontrol(self,EgitimPersonel,'EgitimPersonel','',Kolon3,'',500,300,alNone);
  GridList.Bands [0].Width := EgitimPersonel.Width-5;
  EgitimPersonel.Dataset.BeforePost := BeforePost;

  Kolon2.Width := 20;
  Kolon4.Visible := false;

  setDataStringBLabel(self,'bosSatir3',kolon3,'',500,'');
  setDataStringBLabel(self,'bosSatir4',kolon3,'',500,'');
  setDataString(self,'EgitimciUnvan','�nvan�',Kolon3,'ad',70,false,'',false,-1);
  setDataString(self,'EgitimciTc','Tc',Kolon3,'ad',100,false,'',false,-1);
  setDataString(self,'egitimciAdiSoyadi','Ad� Soyad�',Kolon3,'ad',150,false,'',false,-1);
  addButton(self,nil,'btnEgitimciEkle','','Ekle',Kolon3,'ad',50,ButtonClick,20);
  addButton(self,nil,'btnEgitimciListesi','','Listeden Ekle',Kolon3,'ad1',100,ButtonClick,21);
  addButton(self,nil,'btnEgitimciSil','','E�itimci Sil',Kolon3,'ad1',100,ButtonClick,20);


  Sayfa3_Kolon2.Visible := False;
  Sayfa3_Kolon3.Visible := False;
  setDataStringKontrol(self,Egitimci,'Egitimci','',Kolon3,'',500,100,alNone);



  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  dateEdit.Tag := -1;
  setDataStringKontrol(self,dateEdit, 'ilkTarih','Ba�lang�� Tarihi',sayfa4_kolon1,'btar',100);
  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  dateEdit.Tag := -1;
  setDataStringKontrol(self,dateEdit, 'sonTarih','Biti� Tarihi',sayfa4_kolon1,'btar',100);
  addButton(self,nil,'btnEgitimListele','','E�itim Bilgilerini Getir',sayfa4_kolon1,'btar',120,ButtonClick,30);

  addButton(self,nil,'btnEgitimGonder','','E�itim Bilgisini G�nder',sayfa4_kolon1,'btar',120,ButtonClick,30);
  addButton(self,nil,'btnEgitimXml','','Veri Xml Olarak G�ster',sayfa4_kolon1,'btar',120,ButtonClick,30);
  addButton(self,nil,'btnEgitimSonucDetay','','G�nderim Sonu� Detay',sayfa4_kolon1,'btar',120,ButtonClick,30);

  setDataStringKontrol(self,EgitimGrid,'EgitimGrid','',sayfa4_kolon1,'',1,1,alClient);
  Sayfa4_Kolon2.Visible := False;
  sayfa4_kolon3.Visible := False;

  setDataStringKontrol(self,Foto1,'Foto1','',sayfa5_kolon1,'',400,300);
  addButton(self,nil,'btnFoto1','','Foto Ekle',sayfa5_kolon1,'',120,ButtonClick,30);

  setDataStringKontrol(self,Foto2,'Foto2','',sayfa5_kolon1,'',400,300);
  addButton(self,nil,'btnFoto2','','Foto Ekle',sayfa5_kolon1,'',120,ButtonClick,30);





  Menu := PopupMenu1;
  //setDataStringC(self,'EgitimUcretiOdendi','�dendi mi?',Kolon1,'',100, 'Evet,Hay�r');



  EgitimGrid.Enabled := False;
  Disabled(self,True);
  TcxDateEditKadir(FindComponent('ilkTarih')).Enabled := True;
  TcxDateEditKadir(FindComponent('sonTarih')).Enabled := True;
  TcxGridKadir(FindComponent('EgitimGrid')).Enabled := True;
//  TcxButtonKadir(FindControl ('btnEgitimGonderTek')).Enabled := False;

  SayfaCaption('E�itim Bilgi', '', '', 'E�itimler Listesi', 'E�itim Foto');
  //_HastaBilgileriniCaptionGoster_ := True;
end;

function TfrmPersonelEgitim.GetEgitimPersonelSQL: String;
var
  sIDText : String;
begin
  if IsNull (TcxButtonEditKadir (FindComponent('id')).Text) then
    sIDText := 'is NULL'
   else
    sIDText := '= ' + TcxButtonEditKadir (FindComponent('id')).Text;
  Result := 'Select pe.*, pk.HASTAADI + '' '' + pk.HASTASOYADI as PersonelAdiSoyadi '+
    'from Personel_Egitim pe '+
    'inner join PersonelKart pk on pk.DosyaNo = pe.PersonelDosyaNo '+
    'where EgitimId ' + sIDText+ ' ' +
    'order by PersonelAdiSoyadi, pe.id';
end;

function TfrmPersonelEgitim.GetEgitimEgitimciSQL: String;
var
  sIDText : String;
begin
  if IsNull (TcxButtonEditKadir (FindComponent('id')).Text) then
    sIDText := 'is NULL'
   else
    sIDText := '= ' + TcxButtonEditKadir (FindComponent('id')).Text;
  Result := 'Select pe.* from Personel_Egitim_Egitimci pe '+
    ' where EgitimId ' + sIDText+ ' ' +
    ' order by egitimciAdiSoyadi';
end;



function TfrmPersonelEgitim.Init(Sender: TObject): Boolean;
begin
  result := inherited;
end;

procedure TfrmPersonelEgitim.ResetDetayDataset;
begin
  EgitimPersonel.Dataset.Connection := DATALAR.ADOConnection2;
  EgitimPersonel.Dataset.SQL.Text := GetEgitimPersonelSQL;
  EgitimPersonel.Dataset.Open;

  Egitimci.Dataset.Connection := DATALAR.ADOConnection2;
  Egitimci.Dataset.SQL.Text := GetEgitimEgitimciSQL;
  Egitimci.Dataset.Open;



  EgitimAltDetay;

  Foto;



end;

procedure TfrmPersonelEgitim.SayfalarChange(Sender: TObject);
begin
  //d
end;

procedure TfrmPersonelEgitim.SayfalarPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  cxPanel.Visible := (newPage <> sayfa2);

end;

procedure TfrmPersonelEgitim.cxKaydetClick(Sender: TObject);
var
  xObj : TcxButtonEditKadir;
begin



  BeginTrans (DATALAR.ADOConnection2);
  try

      case TControl(sender).Tag  of
        Kaydet : begin
                    TcxButtonKadir(FindComponentButtonName('btnEgitimler',self)).Enabled := True;
                 end;

        Sil    : begin
                   datalar.QueryExec('delete from EgitimAltDetay where egitimID = ' + TcxButtonEditKadir (FindComponent('id')).EditText);
                   datalar.QueryExec('delete from Personel_Egitim where egitimID = ' + TcxButtonEditKadir (FindComponent('id')).EditText);
                   datalar.QueryExec('delete from Personel_Egitim_Egitimci where egitimID = ' + TcxButtonEditKadir (FindComponent('id')).EditText);
                   datalar.QueryExec('delete from EgitimFoto where egitimID = ' + TcxButtonEditKadir (FindComponent('id')).EditText);
                   datalar.QueryExec('delete from OSGB_MASTER.DBO.EgitimGonderim where egitimID = ' + TcxButtonEditKadir (FindComponent('id')).EditText);
                  end;

        end;




    inherited;
    //post ettikten sonra veritaban�ndan Identity de�eri al�p edit kutusuna yazmas� i�in....
    case TControl(sender).Tag  of
    Kaydet : begin
                xObj := TcxButtonEditKadir (FindComponent('id'));
                if IsNull (xObj.EditingValue) then
                begin
                  xObj.Text := IntToStr (F_IDENTITY);
                  ResetDetayDataset;
                  EgitimGrid.Enabled := True;
                end;
             end;
    Yeni : begin
             xObj := TcxButtonEditKadir (FindComponent('id'));
             xObj.Text := '';
             ResetDetayDataset;
             TcxButtonKadir(FindComponentButtonName('btnEgitimler',self)).Enabled := False;
           end;
    end;
  finally
    if cxKaydetResult then
      CommitTrans (DATALAR.ADOConnection2)
     else
      RollbackTrans (DATALAR.ADOConnection2);
  end;
end;

end.
