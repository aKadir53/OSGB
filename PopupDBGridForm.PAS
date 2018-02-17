unit PopupDBGridForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, jpeg, kadir,kadirType,kadirLabel,
  dxGDIPlusClasses, cxGraphics, cxControls,GirisUnit,StrUtils,Variants,
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
  cxImageComboBox, cxMemo,adoDb,cxDBLookupComboBox,cxButtonEdit;

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
    ListeNaceKods: TListeAc;
    procedure FormCreate(Sender: TObject);
    procedure txtMsgEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Yukle;
    procedure SetGrid;
    procedure txtTablePropertiesChange(Sender: TObject);
    procedure ADOBeforePost(DataSet: TDataSet);
    procedure NaceKodPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure TfrmPopupDBGridForm.NaceKodPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  List : ArrayListeSecimler;
begin
   List := ListeNaceKods.ListeGetir;
   if High (List) < 0 then Exit;
   cxGrid3.Dataset.edit;
   cxGrid3.Dataset.FieldByName('NaceKod').AsString := List[0].kolon1;
   cxGrid3.Dataset.FieldByName('tehlikeSinifi').AsString := List[0].kolon4;



 //  TcxImageComboBoxProperties(DBgrid.Columns[0].Properties).
end;

procedure TfrmPopupDBGridForm.ADOBeforePost(DataSet: TDataSet);
begin
  inherited;
  case Tag of
  TagfrmSube :
        begin
           cxGrid3.Dataset.FieldByName('SirketKod').AsString := _firmaKod_;
        end;
  end;
end;

function TfrmPopupDBGridForm.Init(Sender: TObject) : Boolean;
begin
  inherited;
  Result := False;
  case abs(Tag) of
    TagfrmBolum,TagfrmBirim :
    begin
      txtTable.Visible := True;
      txtTable.Conn := Datalar.ADOConnection2;
      txtTable.TableName := 'PopupDBGridFormTabloTanim';
      txtTable.ValueField := 'id';
      txtTable.DisplayField := 'tanimi';
      txtTable.Filter := '';
      txtTable.BosOlamaz := True;
      OrtakEventAta(txtTable);
      indexFieldName := '1=1';
      cxPanel.Visible := false;
      SayfaCaption('','','','','');

      case Tag of
      -1*TagfrmBolum :
                 begin
                   txtTable.EditValue := 1;
                   txtTable.Enabled := False;
                 end;
      -1*TagfrmBirim :
                 begin
                   txtTable.EditValue := 2;
                   txtTable.Enabled := False;
                 end;

      end;
      Result := True;
    end;

    TagfrmSube :
    begin
        ClientHeight := 300;
        ClientWidth := 700;
        TableName := 'SIRKET_SUBE_TNM';
        _fields_ := 'sirketKod,subeKod,subeTanim,subeSiciNo,subeDoktor,IGU,BolgeMudurlukSicilNo,MuayeneProtokolNo,DoktorCalismaDakika,IGUCalismaDakika,NaceKod,tehlikeSinifi';
        _fieldBaslik_ := ',ÞubeKodu,ÞubeTanimi,ÝþYeriSicilNo,Doktor,ÝþGüvenlikUzmaný,BölgeMdSicilNo,MuayeneProtokolNo,DoktorCalismaDakika,IGUCalismaDakika,NaceKodu,TehlikeSinifi';
        _fieldTips_ := 'string,string,string,string,ImageDoktorCombo,ImageDoktorCombo,string,string,string,stringi,ButtonEdit,ImageDoktorCombo';
        indexFieldName := 'sirketKod = ' + QuotedStr(_firmaKod_);
        cxPanel.Visible := false;
        cxGroupDoktorlar.Caption := 'Þube Bilgileri';
        cxGrid3.Dataset.BeforePost := ADOBeforePost;
        cxGrid3.Dataset.Connection := datalar.ADOConnection2;
        cxGrid3.Dataset.SQL.Text := 'Select sirketKod,subeKod,subeTanim,subeSiciNo,subeDoktor,IGU,BolgeMudurlukSicilNo,MuayeneProtokolNo,DoktorCalismaDakika,IGUCalismaDakika,NaceKod,tehlikeSinifi ' +
                                    ' from SIRKET_SUBE_TNM where sirketKod = ' + QuotedStr(_firmaKod_);
        cxGrid3.Dataset.Open;
        DBGrid.ClearItems;
        DBGrid.DataController.CreateAllItems(True);
        SetGrid;

        SayfaCaption('','','','','');
        Result := True;
    end;

    TagFirmaCalismalari :
    begin
        ClientHeight := 600;
        ClientWidth := 600;
    //    TableName := 'SIRKET_SUBE_TNM';
        _fields_ := 'id,grup,konu,gorevli,grupTanimi,Sec';
        _fieldsEdit_ := '0,0,0,0,0,1';
        _fieldBaslik_ := ',GrupKodu,Konu,Görevli,Grup,Seç';
        _fieldTips_ := 'string,string,string,string,string,Check';
      //  indexFieldName := 'sirketKod = ' + QuotedStr(_firmaKod_);
        cxPanel.Visible := false;
        cxGroupDoktorlar.Caption := 'Çalýþma Bilgileri';
        cxGrid3.Dataset.BeforePost := ADOBeforePost;
        cxGrid3.Dataset.Connection := datalar.ADOConnection2;
        cxGrid3.Dataset.SQL.Text := 'select id,grup,konu,gorevli,CKG.tanimi grupTanimi,Sec from CalismaKonulari CK ' +
                                    ' join CalismaKonuGruplari CKG on CKG.kod = CK.grup ' +
                                    ' order by CKG.kod ';
        //DBGrid.OptionsView.gro

        cxGrid3.Dataset.Open;
        DBGrid.ClearItems;
        DBGrid.DataController.CreateAllItems(True);
        SetGrid;

       // DBGrid.OptionsView.GroupByBox := True;
        DbGrid.OptionsCustomize.ColumnGrouping := True;
        DBGrid.Columns[1].Caption := '';
     //   DBGrid.Columns[0].Visible := False;
        DBGrid.Columns[1].Visible := False;
        DBGrid.Columns[2].Options.Editing := False;
        DBGrid.Columns[3].Options.Editing := False;
        DBGrid.Columns[4].Properties.ReadOnly := True;
        DBGrid.Columns[4].Caption := '';
        DBGrid.Columns[4].Visible := False;
        DBGrid.Columns[4].GroupIndex := 0;

        SayfaCaption('','','','','');
        Result := True;
    end;

  end;


end;


procedure TfrmPopupDBGridForm.SetGrid;
var
 i : integer;
 Columns,Baslik,Tips,Edits : TstringList;
 FItem : TcxImageComboBoxItem;
begin
  Columns := TStringList.Create;
  try
    Baslik := TStringList.Create;
    try
      Tips := TStringList.Create;
      try
        Edits := TStringList.Create;
        try
          Split(',',_fields_,Columns);
          Split(',',StringReplace (_fieldBaslik_, ' ', '<bozluk>', [rfReplaceAll]),Baslik);
          for i := 0 to Baslik.Count -1 do
            Baslik [i] := StringReplace (Baslik [i], '<bozluk>', ' ', [rfReplaceAll]);

          Split(',',_fieldTips_,Tips);
          Split(',',_fieldsEdit_,Edits);

          for i := 0 to Columns.Count - 1 do
          begin
            DBGrid.Columns[i].Caption := Baslik[i];
         //   DBgrid.Columns[i].Properties.ReadOnly := StrToBool(ifThen(Edits[i]='1','True','False'));
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

            if Tips[i] = 'Check' then
             begin
              DBgrid.Columns[i].PropertiesClassName := 'TcxCheckBoxProperties';
              TcxCheckBoxProperties(DBgrid.Columns[i].Properties).ValueChecked := 1;
              TcxCheckBoxProperties(DBgrid.Columns[i].Properties).ValueUnchecked := 0;
             end;

            if Tips[i] = 'saat' then
             begin
              DBgrid.Columns[i].PropertiesClassName := 'TcxDateEditProperties';
             end;

            if Tips[i] = 'ButtonEdit' then
             begin
              DBgrid.Columns[i].PropertiesClassName := 'TcxButtonEditProperties';
              TcxButtonEditProperties(DBgrid.Columns[i].Properties).OnButtonClick := NaceKodPropertiesButtonClick;
             end;


            if Tips[i] = 'ImageDoktorCombo' then
             begin
              if Columns[i] = 'subeDoktor' then
              begin
                DBgrid.Columns[i].PropertiesClassName := 'TcxImageComboBoxProperties';
                TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).ClearKey := 46;
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

              if Columns[i] = 'IGU' then
              begin
                DBgrid.Columns[i].PropertiesClassName := 'TcxImageComboBoxProperties';
                TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).ClearKey := 46;
                TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).Items.Clear;

                datalar.Ado_IGU.First;
                while not datalar.Ado_IGU.Eof do
                begin
                  FItem := TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).Items.add;
                  FItem.Value := datalar.Ado_IGU.FieldByName('kod').AsString;
                  FItem.Description := datalar.Ado_IGU.FieldByName('tanimi').AsString;
                  datalar.Ado_IGU.Next;
                end;
              end;

              if Columns[i] = 'tehlikeSinifi' then
              begin
                DBgrid.Columns[i].PropertiesClassName := 'TcxImageComboBoxProperties';
                TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).Items.Clear;

                datalar.ADO_TehlikeSiniflari.First;
                while not datalar.ADO_TehlikeSiniflari.Eof do
                begin
                  FItem := TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).Items.add;
                  FItem.Value := datalar.ADO_TehlikeSiniflari.FieldByName('TehlikeSinifi').AsString;
                  FItem.Description := datalar.ADO_TehlikeSiniflari.FieldByName('tanimi').AsString;
                  datalar.ADO_TehlikeSiniflari.Next;
                end;
              end;
             end;

            DBgrid.Columns[i].Width := 70;
          end;
          DBGrid.Columns[0].Visible := false;
        finally
          Edits.Free;
        end;
      finally
        Tips.Free;
      end;
    finally
      Baslik.Free;
    end;
  finally
    Columns.Free;
  end;
end;

procedure TfrmPopupDBGridForm.Yukle;
begin
  inherited;
  DBGrid.DataController.DataSource.DataSet := sqlRun;
  DBGrid.DataController.GridView.ClearItems;
  DBGrid.DataController.CreateAllItems(True);
  SetGrid;
end;

procedure TfrmPopupDBGridForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if (DBGrid.DataController.DataSource.DataSet.State in [dsEdit, dsInsert]) then
    if ModalResult = mrYes then
      DBGrid.DataController.DataSource.DataSet.Post
     else
      DBGrid.DataController.DataSource.DataSet.Cancel;
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
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select * from PopupDBGridFormTabloTanim where id = ' + varToStr(txtTable.EditingValue);
    datalar.QuerySelect(ado,sql);

    TableName := ado.FieldByName('tableName').AsString;
    _fields_ := ado.FieldByName('_fields_').AsString;
    _fieldBaslik_ := ado.FieldByName('_fieldBaslik_').AsString;
    _fieldTips_ := ado.FieldByName('_fieldTips_').AsString;
    Yukle;
  finally
    ado.Free;
  end;
end;

procedure TfrmPopupDBGridForm.FormShow(Sender: TObject);
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
