unit Sorgulamalar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinMcSkin, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  kadir,GirisUnit,KadirLabel,KadirType, GetFormClass,
  cxContainer, cxEdit, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, ADODB,
  StdCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,cxGridDBTableView,
  dxGDIPlusClasses, ExtCtrls, GridsEh, DBGridEh, cxTextEdit, cxMemo, cxDBEdit,
  Buttons, sBitBtn, sComboBox, Mask, EditType, cxPC,cxGridExportlink, Menus,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMoneyTwins,
  dxSkinsDefaultPainters, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxButtons;

type
  TfrmSorgulamalar = class(TGirisForm)
    cxPageControl2: TcxPageControl;
    cxTabSheet6: TcxTabSheet;
    Panel5: TPanel;
    Splitter1: TSplitter;
    Panel6: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    cxDBMemo1: TcxDBMemo;
    gridRaporlar: TDBGridEh;
    cxTabSheet7: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    cxTabSheet8: TcxTabSheet;
    SQL_text: TMemo;
    Panel8: TPanel;
    SQL_grid: TDBGridEh;
    ADO_SQL1: TADOQuery;
    DataSource2: TDataSource;
    SaveDialog1: TSaveDialog;
    DataSource1: TDataSource;
    ADO_SQL11: TADOQuery;
    DataSource3: TDataSource;
    PopupMenu1: TPopupMenu;
    T1: TMenuItem;
    O1: TMenuItem;
    E1: TMenuItem;
    E2: TMenuItem;
    ToolMenu: TPopupMenu;
    Y1: TMenuItem;
    R1: TMenuItem;
    R2: TMenuItem;
    N1: TMenuItem;
    txtSP_name_: TcxImageComboKadir;
    txtRaporAdi: TcxTextEdit;
    txtRaporKodu: TcxTextEdit;
    btnSorgulamalarKaydet: TcxButton;
    btnSorgulamalarKapat: TcxButton;
    N2: TMenuItem;
    E3: TMenuItem;
    btnSQLRun: TcxButton;
    txtSP_name: TcxComboBox;
    txtParams: TcxTextEdit;
    txtParamsTip: TcxTextEdit;
    txtIC_Params: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    prm_Yenile: TcxButton;
    pnlSP: TPanel;
    procedure Raporlar;
    procedure O1Click(Sender: TObject);
    procedure btnSorgulamalarKaydetClick(Sender: TObject);
    procedure btnSorgulamalarKapatClick(Sender: TObject);
    procedure E3Click(Sender: TObject);
    procedure btnSQLRunClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure prm_YenileClick(Sender: TObject);
    procedure ADO_SQL1AfterScroll(DataSet: TDataSet);
    procedure Y1Click(Sender: TObject);
    procedure SatirYukle;

  private
    { Private declarations }
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmSorgulamalar: TfrmSorgulamalar;
     sp,cap : string;
implementation
   uses data_modul, sorguRaporCalistir;
{$R *.dfm}

function TfrmSorgulamalar.Init(Sender : TObject) : Boolean;
begin
  Result := False;
//  if not inherited Init(Sender) then exit;
  Raporlar;
  cap := cxTab.Tabs[0].Caption;
  Result := True;
end;

procedure TfrmSorgulamalar.ADO_SQL1AfterScroll(DataSet: TDataSet);
begin
  inherited;
  if Panel6.Visible = True then SatirYukle;
end;

procedure TfrmSorgulamalar.btnSorgulamalarKapatClick(Sender: TObject);
begin
   Panel6.Visible := False;
   //txtAciklama.Visible := true;
end;

procedure TfrmSorgulamalar.btnSorgulamalarKaydetClick(Sender: TObject);
var
  sql : string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    sql := 'select * from OSGB_MASTER.DBO.raporlar1 where raporkodu = ' + QuotedStr(txtRaporKodu.Text);
    ado.Close;
    ado.SQL.Clear;
    datalar.QuerySelect(ado,sql);

    if ado.Eof
    Then Begin
      sql := 'insert into OSGB_MASTER.DBO.raporlar1 (raporKodu,raporAdi,sp,rapor,aciklama) ' +
             ' values(' + QuotedStr(txtRaporKodu.Text) + ',' +
                          QuotedStr(txtRaporAdi.Text)  + ',' +
                          QuotedStr(txtSP_name.Text) + ',' +
                          QuotedStr('<?xml version="1.0" encoding="utf-8"?>') + ',' +
                          QuotedStr(cxDBMemo1.text) +
                          ')';
      ado.Close;
      ado.SQL.Clear;

      datalar.QueryExec(ado,sql);

      Raporlar;

    //    panel2.Visible := false;
    End
    Else Begin
      sql := 'update OSGB_MASTER.DBO.raporlar1 ' +
             ' set raporadi = ' + QuotedStr(txtRaporAdi.Text) +
             ',sp = ' + QuotedStr(txtSP_name.Text) +
             ',aciklama = ' + QuotedStr(cxDBMemo1.text) +
             ',_params_ = ' + QuotedStr(txtParams.Text) +
             ',_paramsTip_ = ' + QuotedStr(txtParamsTip.Text) +
             ',IC_Params = ' + QuotedStr(txtIC_Params.Text) +
             ' where raporkodu = ' + QuotedStr(txtRaporKodu.Text);

      ado.Close;
      ado.SQL.Clear;
      datalar.QueryExec(ado,sql);
      Raporlar;
      //panel2.Visible := false;
    End;
  finally
    ado.Free;
  end;

end;

procedure TfrmSorgulamalar.prm_YenileClick(Sender: TObject);
var
  sql , sp : string;
  s : integer;
  ado : TADOQuery;
begin

    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;
    try
      sql := 'select name,' +
             '(case xtype ' +
                    ' when 167 then ''string''' +
                    ' when 56 then ''int''' +
                    ' when 62 then ''float''' +
                    ' when 61 then ''tarih'' end ' +
             ') as tip from syscolumns where id = ( select id from sysobjects where name = ' + QuotedStr(txtSP_name.EditingText) + ')';
      ado.close;
      ado.SQL.Clear;
      datalar.QuerySelect(ado,sql);

      txtParams.Text := '';
      txtParamsTip.Text := '';

      for s := 1 to ado.RecordCount do
      Begin
        txtParams.Text := txtParams.Text + ado.FieldByName('name').AsString + ',';
        txtParamsTip.Text := txtParamsTip.Text + ado.FieldByName('tip').AsString + ',';
        ado.next;
      End;


    finally
      ado.free;
    end;

end;

procedure TfrmSorgulamalar.btnSQLRunClick(Sender: TObject);
var
  sql : string;
begin
    ADO_SQL11.close;
    ADO_SQL11.SQL.Clear;
    sql := copy(trim(SQL_text.Text),1,6);
    if UpperCase(sql) = 'CREATE'
    Then Begin
    datalar.QueryExec(ADO_SQL11,SQL_text.Lines.Text);

    ENd
    else

    datalar.QuerySelect(ADO_SQL11,SQL_text.Lines.Text);

    SQL_grid.DataSource := DataSource3;

end;
procedure TfrmSorgulamalar.E3Click(Sender: TObject);
begin
    SaveDialog1.FileName := sp + '.xls';
    if SaveDialog1.Execute = True
    Then
      ExportGridToExcel(SaveDialog1.FileName,cxGrid3 ,False,True);
end;

procedure TfrmSorgulamalar.FormCreate(Sender: TObject);
begin
  Menu := ToolMenu;
  cxPanel.Visible := False;
  Image2.Visible := False;
end;

procedure TfrmSorgulamalar.O1Click(Sender: TObject);
var
  ic : integer;
  fieldTip : TFieldType;
  _Kind : TcxSummaryKind;
begin
  inherited;
  _Kind := skNone;
  if TMenuItem(sender).Tag = 0
  Then
   _Kind := skSum
  Else
  if TMenuItem(sender).Tag = 1
  Then
   _Kind := skAverage
  Else
  if TMenuItem(sender).Tag = 2
  Then
   _Kind := skMax
  Else
  if TMenuItem(sender).Tag = 3
  Then
   _Kind := skMin;


     for ic := 0 to cxGrid3DBBandedTableView1.DataController.ItemCount - 1 do
     begin
          // frmIstatistik.cxGrid3DBBandedTableView1.Columns[ic].
           fieldTip := frmSorgulamalar.cxGrid3DBBandedTableView1.Columns[ic].DataBinding.Field.DataType;
           if (fieldTip in [ftFloat,ftInteger,ftCurrency])
           Then begin
           with cxGrid3DBBandedTableView1.DataController.Summary.FooterSummaryItems[ic] as
           TcxGridDBTableSummaryItem do
           begin
            // Column := cxGrid3DBBandedTableView1.Columns[ic];
            // FieldName := cxGrid3DBBandedTableView1.Columns[ic].DataBinding.FieldName;
             Kind := _Kind;
           end; // with
           end; // if
     end;

  cxGrid3DBBandedTableView1.DataController.Refresh;

end;

procedure TfrmSorgulamalar.Raporlar;
var
  sql : string;
begin
  sql := 'select * from OSGB_MASTER.DBO.raporlar1';
  datalar.QuerySelect(ADO_SQL1,sql);
end;

procedure TfrmSorgulamalar.SatirYukle;
begin
    panel6.Visible := true;
   //   txtAciklama.Visible := false;
    txtRaporKodu.Text := ADO_SQL1.fieldbyname('raporKodu').AsString;
    txtRaporAdi.Text := ADO_SQL1.fieldbyname('raporAdi').AsString;
    txtSP_name.Text := ADO_SQL1.fieldbyname('sp').AsString;
    txtParams.Text := ADO_SQL1.fieldbyname('_params_').AsString;
    txtParamsTip.Text := ADO_SQL1.fieldbyname('_paramsTip_').AsString;
    txtIC_Params.Text := ADO_SQL1.fieldbyname('IC_Params').AsString;
end;

procedure TfrmSorgulamalar.Y1Click(Sender: TObject);
var
  sql : string;
  kod : string;
  F : TGirisForm;
  GirisRecord : TGirisFormRecord;
  ado : TADOQuery;
begin
  inherited;
  ComboDoldurName('select name from VW_Spler',txtSP_name);
  case TMenuItem(sender).Tag of
   -1 : begin
              ado := TADOQuery.Create(nil);
              ado.Connection := datalar.ADOConnection2;
              try
                panel6.Visible := true;

                sql := 'declare @dn varchar(3) ' +
                       'select @dn = convert(varchar,isnull(max(raporKodu),0)+1) from OSGB_MASTER.DBO.Raporlar1 ' +
                       ' select (replicate(''0'',3-len(@Dn)) +@Dn) as RaporNo ' ;

                datalar.QuerySelect(ado,sql);
                txtRaporKodu.Text := ado.fieldbyname('RaporNo').AsString;
              finally
                ado.free;
              end;
        end;
   -2 : begin
          SatirYukle;
        end;
   -3 : begin
   (*
          if MrYes = ShowMessageSkin('Rapor Bilgisi Silinecek','Emin misiniz?','','msg')
          Then Begin
               sql := 'delete from Raporlar1 where raporKodu = ' + QuotedStr(ADO_SQL1.fieldbyname('raporKodu').AsString);
               datalar.QueryExec(sql);
          End;
     *)
          Raporlar;
        end;
   -4 : begin
            //cxTab.Tabs[0].Caption := '';
            //cxTab.Tabs[0].Caption := cap + ' - ' + ADO_SQL1.fieldbyname('raporAdi').AsString;

            sp := ADO_SQL1.fieldbyname('sp').AsString;
            kod := ADO_SQL1.fieldbyname('raporKodu').AsString;

            GirisRecord.F_sp_ := sp;
            GirisRecord.F_kod_ := kod;

            F := FormINIT(TagfrmSorguCalistir,GirisRecord,ikHayir,'');

            TGirisForm(F)._fields_ := ADO_SQL1.fieldbyname('_params_').AsString;
            TGirisForm(F)._fieldTips_ := ADO_SQL1.fieldbyname('_paramsTip_').AsString;
            TGirisForm(F)._ICParams_ := ADO_SQL1.fieldbyname('IC_Params').AsString;

            TGirisForm(F).cxTab.Tabs[0].Caption := ADO_SQL1.fieldbyname('raporAdi').AsString;

            if F <> nil then F.ShowModal;
        end;


  end;


end;

end.
