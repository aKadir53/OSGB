unit PopupDBGridForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, jpeg, kadir,kadirType,kadirLabel,
  dxGDIPlusClasses, cxGraphics, cxControls,GirisUnit,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  Menus, cxButtons, cxGroupBox, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxCurrencyEdit, cxGridLevel, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxLabel, cxCheckBox,
  cxImageComboBox, cxMemo,adoDb,cxDBLookupComboBox;

type
  TfrmPopupDBGridForm = class(TGirisForm)
    cxPanelBottom: TcxGroupBox;
    btnYes: TcxButton;
    btnIptal: TcxButton;
    cxGroupDoktorlar: TcxGroupBox;
    cxGrid3: TcxGridKadir;
    DBGrid: TcxGridDBTableView;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6: TcxGridDBBandedTableView;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7: TcxGridDBBandedTableView;
    cxGridDBBandedTableView8: TcxGridDBBandedTableView;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridDBBandedColumn23: TcxGridDBBandedColumn;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn25: TcxGridDBBandedColumn;
    cxGridDBBandedColumn26: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    PopupMenu1: TPopupMenu;
    K1: TMenuItem;
    H1: TMenuItem;
    txtTable: TcxImageComboKadir;
    procedure FormCreate(Sender: TObject);
    procedure txtMsgEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Yukle;
    procedure SetGrid;
    procedure txtTablePropertiesChange(Sender: TObject);
    procedure ADOBeforePost(DataSet: TDataSet);

  private
    { Private declarations }
  public
    _islem_ :integer;
    _caption_  : string;

    function Init(Sender: TObject) : Boolean; override;
    { Public declarations }
  end;

const
      formGenislik = 300;
      formYukseklik = 580;

var
  frmPopupDBGridForm: TfrmPopupDBGridForm;
  frmTop_ :word = 0;
  frmLeft_ :word = 0;

implementation

uses message, data_modul;

{$R *.DFM}

procedure TfrmPopupDBGridForm.ADOBeforePost(DataSet: TDataSet);
begin
  inherited;
  case Tag of
  TagfrmSube :
        begin
           cxGrid3.Dataset.FieldByName('SirketKod'x).AsString := _firmaKod_;
        end;
  end;
end;

function TfrmPopupDBGridForm.Init(Sender: TObject) : Boolean;
var
  ado : TADOQuery;
  sql : string;
begin
  inherited;

  case Tag of
     TagfrmBolum,TagfrmBirim :
  begin
      txtTable.Visible := True;
      txtTable.Conn := Datalar.ADOConnection2;
      txtTable.TableName := 'PopupDBGridFormTabloTanim';
      txtTable.ValueField := 'id';
      txtTable.DisplayField := 'tableName';
      txtTable.Filter := '';
      txtTable.BosOlamaz := True;
      OrtakEventAta(txtTable);
      indexFieldName := '1=1';
      cxPanel.Visible := false;
      SayfaCaption('','','','','');
  end;

    TagfrmSube :
    begin
        ClientHeight := 300;
        ClientWidth := 550;
        TableName := 'SIRKET_SUBE_TNM';
        _fields_ := 'sirketKod,subeKod,subeTanim,subeSiciNo,subeDoktor,BolgeMudurlukSicilNo';
        _fieldBaslik_ := ',ÞubeKodu,ÞubeTanimi,ÝþYeriSicilNo,Doktor,BölgeMdSicilNo';
        _fieldTips_ := 'string,string,string,string,ImageDoktorCombo,string';
        indexFieldName := 'sirketKod = ' + QuotedStr(_firmaKod_);
        cxPanel.Visible := false;
        cxGroupDoktorlar.Caption := 'Þube Bilgileri';
        cxGrid3.Dataset.BeforePost := ADOBeforePost;
        cxGrid3.Dataset.Connection := datalar.ADOConnection2;
        cxGrid3.Dataset.SQL.Text := 'Select * from SIRKET_SUBE_TNM where sirketKod = ' + QuotedStr(_firmaKod_);
        cxGrid3.Dataset.Open;
        DBGrid.DataController.CreateAllItems(True);
        SetGrid;

        SayfaCaption('','','','','');
    end;

  end;


end;


procedure TfrmPopupDBGridForm.SetGrid;
var
 i : integer;
 Columns,Baslik,Tips : TstringList;
 ColName : string;
 Col : TcxGridDBColumn;
 FItem : TcxImageComboBoxItem;
begin
  Columns := TStringList.Create;
  Baslik := TStringList.Create;
  Tips := TStringList.Create;
  Split(',',_fields_,Columns);
  Split(',',_fieldBaslik_,Baslik);
  Split(',',_fieldTips_,Tips);

  for i := 0 to Columns.Count - 1 do
  begin
    DBGrid.Columns[i].Caption := Baslik[i];
    DBgrid.Columns[i].HeaderAlignmentHorz := taCenter;
    if Tips[i] = 'int' then
     begin
      DBgrid.Columns[i].PropertiesClassName := 'TcxCurrencyEditProperties';
      DBgrid.Columns[i].Properties.Alignment.Horz := taRightJustify;
      TcxCurrencyEditProperties(DBgrid.Columns[i].Properties).DisplayFormat := '#,###.##';
     end;
    if Tips[i] = 'string' then
     begin
      DBgrid.Columns[i].PropertiesClassName := 'TcxTextEditProperties';
     end;

    if Tips[i] = 'saat' then
     begin
      DBgrid.Columns[i].PropertiesClassName := 'TcxDateEditProperties';
     end;

    if Tips[i] = 'ImageDoktorCombo' then
     begin
      DBgrid.Columns[i].PropertiesClassName := 'TcxImageComboBoxProperties';
      TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).Items.Clear;

      datalar.Ado_Doktorlar.First;
      while not datalar.Ado_Doktorlar.Eof do
      begin
        FItem := TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).Items.add;
        FItem.Value := datalar.Ado_Doktorlar.FieldByName('kod').AsString;
        FItem.Description := datalar.Ado_Doktorlar.FieldByName('tanimi').AsString;
        datalar.Ado_Doktorlar.Next;
      end;

     end;

    DBgrid.Columns[i].Width := 70;

  end;

  DBGrid.Columns[0].Visible := false;


end;

procedure TfrmPopupDBGridForm.Yukle;
begin
  inherited;
  DBGrid.DataController.DataSource.DataSet := sqlRun;
  DBGrid.DataController.CreateAllItems(True);
  SetGrid;
end;

procedure TfrmPopupDBGridForm.FormCreate(Sender: TObject);
begin
  Menu := PopupMenu1;
  Tag := TagfrmPopupDBGridForm;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
end;

procedure TfrmPopupDBGridForm.txtMsgEnter(Sender: TObject);
begin
 //perform(wm_nextdlgctl,0,0);
 ActiveControl := btnYes;
end;

procedure TfrmPopupDBGridForm.txtTablePropertiesChange(Sender: TObject);
var
  ado : TADOQuery;
  sql : string;
begin
  inherited;

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  sql := 'select * from PopupDBGridFormTabloTanim where id = ' + txtTable.EditingValue;
  datalar.QuerySelect(ado,sql);

  TableName := ado.FieldByName('tableName').AsString;
  _fields_ := ado.FieldByName('_fields_').AsString;
  _fieldBaslik_ := ado.FieldByName('_fieldBaslik_').AsString;
  _fieldTips_ := ado.FieldByName('_fieldTips_').AsString;
  Yukle;

end;

procedure TfrmPopupDBGridForm.FormShow(Sender: TObject);
var
  ilacList,kulYolList,Doktorlar : TlisteAc;
begin
inherited;
  btnYes.Visible := True;
  btnYes.Caption := '&Tamam';
  btnIptal.Visible := True;
  btnIptal.Caption := '&Vazgeç';
  btnIptal.TabOrder := 0;
  btnYes.TabOrder := 1;
  btnIptal.SetFocus;
end;

procedure TfrmPopupDBGridForm.FormActivate(Sender: TObject);
begin
   if frmTop_ = 0
   Then frmTop_ := Trunc(TScreen(frmPopupDBGridForm).DesktopHeight/2);
   if frmLeft_ = 0
   Then frmLeft_ := Trunc(TScreen(frmPopupDBGridForm).DesktopWidth/2);

   Top := frmTop_ - Trunc(Height/2);
   Left := frmLeft_ - Trunc(Width/2);
end;

end.
