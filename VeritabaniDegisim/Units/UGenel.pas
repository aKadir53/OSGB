unit UGenel;

interface

uses ADODB, Classes, Forms, system.UITypes;

type
  TFSStringArray = array of String;

  TFSQuery = class (TADOQuery)
    constructor Create (AOwner : TComponent);override;
    destructor Destroy; override;
  end;

function FSMessage(const sMessage : String; const dlgType : TMsgDlgType; const Buttons : TMsgDlgButtons; const HelpCtx: Integer): TModalResult;overload;
procedure FSMessage(const sMessage : String);overload;
procedure FSWarnMessage(const sMessage : String);
function IsNull (const s: String): Boolean;
function GetSQLValue (const sValue : String): String;overload;
function GetSQLValue (const iValue : Integer): String;overload;
function GetSQLValue (const fValue : double): String;overload;
function GetSQLValue1 (const sValue : String): String;overload;
function GetSQLValue1 (const iValue : Integer): String;overload;
function GetSQLValue1 (const fValue : double): String;overload;
function CreateFSQuery: TFSQuery;
function QueryOpen (var aQuery : TFSQuery; const sSQL : String): boolean;
function QueryExec (var aQuery : TFSQuery; const sSQL : String): boolean;
procedure FSBeginTrans;
procedure FSCommit;
procedure FSRollback;
function ExistsRecord (var aQuery : TFSQuery) : Boolean;

implementation

uses SysUtils, Dialogs;

var
  FDefaultConnection : TADOConnection;

function FSMessage(const sMessage : String; const dlgType : TMsgDlgType; const Buttons : TMsgDlgButtons; const HelpCtx: Integer): TModalResult;
begin
  Result := MessageDlg(sMessage, dlgType, Buttons, HelpCtx);
end;


procedure FSMessage(const sMessage : String);overload;
begin
  MessageDlg (sMessage, mtInformation, [mbOk], 0);
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
  Result.Connection := FDefaultConnection;
end;

function QueryOpen (var aQuery : TFSQuery; const sSQL : String): boolean;
begin
  aQuery.SQL.Text := sSQL;
  aQuery.Open;
  Result := True;
end;

function QueryExec (var aQuery : TFSQuery; const sSQL : String): boolean;
begin
  aQuery.SQL.Text := sSQL;
  aQuery.ExecSQL;
  Result := True;
end;

procedure FSBeginTrans;
begin
  FDefaultConnection.BeginTrans;
end;

procedure FSCommit;
begin
  FDefaultConnection.CommitTrans;
end;

procedure FSRollback;
begin
  FDefaultConnection.RollbackTrans;
end;

function ExistsRecord (var aQuery : TFSQuery) : Boolean;
begin
  Result := aQuery.RecordCount > 0;
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
