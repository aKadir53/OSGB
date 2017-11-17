unit UGenel;

interface

uses ADODB, Classes;

type
  TFSStringArray = array of String;

  TFSQuery = class (TADOQuery)
    constructor Create (AOwner : TComponent);override;
    destructor Destroy; override;
  end;

function FSMessage(const sMessage : String): TModalResult;
procedure FSWarnMessage(const sMessage : String);
function IsNull (const s: String): Boolean;
function GetSQLValue (const sValue : String): String;overload;
function GetSQLValue (const iValue : Integer): String;overload;
function GetSQLValue (const fValue : double): String;overload;
function GetSQLValue1 (const sValue : String): String;overload;
function GetSQLValue1 (const iValue : Integer): String;overload;
function GetSQLValue1 (const fValue : double): String;overload;

implementation

uses SysUtils, Dialogs;

'Otomatik G�ncelleme se�ene�i se�ildi�inde, dosyas� �retilen yeni hali ile kar��la�t�rma bilgisi otomatik olarak g�ncellenecektir.'#13#10#13#10+
                        'Bu durumda ayn� dosyalar� tekrar olu�turmak istedi�inizde nesneler de�i�memi� olarak g�z�kecektir.'#13#10#13#10+
                        'Bu sebeple olu�turulan dosyalar� kaybetmemeniz gerekmektedir'#13#10#13#10+
                        'Devam Etmek �stiyor Musunuz ?', mtConfirmation, [mbNo, mbYes], 0

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
