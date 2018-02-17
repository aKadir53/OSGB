unit UGenel;

interface

uses ADODB, Classes, Forms, system.UITypes;

type
  TServerConnectionParameterRec = record
    sServerName : String;
    sUserName : String;
    sPassword : String;
    sDefaultDBName : String;
    sLocalExportFolder : String;
    sApplicationName : String;
  end;

  TServerConnectionParameters = array of TServerConnectionParameterRec;

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
//function GetSQLValue (const fValue : double): String;overload;
function GetSQLValue1 (const sValue : String): String;overload;
function GetSQLValue1 (const iValue : Integer): String;overload;
//function GetSQLValue1 (const fValue : double): String;overload;
function CreateFSQuery: TFSQuery;
function QueryOpen (var aQuery : TFSQuery; const sSQL : String): boolean;
function QueryExec (var aQuery : TFSQuery; const sSQL : String): boolean;
procedure FSBeginTrans;
procedure FSCommit;
procedure FSRollback;
function ExistsRecord (var aQuery : TFSQuery) : Boolean;
function CreateNewConnection (const pServerName, pUserName, pPassword, pDBName, pApplicationName : String): Boolean;overload;
function CreateNewConnection (const aParamRec: TServerConnectionParameterRec): Boolean;overload;
function ServerConnectionParameterRec (const pServerName, pUserName, pPassword, pDBName, pLocalExportFolder, pApplicationName : String): TServerConnectionParameterRec;
function ServerConnectionParameterIndex (const aList: TServerConnectionParameters; const aRec: TServerConnectionParameterRec): Integer;
function ServerConnectionParameterAdd (var aList: TServerConnectionParameters; const aRec: TServerConnectionParameterRec): Integer;
function ConnectionReference: TADOConnection;

implementation

uses SysUtils, Dialogs, TransUtils;

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

{function GetSQLValue (const fValue : double): String;
begin
  Result := GetSQLValue1 (fValue) + ',';
end;{}

function GetSQLValue1 (const sValue : String): String;
begin
  Result := QuotedStr (sValue);
end;

function GetSQLValue1 (const iValue : Integer): String;
begin
  Result := IntToStr (iValue);
end;

{function GetSQLValue1 (const fValue : double): String;
begin
  Result := FloatToStr (fValue);
end;{}

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
  BeginTrans (FDefaultConnection);;
end;

procedure FSCommit;
begin
  CommitTrans (FDefaultConnection);
end;

procedure FSRollback;
begin
  RollbackTrans (FDefaultConnection);
end;

function ExistsRecord (var aQuery : TFSQuery) : Boolean;
begin
  Result := aQuery.RecordCount > 0;
end;

function CreateNewConnection (const pServerName, pUserName, pPassword, pDBName, pApplicationName : String): Boolean;
var
  bCreated: Boolean;
begin
  Result := False;
  bCreated := Assigned (FDefaultConnection);
  if Not bCreated then
  begin
    FDefaultConnection := TADOConnection.Create (Application);
  end
  else begin
    FDefaultConnection.Connected := False;
  end;
  try
    FDefaultConnection.ConnectionString :=
       'Provider=SQLOLEDB.1;Password='+pPassword+';Persist Security Info=True;User ID='+pUserName+';Initial Catalog=' + pDBName +';Data Source='+pServerName+';Application Name='+pApplicationName;
    FDefaultConnection.CommandTimeout := 1000;
    FDefaultConnection.Connected := True;
    Result := True;
  finally
    if (not bCreated) and (not Result)  then
      FreeAndNil(FDefaultConnection);
  end;
end;

function CreateNewConnection (const aParamRec: TServerConnectionParameterRec): Boolean;overload;
begin
  Result := CreateNewConnection(aParamRec.sServerName, aParamRec.sUserName, aParamRec.sPassword, aParamRec.sDefaultDBName, aParamRec.sApplicationName);
end;

function ServerConnectionParameterRec (const pServerName, pUserName, pPassword, pDBName, pLocalExportFolder, pApplicationName : String): TServerConnectionParameterRec;
begin
  Result.sServerName := pServerName;
  Result.sUserName := pUserName;
  Result.sPassword := pPassword;
  Result.sDefaultDBName := pDBName;
  Result.sLocalExportFolder := pLocalExportFolder;
  Result.sApplicationName := pApplicationName;
end;

function ServerConnectionParameterIndex (const aList: TServerConnectionParameters; const aRec: TServerConnectionParameterRec): Integer;
var
  i : Integer;
begin
  Result := -1;
  i := Low (aList);
  while (i <= High (aList)) and (Result = -1) do
  begin
    if AnsiSameText (aList [i].sServerName, aRec.sServerName)
      and AnsiSameText (aList [i].sUserName, aRec.sUserName)
      and AnsiSameText (aList [i].sDefaultDBName, aRec.sDefaultDBName) then
      Result := i;
    i := i + 1;
  end;
end;

function ServerConnectionParameterAdd (var aList: TServerConnectionParameters; const aRec: TServerConnectionParameterRec): Integer;
begin
  SetLength (aList, High (aList) + 2);
  aList [High (aList)].sServerName := aRec.sServerName;
  aList [High (aList)].sUserName := aRec.sUserName;
  aList [High (aList)].sPassword := aRec.sPassword;
  aList [High (aList)].sDefaultDBName := aRec.sDefaultDBName;
  aList [High (aList)].sLocalExportFolder := aRec.sLocalExportFolder;
  aList [High (aList)].sApplicationName := aRec.sApplicationName;
  Result := High (aList);
end;

function ConnectionReference: TADOConnection;
begin
  Result := FDefaultConnection;
end;

{ TFSQuery }

constructor TFSQuery.Create(AOwner: TComponent);
begin
  inherited;
  CommandTimeout := 1000;
end;

destructor TFSQuery.Destroy;
begin

  inherited;
end;

end.
