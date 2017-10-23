unit Sorgulamalar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinMcSkin, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  kadir,GirisUnit,
  cxContainer, cxEdit, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, ADODB,
  StdCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,cxGridDBTableView,
  dxGDIPlusClasses, ExtCtrls, GridsEh, DBGridEh, cxTextEdit, cxMemo, cxDBEdit,
  Buttons, sBitBtn, sComboBox, Mask, EditType, cxPC,cxGridExportlink, Menus,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMoneyTwins,
  dxSkinsDefaultPainters, cxMaskEdit, cxDropDownEdit, cxImageComboBox,
  KadirLabel;

type
  TfrmSorgulamalar = class(TGirisUnit)
    cxPageControl2: TcxPageControl;
    cxTabSheet6: TcxTabSheet;
    Panel5: TPanel;
    Splitter1: TSplitter;
    Panel6: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    sBitBtn19: TsBitBtn;
    sBitBtn23: TsBitBtn;
    cxDBMemo1: TcxDBMemo;
    gridRaporlar: TDBGridEh;
    Panel11: TPanel;
    Image3: TImage;
    sBitBtn8: TsBitBtn;
    sBitBtn18: TsBitBtn;
    sBitBtn9: TsBitBtn;
    sBitBtn24: TsBitBtn;
    txtAciklama: TcxDBMemo;
    cxTabSheet7: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    Panel7: TPanel;
    sBitBtn20: TsBitBtn;
    Panel12: TPanel;
    cxTabSheet8: TcxTabSheet;
    SQL_text: TMemo;
    Panel8: TPanel;
    sBitBtn21: TsBitBtn;
    sBitBtn22: TsBitBtn;
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
    Menu: TPopupMenu;
    Y1: TMenuItem;
    R1: TMenuItem;
    R2: TMenuItem;
    N1: TMenuItem;
    txtSP_name: TcxImageComboKadir;
    txtRaporAdi: TcxTextEdit;
    txtRaporKodu: TcxTextEdit;
    procedure sBitBtn8Click(Sender: TObject);
    procedure sBitBtn9Click(Sender: TObject);
    procedure sBitBtn24Click(Sender: TObject);
    procedure Raporlar;
    procedure sBitBtn19Click(Sender: TObject);
    procedure sBitBtn23Click(Sender: TObject);
    procedure sBitBtn20Click(Sender: TObject);
    procedure sBitBtn21Click(Sender: TObject);
    procedure O1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSorgulamalar: TfrmSorgulamalar;
     sp : string;
implementation
   uses data_modul, sorguRaporCalistir;
{$R *.dfm}

procedure TfrmSorgulamalar.O1Click(Sender: TObject);
var
  ic : integer;
  fieldTip : TFieldType;
  _Kind : TcxSummaryKind;
begin
  inherited;
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
   s : integer;
   ikon : TBitmap;
begin
    ikon := TBitmap.Create;
    datalar.global_img_list4.GetBitmap(3,ikon);
    sql := 'select * from raporlar1';
    datalar.QuerySelect(ADO_SQL1,sql);
end;



procedure TfrmSorgulamalar.sBitBtn19Click(Sender: TObject);
var
  sql : string;
  ado : TADOQuery;
begin

    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;

    sql := 'select * from raporlar1 where raporkodu = ' + QuotedStr(txtRaporKodu.Text);
    ado.Close;
    ado.SQL.Clear;
    datalar.QuerySelect(ado,sql);

    if ado.Eof
    Then Begin
        sql := 'insert into raporlar1 (raporKodu,raporAdi,sp,rapor,aciklama) ' +
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

        sql := 'update raporlar1 ' +
               ' set raporadi = ' + QuotedStr(txtRaporAdi.Text) +
               ',sp = ' + QuotedStr(txtSP_name.Text) +
               ',aciklama = ' + QuotedStr(cxDBMemo1.text) +
               ' where raporkodu = ' + QuotedStr(txtRaporKodu.Text);

        ado.Close;
        ado.SQL.Clear;

        datalar.QueryExec(ado,sql);

        Raporlar;

        //panel2.Visible := false;

    End;

    ado.Free;

end;

procedure TfrmSorgulamalar.sBitBtn20Click(Sender: TObject);
begin
    SaveDialog1.FileName := sp + '.xls';
    if SaveDialog1.Execute = True
    Then
      ExportGridToExcel(SaveDialog1.FileName,cxGrid3 ,False,True);

end;
procedure TfrmSorgulamalar.sBitBtn21Click(Sender: TObject);
var
  sql : string;
  dset : TDataSet;
  ds : TDataSource;
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

procedure TfrmSorgulamalar.sBitBtn23Click(Sender: TObject);
begin
         Panel6.Visible := False;
         txtAciklama.Visible := true;

end;

procedure TfrmSorgulamalar.sBitBtn24Click(Sender: TObject);
var
  kod : string;

begin
  sp := ADO_SQL1.fieldbyname('sp').AsString;
  kod := ADO_SQL1.fieldbyname('raporKodu').AsString;
  //gridRaporlar.Cells[2,gridRaporlar.Row];
  Application.CreateForm(TfrmRaporCalistir, frmRaporCalistir);
  GorselAyar(frmRaporCalistir,DATALAR.global_img_list4);
  frmRaporCalistir.sp_params(sp,kod);
  frmRaporCalistir.ShowModal;
  frmRaporCalistir := nil;
end;

procedure TfrmSorgulamalar.sBitBtn8Click(Sender: TObject);
var
   sql : string;
begin

    if UserRight('Genel Sorgulamalar', 'Yeni Deðiþtir') = False
    then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
    end;


    sql := 'select name from sysobjects where xtype = ''P'' and category = 0 order by name';
    datalar.ADO_SQL5.Close;
    datalar.ADO_SQL5.SQL.Clear;




    ComboDoldur(datalar.ADO_SQL5,sql,txtSP_name);


    case TsBitBtn(sender).Tag of
      27 : Begin
              panel6.Visible := true;
              txtAciklama.Visible := false;

              sql := 'declare @dn varchar(3) ' +
                     'select @dn = convert(varchar,isnull(max(raporKodu),0)+1) from Raporlar1 ' +
                     ' select (replicate(''0'',3-len(@Dn)) +@Dn) as RaporNo ' ;
              datalar.ADO_SQL3.close;
              datalar.ADO_SQL3.SQL.Clear;
              datalar.QuerySelect(datalar.ADO_SQL3,sql);

              txtRaporKodu.Text := datalar.ADO_SQL3.fieldbyname('RaporNo').AsString;
           End;
      25 : Begin
              panel6.Visible := true;
                txtAciklama.Visible := false;
              txtRaporKodu.Text := ADO_SQL1.fieldbyname('raporKodu').AsString;
              txtRaporAdi.Text := ADO_SQL1.fieldbyname('raporAdi').AsString;
              txtSP_name.Text := ADO_SQL1.fieldbyname('sp').AsString;
            End;

    end;


end;

procedure TfrmSorgulamalar.sBitBtn9Click(Sender: TObject);
var
  sql : string;
begin
   if UserRight('Genel Sorgulamalar', 'Yeni Deðiþtir') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;

    if MrYes = ShowMessageSkin('Rapor Bilgisi Silinecek','Eminmisiniz?','','msg')
    Then Begin
         sql := 'delete from Raporlar1 where raporKodu = ' + QuotedStr(ADO_SQL1.fieldbyname('raporKodu').AsString);
         datalar.ADO_SQL.close;
         datalar.ADO_SQL.SQL.Clear;
         datalar.QueryExec(datalar.ADO_SQL,sql);
    End;

    Raporlar;

end;

end.
