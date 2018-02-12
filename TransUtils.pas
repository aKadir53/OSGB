unit TransUtils;

interface

uses Windows, Messages, SysUtils, ADODB;

procedure BeginTrans (const aConnection : TADOConnection);
procedure RollBackTrans (const aConnection : TADOConnection);
procedure CommitTrans (const aConnection : TADOConnection);
function TranCount (const aConnection : TADOConnection): Integer;

implementation

procedure BeginTrans (const aConnection : TADOConnection);
var
  bQuery : TADOQuery;
  iTranCountBefore, iTranCountAfter : Integer;
begin
  bQuery := TADOQuery.Create (nil);
  try
    iTranCountBefore := TranCount (aConnection);
    bQuery.Connection := aConnection;
    bQuery.SQL.Text := 'BEGIN TRAN';
    //if not bQuery.Prepared then bQuery.Prepared := True;
    try
      bQuery.ExecSQL;
    except
      iTranCountAfter := TranCount (aConnection);
      if iTranCountBefore + 1 <> iTranCountAfter then Raise;
    end;
  finally
    bQuery.Free;
  end;
end;

procedure RollBackTrans (const aConnection : TADOConnection);
var
  bQuery : TADOQuery;
  iTranCountBefore, iTranCountAfter : Integer;
begin
  iTranCountBefore := TranCount (aConnection);
  if iTranCountBefore <= 0 then Exit;
  bQuery := TADOQuery.Create (nil);
  try
    bQuery.Connection := aConnection;
    bQuery.SQL.Text := 'ROLLBACK';
    //if not bQuery.Prepared then bQuery.Prepared := True;
    try
      bQuery.ExecSQL;
    except
      iTranCountAfter := TranCount (aConnection);
      if 0 <> iTranCountAfter then raise;
    end;
  finally
    bQuery.Free;
  end;
end;

procedure CommitTrans (const aConnection : TADOConnection);
var
  bQuery : TADOQuery;
  iTranCountBefore, iTranCountAfter : Integer;
begin
  iTranCountBefore := TranCount (aConnection);
  if iTranCountBefore <= 0 then Exit;
  bQuery := TADOQuery.Create (nil);
  try
    bQuery.Connection := aConnection;
    bQuery.SQL.Text := 'COMMIT';
    //if not bQuery.Prepared then bQuery.Prepared := True;
    try
      bQuery.ExecSQL;
    except
      iTranCountAfter := TranCount (aConnection);
      if iTranCountBefore - 1 <> iTranCountAfter then Raise;
    end;
  finally
    bQuery.Free;
  end;
end;

function TranCount (const aConnection : TADOConnection): Integer;
var
  bQuery : TADOQuery;
begin
  Result := -1;
  if Result < 0 then ;;;;
  bQuery := TADOQuery.Create (nil);
  try
    bQuery.Connection := aConnection;
    bQuery.SQL.Text := 'SELECT @@TRANCOUNT TRC';
    //if not bQuery.Prepared then bQuery.Prepared := True;
    bQuery.Open;
    try
      Result := bQuery.FieldByName('TRC').AsInteger;
    finally
      bQuery.Close;
    end;
  finally
    bQuery.Free;
  end;
end;


end.

