unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, ADODB, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, cxInplaceContainer,
  cxDBTL, cxTLData, ImgList, dxSkinsdxNavBarPainter, dxNavBarCollns,
  dxNavBarBase, dxNavBar, dxSkinsdxBarPainter, dxBar, dxBarDBNav, StdCtrls,
  ExtCtrls, KadirLabel, Grids, DBGrids, OleCtrls, SHDocVw, sPanel, cxContainer,
  cxGroupBox, ActnList, dxSkinsdxStatusBarPainter, dxStatusBar, dxSkinsForm,menus,
  PlatformDefaultStyleActnCtrls, ActnMan, ToolWin, ActnCtrls, ActnMenus,
  JclPeImage, ButtonGroup, Buttons, cxButtons, ComCtrls, dxGDIPlusClasses,
  cxImage, cxTreeView, dxSkinscxSchedulerPainter, cxScheduler,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerCustomResourceView,
  cxSchedulerDayView, cxSchedulerDateNavigator, cxSchedulerHolidays,
  cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerWeekView,
  cxSchedulerYearView, cxSchedulerGanttView, cxSchedulerAggregateStorage,
  cxSchedulerDBStorage, dxLayoutLookAndFeels, cxMemo, cxDBEdit, cxDropDownEdit,
  cxCalendar, cxSpinEdit, dxLayoutContainer, dxLayoutControl, cxButtonEdit,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  idSSLOpenSSLHeaders,IdSSLOpenSSL, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, xmldom, XMLIntf, msxmldom, XMLDoc, InvokeRegistry,
  Rio, SOAPHTTPClient, cxRadioGroup,Unit8;

type
  TControlAccess = class(TControl);
  TcxLookAndFeelAccess = class(TcxLookAndFeel);
  TWinControlAccess = class(TWinControl);

type
  TDoktor = Record
   adi : string;
   soyadi : string;
 end;



type
  TForm7 = class(TForm)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    imag32png: TcxImageList;
    global_img_list4_: TImageList;
    Timer1: TTimer;
    Timer2: TTimer;
    ADOConnection1: TADOConnection;
    MainMenuKadir1: TMainMenuKadir;
    WebBrowser1: TWebBrowser;
    pnlBrowser: TcxGroupBox;
    MainMenuKadir1Group1: TdxNavBarGroup;
    MainMenuKadir1Item1: TdxNavBarItem;
    MainMenuKadir1Item2: TdxNavBarItem;
    MainMenuKadir1Group2: TdxNavBarGroup;
    MainMenuKadir1Item3: TdxNavBarItem;
    dxStatusBar1: TdxStatusBar;
    dxSkinController1: TdxSkinController;
    global_img_list4: TcxImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    cxImageList1: TcxImageList;
    cxImageList2: TcxImageList;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    Button1: TButton;
    ListeAc1: TListeAc;
    cxTreeView1: TcxTreeView;
    cxGroupBox1: TcxGroupBox;
    cxSchedulerDBStorage1: TcxSchedulerDBStorage;
    cxSchedulerAggregateStorage1: TcxSchedulerAggregateStorage;
    cxScheduler1: TcxScheduler;
    cxSchedulerStorage1: TcxSchedulerStorage;
    cxSchedulerHolidays1: TcxSchedulerHolidays;
    EventsTable: TADOTable;
    EventsDataSource: TDataSource;
    DBStorage: TcxSchedulerDBStorage;
    UnboundStorage: TcxSchedulerStorage;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    cxButton1: TcxButton;
    cxButtonEdit1: TcxButtonEdit;
    cxComboBox1: TcxComboBox;
    cxTextEdit1: TcxTextEdit;
    IdHTTP1: TIdHTTP;
    Memo1: TMemo;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    Panel1: TPanel;
    cxRadioGroup1: TcxRadioGroup;
    UserTable: TADOTable;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure MainMenuKadir1LinkClick(Sender: TObject; ALink: TdxNavBarItemLink);

    procedure menuclik(_tag_ : integer);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure MainMenuKadir1GroupClick(Sender: TObject; AGroup: TdxNavBarGroup);
    procedure Button4Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure ButtonGroup1Items0Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure MainMenuKadir1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MainMenuKadir1LinkPress(Sender: TObject;
      ALink: TdxNavBarItemLink);
    procedure cxTreeView1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure cxTreeView1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure cxTreeView1DblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IdSSLIOHandlerSocketOpenSSL1Status(ASender: TObject;
      const AStatus: TIdStatus; const AStatusText: string);
    procedure cxRadioGroup1PropertiesChange(Sender: TObject);

    procedure cxKaydetClick(Sender: TObject);override;
 //   procedure Olustur(sender : TObject;Table : string);
  private
      procedure ButonClick(sender : TObject ; key : char);
    { Private declarations }
  public
    { Public declarations }
  end;

const
  ScreenWidth : LongInt = 1024;
  ScreenHeight : LongInt = 768;

var
  Form7: TForm7;
   w : integer = -200;
  _ALink_: TdxNavBarItemLink;

    FLayoutSkinLookAndFeel: TdxLayoutSkinLookAndFeel;
implementation

  uses unit10;


{$R *.dfm}




procedure TForm7.cxKaydetClick(Sender : TObject);
var
  doktor : TDoktor;
begin
  Inherited;
  case TcxButton(sender).Tag  of
    0 : begin
        // ShowMessage('Kaydet');
        // ButonClick(self,'k');
      //   Olustur(self,'Users');
      //   setDataString(self,'ADISOYADI',100,10);

        end;
    1 : begin
         //post;
         ShowMessage('Ýptal');
    end;
  end;


end;


procedure TForm7.ButonClick(sender : TObject ; key : char);
begin
  Inherited;

end;

procedure TForm7.menuclik(_tag_ : integer);
begin
   case _tag_ of
    2 : begin
         ShowMessage('2');
        end;

    3 : begin
         ShowMessage('3');
        end;

     4 : begin
          ShowMessage('4');
        end;

    21 : begin
         ShowMessage('21');
        end;

    22 : begin
          ShowMessage('22');
        end;

   end;
end;



procedure TForm7.ToolButton1Click(Sender: TObject);
begin
  if MainMenuKadir1.left < 0
  then
   MainMenuKadir1.Goster
  else
   MainMenuKadir1.Gizle;



end;

procedure TForm7.ToolButton3Click(Sender: TObject);
begin
  pnlBrowser.Visible := false;
end;

procedure TForm7.ToolButton7Click(Sender: TObject);
begin
  menuclik(TToolButton(sender).Tag);
end;

procedure TForm7.Button1Click(Sender: TObject);
var
  i : integer;
  actItem : TActionClientItem;
  tmpActItem : TActionClientItem;
  act : TCustomAction;
  Data : TStringList;
  str : string;
  response : tstringstream;
  Req : Tstream;
  ID,us,si : string;
begin

  ID := '180';
  us := 'AmwEN06';
  si := '1713eNmW';
try

 IdHTTP1.Disconnect;
 (*str :=
      '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:tem="http://tempuri.org/">'+
         '<soapenv:Header/>'+
         '<soapenv:Body>'+
            '<tem:BarkodSonucBilgisi>'+
               '<tem:ORNEKNO>205973</tem:ORNEKNO>'+
               '<tem:USER>BALÝ</tem:USER>'+
               '<tem:PASS>12345</tem:PASS>'+
            '</tem:BarkodSonucBilgisi>'+
         '</soapenv:Body>'+
      '</soapenv:Envelope>';
  Req := TStringStream.Create(str, TEncoding.UTF8);
   *)
str := format(
         '<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://www.w3.org/2003/05/soap-envelope"'+
         ' xmlns:xsd="http://www.w3.org/2001/XMLSchema"'+
         ' xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">'+
         '<SOAP-ENV:Header><C_LoginSecurity xmlns="http://tempuri.org/">'+
         '<Username>%s</Username><Password>%s</Password><ID>%s</ID>'+
         '</C_LoginSecurity></SOAP-ENV:Header>'+
         '<SOAP-ENV:Body>'+
         '<GetLabRadResultsDate xmlns="http://tempuri.org/">'+
         '<SSN>31742207242</SSN><DateStart>2016-10-01T00:00:00Z</DateStart>'+
         '<DateEnd>2016-10-31T00:00:00Z</DateEnd></GetLabRadResultsDate></SOAP-ENV:Body></SOAP-ENV:Envelope>',[us,si,ID]);

  Req := TStringStream.Create(str, TEncoding.UTF8);



//memo1.text := IdHTTP1.Post('http://78.187.230.55/LABservice.asmx',req);
 memo1.text := IdHTTP1.Post('http://78.188.62.26:9192/UtilsSrv.asmx',req);
 memo1.Lines.SaveToFile('C:\noktav3\x.xml');
except
on e: exception do begin
 Req.Free;
 ShowMessage(e.Message);
 //memo1.text := '';
end;
end;

 Req.Free;
   //KadirLabel1.Donustur;

//  MainMenuKadir1.left := -1 * MainMenuKadir1.Width;
//  MainMenuKadir1.MenuGetir;
 // MainMenuKadir1.Goster;


   (*
  actItem := ActionManager1.ActionBars.ActionBars[0].Items[0];
  // FindItemByCaption('&No Category');
  tmpActItem := actItem.Items.Add;
  try
  act := TCustomAction.Create (nil);
  act.ShortCut := Menus.ShortCut(Word('B'), [ssCtrl]);
  act.Tag := 2;
  act.ActionList := ActionManager1;
  act.OnExecute := Action1Execute;
  ActionManager1.AddAction (act, tmpActItem);
  finally
   tmpActItem.Free;
  end;

     *)


end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  MainMenuKadir1.Gizle;
end;


procedure TForm7.Button4Click(Sender: TObject);
begin
  pnlBrowser.Visible := false;
end;

procedure TForm7.ButtonGroup1Items0Click(Sender: TObject);
begin
  ShowMessage('ccc');
end;

procedure TForm7.cxButton1Click(Sender: TObject);

var
  ALookAndFeel: TdxLayoutCxLookAndFeel;
begin
//  ALookAndFeel := dxLayoutLookAndFeelList1.CreateItem( TdxLayoutCxLookAndFeel ) as TdxLayoutCxLookAndFeel;
 // dxLayoutControl1.LayoutLookAndFeel := ALookAndFeel;
 // ALookAndFeel.LookAndFeel.SkinName := 'iMaginary';


   Application.CreateForm(TForm10, Form10);

   form10.ShowModal;
   form10 := nil;
 
end;


procedure TForm7.cxRadioGroup1PropertiesChange(Sender: TObject);
begin
  case cxRadioGroup1.EditValue of
     1 : cxScheduler1.ViewDay.Active := true;
     7 : cxScheduler1.ViewWeek.Active := true;
     365 : cxScheduler1.ViewYear.Active := true;

  end;
end;

procedure TForm7.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
          //  form7.SelectNext(form7.ActiveControl,
           // not(ssShift in Shift), True);

   //       TWinControlAccess(GetParentForm(Self)).SelectNext(GetParentForm(Self).ActiveControl,
   //         not(ssShift in Shift), True);

end;

procedure TForm7.cxTreeView1DblClick(Sender: TObject);
var
 i : TTreeNode;
 _tag_ : string;
begin
  i := cxTreeView1.Selected;
  _tag_ := copy(i.Text,pos('(',i.Text)+1,(pos(')',i.Text)-pos('(',i.Text))-1);

  menuclik(strtoint(_tag_));

end;

procedure TForm7.cxTreeView1DragDrop(Sender, Source: TObject; X, Y: Integer);
var
 i : TTreeNode;
begin

 i := cxTreeView1.Items.Add(nil,_ALink_.Item.Caption+'('+inttostr(_ALink_.Item.Tag)+')');
 i.ImageIndex := _ALink_.Item.SmallImageIndex;
 i.StateIndex := -1;



end;

procedure TForm7.cxTreeView1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
 Accept := True;
end;

procedure TForm7.FormCreate(Sender: TObject);
var
  i,j : integer;
begin
 // WebBrowser1.Navigate('https://www.noktayazilim.net');

  MainMenuKadir1.Left := -1 * MainMenuKadir1.Width;

  MainMenuKadir1.Height := Form7.ClientHeight - (dxStatusBar1.Height + ToolBar1.Height);
  MainMenuKadir1.Top := 40;

  MainMenuKadir1.MenuGetir;


  for i := 0 to MainMenuKadir1.Items.Count - 1 do
  begin
    for j := 0 to ToolBar1.ButtonCount - 1 do
    begin
      if MainMenuKadir1.Items[i].Tag = ToolBar1.Buttons[j].Tag
      then begin
        ToolBar1.Buttons[j].Visible := MainMenuKadir1.Items[i].Visible;
        ToolBar1.Buttons[j].Hint := MainMenuKadir1.Items[i].Hint;

        ToolBar1.Buttons[j].ImageIndex := 1;//MainMenuKadir1.Items[i].LargeImageIndex;
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

 // dxSkinController1.SkinName := 'Mcskin';



end;

procedure TForm7.FormKeyPress(Sender: TObject; var Key: Char);
var
 s : TShiftState;
begin
  //   menuclik(MainMenuKadir1.TusKontrol(ShortCutToText(Menus.ShortCut(word(key),s))));


end;

procedure TForm7.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   menuclik(MainMenuKadir1.TusKontrol(ShortCutToText(Menus.ShortCut(key,shift))));

end;

procedure TForm7.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
// label1.Caption := inttostr(x) + ' x ' + inttostr(y);

 if (x < 200)
 then begin
//  MainMenuKadir1.left := -1 * MainMenuKadir1.Width;
//  MainMenuKadir1.Goster;

 end
//  else MainMenuKadir1.Gizle;
end;

procedure TForm7.FormResize(Sender: TObject);
begin

  MainMenuKadir1.Height := Form7.ClientHeight - (dxStatusBar1.Height + ToolBar1.Height);
  MainMenuKadir1.Top := 40;

//  ToolButton6.Width := form7.ClientWidth - (55 * ToolBar1.ButtonCount);



end;

procedure TForm7.IdSSLIOHandlerSocketOpenSSL1Status(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: string);
begin
Memo1.Lines.Add(#13#10+'***********************IdSSLIOHandlerSocketOpenSSL1Status '+#13#10+AStatusText)
end;

procedure TForm7.MainMenuKadir1GroupClick(Sender: TObject;
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

procedure TForm7.MainMenuKadir1LinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
begin
  Inherited;
  menuclik(ALink.Item.Tag);

end;


procedure TForm7.MainMenuKadir1LinkPress(Sender: TObject;
  ALink: TdxNavBarItemLink);
begin
 _ALink_ := ALink;
end;

procedure TForm7.MainMenuKadir1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    if (Button = mbLeft) and (Shift = [ssCtrl]) then
    MainMenuKadir1.BeginDrag(true);
end;

end.


