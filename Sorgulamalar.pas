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
    Panel11: TPanel;
    Image3: TImage;
    txtAciklama: TcxDBMemo;
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
    txtSP_name: TcxImageComboKadir;
    txtRaporAdi: TcxTextEdit;
    txtRaporKodu: TcxTextEdit;
    btnSorgulamalarKaydet: TcxButton;
    btnSorgulamalarKapat: TcxButton;
    btnYeniSorgu: TcxButton;
    btnSorguyuDegistir: TcxButton;
    btnSorguyuSil: TcxButton;
    btnSorguCalistir: TcxButton;
    N2: TMenuItem;
    E3: TMenuItem;
    btnSQLRun: TcxButton;
    procedure Raporlar;
    procedure O1Click(Sender: TObject);
    procedure btnSorgulamalarKaydetClick(Sender: TObject);
    procedure btnSorgulamalarKapatClick(Sender: TObject);
    procedure btnYeniSorguClick(Sender: TObject);
    procedure btnSorguyuSilClick(Sender: TObject);
    procedure btnSorguCalistirClick(Sender: TObject);
    procedure E3Click(Sender: TObject);
    procedure btnSQLRunClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmSorgulamalar: TfrmSorgulamalar;
     sp : string;
implementation
   uses data_modul, sorguRaporCalistir;
{$R *.dfm}

function TfrmSorgulamalar.Init(Sender : TObject) : Boolean;
var
  key : word;
  sql : string;
  t1,t2 : Tdate;
  ado : TADOQuery;
begin
  Result := False;
  if not inherited Init(Sender) then exit;
  Raporlar;
end;

procedure TfrmSorgulamalar.btnSorguCalistirClick(Sender: TObject);
var
  kod : string;
  F : TGirisForm;
  GirisRecord : TGirisFormRecord;
begin
  sp := ADO_SQL1.fieldbyname('sp').AsString;
  kod := ADO_SQL1.fieldbyname('raporKodu').AsString;
  //gridRaporlar.Cells[2,gridRaporlar.Row];
 // Application.CreateForm(TfrmRaporCalistir, frmRaporCalistir);
  //GorselAyar(frmRaporCalistir,DATALAR.global_img_list4);
  GirisRecord.F_sp_ := sp;
  GirisRecord.F_kod_ := kod;
  F := FormINIT(TagfrmSorguCalistir,GirisRecord,ikHayir,'');
  if F <> nil then F.ShowModal;

 // frmRaporCalistir.sp_params(sp,kod);

end;

procedure TfrmSorgulamalar.btnSorgulamalarKapatClick(Sender: TObject);
begin
   Panel6.Visible := False;
   txtAciklama.Visible := true;
end;

procedure TfrmSorgulamalar.btnSorgulamalarKaydetClick(Sender: TObject);
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

procedure TfrmSorgulamalar.btnSorguyuSilClick(Sender: TObject);
var
  sql : string;
begin

    if MrYes = ShowMessageSkin('Rapor Bilgisi Silinecek','Eminmisiniz?','','msg')
    Then Begin
         sql := 'delete from Raporlar1 where raporKodu = ' + QuotedStr(ADO_SQL1.fieldbyname('raporKodu').AsString);
         datalar.ADO_SQL.close;
         datalar.ADO_SQL.SQL.Clear;
         datalar.QueryExec(datalar.ADO_SQL,sql);
    End;

    Raporlar;

end;

procedure TfrmSorgulamalar.btnYeniSorguClick(Sender: TObject);
var
   sql : string;
begin

    txtSP_name.TableName := 'VW_Spler';
    txtSP_name.ValueField := 'id';
    txtSP_name.DisplayField := 'name';
    txtSP_name.Filter := '';


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

procedure TfrmSorgulamalar.btnSQLRunClick(Sender: TObject);
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
procedure TfrmSorgulamalar.E3Click(Sender: TObject);
begin
    SaveDialog1.FileName := sp + '.xls';
    if SaveDialog1.Execute = True
    Then
      ExportGridToExcel(SaveDialog1.FileName,cxGrid3 ,False,True);
end;

procedure TfrmSorgulamalar.FormCreate(Sender: TObject);
begin
  Menu := PopupMenu1;
  cxPanel.Visible := False;
end;

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
begin
    sql := 'select * from raporlar1';
    datalar.QuerySelect(ADO_SQL1,sql);
end;



end.
