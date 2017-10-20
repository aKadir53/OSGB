unit sorguRaporCalistir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, ExtCtrls, Grids, BaseGrid, AdvGrid,strUtils,
  db, kadir, adodb,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxLookAndFeels, cxLookAndFeelPainters, DBTables, AdvObj;


type
  TfrmRaporCalistir = class(TForm)
    pnlTitle: TPanel;
    pnlToolBar: TPanel;
    Image2: TImage;
    PanelSource: TPanel;
    btnAra: TsBitBtn;
    pnlOnay: TPanel;
    txtinfo: TLabel;
    btnSend: TsBitBtn;
    btnVazgec: TsBitBtn;
    gridParams: TAdvStringGrid;
    txtHatalar: TMemo;
    DataSource1: TDataSource;

   procedure sp_params(sp , kod : string);
    procedure gridParamsGetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure btnSendClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRaporCalistir: TfrmRaporCalistir;
  sp_name , _kod : string;
  dataset : Tdataset;

implementation
 uses data_model1,rapor,
  cxGridDBBandedTableView, Sorgulamalar;
{$R *.dfm}


procedure TfrmRaporCalistir.sp_params(sp , kod : string);
var
  sql : string;
  s : integer;
  ado : TADOQuery;
begin
    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;

 (*   ado.close;
    ado.SQL.Clear;
    sql := 'exec ' + sp;
    datalar.QuerySelect(ado,sql); *)


    sp_name := sp;
    _kod := kod;

    sql := 'select name,' +
           '(case xtype ' +
                  ' when 167 then ''string''' +
                  ' when 56 then ''integer''' +
                  ' when 62 then ''float''' +
                  ' when 61 then ''tarih'' end ' +
           ') as tip from syscolumns where id = ( select id from sysobjects where name = ' + QuotedStr(sp) + ')';
    ado.close;
    ado.SQL.Clear;
    datalar.QuerySelect(ado,sql);
//    sp_params := datalar.ADO_SQL4;

    Grid_Temizle(gridParams);

    for s := 1 to ado.RecordCount do
    Begin
        gridParams.ints[0,s] := s;
        gridParams.Cells[1,s] := copy(ado.fieldbyname('name').AsString,2,100);
        gridParams.Cells[3,s] := ado.fieldbyname('tip').AsString;
        ado.Next;
        gridParams.AddRow;
    End;





end;



procedure TfrmRaporCalistir.gridParamsGetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin

   if gridParams.Cells[3,arow] = 'string'
   Then AEditor := edComboEdit;

   if gridParams.Cells[3,arow] = 'integer'
   Then AEditor := edSpinEdit;

   if gridParams.Cells[3,arow] = 'float'
   Then AEditor := edFloat;

   if gridParams.Cells[3,arow] = 'tarih'
   Then AEditor := edDateEdit;


end;

procedure TfrmRaporCalistir.btnSendClick(Sender: TObject);
var
   sql , sqlp , _prm_: string;
   s,pcount , ic ,rs: integer;
   ds : tdataset;
   ct : double;
    _footerItem: TcxGridDBTableSummaryItem;
    fieldTip : TFieldType;
begin

    pcount := gridParams.RowCount - 2;

    for s := 1 to pcount do
    Begin

       if gridParams.Cells[3,s] = 'tarih'
       Then Begin
           _prm_ := tarihal(strtodate(gridParams.Cells[2,s]));
       End
       Else _prm_ := gridParams.Cells[2,s];

        sqlp := sqlp + ',' + QuotedStr(_prm_);

    End;

     sql := 'exec ' + sp_name + ' ' + trim(copy(sqlp,2,1000));

     datalar.Ado_Sorgulamalar.Close;
     datalar.Ado_Sorgulamalar.SQL.Clear;
     datalar.QuerySelect(datalar.Ado_Sorgulamalar,sql);

   //  rs := 1;
   //  datalar.Ado_Sorgulamalar.Recordset := datalar.Ado_Sorgulamalar.NextRecordset(rs);


     ds := datalar.Ado_Sorgulamalar;
//     DataSource1.DataSet := ds;
//     frmSorguRapor.cxGridDBBandedTableView1.DataController.DataSource := DataSource1;
//     frmSorguRapor.cxGridDBBandedTableView1.DataController.CreateAllItems(true);



     frmSorgulamalar.cxGrid3DBBandedTableView1.ClearItems;
     frmSorgulamalar.cxGrid3DBBandedTableView1.DataController.CreateAllItems(true);
     frmSorgulamalar.cxGrid3DBBandedTableView1.OptionsView.ColumnAutoWidth := true;


     with frmSorgulamalar.cxGrid3DBBandedTableView1.DataController.Summary.FooterSummaryItems.Add as
     TcxGridDBTableSummaryItem do
     begin
       Column := frmSorgulamalar.cxGrid3DBBandedTableView1.Columns[0];
       FieldName := frmSorgulamalar.cxGrid3DBBandedTableView1.Columns[0].DataBinding.FieldName;
       Kind := skCount;
     end;

     for ic := 0 to frmSorgulamalar.cxGrid3DBBandedTableView1.DataController.ItemCount - 1 do
     begin
          // frmIstatistik.cxGrid3DBBandedTableView1.Columns[ic].
           fieldTip := frmSorgulamalar.cxGrid3DBBandedTableView1.Columns[ic].DataBinding.Field.DataType;
           if (fieldTip in [ftFloat,ftInteger,ftCurrency])
           Then begin
           with frmSorgulamalar.cxGrid3DBBandedTableView1.DataController.Summary.FooterSummaryItems.Add as
           TcxGridDBTableSummaryItem do
           begin
             Column := frmSorgulamalar.cxGrid3DBBandedTableView1.Columns[ic];
             FieldName := frmSorgulamalar.cxGrid3DBBandedTableView1.Columns[ic].DataBinding.FieldName;
             Kind := skSum;
           end; // with
           end; // if
     end;


     frmSorgulamalar.Panel12.Caption := 'Listelenen Kayýt Sayýsý : ' +
     inttostr(frmSorgulamalar.cxGrid3DBBandedTableView1.DataController.RowCount);


     frmRapor.rapor1Data(datalar.Ado_Sorgulamalar,_kod,sp_name,'');
     frmRapor.ShowModal;
     datalar.ADO_RAPORLAR1.Active := false;
     frmSorgulamalar.cxPageControl2.ActivePageIndex := 1;

     close;




end;

end.
