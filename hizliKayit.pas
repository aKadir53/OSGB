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
    miExcelYukle: TMenuItem;
    miVeritabaninaYaz: TMenuItem;
    miAlanEslestir: TMenuItem;
    GridList: TAdvStringGrid;
    procedure cxButtonCClick(Sender: TObject);
    procedure ExcelToGrid;
    procedure GridToPersonelKartTable;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  protected
    FInitialColumnHeaders : TStringList;
    FAssignedColumnIndexes : array of Integer;
    procedure GridAlanEslestirme;
    function GridAtanmisSutunDegerAyarlaGetir (const aGrid: TStringGrid; const ACol, ARow : Integer):String;
  public
    { Public declarations }
    constructor Create (Aowver: TComponent); override;
    destructor Destroy; override;
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
                     '@EV_SEHIR = %19:s,'+
                     '@EV_ADRES = %8:s,'+
                     '@EV_TEL1 = %9:s,'+
                     '@EV_TEL2 = %10:s,'+
                     '@DOGUMYERI = %11:s,'+
                     '@DOGUMTARIHI = %12:s,'+
                     '@UYRUGU = %13:s,'+
                     '@baslangic = %14:s,'+
                     '@kanGrubu = %15:s,'+
                     '@USER_ID = %16:s,'+
                     '@sube = %18:s,'+
                     '@Aktif = %17:s';

var
  frmHizliKayit: TfrmHizliKayit;
   v,sayfa : Variant;

implementation
  uses AnaUnit, Math;
{$R *.dfm}

destructor TfrmHizliKayit.Destroy;
begin
  FInitialColumnHeaders.Free;
  inherited;
end;

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


procedure TfrmHizliKayit.GridAlanEslestirme;
var
  aStringList : TStringList;
  i, j: Integer;
  sItems : String;
  aItems: array of Integer;
begin
  if ShowMessageSkin ('Bu iþlem, bu ekraný ilk açtýðýnýzda gördüðünüz standart þablon dýþýndaki personel listelerini aktarabilmeniz için imkân saðlar'#13#10#13#10+
                      'Baþlýklarý eþleþen sütunlar otomatik olarak eþleþtirilecek ve geri kalaný için size eþleþtirme sorusu sorulacaktýr'#13#10#13#10+
                      'Devam etmek istiyor musunuz ?',
                      '', '', 'conf') <> mrYes then Exit;
  aStringList := TStringList.create;
  try
    for i := 0 to GridList.ColCount - 1 do
      GridList.Cells [i, 0] := IfThen (IsNull (Trim (GridList.Cells [i, 0])), 'Baþlýksýz Sütun' + IntToStr (i), Trim (GridList.Cells [i, 0]));
    //ÜÖ 20171231 eþleþen sütun baþlýklarýný gridde arayýp indexlerini ata
    for i := 0 to FInitialColumnHeaders.Count - 1 do
      aStringList.Add(IntToStr(GridList.Rows [0].IndexOf(FInitialColumnHeaders [i])));
    //bulunamayanlar için kullanýcýya baþvur
    for i := 0 to aStringList.Count - 1 do
    begin
      //o sütun karþýlýðý bir sütun eþleþmemiþ.
      if StrToInt (aStringList [i]) < 0 then
      begin
        //grid baþlýklarýndan, daha önce eþleþmemiþ olanlarýndan bir ItemList oluþtur.
        sItems:= 'Yok / Alma / Atla';
        SetLength (aItems, 1);
        aItems [0] := -1;
        for j := 0 to GridList.ColCount - 1 do
          if aStringList.IndexOf (IntToStr(j)) < 0 then
          begin
            sItems := sItems + #13#10 +
              IfThen (IsNull (Trim (StringReplace (GridList.Cells [j, 0], #13#10, '_', [rfReplaceAll]))),
                'Baþlýksýz Sütun' + IntToStr (j),
                Trim (StringReplace (GridList.Cells [j, 0], #13#10, '_', [rfReplaceAll])));
            SetLength (aItems, High (aItems) + 2);
            aItems [High (aItems)] := j;
          end;
        //seçtirecek alan kalmadýysa döngüyü kýr
        if High (aItems) <= 0 then Break;

        j := -1;
        if (not CombodanSectir ('Alan seçiniz', FInitialColumnHeaders [i], sItems, j))
          or (j < 0) then
        begin
          ShowMessageSkin('Ýþlem iptal edildi', '', '', 'info');
          Exit;
        end;
        aStringList [i] := IntToStr (aItems [j]);
      end;
    end;
    //buraya kadar sað salim geldikse olay tamam, geçici yerel diziyi form dizisine aktarýp ortamý terk edelim...
    for i := Low (FAssignedColumnIndexes) to High (FAssignedColumnIndexes) do
      FAssignedColumnIndexes [i] := StrToInt (aStringList [i]);
    ShowMessageSkin('Alan Eþleþtirmesi Baþarý ile Tamamlandý', '', '', 'info');
  finally
    aStringList.Free;
  end;
end;

function TfrmHizliKayit.GridAtanmisSutunDegerAyarlaGetir(
  const aGrid: TStringGrid; const ACol, ARow: Integer): String;
begin
  Result := Trim (
              StringReplace (
                IfThen (
                  FAssignedColumnIndexes [ACol] >= 0,
                  aGrid.Cells[
                    IfThen (
                      FAssignedColumnIndexes [ACol] <0,
                      0,
                      FAssignedColumnIndexes [ACol]),
                    ARow],
                  ''),
                #9,
                '',
                [rfReplaceAll]));
end;

procedure TfrmHizliKayit.GridToPersonelKartTable;
var
  sql : string;
  bBasarili : Boolean;
  iCount : Integer;
  _row_ : integer;
  Cins,Medeni,DTarih,BTarih : String;
begin
  try
    if IsNull (Datalar.AktifSube)
      or (Length (datalar.AktifSube) > 2)
      or (Pos (',', datalar.AktifSube) > 0) then
    begin
      ShowMessageSkin('Aktif þube seçmeden personel aktarýmý yapamazsýnýz.'#13#10'Personeller, seçili þubeye aktarýlacak.', '', '', 'info');
      Exit;
    end;
    bBasarili := False;
    iCount := 0;
    datalar.ADOConnection2.BeginTrans;
    try
      for _row_ := 1 to GridList.RowCount - 1 do
      begin
        //hem adý hem TCKimlik numarasý boþ ise atlayarak sonraki satýrdan devam et.
        if IsNull (IfThen (FAssignedColumnIndexes [1] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [1] <0, 0, FAssignedColumnIndexes [1]),_row_], ''))
          and IsNull (IfThen (FAssignedColumnIndexes [2] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [2] <0, 0, FAssignedColumnIndexes [2]),_row_], '')) then Continue;
        //yukarýdan geçtiyse adý veya TCKimlik dolu demektir.
        if IsNull (IfThen (FAssignedColumnIndexes [1] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [1] <0, 0, FAssignedColumnIndexes [1]),_row_], ''))
          or IsNull (IfThen (FAssignedColumnIndexes [2] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [2] <0, 0, FAssignedColumnIndexes [2]),_row_], ''))
          or IsNull (IfThen (FAssignedColumnIndexes [3] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [3] <0, 0, FAssignedColumnIndexes [3]),_row_], '')) then
        begin
          ShowMessageSkin ('Adý veya Soyadý veya TC Kimlik Numarasý alaný dolu olmalýdýr.', '', '', 'info');
          Exit;
        end;
        ;
        Cins := ifThen(Copy(IfThen (FAssignedColumnIndexes [4] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [4] <0, 0, FAssignedColumnIndexes [4]),_row_], ''),1,1) = 'B','1',
                ifThen(Copy(IfThen (FAssignedColumnIndexes [4] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [4] <0, 0, FAssignedColumnIndexes [4]),_row_], ''),1,1) = '1','1',
                ifThen(Copy(IfThen (FAssignedColumnIndexes [4] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [4] <0, 0, FAssignedColumnIndexes [4]),_row_], ''),1,1) = 'K','1','0')));

        Medeni := ifThen(Copy(IfThen (FAssignedColumnIndexes [5] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [5] <0, 0, FAssignedColumnIndexes [5]),_row_], ''),1,1) = 'B','1',
                  ifThen(Copy(IfThen (FAssignedColumnIndexes [5] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [5] <0, 0, FAssignedColumnIndexes [5]),_row_], ''),1,1) = '1','1','0'));

        DTarih := ifThen(pos('.',IfThen (FAssignedColumnIndexes [12] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [12] <0, 0, FAssignedColumnIndexes [12]),_row_], '')) > 0,
                         NoktasizTarih(IfThen (FAssignedColumnIndexes [12] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [12] <0, 0, FAssignedColumnIndexes [12]),_row_], '')),IfThen (FAssignedColumnIndexes [12] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [12] <0, 0, FAssignedColumnIndexes [12]),_row_], ''));

        BTarih := ifThen(pos('.',IfThen (FAssignedColumnIndexes [15] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [15] <0, 0, FAssignedColumnIndexes [15]),_row_], '')) > 0,
                         NoktasizTarih(IfThen (FAssignedColumnIndexes [15] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [15] <0, 0, FAssignedColumnIndexes [15]),_row_], '')),IfThen (FAssignedColumnIndexes [15] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [15] <0, 0, FAssignedColumnIndexes [15]),_row_], ''));

        sql := Format(_insertPersonel_,
                      [QuotedStr(datalar.AktifSirket),
                       QuotedStr(IfThen (FAssignedColumnIndexes [1] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [1] <0, 0, FAssignedColumnIndexes [1]),_row_], '')),
                       QuotedStr(IfThen (FAssignedColumnIndexes [2] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [2] <0, 0, FAssignedColumnIndexes [2]),_row_], '')),
                       QuotedStr(IfThen (FAssignedColumnIndexes [3] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [3] <0, 0, FAssignedColumnIndexes [3]),_row_], '')),
                       QuotedStr(Cins),
                       QuotedStr(Medeni),
                       QuotedStr(IfThen (FAssignedColumnIndexes [6] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [6] <0, 0, FAssignedColumnIndexes [6]),_row_], '')),
                       QuotedStr(IfThen (FAssignedColumnIndexes [7] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [7] <0, 0, FAssignedColumnIndexes [7]),_row_], '')),
                       QuotedStr(IfThen (FAssignedColumnIndexes [8] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [8] <0, 0, FAssignedColumnIndexes [8]),_row_], '')),
                       QuotedStr(IfThen (FAssignedColumnIndexes [9] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [9] <0, 0, FAssignedColumnIndexes [9]),_row_], '')),
                       QuotedStr(IfThen (FAssignedColumnIndexes [10] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [10] <0, 0, FAssignedColumnIndexes [10]),_row_], '')),
                       QuotedStr(IfThen (FAssignedColumnIndexes [11] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [11] <0, 0, FAssignedColumnIndexes [11]),_row_], '')),
                       QuotedStr(DTarih),
                       QuotedStr(IfThen (FAssignedColumnIndexes [13] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [13] <0, 0, FAssignedColumnIndexes [13]),_row_], '')),
                       QuotedStr(BTarih),
                       'NULL',
                       QuotedStr(datalar.username),
                       QuotedStr('1'),
                       QuotedStr(datalar.AktifSube),
                       QuotedStr(IfThen (FAssignedColumnIndexes [16] >= 0, GridList.Cells[IfThen (FAssignedColumnIndexes [16] <0, 0, FAssignedColumnIndexes [16]),_row_], ''))]);
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



constructor TfrmHizliKayit.Create(Aowver: TComponent);
begin
  inherited;
  FInitialColumnHeaders := TStringList.Create;
  SetLength (FAssignedColumnIndexes, 0);
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
    4: begin
      GridAlanEslestirme;
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
var
  i : Integer;
begin
  inherited;
  MemTable_Personel.active := True;
  Menu := PopupMenu1;
  cxPanel.Visible := false;
  SayfaCaption('','','' ,'','');
  //Form ilk açýldýðýnda tasarým halindeki sütun baþlýklarýný dizide toplayýp baðlý indexlerini ikinci diziye atýyoruz
  FInitialColumnHeaders.Clear;
  for i := 0 to GridList.ColCount - 1 do
    FInitialColumnHeaders.Add(IfThen (IsNull (Trim (GridList.Cells [i, 0])), 'Baþlýksýz Sütun' + IntToStr (i), Trim (GridList.Cells [i, 0])));
  SetLength (FAssignedColumnIndexes, 0);
  for i:= 0 to FInitialColumnHeaders.Count - 1 do
  begin
    SetLength (FAssignedColumnIndexes, High (FAssignedColumnIndexes) + 2);
    FAssignedColumnIndexes [High (FAssignedColumnIndexes)] := i;
  end;
end;
//isg katip excel'ini programdan aktarma
//personel aktarýmýnda alan eþleþtirme
end.
