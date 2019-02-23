unit AnaUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.ExtCtrls, dxNavBar,kadirType,kadir,GirisUnit,
  KadirLabel, Data.Win.ADODB, dxSkinsForm, dxSkinsdxStatusBarPainter,
  dxStatusBar, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ImgList, cxClasses, dxNavBarBase,
  dxNavBarCollns,JPEG, Vcl.StdCtrls,pngimage, cxContainer, cxEdit, cxImage,
  cxTextEdit, cxCurrencyEdit, dxSkinsCore, GetFormClass, dxSkinscxSchedulerPainter,
   cxStyles, cxScheduler, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerCustomResourceView, cxSchedulerDayView, cxSchedulerDateNavigator,
  cxSchedulerHolidays, cxSchedulerTimeGridView, cxSchedulerUtils,
  cxSchedulerWeekView, cxSchedulerYearView, cxSchedulerGanttView, cxGroupBox,
  cxRadioGroup, cxSchedulerAggregateStorage, cxSchedulerDBStorage, Menus,
  cxButtons, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxPC, Vcl.OleCtrls, SHDocVw,
  cxSchedulerStrs, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, Data.SqlExpr, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxMemo, cxGridLevel, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, DB, cxLabel, acPNG, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinsDefaultPainters, dxSkinsdxNavBarPainter;

type
  TAnaForm = class(TForm)
    MainMenuKadir1: TMainMenuKadir;
    Timer1: TTimer;
    Timer2: TTimer;
    dxSkinController1: TdxSkinController;
    ToolImage32: TcxImageList;
    ToolImage32_: TcxImageList;
    Menu_Image32: TcxImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton10: TToolButton;
    ToolButton3: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    dxStatusBar1: TdxStatusBar;
    MenuAktifSirket: TdxNavBarGroup;
    cxImageList3: TcxImageList;
    cxImageToolPanel: TcxImageList;
    EventsDataSource: TDataSource;
    EventsTable: TADOTable;
    DBStorage: TcxSchedulerDBStorage;
    UnboundStorage: TcxSchedulerStorage;
    cxSchedulerStorage1: TcxSchedulerStorage;
    cxSchedulerAggregateStorage1: TcxSchedulerAggregateStorage;
    cxSchedulerHolidays1: TcxSchedulerHolidays;
    cxSchedulerDBStorage1: TcxSchedulerDBStorage;
    DataSource1: TDataSource;
    UserTable: TADOTable;
    sayfalar: TcxPageControl;
    AjandaPage: TcxTabSheet;
    pnl_Ajanda: TcxGroupBox;
    Panel1: TPanel;
    cxRadioGroup1: TcxRadioGroup;
    DuyuruPage: TcxTabSheet;
    WebBrowser1: TWebBrowser;
    Menu_Image24: TcxImageList;
    Menu_Image16: TcxImageList;
    Menu_Image24x24: TcxImageList;
    MenuPanel: TcxGroupBox;
    Sirketler: TcxImageComboKadir;
    Subeler: TcxImageComboKadir;
    cxSchedulerDBStorage2: TcxSchedulerDBStorage;
    xTmpPanel: TPanel;
    btRefresh: TcxButtonKadir;
    AjandaAltPage: TcxPageControl;
    pageAjanda: TcxTabSheet;
    Liste: TcxTabSheet;
    cxScheduler1: TcxScheduler;
    AjandaGrid: TcxGridKadir;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    AjandaGridSatirlar: TcxGridDBBandedTableView;
    AjandaGridSatirlarLocation: TcxGridDBBandedColumn;
    AjandaGridSatirlartanimi: TcxGridDBBandedColumn;
    AjandaGridSatirlarILCE: TcxGridDBBandedColumn;
    AjandaGridSatirlarHizmetSure: TcxGridDBBandedColumn;
    AjandaGridSatirlarGirisSaat: TcxGridDBBandedColumn;
    AjandaGridSatirlarCikisSaat: TcxGridDBBandedColumn;
    AjandaGridSatirlarPlanlananTarih: TcxGridDBBandedColumn;
    AjandaGridSatirlarResourceId: TcxGridDBBandedColumn;
    AjandaGridSatirlarADISOYADI: TcxGridDBBandedColumn;
    AjandaGridSatirlarColumn1: TcxGridDBBandedColumn;
    AjandaGridSatirlarColumn2: TcxGridDBBandedColumn;
    AjandaGridLevel1: TcxGridLevel;
    AjandaPanel: TcxGroupBox;
    btnYazdir: TcxButtonKadir;
    cxButtonKadir1: TcxButtonKadir;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    AjandaGridSatirlarColumn3: TcxGridDBBandedColumn;
    FotoPanel: TcxGroupBox;
    cxAdi: TcxLabel;
    cxGrupAdi: TcxLabel;
    Foto: TcxImage;
    Panel2: TPanel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure MainMenuKadir1GroupClick(Sender: TObject; AGroup: TdxNavBarGroup);
    procedure MainMenuKadir1LinkClick(Sender: TObject;
      ALink: TdxNavBarItemLink);
    procedure menuclik(_tag_ : integer ; FormID : integer = 0; ShowTip : integer = 0);
    procedure ToolButtonClick(Sender: TObject);
    function GetResourceAsJpeg(const resname: string): TJPEGImage;
  //  function GetResourceAsString(const resname: string): TstringList;
    function GetResourceAsPNG(const resname: string): TPNGImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxRadioGroup1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure sayfalarCanCloseEx(Sender: TObject; ATabIndex: Integer;
      var ACanClose: Boolean);
    procedure sayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    function GuncellemeKontrol : boolean;
    procedure GuncellemeBaslat(const bAutomatic: Boolean);
    procedure MainMenuKadir1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure MainMenuKadir1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure MainMenuKadir1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure MainMenuKadir1LinkPress(Sender: TObject;
      ALink: TdxNavBarItemLink);
    procedure SirketlerPropertiesChange(Sender: TObject);
    procedure SubelerPropertiesChange(Sender: TObject);
    procedure cxScheduler1InitEventImages(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent; AImages: TcxSchedulerEventImages);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btRefreshClick(Sender: TObject);
    procedure btnYazdirClick(Sender: TObject);
    procedure cxButtonKadir1Click(Sender: TObject);
    procedure AjandaAltPagePageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure cxScheduler1AfterEditing(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent);
  private
    { Private declarations }
    procedure WMSettingChange(var Message: TMessage); message WM_SETTINGCHANGE;
  protected
    procedure SetUserInfo;
    procedure SetMenu;
  public
    { Public declarations }
    destructor Destroy; override;
  end;

   const
  ScreenWidth : LongInt = 1024;
  ScreenHeight : LongInt = 768;

var
  AnaForm: TAnaForm;
  f : double;
  _pressItem_ : TdxNavBarItem;
  _targetGroup_ : TdxNavBarGroup;

implementation
      uses Tnm_Ilaclar,
      Tnm_LabTest,
      Data_Modul,
      HastaKart,
      Login,
      EventCompletDurumBildir,
      Tnm_UserSettings,
      sifreDegis,
      Update_G;

{$R *.dfm}
{$R xx.res}

procedure TAnaForm.SetMenu;
var
 i,j : integer;
begin

  MainMenuKadir1.KullaniciAdi := datalar.username;
  MainMenuKadir1.MenuGetir;

  for i := 0 to MainMenuKadir1.Items.Count - 1 do
  begin
    for j := 0 to ToolBar1.ButtonCount - 1 do
    begin
      if MainMenuKadir1.Items[i].Tag = ToolBar1.Buttons[j].Tag
      then begin
        ToolBar1.Buttons[j].Visible := MainMenuKadir1.Items[i].Visible;
        ToolBar1.Buttons[j].Hint := MainMenuKadir1.Items[i].Hint;
   //     ToolBar1.Buttons[j].ImageIndex := MainMenuKadir1.Items[i].LargeImageIndex;
      end;

    end;
  end;
end;

procedure TAnaForm.WMSettingChange(var Message: TMessage);
begin
  FormatSettings.DecimalSeparator := '.';
  FormatSettings.ThousandSeparator := ',';
 // FormatSettings.ShortDateFormat := 'gg.aa.yyyy';
end;


function TAnaForm.GuncellemeKontrol : boolean;
var
  sql , guncel : string;
  ado : TADOQuery;
  deneme : integer;
begin
  ado := TADOQuery.Create(nil);
  try
    Result := False;
    ado.Connection := datalar.ADOConnection2;
    try
      sql := 'select SLK,SLT,SLX from parametreler where SLK = ''GT'' and SLB = ''0000''';
      datalar.QuerySelect(ado,sql);
      Guncel := ado.Fieldbyname('SLX').AsString;

      if datalar.ADOConnection1.Connected = false
      then begin
               deneme := 1;
               while deneme < 3 do
               begin
                    try
                       SQL_Host_Baglan;
                       deneme := 3;
                    except
                          deneme := deneme + 1;
                    end;
               end;

               if DATALAR.ADOConnection1.Connected = false
               then begin
                  exit;
               end;
      end;

      try
        datalar.Ado_Guncellemeler.Connection := datalar.ADOConnection1;
        sql := 'select * from UPDATE_CMD where ID > ' + guncel + ' and Modul = ''D''' +
               ' Order by ID ';
        datalar.QuerySelect(datalar.Ado_Guncellemeler,sql);
      except on e : Exception do
       begin
          ShowMessageSkin(e.Message,'','','info');
       end;
      end;

      if not datalar.Ado_Guncellemeler.Eof
      then begin
        Result := True
      end
      else
        Result := False;
    except

    end;
  finally
    ado.Free;
  end;


end;

procedure TAnaForm.GuncellemeBaslat(const bAutomatic: Boolean);
begin
  Application.CreateForm(TfrmUpdate, frmUpdate);
  try
    frmUpdate.UpdateTip(bAutomatic);
    frmUpdate.ShowModal;
  finally
    FreeandNil (frmUpdate);
  end;
end;



function GetResourceAsString(const resname: string): TstringList;
var
  Stream: TResourceStream;
begin
  Stream := TResourceStream.Create(HInstance, 'Deneme', 'TEXT');
  try
    result := TStringList.Create;
    result.LoadFromStream(Stream);
  finally
    stream.Free;
  end;
end;


function TAnaForm.GetResourceAsJpeg(const resname: string): TJPEGImage;
var
 Stream: TResourceStream;
begin
    Stream := TResourceStream.Create(hInstance, ResName, 'JPEG');
  try
    Result := TJPEGImage.Create;
    Result.LoadFromStream(Stream);
  finally
    Stream.Free;
  end;
end;

function TAnaForm.GetResourceAsPNG(const resname: string): TPNGImage;
var
 Stream: TResourceStream;
begin
    Stream := TResourceStream.Create(hInstance, ResName, 'PNG');
  try
    Result := TPNGImage.Create;
    Result.LoadFromStream(Stream);
  finally
    Stream.Free;
  end;
end;

procedure TAnaForm.btRefreshClick(Sender: TObject);
var
  sTmp : String;
  ado : TADOQuery;
  bRetry : boolean;
begin
  ado := TADOQuery.Create (Self);
  bRetry := False;
  try
    ado.Connection := DATALAR.ADOConnection2;
    try
      ado.SQL.Text := 'select 1 x';
      ado.Open;
      ado.Close;
    except
      on e:exception do
      begin
        bRetry := True;
        ShowMessageSkin('Veritabaný baðlantýsý baþarýsýz oldu, tekrar baðlanýlacak'#13#10#13#10 + e.Message, '', '', 'info');
      end;
    end;
    if bRetry then
    begin
      DATALAR.ADOConnection2.Close;
      Sleep (1000);
      DATALAR.ADOConnection2.Open;
    end;
    sTmp := Sirketler.Filter;
    Sirketler.Filter := '(2 = 3)';
    Sirketler.Filter := sTmp;
    datalar.ReceteKullanimYollari.active := False;
    datalar.Ado_Doktorlar.Active := False;
    datalar.Ado_IGU.Active := False;
    datalar.Ado_DSP.Active := False;
    datalar.ADO_TehlikeSiniflari.Active := False;
    datalar.KontrolZorunlu.Active := False;
    datalar.ReceteKullanimYollari.active := True;
    datalar.Ado_Doktorlar.Active := True;
    datalar.Ado_IGU.Active := True;
    datalar.Ado_DSP.Active := True;
    datalar.ADO_TehlikeSiniflari.Active := True;
    datalar.KontrolZorunlu.Active := True;
    ado.SQL.Text := 'Select Doktor, SirketKodu, IGU, DigerSaglikPers, Grup, ADISOYADI, GrupTanimi from Users where Kullanici = ' + SQLValue(DATALAR.username);
    ado.Open;
    try
      if not ado.Eof then
      begin
        DATALAR.doktorKodu := ado.FieldByName('doktor').AsString;
        datalar.sirketKodu := ado.FieldByName('SirketKodu').AsString;
        datalar.IGU := ado.FieldByName('IGU').AsString;
        datalar.DSPers := ado.FieldByName('DigerSaglikPers').AsString;
        datalar.UserGroup := ado.FieldByName('Grup').AsString;
        datalar.usernameAdi := ado.FieldByName('ADISOYADI').AsString;
        datalar.UserGroupName := ado.FieldByName('GrupTanimi').AsString;
      end
      else begin
        DATALAR.doktorKodu := '';
        datalar.sirketKodu := '';
        datalar.IGU := '';
        datalar.DSPers := '';
        datalar.UserGroup := '';
        datalar.UserGroupName := '';
        DATALAR.usernameAdi := '';
      end;
      SetUserInfo;
    finally
      ado.Close;
    end;
  finally
    ado.Free;
  end;

  SetMenu;

end;

procedure TAnaForm.cxButton1Click(Sender: TObject);
begin
  pnl_Ajanda.Visible := false;
end;

procedure TAnaForm.cxButtonKadir1Click(Sender: TObject);
//var
  //GirisRecord : TGirisFormRecord;
  //F : TGirisForm;
  //uu : string;
begin
(*
    GirisRecord.F_Tarih1_ := FormatDateTime('YYYY-MM-DD',cxScheduler1.DateNavigator.SelectionList[0]);
    GirisRecord.F_Tarih2_ := FormatDateTime('YYYY-MM-DD',cxScheduler1.DateNavigator.SelectionList[cxScheduler1.DateNavigator.SelectionList.Count-1]);
    GirisRecord.F_ResourceID_ :=  cxScheduler1.SelResource.ResourceID;
    F := FormINIT(TagfrmAjandaOzet,self,GirisRecord,'',NewTab(AnaForm.sayfalar,TagfrmAjandaOzet),ikHayir,'');
    if F <> nil then F.ShowModal;
    *)
end;

procedure TAnaForm.AjandaAltPagePageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
var
  uu,t1,t2 : string;
begin
  if NewPage = Liste then
  begin
   t1 := FormatDateTime('YYYY-MM-DD',cxScheduler1.DateNavigator.SelectionList[0]);
   t2 := FormatDateTime('YYYY-MM-DD',cxScheduler1.DateNavigator.SelectionList[cxScheduler1.DateNavigator.SelectionList.Count-1]);

   if UserRight('Kullanýcý Ýþlemleri', 'Herkesin Ýþ Planýný Görsün') = True
   then
    uu := ''
   else
   uu :=  cxScheduler1.SelResource.ResourceID;

   AjandaGrid.Dataset.Connection := datalar.ADOConnection2;
   AjandaGrid.Dataset.Active := False;
   AjandaGrid.Dataset.SQL.Text := 'exec sp_ajanda ' + QuotedStr(uu) + ',' +
                                                     QuotedStr(t1) + ',' +
                                                     QuotedStr(t2);

   AjandaGrid.Dataset.Active := True;

  end;

end;

procedure TAnaForm.btnYazdirClick(Sender: TObject);
var
  uu,sql,t1,t2 : string;
  TopluDataset : TDataSetKadir;
begin

   t1 := FormatDateTime('YYYY-MM-DD',cxScheduler1.DateNavigator.SelectionList[0]);
   t2 := FormatDateTime('YYYY-MM-DD',cxScheduler1.DateNavigator.SelectionList[cxScheduler1.DateNavigator.SelectionList.Count-1]);

   uu :=  AjandaGrid.Dataset.FieldByName('ResourceId').AsString;
   sql := 'exec sp_ajanda ' + QuotedStr(uu) + ','
                            + QuotedStr(t1) + ','
                            + QuotedStr(t2);
  // datalar.QuerySelect(sql);
   TopluDataset.Dataset0 := datalar.QuerySelect(sql);
   PrintYap('AJP','\Ajanda Yazdýr',inttoStr(Tag) ,TopluDataset,KadirType.pTNone);

end;

procedure TAnaForm.cxRadioGroup1PropertiesChange(Sender: TObject);
begin
  case cxRadioGroup1.EditValue of
     1 : cxScheduler1.ViewDay.Active := true;
     7 : cxScheduler1.ViewWeek.Active := true;
     365 : cxScheduler1.ViewYear.Active := true;
  end;
end;

procedure TAnaForm.cxScheduler1AfterEditing(Sender: TcxCustomScheduler;
  AEvent: TcxSchedulerControlEvent);
var
  FB : TFirmaBilgi;
begin
  if AEvent.TaskStatus = tsComplete
  Then Begin
    FB := FirmaBilgileri(copy(AEvent.Location,1,pos('-',AEvent.Location)-1));
    Application.CreateForm(TfrmEventDurumBildir, frmEventDurumBildir);
    try
      frmEventDurumBildir.EMail := FB.YetkiliMail;
      frmEventDurumBildir.MobilTel := FB.YetkiliMobil;

      frmEventDurumBildir.mesaj :=
      datetimetostr(AEvent.Start) + ' - ' + datetimetostr(AEvent.Finish) + ' Tarihi ve Saatleri Arasýnda Ziyaretimiz ,' + char(13) +
      AEvent.Message;

      frmEventDurumBildir.ShowModal;
    finally
      FreeAndNil (frmEventDurumBildir);
    end;
  End;

end;

procedure TAnaForm.cxScheduler1InitEventImages(Sender: TcxCustomScheduler;
  AEvent: TcxSchedulerControlEvent; AImages: TcxSchedulerEventImages);
//var
//  intValue  : Integer;
begin
  case integer(AEvent.TaskStatus) of
   0 : AImages.Add(77);
   1 : AImages.Add(85);
   2 : AImages.Add(82);
  end;
end;

destructor TAnaForm.Destroy;
begin
  inherited;
  FreeAndNil(Datalar);
end;

procedure TAnaForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  datalar.LoginInOut.Login := lgnOut;
  datalar.LoginInOut.Execute;
  Datalar.ADOConnection2.Connected := false;
  Action := caFree;
  Release;
end;

procedure TAnaForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Canclose := ShowMessageSkin ('Programdan çýkmak istiyor musunuz ?', '', '', 'conf') = mrYes;
end;

procedure TAnaForm.FormCreate(Sender: TObject);
//var
// sube ,where : string;
//  i,j : integer;
begin
 // Res Dosya okuma
 //memo1.Lines := GetResourceAsString('Deneme');
 //cxImage1.Picture.Graphic := GetResourceAsPNG('X');

 // WebBrowser1.Navigate('https://www.noktayazilim.net');

  FormatSettings.DecimalSeparator := '.';
  FormatSettings.ThousandSeparator := ',';
 // FormatSettings.ShortDateFormat := 'gg.aa.yyyy';

 (*
  datalar._YazilimGelistirici := RegOku('OSGB_YazilimGelistirici');
  if DATALAR._YazilimGelistirici = 1 then
    caption := 'Mavi Nokta Bilgi Teknolojileri Ýþ Saðlýðý ve Güvenliði'
  else if DATALAR._YazilimGelistirici = 2 then
    caption := 'Uyumsoft Ýþ Saðlýðý ve Güvenliði';
  *)

  Sayfalar.Properties.CloseButtonMode := cbmNone;
  WebBrowser1.Navigate('https://www.noktayazilim.net/destek/GenelMesajlar2.aspx?Tip=O');



//  cxSetResourceString(@scxEvent,'Olay');



end;

procedure TAnaForm.FormResize(Sender: TObject);
begin
  MainMenuKadir1.Height := self.ClientHeight - (dxStatusBar1.Height + ToolBar1.Height);
  MainMenuKadir1.Top := 60;
end;

procedure TAnaForm.FormShow(Sender: TObject);
var
 i,j : integer;
 sube , Where : string;
begin

  try
    LisansKontrol(f);
    if f < 10
    Then ShowMessageSkin('Kalan Lisans Süreniz : ' + floattoStr(f) + ' Gün','Hizmetinizin Aksamamasý Ýçin ,Lütfen Lisans Uzatýnýz','Detaylý Bilgi Ýçin Sistem Yöneticisine Baþvurunuz','info');
  except
    ShowMessageSkin('Lisans Hatasý','Lütfen Lisans ALýnýz','','info');
  end;


  if pos('UYUM',paramStr(0)) > 0
  then begin
    Caption := 'Uyumsoft Bilgi Sistemleri ve Teknolojileri A.Þ.';
    Datalar.YazilimFirma := 'UYUM';
  end
  Else
  Begin
    Caption := 'Mavi Nokta Bilgi Teknolojileri LTD.ÞTÝ.';
    Datalar.YazilimFirma := 'Nokta';
  End;
  Datalar.StandartFormCaption := Caption;


  if datalar.DoktorKodu <> '' then
  begin
    where := '';
    sube := ' Doktor = ' + QuotedStr(datalar.doktorKodu);
  end
  else
  if datalar.IGU <> '' then
  begin
    where := '';
    sube := ' IGU = ' + QuotedStr(datalar.IGU);

  end
  else
  if datalar.DSPers <> '' then
  begin
    where := '';
    sube := ' DigerSaglikPers = ' + QuotedStr(datalar.DSPers);
  end
  else
  if datalar.sirketKodu <> ''
  Then begin
    Where := 'SirketKod = ' + QuotedStr(datalar.sirketKodu);
    sube:= '';
  end
  else begin
    Where := '';
    Sube := '';
  end;
  datalar.sirketlerUserFilter := where + sube;
  Sirketler.Conn := Datalar.ADOConnection2;
  Sirketler.TableName := 'SIRKETLER_TNM_view';
  Sirketler.ValueField := 'SirketKod';
  Sirketler.DisplayField := 'Tanimi';
  Sirketler.BosOlamaz := False;
  Sirketler.Filter :=  where + sube;
  Sirketler.tag := -100;
  Sirketler.ItemIndex := 0;


  cxScheduler1.Storage.ConString := datalar.ADOConnection2.ConnectionString;
  cxScheduler1.Storage.Sirketler.Properties.Items := Sirketler.Properties.Items;
 // if not GuncellemeTakipScriptPush then Vcl.dialogs.ShowMessage('');

  if GuncelKontrol = 'Evet'
  then
    if rev = 'G'
    then begin
       GuncellemeBaslat(True);
    end;

  UserTable.Active := True;
  if UserRight('Kullanýcý Ýþlemleri', 'Herkesin Ýþ Planýný Görsün') = True
  then begin
       UserTable.Filter := '';
  end
  else
   UserTable.Filter := 'Kullanici = ' + QuotedStr(datalar.username);

  EventsTable.Active := True;

  AjandaAltPage.ActivePageIndex := 0;

(*
  MainMenuKadir1.Left := -1 * MainMenuKadir1.Width;
  MainMenuKadir1.Height := self.ClientHeight - (dxStatusBar1.Height + ToolBar1.Height);
  MainMenuKadir1.Top := 60;
  *)

  SetMenu;

 (*
  MainMenuKadir1.KullaniciAdi := datalar.username;
  MainMenuKadir1.MenuGetir;

  for i := 0 to MainMenuKadir1.Items.Count - 1 do
  begin
    for j := 0 to ToolBar1.ButtonCount - 1 do
    begin
      if MainMenuKadir1.Items[i].Tag = ToolBar1.Buttons[j].Tag
      then begin
        ToolBar1.Buttons[j].Visible := MainMenuKadir1.Items[i].Visible;
        ToolBar1.Buttons[j].Hint := MainMenuKadir1.Items[i].Hint;
   //     ToolBar1.Buttons[j].ImageIndex := MainMenuKadir1.Items[i].LargeImageIndex;
      end;

    end;
  end;
  *)



  scaled := true;
  if (screen.width <> ScreenWidth) then
  begin
   // height := longint(height) * longint(screen.height) div ScreenHeight;
   // width := longint(width) * longint(screen.width) div ScreenWidth;

 //   scaleBy(screen.width, ScreenWidth);
  end;

 // dxStatusBar1.Panels[1].Text := DATALAR.AktifSirketAdi + '-' + datalar.AktifSubeAdi;
 // dxStatusBar1.Panels[1].Width := length(Datalar.AktifSirketAdi) * 8;
  dxStatusBar1.Panels[3].Text := DATALAR._merkezAdi;
  dxStatusBar1.Panels[3].Width := length(dxStatusBar1.Panels[3].Text) * 8;
  dxStatusBar1.Panels[5].Text := 'Versiyon : ' + datalar.versiyon + ' - Lisans Bitiþ Tarihi : ' + FormattedTarih(Datalar.LisansBitis);
  SetUserInfo;




end;

procedure TAnaForm.MainMenuKadir1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
    if dxNavBarDragObject.TargetGroup.Tag = 500 then
    begin
       _targetGroup_ := dxNavBarDragObject.TargetGroup;
    end
    else
    begin
      _targetGroup_ := nil;

    end;
end;

procedure TAnaForm.MainMenuKadir1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
    if Assigned(_targetGroup_) = True
    then
     if _targetGroup_.Tag <> 500 then
      Accept := False;
end;

procedure TAnaForm.MainMenuKadir1EndDrag(Sender, Target: TObject; X,
  Y: Integer);
var
  sql : string;
begin
    if Assigned(_targetGroup_) = True
    then begin
      // ShowMessage(_pressItem_.Caption,'','','info');
       sql := ' if not exists (select * from MenuIslem_SK where KAYITID = ' + inttostr(_pressItem_.Tag)+ ') ' +
              'insert into MenuIslem_SK ' +
              '(Menu, KAYITID, MainMenu, Kapsam, imageIndex, ShowTip, FormTag,Kullanici) ' +
              ' values (' +
               QuotedStr(_pressItem_.Caption) + ',' +
               inttostr(_pressItem_.Tag) + ',' +
               QuotedStr(_pressItem_.Caption) + ',' +
               inttostr(_targetGroup_.Tag) + ',' +
               inttostr(_pressItem_.SmallImageIndex) + ',' +
               inttostr(_pressItem_.ShowTip) + ',' +
               inttostr(_pressItem_.FormID) + ',' +
               QuotedStr(datalar.username) + ')';
       datalar.QueryExec(sql);
    end;
    MainMenuKadir1.MenuGetir;
   _targetGroup_ := nil;
end;

procedure TAnaForm.MainMenuKadir1GroupClick(Sender: TObject;
  AGroup: TdxNavBarGroup);
var
  I : integer;
begin

   for I := 0 to MainMenuKadir1.Groups.Count - 1 do
   begin
     if I <> AGroup.Index then MainMenuKadir1.Groups[I].Expanded := false;
   end;
 //  MainMenuKadir1.Groups[AGroup.Index].Expanded := true;


end;

procedure TAnaForm.ToolButton1Click(Sender: TObject);
begin
(*
 if MainMenuKadir1.left < 0
  then
   MainMenuKadir1.Goster
  else
   MainMenuKadir1.Gizle;
  *)
  if MenuPanel.Visible then MenuPanel.Visible := False else MenuPanel.Visible := True;


end;

procedure TAnaForm.ToolButton2Click(Sender: TObject);
begin
  pnl_Ajanda.Visible := True;
end;

procedure TAnaForm.ToolButtonClick(Sender: TObject);
begin

 case TToolButton(sender).Tag of
   101 : begin
           menuclik(TToolButton(sender).Tag,TagfrmDoktorlar,1);
         end

         else
           menuclik(TToolButton(sender).Tag);

 end;




end;

procedure TAnaForm.MainMenuKadir1LinkClick(Sender: TObject;
  ALink: TdxNavBarItemLink);
var
 showTip : integer;
 FID : integer;
begin
  FID :=  Alink.Item.FormID;
  showTip := ALink.Item.ShowTip;
  menuclik(ALink.Item.Tag,FID,showTip);
end;

procedure TAnaForm.MainMenuKadir1LinkPress(Sender: TObject;
  ALink: TdxNavBarItemLink);
begin
  _pressItem_ := Alink.Item;
end;

procedure TAnaForm.menuclik(_tag_ : integer ; FormID : integer = 0 ; ShowTip : integer = 0);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
  tc : string;
  aTabSheet : TcxTabSheet;
  bTamam : Boolean;
  sSifre : String;
begin
// MenuItem cliklendiðinde menu satiri form açýlma þekli ile form açar yada sadece method çalýþtýrýr.
//FormID > 0 form açýlacak
 case _Tag_ of
    9999 : close;
    83 : begin
      SifreDegistir (False);
    end;
    121 : begin
            DestekTalep;
          end;
    TagYeniOSGBVeriTabani : begin
      if not InputQuery ('Ýþlem Þifresi Giriþi', 'Ýþlem Þifresi', sSifre) then Exit;
      if sSifre <> 'Nokta5353' then Exit;
      YeniOSGBFirmaVeritabani;
    end;
    122 : begin
            OnlineDestekOpen;
          end;
    124 : begin
            LisansUzat;
          end;
    125 : begin
           DBUpdate;
          end;
    135 : begin
           PersonelTetkikIstemleri('','');
          end;
      6 : begin
           tc := InputBox('Personel Ara','Tc Kimlik No','');
           if IsNull (TC) then Exit;

           if FindTab(AnaForm.sayfalar,TagfrmHastaKart)
           Then begin
             F := TGirisForm(FormClassType(TagfrmHastaKart));
             TGirisForm(FormClassType(TagfrmHastaKart))._TC_ := tc;
             TGirisForm(FormClassType(TagfrmHastaKart)).Init(F);
           end
           Else begin
            bTamam := False;
            aTabSheet := NewTab(AnaForm.sayfalar,TagfrmHastaKart);
            try
              F := FormINIT(TagfrmHastaKart,self,'',aTabSheet,ikEvet,'',tc);
              bTamam := F <> nil;
              if bTamam then F.show;
            finally
              if not bTamam then FreeAndNil(aTabSheet);
            end;
          end;
          end
     else
        if FormID > 0 then
        begin
          if ShowTip  =  0
          then begin
              if FindTab(sayfalar,FormID) Then Exit;
              bTamam := False;
              aTabSheet := NewTab(sayfalar,FormID);
              try
                F := FormINIT(FormID,self,'',aTabSheet,ikEvet,'');
                bTamam := F <> nil;
                if bTamam then F.show;
              finally
                if not bTamam then FreeAndNil(aTabSheet);
              end;
          end
          else
          begin
              F := FormINIT(FormID,GirisRecord,ikEvet,'');
              if F <> nil then F.ShowModal;
          end;
        end
        else
        begin
           FormINIT(_Tag_);
        end;
 end;


 (*
  exit;
  // MainMenuKadir1.Gizle;
   case _tag_ of
    2 : begin
            if FindTab(sayfalar,'TabfrmHastaKart') Then Exit;
            F := FormINIT(TagfrmHastaKart,self,'',NewTab(sayfalar,'TabfrmHastaKart'),ikEvet,'Giriþ');
            if F <> nil then F.show;
        end;

    3 : begin
             if FindTab(sayfalar,'TabfrmHastaListe') Then Exit;
             F := FormINIT(TagfrmHastaListe,self,'',NewTab(sayfalar,'TabfrmHastaListe'));
             if F <> nil then F.show;
        end;

     4 : begin
          Application.CreateForm(TfrmIlacAnaGrup, frmIlacAnaGrup);
          frmIlacAnaGrup.ShowModal;
          FreeAndNil(frmIlacAnaGrup);;
        end;

    5 : begin
         Application.CreateForm(TfrmIlaclar, frmIlaclar);
         frmIlaclar.ShowModal;
         FreeAndNil(frmIlaclar);
        end;
    6 : begin

          if FindTab(sayfalar,'TabfrmSeansDagilimi') Then Exit;
          F := FormINIT(TagfrmSeansDagilimi,self,'',NewTab(sayfalar,'TabfrmSeansDagilimi'),ikEvet,'Giriþ');
          if F <> nil then F.show;
        end;

    22 : begin
            if FindTab(sayfalar,'TabfrmTopluSeans') Then Exit;
            F := FormINIT(TagfrmTopluSeans,self,'',NewTab(sayfalar,'TabfrmTopluSeans'),ikEvet,'Giriþ');
            if F <> nil then F.show;

          //Application.CreateForm(TfrmLabTest, frmLabTest);
          //frmLabTest.ShowModal;
          //frmLabTest := nil;
        end;
    21 : begin
            if FindTab(sayfalar,'TabfrmTopluGelis') Then Exit;
            F := FormINIT(TagfrmTopluGelis,self,'',NewTab(sayfalar,'TabfrmTopluGelis'),ikEvet,'');
            if F <> nil then F.show;
        //  Application.CreateForm(TfrmMakina, frmMakina);
        //  frmMakina.ShowModal;
       //   FreeAndNil(frmMakina);
         end;
    23 : begin
            if FindTab(sayfalar,'TabfrmTahliltakip') Then Exit;
            F := FormINIT(TagfrmTahliltakip,self,'',NewTab(sayfalar,'TabfrmTahliltakip'),ikHayir,'Giriþ');
            if F <> nil then F.show;

          //Application.CreateForm(TfrmLabTest, frmLabTest);
          //frmLabTest.ShowModal;
          //frmLabTest := nil;
        end;
    26 : begin
        //  FormINITTForm(TagfrmTeleEkg).ShowModal;
           if FindTab(sayfalar,'TabfrmTeleEkg') Then Exit;
           F := FormINIT(TagfrmTeleEkg,self,'',NewTab(sayfalar,'TabfrmTeleEkg'));
           if F <> nil then F.show;
         end;
    81 : begin
          F := FormINIT(TagfrmKurumBilgi,GirisRecord,ikHayir,'');
          if F <> nil then F.show;
         end;

    82 : begin
          F := FormINIT(TagfrmUsers,GirisRecord,ikEvet,'Giriþ');
          if F <> nil then F.show;
         end;
    83 : begin
           SifreDegistir('',PrgSifre);
         end;
    43 : begin
            if FindTab(sayfalar,'TabfrmGonderilmis') Then Exit;
            F := FormINIT(TagfrmGonderilmis,self,'',NewTab(sayfalar,'TabfrmGonderilmis'),ikHayir);
            if F <> nil then F.show;
         end;
    44 : begin
            if FindTab(sayfalar,'TabfrmfrmDamarIzi') Then Exit;
            F := FormINIT(TagfrmDamarIzi,self,'',NewTab(sayfalar,'TabfrmDamarIzi'),ikHayir);
            if F <> nil then F.show;
         end;

    45 : begin
            if FindTab(sayfalar,'TabfrmTakipKontrol') Then Exit;
            F := FormINIT(TagfrmTakipKontrol,self,'',NewTab(sayfalar,'TabfrmTakipKontrol'),ikEvet);
            if F <> nil then F.show;
         end;

    46 : begin
           if FindTab(sayfalar,'TabfrmFatura') Then Exit;
           F := FormINIT(TagfrmFatura,self,'',NewTab(sayfalar,'TabfrmFatura'),ikEvet,'');
           if F <> nil then F.show;
     //      FormINITTForm(TagfrmSaglikNetOnline).ShowModal;
         end;
    47 : begin
           if FindTab(sayfalar,'TabfrmDonemSonlandir') Then Exit;
           F := FormINIT(TagfrmDonemSonlandir,self,'',NewTab(sayfalar,'TabfrmDonemSonlandir'),ikEvet,'');
           if F <> nil then F.show;
     //      FormINITTForm(TagfrmSaglikNetOnline).ShowModal;
         end;

    48 : begin
           if FindTab(sayfalar,'TabfrmSaglikNetOnline') Then Exit;
           F := FormINIT(TagfrmSaglikNetOnline,self,'',NewTab(sayfalar,'TabfrmSaglikNetOnline'),ikEvet,'');
           if F <> nil then F.show;
     //      FormINITTForm(TagfrmSaglikNetOnline).ShowModal;
         end;

   80 : begin
          F := FormINIT(TagfrmDoktorlar,GirisRecord,ikHayir,'');
          if F <> nil then F.ShowModal;
         end;

   102 : begin
          F := FormINIT(TagfrmHemsireler,GirisRecord,ikHayir,'');
          if F <> nil then F.ShowModal;
         end;

   108 : begin
          F := FormINIT(TagfrmMakina,GirisRecord,ikHayir,'');
          if F <> nil then F.ShowModal;
         end;

    9999 : close;

   end;
       *)
end;

procedure TAnaForm.sayfalarCanCloseEx(Sender: TObject; ATabIndex: Integer;
  var ACanClose: Boolean);
var
  Comp : TComponent;
begin
 if ATabIndex in [0,1]
 then begin
   ACanClose := False;
 end
 else begin
   Comp := Sayfalar.Pages[ATabIndex].Components[0];
   ACanClose := TGirisForm(Comp).CloseQuery;
   if ACanClose then TGirisForm(Comp).Close;
 end;
end;

procedure TAnaForm.sayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
  var AllowChange: Boolean);
begin
   if NewPage.PageIndex in [0,1]
   then
     Sayfalar.Properties.CloseButtonMode := cbmNone
   else
     Sayfalar.Properties.CloseButtonMode := cbmActiveTab;

   // Deneme


end;

procedure TAnaForm.SetUserInfo;
begin
  dxStatusBar1.Panels[4].Text := 'Kullanýcý : ' + datalar.username + ' ('+datalar.usernameAdi+'), Grubu: ' + DATALAR.UserGroupName;
  dxStatusBar1.Panels[4].Width := length(dxStatusBar1.Panels[4].Text) * 6;
  SetAnaFormFoto;
  Foto.Picture.Assign(datalar.Foto);
  cxAdi.Caption := datalar.userTanimi;
  cxGrupAdi.Caption := datalar.UserGroupName;

end;

procedure TAnaForm.SirketlerPropertiesChange(Sender: TObject);
var
  sube : string;
begin

  datalar.AktifSirket := TcxImageComboKadir(sender).EditValue;
  datalar.AktifSirketAdi := TcxImageComboKadir(sender).EditingText;
  dxStatusBar1.Panels[1].Text := DATALAR.AktifSirketAdi + '-' + datalar.AktifSubeAdi;
  dxStatusBar1.Panels[1].Width := length(Datalar.AktifSirketAdi) * 8;

  if (datalar.doktorKodu <> '')
  then
     sube := ' and subeDoktor = ' + QuotedStr(datalar.doktorKodu)
  else
  if (datalar.IGU <> '') then
     sube := ' and IGU = ' + QuotedStr(datalar.IGU)
  else
  if (datalar.DSPers <> '') then
     sube := ' and DigerSaglikPers = ' + QuotedStr(datalar.DSPers)
  else
    sube := '';

  Subeler.Conn := Datalar.ADOConnection2;
  Subeler.TableName := 'SIRKET_SUBE_TNM';
  Subeler.ValueField := 'subeKod';
  Subeler.DisplayField := 'subeTanim';
  Subeler.Filter := ' SirketKod = ' + QuotedStr(datalar.AktifSirket) + sube + ' and (Pasif = 0 or Pasif is Null)';

  datalar.AktifSube := Subeler.getItemString;

end;

procedure TAnaForm.SubelerPropertiesChange(Sender: TObject);
begin
  if not isNull(Subeler.EditText)
  then begin
    datalar.AktifSube := Subeler.EditValue;
    datalar.AktifSubeAdi := Subeler.EditingText;
  end
  else
  datalar.AktifSube := Subeler.getItemString;
end;

end.

