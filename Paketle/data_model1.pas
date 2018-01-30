unit data_model1;

interface

uses
  SysUtils, Classes, ADODB, DB, JvMemoryDataset;

type
  TDATALAR = class(TDataModule)
    Kaynak: TADOConnection;
    Hedef: TADOConnection;
    ADO_SQL: TADOQuery;
    ADO_SQL1: TADOQuery;
    ADO_SQL2: TADOQuery;
    ADO_SQL3: TADOQuery;
    Q_LogADO: TADOQuery;
    ADO_SQL4: TADOQuery;
    ADO_SQL5: TADOQuery;
  private

    { Private declarations }
  public
   username : string;
   AktifSirket , _tesisKodu : string;
     _Kurumkod : string;
        _Tip , _database : string;
   procedure QuerySelect (Q: TADOQuery; sql:string);
   procedure QueryExec (Q: TADOQuery; sql:string);
   function FindData (Q: TADOQuery; sql: string): integer;
   procedure Login;

    { Public declarations }
  end;

var
  DATALAR: TDATALAR;


implementation


{$R *.dfm}


procedure TDATALAR.Login;
var
  sql : string;
begin
  try
    sql := 'select slb,slt ,SLVV,SLXX,SLZ,SLYY,SLZZ,SLXXX,SLXXv from parametreler where slk = ''99''';
    datalar.QuerySelect(datalar.ADO_SQL2,sql);
    _Kurumkod := datalar.ADO_SQL2.fieldbyname('slb').AsString;
  except
  end;
end;


function TDatalar.FindData (Q: TADOQuery; sql: string): integer;
begin
  QuerySelect (Q, sql);
  Q.First;
  if ( Q.Eof )
  Then FindData := 0
  Else FindData := 1;
end;

procedure Tdatalar.QueryExec (Q: TADOQuery; sql:string);
begin
  Q.Close;
  Q.SQL.Text := sql;
  Q.ExecSQL;
end;


procedure Tdatalar.QuerySelect (Q: TADOQuery; sql:string);
begin
  Q.Close;
  Q.SQL.Text := sql;
  Q.Open;
end;

end.
