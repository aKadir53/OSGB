unit RTFSablon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,
  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxDropDownEdit, cxImageComboBox, cxGridLevel, cxClasses,shellApi,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxDBLookupComboBox;



type
  TfrmRTFSablon = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    D1: TMenuItem;
    D2: TMenuItem;
    D3: TMenuItem;
    gridDokuman: TcxGridDBTableView;
    DokumListLevel1: TcxGridLevel;
    DokumList: TcxGridKadir;
    cxGroupBox1: TcxGroupBox;
    Y1: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    gridDokumanid: TcxGridDBColumn;
    gridDokumanRTFSablonKodu: TcxGridDBColumn;
    gridDokumanRTFSablonTanim: TcxGridDBColumn;
    gridDokumanRTFFile: TcxGridDBColumn;
    procedure cxKaydetClick(Sender: TObject);
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure D3Click(Sender: TObject);
    procedure Y1Click(Sender: TObject);
    procedure D2Click(Sender: TObject);
    procedure BeforeDelete(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'DoktorlarT';
      formGenislik = 500;
      formYukseklik = 530;

var
  frmRTFSablon: TfrmRTFSablon;


implementation

{$R *.dfm}

function TfrmRTFSablon.Init(Sender: TObject) : Boolean;
var
 sql : string;
begin
     sql := 'select * from RTFSablonlari';
     DokumList.Dataset.Connection := datalar.ADOConnection2;
     DokumList.Dataset.SQL.Text := sql;
     DokumList.Dataset.Open;

  Result := True;
end;



procedure TfrmRTFSablon.Y1Click(Sender: TObject);
var
   Blob : TADOBlobStream;
begin
   try
    DokumList.Dataset.Append;
    DokumList.Dataset.FieldByName('RTFSablonKodu').AsString := '0';
    DokumList.Dataset.FieldByName('RTFSablonTanim').AsString := 'Þablon Adý Giriniz';
    DokumList.Dataset.Post;
   except
   end;
end;

procedure TfrmRTFSablon.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
begin
  inherited;
//
end;

procedure TfrmRTFSablon.BeforeDelete(DataSet: TDataSet);
begin
  inherited;
  //
end;

procedure TfrmRTFSablon.ButtonClick(Sender: TObject);
begin
  //
end;

procedure TfrmRTFSablon.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmRTFSablon.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmRTFSablon.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmRTFSablon.D1Click(Sender: TObject);
var
  Blob : TADOBlobStream;
  dosya : TOpenDialog;
  dosyaTip : string;
begin
    dosya := TOpenDialog.Create(nil);
    try
      if not dosya.Execute then Exit;
      dosyaTip := ExtractFileExt(dosya.FileName);
      dosyaTip := StringReplace(dosyaTip,'.','',[rfReplaceAll]);

      DokumList.Dataset.Edit;
      Blob := TADOBlobStream.Create(TBlobField(DokumList.Dataset.FieldByName('RTFFile')),bmwrite);
      try
        Blob.LoadFromFile(dosya.FileName);
        Blob.Position := 0;
        TBlobField(DokumList.Dataset.FieldByName('RTFFile')).LoadFromStream(Blob);
        DokumList.Dataset.Post;
      //  Blob.Free;
      except
      end;
    finally
      dosya.Free;
    end;

end;


procedure TfrmRTFSablon.D2Click(Sender: TObject);
begin
  inherited;
  if MRYes = ShowMessageSkin('Döküman Silinecek , Emin misiniz?','','','msg')
  then DokumList.Dataset.Delete;
end;

procedure TfrmRTFSablon.D3Click(Sender: TObject);
var
  Blob : TAdoBlobStream;
  filename : string;
begin
  Cursor := crSQLWait;
  try
    filename := DokumList.Dataset.FieldByName('RTFSablonTanim').AsString + '.rtf';
    Blob := TADOBlobStream.Create((DokumList.Dataset.FieldByName('RTFFile') as TBlobField), bmRead);
    try
      Blob.SaveToFile(filename);
    finally
      Blob.Free;
    end;
    sleep(1000);
    ShellExecute(0, 'open', PChar(filename), nil, nil, SW_SHOWNORMAL);
  finally
    Cursor := crDefault;
  end;
end;



procedure TfrmRTFSablon.FormCreate(Sender: TObject);
begin
  inherited;
  Menu := PopupMenu1;
  cxPanel.Visible := false;
end;

procedure TfrmRTFSablon.cxKaydetClick(Sender: TObject);
begin
  inherited;
  case TcxButton(sender).Tag  of
    0 : begin
        // ShowMessage('Kaydet');
        // ButonClick(self,'k');
      //   Olustur(self,'Users');
      //   setDataString(self,'ADISOYADI',100,10);

        end;
    1 : begin
         // post;
         //ShowMessage('Ýptal');
    end;
  end;
end;

end.
