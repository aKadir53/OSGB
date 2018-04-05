unit Tnm_UserSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,
  GirisUnit,Data_Modul, cxDropDownEdit, cxImageComboBox, cxStyles,kadir,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxSkinsCore, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters,
  cxPCdxBarPopupMenu, cxRadioGroup, cxPC, cxListBox, Vcl.ExtCtrls, Vcl.Buttons,
  cxLabel;



type
  TfrmUsers = class(TGirisForm)
    UserSettings: TADOTable;
    UserSettings_DataSource: TDataSource;
    cxKullaniciAdi: TcxButtonEditKadir;
    User_Menu_Settings_DataSource: TDataSource;
    User_Menu_Settings: TADOTable;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridUserSet: TcxGridDBTableView;
    cxGridUserSetModul: TcxGridDBColumn;
    cxGridUserSetIslem: TcxGridDBColumn;
    cxGridUserSetIzin: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridMenuSet: TcxGridDBTableView;
    cxGridMenuSetCOLUMN1: TcxGridDBColumn;
    cxGridMenuSetMainMenu: TcxGridDBColumn;
    cxGridMenuSetKAYITID: TcxGridDBColumn;
    cxGridMenuSetCOLUMN2: TcxGridDBColumn;
    cxGridMenuSetColumn3: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    PopupMenu1: TPopupMenu;
    MenucxYeni: TMenuItem;
    MenucxKaydet: TMenuItem;
    MenucxIptal: TMenuItem;
    N1: TMenuItem;
    Kapat1: TMenuItem;
    txtSifreTekrar: TcxTextEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    SpeedButton1: TSpeedButton;
    userSkin: TcxComboBox;
    UserGroup_Menu_Settings_DataSource: TDataSource;
    UserGroupSettings_DataSource: TDataSource;
    pnlUserGrup: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGridUserGrup: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridUserGrupKODU: TcxGridDBColumn;
    cxGridUserGrupADI: TcxGridDBColumn;
    UserGroup: TADOTable;
    UserGroup_DataSource: TDataSource;
    txtYeniGrup: TcxTextEditKadir;
    cxLabel1: TcxLabel;
    btnGrupEkle: TcxButtonKadir;
    UserGroup_Menu_Settings: TADOQuery;
    UserGroupSettings: TADOQuery;
    cxGridUserGrupSifreDegistirmePeryod: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);

    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure UserSettingsBeforePost(DataSet: TDataSet);
    procedure cxTextEditBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxKaydetClick(Sender: TObject);
    function IslemveMenuGorunumSetEkle(Tip : userGroup): boolean;
    procedure formlarClick(Sender: TObject);
    procedure userSkinPropertiesChange(Sender: TObject);
    procedure SayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure cxGridUserGrupFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure UserGroupAfterPost(DataSet: TDataSet);
    procedure btnGrupEkleClick(Sender: TObject);
    procedure UserGroupBeforeDelete(DataSet: TDataSet);
    procedure PropertiesEditValueChanged(Sender: TObject);
    procedure UserGroupDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure UserGroupAfterDelete(DataSet: TDataSet);

  private
    { Private declarations }
  protected
    procedure YetkiAyarButtonsClick(Sender: TObject);
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmUsers: TfrmUsers;


implementation
uses StrUtils, AnaUnit, TransUtils;
{$R *.dfm}
const _TableName_ = 'Users';
      formGenislik = 780;
      formYukseklik = 500;
      dr = 1;
      ig = 2;
      sirket = 3;
      dsp = 4;


procedure TfrmUsers.PropertiesEditValueChanged(Sender: TObject);
begin
   case TcxImageComboKadir(Sender).tag of
     dr : begin
            if TcxImageComboKadir(FindComponent('doktor')).EditingText <> ''
            Then begin
             TcxImageComboKadir(FindComponent('SirketKodu')).EditValue := null;
             TcxImageComboKadir(FindComponent('IGU')).EditValue := null;
             TcxImageComboKadir(FindComponent('DigerSaglikPers')).EditValue := null;
            end;
          end;
     ig : begin
            if TcxImageComboKadir(FindComponent('IGU')).EditingText <> ''
            Then begin
             TcxImageComboKadir(FindComponent('SirketKodu')).EditValue := null;
             TcxImageComboKadir(FindComponent('doktor')).EditValue := null;
             TcxImageComboKadir(FindComponent('DigerSaglikPers')).EditValue := null;
            end;
          end;
     dsp : begin
            if TcxImageComboKadir(FindComponent('DigerSaglikPers')).EditingText <> ''
            Then begin
             TcxImageComboKadir(FindComponent('SirketKodu')).EditValue := null;
             TcxImageComboKadir(FindComponent('doktor')).EditValue := null;
             TcxImageComboKadir(FindComponent('IGU')).EditValue := null;
            end;
          end;
     sirket : begin
            if TcxImageComboKadir(FindComponent('SirketKodu')).EditingText <> ''
            Then begin
             TcxImageComboKadir(FindComponent('doktor')).EditValue := null;
             TcxImageComboKadir(FindComponent('IGU')).EditValue := null;
             TcxImageComboKadir(FindComponent('DigerSaglikPers')).EditValue := null;
            end;
          end;

   end;


end;

function TfrmUsers.Init(Sender: TObject) : Boolean;
begin
  inherited;
  cxPanel.Visible := false;

  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
  indexFieldName := 'kullanici';
  TableName := _TableName_;

  cxTab.Tabs[0].ImageIndex := 22;
  cxTab.Tabs[0].Caption := 'Kullanýcý Ýþlemleri';
  Menu := PopupMenu1;
  Result := True;
end;


procedure TfrmUsers.SayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
  var AllowChange: Boolean);
begin
  if NewPage.PageIndex = 0
  then begin
      cxGridUserSet.DataController.DataSource := UserSettings_DataSource;
      cxGridMenuSet.DataController.DataSource := User_Menu_Settings_DataSource;
  end
  else
  begin
      cxGridUserSet.DataController.DataSource := UserGroupSettings_DataSource;
      cxGridMenuSet.DataController.DataSource := UserGroup_Menu_Settings_DataSource;
  end;
end;

procedure TfrmUsers.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
    //ÜÖ 20180104 Artýk þifre gözükmediði için tekrarýný data yüklenince biz atamayla dolduruyoruz.
    TcxTextEdit (FindComponent ('txtSifreTekrar')).Text := TcxTextEditKadir (FindComponent ('password')).Text;


    IslemveMenuGorunumSetEkle(ugUser);

    UserSettings.Active := true;
    UserSettings.Filter := 'kullanici = ' + QuotedStr(TcxButtonEditKadir(sender).Text);

    User_Menu_Settings.Active := true;
    User_Menu_Settings .Filter := 'kullanici = ' + QuotedStr(TcxButtonEditKadir(sender).Text);
  end;
end;

procedure TfrmUsers.btnGrupEkleClick(Sender: TObject);
begin
  inherited;
  if txtYeniGrup.Text <> '' then
  begin
     UserGroup.Append;
     UserGroup.FieldByName('ADI').AsString := txtYeniGrup.EditingValue;
     UserGroup.Post;
  end;
end;

procedure TfrmUsers.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmUsers.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;



procedure TfrmUsers.cxGridUserGrupFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
 sql : string;
begin
  IslemveMenuGorunumSetEkle(ugGroup);
  sql := 'select * from UserGroupMenuSettings where kullanici = ' + QuotedStr(UserGroup.FieldByName('KODU').AsString);
  datalar.QuerySelect(UserGroup_Menu_Settings,sql);

  sql := 'select * from UserGroupSettings where kullanici = ' + QuotedStr(UserGroup.FieldByName('KODU').AsString);
  datalar.QuerySelect(UserGroupSettings,sql);



 // UserGroup_Menu_Settings.Filter := 'Kullanici = ' + QuotedStr(UserGroup.FieldByName('KODU').AsString);
 // UserGroupSettings.Filter := 'Kullanici = ' + QuotedStr(UserGroup.FieldByName('KODU').AsString);

end;

procedure TfrmUsers.cxTextEditBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//
end;

procedure TfrmUsers.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmUsers.FormCreate(Sender: TObject);
var
  List : TListeAc;
  Grup,ustUser,doktor,sirketler,IGU, DSPers : TcxImageComboKadir;
begin



  //Olustur(self,_TableName_,'User Ýþlemleri',22,'','','','kullanici');

  List := ListeAcCreate('Users','kullanici,ADISOYADI','Kullanýcý,Tanýmý','100,200','kullaniciList',
                        'Kullanýcýlar','',2,false);


  setDataStringB(self,'kullanici','Kullanici Adý',Kolon1,'',150,List,True,cxKullaniciAdi,'');
  setDataString(self,'ADISOYADI','Kullanýcý Tanýmý',Kolon1,'',250);
  setDataString(self,'password','Þifre',Kolon1,'pass',150);
  TcxTextEditKadir (FindComponent ('password')).Properties.EchoMode := eemPassword;
  TcxTextEditKadir (FindComponent ('password')).Properties.PasswordChar := '*';
  setDataStringKontrol(self,txtSifreTekrar, 'txtSifreTekrar','Þifre Tekrarý',Kolon1,'',150);
  TcxTextEdit (FindComponent ('txtSifreTekrar')).Properties.EchoMode := eemPassword;
  TcxTextEdit (FindComponent ('txtSifreTekrar')).Properties.PasswordChar := '*';
  setDataStringBLabel(self,'bosSatir1',kolon1,'',50);



  Grup := TcxImageComboKadir.Create(self);
  Grup.Conn := Datalar.ADOConnection2;
  Grup.TableName := 'UserGroups';
  Grup.ValueField := 'KODU';
  Grup.DisplayField := 'ADI';
  Grup.BosOlamaz := False;
  Grup.Filter := '';
  setDataStringKontrol(self,Grup,'Grup','Grup',kolon1,'',120);
  OrtakEventAta(Grup);


  sirketler := TcxImageComboKadir.Create(self);
  sirketler.Conn := Datalar.ADOConnection2;
  sirketler.Tag := sirket;
  sirketler.TableName := 'SIRKETLER_TNM';
  sirketler.ValueField := 'SirketKod';
  sirketler.DisplayField := 'Tanimi';
  sirketler.BosOlamaz := False;
  sirketler.Filter := '';
  setDataStringKontrol(self,sirketler,'SirketKodu','Þirket',kolon1,'',120);
  OrtakEventAta(sirketler);
  sirketler.Properties.OnChange := PropertiesEditValueChanged;

  ustUser := TcxImageComboKadir.Create(self);
  ustUser.Conn := Datalar.ADOConnection2;
  ustUser.TableName := 'Users';
  ustUser.ValueField := 'kullanici';
  ustUser.DisplayField := 'ADISOYADI';
  ustUser.BosOlamaz := False;
  ustUser.Filter := '';
  setDataStringKontrol(self,ustUser,'ustUser','Üst Kullanýcý',kolon1,'',120);
  OrtakEventAta(ustUser);

  doktor := TcxImageComboKadir.Create(self);
  doktor.Conn := Datalar.ADOConnection2;
  doktor.tag := dr;
  doktor.TableName := 'DoktorlarT';
  doktor.ValueField := 'KOD';
  doktor.DisplayField := 'Tanimi';
  doktor.BosOlamaz := False;
  doktor.Filter := '';
  setDataStringKontrol(self,doktor,'doktor','Doktor',kolon1,'',120);
  OrtakEventAta(doktor);
  doktor.Properties.OnChange := PropertiesEditValueChanged;

  IGU := TcxImageComboKadir.Create(self);
  IGU.Conn := Datalar.ADOConnection2;
  IGU.Tag := ig;
  IGU.TableName := 'IGU';
  IGU.ValueField := 'KOD';
  IGU.DisplayField := 'Tanimi';
  IGU.BosOlamaz := False;
  IGU.Filter := '';
  setDataStringKontrol(self,IGU,'IGU','Ýþ Güvenlik Uzman',kolon1,'',120);
  OrtakEventAta(IGU);
  IGU.Properties.OnChange := PropertiesEditValueChanged;

  DSPers := TcxImageComboKadir.Create(self);
  DSPers.Conn := Datalar.ADOConnection2;
  DSPers.Tag := dsp;
  DSPers.TableName := 'DigerSaglikPersonel';
  DSPers.ValueField := 'KOD';
  DSPers.DisplayField := 'Tanimi';
  DSPers.BosOlamaz := False;
  DSPers.Filter := '';
  setDataStringKontrol(self,DSPers,'DigerSaglikPers','Diðer Saðlýk Personeli',kolon1,'',120);
  OrtakEventAta(DSPers);
  DSPers.Properties.OnChange := PropertiesEditValueChanged;

  setDataString(self,'email','e-mail',Kolon1,'',250);



  setDataStringKontrol(self,userSkin, 'userSkin','Kullanýcý Skin',Kolon1,'',150);
  pnlUserGrup.Parent := sayfa2;
  pnlUserGrup.Align := alClient;
//  setDataStringKontrol(self,pnlUserGrup,'pnlUserGrup','',sayfa2_kolon1,'',350,350);

  addButton(self,nil,'btnYetkileriSil','','Yetkileri Sil',Kolon1,'gr1',120,YetkiAyarButtonsClick);
  addButton(self,nil,'btnYetkileriGruptanAl','','Yetkileri Gruptan Getir',Kolon1,'gr1',120,YetkiAyarButtonsClick);
  addButton(self,nil,'btnSifreOlustur','','Þifreyi e-mail Gönder ',Kolon1,'pass',120,cxKaydetClick,9);

  UserSettings.Filtered := True;
  User_Menu_Settings.Filtered := True;
  UserGroup.Active := True;

  SayfaCaption('Kullanýcý Ýþlemleri','Grup Ýþlemleri','','','');

  Disabled(self,True);

 end;





procedure TfrmUsers.UserGroupAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CommitTrans(DATALAR.ADOConnection2);
end;

procedure TfrmUsers.UserGroupAfterPost(DataSet: TDataSet);
begin
  IslemveMenuGorunumSetEkle(ugGroup);
end;

procedure TfrmUsers.UserGroupBeforeDelete(DataSet: TDataSet);
var
 sql : string;
 ado : TADOQuery;
begin
  inherited;
  BeginTrans(DATALAR.ADOConnection2);
  try
    ado := nil;
    sql := 'delete from UserGroupSettings where kullanici = ' + QuotedStr(UserGroup.FieldByName('KODU').AsString);
    datalar.QueryExec(ado,sql);
    sql := 'delete from UserGroupMenuSettings where kullanici = ' + QuotedStr(UserGroup.FieldByName('KODU').AsString);
    datalar.QueryExec(ado,sql);
  except
    RollBackTrans(DATALAR.ADOConnection2);
    raise;
  end;
end;

procedure TfrmUsers.UserGroupDeleteError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  inherited;
  RollBackTrans(DATALAR.ADOConnection2);
end;

procedure TfrmUsers.UserSettingsBeforePost(DataSet: TDataSet);
begin
  inherited;
 // NormalDeger.FieldByName('testKodu').AsString :=
 // TcxButtonEditKadir(FindComponent('butKodu')).Text;
end;


procedure TfrmUsers.userSkinPropertiesChange(Sender: TObject);
begin
  inherited;
  AnaForm.dxSkinController1.SkinName := userSkin.EditingValue;
end;

procedure TfrmUsers.YetkiAyarButtonsClick(Sender: TObject);
var
  iTip : Integer;
  bBasari : Boolean;
  xQuery : TADOQuery;
  sKullanici : String;
begin
  iTip := -1;
  sKullanici := TcxButtonEditKadir (FindComponent('Kullanici')).Text;
  if IsNull (sKullanici) then
  begin
    ShowMessageSkin('Kullanýcý seçmeden bu iþlem kullanýlamaz', '', '', 'info');
    Exit;
  end;
  if TcxButtonKadir(sender).ButtonName = 'btnYetkileriSil' then
  begin
    if ShowMessageSkin (
        'Bu iþlem, Kullanýcý kartýna baðlý menü ve iþlem yetki tanýmlarýný silecektir.'#13#10+
        'Kullanýcý yetki tanýmlarý silinen kullanýcý, yetkileri baðlý olduðu gruptan alýr'#13#10#13#10 +
        'Devam etmek istiyor musunuz ?',
        '', '', 'conf') <> mrYes then Exit;
    iTip := 1;
  end
  else if TcxButtonKadir(sender).ButtonName = 'btnYetkileriGruptanAl' then
  begin
    if ShowMessageSkin (
        'Bu iþlem, Kullanýcý kartýna baðlý menü ve iþlem yetki tanýmlarýný silecek ve grup yetkilerinden yeniden dolduracaktýr.'#13#10+
        'Kullanýcýnýn baðlý olduðu grubunu deðiþtirdiðinizde veya gruptan bir yetki kaldýrdýðýnýzda bu iþlemi yapmanýzý tavsiye ederiz'#13#10#13#10 +
        'Devam etmek istiyor musunuz ?',
        '', '', 'conf') <> mrYes then Exit;
    iTip := 2;
  end;

  if iTip <= 0 then Exit;
  bBasari := False;
  BeginTrans (DATALAR.ADOConnection2);
  try
    xQuery := TADOQuery.Create (Self);
    try
      xQuery.Connection := DATALAR.ADOConnection2;
      if not DATALAR.QueryExec(xQuery, 'delete from UserMenuSettings where Kullanici = ' + QuotedStr(sKullanici)) then Exit;
      if not DATALAR.QueryExec(xQuery, 'delete from UserSettings where Kullanici = ' + QuotedStr(sKullanici)) then Exit;
      if iTip = 2 then
        if not IslemveMenuGorunumSetEkle (ugUser) then Exit
        else
      else begin
        User_Menu_Settings.Active := false;
        User_Menu_Settings.Active := True;
        UserSettings.Active := false;
        UserSettings.Active := true;
      end;
      bBasari := True;
    finally
      xQuery.Free;
    end;
  finally
    if bBasari then
    begin
      CommitTrans(DATALAR.ADOConnection2);
      ShowMessageSkin('Ýþlem Tamamlandý', '', '', 'info');
    end
    else begin
      RollbackTrans(DATALAR.ADOConnection2);
      ShowMessageSkin('Hata Oluþtu', '', '', 'info');
    end;
  end;

end;

function TfrmUsers.IslemveMenuGorunumSetEkle(Tip : userGroup) : Boolean;
var
  ado : TADOQuery;
  sql,kullanici,sqlUserGroup,sqlUserGroupMenu : string;
begin
  Result := False;
  try
    ado := TADOQuery.Create(nil);
    try
      if Tip = ugUser then
      begin
        kullanici := TcxButtonEditKadir(FindComponent('kullanici')).Text;
        sqlUserGroup := 'UserSettings';
        sqlUserGroupMenu := 'UserMenuSettings';
      end
      else
      begin
        kullanici := UserGroup.FieldByName('KODU').AsString;
        sqlUserGroup := 'UserGroupSettings';
        sqlUserGroupMenu := 'UserGroupMenuSettings';
      end;
      //user ise defaultu group'tan insert et
      sql := 'INSERT INTO '+ sqlUserGroupMenu +'(Kullanici,Menu,ID,Izin) ' +
              'select ' + QuotedStr(kullanici) + ',M.MainMenu,M.KAYITID,'+ifthen (Tip <> ugUser, '0', 'case when not ugs.ID is null then ugs.Izin else 0 end')+' '+
              'from  MenuIslem M ' +
              IfThen (Tip = ugUser, 'inner join Users UU on UU.kullanici = ' + QuotedStr(kullanici) + ' '+
                      'left outer join UserGroupMenuSettings ugs on ugs.Kullanici = uu.grup '+
                      'and ugs.ID = M.KAYITID ')+
              '  left join '+sqlUserGroupMenu +' U on U.ID = M.KAYITID AND U.Kullanici = ' + QuotedStr(kullanici) +
              ' WHERE U.ID IS null ';
      datalar.QueryExec(ado,sql);

      sql := 'INSERT INTO '+ sqlUserGroup +'(Kullanici,Modul,Islem,Izin) ' +
              'select ' + QuotedStr(kullanici) + ',M.Modul,M.Islem,'+ifthen (Tip <> ugUser, '0', 'case when not ugs.Modul is null then ugs.Izin else 0 end')+' '+
              'from  ModulIslem M ' +
              IfThen (Tip = ugUser, 'inner join Users UU on UU.kullanici = ' + QuotedStr(kullanici) + ' '+
                      'left outer join UserGroupSettings ugs on ugs.Kullanici = uu.grup'+
                      '  and ugs.Modul = M.Modul'+
                      '  and ugs.Islem = M.Islem ')+
              'left join '+sqlUserGroup +' U on U.Modul = M.Modul AND U.Islem = M.Islem AND U.Kullanici = ' + QuotedStr(kullanici) +
              'WHERE U.Modul IS null ';

      datalar.QueryExec(ado,sql);
      Result := True;

      User_Menu_Settings.Active := false;
      User_Menu_Settings.Active := True;
      UserSettings.Active := false;
      UserSettings.Active := true;
    finally
      ado.Free;
    end;

   except on e : exception do
    begin
      ShowMessageSkin(e.Message,'','','info');
    end;
   end;
end;

procedure TfrmUsers.cxKaydetClick(Sender: TObject);
var
  sql , p ,b: string;
  c : char;
begin

  if TcxButton(sender).Tag = 9
  then begin
     c := chr(Random(65)+20);
     if c in ['A'..'Z'] then b := c else b := '1';

     p := b + inttostr(Random(15000));
     sql := 'update Users set password = ' + SQLValue(p) +
            ', SifreDegisiklikTarihi = getdate () - 1000, Dogrulama = 0 where kullanici = ' +
            QuotedStr(TcxTextEditKadir(FindComponent('kullanici')).Text);
     datalar.QueryExec(sql);

     if mailGonder ('destek@noktayazilim.net' , 'Þifre Onaylama' , 'Þifreniz : ' + p)
        = '0000'
      then ShowMessageSkin('Þifreniz Mail adresinize Gönderildi','','','info')
      else ShowMessageSkin('Gönderilemedi','','','info');
    exit;
  end;

  if TcxButton(sender).Tag = 0
  then
   if TcxButtonEditKadir(FindComponent('password')).Text <> txtSifreTekrar.Text
    Then begin
     ShowMessageSkin('Þifre Tekrarý Hatalý','','','info');
     exit;
    end;
  BeginTrans (DATALAR.ADOConnection2);
  try
    if TcxButton(sender).Tag = 1
    then
    begin
      DATALAR.QueryExec('delete from UserMenuSettings where Kullanici = ' + QuotedStr(TcxButtonEditKadir (FindComponent('Kullanici')).Text));
      DATALAR.QueryExec('delete from UserSettings where Kullanici = ' + QuotedStr(TcxButtonEditKadir (FindComponent('Kullanici')).Text));
    end;

    inherited;

    if not cxKaydetResult then Exit;

    case TcxButton(sender).Tag  of
      2 : begin
             IslemveMenuGorunumSetEkle(ugUser);

          end;
      1 : begin

           // post;
           //ShowMessage('Ýptal');
          end;

    end;
  finally
    if cxKaydetResult then
      CommitTrans (DATALAR.ADOConnection2)
     else
      RollbackTrans (DATALAR.ADOConnection2);
  end;
end;

procedure TfrmUsers.formlarClick(Sender: TObject);
begin
  //inherited;

end;

end.
