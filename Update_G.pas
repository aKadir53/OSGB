unit Update_G;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,  ExtCtrls, DB, ADODB,URLMon, ShellApi,
  DBTables, Grids, BaseGrid,  ComCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,kadir,
  iniFiles , registry, ImgList, JvProgressBar, JvXPProgressBar,
  DBCtrls, Menus, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPC, AdvGrid, dxSkinsCore, dxSkinMcSkin,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, AdvObj, cxButtons, dxSkinsForm, Gauges,
  cxContainer, cxEdit, cxGroupBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, SMTray,
  dxSkinMoneyTwins, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinsDefaultPainters;



type
  TfrmUpdate = class(TForm)
    pnlToolBar: TPanel;
    pnlTitle: TPanel;
    pnlOnay: TPanel;
    txtinfo: TLabel;
    ADO_SQL: TADOQuery;
    DataSource1: TDataSource;
    ADO_SQL1: TADOQuery;
    HTTP2: TIdHTTP;
    ADO_SQL_ID: TADOQuery;
    global_img_list4: TImageList;
    ADO_RaporlarKaynak: TADOQuery;
    ADO_RaporlarHedef: TADOQuery;
    PopupMenu1: TPopupMenu;
    SadeceExeAl1: TMenuItem;
    WSDLAL1: TMenuItem;
    GncellemeYapExe1: TMenuItem;
    N1: TMenuItem;
    RaporDizaynlar1: TMenuItem;
    ImageList1: TImageList;
    N2: TMenuItem;
    SalkNetGnderim1: TMenuItem;
    btnListe: TcxButton;
    btnSend: TcxButton;
    cxButton1: TcxButton;
    pb: TGauge;
    pnlBilgi: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    DataSource2: TDataSource;
    gridDetay: TAdvStringGrid;
    Memo2: TMemo;
    txtLOG: TMemo;
    Timer1: TTimer;
    cxTabSheet4: TcxTabSheet;
    PopupMenu2: TPopupMenu;
    K1: TMenuItem;
    CheckBox1: TCheckBox;
    cxButton3: TcxButton;
    N3: TMenuItem;
    N4: TMenuItem;
    I1: TMenuItem;
    procedure UpdateSQL;
    procedure btnVazgecClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridDetayGetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure btnListeClick(Sender: TObject);
    function DownloadFile(SourceFile, DestFile: string): Boolean;
    procedure FormShow(Sender: TObject);
    procedure GuncellemeBilgileri;
    function  GetCompName: string;

    procedure gridDetayCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    function alanbilgiSQL(_table : string) : string;
    procedure RaporDizaynlar1Click(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure gridDetayClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure K1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure UpdateTip (const bAutomatic: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FFirstActivated : Boolean;
    FSonYayinlananGuncelleme, FSonGuncelleme : String;
    FAuto : Boolean;
  public
    { Public declarations }
    guncellemeIslemi : string;
  end;

var
  frmUpdate: TfrmUpdate;


implementation
uses data_modul, Math, NThermo;
{$R *.dfm}

procedure TfrmUpdate.UpdateTip (const bAutomatic: Boolean);
begin
  FAuto := bAutomatic;
end;


function TfrmUpdate.alanbilgiSQL(_table : string) : string;
var
   sql : string;
begin
      sql :=
      'select o.name,c.name as alan,c.xtype, ' +
      '(case c.xtype  ' +
      'when 167 then ''varchar''+''(''+convert(varchar,c.length)+'')'''+
      'when 56 then ''int''' +
      'when 62 then ''float''' +
      'when 52 then ''smallint'' ' +
      'when 61 then ''datetime'' ' +
      'when 175 then ''char''' +
      'when 104 then ''bit''' +
      'when 108 then ''numeric''' +
      'when 35 then ''TEXT'' ' +
      'when 231 then ''nvarchar''+''(''+convert(nvarchar,c.length)+'')'''+
      'else '''' ' +
      'end) as tip, ' +
      '( ' +
      'case typestat ' +
      'when 3 then ''NOT NULL''' +
      'when 1 then ''NOT NULL''' +
      'when 2 then ''NULL''' +
      'when 0 then ''NULL''' +
      'else '''' ' +
      ' end) as durum,' +
      'c.length ,' +
      ' (case when id.name = c.name then ''IDENTITY'' else '''' end) as _IDENTITY_ ' +
      ' from sysobjects o  ' +
      '   inner join syscolumns c on c.id = o.id ' +
      ' left join  sys.identity_columns id on id.object_id = c.id ' +
      'where o.name = ' + QuotedStr(_table);

      result := sql;
end;

function TfrmUpdate.GetCompName: string;
var
   buffer:array[0..MAX_COMPUTERNAME_LENGTH+1] of Char;
   length:Cardinal;
begin
     length:=MAX_COMPUTERNAME_LENGTH+1;
     GetComputerName(@Buffer,length);
     Result := Buffer;
end;

procedure TfrmUpdate.GuncellemeBilgileri;
var
   sql : string;
begin
    datalar.ADO_SQL3.Close;
    datalar.ADO_SQL3.SQL.Clear;
    sql :=
    'update parametreler set SLVV = ''37.230.108.244'',SLXX = ''mavinokta'',SLYY = ''Guneysu53Rize'' where SLK = ''GA'' and SLB = ''00''';
    datalar.QueryExec(datalar.ADO_SQL3,sql);

end;

function TfrmUpdate.DownloadFile(SourceFile, DestFile: string): Boolean;
begin
   try
       Result := UrlDownloadToFile(nil, PChar(SourceFile), PChar(DestFile), 0, nil) = 0;
   except
       Result := False;
    end;
end;

procedure TfrmUpdate.Timer1Timer(Sender: TObject);
begin
  btnListe.Click;

end;

procedure TfrmUpdate.UpdateSQL;
var
   sql : string;
   i ,deneme : integer;
   //Btmap : TBitmap;

begin
    sql := 'select SLK,SLT,SLX from parametreler where SLK = ''GT'' and SLB = ''0000''';
    datalar.QuerySelect(datalar.ADO_SQL,sql);
    FSonGuncelleme := datalar.ADO_SQL.Fieldbyname('SLX').AsString;
    pnlBilgi.Caption := 'Son G�ncelleme : ' + FormattedTarih(datalar.ADO_SQL.FieldList[1].AsString) +
                        ' G�ncelleme ID :' + datalar.ADO_SQL.FieldList[2].AsString;


      if datalar.ADOConnection1.Connected = false
      then begin
               deneme := 1;
               while deneme < 3 do
               begin
                    try
                         txtinfo.Caption := 'Server Ba�lant�s� Yap�l�yor...('+IntToStr (deneme)+')';
                         Application.ProcessMessages;
                         SQL_Host_Baglan;
                         Application.ProcessMessages;
                         txtinfo.Caption := '';
                         deneme := 3;
                    except
                          txtinfo.Caption := '';
                          deneme := deneme + 1;
                    end;
               end;

               if DATALAR.ADOConnection1.Connected = false
               then begin
                         txtLOG.Lines.Add('Server Ba�lant� Hatas�');
                         exit;
                    end;
      end;

    sql := 'select * from UPDATE_CMD_OSGB where ID > ' + FSonGuncelleme + ' and Modul = ''O''' + ' and ID <= ' + FSonYayinlananGuncelleme +
           ' Order by ID ';
    datalar.QuerySelect(datalar.Ado_Guncellemeler,sql);

    if datalar.Ado_Guncellemeler.Eof
    then begin
       btnSend.Enabled := false;
       guncellemeIslemi := 'Yes';
    end else
    begin
      guncellemeIslemi := 'No';
      btnSend.Enabled := true;

    end;
    //Btmap := TBitmap.Create;x
    //global_img_list4.GetBitmap(0,Btmap);

    Grid_Temizle(gridDetay);

    for i := 1 to datalar.Ado_Guncellemeler.RecordCount do
    begin
      gridDetay.Cells[0,i] := datalar.Ado_Guncellemeler.Fieldbyname('TARIH').AsString;
      gridDetay.AddCheckBox(0,i,True,False);
      gridDetay.Cells[1,i] :=  datalar.Ado_Guncellemeler.Fieldbyname('ACIKLAMA').AsString; //memo1.Lines.Text;
      gridDetay.Cells[5,i] :=  datalar.Ado_Guncellemeler.Fieldbyname('SQL_CMD').AsString; //memo1.Lines.Text;
      if datalar.Ado_Guncellemeler.Fieldbyname('TIPI').AsString = 'M'
      then begin
          //      gridDetay.AddButton(1,i,23,23,'?',haRight,vaTop);
      end;
      gridDetay.Cells[2,i] := datalar.Ado_Guncellemeler.Fieldbyname('ID').AsString;
      gridDetay.Cells[25,i] := 'T';
      datalar.Ado_Guncellemeler.Next;
      gridDetay.AddRow;
    end;
    gridDetay.Row := 1;
//    Query2Grid3(gridDetay,,True,True,0,0);



    if CheckBox1.Checked then
      btnSendClick (btnSend);


end;



procedure TfrmUpdate.btnVazgecClick(Sender: TObject);
begin
  close;
end;

procedure TfrmUpdate.cxButton1Click(Sender: TObject);
begin
//  Hide;
  if guncellemeIslemi = 'No'
  then begin
    ShowMessageSkin('Guncelleme ��lemi Ger�ekle�tirilmedi ...','','','info');
 //   datalar.KillTask('OSGB.exe');
  end;
  close;
end;

procedure TfrmUpdate.cxButton3Click(Sender: TObject);
begin
     PopupMenu1.Popup(2 + Self.Left + cxButton3.Left+2, Self.Top + (pnlToolBar.Top+ cxButton3.Top+3) + 2*cxButton3.Height);

end;

procedure TfrmUpdate.btnSendClick(Sender: TObject);
var
  sql : string;
  i, iThermo, _hata : integer;
  xDonguBasarili : Boolean;
begin
  datalar.ADO_SQL3.Close;
  datalar.ADO_SQL3.SQL.Clear;

  _hata := 0;

  if datalar.Ado_Guncellemeler.RecordCount > 0
  then begin
   txtLOG.Lines.Add(datetimetostr(now) + ' G�ncelleme Server Sorgu Sonucu : G�ncelleme ��lemleri Ba�lat�l�yor..');
   datalar.ADOConnection2.BeginTrans;
  end
  else begin
   txtLOG.Lines.Add(datetimetostr(now) + ' G�ncelleme Server Sorgu Sonucu :  G�ncellenecek Paket Bulunamad�...');
   exit;
  end;
  try
    ShowThermo (iThermo, 'G�ncellemeler Uygulan�yor...', 0, gridDetay.RowCount - 1, 0, True);
    try
      for i := 1 to gridDetay.RowCount - 2 do
      begin
        if not UpdateThermo (i - 1, iThermo, IntToStr (i) + ' - ' + gridDetay.Cells[1,i]) then Exit;

        if gridDetay.Cells[25,i] = 'T'
        then begin
            try
               sql := gridDetay.Cells[5,i];//ADO_SQL1.Fieldbyname('SQL_CMD').AsString;
               datalar.QueryExec(datalar.ADO_SQL3,sql);
               sql := 'update Parametreler set SLT = ' + #39 + tarihal(date()) + #39 +
                      ',SLX = ' + datalar.Ado_Guncellemeler.fieldbyname('ID').AsString +
                      ' where SLK = ''GT'' and SLB =''0000''';
               datalar.QueryExec(datalar.ADO_SQL3,sql);

               gridDetay.Row := i;

               txtLog.Lines.Add('OK - ' + gridDetay.Cells[2,griddetay.row] + ' G�ncellemesi Yap�ld�');

               sql := 'insert into GuncellemeLog (Tarih,ACIKLAMA,ID,Sonuc) ' +
                      ' values (' + QuotedStr(gridDetay.Cells[0,i]) + ',' +
                                    QuotedStr(gridDetay.Cells[1,i]) + ',' +
                                    gridDetay.Cells[2,i] + ',' +
                                    QuotedStr('Ok') + ')';
               datalar.QueryExec(datalar.ADO_SQL3,sql);
            except on e : Exception do
              begin
                txtLOG.Lines.Add('HATA - ' + gridDetay.Cells[2,i] + 'G�ncellemesi Yap�lmad� : ' + e.Message);
                _hata := 1;
              end;
            end;
        end;
      end;
    finally
      FreeThermo (iThermo);
    end;
  finally
    if (datalar.Ado_Guncellemeler.RecordCount > 0) and (_hata = 1) then
    begin
      datalar.ADOConnection2.RollbackTrans;
      txtLOG.Lines.Add('G�ncellenemeyen Paket Var , T�m ��lemler Geri Al�nd�');
      guncellemeIslemi := 'No';
      ShowMessageSkin('Hata','','','info');
     (*
      if _Tip_ = 'Auto'
      then
       cxButton1.Click;  *)
    end else
    begin
      datalar.ADOConnection2.CommitTrans;
      txtLOG.Lines.Add('Database G�ncelleme Ba�ar�yla Yap�ld�');
      ShowMessageSkin('Database G�ncelleme Ba�ar�yla Yap�ld�','Veritaban�n�z G�ncel','G�ncelleme Bilgilerini Okuyup Kapat�n�z , Program�n�z Devam Edecektir... ','info');
      guncellemeIslemi := 'Yes';
      btnSend.Enabled := False;
    end;
  end;

end;

procedure TfrmUpdate.FormActivate(Sender: TObject);
begin
  if (FAuto) and (not FFirstActivated) Then
  Begin
    FFirstActivated := True;
    gridDetay.Enabled := false;
    CheckBox1.Checked := True;
    btnListe.Click;
  End;
  FFirstActivated := True;
end;

procedure TfrmUpdate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 // Action := cafree;
 datalar.ADOConnection1.Connected := False;

end;

procedure TfrmUpdate.FormCreate(Sender: TObject);
begin
  FFirstActivated := False;
end;

procedure TfrmUpdate.gridDetayGetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin

  if ARow = 1
  then begin
     AEditor := edRichEdit;
  end;

end;

procedure TfrmUpdate.btnListeClick(Sender: TObject);
begin
   guncellemeIslemi := 'No';
   GuncellemeBilgileri;
   http2.ConnectTimeout := 10000;
   try
     FSonYayinlananGuncelleme := HTTP2.Get('http://www.noktayazilim.net/OSGBupdate.txt');
   except
     txtLOG.Lines.Add('Ba�lant� Hatas� , �nternetinizi Kontrol Edip Tekrar Denayiniz...');
     //exit;
   end;

   UpdateSQL;
end;

procedure TfrmUpdate.K1Click(Sender: TObject);
begin
   Halt;
end;

procedure TfrmUpdate.FormShow(Sender: TObject);
begin

    datalar._database := Decode64(RegOku('OSGB_db_name'));

end;

procedure TfrmUpdate.gridDetayCheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
     if state = true
     then begin
          gridDetay.Cells[25,arow] := 'T';

     end;

     if state = false
     then begin
        gridDetay.Cells[25,arow] := 'F';

     end;

end;

procedure TfrmUpdate.gridDetayClick(Sender: TObject);
begin
   memo2.Text := gridDetay.Cells[5,gridDetay.Row];
end;

procedure TfrmUpdate.RaporDizaynlar1Click(Sender: TObject);
var
  r {,kaynak , hedef{} : integer;
  kod : string;
begin

    txtinfo.Caption := 'Ba�lanti Sa�lan�yor';
    Application.ProcessMessages;
    ADO_RaporlarKaynak.Open;
    ADO_RaporlarHedef.Open;

    //kaynak := ADO_RaporlarKaynak.RecordCount;
    //hedef := ADO_RaporlarHedef.RecordCount;

    for r := 1 to ADO_RaporlarKaynak.RecordCount do
    Begin
        kod := ADO_RaporlarKaynak.fieldbyname('raporKodu').AsString;
        if ADO_RaporlarHedef.Locate('raporKodu',kod,[]) = False
        Then Begin
              ADO_RaporlarHedef.Append;
              ADO_RaporlarHedef.FieldByName('raporKodu').AsString := ADO_RaporlarKaynak.FieldByName('raporKodu').AsString;
              ADO_RaporlarHedef.FieldByName('raporAdi').AsString := ADO_RaporlarKaynak.FieldByName('raporAdi').AsString;
              ADO_RaporlarHedef.FieldByName('rapor').Value := ADO_RaporlarKaynak.FieldByName('rapor').Value;
              ADO_RaporlarHedef.Post;
        End;
        ADO_RaporlarKaynak.Next;
    End;

    ShowMessageSkin('Transfer Tamamland�','','','info');

end;

end.

