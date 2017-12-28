unit FormKontrolUserSet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, cxContainer, cxEdit, cxListBox, cxGroupBox, cxPC,
  Vcl.ToolWin,cxButtons, cxListView, ComCtrls, Menus, Vcl.StdCtrls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,adodb,
  cxGridDBTableView, cxGrid, KadirLabel, KadirType,cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxLabel,kadir;

type
  TfrmKontrolUserSet = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    Kontroller: TcxListView;
    cxButton1: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGridKontrolUser: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxButton2: TcxButton;
    ListeAc1: TListeAc;
    User_Kontrol_Settings: TADOTable;
    DataSource1: TDataSource;
    cxGridKontrolUserkullanici: TcxGridDBColumn;
    cxGridKontrolUserformTag: TcxGridDBColumn;
    cxGridKontrolUserkontrolTag: TcxGridDBColumn;
    cxGridKontrolUsercaption: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    txtKullanici: TcxButtonEditKadir;
    User_Kontrol_Settingskullanici: TStringField;
    User_Kontrol_SettingsformTag: TIntegerField;
    User_Kontrol_SettingskontrolTag: TIntegerField;
    User_Kontrol_Settingscaption: TStringField;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox4: TcxGroupBox;
    InputKontroller: TcxListView;
    cxGroupBox5: TcxGroupBox;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    InputKontrol: TADOTable;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    DataSource2: TDataSource;
    InputKontrolkontrolName: TStringField;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButtonEditKadir1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure Yukle;
    procedure YukleZorunlu;
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);

  private
    { Private declarations }
  public
   FormName : Tform;
   function Init(Sender: TObject) : Boolean; // override;
    { Public declarations }
  end;

var
  frmKontrolUserSet: TfrmKontrolUserSet;

implementation
      uses data_modul,Anaunit;
{$R *.dfm}

function TfrmKontrolUserSet.Init(Sender : TObject) : Boolean;
begin
  InputKontrol.Open;
  YukleZorunlu;
  Result := True;
end;


procedure TfrmKontrolUserSet.Yukle;
var
 i : integer;
 item : TListItem;
 mi : TMenuItem;
begin
   kontroller.Clear;

   for i := 0 to FormName.ComponentCount - 1 do
     if (FormName.components[i].ClassName = 'TToolButton') or
        (FormName.components[i].ClassName = 'TToolButtonKadir')
     Then
      if TToolbutton(FormName.components[i]).Style = tbsDropDown
      Then begin
          for mi in TToolButton(FormName.Components[i]).DropdownMenu.Items do
          begin
            item := kontroller.Items.Add;
            item.Caption := '';
            item.SubItems.Add(inttostr(Formname.Tag));
            item.SubItems.Add(inttostr(mi.Tag));
            item.SubItems.Add('');
            item.SubItemImages[2] := mi.ImageIndex;
            item.SubItems.Add(mi.Caption);

            if User_Kontrol_Settings.Locate('formTag;kontrolTag',
                       VarArrayOf([inttostr(Formname.Tag),
                       inttostr(mi.Tag)]),[]) = True
            Then
               item.SubItems.Add('Kilitli')
            else
               item.SubItems.Add('Serbest');
          end;

      end
      else
      begin
        item := kontroller.Items.Add;
        item.Caption := '';
        item.SubItems.Add(inttostr(Formname.Tag));
        item.SubItems.Add(inttostr(TToolButton(FormName.components[i]).Tag));
        item.SubItems.Add('');
        item.SubItemImages[2] := TToolButton(FormName.components[i]).ImageIndex;
        item.SubItems.Add(TToolButton(FormName.components[i]).Hint);

        if User_Kontrol_Settings.Locate('formTag;kontrolTag',
                   VarArrayOf([inttostr(Formname.Tag),
                   inttostr(TToolButton(FormName.components[i]).Tag)]),[]) = True
        Then
           item.SubItems.Add('Kilitli')
        else
           item.SubItems.Add('Serbest');


     end
     Else
     if (FormName.components[i].ClassName = 'TcxButton') or
        (FormName.components[i].ClassName = 'TcxButonKadir')
     Then
       if (TcxButton(FormName.components[i]).Visible = True) and
          (TcxGroupBox(TcxButton(FormName.components[i]).Parent).Visible = True) and
          (TcxButton(FormName.components[i]).Tag > 0)
       then begin
        item := kontroller.Items.Add;
        item.Caption := inttostr(Formname.Tag);
        item.SubItems.Add(inttostr(TcxButton(FormName.components[i]).Tag));
        item.SubItems.Add('');
       // item.SubItemImages[1] := TToolButton(FormName.components[i]).ImageIndex;
        item.SubItems.Add(TToolButton(FormName.components[i]).name);
       end;
end;


procedure TfrmKontrolUserSet.YukleZorunlu;
var
 i : integer;
 item : TListItem;
 mi : TMenuItem;
begin
   InputKontroller.Clear;

   for i := 0 to FormName.ComponentCount - 1 do
     if (FormName.components[i].ClassName = 'TcxTextEdit') or
        (FormName.components[i].ClassName = 'TcxTextEditKadir') or
        (FormName.components[i].ClassName = 'TcxDateEdit') or
        (FormName.components[i].ClassName = 'TcxDateEditKadir') or
        (FormName.components[i].ClassName = 'TcxButtonEdit') or
        (FormName.components[i].ClassName = 'TcxButtonEditKadir') or
        (FormName.components[i].ClassName = 'TcxComboBox') or
        (FormName.components[i].ClassName = 'TcxComboBoxKadir') or
        (FormName.components[i].ClassName = 'TcxImageComboKadir') or
        (FormName.components[i].ClassName = 'TcxImageComboBox')

     Then
     begin
        item := Inputkontroller.Items.Add;
        item.Caption := '';
        item.SubItems.Add(inttostr(Formname.Tag));
        item.SubItems.Add(inttostr(TcxCustomEdit(FormName.components[i]).Tag));
        item.SubItems.Add(TcxCustomEdit(FormName.components[i]).Name);

        if InputKontrol.Locate('formTag;kontrolName',
                   VarArrayOf([inttostr(Formname.Tag),
                   TcxCustomEdit(FormName.components[i]).Name]),[]) = True
        Then
           item.SubItems.Add('Boþ Olamaz')
        else
           item.SubItems.Add('');


     end

end;



procedure TfrmKontrolUserSet.cxButton1Click(Sender: TObject);
var
  formTag,kontrolTag : string;
begin

  formTag := kontroller.Selected.SubItems[0];
  kontrolTag := kontroller.Selected.SubItems[1];

  if User_Kontrol_Settings.Locate('formTag;kontrolTag',
             VarArrayOf([formTag,kontrolTag]),[]) = True
  Then
       User_Kontrol_Settings.Delete;
  yukle;
end;


procedure TfrmKontrolUserSet.cxButton2Click(Sender: TObject);
begin
 try
   User_Kontrol_Settings.Append;
   User_Kontrol_Settings.FieldByName('kullanici').AsString := txtKullanici.EditingValue;
   User_Kontrol_Settings.FieldByName('formTag').AsString := kontroller.ItemFocused.SubItems[0];
   User_Kontrol_Settings.FieldByName('kontrolTag').AsString := kontroller.ItemFocused.SubItems[1];
   User_Kontrol_Settings.FieldByName('caption').AsString := kontroller.ItemFocused.SubItems[3];
   User_Kontrol_Settings.Post;
 except on e : Exception do
   begin
    ShowMessageSkin(e.Message,'','','info');
    User_Kontrol_Settings.Cancel;
   end;
 end;
 yukle;
end;

procedure TfrmKontrolUserSet.cxButton3Click(Sender: TObject);
var
  formTag,kontrolName : string;
begin

  formTag := Inputkontroller.Selected.SubItems[0];
  kontrolName := Inputkontroller.Selected.SubItems[2];

  if InputKontrol.Locate('formTag;kontrolName',
             VarArrayOf([formTag,kontrolName]),[]) = True
  Then
       InputKontrol.Delete;
  YukleZorunlu;
end;

procedure TfrmKontrolUserSet.cxButton4Click(Sender: TObject);
begin
 try
   InputKontrol.Append;
   InputKontrol.FieldByName('formTag').AsString := Inputkontroller.ItemFocused.SubItems[0];
   InputKontrol.FieldByName('kontrolTag').AsString := Inputkontroller.ItemFocused.SubItems[1];
   InputKontrol.FieldByName('kontrolName').AsString := Inputkontroller.ItemFocused.SubItems[2];
   InputKontrol.Post;
 except on e : Exception do
   begin
    ShowMessageSkin(e.Message,'','','info');
    InputKontrol.Cancel;
   end;
 end;
 YukleZorunlu;
end;

procedure TfrmKontrolUserSet.cxButtonEditKadir1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  List : ArrayListeSecimler;
begin
  User_Kontrol_Settings.Active := false;
  ListeAc1.SkinName := AnaForm.dxSkinController1.SkinName;
  List := ListeAc1.ListeGetir;
  if High (List) < 0 then Exit;

  txtKullanici.Text := list[0].kolon1;
  User_Kontrol_Settings.Filter := 'kullanici = ' + QuotedStr(txtKullanici.Text);
  User_Kontrol_Settings.Filtered := True;
  User_Kontrol_Settings.Active := True;

  yukle;

end;

procedure TfrmKontrolUserSet.FormCreate(Sender: TObject);
begin
  tag := TagfrmKontrolUserSet;
end;

end.
