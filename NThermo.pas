unit NThermo;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, {GIFImage,} ImgList,
  CheckLst, Vcl.Imaging.GIFImg;

type
  TThermoDateCountRec = record
    DateTime : TDatetime;
    Position : Integer;
  end;

  TThermoDateCountList = array of TThermoDateCountRec;

  TNThermoDlgFrm = class(TForm)
    LMDBackPanel1: TPanel;
    lcMsgx: TMemo;
    pfThermo: TProgressBar;
    tcDelay: TTimer;
    Label1: TLabel;
    btStop: TBitBtn;
    icIcon: TImage;
    Label2: TLabel;
    Label3A: TLabel;
    Label3B: TLabel;
    Label3C: TLabel;
    Label4A: TLabel;
    Label4B: TLabel;
    Label4C: TLabel;
    Label5A: TLabel;
    Label5B: TLabel;
    Label5C: TLabel;
    CheckListBox1: TCheckListBox;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btStopClick(Sender: TObject);
    procedure tcDelayTimer(Sender: TObject);
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
    FBStopped : Boolean;
    FDisabledForms: array of TForm;
    FCanShow : Boolean;
    FDateTimeList: TThermoDateCountList;
    FMin, FMax, FCur : Integer;
    FShowTimeLabels : Boolean;
  public
    { Public declarations }
    aButton : TButton;
  end;

procedure ShowThermo (var ThermoNumber: Integer; sMsg : string; lMin, lMax, lCur : LongInt; bCanStop : Boolean = False; bDisableMain : Boolean = True; DefaultDelay_sec : Integer = -1);
//procedure MsgThermo (sMsg : String; lMax : LongInt = 0);
function UpdateThermo (lCur : LongInt; const ThermoNumber: Integer; sMsg : string = ''; bPre : Boolean = False): Boolean;
procedure FreeThermo (const ThermoNumber: Integer);
function GetThermoDlg (const ThermoNumber: Integer): TNThermoDlgFrm;
function GetThermoDlgIndex (const ThermoNumber: Integer): Integer;
//function OwnerAloneThermo (const aForm: TNThermoDlgFrm) : Boolean;
function DisabledAloneThermo (const aForm: TNThermoDlgFrm; bForm : TForm) : Boolean;
procedure ThermoListDelete (const Index: Integer);
procedure ArrangeThermoForms;

implementation

uses DateUtils, Windows;

//function UpdateThermoEx (lCur : LongInt; const ThermoNumber: Integer; const sMsg : string; const b, bPre: Boolean): Boolean;

{$R *.DFM}

var
  //NThermoDlgFrm : TNThermoDlgFrm;
  NThermoDlgFrmList : array of TNThermoDlgFrm;
  NThermoLastUpdated : TDatetime;

const
  FSShowThermoDialogs : Boolean = True;
  FSThermoRefreshInterval : Integer = 1;
  FSThermoDefaultDelay : Integer = 0;

function UpdateThermoEx (lCur : LongInt; const ThermoNumber: Integer; const sMsg : string; const b, bPre: Boolean): Boolean;
const
  cUndefinedTime1 = '??:??:??.????';
  cUndefinedTime2 = '??/??/???? ??:??:??.????';

  procedure SetTimeLabelsCaptions (var aLabel1, aLabel2, aLabel3 : TLabel; const iDiff, iDiff2: Integer; const fDiff : TDatetime; var aThermoFrm: TNThermoDlgFrm; const sTempFormat1, sTempFormat2 : String; const bShowTimeLabels: Boolean);
  var
    sTmp : String;
    iDeleted: Integer;
  begin
    if iDiff = 0 then
    begin
      aLabel1.Caption := cUndefinedTime1;
      aLabel2.Caption := cUndefinedTime2;
      aLabel3.Caption := '';
      aLabel1.Visible := False;
      aLabel2.Visible := False;
      aLabel3.Visible := False;
    end
    else begin
      sTmp := FormatDateTime ('hh' + TimeSeparator + 'nn' + TimeSeparator + 'ss' {+ DecimalSeparator + 'zzzz'{}, (fDiff / iDiff) * (aThermoFrm.pfThermo.Max - lCur));
      iDeleted := 0;
      while (sTmp <> '') and ((sTmp [1] = '0') or (sTmp [1] = TimeSeparator)) and (iDeleted < 4) do
      begin
        Delete (sTmp, 1, 1);
        iDeleted := iDeleted + 1;
      end;
      aLabel1.Caption := '  ' + sTmp + '  ';
      sTmp := FormatDateTime ('dd' + DateSeparator +'mm' + DateSeparator + 'yyyy hh' + TimeSeparator + 'nn' + TimeSeparator + 'ss' + DecimalSeparator + 'zzzz', aThermoFrm.FDateTimeList [High (aThermoFrm.FDateTimeList)].DateTime + ((fDiff / iDiff) * (aThermoFrm.pfThermo.Max - lCur)));
      if Pos (FormatDateTime ('dd' + DateSeparator +'mm' + DateSeparator + 'yyyy ', aThermoFrm.FDateTimeList [High (aThermoFrm.FDateTimeList)].DateTime), sTmp) > 0 then
        Delete (sTmp, Pos (FormatDateTime ('dd' + DateSeparator +'mm' + DateSeparator + 'yyyy ', aThermoFrm.FDateTimeList [High (aThermoFrm.FDateTimeList)].DateTime), sTmp), Length (FormatDateTime ('dd' + DateSeparator +'mm' + DateSeparator + 'yyyy ', aThermoFrm.FDateTimeList [High (aThermoFrm.FDateTimeList)].DateTime)));
      aLabel2.Caption := '  ' + sTmp + '  ';
      aLabel3.Caption := FormatFLoat (sTempFormat1, iDiff) + ' - ' + FormatFLoat (sTempFormat2, iDiff2);
      aLabel1.Visible := bShowTimeLabels;
      aLabel2.Visible := bShowTimeLabels;
      aLabel3.Visible := bShowTimeLabels;
    end;

  end;
var
  NThermoDlgFrmXX : TNThermoDlgFrm;
  iDiff : Integer;
  fDiff : TDatetime;
  i : Integer;
  sTempFormat1, sTempFormat2 : String;
begin
  Result := True;
  if not FSShowThermoDialogs then Exit;
  for iDiff := ThermoNumber downto 0 do
  begin
    NThermoDlgFrmxx := GetThermoDlg (iDiff);
    if NThermoDlgFrmxx = nil then Continue;
    if NThermoDlgFrmXX.FCanShow and not (NThermoDlgFrmXX.Visible) then
    begin
      NThermoDlgFrmXX.Show;
      Application.ProcessMessages;
      ArrangeThermoForms;
      Application.ProcessMessages;
    end;
  end;
  NThermoDlgFrmxx := GetThermoDlg (ThermoNumber);
  if NThermoDlgFrmxx = nil then Exit;
  Result := not NThermoDlgFrmxx.FBStopped;
  if not Result then ;;;
  NThermoDlgFrmxx.pfThermo.Position:= lCur;
  NThermoDlgFrmxx.FCur := lCur;
  NThermoDlgFrmxx.Label2.Caption:= FormatFloat ('% ##0.00', 100 * lCur / NThermoDlgFrmxx.pfThermo{topkek}.Max);
  if sMsg <> '' then NThermoDlgFrmxx.lcMsgx.Lines.Text := sMsg;
  if Application.Active and NThermoDlgFrmxx.Visible and NThermoDlgFrmxx.Enabled and (Screen.ActiveForm <> NThermoDlgFrmxx) then
  begin
    for i := 0 to High (NThermoDlgFrmList) do
      if NThermoDlgFrmList [i].Visible then
        NThermoDlgFrmList [i].SetFocus;
    NThermoDlgFrmxx.SetFocus;
  end;
  iDiff := Trunc ((Now - NThermoLastUpdated) * 86400000);//24 * 60 * 60 * 100;
  if {(not NThermoDlgFrmxx.Visible and (iDiff > 25)) or }(iDiff > (FSThermoRefreshInterval * 1000)) then
  begin
    if High (NThermoDlgFrmxx.FDateTimeList) < 100 then
      SetLength (NThermoDlgFrmxx.FDateTimeList, High (NThermoDlgFrmxx.FDateTimeList) + 2)
     else
      for i := 1 to High (NThermoDlgFrmxx.FDateTimeList) - 1 do NThermoDlgFrmxx.FDateTimeList [i] := NThermoDlgFrmxx.FDateTimeList [i + 1];

    NThermoDlgFrmxx.FDateTimeList [High (NThermoDlgFrmxx.FDateTimeList)].DateTime := Now;
    NThermoDlgFrmxx.FDateTimeList [High (NThermoDlgFrmxx.FDateTimeList)].Position := lCur;

    if (High (NThermoDlgFrmxx.FDateTimeList) >= 1) then
    begin
      //format geniþliðinin hesaplanmasý
      iDiff := NThermoDlgFrmxx.FDateTimeList [High (NThermoDlgFrmxx.FDateTimeList)].Position - NThermoDlgFrmxx.FDateTimeList [0].Position;
      iDiff := Length (FormatFloat ('0', iDiff));
      sTempFormat1 := '';
      while Length (sTempFormat1) < iDiff do sTempFormat1 := sTempFormat1 + '0';

      iDiff := Length (FormatFloat ('0', High (NThermoDlgFrmxx.FDateTimeList) + 1));
      sTempFormat2 := '';
      while Length (sTempFormat2) < iDiff do sTempFormat2 := sTempFormat2 + '0';

      //Son 2 kayýt:
      fDiff := NThermoDlgFrmxx.FDateTimeList [High (NThermoDlgFrmxx.FDateTimeList)].DateTime - NThermoDlgFrmxx.FDateTimeList [High (NThermoDlgFrmxx.FDateTimeList) - 1].DateTime;
      iDiff := NThermoDlgFrmxx.FDateTimeList [High (NThermoDlgFrmxx.FDateTimeList)].Position - NThermoDlgFrmxx.FDateTimeList [High (NThermoDlgFrmxx.FDateTimeList) - 1].Position;

      SetTimeLabelsCaptions (NThermoDlgFrmxx.Label3a, NThermoDlgFrmxx.Label3b, NThermoDlgFrmxx.Label3c, iDiff, 2, fDiff, NThermoDlgFrmxx, sTempFormat1, sTempFormat2, NThermoDlgFrmxx.fShowTimeLabels);

      //baþlangýç hariç Son tüm kayýtlar (max = 10):
      fDiff := NThermoDlgFrmxx.FDateTimeList [High (NThermoDlgFrmxx.FDateTimeList)].DateTime - NThermoDlgFrmxx.FDateTimeList [1].DateTime;
      iDiff := NThermoDlgFrmxx.FDateTimeList [High (NThermoDlgFrmxx.FDateTimeList)].Position - NThermoDlgFrmxx.FDateTimeList [1].Position;

      SetTimeLabelsCaptions (NThermoDlgFrmxx.Label4a, NThermoDlgFrmxx.Label4b, NThermoDlgFrmxx.Label4c, iDiff, High (NThermoDlgFrmxx.FDateTimeList), fDiff, NThermoDlgFrmxx, sTempFormat1, sTempFormat2, NThermoDlgFrmxx.fShowTimeLabels);

      //baþtan beri:
      fDiff := NThermoDlgFrmxx.FDateTimeList [High (NThermoDlgFrmxx.FDateTimeList)].DateTime - NThermoDlgFrmxx.FDateTimeList [0].DateTime;
      iDiff := NThermoDlgFrmxx.FDateTimeList [High (NThermoDlgFrmxx.FDateTimeList)].Position - NThermoDlgFrmxx.FDateTimeList [0].Position;

      SetTimeLabelsCaptions (NThermoDlgFrmxx.Label5a, NThermoDlgFrmxx.Label5b, NThermoDlgFrmxx.Label5c, iDiff, High (NThermoDlgFrmxx.FDateTimeList) + 1, fDiff, NThermoDlgFrmxx, sTempFormat1, sTempFormat2, NThermoDlgFrmxx.fShowTimeLabels);

    end;
    Application.ProcessMessages; {}
    NThermoLastUpdated := Now;
  end;
  Result := not NThermoDlgFrmxx.FBStopped;
  if not Result then Abort;;;
end;

procedure ShowThermo (var ThermoNumber: Integer; sMsg : string; lMin, lMax, lCur : LongInt; bCanStop : Boolean = False; bDisableMain : Boolean = True; DefaultDelay_sec : Integer = -1);
var
  NThermoDlgFrmXX : TNThermoDlgFrm;
  i1, i2 : Integer;
begin
  i2 := 0;
  for i1 := 0 to High (NThermoDlgFrmList) do
    if NThermoDlgFrmList [i1].Tag > i2 then i2 := NThermoDlgFrmList [i1].Tag;

  if not FSShowThermoDialogs then
  begin
    ThermoNumber := i2 + 1;
    Exit;
  end;

  NThermoDlgFrmxx := TNThermoDlgFrm.Create (Application);

  with NThermoDlgFrmxx do
  begin
    Left := (Screen.Width - Width) div 2;
    Top := (Screen.Height - Height) div 2;
    btStop.Visible := bCanStop;
    FBStopped := False;
    lcMsgx.Lines.Text := sMsg;
    FMin := lMin;
    FMax := lMax;
    FCur := lCur;
    pfThermo.Min := lMin;
    pfThermo.Max := lMax;
    pfThermo.Position := lCur;
    if DefaultDelay_sec >= 0 then
      tcDelay.Interval := DefaultDelay_sec
     else
      tcDelay.Interval := FSThermoDefaultDelay * 1000;
    if tcDelay.Interval = 0 then tcDelay.Interval := 2;

    tcDelay.Enabled := True;
    DoubleBuffered := True;
    Tag := i2 + 1;
    //FormStyle := fsStayOnTop;
    ThermoNumber := Tag;
    Caption := sMsg + ' - Ýlerleme Durumu (' + IntToStr (ThermoNumber) + ')';
    FCanShow := False;
    SetLength (FDateTimeList, 1);
    FDateTimeList [0].DateTime := Now;
    FDateTimeList [0].Position := lCur;
    FShowTimeLabels := True;
  end;
  SetLength (NThermoDlgFrmList, High (NThermoDlgFrmList) + 2);
  NThermoDlgFrmList [High (NThermoDlgFrmList)] := NThermoDlgFrmxx;
  ArrangeThermoForms;
  if Assigned (Screen.ActiveForm) and (not (Screen.ActiveForm is TNThermoDlgFrm)) and Screen.ActiveForm.Enabled then
  begin
    SetLength (NThermoDlgFrmxx.FDisabledForms, 1);
    if Screen.ActiveForm.FormStyle = fsMDIChild then
      NThermoDlgFrmxx.FDisabledForms [0] := Application.MainForm
    else
      NThermoDlgFrmxx.FDisabledForms [0] := Screen.ActiveForm;
    if (NThermoDlgFrmxx.FDisabledForms [0] <> Screen.ActiveForm) or bDisableMain then
      NThermoDlgFrmxx.FDisabledForms [0].Enabled := False;
  end;
  //Application.ProcessMessages;  {}
  //NThermoLastUpdated := now;
end;

(*
procedure MsgThermo (sMsg : String; lMax : LongInt = 0);
begin
  if NThermoDlgFrmx = nil then Exit;
  if Trim (sMsg) <> '' then
  begin
    NThermoDlgFrmx.lcMsg.Caption := sMsg;
    if lMax <> 0 then NThermoDlgFrmx.pfThermo.Max := lMax;
    if NThermoDlgFrmx.Visible = False then
    begin
      NThermoDlgFrmx.Show;
      NThermoDlgFrmx.tcRun.Enabled := True;
    end;
  end;
  // Mevcut döngü sýrasýnda herhangi bir kilitlenme yaþanmamasý için bu fonksiyon
  // kullanýlýr.
  Application.ProcessMessages;  {}
end;(**)

function UpdateThermo (lCur : LongInt; const ThermoNumber: Integer; sMsg : string = ''; bPre : Boolean = False): Boolean;
begin
  Result := UpdateThermoEx (lCur, ThermoNumber, sMsg, False, bPre);
end;

procedure FreeThermo (const ThermoNumber: Integer);
var
  NThermoDlgFrmXX : TNThermoDlgFrm;
  i, i2: Integer;
begin
  //if not FSShowThermoDialogs then Exit;
  i2 := GetThermoDlgIndex (ThermoNumber);
  NThermoDlgFrmxx := GetThermoDlg (ThermoNumber);
  if Assigned (NThermoDlgFrmxx) then
  begin
    for i := 0 to High (NThermoDlgFrmxx.FDisabledForms) do
      if DisabledAloneThermo (NThermoDlgFrmxx, NThermoDlgFrmxx.FDisabledForms [i]) then
        NThermoDlgFrmxx.FDisabledForms [i].Enabled := True;

    FreeAndNil (NThermoDlgFrmxx);
    ThermoListDelete (i2);
    ArrangeThermoForms;
  end;
end;

procedure TNThermoDlgFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := FALSE;
end;
// dur düðmesine basýldýðýnda gbThermoStop deðiþkeni True olur. ( Bir döngü içerisinde kullanýlýr )
procedure TNThermoDlgFrm.btStopClick(Sender: TObject);
begin
  FBStopped := not FBStopped;
  if FBStopped then btStop.Caption := '&Durma' else btStop.Caption := '&Dur';
  Label1.Visible := FBStopped;
end;

procedure TNThermoDlgFrm.tcDelayTimer(Sender: TObject);
var
  i : Integer;
begin
  if Application.Active then
  begin
    tcDelay.Enabled := False;
    for i := 0 to High (NThermoDlgFrmList) do
      if NThermoDlgFrmList [i].Visible then
        NThermoDlgFrmList [i].SetFocus;
    //Show;
    //ArrangeThermoForms;
    FCanShow := True;
  end
  else tcDelay.Interval := 100;
end;

function GetThermoDlg (const ThermoNumber: Integer): TNThermoDlgFrm;
var
  i : Integer;
begin
  i := GetThermoDlgIndex (ThermoNumber);
  if i < 0 then
    Result := nil
   else
    Result := NThermoDlgFrmList [i];
end;

function GetThermoDlgIndex (const ThermoNumber: Integer): Integer;
var
  i : Integer;
begin
  Result := -1;
  i := 0;
  while (Result = -1) and (i <= High (NThermoDlgFrmList)) do
  begin
    if NThermoDlgFrmList [i].Tag = ThermoNumber then Result := i;
    i := i + 1;
  end;
end;

{function OwnerAloneThermo (const aForm: TNThermoDlgFrm) : Boolean;
var
  i : Integer;
  xOwner : TComponent;
begin
  Result := True;
  xOwner := aForm.Owner;
  i := 0;
  while (i <= High (NThermoDlgFrmList)) and Result do
  begin
    if (NThermoDlgFrmList [i] <> aForm) and (NThermoDlgFrmList [i].Owner = xOwner) then Result := False;
    i := i + 1;
  end;
end;{}

function DisabledAloneThermo (const aForm: TNThermoDlgFrm; bForm : TForm) : Boolean;
var
  i, j : Integer;
begin
  Result := True;
  i := 0;
  while (i <= High (NThermoDlgFrmList)) and Result do
  begin
    if (NThermoDlgFrmList [i] <> aForm) then
    begin
      j := 0;
      while (j <= High (NThermoDlgFrmList [i].FDisabledForms)) and Result do
      begin
        if NThermoDlgFrmList [i].FDisabledForms [j] = bForm then Result := False;
        j := j + 1;
      end;
    end;
    i := i + 1;
  end;
end;{}

procedure ThermoListDelete (const Index: Integer);
var
  i : Integer;
begin
  if Index < 0 then Exit;
  if Index > High (NThermoDlgFrmList) then Exit;
  for i := Index to High (NThermoDlgFrmList) - 1 do
    NThermoDlgFrmList [i] := NThermoDlgFrmList [i + 1];
  SetLength (NThermoDlgFrmList, High (NThermoDlgFrmList));
end;

procedure ArrangeThermoForms;
var
  i, i2, tmpHeight, tmpCount: Integer;
begin
  tmpHeight := 0;
  tmpCount := 0;
  for i := 0 to High (NThermoDlgFrmList) do
    if NThermoDlgFrmList [i].Showing then
    begin
      tmpHeight := tmpHeight + NThermoDlgFrmList [i].Height;
      tmpCount := tmpCount + 1;
    end;
  if tmpHeight <= Screen.Height then
  begin
    //Ekrandaki boþluðu hesaplayýp formlarý ortalayacaðýz.
    tmpHeight := (Screen.Height - tmpHeight) div 2;
    for i := 0 to High (NThermoDlgFrmList) do
    begin
      //ÜÖ Fakat bir sebeple yükselen ilk formu tekrar aþaðý indirmeyeceðiz.
      if NThermoDlgFrmList [i].Visible then
      begin
        if (tmpHeight < NThermoDlgFrmList [i].Top) or (i <> 0) then
          NThermoDlgFrmList [i].Top := tmpHeight
         else
          tmpHeight := NThermoDlgFrmList [i].Top;
        tmpHeight := tmpHeight + NThermoDlgFrmList [i].Height;
      end;
    end;
  end
  else begin
    i2 := (tmpHeight - Screen.Height) div (tmpCount - 1);
    tmpHeight := 0;
    for i := 0 to High (NThermoDlgFrmList) do
    begin
      if NThermoDlgFrmList [i].Showing then
      begin
        NThermoDlgFrmList [i].Top := tmpHeight;
        tmpHeight := tmpHeight + NThermoDlgFrmList [i].Height - i2;
      end;
    end;
  end;
end;

procedure TNThermoDlgFrm.FormClick(Sender: TObject);
begin
  fShowTimeLabels := not fShowTimeLabels;
end;

initialization
  SetLength (NThermoDlgFrmList, 0);
  //gbThermoStop := False;
  NThermoLastUpdated := Now; {lcMsgx topkek}
end.

