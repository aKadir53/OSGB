unit DokumanYukle;

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
  TfrmDokumanYonetim = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    D1: TMenuItem;
    D2: TMenuItem;
    D3: TMenuItem;
    gridDokuman: TcxGridDBTableView;
    DokumListLevel1: TcxGridLevel;
    DokumList: TcxGridKadir;
    cxGroupBox1: TcxGroupBox;
    txtSirket: TcxImageComboKadir;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    txtDokumanGrup: TcxImageComboKadir;
    gridDokumanSirketKod: TcxGridDBColumn;
    gridDokumanID: TcxGridDBColumn;
    gridDokumanDate_Create: TcxGridDBColumn;
    gridDokumanDokumanNo: TcxGridDBColumn;
    gridDokumanDokumanTanimi: TcxGridDBColumn;
    gridDokumanDokuman: TcxGridDBColumn;
    gridDokumanDokumanTip: TcxGridDBColumn;
    gridDokumanDosyaTip: TcxGridDBColumn;
    gridDokumanDokumanGrup: TcxGridDBColumn;
    gridDokumanDG: TcxGridDBColumn;
    gridDokumanDT: TcxGridDBColumn;
    Y1: TMenuItem;
    txtDosyaTip: TcxImageComboKadir;
    gridDokumanColumn1: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtSirketPropertiesChange(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure D3Click(Sender: TObject);
    procedure Y1Click(Sender: TObject);
    procedure D2Click(Sender: TObject);
    procedure BeforeInsert(DataSet: TDataSet);
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
  frmDokumanYonetim: TfrmDokumanYonetim;


implementation

{$R *.dfm}

function TfrmDokumanYonetim.Init(Sender: TObject) : Boolean;
begin

  DokumList.Dataset.BeforePost := BeforeInsert;
  DokumList.Dataset.BeforeDelete := BeforeInsert;
  txtSirket.Conn := datalar.ADOConnection2;
  txtSirket.TableName := 'SIRKETLER_TNM';
  txtSirket.DisplayField := 'tanimi';
  txtSirket.ValueField := 'SirketKod';
  txtSirket.Filter := '';



  txtDokumanGrup.Conn := datalar.ADOConnection2;
  txtDokumanGrup.TableName := 'DokumanGrup';
  txtDokumanGrup.ValueField := 'DokumanGrupID';
  txtDokumanGrup.DisplayField := 'tanimi';
  txtDokumanGrup.Filter := '';

  txtDosyaTip.Filter := '';

  TcxImageComboBoxProperties(gridDokumanDokumanTip.Properties).Items := txtDosyaTip.Properties.Items;

  Result := True;
end;



procedure TfrmDokumanYonetim.txtSirketPropertiesChange(Sender: TObject);
var
  sql : string;
begin
  inherited;

   sql := 'select dy.*,dg.tanimi DG, dt.Tanimi DT from dokumanYonetim dy ' +
          'left join DokumanGrup dg on dg.DokumanGrupID = dy.DokumanGrup ' +
          'left join DokumanTip dt on dt.DokumanTipID = dy.DokumanTip ' +
          ' where SirketKod = ' +  QuotedStr(vartoStr(txtSirket.EditingValue)) +
          ' and DokumanGrup like ' + QuotedStr('%'+vartoStr(txtDokumanGrup.EditingValue));

     DokumList.Dataset.Connection := datalar.ADOConnection2;
     DokumList.Dataset.SQL.Text := sql;
     DokumList.Dataset.Open;
 //    gridDokuman.DataController.CreateAllItems(True);



end;

procedure TfrmDokumanYonetim.Y1Click(Sender: TObject);
begin
  if
  ((txtSirket.text <> '') or (txtDokumanGrup.text <> ''))
  then begin
   try
    DokumList.Dataset.Append;
    DokumList.Dataset.FieldByName('SirketKod').AsString := txtSirket.EditingValue;
    DokumList.Dataset.FieldByName('DokumanGrup').AsString := txtDokumanGrup.EditingValue;
    DokumList.Dataset.Post;
   except
   end;
  end
  else
    ShowMessageSkin('Þirket ve Dokuman Grup Seçilmelidir','','','info');

end;

procedure TfrmDokumanYonetim.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
begin
  inherited;
//
end;

procedure TfrmDokumanYonetim.BeforeDelete(DataSet: TDataSet);
begin
  inherited;
  //
end;

procedure TfrmDokumanYonetim.BeforeInsert(DataSet: TDataSet);
begin
  inherited;
   DokumList.Dataset.Properties['Unique Table'].Value := 'DokumanYonetim';
end;

procedure TfrmDokumanYonetim.ButtonClick(Sender: TObject);
begin
  //
end;

procedure TfrmDokumanYonetim.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmDokumanYonetim.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmDokumanYonetim.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmDokumanYonetim.D1Click(Sender: TObject);
var
  Blob : TADOBlobStream;
  dosya : TOpenDialog;
  dosyaTip : string;
begin

  if MrYes = MessageDlg(
      'Dokuman Eklenecek , Emin misiniz?',
    mtConfirmation, [mbYes, mbNo], 0, mbYes)
  then begin
    dosya := TOpenDialog.Create(nil);
    try
      if not dosya.Execute then Exit;
      dosyaTip := ExtractFileExt(dosya.FileName);
      dosyaTip := StringReplace(dosyaTip,'.','',[rfReplaceAll]);

      DokumList.Dataset.Edit;
    //  DokumList.Dataset.FieldByName('SirketKod').AsString := txtSirket.EditingValue;
      DokumList.Dataset.FieldByName('DosyaTip').AsString := dosyaTip;
  //    DokumList.Dataset.FieldByName('DokumanGrup').AsString := txtDokumanGrup.EditingValue;
      DokumList.Dataset.FieldByName('YukleyenUser').AsString := datalar.username;
      Blob := TADOBlobStream.Create(TBlobField(DokumList.Dataset.FieldByName('Dokuman')),bmwrite);
      try
        Blob.LoadFromFile(dosya.FileName);
        Blob.Position := 0;
        TBlobField(DokumList.Dataset.FieldByName('Dokuman')).LoadFromStream(Blob);
        DokumList.Dataset.Post;
      finally
        Blob.Free;
      end;
    finally
      dosya.Free;
    end;
  end;

end;

procedure TfrmDokumanYonetim.D2Click(Sender: TObject);
begin
  inherited;
  if MRYes = ShowMessageSkin('Döküman Silinecek , Emin misiniz?','','','msg')
  then DokumList.Dataset.Delete;
end;

procedure TfrmDokumanYonetim.D3Click(Sender: TObject);
var
  Blob : TAdoBlobStream;
  filename : string;
begin
  Cursor := crSQLWait;
  try
    filename := DokumList.Dataset.FieldByName('DokumanTanimi').AsString + '.' + DokumList.Dataset.FieldByName('DosyaTip').AsString;
    Blob := TADOBlobStream.Create((DokumList.Dataset.FieldByName('Dokuman') as TBlobField), bmRead);
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

procedure TfrmDokumanYonetim.FormCreate(Sender: TObject);
begin
  inherited;
  Menu := PopupMenu1;
  cxPanel.Visible := false;
end;

procedure TfrmDokumanYonetim.cxKaydetClick(Sender: TObject);
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
