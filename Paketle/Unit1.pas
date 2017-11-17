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
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxPC ;

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

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPaket: TfrmPaket;

implementation
 uses DosyadanpaketOlustur;

{$R *.dfm}

function TfrmPaket.SQL_Host(var server : string; var user : string ; var password : string ; var DB : string) : boolean;
var
  sql : string;
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
  sql , servername ,s , u , p , db : string;
begin

   if SQL_Host(s,u,p,db) = True
   Then Begin
    // ShowMessageSkin(s+' '+db,u,p ,'info');
     servername :=
     'Provider=SQLOLEDB.1;Password=' + p + ';Persist Security Info=False;User ID=' + u + ';Initial Catalog=' + db + ';Data Source=' + s;
     datalar.Hedef.ConnectionString := servername;
     datalar.Hedef.Connected := True;
   End;
end;








procedure TfrmPaket.table1NewRecord(DataSet: TDataSet);
begin
  table1.FieldByName('MODUL').AsString := 'O';
  table1.FieldByName('TIPI').AsString := 'C';
end;

Function TfrmPaket.DosyaKopyala(sSrc : string;sDest : string) : integer;
var
  sonuc : integer; //0 Kopyaland� ; 1 Dosya Var ve Kopyaland� ; 2 Dosya Var ve Kopyalanamad�
begin
  if FileExists(sDest) then
    begin
      try
        DeleteFile(sDest);
        CopyFile(PChar(sSrc),PChar(sDest),False);
//        frmMain.txtKurulumGecmisi.Lines.Add(ZamanStr+sSrc + ' = ' +sDest + ' a kopyaland�' + #13);
        sonuc :=1;
      except
  //      frmMain.txtKurulumGecmisi.Lines.Add(ZamanStr+sDest + ' Dosyas� Zaten Var' + #13);
        sonuc:=2;
      end;
    end
  else
    begin
      CopyFile(PChar(sSrc),PChar(sDest),False);
   //   frmMain.txtKurulumGecmisi.Lines.Add(ZamanStr+sSrc + ' = ' +sDest + ' a kopyaland�' + #13);
      sonuc:=0;
    end;
  result:=sonuc;
end;

procedure TfrmPaket.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  SpeedButton3.Click;
end;

procedure TfrmPaket.FormCreate(Sender: TObject);
begin

 txtRev.Lines.LoadFromFile('D:\Projeler\DELPHI\OSGB\win32\debug\OSGBupdate.txt');
end;

procedure TfrmPaket.SpeedButton2Click(Sender: TObject);
begin

   OpenDialog1.Execute;
   DBMemo1.Lines.LoadFromFile(OpenDialog1.FileName);

end;

procedure TfrmPaket.SpeedButton1Click(Sender: TObject);
var
  yol : string;
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

  ShowMessageskin('Paket Olu�turuldu','','','info');

  *)

end;

procedure TfrmPaket.SpeedButton3Click(Sender: TObject);
var
  dosya : TFileStream;
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
  Label1.Caption := 'G�nderim Tamamland�';

end;

procedure TfrmPaket.IdFTP1Connected(Sender: TObject);
begin

  Label1.Caption := 'Ba�lanat� Sa�land�';

end;

procedure TfrmPaket.SpeedButton4Click(Sender: TObject);
var
  s,u,p,db : string;
begin

//  winexec('c:\program files\winrar\winrar c -zC:\NoktaDiyaliz\SQLBakim\Update\Paket\Komut.txt C:\NoktaDiyaliz\Update.exe',1);

  Application.ProcessMessages;

  SQL_Host_Baglan;

  //serverbaglan('213.142.141.121','mavi','');
 // datalar.hedef.Connected := true;

  table1.Active := true;
  DBMemo1.DataField := 'SQL_CMD';

  ADO_Rapor_Dizayn.Active := true;
  DBMemo2.DataField := 'rapor';


  SpeedButton1.Enabled := true;


end;

procedure TfrmPaket.ComboBox1Change(Sender: TObject);
begin
     if ComboBox1.Text <> ''
     then SpeedButton3.Enabled := True;



end;

end.