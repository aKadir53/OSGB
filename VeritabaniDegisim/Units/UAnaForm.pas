unit UAnaForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, StrUtils, FileCtrl,
  Vcl.StdCtrls, Vcl.CheckLst, UGenel, Vcl.ExtCtrls;

type
  TAnaForm = class(TForm)
    btnIslemYap: TSpeedButton;
    xTran: TCheckBox;
    xCreate: TCheckBox;
    xUpdateLines: TCheckBox;
    xSadeceYeni: TCheckBox;
    xTxtUzanti: TCheckBox;
    xSadeceDegisenler: TCheckBox;
    xAraDegisiklikler: TCheckBox;
    xDosyaTarihleriniAta: TCheckBox;
    xOtomatikGuncelleme: TCheckBox;
    clbSunucu: TCheckListBox;
    txtServerName: TEdit;
    txtUserName: TEdit;
    txtPassword: TEdit;
    txtDBName: TEdit;
    lblServerName: TLabel;
    lblUserName: TLabel;
    lblPassword: TLabel;
    lblDBName: TLabel;
    btnTestConnection: TSpeedButton;
    aTimer: TTimer;
    xDosyaIsimleriniKlasoreYedir: TCheckBox;
    lblLocalFolder: TLabel;
    txtLocalFolder: TEdit;
    btnLocalFolder: TSpeedButton;
    memo1: TMemo;
    procedure btnIslemYapClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnTestConnectionClick(Sender: TObject);
    procedure clbSunucuClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aTimerTimer(Sender: TObject);
    procedure btnLocalFolderClick(Sender: TObject);
  private
    { Private declarations }
    FServers: TServerConnectionParameters;
    procedure VeriTabaniNesneleriDegisimKontrol (const bTip: boolean);
    procedure TestConnection;
    function GetServerItemString (const aRec : TServerConnectionParameterRec): String;overload;
    procedure SetEditValues (const aRec : TServerConnectionParameterRec);overload;
    function GetServerItemString (const iIndex : Integer): String;overload;
    procedure LoadServers;
    procedure SaveServers;
    function GetIniFileName: String;
    procedure FillServersToList;
  public
    { Public declarations }
  end;

var
  AnaForm: TAnaForm;

implementation

{$R *.dfm}

uses ADODB, NThermo;

const
  csSunucuSayisi = 'SunucuSayisi';
  csSunucuAdi = 'SunucuAdi%0:d';
  csKullaniciAdi = 'KullaniciAdi%0:d';
  csSifre = 'Sifre%0:d';
  csVeritabani = 'Veritabani%0:d';
  csYerelIhracKlasoru = 'KlasorYolu%0:d';

procedure TAnaForm.btnTestConnectionClick(Sender: TObject);
begin
  TestConnection;
end;

procedure TAnaForm.clbSunucuClick(Sender: TObject);
begin
  if (TCheckListBox (Sender).Items.Count > 0)
    and (TCheckListBox (Sender).ItemIndex >= 0) then
    SetEditValues (FServers [TCheckListBox (Sender).ItemIndex]);
end;

procedure TAnaForm.FillServersToList;
var
  i: Integer;
begin
  clbSunucu.Items.Clear;
  for i := Low (FServers) to High (FServers) do
    clbSunucu.Items.Add(GetServerItemString(i));
end;

procedure TAnaForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveServers;
end;

procedure TAnaForm.FormCreate(Sender: TObject);
begin
  xTran.Checked := True;
  xCreate.Checked := False;
  xUpdateLines.Checked := True;
  xSadeceYeni.Checked := False;
  xTxtUzanti.Checked := False;
  xSadeceDegisenler.Checked := True;
  xAraDegisiklikler.Checked := False;
  xOtomatikGuncelleme.Checked := False;
  xDosyaTarihleriniAta.Checked := True;
  xDosyaIsimleriniKlasoreYedir.Checked := False;
  LoadServers;
end;

function TAnaForm.GetServerItemString(
  const aRec: TServerConnectionParameterRec): String;
begin
  Result := aRec.sServerName + ' - ' + aRec.sUserName + ' - ' + aRec.sDefaultDBName;
end;

function TAnaForm.GetIniFileName: String;
begin
  Result := ChangeFileExt (ParamStr(0), '.INI');
end;

function TAnaForm.GetServerItemString(const iIndex: Integer): String;
begin
  Result := GetServerItemString (fservers [iIndex]);
end;

procedure TAnaForm.LoadServers;
var
  sFileName : String;
  aStringList : TStringList;
  i, iServerCount: Integer;
begin
  sFileName := GetIniFileName;
  if FileExists (sFileName) then
  begin
    aStringList := TStringList.create;
    try
      aStringList.LoadFromFile(sFileName);
      iServerCount := StrToIntDef (aStringList.Values [csSunucuSayisi], -1);
      SetLength (FServers, iServerCount);
      for i := 0 to iServerCount - 1 do
      begin
        FServers [i].sServerName := aStringList.Values [Format (csSunucuAdi, [i + 1])];
        FServers [i].sUserName := aStringList.Values [Format (csKullaniciAdi, [i + 1])];
        FServers [i].sPassword := aStringList.Values [Format (csSifre, [i + 1])];
        FServers [i].sDefaultDBName := aStringList.Values [Format (csVeritabani, [i + 1])];
        FServers [i].sLocalExportFolder := aStringList.Values [Format (csYerelIhracKlasoru, [i + 1])];
      end;
      FillServersToList;
    finally
      aStringList.Free;
    end;
  end;
end;

procedure TAnaForm.SaveServers;
var
  sFileName : String;
  aStringList : TStringList;
  i: Integer;
begin
  sFileName := GetIniFileName;
  aStringList := TStringList.create;
  try
    aStringList.Values [csSunucuSayisi] := IntToStr (High (FServers) + 1);
    for i := 0 to High (FServers) do
    begin
      aStringList.Values [Format (csSunucuAdi, [i + 1])] := FServers [i].sServerName;
      aStringList.Values [Format (csKullaniciAdi, [i + 1])] := FServers [i].sUserName;
      aStringList.Values [Format (csSifre, [i + 1])] := FServers [i].sPassword;
      aStringList.Values [Format (csVeritabani, [i + 1])] := FServers [i].sDefaultDBName;
      aStringList.Values [Format (csYerelIhracKlasoru, [i + 1])] := FServers [i].sLocalExportFolder;
    end;
    aStringList.SaveToFile(sFileName);
  finally
    aStringList.Free;
  end;
end;

procedure TAnaForm.SetEditValues(const aRec: TServerConnectionParameterRec);
begin
  txtServerName.Text := arec.sServerName;
  txtUserName.Text := arec.sUserName;
  txtPassword.Text := arec.sPassword;
  txtDBName.Text := arec.sDefaultDBName;
  txtLocalFolder.Text := arec.sLocalExportFolder;
end;

procedure TAnaForm.TestConnection;
var
  bBasarili : Boolean;
  iServerIndex : Integer;
begin
  bBasarili := CreateNewConnection (txtServerName.Text,txtUserName.Text, txtPassword.Text, txtDBName.Text, 'Veritabaný deðiþimleri takip programý');
  if bBasarili then
  begin
    iServerIndex := ServerConnectionParameterIndex (FServers, ServerConnectionParameterRec (txtServerName.Text, txtUserName.Text, txtPassword.Text, txtDBName.Text, txtLocalFolder.Text, ''));
    if iServerIndex < 0 then
    begin
      ServerConnectionParameterAdd (FServers, ServerConnectionParameterRec (txtServerName.Text, txtUserName.Text, txtPassword.Text, txtDBName.Text, txtLocalFolder.Text, ''));
      FillServersToList;
    end;
  end;
end;

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
    sDosyaKlasorEklenti : String;
  begin
    sDosyaKlasorEklenti := '';
    if bEski then
      sDosyaKlasorEklenti := sDosyaKlasorEklenti + '_Eski'
     else
      if bEskisiVar then
        sDosyaKlasorEklenti := sDosyaKlasorEklenti + '_Yeni';
    if iSubNum > 0 then sDosyaKlasorEklenti := sDosyaKlasorEklenti + '_' + FormatFloat('####', iSubNum);
    if xDosyaIsimleriniKlasoreYedir.Checked then
      if Copy (sDosyaKlasorEklenti, Length (sDosyaKlasorEklenti), 1) <> '\' then
        sDosyaKlasorEklenti := sDosyaKlasorEklenti + '\';

    Result := sFolderBase;
    if xDosyaIsimleriniKlasoreYedir.Checked then Result := Result + sDosyaKlasorEklenti;
    Result := Result  + sFolder;
    if Copy (Result, length (Result), 1) <> '\' then Result := Result + '\';
    if not System.SysUtils.ForceDirectories(Result) then
    begin
      FSWarnMessage('[' + Result + '] klasörü açýlamadý !');
    end;
    Result := Result + sName;
    if not IsNull (sFileNameOwner) then Result := Result + '(' + sFileNameOwner + ')';
    if not xDosyaIsimleriniKlasoreYedir.Checked then Result := Result + sDosyaKlasorEklenti;
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
    //sondaki boþ enter'leri sil.
    while Copy (Result, Length (Result) - 1, 2) = #13#10 do Delete (Result, Length (Result) - 1, 2);
    //baþtaki boþ enter'leri sil.
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
  bTamam : Boolean;
  sFileExt, sFolderBase, sTmpDesc, sFileName : String;
begin
  {if not UserRec.IsAdmin then
  begin
    FSWarnMessage ('Bu Ýþlem Ýçin Yetkiniz Yok!!!');
    Exit;
  end;{}
  if FSMessage ('Bu Ýþlem Veritabaný Üzerinde Bulunan SQL Nesnelerinin SQL Kodlarýný Klasör Yapýsý Ýçinde Oluþturacaktýr.'#13#10#13#10'Devam etmek istiyor musunuz ?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then Exit;
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
        if ((not xSadeceDegisenler.Checked)
            or (not xUpdateLines.Checked))
          and xOtomatikGuncelleme.Checked then
        begin
          FSWarnMessage('Deðiþmeyenlerin de getirildiði veya Güncelleme satýrlarýnýn eklenmediði durumda otomatik güncelleme çalýþtýrýlmayacak !!!');
          xOtomatikGuncelleme.Checked := False;
        end;

        if xOtomatikGuncelleme.Checked then
        begin
          if FSMessage ('Otomatik Güncelleme seçeneði seçildiðinde, dosyasý üretilen yeni hali ile karþýlaþtýrma bilgisi otomatik olarak güncellenecektir.'#13#10#13#10+
                        'Bu durumda ayný dosyalarý tekrar oluþturmak istediðinizde nesneler deðiþmemiþ olarak gözükecektir.'#13#10#13#10+
                        'Bu sebeple oluþturulan dosyalarý kaybetmemeniz gerekmektedir'#13#10#13#10+
                        'Devam Etmek Ýstiyor Musunuz ?', mtConfirmation, [mbNo, mbYes], 0) <> mrYes then Exit;
        end;

        if xTxtUzanti.Checked then
          sFileExt := '.TXT'
         else
          sFileExt := '.SQL';
        if not QueryOpen (zQuery, 'exec sp_vw_sys_GetCheckDBList') then Exit;
        FSBeginTrans;
        try
          ShowThermo(iThermo1, 'Veritabanlarý taranýyor....', 0, zQuery.RecordCount, 0);
          try
            while not zQuery.Eof do
            begin
              if not UpdateThermo(zQuery.RecNo - 1, iThermo1, zQuery.FieldByName ('DBName').AsString) then Exit;

              if not xSadeceDegisenler.Checked then
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
                  ShowThermo (iThermo2, 'Nesne deðiþiklikleri taranýyor....', 0, xQuery.RecordCount, 0);
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
                      if xSadeceYeni.Checked and (xQuery.FieldByName ('X').AsInteger < 0) then
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
                                                  xCreate.Checked,
                                                  xUpdateLines.Checked,
                                                  xTran.Checked);
                      sFileName := GetFileName (
                          sFolderBase,
                          xQuery.FieldByName ('Folder').AsString,
                          xQuery.FieldByName ('name').AsString,
                          sFileExt,
                          xQuery.FieldByName ('FileNameOwner').AsString,
                          xQuery.FieldByName ('X').AsInteger < 0,
                          aSL2.IndexOf(sTmpDesc) >= 0,
                          0);
                      aSL1.SaveToFile(sFileName);
                      if xDosyaTarihleriniAta.Checked and (not xQuery.FieldByName ('LastDate').IsNull) then
                      begin
                        FileSetDate (sFileName, DateTimeToFileDate(xQuery.FieldByName ('LastDate').AsDateTime));
                      end;
                      iSayi2 := iSayi2 + 1;
                      if xAraDegisiklikler.Checked and (xQuery.FieldByName ('X').AsInteger < 0) and (zQuery.FieldByName ('TrackTableExists').AsBoolean) then
                      begin
                        if not QueryOpen (yQuery,
                          'select EventDate, Alltext, HostName, DatabaseName, SchemaName'#13#10 +
                          'from [' + zQuery.FieldByName ('DBNAme').AsString + '].dbo.vw_DDLEvents E'#13#10 +
                          'where ObjectName = ' + GetSQLValue1 (xQuery.FieldByName ('name').AsString) + ''#13#10 +
                          '  and E.EventDate >= ' + GetSQLValue1 (FormatDatetime('yyyymmdd hh:nn:ss.zzz', xQuery.FieldByName ('LastDate').AsDateTime)) + ''#13#10 +
                          '  and E.SchemaName = ' + GetSQLValue1 (xQuery.FieldByName ('OwnerName').AsString) + ''#13#10 +
                          'order by E.EventDate') then Exit;
                        ShowThermo(iThermo3, 'Ara Deðiþiklikler Oluþturuluyor...', 0, yQuery.RecordCount, 0);
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
                                                        xCreate.Checked,
                                                        xUpdateLines.Checked,
                                                        xTran.Checked);
                            sFileName := GetFileName (
                                sFolderBase,
                                xQuery.FieldByName ('Folder').AsString,
                                xQuery.FieldByName ('name').AsString,
                                sFileExt,
                                xQuery.FieldByName ('FileNameOwner').AsString,
                                False,
                                True,
                                yQuery.RecNo);
                            aSL1.SaveToFile(sFileName);
                            if xDosyaTarihleriniAta.Checked and (not yQuery.FieldByName ('EventDate').IsNull)then
                            begin
                              FileSetDate (sFileName, DateTimeToFileDate(yQuery.FieldByName ('EventDate').AsDateTime));
                            end;
                            iSayi2 := iSayi2 + 1;
                            yQuery.Next;
                          end;
                        finally
                          FreeThermo(iThermo3);
                        end;
                      end;
                      if xQuery.FieldByName ('X').AsInteger > 0 then iSayi1 := iSayi1 + 1;
                      if (xQuery.FieldByName ('X').AsInteger > 0) and xOtomatikGuncelleme.Checked and (xSadeceDegisenler.Checked) then
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
                    if xOtomatikGuncelleme.Checked and (xSadeceDegisenler.Checked) then
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
          if bTamam then dsfls

        finally
          if bTamam and xSadeceDegisenler.Checked then FSCommit
          else FSRollBack;
        end;
        FSMessage('Ýþlem Tamamlandý, Toplam '+ IntToStr (iSayi1) +' SQL Nesnesine Ait '+ IntToStr (iSayi2) +' Adet Dosya Kaydedildi');
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

procedure TAnaForm.aTimerTimer(Sender: TObject);
var
  sStr : String;
  aConn : TADOCOnnection;
begin
  sStr := 'Bileþen Durumu: ';
  aConn := ConnectionReference;
  if Assigned (aConn) then sStr := sStr + 'var' else sStr := sStr + 'yok';
  sStr := sStr + #13#10'Baðlantý Durumu: ';
  if Assigned (aConn) and aConn.Connected then sStr := sStr + 'var' else sStr := sStr + 'yok';
  sStr := sStr + #13#10'Baðlantý Bilgileri: ';
  if Assigned (aConn) and aConn.Connected then sStr := sStr + aConn.ConnectionString else sStr := sStr + 'yok';
  memo1.Text := sStr;
end;

procedure TAnaForm.btnIslemYapClick(Sender: TObject);
begin
  VeriTabaniNesneleriDegisimKontrol(True);
end;

procedure TAnaForm.btnLocalFolderClick(Sender: TObject);
var
  sFolder : String;
  iServer : Integer;
begin
  sFolder := txtLocalFolder.Text;
  if IsNull (sFolder) then sFolder := ExtractFilePath(sFolder);

  if SelectDirectory (sFolder, [], 0) then
  begin
    txtLocalFolder.Text := sFolder;
    iServer := ServerConnectionParameterIndex(FServers, ServerConnectionParameterRec(txtServerName.Text, txtUserName.Text, txtPassword.Text, txtDBName.Text, txtLocalFolder.Text, ''));
    if iServer >= 0 then
      FServers [iServer].sLocalExportFolder := sFolder;
  end;

end;

end.

