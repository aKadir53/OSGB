unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Buttons, StdCtrls, Grids, DBGrids, DB, ADODB,
  DBTables, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdFTP, ComCtrls , kadir , data_model1, IdExplicitTLSClientServerBase,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxPC, Vcl.Samples.Spin ;

type
  TfrmPaket = class(TForm)
    DataSource1: TDataSource;
    OpenDialog1: TOpenDialog;
    IdFTP1: TIdFTP;
    Label1: TLabel;
    pb: TProgressBar;
    txtMemo1: TMemo;
    table1: TADOQuery;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    DBNavigator1: TDBNavigator;
    SpeedButton2: TSpeedButton;
    Panel1: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ComboBox1: TComboBox;
    DataSource2: TDataSource;
    ADO_Rapor_Dizayn: TADOQuery;
    DBMemo2: TDBMemo;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    Versiyon: TMemo;
    txtRev: TMemo;
    ado_sql: TADOQuery;
    Kaynak: TADOConnection;
    btPanodanYapistir: TSpeedButton;
    SpinEdit1: TSpinEdit;
    label111: TLabel;
    btnGit: TSpeedButton;
    cbSonBirAy: TCheckBox;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    Function  DosyaKopyala(sSrc : string;sDest : string) : integer;
    procedure SpeedButton3Click(Sender: TObject);
    procedure IdFTP1Status(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: String);
    procedure IdFTP1WorkEnd(Sender: TObject; AWorkMode: TWorkMode);
    procedure IdFTP1Connected(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    function SQL_Host(var server : string; var user : string ; var password : string ; var DB : string) : boolean;
    procedure SQL_Host_Baglan;
    procedure table1NewRecord(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btPanodanYapistirClick(Sender: TObject);
    procedure btnGitClick(Sender: TObject);
    procedure cbSonBirAyClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPaket: TfrmPaket;

implementation
 uses DosyadanpaketOlustur, clipbrd, NThermo, TransUtils;

{$R *.dfm}

function TfrmPaket.SQL_Host(var server : string; var user : string ; var password : string ; var DB : string) : boolean;
//var
//  sql : string;
begin

   Kaynak.ConnectionString := serverismi('DIALIZ');
   Kaynak.Connected := True;

   try

    ado_sql.Open;

    if not ado_sql.Eof
    then begin
      server := ado_sql.FieldByName('s').AsString;
      user := ado_sql.FieldByName('u').AsString;
      password := ado_sql.FieldByName('p').AsString;
      db := ado_sql.FieldByName('db').AsString;
    end;
    result := True;
   except
    result := False;
   end;


end;

procedure TfrmPaket.SQL_Host_Baglan;
var
  servername ,s , u , p , db : string;
begin

   if SQL_Host(s,u,p,db) = True
   Then Begin
    // ShowMessageSkin(s+' '+db,u,p ,'info');
     servername :=
     'Provider=SQLOLEDB.1;Password=' + p +
     ';Persist Security Info=False;User ID=' + u +
     ';Initial Catalog=' + db + ';Data Source=' + s +
     ';Application Name=Mavi Nokta E-Reçete Veritabaný Günc.Paket Masaüstü Uyg.';
     datalar.Hedef.ConnectionString := servername;
     datalar.Hedef.Connected := True;
   End;
end;

procedure TfrmPaket.table1NewRecord(DataSet: TDataSet);
begin
  table1.FieldByName('MODUL').AsString := 'O';
  table1.FieldByName('TIPI').AsString := 'C';
  table1.FieldByName('TarIH').AsString := FormatDateTime ('yyyymmdd', Date);
end;

Function TfrmPaket.DosyaKopyala(sSrc : string;sDest : string) : integer;
var
  sonuc : integer; //0 Kopyalandý ; 1 Dosya Var ve Kopyalandý ; 2 Dosya Var ve Kopyalanamadý
begin
  if FileExists(sDest) then
    begin
      try
        DeleteFile(sDest);
        CopyFile(PChar(sSrc),PChar(sDest),False);
//        frmMain.txtKurulumGecmisi.Lines.Add(ZamanStr+sSrc + ' = ' +sDest + ' a kopyalandý' + #13);
        sonuc :=1;
      except
  //      frmMain.txtKurulumGecmisi.Lines.Add(ZamanStr+sDest + ' Dosyasý Zaten Var' + #13);
        sonuc:=2;
      end;
    end
  else
    begin
      CopyFile(PChar(sSrc),PChar(sDest),False);
   //   frmMain.txtKurulumGecmisi.Lines.Add(ZamanStr+sSrc + ' = ' +sDest + ' a kopyalandý' + #13);
      sonuc:=0;
    end;
  result:=sonuc;
end;

procedure TfrmPaket.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if SpeedButton3.Enabled then SpeedButton3Click (SpeedButton3);
end;

procedure TfrmPaket.FormCreate(Sender: TObject);
begin

 txtRev.Lines.LoadFromFile('D:\Projeler\DELPHI\OSGB\win32\debug\OSGBupdate.txt');
end;

procedure TfrmPaket.SpeedButton2Click(Sender: TObject);
begin
  if not OpenDialog1.Execute then Exit;
  DBMemo1.Lines.LoadFromFile(OpenDialog1.FileName);
end;

procedure TfrmPaket.SpeedButton1Click(Sender: TObject);
//var
//  yol : string;
begin
    frmDosyadanPaket.ShowModal;

 (*

//  yol := 'C:\NoktaDiyaliz\SQLBAKIM\UPDATE\paket\*.*';

  table1.Last;
  txtMemo1.Lines.Clear;
  txtMemo1.Lines.Add(table1.fieldbyname('ID').AsString);
  txtMemo1.Lines.SaveToFile('C:\NoktaDiyaliz\SQLBAKIM\UPDATE\update.txt');

//  Table1.Close;

  DeleteFile('C:\NoktaDiyaliz\UPDATE.EXE');
//  DeleteFile('C:\NoktaDiyaliz\SQLBAKIM\UPDATE\paket\UPDATEDB.db');
//  DeleteFile('C:\NoktaDiyaliz\SQLBAKIM\UPDATE\paket\UPDATEDB.mb');
  DeleteFile('C:\NoktaDiyaliz\SQLBAKIM\UPDATE\paket\muh.exe');
  DeleteFile('C:\NoktaDiyaliz\SQLBAKIM\UPDATE\paket\update.txt');


//  DosyaKopyala('C:\NoktaDiyaliz\SQLBAKIM\UPDATE\UpdateDB.db','C:\NoktaDiyaliz\SQLBAKIM\UPDATE\Paket\UpdateDB.db');
//  DosyaKopyala('C:\NoktaDiyaliz\SQLBAKIM\UPDATE\UpdateDB.mb','C:\NoktaDiyaliz\SQLBAKIM\UPDATE\Paket\UpdateDB.mb');
  DosyaKopyala('C:\NoktaDiyaliz\Muh.exe','C:\NoktaDiyaliz\SQLBAKIM\UPDATE\Paket\muh.exe');
  DosyaKopyala('C:\NoktaDiyaliz\SQLBAKIM\UPDATE\update.txt','C:\NoktaDiyaliz\SQLBAKIM\UPDATE\Paket\update.txt');

//  winexec('c:\program files\winrar\winrar a -sfx C:\NoktaDiyaliz\update.exe C:\NoktaDiyaliz\SQLBAKIM\UPDATE\paket\*.*',1);


  //winrar c -z[textdosya] [exedosya]




//  Table1.Open;

  ShowMessageskin('Paket Oluþturuldu','','','info');

  *)

end;

procedure TfrmPaket.btPanodanYapistirClick(Sender: TObject);
var
  aSL1, aSL2 : TStringList;
  i, iThermo, iLastID, iScripts : Integer;
  bTamam : Boolean;
begin
  aSL1 := TStringList.Create;
  try
    aSL2 := TStringList.Create;
    try
      aSL1.Text := Clipboard.AsText;
      if Trim (aSL1.Text) = '' then
      begin
        dialogs.ShowMessage('Pano Boþ.');
        Exit;
      end;
      table1.Last;
      iLastID := table1.FieldByName('ID').AsInteger;
      iScripts := 0;
      if not sametext (Trim (aSL1 [aSL1.Count - 1]), 'go') then aSL1.Add('GO');
      bTamam := False;
      BeginTrans (table1.Connection);
      try
        ShowThermo (iThermo, 'Scriptler yazýlýyor', 0, aSL1.Count, 0, True);
        try
          for i := 0 to aSL1.Count -1 do
          begin
            if not UpdateThermo (i, iThermo, IntToStr (i)) then Exit;
            //go'ya rastladým.
            if AnsiSameText (Trim (aSL1 [i]), 'go') then
            begin
              //biriken scriptin baþýndaki boþ satýrlarý sil.
              while (aSL2.Count > 0) and (TRim (aSL2 [0]) = '') do aSL2.Delete (0);
              //biriken scriptin sonundaki boþ satýrlarý sil.
              while (aSL2.Count > 0) and (TRim (aSL2 [aSL2.Count - 1]) = '') do aSL2.Delete (aSL2.Count - 1);
              if Trim (aSL2.Text) <> '' then
              begin
                iScripts := iScripts + SpinEdit1.Value;
                table1.Append;
                try
                  table1.FieldByName ('ID').AsInteger := iLastID + iScripts;
                  table1.FieldByName ('REV').AsInteger := iLastID + iScripts;
                  table1.FieldByName ('SQL_CMD').AsString := aSL2.Text;
                  if Copy (Trim (aSL2 [0]), 1, 2) = '--' then
                    table1.FieldByName('ACIKLAMA').AsString := Trim (Copy (Trim (aSL2 [0]), 3, Length (Trim (aSL2 [0])) - 2))
                   else
                    table1.FieldByName('ACIKLAMA').AsString := Trim (Copy (Trim (aSL2 [0]), 1, 100));
                  table1.Post;
                  aSL2.Clear;
                except
                  table1.Cancel;
                  raise;
                end;
              end;
              Continue;
            end;
            aSL2.Add (aSL1 [i]);
          end;
          bTamam := True;
        finally
          FreeThermo(iThermo);
        end;
      finally
        if bTamam then CommitTrans (table1.Connection)
        else begin
          RollbackTrans (table1.Connection);
          table1.Close;
          table1.Open;
          table1.Last;
        end;
      end;
      Clipboard.Clear;
    finally
      aSL2.Free;
    end;
  finally
    aSL1.Free;
  end;
end;

procedure TfrmPaket.cbSonBirAyClick(Sender: TObject);
var
  bActive : Boolean;
begin
  bActive := table1.Active;
  if bActive then table1.Close;
  if not TCheckBox (Sender).Checked then
    table1.SQL.Text :=
      'select * from UPDATE_CMD_OSGB where Modul = ' +QuotedStr ('O') + 'order by ID'
   else
    table1.SQL.Text :=
      'select * from UPDATE_CMD_OSGB where Modul = ' +QuotedStr ('O') + ' and TARIH >= ' + QuotedStr (FormatDateTime('yyyymmdd', date - 30)) +' order by ID';
  if bActive then table1.Open;
end;

procedure TfrmPaket.SpeedButton3Click(Sender: TObject);
//var
//  dosya : TFileStream;
begin
  try
    table1.Last;
    txtRev.Lines.Text := table1.FieldByName('ID').AsString;
    txtRev.Lines.SaveToFile('D:\Projeler\DELPHI\OSGB\win32\debug\OSGBupdate.txt');
    IdFTP1.Connect();
    Application.ProcessMessages;
    IdFTP1.Put('D:\Projeler\DELPHI\OSGB\win32\debug\OSGBupdate.txt','/httpdocs/OSGBupdate.txt',false);
  except on e : Exception do
    begin
       ShowMessageSkin('Hata : ' + e.Message,'','','info');
    end;
  end;
  IdFTP1.Disconnect;
end;

procedure TfrmPaket.IdFTP1Status(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: String);
begin
  Label1.Caption := AStatusText;
end;

procedure TfrmPaket.IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
  pb.Position := AWorkCount;
  Application.ProcessMessages;
end;

procedure TfrmPaket.IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
  pb.Max := AWorkCountMax;
  Application.ProcessMessages;
end;

procedure TfrmPaket.IdFTP1WorkEnd(Sender: TObject; AWorkMode: TWorkMode);
begin

  pb.Position := 0;
  Label1.Caption := 'Gönderim Tamamlandý';

end;

procedure TfrmPaket.IdFTP1Connected(Sender: TObject);
begin

  Label1.Caption := 'Baðlanatý Saðlandý';

end;

procedure TfrmPaket.SpeedButton4Click(Sender: TObject);
//var
  //s,u,p,db : string;
begin

//  winexec('c:\program files\winrar\winrar c -zC:\NoktaDiyaliz\SQLBakim\Update\Paket\Komut.txt C:\NoktaDiyaliz\Update.exe',1);

  Application.ProcessMessages;

  SQL_Host_Baglan;

  //serverbaglan('213.142.141.121','mavi','');
  // datalar.hedef.Connected := true;
  cbSonBirAyClick(cbSonBirAy);
  table1.Active := true;
  DBMemo1.DataField := 'SQL_CMD';

  ADO_Rapor_Dizayn.Active := true;
  DBMemo2.DataField := 'rapor';


  SpeedButton1.Enabled := true;
  btPanodanYapistir.Enabled := True;
  btnGit.Enabled := True;
  cbSonBirAy.Enabled := True;
end;

procedure TfrmPaket.btnGitClick(Sender: TObject);
var
  sID : String;
begin
  if not InputQuery ('ID''ye Git...', 'Gidilecek ID', sID) then Exit;
  if Trim (sID) = '' then Exit;
  if not table1.Locate ('ID', sID, [loCaseInsensitive]) then Dialogs.ShowMessage('Bulunamadý');
end;

procedure TfrmPaket.ComboBox1Change(Sender: TObject);
begin
     if ComboBox1.Text <> ''
     then SpeedButton3.Enabled := True;
end;

end.

