unit login;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, ExtCtrls, Buttons,ADODB,REGISTRY, ComCtrls,
  activex, jpeg, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxButtonEdit,
  KadirLabel,KadirType, Kadir,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Menus, cxButtons, dxLayoutContainer,
  dxLayoutLookAndFeels, dxLayoutControl, cxPC, dxSkinsdxStatusBarPainter,
  dxStatusBar, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxMaskEdit, cxTextEdit,
  dxSkinBlack, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, cxGroupBox, acPNG, cxImage,
  cxDropDownEdit, cxImageComboBox, cxLabel;

type
  TfrmLogin = class(TForm)
    DataSource1: TDataSource;
    Image1: TImage;
    Image2: TImage;
    login: TADOTable;
    DONEMBUL: TADOQuery;
    ADOConnection2: TADOConnection;


    txtip: TLabel;
    btnDetay: TSpeedButton;
    ListeAc1: TListeAc;
    txtSirket: TcxButtonEditKadir;
    txtDonemler: TcxTextEdit;
    LoginSayfalar: TcxPageControl;
    SayfaLogin: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    btnVazgec: TcxButton;
    btnGiris: TcxButton;
    dxStatusBar1: TdxStatusBar;
    SayfaConTest: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item2: TdxLayoutItem;
    btnBaglan: TcxButtonKadir;
    dxLayoutControl2Item1: TdxLayoutItem;
    txtDataBase: TcxTextEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    txtServerName: TcxTextEditKadir;
    txtOsgbKodu: TcxTextEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    cxImage1: TcxImage;
    Label1: TLabel;
    ListeAc2: TListeAc;
    SUBEBUL: TADOQuery;
    txtSube: TcxImageComboKadir;
    dxLayoutControl1Item4: TdxLayoutItem;
    pnlBottom: TcxGroupBox;
    Image3: TImage;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl2Item5: TdxLayoutItem;
    Labelx: TcxLabel;
    dxLayoutControl2Item6: TdxLayoutItem;
    txtServerUserName: TcxTextEditKadir;
    dxLayoutControl2Item7: TdxLayoutItem;
    txtServerPassword: TcxTextEditKadir;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Group3: TdxLayoutGroup;

    PROCEDURE YUVARLAK(WDN:HWND;ALAN:TRECT);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
    function IsSQLServerRunning(const server,database,user,password:string): Boolean;
    procedure LisansAliniyorCaption;
    procedure regyazLastLogin;
    function SUTKODU : string;
    procedure FormShow(Sender: TObject);
    procedure btnDetayClick(Sender: TObject);
    procedure cxButtonEditKadir1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnBaglanClick(Sender: TObject);
    procedure LoginSayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure txtSubePropertiesChange(Sender: TObject);
    procedure LoginSayfalarChange(Sender: TObject);

    //procedure Thread1;
    //procedure Thread2;
  private
   RGN:HRGN;
    { Private declarations }
  public
    log : boolean;
    bt:integer;
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;
  second : integer = 0;
  hThr1: THandle;
  hThr2: THandle;
  TempConnection: TADOConnection;

implementation

uses AnaUnit, data_modul;

{$R *.DFM}



function TfrmLogin.SUTKODU : string;
begin
 //   ado := TadoQuery.Create(self);
  //  ado.Connection := datalar.ADOConnection2;

  //  sql := 'select SLXX from parametreler where SLB = ''SUT'' and SLK = ''33''';
 //   datalar.QuerySelect(ado,sql);
 //   datalar.DigerIslemTalebi.sutKodu := ado.fieldbyname('SLXX').AsString;
 //   ado.Close;
 //   ado.Free;


end;

procedure TfrmLogin.txtSubePropertiesChange(Sender: TObject);
begin
    if DONEMBUL.FieldByName('doktor').AsString <> ''
    Then begin
      if not isNull(txtSube.EditText)
      then begin
        datalar.AktifSube := txtSube.EditValue;
        datalar.AktifSubeAdi := txtSube.EditingText;
      end
      else
      datalar.AktifSube := txtSube.getItemString;
    end;
end;

procedure TfrmLogin.regyazLastLogin;
begin
  RegYaz ('LastLogin',Edit1.text);
end;

procedure TfrmLogin.LisansAliniyorCaption;
begin
     Application.ProcessMessages;
     frmLogin.txtip.Caption := 'Lisans Alýnýyor..';
     sleep(100);
     Application.ProcessMessages;
     frmLogin.txtip.Caption := 'Lisans Alýnýyor....';
     sleep(100);
     Application.ProcessMessages;
     frmLogin.txtip.Caption := 'Lisans Alýnýyor......';
     sleep(100);
     Application.ProcessMessages;
     frmLogin.txtip.Caption := 'Lisans Alýnýyor........';
     sleep(100);
     Application.ProcessMessages;
     frmLogin.txtip.Caption := 'Lisans Alýnýyor..........';
end;

procedure TfrmLogin.LoginSayfalarChange(Sender: TObject);
begin
  if LoginSayfalar.ActivePage = SayfaLogin then
    Edit2.SetFocus
   else
    txtOsgbKodu.SetFocus;
end;

procedure TfrmLogin.LoginSayfalarPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  if NewPage = SayfaLogin then
  begin
    datalar.TempConnection.Close;

  end;

end;

procedure Thread1;
begin
 //  datalar.bt := 0;
//   frmLogin.txtip.Caption := 'Lisans Alýnýyor....';
 //  if  frmLogin.IsSQLServerRunning('91.151.81.101','mavi','mavinokta','12345')
 //  then begin
 //     datalar.bt := 1;
 //  End
//   else
//      datalar.bt := 2;
end;

procedure Thread2;
begin

//   TfrmLogin.Shape1.Brush.Color := clWhite;
 //  for i := 1 to 100 do
//   begin
//      frmLogin.ProgressBar1.Position := i;
 //     sleep(50);
 //  end;
//   if datalar.bt = 1
//   then begin
 //       frmLogin.txtip.Caption := 'Baglanti Saglandi.' ;
//        Shape1.Brush.Color := clGreen;
 //  end
 //  else
 //  begin
   //   frmLogin.txtip.Caption := 'Baglanti Saglanamadi.....';
//      Shape1.Brush.Color := clRed;
  // end;

end;

function TfrmLogin.IsSQLServerRunning(const server,database,user,password:string): Boolean;
//var
// TempConnection: TADOConnection;
 //uses ADODB  TempConnectionString: string;
begin
   result := false;
   try
    CoInitialize(nil);  //uses ActiveX
      try
//        TempConnection := TADOConnection.Create(nil);
       //  datalar.TempConnection.ConnectionString := 'Provider=SQLOLEDB.1;Password=''12345'';Persist Security Info=False;User ID=mavinokta;Initial Catalog=mavi;Data Source=91.151.81.101';
      //   'Provider=SQLOLEDB.1;Persist Security Info=False;User ID=%s;Password=%s;Initial Catalog=%s;Data Source=%s';
     //    datalar.TempConnection.CommandTimeOut := 10;
    //     datalar.TempConnection.ConnectionTimeOut := 10;
    //     datalar.TempConnection.ConnectionString := Format(datalar.TempConnection.ConnectionString, [user, password, database, server]);
    //     datalar.TempConnection.KeepConnection := false;
    //     datalar.TempConnection.LoginPrompt := false;
      //   datalar.TempConnection.Connected := true;
         //datalar.TempConnection.Open;
         result := true;
      except
         result := false;
      end;

   finally
         CoUninitialize;
   end;

end;


PROCEDURE TfrmLogin.YUVARLAK(WDN:HWND;ALAN:TRECT);
BEGIN
    RGN := CREATEROUNDRECTRGN(ALAN.LEFT,ALAN.TOP,ALAN.RIGHT,ALAN.BOTTOM,100,100);
    SETWINDOWRGN(WDN,RGN,TRUE);
END;


procedure TfrmLogin.FormCreate(Sender: TObject);
begin
   LoginSayfalar.ActivePageIndex := 0;
   Edit1.Text := RegOku ('LastLogin');
   FormatSettings.DecimalSeparator := '.';
   FormatSettings.ThousandSeparator := ',';
end;

procedure TfrmLogin.FormActivate(Sender: TObject);
VAR
   Arect:Trect;
begin
     INVALIDATERECT(HANDLE,@ARect,False);
end;

procedure TfrmLogin.Image1Click(Sender: TObject);
begin
  try
    try
      Datalar.ADOConnection2.Connected := false;
      Datalar.Baglan(txtDataBase.EditingText, txtServerName.Text, '', txtServerUserName.Text, txtServerPassword.Text);

      (*
      if txtDonemler.Text = ''
      then begin
        ShowMessageSkin('Þirket Seçmeden Devam Edemezsiniz','','','info');
        exit;
      end;

      if IsNull (txtSirket.Text) then
      begin
        ShowMessageSkin('Þirket Seçmeden Devam Edemezsiniz','','','info');
        exit;
      end;
       *)
      datalar.ProgTarih := FormattedTarih(tarihal(date()));
      datalar.AktifSirket := txtDonemler.Text;

      (*
       if InternetVarmi
       Then Begin
            // internet serverdan Tarihi alýyor
            try

                txtip.Caption := 'Lisans Okunuyor...';

                  datalar.ProgTarih := FormattedTarih(tarihal(date()));

                 try
                  ado := TADOQuery.Create(nil);
                  ado.Connection := datalar.ADOConnection2;
                  sql := 'exec sp_dbcmptlevel DIALIZ,90';
                  datalar.QueryExec(ado,sql);
                  ado.Free;
                 except
                 end;


            except on e : Exception do
              begin
                ShowMessageSkin('Hata : ' + e.Message,'','','info');
                datalar.ProgTarih := '';
              end;

            end;
           // internet serverdan Tarihi alýyor
      // HGBal;
      *
       End
       Else
       datalar.ProgTarih := '';    *)
    except on e : Exception do
     begin
       ShowMessageSkin('Hata : ' + e.Message,'','','info');
     end;
    end;

    login.Active := true;

    if not login.Locate('Kullanici',edit1.Text,[]) then
    begin
      ShowMessageSkin('Kullanýcý Adý Hatalý','','','info');
      Exit;
    end;
    if IsNull (trim(login.FieldValues['password'])) then
    begin
      ShowMessageSkin('Kullanýcý Adý Kullanýma Kapalý','','','info');
      Exit;
    end;
    if trim(login.FieldValues['password']) <> edit2.Text then
    begin
      ShowMessageSkin('Þifre Hatalý','','','info');
      Exit;
    end;

    datalar.username := edit1.Text;
    DATALAR.usersifre := edit2.Text;
    regyazLastLogin;
    log := true;
    datalar.loginLog := True;
    //SUTKODU;
    datalar.doktorKodu := login.FieldByName('doktor').AsString;
    datalar.sirketKodu := login.FieldByName('SirketKodu').AsString;
    datalar.IGU := login.FieldByName('IGU').AsString;
    datalar.UserGroup := login.FieldByName('Grup').AsString;

    AnaForm.dxSkinController1.SkinName := login.FieldByName('userSkin').AsString;
    FormatSettings.DateSeparator := '.';
    LoginSayfalar.ActivePageIndex := 2;
    Application.ProcessMessages;
    datalar.login;
    datalar.ReceteKullanimYollari.active := True;
    datalar.Ado_Doktorlar.Active := True;
    datalar.Ado_IGU.Active := True;
    datalar.ADO_TehlikeSiniflari.Active := True;
    datalar.KontrolZorunlu.Active := True;

    WanIp(datalar.WanIPURL);
    datalar.LoginInOut.Kullanici := datalar.username;
    datalar.LoginInOut.Login := lgnIn;
    datalar.LoginInOut.Execute;

    Hide;
    (*
       if LocalIP(IPAdres) then
       txtip.Caption := IpAdres
       else
       txtip.Caption := '';
      *)

    close;
    exit;

  except on e:exception do
     begin
       showmessageSkin('Hata : ' + e.Message,'','','info');
     end;
  end;
end;

procedure TfrmLogin.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13
    then begin
             edit2.setfocus;
    end;

end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FormatSettings.DecimalSeparator := '.';
  FormatSettings.ThousandSeparator := ',';
  action := cafree;

end;

procedure TfrmLogin.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    ReleaseCapture;
    frmLogin.perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure TfrmLogin.sBitBtn1Click(Sender: TObject);
begin
     Image1.OnClick(Image1);
end;

procedure TfrmLogin.sBitBtn2Click(Sender: TObject);
begin
     Image2.OnClick(Image2);
end;

procedure TfrmLogin.btnBaglanClick(Sender: TObject);
var
 db, OSGBDesc : string;
begin
 if txtOsgbKodu.EditingText <> ''
 Then begin
   try
     if datalar.MasterBaglan(txtOsgbKodu.EditingValue,db, OSGBDesc, txtServerName.Text, txtServerUserName.Text, txtServerPassword.Text)
     Then begin
         Regyaz('OSGB_servername',Encode64(txtServerName.Text));
         Regyaz('OSGB_serverUserName',Encode64(txtServerUserName.Text));
         Regyaz('OSGB_serverPassword',Encode64(txtServerPassword.Text));
         if datalar.Baglan(db,txtServerName.Text, '',txtServerUserName.Text, txtServerPassword.Text)
         then begin
           Regyaz('OSGB_db_name',Encode64(db));
           txtDataBase.EditValue := db;
           Regyaz('OSGB_description',OSGBDesc);
           Labelx.Caption := OSGBDesc;
           btnBaglan.Caption := 'Baðlandý';
         end;
     end;
   except
     dxLayoutControl2Group2.Visible := True;
     raise;
   end;
 end
 else
  ShowMessageSkin('Firma Kodu Boþ Olmamalýdýr','','','info');
end;

procedure TfrmLogin.btnDetayClick(Sender: TObject);
begin
  txtDonemler.Visible := true;
end;

procedure TfrmLogin.btnVazgecClick(Sender: TObject);
begin
 DATALAR.KillTask('OSGB.exe');
 log := false;
 halt;
end;

procedure TfrmLogin.cxButtonEditKadir1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  List : ArrayListeSecimler;
  sql,sube : string;
begin
  if Datalar.Baglan ('', '', Edit1.Text, '', '')
  Then Begin
     sql := 'select doktor,sirketKodu from Users where kullanici = ' + QuotedStr(edit1.text);
     datalar.QuerySelect(DONEMBUL,sql);


    case TcxButtonEditKadir(Sender).Tag of
      0 : begin
              if DONEMBUL.FieldByName('doktor').AsString <> ''
              then begin
                ListeAc1.Where := 'doktor = ' + QuotedStr(DONEMBUL.FieldByName('doktor').AsString);
                sube := ' and subeDoktor = ' + QuotedStr(DONEMBUL.FieldByName('doktor').AsString);
              end
              else
              if DONEMBUL.FieldByName('sirketKodu').AsString <> ''
               then begin
                ListeAc1.Where := 'SirketKod = ' + QuotedStr(DONEMBUL.FieldByName('sirketKodu').AsString);
                sube:= '';
               end
              else
                ListeAc1.Where := '';

                List := ListeAc1.ListeGetir;
                if High (List) < 0 then Exit;
                txtSirket.Text := list[0].kolon2;
                txtDonemler.Text := list[0].kolon1;
                datalar.AktifSirketAdi := txtSirket.Text;
                datalar.AktifSirket := txtDonemler.Text;

                txtSube.Conn := Datalar.ADOConnection2;
                txtSube.TableName := 'SIRKET_SUBE_TNM';
                txtSube.ValueField := 'subeKod';
                txtSube.DisplayField := 'subeTanim';
                txtSube.Filter := ' SirketKod = ' + QuotedStr(txtDonemler.Text) + sube;

                datalar.AktifSube := txtSube.getItemString;
          end;
      1 : begin

          end;

    end;
  End
  Else
   ShowMessageSkin('Server Baðlantýsý Saðlanamadý ','','','info');

end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin

 //  Height := dxLayoutControl1Group2. btnGiris.Top + btnGiris.Height + 10;

   txtServerName.EditValue := Decode64(regOku('OSGB_servername'));
   txtServerUserName.EditValue := Decode64(regOku('OSGB_serverUserName'));
   txtServerPassword.EditValue := Decode64(regOku('OSGB_serverPassWord'));
   if Trim (txtServerName.EditValue) = '' then
   begin
     txtServerName.Text := '213.159.30.6';
     txtOsgbKodu.Text := '1001';
     Edit1.Text := 'demo';
     {if RegOku('OSGB_servername') = ''
     Then
      LoginSayfalar.ActivePageIndex := 1
     Else
      LoginSayfalar.ActivePageIndex := 0;{}

   end;
   if Trim (txtServerName.EditValue) = '213.159.30.6' then
   begin
     if IsNull (txtServerUserName.EditValue) then txtServerUserName.EditValue := 'Nokta';
     if IsNull (txtServerPassword.EditValue) then txtServerPassword.EditValue := '5353';
   end;

   txtDataBase.EditValue := Decode64(regOku('OSGB_db_name'));
   Labelx.Caption := regOku('OSGB_description');
   Edit2.SetFocus;
end;

end.
