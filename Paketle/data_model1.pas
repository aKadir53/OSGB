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
    (*
    _username := datalar.ADO_SQL2.fieldbyname('slb').AsString;
    _sifre := datalar.ADO_SQL2.fieldbyname('slt').AsString;
    _donemuser := datalar.ADO_SQL2.fieldbyname('SLVV').AsString;
    _donemsifre := datalar.ADO_SQL2.fieldbyname('SLXX').AsString;
    _donemGoster := datalar.ADO_SQL2.fieldbyname('SLZ').AsInteger;
    (*
    _SKRS := datalar.ADO_SQL2.fieldbyname('SLYY').AsString;
    _saglikNetUser := datalar.ADO_SQL2.fieldbyname('SLZZ').AsString;
    _saglikNetPass := datalar.ADO_SQL2.fieldbyname('SLXXX').AsString;
    _firmaSKRS := datalar.ADO_SQL2.fieldbyname('SLXXv').AsString;
      *

    sql := 'select slb,slt,SLVV,SLX,SLXX from parametreler where slk = ''LA''';
    datalar.QuerySelect(datalar.ADO_SQL2,sql);
    _labusername := datalar.ADO_SQL2.fieldbyname('slb').AsString;
    _labsifre := datalar.ADO_SQL2.fieldbyname('slt').AsString;
    _labkurumkod := datalar.ADO_SQL2.fieldbyname('slx').AsString;
    _laburl := datalar.ADO_SQL2.fieldbyname('slvv').AsString;
    _labfirma := datalar.ADO_SQL2.fieldbyname('slxx').AsString;

 (*
    sql := 'select slt from keydat where slk = ''00'' and  slb = ''INT_GSADI''';
    datalar.QuerySelect(datalar.ADO_SQL2,sql);
    _username := datalar.ADO_SQL2.fieldbyname('slt').AsString;

    sql := 'select slt from keydat where slk = ''00'' and  slb = ''INT_GSSSIF''';
    datalar.QuerySelect(datalar.ADO_SQL2,sql);
    _sifre := datalar.ADO_SQL2.fieldbyname('slt').AsString;

    *)
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
var
   sql2 :string;
begin
    sql2 := sql;
    Q.Close;
    Q.SQL.Clear;
    Q.SQL.Add (sql);
//    Q.Prepare;
    Q.ExecSQL;

    //Çalýþan SQL li tutar

    try
     sql := StringReplace(sql,'''','`',[rfReplaceAll]);
     sql := '`' + sql + '`';
 //    Q_LogADO.SQL.Text := 'INSERT INTO MUHQLog (SIRGUM_KUL,DATA_NESNESI,SQL_TEXT) '
 //                       + 'VALUES ('''  + ''',''' + Q.Name + ''',''' + Copy(sql,1,8000) + ''')';
     //ShowMessage(Q_LogADO.SQL.Text);
 //    Q_LogADO.ExecSQL;
    except end;

//    if Pos('DELETE FROM muh_fis_hareket ',UPPERCASE(sql2)) <> 0
//    Then begin
//      sql2 := StringReplace(sql2, 'DELETE FROM muh_fis_hareket ','DELETE FROM ' +  'muh_fis_hareket ',[rfIgnoreCase]);
//      QueryExec(Q, sql2);
//    end;

end;


procedure Tdatalar.QuerySelect (Q: TADOQuery; sql:string);
begin
//    if Pos ('WHERE',AnsiUpperCase(sql)) <> 0
//    Then sql := StringReplace(sql,'WHERE','WITH(NOLOCK) WHERE',[rfReplaceAll,rfIgnoreCase])
//    else
//      if  (Pos ('GROUP BY',AnsiUpperCase(sql)) = 0)
//      and (Pos ('ORDER BY',AnsiUpperCase(sql)) = 0)
//      Then sql := sql + ' WITH(NOLOCK) ';

    Q.Close;
    Q.SQL.Clear ;
    if Copy(AnsiUppercase(sql) ,1, 6) = 'SELECT'
    Then sql := 'SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  '+ sql;
    Q.SQL.Add (sql);
//    Q.Prepare;
    Q.Open;
end;

end.
