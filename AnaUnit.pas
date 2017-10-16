unit AnaUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.ExtCtrls, dxNavBar,kadirType,kadir,GirisUnit,
  KadirLabel, Data.DB, Data.Win.ADODB, dxSkinsForm, dxSkinsdxStatusBarPainter,
  dxStatusBar, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ImgList, cxClasses, dxNavBarBase,
  dxNavBarCollns,JPEG, Vcl.StdCtrls,pngimage, cxContainer, cxEdit, cxImage,
  cxTextEdit, cxCurrencyEdit, dxSkinsCore, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters,
  dxSkinsdxNavBarPainter,GetFormClass, dxSkinscxSchedulerPainter,
   cxStyles, cxScheduler, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerCustomResourceView, cxSchedulerDayView, cxSchedulerDateNavigator,
  cxSchedulerHolidays, cxSchedulerTimeGridView, cxSchedulerUtils,
  cxSchedulerWeekView, cxSchedulerYearView, cxSchedulerGanttView, cxGroupBox,
  cxRadioGroup, cxSchedulerAggregateStorage, cxSchedulerDBStorage, Menus,
  cxButtons, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxPC, Vcl.OleCtrls, SHDocVw,
  dxSkinBlack, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

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
    MainMenuKadir1Group1: TdxNavBarGroup;
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
    cxScheduler1: TcxScheduler;
    Panel1: TPanel;
    cxRadioGroup1: TcxRadioGroup;
    DuyuruPage: TcxTabSheet;
    WebBrowser1: TWebBrowser;
    Menu_Image24: TcxImageList;
    Menu_Image16: TcxImageList;
    Menu_Image24x24: TcxImageList;
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure MainMenuKadir1GroupClick(Sender: TObject; AGroup: TdxNavBarGroup);
    procedure MainMenuKadir1LinkClick(Sender: TObject;
      ALink: TdxNavBarItemLink);
    procedure menuclik(_tag_ : integer ; FormID : integer = 0; ShowTip : integer = 0);
    procedure ToolButton7Click(Sender: TObject);
    function GetResourceAsJpeg(const resname: string): TJPEGImage;
  //  function GetResourceAsString(const resname: string): TstringList;
    function GetResourceAsPNG(const resname: string): TPNGImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure cxRadioGroup1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure sayfalarCanCloseEx(Sender: TObject; ATabIndex: Integer;
      var ACanClose: Boolean);
    procedure sayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

   const
  ScreenWidth : LongInt = 1024;
  ScreenHeight : LongInt = 768;

var
  AnaForm: TAnaForm;

implementation
      uses Tnm_Hemsire,Tnm_Ilaclar,Tnm_LabTest,Tnm_Makina,
      Data_Modul,HastaKart,SeansGostergesi,
      Tnm_UserSettings, sifreDegis, TeleEKG,Unit3;
{$R *.dfm}
{$R xx.res}



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




procedure TAnaForm.cxButton1Click(Sender: TObject);
begin
  pnl_Ajanda.Visible := false;
end;

procedure TAnaForm.cxRadioGroup1PropertiesChange(Sender: TObject);
begin
  case cxRadioGroup1.EditValue of
     1 : cxScheduler1.ViewDay.Active := true;
     7 : cxScheduler1.ViewWeek.Active := true;
     365 : cxScheduler1.ViewYear.Active := true;
  end;
end;

procedure TAnaForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Datalar.ADOConnection2.Connected := false;
  DATALAR.KillTask('DiyalizV4.exe');
  DATALAR.KillTask('Diyaliz.exe');
 // halt;
end;

procedure TAnaForm.FormCreate(Sender: TObject);
var
  i,j : integer;
begin
 // Res Dosya okuma
 //memo1.Lines := GetResourceAsString('Deneme');
 //cxImage1.Picture.Graphic := GetResourceAsPNG('X');

 // WebBrowser1.Navigate('https://www.noktayazilim.net');

  caption := 'Mavi Nokta Bilgi Teknolojileri Ltd.Þti.  OSGB';
  Sayfalar.Properties.CloseButtonMode := cbmNone;
  WebBrowser1.Navigate('https://www.noktayazilim.net/destek/GenelMesajlar2.aspx?Tip=D');

end;

procedure TAnaForm.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
// if x > 200 then MainMenuKadir1.Gizle
//  else MainMenuKadir1.Goster;

end;

procedure TAnaForm.FormResize(Sender: TObject);
begin
  MainMenuKadir1.Height := self.ClientHeight - (dxStatusBar1.Height + ToolBar1.Height);
  MainMenuKadir1.Top := 60;
end;

procedure TAnaForm.FormShow(Sender: TObject);
var
 i,j : integer;
begin
  UserTable.Active := True;
  UserTable.Filter := 'User = ' + QuotedStr(datalar.username);
  EventsTable.Active := True;

(*
  MainMenuKadir1.Left := -1 * MainMenuKadir1.Width;
  MainMenuKadir1.Height := self.ClientHeight - (dxStatusBar1.Height + ToolBar1.Height);
  MainMenuKadir1.Top := 60;
  *)
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
        ToolBar1.Buttons[j].ImageIndex := MainMenuKadir1.Items[i].LargeImageIndex;
      end;

    end;
  end;

  scaled := true;
  if (screen.width <> ScreenWidth) then
  begin
   // height := longint(height) * longint(screen.height) div ScreenHeight;
   // width := longint(width) * longint(screen.width) div ScreenWidth;

 //   scaleBy(screen.width, ScreenWidth);
  end;

  dxStatusBar1.Panels[1].Text := DATALAR.AktifSirketAdi;
  dxStatusBar1.Panels[1].Width := length(Datalar.AktifSirketAdi) * 8;
  dxStatusBar1.Panels[3].Text := DATALAR._merkezAdi;


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
end;

procedure TAnaForm.ToolButton2Click(Sender: TObject);
begin
  pnl_Ajanda.Visible := True;
end;

procedure TAnaForm.ToolButton7Click(Sender: TObject);
begin
  menuclik(TToolButton(sender).Tag);
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

procedure TAnaForm.menuclik(_tag_ : integer ; FormID : integer = 0 ; ShowTip : integer = 0);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
begin
// MenuItem cliklendiðinde menu satiri form açýlma þekli ile form açar yada sadece method çalýþtýrýr.
//FormID > 0 form açýlacak
 case _Tag_ of
    9999 : close;
    83 : begin
      SifreDegistir;
    end;
     else
        if FormID > 0 then
        begin
          if ShowTip  =  0
          then begin
              if FindTab(sayfalar,FormID) Then Exit;
              F := FormINIT(FormID,self,'',NewTab(sayfalar,FormID),ikEvet,'');
              if F <> nil then F.show;
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
  Form : TGirisForm;
  I : integer;
  Comp : TComponent;
begin
 if ATabIndex in [0,1]
 then begin
   ACanClose := False;
 end
 else begin
   ACanClose := True;
   Comp := Sayfalar.Pages[ATabIndex].Components[0];
   TGirisForm(Comp).Close;
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

end.
