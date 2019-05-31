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
  dxSkinXmas2008Blue, cxMemo;



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
    EgitimGridSatirlarColumn2: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    EgitimGridSatirlarColumn3: TcxGridDBBandedColumn;
    EgitimGridSatirlarColumn4: TcxGridDBBandedColumn;
    EgitimGridSatirlarColumn5: TcxGridDBBandedColumn;
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
    function EgitimSorgulaCSGB(sorguNo : Arrayofstring; var sorguSonuc,sonucKodu : string) : Boolean;
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

    //  LIB_DLL2 = 'D:\Projeler\VS\c#\ListeDLL_Cades\ListeDLL\bin\x86\Debug\NoktaDLL.dll';
      LIB_DLL2 = 'NoktaDLL.dll';

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
      raise Exception.Create(LIB_DLL + ' içersinde EgitimImzala bulunamadý!');

  finally
    FreeLibrary(dllHandle);
  end;
end;


function TfrmPersonelEgitim.EgitimSorgulaCSGB(sorguNo : Arrayofstring ; var sorguSonuc,sonucKodu : string) : Boolean;
var
  sayi,EgitimString,url,cmsg : string;
  Cvps : ArrayOfEgitimBilgisiCevap;
  Cvp : egitimBilgisiCevap;
begin
    url := datalar.CSGBUrl;
    DurumGoster(True,False,'Eðitim Bilgisi Sorgulanýyor...Lütfen Bekleyiniz...',0);
    try
      Application.ProcessMessages;
      datalar.CSGBsoap.URL := 'http://213.159.30.6/CSGBservice.asmx';
      Cvps := (datalar.CSGBsoap as CSGBServiceSoap).egitimSorgula(sorguNo,url);
      EgitimSorgulaCSGBCvpBilgiGuncelle(Cvps);

      DurumGoster(False,False,'Eðitim Bilgisi Sorgulanýyor...Lütfen Bekleyiniz...',0);

      for Cvp in Cvps do
      begin
        cmsg := cmsg + 'SorguNo : ' + Cvp.sorguNo + ' - Sonuç : ' + Cvp.message_ + #13
      end;
      sorguSonuc := cmsg;
      sonucKodu := inttoStr(Cvp.status);

      ShowMessageSkin('Sorgu Tamamlandý' + #13,cmsg,'','info');
    except
      on E : Exception do
      begin
        ShowmessageSkin(E.Message,'','','info');
      end;
    end;
end;



function TfrmPersonelEgitim.EgitimKaydetCSGB(egitim : egitimBilgisi ; pin,cardType,_xml_,_xmlSOAP_,egitimID : string) : egitimBilgisiCevap;
var
  sayi,EgitimString : string;
  Cvp : egitimBilgisiCevap;
  url : string;
begin
    url := datalar.CSGBUrl;
    Cvp := egitimBilgisiCevap.Create;
  //  EgitimString := EgitimVerisiXML(egitim);

//  DurumGoster(True,False,'Eðitim Bilgisi Ýmzalanýyor...Lütfen Bekleyiniz...',1);
    EgitimString := EgitimImzala(pin,_xml_,cardType);

    if EgitimString = ''
    then begin
      // imzalama iþlemi gerçekleþmemiþtir...
    end
    else
    begin

        DurumGoster(True,False,'Eðitim Bilgisi Gönderiliyor...Lütfen Bekleyiniz...',0);
        try
          Application.ProcessMessages;
          datalar.CSGBsoap.URL := 'http://213.159.30.6/CSGBservice.asmx';
          Cvp := (datalar.CSGBsoap as CSGBServiceSoap).egitimKaydetSOAP(egitim,EgitimString,_xml_,datalar._database,datalar.osgbKodu,egitimID,url);
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
          TcxTextEdit(FindComponent('EgitimCSGBGonderimSonuc')).Text := Cvp.message_;
          TcxTextEdit(FindComponent('sorguNo')).Text := Cvp.sorguNo;
        except
          on E : Exception do
          begin
            ShowmessageSkin(E.Message,'','','info');
          end;
        end;

    end;
end;


function TfrmPersonelEgitim.EgitimKaydetMASTER(egitim : egitimBilgisi ; pin,cardType,_xml_,_xmlSOAP_,egitimID : string) : string;
var
  sayi,EgitimString : string;
  Cvp : string;
begin

    EgitimString := EgitimImzala(pin,_xml_,cardType);
    if EgitimString = ''
    then begin
      // imzalama iþlemi gerçekleþmemiþtir...
    end
    else
    begin
        DurumGoster(True,False,'Eðitim Bilgisi Kaydediliyor...Lütfen Bekleyiniz...',0);
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
      DurumGoster(True,False,'Eðitim Bilgisi Gönderiliyor...Lütfen Bekleyiniz...',1);
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
  xDeger ,where : String;
  obje : TComponent;
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


 if TcxImageComboKadir(Sender).Name = 'SirketKod'
 Then begin

     if EgitimPersonel.Dataset.RecordCount > 0
     Then begin
       TcxImageComboKadir(Sender).Reset;
     end
     else
     begin
       TcxImageComboKadir(FindComponent('IGU')).Filter := ' kod in (select IGU from SIRKET_SUBE_TNM where sirketKod = ' + quotedStr( varToStr(TcxImageComboKadir(Sender).EditValue)) +')';
       TcxImageComboKadir(FindComponent('IGU')).ItemIndex := 0;
   //    TcxImageComboKadir(FindComponent('IGU')).Enabled := False;

     end;



 end
 else
 begin


     if (vartostr(TcxImageComboKadir(FindComponent('EgitimTuru')).EditingValue) = '') or
        (TcxImageComboKadir(FindComponent('EgitimTuru')).Text = 'Tümü')
     then
      where := ''
     else
      where := ' where grup = ' +
                         vartostr(TcxImageComboKadir(FindComponent('EgitimTuru')).EditingValue);

     if TcxImageComboKadir(Sender).name = 'EgitimTuru'
     Then
      Egitimler.Table := '(select * from Egitim_Tnm ' + where + ' ) egitimler';

  end;

end;

procedure TfrmPersonelEgitim.ButtonClick(Sender: TObject);
var
  i : Integer;
  sTmp,sql: String;
  ado : TADOQuery;
  Lst : ArrayListeSecimler;
  L : ListeSecimler;
  open : TOpenDialog;
  ID , filename,imageField,egitimXML,pin,cardType,_xml_ ,_xmlSOAP_: string;
  Jpeg1 : TJPEGImage;
  Image : TcxImage;
  Blob : TADOBlobStream;
  Veri : egitimBilgisi;
  sorguNolari : ArrayOfString;
  sorguSonuc,sonucKodu : string;
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

  if (TcxButtonKadir(Sender).ButtonName = 'btnEgitimSorgu') or
     (TcxButtonKadir(Sender).ButtonName = 'btnEgitimSorgula')
  then begin
    if TcxButtonKadir(Sender).ButtonName = 'btnEgitimSorgu'
    Then begin
       SetLength(sorguNolari,1);
       sorguNolari[0] := TcxTextEdit(FindComponent('sorguNo')).Text;
    end
    else
    begin
       SetLength(sorguNolari,EgitimGridSatirlar.Controller.SelectedRowCount);
       for i := 0 to EgitimGridSatirlar.Controller.SelectedRowCount - 1 do
       begin
           sorguNolari[i] := GridCellToString(EgitimGridSatirlar,'sorguNo',i);
       end;
    end;
    EgitimSorgulaCSGB(sorguNolari,sorguSonuc,sonucKodu);
    if (TcxButtonKadir(Sender).ButtonName = 'btnEgitimSorgu')
    Then begin
       TcxTextEdit(FindComponent('sorguSonucKodu')).Text := sonucKodu;
       TcxMemo(FindComponent('sorguSonuc')).Text := sorguSonuc;
    end;
  end
  else
  if (TcxButtonKadir(Sender).ButtonName = 'btnEgitimGonderTek') or
     (TcxButtonKadir(Sender).ButtonName = 'btnEgitimGonder')
  then begin
       if cxKaydet.Enabled = True
       Then begin
          ShowMessageSkin('Bu iþlem için ekrandaki bilgileri kaydetmeniz gerekir.', '', '', 'info');
          Exit;
       end;

       if TcxButtonKadir(Sender).ButtonName = 'btnEgitimGonderTek'
       then
          ID := TcxButtonEditKadir(FindComponent('id')).Text
       else
          ID := EgitimGrid.Dataset.FieldByName('id').AsString;

       if ID = '' then exit
       else
       begin
          if TcxTextEdit(FindComponent('sorguSonucKodu')).Text <> '200'
          Then Begin
            veri := EgitimVerisi(ID,pin,cardType,_xml_,_xmlSOAP_);
            if Veri <> nil
            then
             EgitimKaydetCSGB(veri,pin,cardType,_xml_,_xmlSOAP_,ID);
     //      EgitimKaydetMASTER(veri,pin,cardType,_xml_,_xmlSOAP_,TcxButtonEditKadir(FindComponent('id')).Text);
          End
          else
           ShowMessageSkin('Eðitim Verisi Baþarýlý Sorgulanmýþ','Tekrar Gönderilemez','','info');

       end;

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
          ' EgitimCSGBGonderimSonuc,sorguNo,sorguSonuc,I.tanimi IGU,sorguSonucKodu,' +
          '(select top 1 egitimciAdiSoyadi from Personel_Egitim_Egitimci where EgitimID = e.id) egitimci '+
          ' from Egitimler e  left join egitimGrup_tnm et on et.Kod = e.EgitimTuru '+
          ' left outer join SIRKETLER_TNM s on s.SirketKod = e.SirketKod ' +
          ' left join IGU I on I.kod = e.IGU ' +
          ' where e.BaslamaTarihi between ' + TcxDateEditKadir(FindComponent('ilkTarih')).GetSQLValue +
          ' and ' + TcxDateEditKadir(FindComponent('sonTarih')).GetSQLValue +
          ' and e.IGU = ' + QuotedStr(datalar.IGU) +
          ' or e.IGU in (select egitimciAdiSoyadi from Personel_Egitim_Egitimci where EgitimID = e.id)';

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
  //  if Egitimci.Dataset.Eof then exit;

    if IsNull (vartostr(TcxTextEditKadir(FindComponent('EgitimciTc')).EditingValue)) then
    begin
      ShowMessageSkin('TC Kimlik No Boþ Olamaz','Lütfen Kontrol Ediniz','','info');
      TcxCustomEdit(FindComponent('EgitimciTc')).SetFocus;
      Exit;
    end;
    if IsNull (vartostr(TcxTextEditKadir(FindComponent('egitimciAdiSoyadi')).EditingValue)) then
    begin
      ShowMessageSkin('Ad / Soyad bilgisi boþ olamaz','Lütfen Kontrol Ediniz','','info');
      TcxCustomEdit(FindComponent('egitimciAdiSoyadi')).SetFocus;
      exit;
    end;
    if not TCKontrol(vartoStr(TcxTextEditKadir(FindComponent('EgitimciTc')).EditingValue)) Then
    begin
      ShowMessageSkin('TC Kimlik No Hatalý','Lütfen Kontrol Ediniz','','info');
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
        ShowMessageSkin('Eðitimci listeye eklendi. Ayný eðitimciyi artýk listeden seçebilirsiniz.', '', '', 'info');
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
   // if Egitimci.Dataset.Eof then exit;
    if IsNull (TcxButtonEditKadir (FindComponent('id')).Text) then
    begin
      ShowMessageSkin('Bu iþlem için eðitim kaydý seçmeniz ya da ekrandaki bilgileri kaydetmeniz gerekir.', '', '', 'info');
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
    if cxKaydet.Enabled = True
    Then begin
      ShowMessageSkin('Bu iþlem için ekrandaki bilgileri kaydetmeniz gerekir.', '', '', 'info');
      Exit;
    end;


    if IsNull (TcxButtonEditKadir (FindComponent('id')).Text) then
    begin
      ShowMessageSkin('Bu iþlem için eðitim kaydý seçmeniz ya da ekrandaki bilgileri kaydetmeniz gerekir.', '', '', 'info');
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
      if ShowMessageSkin ('Seçilli Personeli Silmek Ýstiyor Musunuz ?', '', '', 'conf') <> mrYes then Exit;
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
    ShowMessageSkin('Bu iþlemden önce Eðitim Bilgisini kaydetmeniz gerekir.', '', '', 'info');
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
        showmessageSkin ('Servisler aktif deðil ya da servislere ulaþýlamýyor', '', '', 'info');
        Exit;
      end;
      sql := 'sp_frmPersonelEgitim ' + TcxButtonEditKadir(FindComponent('id')).Text;
      if TMenuItem (Sender).Tag = -20 then sql := sql + ', ' + QuotedStr (EgitimPersonel.Dataset.FieldByName('PersonelDosyaNo').AsString) + ',1'
      else sql := sql + ', ' + QuotedStr('') + ',1';


      datalar.QuerySelect(ado, sql);
      TopluDataset.Dataset0 := ado;
      TopluDataset.Dataset0.Name := 'PersonelEgitimleri';

      TopluDataset.Dataset1 := datalar.QuerySelect('select * from merkezBilgisi');

     (*
      sql := 'declare @ek varchar(max),@et int ' +
             ' select @ek = EgitimKod,@et = EgitimTuru from egitimler where id = ' + TcxButtonEditKadir(FindComponent('id')).Text +
             ' select datavalue Egitimler from dbo.strtotable(dbo.egitimCheckStateToTanim(@ek,@et),'','') where datavalue <> ''''';
      datalar.QuerySelect(ado1, sql);
      TopluDataset.Dataset1 := ado1;
      *)
      if TMenuItem (Sender).Tag = -30 then
        PrintYap('004','Eðitime Katýlan Personel Listesi','',TopluDataset,pTNone)
       else
        PrintYap('005','Personel Eðitimi Sertifikasý','',TopluDataset,pTNone);
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
    where : string;
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
  Olustur(self,_TableName_,'Personel Eðitimleri',22);


  if datalar.UserGroup = '1'
  then
    where := ''
  else
  if (datalar.UserGroup = '11')
  then begin
    where := '';
    if datalar.IGU <> '' then
     where := ' where (e.IGU = ' + QuotedStr(datalar.IGU) + ') or (e.id in (select EgitimID from Personel_Egitim_Egitimci where egitimciTC in (select tcKimlikNo from IGU where kod = ' + QuotedStr(datalar.IGU) + ')))';
    if datalar.doktorKodu <> '' then
     where := ' where e.id in (select EgitimID from Personel_Egitim_Egitimci where egitimciTC in (select tcKimlikNo from DoktorlarT where kod = ' + QuotedStr(datalar.doktorKodu) + '))';
  end;

  List := TListeAc.Create(nil);

  List.Table :=
    '(Select e.id, e.EgitimKod, e.BaslamaTarihi, et.tanimi tanimi, s.Tanimi SirketTanimi , '+
    ' dbo.egitimCheckStateToTanim(e.EgitimKod,e.EgitimTuru) EgitimBilgi , I.tanimi isgProf ' +
    'from Egitimler e ' +
    ' left join egitimGrup_tnm et on et.Kod = e.EgitimTuru '+
    ' left outer join SIRKETLER_TNM s on s.SirketKod = e.SirketKod ' +
    ' left join IGU I on I.kod = e.IGU ' +
     where +
    ') Egitimler order by BaslamaTarihi Desc';

  List.kolonlar.Add('id');// := Ts;
  List.kolonlar.Add('Tanimi');// := Ts;
  List.kolonlar.Add('BaslamaTarihi'); // := Ts;
  List.kolonlar.Add('SirketTanimi'); // := Ts;
  List.kolonlar.Add('EgitimBilgi');// := Ts;
  List.kolonlar.Add('isgProf');// := Ts;

  List.KolonBasliklari.Add('ID');// := Ts1;
  List.KolonBasliklari.Add('Tanýmý');// := Ts1;
  List.KolonBasliklari.Add('Baþlama Tarihi');// := Ts1;
  List.KolonBasliklari.Add('Þirket'); // := Ts;
  List.KolonBasliklari.Add('Eðitimler');// := Ts1;
  List.KolonBasliklari.Add('Ýsg Prof.');// := Ts1;
  List.TColcount := 6;
  List.TColsW := '30,80,70,200,200,150';
  List.ListeBaslik := 'Kayýtlý Eðitimler';
  List.Name := 'id';
  List.Conn := Datalar.ADOConnection2;
  List.SkinName := 'coffee';//AnaForm.dxSkinController1.SkinName;

  List.Where := '';//'SirketKod = ' + QuotedStr (DATALAR.AktifSirket);


  setDataStringB(self,'id','Eðitim No.',Kolon1,'ababa',70,List,True,nil, 'tanimi', '', False, True, -100);

  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := nil;
  kombo.BosOlamaz := True;
  kombo.ItemList := '1;Ýþyeri Hekimi,2;Ýþ Güvenliði Uzmaný';
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'belgeTipi','Belge Tipi',kolon1,'ababa',100);


//  setDataString(self,'hazirlayan','Ýþ Güvenlik Uzm',Kolon1,'hz',120,false,'',True);




(*
  if datalar.CSGBImza = 'Imzager' then
  begin
   addButton(self,btnEgitimGonderTekImzager,'btnEgitimGonderTekImzager','','Gönder',Kolon1,'ababa',100,ButtonClick,30);
   btnEgitimGonderTekImzager.Enabled := False;
   btnEgitimGonderTek.Caption := 'Imzager';
  end
  else begin
   btnEgitimGonderTek.Caption  := 'Eðitim Gönder';
  end;
  *)


 // setDataStringB(self,'SirketKod','Þirket Kodu',Kolon1,'',100,nil, True, SirketKod);
 // SirketKod.Properties.ReadOnly := True;


  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'SIRKETLER_TNM_view';
  sirketlerx.ValueField := 'SirketKod';
  sirketlerx.DisplayField := 'Tanimi';
  sirketlerx.BosOlamaz := False;

  sirketlerx.Filter := '';

  (*
  if datalar.UserGroup = '1' then
   sirketlerx.Filter := ''
   else
  sirketlerx.Filter := SirketComboFilter;
    *)

  setDataStringKontrol(self,sirketlerx,'SirketKod','Þirket',Kolon1,'',370,0,alNone,'');
  TcxImageComboKadir(FindComponent('SirketKod')).Properties.OnEditValueChanged := PropertiesEditValueChanged;//SirketlerPropertiesChange;


  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := Datalar.ADOConnection2;
  kombo.TableName := 'IGU';
  kombo.ValueField := 'kod';
  kombo.DisplayField := 'Tanimi';
  kombo.BosOlamaz := False;
  kombo.Enabled := False;
  kombo.Filter := '';
  kombo.Enabled := False;

  setDataStringKontrol(self,kombo,'IGU','Ýþ Güvenlik Uzm.',Kolon1,'',140,0,alNone,'');

  (*
  //þube kodu ekle
  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := Datalar.ADOConnection2;
  kombo.TableName := 'Egitim_tnm';
  kombo.ValueField := 'kod';
  kombo.DisplayField := 'tanimi';
  kombo.BosOlamaz := True;
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'Egitimkod','Eðitim',kolon1,'',145);
    *)


  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  dateEdit.Properties.Kind := ckdatetime;
  setDataStringKontrol(self,dateEdit, 'BaslamaTarihi','Baþlama Zamaný',Kolon1,'bsl',130);
  OrtakEventAta(dateEdit);

  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  setDataStringKontrol(self,dateEdit, 'BitisTarihi','Bitiþ Tarihi',Kolon1,'bsl',130);
  OrtakEventAta(dateEdit);

  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  setDataStringKontrol(self,dateEdit, 'GecerlilikTarihi','Geçerlilik Tarihi',Kolon1,'',100);
  OrtakEventAta(dateEdit);
  setDataString(self,'Sure','Toplam Süre (Dakika)',Kolon1,'',100);

  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := nil;
  kombo.BosOlamaz := True;
  kombo.ItemList := '1;Ýç,0;Dýþ';
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'EgitimTip','Eðitim Tipi',kolon1,'',100);

  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := nil;
  kombo.BosOlamaz := True;
  kombo.ItemList := '0;Uzaktan,1;Yüzyüze';
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'EgitimYontem','Eðitim Yöntemi',kolon1,'',100);

  kombo1 := TcxImageComboKadir.Create(self);
  kombo1.Conn := datalar.ADOConnection2;
  kombo1.TableName := 'egitimGrup_tnm';
  kombo1.DisplayField := 'tanimi';
  kombo1.ValueField := 'kod';
  kombo1.BosOlamaz := True;
  kombo1.Filter := '';
  OrtakEventAta(kombo1);
  setDataStringKontrol(self,kombo1,'EgitimTuru','Eðitim Türü',kolon1,'etg',100);
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
 // setDataStringKontrol(self,Egitimler,'Egitimkod','Eðitimler',kolon1,'',450,140);
  setDataStringKontrol(self,EgitimAltDetayGrid,'EgitimAltDetayGrid','Eðitim Alt Detay',kolon1,'',370,300,alNone,'',clLeft);
 // Egitimler.Caption := '';


  //setDataStringC(self,'EgitimTuru','Eðitim Türü',Kolon1,'',100, 'Ýç Eðitim,Dýþ Eðitim,Diðer');
  setDataString(self,'EgitimYeri','Eðitim Yeri',Kolon1,'',100);
  setDataString(self,'SertifikaNo','Sertifika No.',Kolon1,'',100);
  setDataStringMemo(self,'EgitimIcerigi','Eðitim Açýklama',Kolon1,'',370, 50);

  setDataStringCurr(self,'EgitimBasariPuan','Baþarý Puan',Kolon1,'',100,'0',0);

  setDataString(self,'EgitimUcreti','Eðitim Ücreti',Kolon1,'ecr',100);
  setDataString(self,'EgitimUcretParaBirimi','Para Birimi',Kolon1,'ecr',50);

  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := nil;
  kombo.BosOlamaz := True;
  kombo.ItemList := '0;Hayýr,1;Evet';
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'EgitimUcretiOdendi','Ödendi mi?',kolon1,'ecr',100);
  setDataStringBLabel(self,'bosSatir',kolon1,'',100,'');

  setDataStringBLabel(self,'bosSatirIBYS',kolon4,'',370,'ÝBYS Gönderim ve Sorgulama');
  setDataString(self,'EgitimCSGBGonderimSonuc','ÝBYS Gönderim Sonucu',Kolon4,'Gonder',150, False, '', True);
  setDataString(self,'sorguNo','ÝBYS SorguNo',Kolon4,'Sorgula',150, False, '', True);
  addButton(self,btnEgitimGonderTek,'btnEgitimGonderTek','','Eðitim Gönder',Kolon4,'Gonder',90,ButtonClick,30);
  addButton(self,nil,'btnEgitimSorgu','','Eðitim Sorgula',Kolon4,'Sorgula',90,ButtonClick,30);
//  setDataString(self,'sorguSonuc','ÇSGB Sorgu Sonucu',Kolon1,'',270, False, '', True);
  setDataStringMemo(self,'sorguSonuc','ÝBYS Sorgu Sonucu',Kolon4,'',150, 50);
  setDataString(self,'sorguSonucKodu','ÝBYS Sorgu Sonucu Kodu',Kolon4,'',50, False, '', True);
 (*
  sirketlerxx := TcxImageComboKadir.Create(self);
  sirketlerxx.Conn := Datalar.ADOConnection2;
  sirketlerxx.TableName := 'SIRKETLER_TNM';
  sirketlerxx.ValueField := 'SirketKod';
  sirketlerxx.DisplayField := 'Tanimi';
  sirketlerxx.BosOlamaz := False;
  sirketlerxx.Filter := '';
  sirketlerxx.Tag := -100;
  setDataStringKontrol(self,sirketlerxx,'PersonelSirketKod','Þirketler',Sayfa2_Kolon1,'',250,0,alNone,'');
  *)

  setDataStringBLabel(self,'bosSatir2',kolon3,'',430,'Eðitime Katýlan Personeller');
  addButton(self,nil,'btnPersonelEkle','','Personel Getir',Kolon3,'PERS',120,ButtonClick);
  addButton(self,nil,'btnPersonelSil','','Seçili Personeli Sil',Kolon3,'PERS',120,ButtonClick);

  setDataStringKontrol(self,EgitimPersonel,'EgitimPersonel','',Kolon3,'',430,300,alNone);
  GridList.Bands [0].Width := EgitimPersonel.Width-5;
  EgitimPersonel.Dataset.BeforePost := BeforePost;

  Kolon2.Width := 10;
 // Kolon4.Visible := false;

  setDataStringBLabel(self,'bosSatir4',kolon3,'',440,'');
  setDataStringBLabel(self,'bosSatir3',kolon3,'',430,'Eðitimci Bilgileri');
  setDataString(self,'EgitimciUnvan','Ünvaný',Kolon3,'ad',50,false,'',false,-1);
  setDataString(self,'EgitimciTc','Tc',Kolon3,'ad',90,false,'',false,-1);
  setDataString(self,'egitimciAdiSoyadi','Adý Soyadý',Kolon3,'ad',100,false,'',false,-1);
  addButton(self,nil,'btnEgitimciEkle','','Ekle',Kolon3,'ad',50,ButtonClick,20);
  addButton(self,nil,'btnEgitimciListesi','','Listeden Ekle',Kolon3,'ad1',100,ButtonClick,21);
  addButton(self,nil,'btnEgitimciSil','','Eðitimci Sil',Kolon3,'ad1',100,ButtonClick,20);


  Sayfa3_Kolon2.Visible := False;
  Sayfa3_Kolon3.Visible := False;
  setDataStringKontrol(self,Egitimci,'Egitimci','',Kolon3,'',430,100,alNone);



  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  dateEdit.Tag := -1;
  setDataStringKontrol(self,dateEdit, 'ilkTarih','Baþlangýç Tarihi',sayfa4_kolon1,'btar',100);
  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  dateEdit.Tag := -1;
  setDataStringKontrol(self,dateEdit, 'sonTarih','Bitiþ Tarihi',sayfa4_kolon1,'btar',100);
  addButton(self,nil,'btnEgitimListele','','Eðitim Bilgilerini Getir',sayfa4_kolon1,'btar',120,ButtonClick,30);

 // addButton(self,nil,'btnEgitimGonder','','Eðitim Bilgisini Gönder',sayfa4_kolon1,'btar',120,ButtonClick,30);
  addButton(self,nil,'btnEgitimSorgula','','Eðitim Sorgula',sayfa4_kolon1,'btar',120,ButtonClick,30);
//  addButton(self,nil,'btnEgitimSonucDetay','','Gönderim Sonuç Detay',sayfa4_kolon1,'btar',120,ButtonClick,30);

  setDataStringKontrol(self,EgitimGrid,'EgitimGrid','',sayfa4_kolon1,'',1,1,alClient);
  Sayfa4_Kolon2.Visible := False;
  sayfa4_kolon3.Visible := False;

  setDataStringKontrol(self,Foto1,'Foto1','',sayfa5_kolon1,'',400,300);
  addButton(self,nil,'btnFoto1','','Foto Ekle',sayfa5_kolon1,'',120,ButtonClick,30);

  setDataStringKontrol(self,Foto2,'Foto2','',sayfa5_kolon1,'',400,300);
  addButton(self,nil,'btnFoto2','','Foto Ekle',sayfa5_kolon1,'',120,ButtonClick,30);





  Menu := PopupMenu1;
  //setDataStringC(self,'EgitimUcretiOdendi','Ödendi mi?',Kolon1,'',100, 'Evet,Hayýr');



  EgitimGrid.Enabled := False;
  Disabled(self,True);
  TcxDateEditKadir(FindComponent('ilkTarih')).Enabled := True;
  TcxDateEditKadir(FindComponent('sonTarih')).Enabled := True;
  TcxGridKadir(FindComponent('EgitimGrid')).Enabled := True;
//  TcxButtonKadir(FindControl ('btnEgitimGonderTek')).Enabled := False;

  SayfaCaption('Eðitim Bilgi', '', '', 'Eðitimler Listesi', 'Eðitim Foto');
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
    //post ettikten sonra veritabanýndan Identity deðeri alýp edit kutusuna yazmasý için....
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
