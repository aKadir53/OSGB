unit UGenel;

interface

uses ADODB, Classes, Forms, system.UITypes;

type
  TFSStringArray = array of String;

  TFSQuery = class (TADOQuery)
    constructor Create (AOwner : TComponent);override;
    destructor Destroy; override;
  end;

function FSMessage(const sMessage : String; const dlgType : TMsgDlgType; const Buttons : TMsgDlgButtons; const HelpCtx: Integer): TModalResult;
procedure FSWarnMessage(const sMessage : String);
function IsNull (const s: String): Boolean;
function GetSQLValue (const sValue : String): String;overload;
function GetSQLValue (const iValue : Integer): String;overload;
function GetSQLValue (const fValue : double): String;overload;
function GetSQLValue1 (const sValue : String): String;overload;
function GetSQLValue1 (const iValue : Integer): String;overload;
function GetSQLValue1 (const fValue : double): String;overload;
function CreateFSQuery: TFSQuery;

implementation

uses SysUtils, Dialogs;

function FSMessage(const sMessage : String; const dlgType : TMsgDlgType; const Buttons : TMsgDlgButtons; const HelpCtx: Integer): TModalResult;
begin
  Result := MessageDlg(sMessage, dlgType, Buttons, HelpCtx);
end;


procedure FSWarnMessage(const sMessage : String);
begin
  MessageDlg (sMessage, mtWarning, [mbOk], 0);
end;

function IsNull (const s: String): Boolean;
begin
  Result := Trim (s) = '';
end;

function GetSQLValue (const sValue : String): String;
begin
  Result := GetSQLValue1 (sValue) + ',';
end;

function GetSQLValue (const iValue : Integer): String;
begin
  Result := GetSQLValue1 (iValue) + ',';
end;

function GetSQLValue (const fValue : double): String;
begin
  Result := GetSQLValue1 (fValue) + ',';
end;

function GetSQLValue1 (const sValue : String): String;
begin
  Result := QuotedStr (sValue);
end;

function GetSQLValue1 (const iValue : Integer): String;
begin
  Result := IntToStr (iValue);
end;

function GetSQLValue1 (const fValue : double): String;
begin
  Result := FloatToStr (fValue);
end;

function CreateFSQuery: TFSQuery;
begin
  Result := TFSQuery.Create (nil);
end;

{ TFSQuery }

constructor TFSQuery.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TFSQuery.Destroy;
begin

  inherited;
end;

end.
