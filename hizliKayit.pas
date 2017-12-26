unit hizliKayit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, ExtCtrls, cxControls, cxPC,adodb,db,
  cxGraphics, cxDropDownEdit, cxMaskEdit, cxCalendar, cxLabel, cxContainer,
  cxEdit, cxTextEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,kadir,
  data_modul, KadirType,GetFormClass,
  cxDBEdit, dxmdaset, InvokeRegistry, Rio, SOAPHTTPClient,strUtils,RaporIslemleriWS,
  cxMemo, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxGroupBox, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxGridBandedTableView, cxGridDBBandedTableView, cxGridCardView,
  cxGridDBCardView, cxGridCustomLayoutView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  SQLMemMain, cxImageComboBox, KadirLabel,GirisUnit, cxButtons, Menus,
  Vcl.Grids, AdvObj, BaseGrid, AdvGrid,ComObj, tmsAdvGridExcel, AdvGridWorkbook;

type
  TfrmHizliKayit = class(TGirisForm)
    cxPageControl1: TcxPageControl;
    DataSource3: TDataSource;
    MemTable_Personel: TSQLMemTable;
    DataSource2: TDataSource;
    PopupMenu1: TPopupMenu;
    B1: TMenuItem;
    H1: TMenuItem;
    N1: TMenuItem;
    GridList: TAdvStringGrid;
    procedure cxButtonCClick(Sender: TObject);
    procedure ExcelToGrid;
    procedure GridToPersonelKartTable;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }

  end;

  Const
  _insertPersonel_ = 'exec sp_YeniPersonelHastaKarti ' +
                     '@SirketKod = %0:s,' +
                     '@TCKIMLIKNO = %1:s,'+
                     '@HASTAADI = %2:s,'+
                     '@HASTASOYADI = %3:s,'+
                     '@CINSIYETI = %4:s,'+
                     '@MEDENI = %5:s,'+
                     '@BABAADI = %6:s,'+
                     '@ANAADI = %7:s,'+
                     '@EV_SEHIR = %8:s,'+
                     '@EV_TEL1 = %9:s,'+
                     '@EV_TEL2 = %10:s,'+
                     '@DOGUMYERI = %11:s,'+
                     '@DOGUMTARIHI = %12:s,'+
                     '@UYRUGU = %13:s,'+
                     '@baslangic = %14:s,'+
                     '@kanGrubu = %15:s,'+
                     '@USER_ID = %16:s,'+
                     '@Aktif = %17:s';

var
  frmHizliKayit: TfrmHizliKayit;
   v,sayfa : Variant;

implementation
  uses AnaUnit;
{$R *.dfm}

procedure TfrmHizliKayit.ExcelToGrid;
var
  openD : TOpenDialog;
  dosya : string;
  sonsatir ,sonColon, x : integer;
begin

  openD := TOpenDialog.Create(nil);
  try
    if not openD.Execute then Exit;
    dosya := openD.FileName;
  finally
    openD.Free;
  end;

  GridList.LoadFromXLS(dosya);



(*
  v := CreateOleObject('Excel.Application');
  try
    v.Workbooks.Open(dosya);
    v.visible := true;//Exceli acip verileri goster
    sayfa := v.workbooks[1].worksheets[1];
  except
    v.DisplayAlerts := False;  //Excel mesajlarýný görünteleme
    v.Quit;
    v := Unassigned;
  end;

  sonsatir := v.Range[Char(96 + 1) + IntToStr(65536)].end[3].Rows.Row;
  sonColon := sayfa.UsedRange.Columns.Count;
  if SonColon > 5 then ;;

  for x := 2 to sonsatir do
  begin
    MemTable_Personel.append;
    MemTable_Personel.fieldByname('TCKIMLIKNO').asstring := sayfa.cells[x,1];
    MemTable_Personel.fieldByname('HASTAADI').asstring := sayfa.cells[x,2];
    MemTable_Personel.fieldByname('HASTASOYADI').asstring := sayfa.cells[x,3];
    MemTable_Personel.fieldByname('CINSIYETI').asstring := sayfa.cells[x,4];
    MemTable_Personel.fieldByname('MEDENI').asstring := sayfa.cells[x,5];
    MemTable_Personel.fieldByname('BABAADI').asstring := sayfa.cells[x,6];
    MemTable_Personel.fieldByname('ANAADI').asstring := sayfa.cells[x,7];
    MemTable_Personel.fieldByname('EV_SEHIR').asstring := sayfa.cells[x,8];
    MemTable_Personel.fieldByname('EV_TEL1').asstring := sayfa.cells[x,9];
    MemTable_Personel.fieldByname('EV_TEL2').asstring := sayfa.cells[x,10];
    MemTable_Personel.fieldByname('DOGUMYERI').asstring := sayfa.cells[x,11];
    MemTable_Personel.fieldByname('DOGUMTARIHI').asstring := IfThen (Pos ('.',  sayfa.cells[x,12]) > 0, NoktasizTarih (sayfa.cells[x,12]), sayfa.cells[x,12]);;
    MemTable_Personel.fieldByname('UYRUGU').asstring := sayfa.cells[x,13];
    MemTable_Personel.fieldByname('Durum').asstring := sayfa.cells[x,14];
    MemTable_Personel.fieldByname('BASLANGIC').asstring := IfThen (Pos ('.',  sayfa.cells[x,15]) > 0, NoktasizTarih (sayfa.cells[x,15]), sayfa.cells[x,15]);
    MemTable_Personel.fieldByname('KANGRUBU').asstring := sayfa.cells[x,16];
    MemTable_Personel.post;
    end;
    *)
end;


procedure TfrmHizliKayit.GridToPersonelKartTable;
var
  sql : string;
  bBasarili : Boolean;
  iCount : Integer;
  _row_ : integer;
  Cins,Medeni,DTarih : String;
begin
  try
    datalar.ADOConnection2.BeginTrans;
    bBasarili := False;
    iCount := 0;
    try
      for _row_ := 1 to GridList.RowCount do
      begin
        Cins := ifThen(Copy(GridList.Cells[4,_row_],1,1) = 'B','1',
                ifThen(Copy(GridList.Cells[4,_row_],1,1) = '1','1',
                ifThen(Copy(GridList.Cells[4,_row_],1,1) = 'K','1','0')));

        Medeni := ifThen(Copy(GridList.Cells[5,_row_],1,1) = 'B','1',
                  ifThen(Copy(GridList.Cells[5,_row_],1,1) = '1','1','0'));

        DTarih := ifThen(pos('.',GridList.Cells[12,_row_]) > 0,
                         NoktasizTarih(GridList.Cells[12,_row_]),GridList.Cells[12,_row_]);

        sql := Format(_insertPersonel_,
                      [QuotedStr(datalar.AktifSirket),
                       QuotedStr(GridList.Cells[1,_row_]),
                       QuotedStr(GridList.Cells[2,_row_]),
                       QuotedStr(GridList.Cells[3,_row_]),
                       QuotedStr(Cins),
                       QuotedStr(Medeni),
                       QuotedStr(GridList.Cells[6,_row_]),
                       QuotedStr(GridList.Cells[7,_row_]),
                       QuotedStr(GridList.Cells[8,_row_]),
                       QuotedStr(GridList.Cells[9,_row_]),
                       QuotedStr(GridList.Cells[10,_row_]),
                       QuotedStr(GridList.Cells[11,_row_]),
                       QuotedStr(DTarih),
                       QuotedStr(GridList.Cells[13,_row_]),
                       QuotedStr(GridList.Cells[14,_row_]),
                       QuotedStr(GridList.Cells[15,_row_]),
                       QuotedStr(datalar.username),
                       QuotedStr(GridList.Cells[16,_row_])]);
        datalar.queryExec(SelectAdo,sql);
        iCount := iCount + 1;
      end;
      bBasarili := True;
    finally
      if bBasarili then
      begin
        datalar.ADOConnection2.CommitTrans;
        showmessageSkin (IntToStr (iCount) + ' adet kayýt baþarý ile aktarýldý', '', '', 'info');
      end
      else begin
        datalar.ADOConnection2.rollbackTrans;
        showmessageSkin (IntToStr (iCount + 1) + '. satýrda hata oluþtu, aktarým iþlemi tamamlanamadý.', '', '', 'info');
      end;
    end;
  except on e : exception do
   begin
     showmessageSkin(e.message,'','','info');
   end;
  end;

end;





procedure TfrmHizliKayit.cxButtonCClick(Sender: TObject);
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;


  case TControl(sender).Tag  of
    0 : begin

          ExcelToGrid;
        end;
    1 : begin
          GridToPersonelKartTable;
        end;
    end;
end;




procedure TfrmHizliKayit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  MemTable_Personel.Active := False;
  MemTable_Personel.EmptyTable;
end;

procedure TfrmHizliKayit.FormCreate(Sender: TObject);
begin
  inherited;
    MemTable_Personel.active := True;
    Menu := PopupMenu1;
    cxPanel.Visible := false;
    SayfaCaption('','','' ,'','');
end;

end.
