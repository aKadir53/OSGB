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
    procedure IslemveMenuGorunumSetEkle(Tip : userGroup);
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


  private
    { Private declarations }
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'Users';
      formGenislik = 780;
      formYukseklik = 500;

var
  frmUsers: TfrmUsers;


implementation
    uses AnaUnit;
{$R *.dfm}



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
  index,i : integer;
  Ts : TStringList;
  List,List1,List3 : TListeAc;
  Grup,ustUser,doktor,sirketler : TcxImageComboKadir;
begin



  //Olustur(self,_TableName_,'User Ýþlemleri',22,'','','','kullanici');

  List := ListeAcCreate('Users','kullanici,ADISOYADI','Kullanýcý,Tanýmý','100,200','kullaniciList',
                        'Kullanýcýlar','',2,false);


  setDataStringB(self,'kullanici','Kullanici Adý',Kolon1,'',150,List,True,cxKullaniciAdi,'');
  setDataString(self,'ADISOYADI','Kullanýcý Tanýmý',Kolon1,'',250);
  setDataString(self,'password','Þifre',Kolon1,'',150);
  setDataStringKontrol(self,txtSifreTekrar, 'txtSifreTekrar','Þifre Tekrarý',Kolon1,'',150);
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
  sirketler.TableName := 'SIRKETLER_TNM';
  sirketler.ValueField := 'sirketKod';
  sirketler.DisplayField := 'Tanimi';
  sirketler.BosOlamaz := False;
  sirketler.Filter := '';
  setDataStringKontrol(self,sirketler,'SirketKodu','Þirket',kolon1,'',120);
  OrtakEventAta(sirketler);

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
  doktor.TableName := 'DoktorlarT';
  doktor.ValueField := 'KOD';
  doktor.DisplayField := 'Tanimi';
  doktor.BosOlamaz := False;
  doktor.Filter := '';
  setDataStringKontrol(self,doktor,'doktor','Doktor',kolon1,'',120);
  OrtakEventAta(doktor);

  setDataString(self,'email','e-mail',Kolon1,'',250);



  setDataStringKontrol(self,userSkin, 'userSkin','Kullanýcý Skin',Kolon1,'',150);
  pnlUserGrup.Parent := sayfa2;
  pnlUserGrup.Align := alClient;
//  setDataStringKontrol(self,pnlUserGrup,'pnlUserGrup','',sayfa2_kolon1,'',350,350);




  UserSettings.Filtered := True;
  User_Menu_Settings.Filtered := True;
  UserGroup.Active := True;

  SayfaCaption('Kullanýcý Ýþlemleri','Grup Ýþlemleri','','','');

  Disabled(self,True);

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
  sql := 'delete from UserGroupSettings where kullanici = ' + QuotedStr(UserGroup.FieldByName('KODU').AsString);
  datalar.QueryExec(ado,sql);
  sql := 'delete from UserGroupMenuSettings where kullanici = ' + QuotedStr(UserGroup.FieldByName('KODU').AsString);
  datalar.QueryExec(ado,sql);


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

procedure TfrmUsers.IslemveMenuGorunumSetEkle(Tip : userGroup);
var
  ado : TADOQuery;
  sql,kullanici,sqlUserGroup,sqlUserGroupMenu : string;
begin
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

      sql := 'INSERT INTO '+ sqlUserGroupMenu +'(Kullanici,	Menu,ID,Izin) ' +
              'select ' + QuotedStr(kullanici) + ',M.MainMenu,M.KAYITID,0 from  MenuIslem M ' +
              '  left join '+sqlUserGroupMenu +' U on U.ID = M.KAYITID AND U.Kullanici = ' + QuotedStr(kullanici) +
              ' WHERE U.ID IS null ';
      datalar.QueryExec(ado,sql);

      sql := 'INSERT INTO '+ sqlUserGroup +'(Kullanici,Modul,Islem,Izin) ' +
              'select ' + QuotedStr(kullanici) + ',M.Modul,M.Islem,0 from  ModulIslem M ' +
              '  left join '+sqlUserGroup +' U on U.Modul = M.Modul AND U.Islem = M.Islem AND U.Kullanici = ' + QuotedStr(kullanici) +
              ' WHERE U.Modul IS null ';

      datalar.QueryExec(ado,sql);


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
begin
  if TcxButton(sender).Tag = 0
  then
   if TcxButtonEditKadir(FindComponent('password')).Text <> txtSifreTekrar.Text
    Then begin
     ShowMessageSkin('Þifre Tekrarý Hatalý','','','info');
     exit;
    end;
  inherited;
  case TcxButton(sender).Tag  of
    2 : begin
           IslemveMenuGorunumSetEkle(ugUser);

        end;
    1 : begin
         // post;
         //ShowMessage('Ýptal');
    end;
  end;
end;

procedure TfrmUsers.formlarClick(Sender: TObject);
var
   i,j : integer;
begin
  //inherited;



end;

end.
