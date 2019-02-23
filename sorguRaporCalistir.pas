unit sorguRaporCalistir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, ExtCtrls, Grids, BaseGrid, AdvGrid,strUtils,
  db, kadir, adodb, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  kadirLabel,kadirType,GirisUnit,cxImageComboBox,cxMaskEdit,cxTextEdit,cxRichEdit,
  cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,cxCheckBox,cxButtonEdit,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxLookAndFeels, cxLookAndFeelPainters, DBTables, AdvObj, Menus,
  dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, cxButtons, cxStyles,
  dxSkinscxPCPainter, cxCurrencyEdit, dxmdaset, cxGridBandedTableView,
  cxGridDBBandedTableView;


type
  TfrmRaporCalistir = class(TGirisForm)
    pnlOnay: TPanel;
    txtinfo: TLabel;
    DataSource1: TDataSource;
    btnCalistirGoruntule: TcxButton;
    memParamsData: TdxMemData;
    memParamsDataname: TStringField;
    memParamsDatatip: TStringField;
    memParamsData_DS: TDataSource;
    memParamsDatavalue: TStringField;
    memParamsDataparams: TStringField;
    memParamsDatasira: TIntegerField;

   procedure sp_params(_sp_ , _kod_ : string);
    procedure btnCalistirGoruntuleClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SetGrid;
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    sp , kod : string;
    function Init(Sender: TObject) : Boolean; override;
    { Public declarations }
  end;

var
  frmRaporCalistir: TfrmRaporCalistir;
  sp_name , _kod : string;
  ParametreYukleOK : integer = 0;
  dataset : Tdataset;

implementation
 uses data_modul,rapor,Sorgulamalar;
{$R *.dfm}


function TfrmRaporCalistir.Init(Sender : TObject) : Boolean;
begin
 Image2.Visible := False;
 sp_params(_sp_,_kod_);
 result := True;
end;

procedure TfrmRaporCalistir.sp_params(_sp_ , _kod_ : string);
var
  sql : string;
  s : integer;
  ado : TADOQuery;
  Columns : TStringList;
begin



  //  ado := TADOQuery.Create(nil);
 //   ado.Connection := datalar.ADOConnection2;

    Columns := TStringList.Create;
    try
        Split(',',_fields_,Columns);
        sp_name := _sp_;
        _kod := _kod_;
  (*
    sql := 'select name,' +
           '(case xtype ' +
                  ' when 167 then ''string''' +
                  ' when 56 then ''integer''' +
                  ' when 62 then ''float''' +
                  ' when 61 then ''tarih'' end ' +
           ') as tip from syscolumns where id = ( select id from sysobjects where name = ' + QuotedStr(_sp_) + ')';
    ado.close;
    ado.SQL.Clear;
    datalar.QuerySelect(ado,sql);
    *)
//        ClientHeight := dxStatusBar1.Height + cxTopPanel.Height + pnlTitle.Height + btnCalistirGoruntule.Height + 50 + (Columns.Count * 23);

    finally
   //  ado.free;
     Columns.Free;
    end;


end;

procedure TfrmRaporCalistir.FormCreate(Sender: TObject);
begin
  cxPanel.Visible := False;
  SayfaCaption('Parametreler','','','','');
end;

procedure TfrmRaporCalistir.FormShow(Sender: TObject);
begin
  inherited;
  SetGrid;
end;

procedure TfrmRaporCalistir.btnCalistirGoruntuleClick(Sender: TObject);
var
   sql , sqlp , _prm_ ,prmAd : string;
   s,pcount , ic ,rs , i: integer;
   ds : tdataset;
   ct : double;
    _footerItem: TcxGridDBTableSummaryItem;
    fieldTip : TFieldType;
    TopluDataset : TDataSetKadir;
    Columns : TStringList;
    obje : TComponent;
begin
    Columns := TStringList.Create;
     try
       Split(',',_fields_,Columns);
       for i := 0 to Columns.Count - 1 do
       begin
        _prm_ := 'Param_'+copy(Columns[i],2,100);
        prmAd := Columns[i];
        obje := FindComponent(_prm_);

        if vartoStr(TcxCustomEdit(obje).EditValue) = '' then Continue; // boþ ise parametreyi atla sp default olsun

        if obje.ClassName = 'TcxDateEditKadir'
        then
          sqlp := sqlp + ',' + prmAd + ' = ' + TcxDateEditKadir(obje).GetSQLValue
        else
          sqlp := sqlp + ',' + prmAd + ' = ' + QuotedStr(vartoStr(TcxCustomEdit(obje).EditValue));
       end;

     finally
       Columns.Free;
     end;

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


      TopluDataset.Dataset0 := datalar.Ado_Sorgulamalar;
     PrintYap(_kod,sp_name,'',TopluDataset,pTNone);

     datalar.ADO_RAPORLAR1.Active := false;
     frmSorgulamalar.cxPageControl2.ActivePageIndex := 1;

     close;

end;


procedure TfrmRaporCalistir.SetGrid;
var
 i,r,colswidth : integer;
 Columns,Baslik,Edits,IC_Params,IC_Param,Tips : TStringList;
 FItem : TcxImageComboBoxItem;
 ado : TADOQuery;
 field1,field2,table,MaskEdit,filter,prm,prmAd : string;
 IC : TcxImageComboKadir;
 Tarih : TcxDateEditKadir;
begin
    if _fieldTips_ = '' then exit;

    Tips := TStringList.Create;
    IC_Params := TStringList.Create;
    IC_Param := TStringList.Create;
    Columns := TStringList.Create;

    try
       Split(',',_fields_,Columns);
       Split(',',_fieldTips_,Tips);
       ExtractStrings([';'],[],PChar(_ICParams_),IC_Params);

       for i := 0 to Columns.Count - 1 do
       begin
        prm := 'Param_'+copy(Columns[i],2,100);
        prmAd := copy(Columns[i],2,100);

        if SameText (Tips[i], 'int') then
         begin
           setDataStringCurr(self,prm,prmAd,kolon1,'',150,'0,',1);
         end;
        if SameText (Tips[i], 'string') then
         begin
          setDataString(self,prm,prmAd,Kolon1,'',150);

         end;
        if Pos('maskEdit',Tips[i]) > 0 then
         begin

         end;
        if SameText (Tips[i], 'memo') then
         begin

         end;
        if SameText (Tips[i], 'Check') then
         begin

         end;

        if SameText (Tips[i], 'CheckBit') then
         begin

         end;

        if SameText (Tips[i], 'tarih') then
         begin
            Tarih := TcxDateEditKadir.Create(self);
            setDataStringKontrol(self,Tarih,prm,prmAd,kolon1,'',150);
         end;

        if SameText (Tips[i], 'ButtonEdit') then
         begin
         end;


        if SameText (Tips[i], 'IC')
        then begin
             IC_Param.Clear;
             ExtractStrings([','],[],pchar(IC_Params[i]),IC_Param);
             if IC_Params.Count > 0 then
             begin
                table := StringReplace(IC_Param[0],'|',',', [rfReplaceAll]);

                IC := TcxImageComboKadir.Create(self);

                if table <> 'nil' then  // 0;nil,E|Evet-H|Hayýr-Y|Yok
                begin
                  field1 := IC_Param[1];
                  field2 := IC_Param[2];

                  if IC_Param.Count = 4
                  then
                   filter := ' where ' + IC_Param[3]
                  else
                   filter := '';

                  IC.Conn := Datalar.ADOConnection2;
                  IC.TableName := table;
                  IC.ValueField := field1;
                  IC.DisplayField := field2;
                  IC.BosOlamaz := True;
                end
                else
                begin
                  field1 := IC_Param[1];
                  field1 := StringReplace(field1,'|',';', [rfReplaceAll]);  // | to ;
                  field1 := StringReplace(field1,'-',',', [rfReplaceAll]);  // - to ,
                  IC.Conn := nil;
                  IC.ItemList := field1;
                end;
                IC.Filter := filter;
                OrtakEventAta(IC);
                setDataStringKontrol(self,IC,prm,prmAd,kolon1,'',150);
             end;

        end;

       end; // for end

       ClientHeight := dxStatusBar1.Height + cxTopPanel.Height  + btnCalistirGoruntule.Height + 50 + (Columns.Count * 23);

    finally
        Tips.Free;
        IC_Params.Free;
        IC_Param.Free;
        Columns.Free;
    end;

end;



end.
