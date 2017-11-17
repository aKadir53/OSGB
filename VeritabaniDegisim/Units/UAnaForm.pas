unit UAnaForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, StrUtils;

type
  TAnaForm = class(TForm)
    btnIslemYap: TSpeedButton;
    procedure btnIslemYapClick(Sender: TObject);
  private
    { Private declarations }
    procedure VeriTabaniNesneleriDegisimKontrol (const bTip: boolean);
  public
    { Public declarations }
  end;

var
  AnaForm: TAnaForm;

implementation

{$R *.dfm}

uses UGenel;

procedure TAnaForm.VeriTabaniNesneleriDegisimKontrol (const bTip: boolean);

  procedure SetFSStringArrayValue (var aArray: TFSStringArray; const iIndex: Integer; const sValue : String);
  begin
    while High (aArray) < iIndex do
    begin
      SetLength (aArray, High (aArray) + 2);
      aArray [High (aArray)] := '';
    end;
    aArray [iIndex] := sValue;
  end;

  function GetFileName (const sFolderBase, sFolder, sName, sFileExt, sFileNameOwner: String; const bEski, bEskisiVar: Boolean; const iSubNum : Integer): String;
  var
    iTmp : Integer;
  begin
    Result := sFolderBase + sFolder;
    if Copy (Result, length (Result), 1) <> '\' then Result := Result + '\';
    if not ForceDirectories(Result) then
    begin
      FSWarnMessage('[' + Result + '] klas�r� a��lamad� !');
    end;
    Result := Result + sName;
    if not IsNull (sFileNameOwner) then Result := Result + '(' + sFileNameOwner + ')';
    if bEski then
      Result := Result + '_Eski'
     else
      if bEskisiVar then
        Result := Result + '_Yeni';
     if iSubNum > 0 then Result := Result + '_' + FormatFloat('####', iSubNum);
    iTmp := 0;
    repeat
      iTmp := iTmp + 1;
    until not FileExists(Result + IfThen (iTmp > 1, '(' + IntToStr (iTmp)+ ')') + sFileExt);
    Result := Result + IfThen (iTmp > 1, '(' + IntToStr (iTmp)+ ')') + sFileExt;
  end;

  function PrepareSQLText (const sText, sType, sOwner, sName, sDate, sHost: String; const xCreate, xUpdate, xTran: Boolean): String;
  var
    iTmp : Integer;
  begin
    Result := sText;
    iTmp := AnsiPos ('CREATE', AnsiUpperCase (Result));
    if not xCreate and (iTmp > 0) then
    begin
      Delete (Result, iTmp, 6);
      Insert ('ALTER', Result, iTmp);
    end;
    //sondaki bo� enter'leri sil.
    while Copy (Result, Length (Result) - 1, 2) = #13#10 do Delete (Result, Length (Result) - 1, 2);
    //ba�taki bo� enter'leri sil.
    while Copy (Result, 1, 2) = #13#10 do Delete (Result, 1, 2);
    if (not IsNull (sDate)) or (not IsNull (sHost)) then
      Result := '-- [' + sHost + '] - [' + sDate + ']'#13#10 + Result;
    if xUpdate then
      Result := Result + #13#10+
        'GO' + #13#10+
        'exec sp_vw_sys_upd ' +
        GetSQLValue (stype) + ' ' +
        GetSQLValue (sOwner) + ' ' +
        GetSQLValue1 (sName);

    if xTran then
      Result :=
        'BEGIN TRAN'#13#10+
        'GO'#13#10+
        Result + #13#10+
        'GO'#13#10+
        'COMMIT'#13#10+
        'GO'#13#10;
  end;
var
  xQuery, yQuery, zQuery : TFSQuery;
  iThermo1, iThermo2, iThermo3, iSayi1, iSayi2 : Integer;
  aSL1, aSL2 : TStringList;
  aTypes, aOwners, aNames : TFSStringArray;
  aNew : array of Boolean;
  bTamam, xTran, xCreate, xUpdateLines, xSadeceYeni, xTxtUzanti, xSadeceDegisenler, xAraDegisiklikler, xOtomatikGuncelleme : Boolean;
  sFileExt, sFolderBase, sTmpDesc : String;
begin
  if not UserRec.IsAdmin then
  begin
    FSWarnMessage ('Bu ��lem ��in Yetkiniz Yok!!!');
    Exit;
  end;
  if FSMessage ('Bu ��lem Veritaban� �zerinde Bulunan SQL Nesnelerinin SQL Kodlar�n� Klas�r Yap�s� ��inde Olu�turacakt�r.'#13#10#13#10'Devam etmek istiyor musunuz ?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then Exit;
  if not SelectDirectory (sFolderBase, [], 0) then Exit;
  if Copy (sFolderBase, Length (sFolderBase), 1) <> '\' then sFolderBase := sFolderBase + '\';
  sFolderBase := sFolderBase + 'SQLNesneleri_' + FormatDateTime ('yymmdd_hhnnss_zzz', Now) + '\';
  iSayi1 := 0;
  iSayi2 := 0;
  bTamam := False;
  zQuery := CreateFSQuery;
  try
    yQuery := CreateFSQuery;
    try
      xQuery := CreateFSQuery();
      try
        xTran := True;
        xCreate := False;
        xUpdateLines := True;
        xSadeceYeni := False;
        xTxtUzanti := False;
        xSadeceDegisenler := True;
        xAraDegisiklikler := False;
        xOtomatikGuncelleme := False;
        if FSInputBox ('Veritaban� Bile�en �hra� Se�enekleri',
                       ['Transaction Kodlar�n� Ekle',
                        '"ALTER" yerine "CREATE" �ret',
                        'G�ncelleme Kayd� Sat�rlar�n� Ekle',
                        'Sadece Yeni H�lini �ret',
                        '.TXT Uzant�l� Olarak Kaydet',
                        'Sadece De�i�enlerin Kodunu �ret',
                        'Ara De�ii�iklikleri de Tara',
                        'G�ncellemeyi Otomatik Yap'],
                       [FSCheck, FSCheck, FSCheck, FSCheck, FSCheck, FSCheck, FSCheck, FSCheck],
                       [True, True, True, True, True, True, True, True],
                       [False, False, False, False, False, False, False, False],
                       [1, 1, 1, 1, 1, 1, 1, 1],
                       [@xTran, @xCreate, @xUpdateLines, @xSadeceYeni, @xTxtUzanti, @xSadeceDegisenler, @xAraDegisiklikler, @xOtomatikGuncelleme]) <> mrOK then Exit;
        if ((not xSadeceDegisenler)
            or (not xUpdateLines))
          and xOtomatikGuncelleme then
        begin
          FSWarnMessage('De�i�meyenlerin de getirildi�i veya G�ncelleme sat�rlar�n�n eklenmedi�i durumda otomatik g�ncelleme �al��t�r�lmayacak !!!');
          xOtomatikGuncelleme := False;
        end;

        if xOtomatikGuncelleme then
        begin
          if FSMessage ('Otomatik G�ncelleme se�ene�i se�ildi�inde, dosyas� �retilen yeni hali ile kar��la�t�rma bilgisi otomatik olarak g�ncellenecektir.'#13#10#13#10+
                        'Bu durumda ayn� dosyalar� tekrar olu�turmak istedi�inizde nesneler de�i�memi� olarak g�z�kecektir.'#13#10#13#10+
                        'Bu sebeple olu�turulan dosyalar� kaybetmemeniz gerekmektedir'#13#10#13#10+
                        'Devam Etmek �stiyor Musunuz ?', mtConfirmation, [mbNo, mbYes], 0) <> mrYes then Exit;
        end;

        if xTxtUzanti then
          sFileExt := '.TXT'
         else
          sFileExt := '.SQL';
        if not QueryOpen (zQuery, 'exec sp_vw_sys_GetCheckDBList') then Exit;
        FSBeginTrans;
        try
          ShowThermo(iThermo1, 'Veritabanlar� taran�yor....', 0, zQuery.RecordCount, 0);
          try
            while not zQuery.Eof do
            begin
              if not UpdateThermo(zQuery.RecNo - 1, iThermo1, zQuery.FieldByName ('DBName').AsString) then Exit;

              if not xSadeceDegisenler then
                if not QueryExec (xQuery, 'delete from [' + zQuery.FieldByName ('DBNAme').AsString + '].dbo.vw_sys_x') then Exit;
              if not QueryOpen (xQuery, 'exec [' + zQuery.FieldByName ('DBNAme').AsString + '].dbo.sp_vw_sys_check null, null') then Exit;
              aSL1 := TStringList.create;
              try
                SetLength (aTypes, 0);
                SetLength (aOwners, 0);
                SetLength (aNames, 0);
                SetLength (aNew, 0);
                aSL2 := TStringList.create;
                try
                  ShowThermo (iThermo2, 'Nesne de�i�iklikleri taran�yor....', 0, xQuery.RecordCount, 0);
                  try
                    while not xQuery.Eof do
                    begin
                      sTmpDesc := xQuery.FieldByName ('xtype').AsString + '.' + xQuery.FieldByName ('OwnerName').AsString + '.' + xQuery.FieldByName ('name').AsString;
                      if not UpdateThermo(xQuery.RecNo - 1, iThermo2, sTmpDesc + ' ' + xQuery.FieldByName ('X').AsString) then Exit;
                      if (xQuery.FieldByName ('X').AsInteger < 0) and (aSL2.IndexOf(sTmpDesc) < 0) then
                      begin
                        iThermo3 := aSL2.Add (sTmpDesc);
                        SetFSStringArrayValue (aTypes, iThermo3, xQuery.FieldByName ('xtype').AsString);
                        SetFSStringArrayValue (aOwners, iThermo3, xQuery.FieldByName ('OwnerName').AsString);
                        SetFSStringArrayValue (aNames, iThermo3, xQuery.FieldByName ('name').AsString);
                        while High (aNew) < iThermo3 do
                        begin
                          SetLength (aNew, High (aNew) + 2);
                          aNew [High (aNew)] := False;
                        end;
                      end;
                      iThermo3 := aSL2.IndexOf(sTmpDesc);
                      if (xQuery.FieldByName ('X').AsInteger > 0) and (iThermo3 >= 0) then aNew [iThermo3] := True;
                      if xSadeceYeni and (xQuery.FieldByName ('X').AsInteger < 0) then
                      begin
                        xQuery.Next;
                        Continue;
                      end;
                      aSL1.Text := PrepareSQLText(xQuery.FieldByName ('AllText').AsString,
                                                  xQuery.FieldByName ('xtype').AsString,
                                                  xQuery.FieldByName ('OwnerName').AsString,
                                                  xQuery.FieldByName ('name').AsString,
                                                  xQuery.FieldByName ('LastDate').AsString,
                                                  xQuery.FieldByName ('LastHost').AsString,
                                                  xCreate,
                                                  xUpdateLines,
                                                  xTran);

                      aSL1.SaveToFile(
                        GetFileName (
                          sFolderBase,
                          xQuery.FieldByName ('Folder').AsString,
                          xQuery.FieldByName ('name').AsString,
                          sFileExt,
                          xQuery.FieldByName ('FileNameOwner').AsString,
                          xQuery.FieldByName ('X').AsInteger < 0,
                          aSL2.IndexOf(sTmpDesc) >= 0,
                          0));
                      iSayi2 := iSayi2 + 1;
                      if xAraDegisiklikler and (xQuery.FieldByName ('X').AsInteger < 0) and (zQuery.FieldByName ('TrackTableExists').AsBoolean) then
                      begin
                        if not QueryOpen (yQuery,
                          'select EventDate, Alltext, HostName, DatabaseName, SchemaName'#13#10 +
                          'from [' + zQuery.FieldByName ('DBNAme').AsString + '].dbo.vw_DDLEvents E'#13#10 +
                          'where ObjectName = ' + GetSQLValue1 (xQuery.FieldByName ('name').AsString) + ''#13#10 +
                          '  and E.EventDate >= ' + GetSQLValue1 (xQuery.FieldByName ('LastDate').AsString, FSDateTime) + ''#13#10 +
                          '  and E.SchemaName = ' + GetSQLValue1 (xQuery.FieldByName ('OwnerName').AsString) + ''#13#10 +
                          'order by E.EventDate') then Exit;
                        ShowThermo(iThermo3, 'Ara De�i�iklikler Olu�turuluyor...', 0, yQuery.RecordCount, 0);
                        try
                          while not yQuery.Eof do
                          begin
                            if not UpdateThermo (yQuery.RecNo - 1, iThermo3, IntToStr (yQuery.RecNo) + ' / ' + IntToStr (yQuery.RecordCount)) then Exit;
                            aSL1.Text := PrepareSQLText(yQuery.FieldByName ('AllText').AsString,
                                                        xQuery.FieldByName ('xtype').AsString,
                                                        xQuery.FieldByName ('OwnerName').AsString,
                                                        xQuery.FieldByName ('name').AsString,
                                                        yQuery.FieldByName ('EventDate').AsString,
                                                        yQuery.FieldByName ('HostName').AsString,
                                                        xCreate,
                                                        xUpdateLines,
                                                        xTran);
                            aSL1.SaveToFile(
                              GetFileName (
                                sFolderBase,
                                xQuery.FieldByName ('Folder').AsString,
                                xQuery.FieldByName ('name').AsString,
                                sFileExt,
                                xQuery.FieldByName ('FileNameOwner').AsString,
                                False,
                                True,
                                yQuery.RecNo));
                            iSayi2 := iSayi2 + 1;
                            yQuery.Next;
                          end;
                        finally
                          FreeThermo(iThermo3);
                        end;
                      end;
                      if xQuery.FieldByName ('X').AsInteger > 0 then iSayi1 := iSayi1 + 1;
                      if (xQuery.FieldByName ('X').AsInteger > 0) and xOtomatikGuncelleme and (xSadeceDegisenler) then
                      begin
                        if not QueryExec (yQuery,
                                          'exec [' + zQuery.FieldByName ('DBNAme').AsString + '].dbo.sp_vw_sys_upd '+
                                          GetSQLValue1(xQuery.FieldByName ('xtype').AsString) +', ' +
                                          GetSQLValue1(xQuery.FieldByName ('OwnerName').AsString) + ', ' +
                                          GetSQLValue1(xQuery.FieldByName ('name').AsString)) then Exit;
                        if not QueryOpen (yQuery,
                                          'Select RecID, AllText '#13#10+
                                          'from [' + zQuery.FieldByName ('DBNAme').AsString + '].dbo.vw_sys_x'#13#10+
                                          'Where xtype = '+ GetSQLValue1(xQuery.FieldByName ('xtype').AsString) +''#13#10+
                                          '  and OwnerName = ' + GetSQLValue1(xQuery.FieldByName ('OwnerName').AsString) + ''#13#10+
                                          '  and name = ' + GetSQLValue1(xQuery.FieldByName ('name').AsString)) then Exit;
                        if ExistsRecord(yQuery) then
                        begin
                          yQuery.Edit;
                          yQuery.FieldByName ('AllText').AsString := xQuery.FieldByName ('AllText').AsString;
                          yQuery.Post;
                        end;
                      end;
                      xQuery.Next;
                    end;
                    if xOtomatikGuncelleme and (xSadeceDegisenler) then
                      for iThermo3 := 0 to aSL2.Count - 1 do
                        if not aNew [iThermo3] then
                          if not QueryExec(yQuery,
                                            'Delete x '#13#10+
                                            'from [' + zQuery.FieldByName ('DBNAme').AsString + '].dbo.vw_sys_x X'#13#10+
                                            'Where xtype = '+ GetSQLValue1(aTypes [iThermo3]) +''#13#10+
                                            '  and OwnerName = ' + GetSQLValue1(aOwners [iThermo3]) + ''#13#10+
                                            '  and name = ' + GetSQLValue1(aNames [iThermo3])) then Exit;
                  finally
                    FreeThermo(iThermo2);
                  end;
                finally
                  aSL2.Free;
                end;
              finally
                aSL1.Free;
              end;

              zQuery.Next;
            end;
          finally
            FreeThermo(iThermo1);
          end;
          bTamam := True;
        finally
          if bTamam and xSadeceDegisenler then FSCommit
          else FSRollBack;
        end;
        FSMessage('��lem Tamamland�, Toplam '+ IntToStr (iSayi1) +' SQL Nesnesine Ait '+ IntToStr (iSayi2) +' Adet Dosya Kaydedildi');
      finally
        xQuery.Free;
      end;
    finally
      yQuery.Free;
    end;
  finally
    zQuery.Free;
  end;
end;

procedure TAnaForm.btnIslemYapClick(Sender: TObject);
begin
  VeriTabaniNesneleriDegisimKontrol(True);
end;

end.

