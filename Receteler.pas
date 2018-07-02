unit Receteler;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxCurrencyEdit, cxGridLevel, cxGridBandedTableView, kadir,
  cxGridDBBandedTableView, cxGridCustomTableView, cxGridTableView, cxGridExportLink,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls, Mask,
   Buttons, sBitBtn, ExtCtrls, ADODB,kadirType,GirisUnit,KadirLabel,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, cxPC, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  rxToolEdit, ComCtrls, ToolWin, sToolBar, cxImageComboBox, Menus, cxContainer,
  cxTextEdit, cxGroupBox, cxLabel;

type
  TfrmReceteler = class(TGirisForm)
    pnlOnay: TPanel;
    txtinfo: TLabel;
    ADO_Receteler: TADOQuery;
    Ds_cxGrid2: TDataSource;
    Receteler_sayfalar: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid2: TcxGrid;
    ReceteDetay: TcxGridDBTableView;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Recete: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    ADO_ReceteDetay: TADOQuery;
    DataSource1: TDataSource;
    ReceteDetayilacKodu: TcxGridDBColumn;
    ReceteDetayilacAdi: TcxGridDBColumn;
    ReceteDetaykullanimZaman: TcxGridDBColumn;
    ReceteDetaykullanimAdet: TcxGridDBColumn;
    ReceteDetaykullanZamanUnit: TcxGridDBColumn;
    ReceteDetaykullanimAdet2: TcxGridDBColumn;
    ReceteDetayadet: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBBandedTableView9: TcxGridDBBandedTableView;
    cxGridDBBandedColumn27: TcxGridDBBandedColumn;
    cxGridDBBandedColumn28: TcxGridDBBandedColumn;
    cxGridDBBandedColumn29: TcxGridDBBandedColumn;
    cxGridDBBandedColumn30: TcxGridDBBandedColumn;
    cxGridDBBandedColumn31: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10: TcxGridDBBandedTableView;
    cxGridDBBandedColumn32: TcxGridDBBandedColumn;
    cxGridDBBandedColumn33: TcxGridDBBandedColumn;
    cxGridDBBandedTableView11: TcxGridDBBandedTableView;
    cxGridDBBandedTableView12: TcxGridDBBandedTableView;
    cxGridDBBandedColumn34: TcxGridDBBandedColumn;
    cxGridDBBandedColumn35: TcxGridDBBandedColumn;
    cxGridDBBandedColumn36: TcxGridDBBandedColumn;
    cxGridDBBandedColumn37: TcxGridDBBandedColumn;
    cxGridDBBandedColumn38: TcxGridDBBandedColumn;
    cxGridDBBandedColumn39: TcxGridDBBandedColumn;
    cxGridLevel3: TcxGridLevel;
    ADO_toplam: TADOQuery;
    DataSource2: TDataSource;
    cxGridDBTableView1ilacKodu: TcxGridDBColumn;
    cxGridDBTableView1ilacAdi: TcxGridDBColumn;
    cxGridDBTableView1toplamAdet: TcxGridDBColumn;
    cxGridDBTableView1toplamDoz: TcxGridDBColumn;
    DataSource3: TDataSource;
    ADO_Hast: TADOQuery;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBBandedTableView13: TcxGridDBBandedTableView;
    cxGridDBBandedColumn40: TcxGridDBBandedColumn;
    cxGridDBBandedColumn41: TcxGridDBBandedColumn;
    cxGridDBBandedColumn42: TcxGridDBBandedColumn;
    cxGridDBBandedColumn43: TcxGridDBBandedColumn;
    cxGridDBBandedColumn44: TcxGridDBBandedColumn;
    cxGridDBBandedTableView14: TcxGridDBBandedTableView;
    cxGridDBBandedColumn45: TcxGridDBBandedColumn;
    cxGridDBBandedColumn46: TcxGridDBBandedColumn;
    cxGridDBBandedTableView15: TcxGridDBBandedTableView;
    cxGridDBBandedTableView16: TcxGridDBBandedTableView;
    cxGridDBBandedColumn47: TcxGridDBBandedColumn;
    cxGridDBBandedColumn48: TcxGridDBBandedColumn;
    cxGridDBBandedColumn49: TcxGridDBBandedColumn;
    cxGridDBBandedColumn50: TcxGridDBBandedColumn;
    cxGridDBBandedColumn51: TcxGridDBBandedColumn;
    cxGridDBBandedColumn52: TcxGridDBBandedColumn;
    cxGridLevel4: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxTabSheet3: TcxTabSheet;
    cxGrid5: TcxGrid;
    cxGridRecetelerGrup: TcxGridDBTableView;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    HastaBilgisi: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBBandedTableView17: TcxGridDBBandedTableView;
    cxGridDBBandedColumn53: TcxGridDBBandedColumn;
    cxGridDBBandedColumn54: TcxGridDBBandedColumn;
    cxGridDBBandedColumn55: TcxGridDBBandedColumn;
    cxGridDBBandedColumn56: TcxGridDBBandedColumn;
    cxGridDBBandedColumn57: TcxGridDBBandedColumn;
    cxGridDBBandedTableView18: TcxGridDBBandedTableView;
    cxGridDBBandedColumn58: TcxGridDBBandedColumn;
    cxGridDBBandedColumn59: TcxGridDBBandedColumn;
    cxGridDBBandedTableView19: TcxGridDBBandedTableView;
    cxGridDBBandedTableView20: TcxGridDBBandedTableView;
    cxGridDBBandedColumn60: TcxGridDBBandedColumn;
    cxGridDBBandedColumn61: TcxGridDBBandedColumn;
    cxGridDBBandedColumn62: TcxGridDBBandedColumn;
    cxGridDBBandedColumn63: TcxGridDBBandedColumn;
    cxGridDBBandedColumn64: TcxGridDBBandedColumn;
    cxGridDBBandedColumn65: TcxGridDBBandedColumn;
    cxGridLevel5: TcxGridLevel;
    ReceteDosyaNo: TcxGridDBColumn;
    RecetegelisNo: TcxGridDBColumn;
    Receteid: TcxGridDBColumn;
    RecetereceteTur: TcxGridDBColumn;
    ReceteprotokolNo: TcxGridDBColumn;
    Recetedoktor: TcxGridDBColumn;
    Recetetarih: TcxGridDBColumn;
    ReceteTani: TcxGridDBColumn;
    ReceteeReceteNo: TcxGridDBColumn;
    RecetereceteAltTur: TcxGridDBColumn;
    ReceteHastaBildirim: TcxGridDBColumn;
    ReceteEczanedenAlim: TcxGridDBColumn;
    ReceteDate_Create: TcxGridDBColumn;
    ReceteHASTAADI: TcxGridDBColumn;
    ReceteHASTASOYADI: TcxGridDBColumn;
    ReceteTCKIMLIKNO: TcxGridDBColumn;
    ReceteEpoKutuAdet_IlacAdi: TcxGridDBColumn;
    Ado_Receteler_Grup: TADOQuery;
    DataSource4: TDataSource;
    cxGridRecetelerGrupColumn1: TcxGridDBColumn;
    cxGridRecetelerGrupColumn2: TcxGridDBColumn;
    cxGridRecetelerGrupColumn3: TcxGridDBColumn;
    cxGridRecetelerGrupColumn4: TcxGridDBColumn;
    cxGridRecetelerGrupColumn5: TcxGridDBColumn;
    cxGridRecetelerGrupColumn6: TcxGridDBColumn;
    cxGridRecetelerGrupColumn7: TcxGridDBColumn;
    cxGridRecetelerGrupColumn8: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    D1: TMenuItem;
    D2: TMenuItem;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    E1: TMenuItem;
    Y1: TMenuItem;
    Recete_Hasta_Grup_Top_Panel: TcxGroupBox;
    txtHastaBilgisi: TcxTextEdit;
    cxLabel1: TcxLabel;
    ReceteTanimi: TcxGridDBColumn;
    procedure TopPanelButonClick(Sender: TObject);
    procedure TopPanelPropertiesChange(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure D2Click(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure ReceteYazdir;
    procedure FormCreate(Sender: TObject);
    procedure ReceteFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmReceteler: TfrmReceteler;

implementation
   uses data_modul,rapor;
{$R *.dfm}



procedure TfrmReceteler.cxButtonCClick(Sender: TObject);
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;


  case TControl(sender).Tag  of
    0 : begin

        end;
    1 : begin
         // post;
         //ShowMessage('Ýptal');
        end;
   -1 : begin


   end;
   end;
  //a
end;


procedure TfrmReceteler.ReceteYazdir;
var
  sql , id , dosyaNo: string;
  ado,ado1 : TADOQuery;
  x : integer;
begin

  for x := 0 to Recete.Controller.SelectedRowCount - 1 do
  begin
      id := id + ',' + inttostr(Recete.DataController.GetValue(Recete.Controller.SelectedRows[x].RecordIndex,
                                                               Recete.DataController.GetItemByFieldName('id').Index));
  end;

  dosyaNo := ADO_Receteler.fieldbyname('dosyaNo').AsString;

  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    ado.close;
    ado.SQL.Clear;
    sql := 'exec sp_epikriz ' + QuotedStr(dosyaNo) + ',' + QuotedStr('Kurum');
    datalar.QuerySelect(ado,sql);
    frmRapor.topluset.Dataset1 := ado;


    ado1 := TADOQuery.Create(nil);
    try
      ado1.Connection := datalar.ADOConnection2;

      ado1.close;
      ado1.SQL.Clear;


      sql := ' select * from Recete R ' +
               'left join receteDetay D on R.id = D.ReceteId ' +
               'left join gelisler g on g.dosyaNO = R.dosyaNo and g.gelisNo = R.gelisNo ' +
               'left join ILACLAR I on I.code = D.ilacKodu ' +
               'left join PersonelKart H on H.dosyaNo = R.dosyaNo ' +
               ' where convert(varchar,R.Tarih,112) between ' + txtTopPanelTarih1.GetSQLValue +
               ' and ' + txtTopPanelTarih1.GetSQLValue +
               ' and r.id IN (select datavalue from dbo.StrToTable(' + QuotedStr(copy(id,2,500)) + ','',''))' +
               ' order by R.id';

      datalar.QuerySelect(ado1,sql);
      frmRapor.topluset.Dataset2 := ado1;


      frmRapor.raporData1(frmRapor.topluset ,'050T','\Reçete Yazdýr Toplu');
      frmRapor.ShowModal;
    finally
      ado1.Free;
    end;
  finally
    ado.Free;
  end;

end;

procedure TfrmReceteler.cxGridDBTableView1DblClick(Sender: TObject);
var
  sql : string;
begin
  sql := 'select r.*,h.HASTAADI,h.HASTASOYADI from recete r ' +
         ' join receteDetay rd on R.id = RD.receteId ' +
         ' join hastakart h on h.dosyaNo = r.dosyaNO ' +
         ' where convert(varchar,tarih,112) between ' + txtTopPanelTarih1.GetSQLValue + ' and ' + txtTopPanelTarih1.GetSQLValue +
         ' and rd.ilacKodu = ' + QuotedStr(ADO_toplam.FieldByName('ilacKodu').AsString) +
         ' and h.sirketKod in (select sirketKod from SIRKETLER_TNM_view where doktor = ' + QuotedStr(datalar.doktorKodu)  + ')' +
         ' order by h.HASTAADI , h.HASTASOYADI ' ;
  datalar.QuerySelect(ADO_Hast,sql);
end;

procedure TfrmReceteler.D1Click(Sender: TObject);
begin
  cxGridRecetelerGrup.ViewData.Expand(true);
end;

procedure TfrmReceteler.D2Click(Sender: TObject);
begin
  cxGridRecetelerGrup.ViewData.Collapse(true);
end;


procedure TfrmReceteler.TopPanelPropertiesChange(Sender: TObject);
var
  AItemList: TcxFilterCriteriaItemList;
  f : string;
begin
 // inherited;
  f := '%'+txtHastaBilgisi.Text+'%';
  with cxGridRecetelerGrup.DataController.Filter do
  begin
    BeginUpdate;
    try
      Root.Clear;
      Root.BoolOperatorKind := fboAnd;
      AItemList := Root.AddItemList(fboOr);
      AItemList.AddItem(HastaBilgisi, foLike, f, f);
    finally
      EndUpdate;
    end;
  end;

end;


procedure TfrmReceteler.TopPanelButonClick(Sender: TObject);
var
 sql,SirketKod : string;
begin
 // inherited;
  if KurumTipTopPanel.EditValue = 1 then sirketKod := datalar.AktifSirket
   else SirketKod := '';
  sql := 'exec sp_Receteler ' + QuotedStr(sirketKod) + ',' +
  txtTopPanelTarih1.GetSQLValue + ',' + txtTopPanelTarih2.GetSQLValue + ',' + 'G,' + QuotedStr(datalar.doktorKodu);
  datalar.QuerySelect(Ado_Receteler_Grup,sql);

  sql := 'exec sp_Receteler ' + QuotedStr(sirketKod) + ',' +
  txtTopPanelTarih1.GetSQLValue + ',' + txtTopPanelTarih2.GetSQLValue + ',' + QuotedStr('') + ',' + QuotedStr(datalar.doktorKodu);
  datalar.QuerySelect(Ado_Receteler,sql);

  sql := 'select ilacKodu,ilacAdi,sum(adet) toplamAdet , sum (kullanimAdet*kullanimadet2) toplamDoz from recete R ' +
         ' join PersonelKart p on p.dosyaNo = r.dosyaNo ' +
         ' join receteDetay RD on R.id = RD.receteId ' +
         ' where p.SirketKod like ' + QuotedStr('%'+sirketKod+'%') +
         ' and convert(varchar,tarih,112) between ' + txtTopPanelTarih1.GetSQLValue+ ' and ' + txtTopPanelTarih2.GetSQLValue +
         ' and p.sirketKod in (select sirketKod from SIRKETLER_TNM_view where doktor = ' + QuotedStr(datalar.doktorKodu)  + ') ' +
         '  group by ilacKodu,ilacAdi ';
  datalar.QuerySelect(ADO_toplam,sql);

end;

procedure TfrmReceteler.ReceteFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
 sql : string;
begin
  try
   sql := 'select * from recetedetay where ReceteId = ' + ADO_Receteler.fieldbyname('id').AsString;
   datalar.QuerySelect(ADO_ReceteDetay,sql);
  except
  end;
end;

function TfrmReceteler.Init(Sender : TObject) : Boolean;
begin
  result := True;
end;

procedure TfrmReceteler.FormCreate(Sender: TObject);
begin
  inherited;
  TopPanel.Visible := true;
  TapPanelElemanVisible(True,True,True,false,false,False,True,false,False,False,False,False);
  txtTopPanelTarih1.Date := date;
  txtTopPanelTarih2.Date := date;
 // Recete.DataController.DataSource := _DataSource;
  cxPanel.Visible := false;
end;

end.
