unit login;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, ExtCtrls, Buttons,ADODB,REGISTRY, ComCtrls,
  activex, jpeg,PngImage, cxGraphics, cxControls,
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
    aTimer: TTimer;
    NoktaImage: TcxImage;
    btnSifreUnuttum: TcxButton;
    Label2: TLabel;

    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    function IsSQLServerRunning(const server,database,user,password:string): Boolean;
    procedure regyazLastLogin;
    procedure FormShow(Sender: TObject);
    procedure btnDetayClick(Sender: TObject);
    procedure cxButtonEditKadir1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnBaglanClick(Sender: TObject);
    procedure LoginSayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure txtSubePropertiesChange(Sender: TObject);
    procedure LoginSayfalarChange(Sender: TObject);
    procedure aTimerTimer(Sender: TObject);
    procedure btnSifreUnuttumClick(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses AnaUnit, data_modul, ClipBrd, NThermo;

{$R *.DFM}

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

procedure TfrmLogin.LoginSayfalarChange(Sender: TObject);
begin
  if LoginSayfalar.ActivePage = SayfaLogin then
    Edit2.SetFocus
   else
  if LoginSayfalar.ActivePage = SayfaConTest then
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

function TfrmLogin.IsSQLServerRunning(const server,database,user,password:string): Boolean;
begin
   result := false;
   try
    CoInitialize(nil);  //uses ActiveX
      try
         result := true;
      except
         result := false;
      end;

   finally
         CoUninitialize;
   end;

end;


procedure TfrmLogin.FormCreate(Sender: TObject);
begin
   LoginSayfalar.ActivePageIndex := 0;
   Edit1.Text := RegOku ('LastLogin');
   FormatSettings.DecimalSeparator := '.';
   FormatSettings.ThousandSeparator := ',';
end;

procedure TfrmLogin.FormActivate(Sender: TObject);
var
  Arect:Trect;
begin
  INVALIDATERECT(HANDLE,@ARect,False);
end;

procedure TfrmLogin.Image1Click(Sender: TObject);
var
  aSL1 : TStringList;
  sTmp , Table ,where : String;
  bLoginLog : Boolean;
  bOtomatikGiris : Boolean;
  iThermo : Integer;
  g : TBitmap;
  Dataset : TDataset;
begin
  bloginLog := False;
  bOtomatikGiris := False;
  try
    if IsNull (Edit2.Text) then
    begin
      aSL1 := TStringList.Create;
      try
        aSL1.Text := Clipboard.AsText;
        if not IsNull (aSL1.Text)  then
        begin
          sTmp := aSL1 [0];
          if pos (#9, sTmp) > 0 then
          begin
            txtOsgbKodu.EditingText := Copy (sTmp, 1, pos (#9, sTmp) - 1);
            Edit2.EditingText := Copy (sTmp, pos (#9, sTmp) + 1, Length (sTmp));
            aSL1.Delete (0);
            Clipboard.AsText := aSL1.Text;
            btnBaglanClick(btnBaglan);
            bOtomatikGiris := True;
            if not IsNull (aSL1.Text) then
              WinExec(PAnsiChar (AnsiString (ParamStr (0) + ' /L:'+IntToStr (Left) + '/T:'+IntToStr (Top))),SW_SHOW);
            Left := aSL1.Count * 3;
            Top := aSL1.Count * 3;
          end;
        end;
      finally
        aSL1.Free;
      end;
    end;
    try
      try
        Datalar.ADOConnection2.Connected := false;
        Datalar.Baglan(txtDataBase.EditingText, txtServerName.Text, '', txtServerUserName.Text, txtServerPassword.Text);

        datalar.ProgTarih := FormattedTarih(tarihal(date()));
        datalar.AktifSirket := txtDonemler.Text;

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

      //þifre deðiþtirme gerekliyse...
      if not bOtomatikGiris and Login.FieldByName ('SifreDegismeli').AsBoolean then
      begin
        ShowMessageSkin('Þifrenizi Deðiþtirmeniz Gerekmektedir...', '', '', 'info');
        if not SifreDegistir (True) then Exit;
      end;

      regyazLastLogin;
      bloginLog := True;
      datalar.usernameAdi := login.FieldByName('ADISOYADI').AsString;
      datalar.doktorKodu := login.FieldByName('doktor').AsString;
      if datalar.doktorKodu <> ''
      then
       datalar.doktorTC := doktorTC(datalar.doktorKodu);
      datalar.doktorAdi := doktorAdi(datalar.doktorKodu);
      datalar.sirketKodu := login.FieldByName('SirketKodu').AsString;
      datalar.IGU := login.FieldByName('IGU').AsString;
      datalar.DSPers := login.FieldByName('DigerSaglikPers').AsString;
      datalar.UserGroup := login.FieldByName('Grup').AsString;
      datalar.UserGroupName := login.FieldByName('GrupTanimi').AsString;
      RegYaz('OSGB_Userdescription', datalar.usernameAdi + ' (' + datalar.UserGroupName + ')');
      dxStatusBar1.Panels [1].Text := datalar.usernameAdi + ' (' + datalar.UserGroupName + ')';
      dxStatusBar1.Panels [1].Width := Length (dxStatusBar1.Panels [1].Text) * 8;
      datalar._database := txtDataBase.Text;

  (*
      if datalar.UserGroup = '1' then
      begin
          datalar.Foto := TJpegImage.Create;
          g := TBitmap.Create;
          try
            g := TBitmap.Create;
            datalar.FotoImage.GetBitmap(2,g);
            datalar.Foto.Assign(g);
          finally
           g.free;
          end;
      end;

      if (datalar.IGU <> '') or (datalar.doktorKodu <> '')
      then begin
         if datalar.IGU <> '' then Table := 'IGU' else Table := 'DoktorlarT';
         if datalar.IGU <> '' then where := datalar.IGU else where := datalar.doktorKodu;

        // datalar.Foto := TPngImage.Create;
         datalar.Foto := TJpegImage.Create;
         try
           try
              Dataset := datalar.QuerySelect('select tanimi,Foto from ' + Table + ' where kod = ' + QuotedStr(where));
              datalar.userTanimi := Dataset.FieldByName('tanimi').AsString;
              if not Dataset.FieldByName('foto').IsNull
              then
               datalar.Foto.Assign(Dataset.FieldByName('foto'))
              else
               datalar.Foto := nil;
           except
            datalar.Foto := nil;
           end;
         finally
         end;

         if datalar.Foto = nil
         then begin
          try
           //datalar.Foto := TPngImage.Create;
           datalar.Foto := TJpegImage.Create;
           g := TBitmap.Create;

           if datalar.IGU <> '' then datalar.FotoImage.GetBitmap(0,g);
           if datalar.doktorKodu <> '' then datalar.FotoImage.GetBitmap(1,g);
            datalar.Foto.Assign(g);
          finally
           g.free;
          end;
         end;

      end;
       *)
       SetAnaFormFoto;

      AnaForm.dxSkinController1.SkinName := login.FieldByName('userSkin').AsString;
      FormatSettings.DateSeparator := '.';
      LoginSayfalar.ActivePageIndex := 2;

      Application.ProcessMessages;
      ShowThermo (iThermo, 'Giriþ Ýþlemleri Yapýlýyor', 0, 8, 0);
      try
        if not UpdateThermo (0, iThermo, 'Ýç Ýþlemler Yükleniyor') then Exit;
        datalar.login;
        if not UpdateThermo (1, iThermo, 'Kullaným Yollarý Yükleniyor') then Exit;
        datalar.ReceteKullanimYollari.active := True;
        if not UpdateThermo (2, iThermo, 'Doktor Tanýmlarý Yükleniyor') then Exit;
        datalar.Ado_Doktorlar.Active := True;
        if not UpdateThermo (3, iThermo, 'Ýþ Güvenlik Uzmaný Tanýmlarý Yükleniyor') then Exit;
        datalar.Ado_IGU.Active := True;
        if not UpdateThermo (4, iThermo, 'Diðer Saðlýk Personeli Tanýmlarý Yükleniyor') then Exit;
        datalar.Ado_DSP.Active := True;
        if not UpdateThermo (5, iThermo, 'Tehlike Sýnýfý Tanýmlarý Yükleniyor') then Exit;
        datalar.ADO_TehlikeSiniflari.Active := True;
        if not UpdateThermo (6, iThermo, 'Giriþi Zorunlu alan tanýmlarý yükleniyor') then Exit;
        datalar.KontrolZorunlu.Active := True;

        WanIp(datalar.WanIPURL);
        datalar.LoginInOut.Kullanici := datalar.username;
        datalar.LoginInOut.Login := lgnIn;
        if not UpdateThermo (7, iThermo, 'Log kaydý yazýlýyor') then Exit;
        datalar.LoginInOut.Execute;
      finally
        FreeThermo (iThermo);
      end;
    except on e:exception do
       begin
         showmessageSkin('Hata : ' + e.Message,'','','info');
       end;
    end;
  finally
    if not bloginLog then
    begin
      ModalResult := mrNone;
      Abort;
    end;

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

procedure TfrmLogin.aTimerTimer(Sender: TObject);
var
  aStringList : TStringList;
  sParams: String;
  i : Integer;
  bCode, bUser, bPass : Boolean;
begin
  TTimer (Sender).Enabled := False;
  bCode := False;
  bUser := False;
  bPass := False;
  aStringList := TStringList.Create;
  try
    sParams := '';
    for i := 1 to ParamCount do
      sParams := sParams + ParamStr(i) + ' ';
    Split('/', sParams, aStringList);
    for i := 0 to aStringList.Count - 1 do
    begin
      sParams := aStringList [i];
      if SameText (Copy (sParams, 1, 2), 'L:') then
      begin
        Delete (sParams, 1, 2);
        Left := StrToIntDef (sParams, 0);
      end;
      if SameText (Copy (sParams, 1, 2), 'T:') then
      begin
        Delete (sParams, 1, 2);
        Top := StrToIntDef (sParams, 0);
      end;
      if SameText (Copy (sParams, 1, 2), 'C:') then
      begin
        Delete (sParams, 1, 2);
        txtOsgbKodu.Text := Trim (sParams);
        bCode := True;
      end;
      if SameText (Copy (sParams, 1, 2), 'U:') then
      begin
        Delete (sParams, 1, 2);
        Edit1.Text := Trim (sParams);
        bUser := True;
      end;
      if SameText (Copy (sParams, 1, 2), 'P:') then
      begin
        Delete (sParams, 1, 2);
        Edit2.Text := Trim (sParams);
        bPass := True;
      end;
    end;
  finally
    aStringList.Free;
  end;
  if bUser and bPass and bCode then
  begin
    btnBaglanClick(btnBaglan);
  end;
end;

procedure TfrmLogin.btnBaglanClick(Sender: TObject);
var
 db, OSGBDesc : string;
 iYazilimGelistirici : Integer;
begin
 if txtOsgbKodu.EditingText <> ''
 Then begin
   try
     if datalar.MasterBaglan(txtOsgbKodu.EditingValue,db, OSGBDesc, iYazilimGelistirici, txtServerName.Text, txtServerUserName.Text, txtServerPassword.Text)
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
         //  Regyaz('OSGB_YazilimGelistirici',IntToStr (iYazilimGelistirici));
           if Datalar.YazilimFirma = 'UYUM'
           then begin
            //UYUMImage.Visible := True;
            NoktaImage.Visible := False;
           end
           Else
           Begin
             //UYUMImage.Visible := False;
             NoktaImage.Visible := True;
           End;
      //     Image1abx.Visible := iYazilimGelistirici = 1;
      //     cxImagebcd.Visible := iYazilimGelistirici = 2;
      //     cxImage1.Visible := (iYazilimGelistirici <> 2) and (iYazilimGelistirici <> 1);

           btnBaglan.Caption := 'Baðlandý';
        //   DATALAR._YazilimGelistirici := iYazilimGelistirici;
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

procedure TfrmLogin.btnSifreUnuttumClick(Sender: TObject);
var
  sql,email,pass : string;
  ado : TADOQuery;
begin
     ado := TADOQuery.Create(nil);
     ado.Connection := datalar.ADOConnection2;
     try
       datalar.SMTPSunucu := WebErisimBilgi('EML','01');
       datalar.SMTPUserName := WebErisimBilgi('EML','02');
       datalar.SMTPPassword := WebErisimBilgi('EML','03');
       email := '';
       sql := 'select password,email from Users where kullanici = ' + QuotedStr(edit1.text);
       datalar.QuerySelect(ado,sql);
       email := ado.FieldByName('email').AsString;
       pass := ado.FieldByName('password').AsString;
       if email <> ''
       then
       if mailGonder (email , 'Þifreniz Bilgisi' , 'Þifreniz : ' + pass)
          = '0000'
        then ShowMessageSkin('Þifreniz Kayýtlý Mail adresinize Gönderildi','','','info')
        else ShowMessageSkin('Gönderilemedi','','','info');
     finally
      ado.free;
     end;
end;

procedure TfrmLogin.btnVazgecClick(Sender: TObject);
begin
 datalar.KillTaskw('OSGB.exe');
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
                txtSube.Filter := ' SirketKod = ' + QuotedStr(txtDonemler.Text) + sube + ' and (Pasif = 0 or Pasif is Null)';

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
var
  iYazGel : Integer;
begin
 //  Height := dxLayoutControl1Group2. btnGiris.Top + btnGiris.Height + 10;

   txtServerName.EditValue := Decode64(regOku('OSGB_servername'));
   txtServerUserName.EditValue := Decode64(regOku('OSGB_serverUserName'));
   txtServerPassword.EditValue := Decode64(regOku('OSGB_serverPassWord'));
   if Trim (txtServerName.EditValue) = '' then
   begin
     txtServerName.Text := '213.159.30.6';
     if ShowMessageSkin (
       'Ýþyeri Hekimi ve Ýþ Güvenliði yazýlýmý'#13#10+
       'Demo sürümüne girmek üzeresiniz'#13#10#13#10+
       'Kayýtlý kullanýcý iseniz [Hayýr] seçip firma kodunuzu girerek devam ediniz', '', '', 'conf') = mrYes then
     begin
       txtOsgbKodu.Text := '1001';
       Edit1.Text := 'admin';
     end
     else begin
       LoginSayfalar.ActivePageIndex := 1;
       txtOsgbKodu.SetFocus;
     end;

   end;
   if Trim (txtServerName.EditValue) = '213.159.30.6' then
   begin
     if IsNull (txtServerUserName.EditValue) then txtServerUserName.EditValue := 'Nokta';
     if IsNull (txtServerPassword.EditValue) then txtServerPassword.EditValue := '5353';
   end;

   txtDataBase.EditValue := Decode64(regOku('OSGB_db_name'));
   Labelx.Caption := regOku('OSGB_description');
 //  iYazGel := StrToIntDef (regOku('OSGB_YazilimGelistirici'), -1);

   if pos('UYUM',paramStr(0)) > 0  then Datalar.YazilimFirma := 'UYUM'
   Else Datalar.YazilimFirma := 'Nokta';
   DATALAR._YazilimGelistirici := iYazGel;
   if Datalar.YazilimFirma = 'UYUM'
   then begin
    //UYUMImage.Visible := True;
    NoktaImage.Visible := False;
   end
   Else
   Begin
     //UYUMImage.Visible := False;
     NoktaImage.Visible := True;
   End;
  // Image1abx.Visible := iYazGel = 1;
 //  cxImagebcd.Visible := iYazGel = 2;
 //  cxImage1.Visible := (iYazGel <> 2) and (iYazGel <> 1);
   dxStatusBar1.Panels [1].Text := regOku('OSGB_Userdescription');
   dxStatusBar1.Panels [1].Width := Length (dxStatusBar1.Panels [1].Text) * 8;
   if LoginSayfalar.ActivePageIndex = 0 then Edit2.SetFocus;
end;

end.

