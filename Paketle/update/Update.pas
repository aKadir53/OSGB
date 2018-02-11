unit Update;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sPanel, StdCtrls, Buttons,  ExtCtrls, DB, ADODB,URLMon, ShellApi,
  DBTables, Grids, BaseGrid,  ComCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,kadir,
  sGauge , iniFiles , registry, ImgList, JvProgressBar, JvXPProgressBar,
  DBCtrls, Menus, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPC, AdvGrid, dxSkinsCore, dxSkinMcSkin,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, AdvObj, cxButtons, dxSkinsForm, Gauges,
  cxContainer, cxEdit, cxGroupBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, SMTray;



type
  TfrmUpdate = class(TForm)
    pnlToolBar: TPanel;
    pnlTitle: TPanel;
    pnlOnay: TPanel;
    txtinfo: TLabel;
    ADO_SQL: TADOQuery;
    DataSource1: TDataSource;
    ADO_SQL1: TADOQuery;
    HTTP1: TIdHTTP;
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
    dxSkinController1: TdxSkinController;
    btnListe: TcxButton;
    btnSend: TcxButton;
    sBitBtn1: TcxButton;
    cxButton1: TcxButton;
    pb: TGauge;
    pnlBilgi: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    DataSource2: TDataSource;
    gridDetay: TAdvStringGrid;
    Memo1: TMemo;
    wsdlList: TListBox;
    Memo2: TMemo;
    cxButton2: TcxButton;
    txtTip: TComboBox;
    Label2: TLabel;
    txtDosya: TEdit;
    txtUrl: TEdit;
    Label1: TLabel;
    txtLOG: TMemo;
    Timer1: TTimer;
    cxTabSheet4: TcxTabSheet;
    SMTrayIcon1: TSMTrayIcon;
    PopupMenu2: TPopupMenu;
    K1: TMenuItem;
    CheckBox1: TCheckBox;
    procedure UpdateSQL;
    procedure btnVazgecClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridDetayGetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    Procedure TMemoFieldToTMemo;
    procedure btnListeClick(Sender: TObject);
    function DownloadFile(SourceFile, DestFile: string): Boolean;
    procedure HTTP1Status(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: String);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GuncellemeBilgileri;
    procedure ExeAl;
    procedure SnNetAl;
    procedure RegServerYaz;
    function  GetCompName: string;
    procedure WSDLAl;
    procedure gridDetayCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure baglan;
    function alanbilgiSQL(_table : string) : string;
    procedure SadeceExeAl1Click(Sender: TObject);
    procedure WSDLAL1Click(Sender: TObject);
    procedure RaporDizaynlar1Click(Sender: TObject);
    procedure SalkNetGnderim1Click(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure gridDetayClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure K1Click(Sender: TObject);
    procedure SMTrayIcon1DblClick(Sender: TObject);
    procedure HTTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure HTTP1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUpdate: TfrmUpdate;
  dosyaboyutu , _sonGuncelleme , filename : string;
  dosya ,dosya1: TFileStream;
  _button : integer;
  _baglanti : boolean;
  snonay : integer;


implementation
uses data_model1  , Math;
{$R *.dfm}


//Procedure TMemoToTMemoField;
//begin
//   TMemoField.Assign( TMemo.Lines );
//end;
(*
procedure gy_DownloadFile_to_file(const Url: string;File1,File2: String; Obj:TObject);
var
   hdr:string;
   NetHandle: HINTERNET;
   UrlHandle: HINTERNET;
   Buffer: array[0..1024] of Char;
   BytesRead,NumWritten: dWord;
   ToF: file;
begin

  form1.NMHTTP1.Head(URL);
  hdr:=form1.NMHTTP1.Header;
  hdr:=copy(hdr,pos('Content-Length:',hdr)+15,Length(hdr));
  hdr:=copy(hdr,1,pos(#13,hdr));
//form1.ShowMessage(Trim(hdr));
  form1.pb.Max:=strtoint(Trim(hdr));
  Toplam:=0;
  NetHandle := InternetOpen('Delphi 5.x', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);

  if Assigned(NetHandle) then
  begin
    UrlHandle := InternetOpenUrl(NetHandle, PChar(Url), nil, 0, INTERNET_FLAG_RELOAD, 0);
      if Assigned(UrlHandle) then
      { UrlHandle valid? Proceed with download }
      begin
      FillChar(Buffer, SizeOf(Buffer), 0);
       AssignFile(ToF, file1);
       Rewrite(ToF, 1);        { Record size = 1 }
      repeat
        FillChar(Buffer, SizeOf(Buffer), 0);
        InternetReadFile(UrlHandle, @Buffer, SizeOf(Buffer), BytesRead);
        Toplam := Toplam + BytesRead;
        if assigned(Obj) and ( Obj is TLabel) then
          TLabel(obj).caption := File2+'  '+Trim(hdr)+'/'+ FloatToStr(Toplam)+' Byte indi :)' ;
          form1.pb.Position :=toplam;
        form1.edittimefark.text:=timetostr(time-btime);
        BlockWrite(ToF, Buffer, BytesRead,NumWritten);
        Application.ProcessMessages;
      until BytesRead = 0;
      InternetCloseHandle(UrlHandle);
      CloseFile(ToF);
    end
    else
      { UrlHandle is not valid. Raise an exception. }
      raise Exception.CreateFmt('Cannot open URL %s', [Url]);

    InternetCloseHandle(NetHandle);
   if assigned(Obj) and ( Obj is TLabel) then
          TLabel(obj).caption := 'Tamamlandý';
  end
  else
    { NetHandle is not valid. Raise an exception }
    raise Exception.Create('Unable to initialize Wininet');
end;
*)

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

procedure TfrmUpdate.baglan;
begin

    //datalar.ADOConnection1.Connected := false;
   // datalar.ADOConnection2.Connected := false;

    datalar._Tip := copy(txtTip.Text,1,1);

    if datalar._Tip = 'D'
    then datalar._database := 'DIALIZ'
    else
    if datalar._Tip = 'K'
    then datalar._database := 'KLINIK'
    else
    if datalar._Tip = 'F'
    then datalar._database := 'FTR'
    else
    if datalar._Tip = 'R'
    then datalar._database := 'RO'
    else
    if datalar._Tip = 'H'
    then datalar._database := 'medivizyondb';



    if datalar.Kaynak.Connected = False
    Then begin
        Application.ProcessMessages;
        txtinfo.Caption := 'Server Baðlantýsý Yapýlýyor...';
       try
        datalar.Kaynak.ConnectionString := serverbaglan(txtDosya.Text,'mavi','');      x
        datalar.Kaynak.Connected := true;
        _baglanti := true;
        txtinfo.Caption := 'Baðlandý';
        //KaynakServer.Color := clGreen;
       except
          //KaynakServer.Color := clRed;
       end;

    end;

    if datalar.Hedef.Connected = False
    Then begin
        Application.ProcessMessages;
        txtinfo.Caption := 'Server Baðlantýsý Yapýlýyor...';
       try
    //    datalar.Hedef.ConnectionString := serverbaglan(HedefServer.Text,'KLINIK','');
        datalar.Hedef.Connected := true;
        _baglanti := true;
        txtinfo.Caption := 'Baðlandý';
      //  HedefServer.Color := clGreen;
       except
      //  HedefServer.Color := clRed;

       end;

    end;



  (*
    Application.ProcessMessages;
    txtinfo.Caption := 'Local Baðlantý Saðlanýyor';
    datalar.ADOConnection2.ConnectionString := serverismi(datalar._database);
    datalar.ADOConnection2.Connected := True;

    *)


end;


procedure TfrmUpdate.WSDLAl;
var
   x : integer;
begin
      Application.ProcessMessages;
      txtinfo.Caption := 'WSDL Güncelleme Yapýlýyor...';
      //Panel1.Visible := true;

      try

         CreateDir('C:\NoktaV3');

         for x := 1 to wsdlList.Count do
         begin
               filename := 'C:\NoktaV3\' + wsdlList.Items[x-1];
               dosya := TFileStream.Create(filename,fmCreate);x
               HTTP1.Get('http://www.noktayazilim.net/' + wsdlList.Items[x-1],TStream(dosya));
               //ShowMessageSkin(wsdlList.Items[x-1],'','','info');
         end;

         txtinfo.Caption := '';
         //Panel1.Visible := false;


      except on e : Exception do
           begin
                ShowMessageSkin('Exe Güncellenemedi',e.Message,'','info');
                txtinfo.Caption := '';
           //     Panel1.Visible := false;
           end;
      end;

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

procedure TfrmUpdate.RegServerYaz;
var
   xx,yy : TRegistry;
   servername , INS , _s_: string;
   a : array of string;
begin
     xx := Tregistry.Create;x
     xx.OpenKey('Software\NOKTA\NOKTA',True);
     _s_ := xx.ReadString('servername');

     servername := _s_;

     if xx.ReadString('DONEM') = ''
     Then
     xx.WriteString('DONEM','DIALIZ   - KOÞUYOLU');

     xx.WriteString('CS','SQL');
     xx.WriteString('servername',servername);
     xx.WriteString('DONEM1','DIALIZ1 - ATA ÜMRANÝYE');
     xx.WriteString('DONEM2','DIALIZ2 - ALBATROS');
     xx.WriteString('CokluFirma','0');
     xx.CloseKey;
end;


procedure TfrmUpdate.SMTrayIcon1DblClick(Sender: TObject);
begin
  show;
end;

procedure TfrmUpdate.SnNetAl;
var
  sql : string;
  ado : TADOQuery;
  DosyaIsmi : string;
begin

             (*
             datalar.Kaynak.ConnectionString := serverbaglan(txtDosya.Text,'mavi','');
             Application.ProcessMessages;
             datalar.Kaynak.Connected := True;
               *)




             DATALAR.Login;


             ado := TADOQuery.Create(nil);x
             ado.Connection := datalar.Kaynak;

             sql := 'select snonay from musteri where kod = ' + QuotedStr(datalar._Kurumkod);
             datalar.QuerySelect(ado,sql);

             snonay := ado.Fields[0].AsInteger;

             ado.Free;


             if snonay = 1
             then begin
                   //Panel1.Visible := true;
                   DosyaIsmi := 'Snet.exe';
                   CreateDir('C:\NoktaV3\SN');
                   filename := 'C:\NoktaV3\SN\' + DosyaIsmi;
                   dosya := TFileStream.Create(filename,fmCreate);x
                   HTTP1.Get('http://www.noktayazilim.net/'+ DosyaIsmi ,TStream(dosya));
                   txtinfo.Caption := '';
                   //panel1.Visible := false;
                  // halt;
                 //  winexec(pchar('C:\NoktaV3\SN\Snet.exe'),SW_SHOW);


             end;




end;


procedure TfrmUpdate.ExeAl;
var
   DosyaIsmi : string;
begin
      Application.ProcessMessages;
      txtinfo.Caption := 'Exe Güncelleme Yapýlýyor...';
      //Panel1.Visible := true;

      if datalar._Tip = 'D' then DosyaIsmi := 'Diyaliz.exe';
      if datalar._Tip = 'K' then DosyaIsmi := 'Klinik.exe';
      if datalar._Tip = 'F' then DosyaIsmi := 'RO.exe';
      if datalar._Tip = 'R' then DosyaIsmi := 'RO.exe';

      try

         if _button = 1
         then begin
                   DosyaIsmi := 'GuncellemeYap.exe';
                   CreateDir('C:\NoktaV3');
                   filename := 'C:\NoktaV3\' + DosyaIsmi;
                   dosya := TFileStream.Create(filename,fmCreate);x
                   HTTP1.Get('http://www.noktayazilim.net/'+ DosyaIsmi ,TStream(dosya));
                   txtinfo.Caption := '';
                   //Panel1.Visible := false;

         end else
         begin

               CreateDir('C:\NoktaV3');
               filename := 'C:\NoktaV3\' + DosyaIsmi;
               dosya := TFileStream.Create(filename,fmCreate);x
               HTTP1.Get('http://www.noktayazilim.net/'+ DosyaIsmi ,TStream(dosya));
               ShowMessageSkin('Güncelleme Baþarýyla Yapýldý','Programýnýzýn Çalýþabilmesi Ýçin Guncelleme Modülünüz Kapatýlacak','Tekrar Çalýþtýrýnýz','info');
               KillTask('GuncellemeYap.exe');  x
               txtinfo.Caption := '';
              // Panel1.Visible := false;
         end;

      except on e : Exception do
           begin
                ShowMessageSkin('Exe Güncellenemedi',e.Message,'','info');
                txtinfo.Caption := '';
                //Panel1.Visible := false;
           end;
      end;

end;

procedure TfrmUpdate.GuncellemeBilgileri;
var
   sql : string;
begin

   if datalar.Hedef.Connected = True
   Then datalar.Hedef.Connected := False;


   if  datalar.Hedef.Connected = false
   then begin

             txtinfo.Caption := 'Local Baðlantý Saðlanýyor';
             datalar.Hedef.ConnectionString := serverismi(datalar._database);  x
             //inputbox('Database','Database Adý',datalar._database));
             Application.ProcessMessages;
             datalar.Hedef.Connected := True;


   end;




    datalar.ADO_SQL3.Close;
    datalar.ADO_SQL3.SQL.Clear;
    sql :=
    'if not EXISTS(select * from parametreler where SLK = ''GT'' and SLB = ''0000'')' +
    'insert into parametreler (SLK,SLB,SLT,SLX) values (''GT'',''0000'','''',0)';
    datalar.QueryExec(datalar.ADO_SQL3,sql);

    datalar.ADO_SQL3.Close;
    datalar.ADO_SQL3.SQL.Clear;
    sql :=
    'if not EXISTS(select * from parametreler where SLK = ''GT'' and SLB = ''0002'')' +
    'insert into parametreler (SLK,SLB,SLT,SLX) values (''GT'',''0002'',''http://www.noktayazilim.net/update.txt'',0)';
    datalar.QueryExec(datalar.ADO_SQL3,sql);

    datalar.ADO_SQL3.Close;
    datalar.ADO_SQL3.SQL.Clear;
    sql :=
    'if not EXISTS(select * from parametreler where SLK = ''GT'' and SLB = ''0003'')' +
    'insert into parametreler (SLK,SLB,SLT,SLX) values (''GT'',''0003'',''81.215.203.196'',0)';
    datalar.QueryExec(datalar.ADO_SQL3,sql);


 //   txtUrl.Text := Httpserver;
 //   txtDosya.Text := Ipserver;


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

Procedure TfrmUpdate.TMemoFieldToTMemo;
VAR
   aBlobStream : TBlobStream;
Begin
//   aBlobStream := TBlobStream.Create(tblobfield(TQuery.fieldbyname('SQL')), bmRead);
//   Memo1.Lines.LoadFromStream( aBlobStream );
 //  aBlobStream.Free;
end;

procedure TfrmUpdate.UpdateSQL;
var
   sql : string;
   i ,deneme : integer;
   aBlobStream : TBlobStream;
   Btmap : TBitmap;

begin
    sql := 'select SLK,SLT,SLX from parametreler where SLK = ''GT'' and SLB = ''0000''';
    datalar.QuerySelect(datalar.ADO_SQL,sql);
    _sonGuncelleme := datalar.ADO_SQL.Fieldbyname('SLX').AsString;
    pnlBilgi.Caption := 'Son Güncelleme : ' + datalar.ADO_SQL.FieldList[1].AsString +
                        ' Güncelleme ID :' + datalar.ADO_SQL.FieldList[2].AsString;


//    TQuery.Active := false;
//    sql := 'select * from ' + #39 + 'C:\NoktaDiyaliz\SQLBAKIM\UPDATE\Update.db' + #39;
//    TQuery.SQL.Add(sql);
//    TQuery.Active := true;

      datalar.Kaynak.Connected := false;
      if datalar.Kaynak.Connected = false
      then begin
               deneme := 1;
               while deneme < 3 do
               begin
                    try
                         txtinfo.Caption := 'Server Baðlantýsý Yapýlýyor...';
                         Application.ProcessMessages;
                         datalar.Kaynak.ConnectionString := serverbaglan(txtDosya.Text,'mavi','');  x
                         datalar.Kaynak.Connected := true;
                         Application.ProcessMessages;
                         txtinfo.Caption := '';
                         deneme := 3;
                    except
                         // ShowMessageSkin('Server Baðlantý Hatasý','','','info');
                          txtinfo.Caption := '';
                          deneme := deneme + 1;
                    end;
               end;

               if DATALAR.Kaynak.Connected = false
               then begin
                         txtLOG.Lines.Add('Server Baðlantý Hatasý');
                         exit;
                    end;
      end;

    ADO_SQL1.Close;
//    sql := 'select * from UpdateDb where Tarih > ' + #39 + _sonGuncelleme + #39 +
//           ' order by Tarih';
//    datalar.QuerySelect(ADO_SQL1,sql);
    ADO_SQL1.Prepared := true;
    ADO_SQL1.Parameters[0].Value :=  _sonGuncelleme;
    ADO_SQL1.Parameters[1].Value :=  datalar._Tip;
    ADO_SQL1.Open;

    if ADO_SQL1.Eof
    then begin
       btnSend.Enabled := false;
    end else btnSend.Enabled := true;

    Btmap := TBitmap.Create;x
    global_img_list4.GetBitmap(0,Btmap);

    Grid_Temizle(gridDetay);

    for i := 1 to ADO_SQL1.RecordCount do
    begin
      gridDetay.Cells[0,i] := ADO_SQL1.Fieldbyname('TARIH').AsString;
      gridDetay.AddCheckBox(0,i,True,False);
      gridDetay.Cells[1,i] :=  ADO_SQL1.Fieldbyname('ACIKLAMA').AsString; //memo1.Lines.Text;
      gridDetay.Cells[5,i] :=  ADO_SQL1.Fieldbyname('SQL_CMD').AsString; //memo1.Lines.Text;
      if ADO_SQL1.Fieldbyname('TIPI').AsString = 'M'
      then begin
          //      gridDetay.AddButton(1,i,23,23,'?',haRight,vaTop);
      end;
      gridDetay.Cells[2,i] := ADO_SQL1.Fieldbyname('ID').AsString;
      gridDetay.Cells[25,i] := 'T';
      ADO_SQL1.Next;
      gridDetay.AddRow;
    end;
    gridDetay.Row := 1;
//    Query2Grid3(gridDetay,,True,True,0,0);

    if CheckBox1.Checked
    then
    btnSend.Click;

end;



procedure TfrmUpdate.btnVazgecClick(Sender: TObject);
begin
  close;
end;

procedure TfrmUpdate.cxButton1Click(Sender: TObject);
begin
  Hide;
 // close;
end;

procedure TfrmUpdate.cxButton2Click(Sender: TObject);
var
   sql ,s : string;
   xx : TRegistry;
begin

        xx := Tregistry.Create;x
        xx.OpenKey('Software\NOKTA\NOKTA',True);
        xx.WriteString('Tip',txtTip.Text);

        datalar.ADO_SQL3.close;
        datalar.ADO_SQL3.SQL.Clear;
        sql := 'update Parametreler set SLT = ' + #39 + txtUrl.Text + #39 +
               ' where SLK = ''GT'' and SLB = ''0002''';
        datalar.QueryExec(datalar.ADO_SQL3,sql);

        datalar.ADO_SQL3.close;
        datalar.ADO_SQL3.SQL.Clear;
        sql := 'update Parametreler set SLT = ' + #39 + txtDosya.Text + #39 + ',SLVV = ' + #39 + copy(txtTip.Text,1,1) + #39 +
               ' where SLK = ''GT'' and SLB = ''0003''';
        datalar.QueryExec(datalar.ADO_SQL3,sql);


end;

procedure TfrmUpdate.btnSendClick(Sender: TObject);
var
  sql : string;
  i , _hata : integer;
begin
  RegServerYaz;
//  Then Exit;

  datalar.ADO_SQL3.Close;
  datalar.ADO_SQL3.SQL.Clear;

  datalar.Hedef.BeginTrans;x
  _hata := 0;

  if ADO_SQL1.RecordCount > 0
  then
   txtLOG.Lines.Add(datetimetostr(now) + ' Güncelleme Server Sorgu Sonucu : Güncelleme Ýþlemleri Baþlatýlýyor..')
  else begin
   txtLOG.Lines.Add(datetimetostr(now) + ' Güncelleme Server Sorgu Sonucu :  Güncellenecek Paket Bulunamadý...');
   exit;
  end;

  for i := 1 to gridDetay.RowCount - 2 do
  begin
     if gridDetay.Cells[25,i] = 'T'
     then begin
         try
            sql := gridDetay.Cells[5,i];//ADO_SQL1.Fieldbyname('SQL_CMD').AsString;
            datalar.QueryExec(datalar.ADO_SQL3,sql);
            sql := 'update Parametreler set SLT = ' + #39 + tarihal(date()) + #39 +
                   ',SLX = ' + ADO_SQL1.fieldbyname('ID').AsString +
                   ' where SLK = ''GT'' and SLB =''0000''';
            datalar.QueryExec(datalar.ADO_SQL3,sql);

            gridDetay.Row := i;

            txtLog.Lines.Add('OK - ' + gridDetay.Cells[2,griddetay.row] + ' Güncellemesi Yapýldý');

            sql := 'insert into GuncellemeLog (Tarih,ACIKLAMA,ID,Sonuc) ' +
                   ' values (' + QuotedStr(gridDetay.Cells[0,i]) + ',' +
                                 QuotedStr(gridDetay.Cells[1,i]) + ',' +
                                 gridDetay.Cells[2,i] + ',' +
                                 QuotedStr('Ok') + ')';
            datalar.QueryExec(datalar.ADO_SQL3,sql);
         except on e : Exception do
           begin
             txtLOG.Lines.Add('HATA - ' + gridDetay.Cells[2,griddetay.row] + 'Güncellemesi Yapýlmadý : ' + e.Message);
             _hata := 1;
           end;
         end;
     end;
  end;

  if (ADO_SQL1.RecordCount > 0) and (_hata = 1) then
  begin
    txtLOG.Lines.Add('Güncellenemeyen Paket Var , Tüm Ýþlemler Geri Alýndý');
    datalar.Hedef.RollbackTrans;x
  end else
  begin
    datalar.Hedef.CommitTrans;x
    txtLOG.Lines.Add('Database Güncelleme Baþarýyla Yapýldý');
        //  ExeAl;
  end;

end;

procedure TfrmUpdate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
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
var
   sql : string;
   ado : TADOQuery;
begin
   GuncellemeBilgileri;
   http2.ConnectTimeout := 10000;
   try
     http2.Get('http://www.noktayazilim.net/update.txt');
   except
     txtLOG.Lines.Add('Baðlantý Hatasý , Ýnternetinizi Kontrol Edip Tekrar Denayiniz...');
     //exit;
   end;

   if  datalar.Hedef.Connected = false
   then begin
             txtinfo.Caption := 'Local Baðlantý Saðlanýyor';
             datalar.Hedef.ConnectionString := serverismi(datalar._database);   x
             Application.ProcessMessages;
             datalar.Hedef.Connected := True;
   end;
   UpdateSQL;
end;

procedure TfrmUpdate.HTTP1Status(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: String);
begin
  //If AStatusText = 'Connected' then
 // txtDurum.Caption := 'Baðlý'
//  else
  //txtDurum.Caption := AStatusText;  //'Baðlý Deðil';


end;

procedure TfrmUpdate.HTTP1Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
  pb.Progress := AWorkCount;
  //txtPosition.Caption := inttostr(AWorkCount) + '/' + dosyaboyutu;
  Application.ProcessMessages;
end;

procedure TfrmUpdate.HTTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
  dosyaboyutu := inttostr(AWorkCountMax);
  pb.MaxValue := AWorkCountMax;
  pb.Progress := 0;
//  pb.Max := AWorkCountMax;
  if AWorkCountMax > 0 then
  Application.ProcessMessages;
end;

procedure TfrmUpdate.K1Click(Sender: TObject);
begin
   Halt;x
end;

procedure TfrmUpdate.SpeedButton1Click(Sender: TObject);
var
   hedef , kaynak : string;

begin
   hedef := txtDosya.Text;
   kaynak := txtUrl.Text;

   dosya := TFileStream.Create('c:\noktadiyaliz\xx.rar',fmCreate);x

   http2.URL.Host := 'http://www.noktayazilim.net';
   http2.URL.Username := 'mavinokta';
   http2.URL.Password := '5212389';
   http2.Connected;
   HTTP2.Put(txtUrl.Text+'\httpdocs',TStream(dosya));

end;

procedure TfrmUpdate.sBitBtn2Click(Sender: TObject);
begin
          //Panel1.Visible := true;

          dosya := TFileStream.Create('C:\NoktaDiyaliz/muh.exe',fmCreate);x
          HTTP1.Get('http://www.noktayazilim.net/muh.exe',TStream(dosya));

          dosya.Free;

end;

procedure TfrmUpdate.FormShow(Sender: TObject);
var
   xx : TRegistry;
   s : string;
begin

    xx := Tregistry.Create;x
    xx.RootKey := HKEY_CURRENT_USER;
    xx.OpenKey('Software\NOKTA\NOKTA',True);
    s := xx.ReadString('Tip');

    txtTip.Text := s;

    datalar._Tip := copy(s,1,1);

    if datalar._Tip = 'D'
    then datalar._database := 'DIALIZ'
    else
    if datalar._Tip = 'K'
    then datalar._database := 'KLINIK'
    else
    if datalar._Tip = 'F'
    then datalar._database := 'FTR'
    else
    if datalar._Tip = 'R'
    then datalar._database := 'RO'
    else
    if datalar._Tip = 'H'
    then datalar._database := 'medivizyondb';


    //datalar._database := 'medivizyondb';


(*
    if  datalar.Hedef.Connected = false
   then begin

             txtinfo.Caption := 'Local Baðlantý Saðlanýyor';
             datalar.Hedef.ConnectionString := serverismi(txtDosya.Text,datalar._database);
             Application.ProcessMessages;
             datalar.Hedef.Connected := True;


   end;
  *)


    try
 //    txtUrl.Text := Httpserver;
 //    txtDosya.Text := Ipserver;
    except

    end;

end;

procedure TfrmUpdate.sBitBtn1Click(Sender: TObject);
begin

     PopupMenu1.Popup(2 + Self.Left + sBitBtn1.Left+2, Self.Top + (pnlToolBar.Top+ sBitBtn1.Top+3) + 2*sBitBtn1.Height);

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

procedure TfrmUpdate.SadeceExeAl1Click(Sender: TObject);
var
 s : string;
 h : HWND;
 l : word;
begin
    KillTask('Diyaliz.exe');     x
    Sleep(2000);
  //  _button := TsBitBtn(Sender).Tag;
     ExeAl;

end;

procedure TfrmUpdate.WSDLAL1Click(Sender: TObject);
begin
   WSDLAl;
end;

procedure TfrmUpdate.RaporDizaynlar1Click(Sender: TObject);
var
  r ,kaynak , hedef : integer;
  kod : string;
begin

    txtinfo.Caption := 'Baðlanti Saðlanýyor';
    Application.ProcessMessages;
    ADO_RaporlarKaynak.Open;
    ADO_RaporlarHedef.Open;

    kaynak := ADO_RaporlarKaynak.RecordCount;
    hedef := ADO_RaporlarHedef.RecordCount;

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

    ShowMessageSkin('Transfer Tamamlandý','','','info');






end;

procedure TfrmUpdate.SalkNetGnderim1Click(Sender: TObject);
begin
  SnNetAl;
end;

end.
