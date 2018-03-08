unit Faturalar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,ShellApi,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  kadir, kadirMedula3, KadirType,GetFormClass,GirisUnit,
  StdCtrls, Buttons, sBitBtn, ExtCtrls, cxContainer, cxLabel, cxTextEdit, cxGridExportLink,
  cxMaskEdit, cxDropDownEdit, cxCalendar, sCheckBox, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxGroupBox, cxRadioGroup, sGauge,
  cxPCdxBarPopupMenu, cxMemo, cxPC, cxCheckBox, rxAnimate, rxGIFCtrl,
  JvExControls, JvAnimatedImage, JvGIFCtrl, cxButtons, cxCurrencyEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, KadirLabel, cxImage,
  cxImageComboBox;

type
  TfrmFaturalar = class(TGirisForm)
    DataSource1: TDataSource;
    ADO_Faturalar: TADOQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle7: TcxStyle;
    PopupMenu1: TPopupMenu;
    miYeniGozetim: TMenuItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxStyle8: TcxStyle;
    tmr1: TTimer;
    miGozetimDuzenle: TMenuItem;
    cxGrid1: TcxGridKadir;
    GridFaturalar: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    GridFaturalarColumn1: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    N1: TMenuItem;
    E1: TMenuItem;
    GridFaturalarColumn3: TcxGridDBColumn;
    E2: TMenuItem;
    E3: TMenuItem;
    E4: TMenuItem;
    K1: TMenuItem;
    A1: TMenuItem;
    S1: TMenuItem;
    GridFaturalarColumn4: TcxGridDBColumn;
    procedure Fatura(islem: Integer);
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    function EArsivGonder(FaturaId : string) : string;
    function EArsivIptal(FaturaGuid : string) : string;
    function EArsivPDF(FaturaGuid : string ; _tag_ : integer) : string;
    function EArsivDurumSorgula(FaturaGuid : string) : string;
    procedure Gonder;

  private
    { Private declarations }
    FImages : array of TcxImage;
    FImageIds : array of Integer;
    function findMethod(dllHandle: Cardinal; methodName: string): FARPROC;

  protected
    procedure GozlemYazdir (const GozlemID : integer);

  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

  TFaturaGonder = procedure(FaturaXML : PWideChar;
                      kullaniciAdi : PWideChar;
                      sifre : PWideChar;
                      var sonuc : PWideChar;
                      url : PWideChar); stdcall;

  TFaturaIptal = procedure(FaturaGuid : PWideChar;
                      kullaniciAdi : PWideChar;
                      sifre : PWideChar;
                      var sonuc : PWideChar;
                      url : PWideChar); stdcall;
  TFaturaPDF = procedure(FaturaGuid : PWideChar;
                      kullaniciAdi : PWideChar;
                      sifre : PWideChar;
                      var sonuc : PWideChar;
                      url : PWideChar;
                      smtpClientHost : PWideChar;
                      Username : PWideChar;
                      Password : PWideChar;
                      alici : PWideChar;
                      konu : PWideChar;
                      msj : PWideChar
                      ); stdcall;

  TFaturaDurum = procedure(FaturaGuid : PWideChar;
                      kullaniciAdi : PWideChar;
                      sifre : PWideChar;
                      var sonuc : PWideChar;
                      url : PWideChar); stdcall;

const
//LIB_DLL = 'NoktaDLL.dll';
  LIB_DLL = 'D:\Projeler\VS\c#\EFatura\EFaturaDLL\ClassLibrary1\bin\Debug\EFaturaDLL.dll';
  test = 'https://efatura-test.uyumsoft.com.tr/Services/Integration';
  gercek = 'https://efatura.uyumsoft.com.tr/Services/Integration';
var
  frmFaturalar: TfrmFaturalar;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}

function TfrmFaturalar.findMethod(dllHandle: Cardinal;  methodName: string): FARPROC;
begin
  Result := GetProcAddress(dllHandle, pchar(methodName));
end;

procedure TfrmFaturalar.Gonder;
var
 i : integer;
 sql ,faturaId,sonucStr : string;
 Sonuc : TStringList;
begin
   sonucStr := '';
   if mrYes = ShowMessageSkin('Seçili Faturalar E-Arþive Gönderilecek',
                               '','','msg')
   then begin
       pBar.Properties.Max := GridFaturalar.Controller.SelectedRowCount;
       pBar.Position := 0;
       Sonuc := TStringList.Create;
       try
         for i := 0 to GridFaturalar.Controller.SelectedRowCount - 1 do
         begin
            faturaId := GridCellToString(GridFaturalar,'sira',i);
            DurumGoster(True,True,'Fatura E-Arþive Gönderiliyor , ' + faturaId);
            Application.ProcessMessages;
            pBar.Position := i;

            sonucStr := EArsivGonder(faturaId);
            Sonuc := TStringList.Create;
           // Split('|',sonucStr,Sonuc);
            ExtractStrings(['|'],[],PWideChar(sonucStr),Sonuc);

            if Sonuc[0]= '0000' then
            begin
              sql := 'update faturalar set ' +
                     'Guid = ' + QuotedStr(Sonuc[1]) +
                     ',GIBFaturaNo = ' + QuotedStr(Sonuc[2]) +
                     ' where sira = ' + faturaId;
              datalar.QueryExec(sql);
            end
            else
             exit;
         end;
         ShowMessageSkin('Fatura Gönderim Ýþlemi Tamamlandý','','','info');
       finally
        Sonuc.free;
        DurumGoster(False,False,faturaId);
       end;
   end;

end;




function TfrmFaturalar.EArsivGonder(FaturaId : string) : string;
var
  fatura : TFaturaGonder;
  dllHandle: Cardinal;
  TesisKodu: integer;
  faturaXML,doktorKullanici,doktorsifre,pin,url,cardType: string;
  doktorTc : string;
  ss : PWideChar;
  sql : string;
begin
  try
    sql := 'sp_FaturaXML ' + FaturaId;
    QuerySelect(sql);

    ss := 'Yok';
    faturaXML := SelectAdo.FieldByName('FaturaXML').AsString;

    dllHandle := LoadLibrary(LIB_DLL);
    if dllHandle = 0 then
      exit;

    @fatura := findMethod(dllHandle, 'EArsivFaturaGonder');
    if addr(fatura) <> nil then
    fatura(PWideChar(faturaXML),PWideChar('Uyumsoft'),PWideChar('Uyumsoft'),ss,PWideChar(test));
  //  ShowMessage(ss,'','','info');
    EArsivGonder := ss;

    if not Assigned(fatura) then
      raise Exception.Create(LIB_DLL + ' içersinde EArsivFaturaGonder bulunamadý!');
  finally
    FreeLibrary(dllHandle);
  end;
end;


function TfrmFaturalar.EArsivDurumSorgula(FaturaGuid : string) : string;
var
  fatura : TFaturaDurum;
  dllHandle: Cardinal;
  TesisKodu: integer;
  faturaXML,doktorKullanici,doktorsifre,pin,url,cardType: string;
  doktorTc : string;
  ss : PWideChar;
  sql,sonucStr : string;
  Sonuc : TstringList;
begin
  try

    DurumGoster(True,True,'E-Arþiv Fatura Sorgulanýyor , ' + FaturaGuid);
    Application.ProcessMessages;

    ss := '';
    dllHandle := LoadLibrary(LIB_DLL);
    if dllHandle = 0 then
      exit;

    @fatura := findMethod(dllHandle, 'EArsivFaturaDurum');
    if addr(fatura) <> nil then
    fatura(PWideChar(FaturaGuid),PWideChar('Uyumsoft'),PWideChar('Uyumsoft'),ss,PWideChar(test));

    EArsivDurumSorgula := ss;



    sonucStr := ss;
    Sonuc := TStringList.Create;
   // Split('|',sonucStr,Sonuc);
    ExtractStrings(['|'],[],PWideChar(sonucStr),Sonuc);

    if Sonuc[0] = '0000' then
    begin
      sql := 'update faturalar set eArsivDurum = ' + QuotedStr(Sonuc[2]) +
             ' where Guid = ' + QuotedStr(FaturaGuid);
      datalar.QueryExec(sql);
    end;

    if not Assigned(fatura) then
      raise Exception.Create(LIB_DLL + ' içersinde EArsivFaturaDurum bulunamadý!');
  finally
    FreeLibrary(dllHandle);
    DurumGoster(False,False,'');
    Sonuc.Free;
  end;
end;

function TfrmFaturalar.EArsivIptal(FaturaGuid : string) : string;
var
  fatura : TFaturaIptal;
  dllHandle: Cardinal;
  TesisKodu: integer;
  faturaXML,doktorKullanici,doktorsifre,pin,url,cardType: string;
  doktorTc : string;
  ss : PWideChar;
  sql,sonucStr : string;
begin
  try
    ss := '';
    dllHandle := LoadLibrary(LIB_DLL);
    if dllHandle = 0 then
      exit;

    @fatura := findMethod(dllHandle, 'EArsivFaturaIptal');
    if addr(fatura) <> nil then
    fatura(PWideChar(FaturaGuid),PWideChar('Uyumsoft'),PWideChar('Uyumsoft'),ss,PWideChar(test));

    EArsivIptal := ss;

    DurumGoster(True,True,'E-Arþiv Fatura Ýptal Ediliyor , ' + FaturaGuid);
    Application.ProcessMessages;

    sonucStr := ss;

    if sonucStr = '0000' then
    begin
      sql := 'update faturalar set eArsivNo = 0,' +
             'Guid = ' + QuotedStr('') +
             ' where Guid = ' + QuotedStr(FaturaGuid);
      datalar.QueryExec(sql);
    end;

    if not Assigned(fatura) then
      raise Exception.Create(LIB_DLL + ' içersinde EArsivFaturaIptal bulunamadý!');
  finally
    FreeLibrary(dllHandle);
    DurumGoster(False,False,'');
  end;
end;

function TfrmFaturalar.EArsivPDF(FaturaGuid : string ; _tag_ : integer) : string;
var
  fatura : TFaturaPDF;
  dllHandle: Cardinal;
  TesisKodu: integer;
  faturaXML,doktorKullanici,doktorsifre,pin,url,cardType : string;
  alici,username,password,mailserver,konu,msj : string;
  doktorTc : string;
  ss : PWideChar;
  sql,sonucStr : string;
  Sonuc : TStringList;
begin
  try
    DurumGoster(True,True,'E-Arþiv Fatura PDF indiriliyor , ' + FaturaGuid);
    Application.ProcessMessages;

    ss := '';
    dllHandle := LoadLibrary(LIB_DLL);
    if dllHandle = 0 then
      exit;

    @fatura := findMethod(dllHandle, 'EArsivFaturaSavePDF');
    if addr(fatura) <> nil then

    case _tag_ of
    -22 : begin
           alici := ''; username := ''; password := ''; mailserver := ''; konu := '' ; msj := '';
          end;
    -23 : begin
           alici := FirmaBilgileri(GridCellToString(GridFaturalar,'sirketKod',0));
           mailserver := datalar.SMTPSunucu;
           username := datalar.SMTPUserName;
           password := datalar.SMTPPassword;
           konu := 'Dönem Faturasý';
           msj := 'Dönem Faturanýz ektedir. Ýyi Çalýþmalar';
          end;
    end;


    fatura(PWideChar(FaturaGuid),PWideChar('Uyumsoft'),PWideChar('Uyumsoft'),ss,PWideChar(test),
           PWideChar(mailserver),PWideChar(username),PWideChar(password),PWideChar(alici),PWideChar(konu),PWideChar(msj));

    EArsivPDF := ss;

    sonucStr := ss;
    Sonuc := TStringList.Create;
    ExtractStrings(['|'],[],PWideChar(sonucStr),Sonuc);

    if sonuc[0] = '0000' then
    begin
     if _tag_ = -22 then ShellExecute(0, 'open', PChar(sonuc[1]), nil, nil, SW_SHOWNORMAL);
     //if _tag_ = -23 then ShowMessageSkin('Fatura Gönderildi','','','info');
    end
    else
      ShowMessageSkin(Sonuc[0],Sonuc[1],'','info');


    if not Assigned(fatura) then
      raise Exception.Create(LIB_DLL + ' içersinde EArsivFaturaSavePDF bulunamadý!');
  finally
    FreeLibrary(dllHandle);
    DurumGoster(False,False,'');
    sonuc.Free;
  end;
end;

function TfrmFaturalar.Init(Sender : TObject) : Boolean;
begin
  TapPanelElemanVisible(True,True,True,false,false,false,False,false,False,False,False,False);
  txtTopPanelTarih1.Date := date;
  txtTopPanelTarih2.Date := date;
  Result := True;
end;


procedure TfrmFaturalar.Fatura(islem: Integer);
var
  F : TGirisForm;
  GirisRecord : TGirisFormRecord;
  bBasarili: Boolean;
  fID : string;
begin

  GirisRecord.F_FaturaNO_ := '';
  if islem = faturaDuzenle then
   begin
      fID := GridCellToString(GridFaturalar,'sira',0);
      GirisRecord.F_FaturaNO_ := fID;
   end;
  F := FormINIT(TagfrmFatura,GirisRecord,ikEvet,'');
  if F <> nil then F.ShowModal;
end;

procedure TfrmFaturalar.cxButtonCClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
  aModalResult : TModalResult;
  guid : string;
begin
  inherited;

  case Tcontrol(sender).Tag of
  -9 : begin
         Fatura(yeniFatura);
       end;
  -11 : begin
         Fatura(faturaDuzenle);
       end;
  -12 : begin
          F := FormINIT(TagfrmSirketSozlesmeler,GirisRecord,ikEvet,'');
          if F <> nil then F.ShowModal;
       end;
  -20 : begin
         Gonder;
        end;
  -21:begin
       guid := GridCellToString(GridFaturalar,'UUID',0);
       EArsivIptal(guid);
  end;
  -22,-23 : begin
              guid := GridCellToString(GridFaturalar,'UUID',0);
              EArsivPDF(guid,Tcontrol(sender).Tag);
          end;
  -24:begin

  end;
  -25:begin
            guid := GridCellToString(GridFaturalar,'UUID',0);
            EArsivDurumSorgula(guid);
  end;
  -27 : begin

        end;
  end;
end;

procedure TfrmFaturalar.FormCreate(Sender: TObject);
begin
  inherited;
  cxPanel.Visible := false;
 // ToolBar1.Visible := false;

 // ClientHeight := AnaForm.ClientHeight - (AnaForm.ToolBar1.Height + AnaForm.dxStatusBar1.Height+50);
 // ClientWidth := formGenislik;
 // Olustur(self,TableName,'Personel Listesi',23);
  Menu := PopupMenu1;

  TopPanel.Visible := true;

  GridFaturalar.DataController.DataSource := DataSource;
  SayfaCaption('','','','','');
end;

procedure TfrmFaturalar.GozlemYazdir(const GozlemID: integer);
var
  ado : TADOQuery;
  sql : String;
  TopluDataset : TDataSetKadir;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'sp_SahaGozlemRaporBaski ' + IntToStr (GozlemID);

    datalar.QuerySelect(ado, sql);
    TopluDataset.Dataset0 := ado;
    TopluDataset.Dataset0.Name := 'SahaSaglikGozetimRaporu';

    PrintYap('007','Saha Saðlýk Gözetim Raporu','',TopluDataset,pTNone)
  finally
    ado.free;
  end;
end;

procedure TfrmFaturalar.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

