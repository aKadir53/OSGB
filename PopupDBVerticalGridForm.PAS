unit PopupDBVerticalGridForm;

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
  cxImageComboBox, cxMemo,adoDb,cxDBLookupComboBox, cxInplaceContainer, cxVGrid,
  cxDBVGrid, cxButtonEdit, cxNavigator, cxDBNavigator;

type
  TfrmPopupDBVerticalGridForm = class(TGirisForm)
    cxPanelBottom: TcxGroupBox;
    btnYes: TcxButton;
    btnIptal: TcxButton;
    cxGroupDoktorlar: TcxGroupBox;
    PopupMenu1: TPopupMenu;
    K1: TMenuItem;
    PersonelList: TListeAc;
    DataSource1: TDataSource;
    Ado: TADOQuery;
    Y1: TMenuItem;
    S1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure txtMsgEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Yukle;
    procedure SetGrid;
    procedure cGridcxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxButtonCClick(Sender: TObject);

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
  frmPopupDBVerticalGridForm: TfrmPopupDBVerticalGridForm;
  frmTop_ :word = 0;
  frmLeft_ :word = 0;

implementation

uses message, data_modul;

{$R *.DFM}

function TfrmPopupDBVerticalGridForm.Init(Sender: TObject) : Boolean;
var
  sql : string;
begin
  inherited;

  case Tag of
    TagfrmPopupDBVerticalGridForm :
    begin
        ClientHeight := 300;
        ClientWidth := 550;
        cxPanel.Visible := false;
        cxGroupDoktorlar.Caption := 'Ýþ Kazasý/ Meslek Hastalýðý';
        TableName := 'IsKazalari';
        sql := 'select * from IsKazalari where PersonelDosyaNo = ' + QuotedStr(_dosyaNO_);
        datalar.QuerySelect(Ado,sql);
     //   DataSource1.DataSet := SqlRun;
    //    VerticalGrid.DataController.DataSource := DataSource1;
    //    cxDBNavigator1.DataSource := DataSource1;
//        SetGrid;

        SayfaCaption('','','','','');
        Result := True;
    end;

  end;


end;


procedure TfrmPopupDBVerticalGridForm.SetGrid;
{var
 i : integer;
 Columns,Baslik,Tips : TstringList;
 ColName : string;
 Col : TcxGridDBColumn;
 FItem : TcxImageComboBoxItem;     {}
begin
(*
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
  *)

end;

procedure TfrmPopupDBVerticalGridForm.Yukle;
begin
  inherited;
  SetGrid;
end;

procedure TfrmPopupDBVerticalGridForm.FormCreate(Sender: TObject);
begin
  Inherited;
  Menu := PopupMenu1;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
 // _DataSource := TADOQuery.Create(nil);
end;

procedure TfrmPopupDBVerticalGridForm.txtMsgEnter(Sender: TObject);
begin
 //perform(wm_nextdlgctl,0,0);
 ActiveControl := btnYes;
end;

procedure TfrmPopupDBVerticalGridForm.FormShow(Sender: TObject);
//var
//  ilacList,kulYolList,Doktorlar : TlisteAc;
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

procedure TfrmPopupDBVerticalGridForm.cGridcxButtonEditPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  list : ArrayListeSecimler;
  //key : word;
begin
  list := PersonelList.ListeGetir;
  if High (list) < 0 then Exit;

  Datalar.ButtonEditSecimlist := List;
  Ado.FieldByName('PersoneldosyaNo').AsString := List[0].kolon1;

//
end;

procedure TfrmPopupDBVerticalGridForm.cxButtonCClick(Sender: TObject);
begin
  inherited;
  Ado.Append;
  Ado.FieldByName('PersonelDosyaNo').AsString := '0';
  Ado.post;
end;

procedure TfrmPopupDBVerticalGridForm.cxDBNavigator1ButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
 // if AButtonIndex = 6 then  Ado.Append;

end;

procedure TfrmPopupDBVerticalGridForm.FormActivate(Sender: TObject);
begin
   if frmTop_ = 0
   Then frmTop_ := Trunc(TScreen(frmPopupDBVerticalGridForm).DesktopHeight/2);
   if frmLeft_ = 0
   Then frmLeft_ := Trunc(TScreen(frmPopupDBVerticalGridForm).DesktopWidth/2);

   Top := frmTop_ - Trunc(Height/2);
   Left := frmLeft_ - Trunc(Width/2);
end;

end.
