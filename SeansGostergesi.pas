unit SeansGostergesi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, BaseGrid, AdvGrid, Buttons, adodb,GirisUnit,
   ExtCtrls,kadir, StrUtils , asprev,ComObj,
  Menus,   AdvObj, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxButtons,
  KadirLabel, cxCheckBox, cxGroupBox, cxRadioGroup;

type
  TfrmSeansDagilimi = class(TGirisForm)
    pnlToolBar: TPanel;
    gridHastalar: TAdvStringGrid;
    pnlOnay: TPanel;
    txtinfo: TLabel;
    PopupMenu1: TPopupMenu;
    Seansaretle1: TMenuItem;
    SeansKaldr1: TMenuItem;
    SaveDialog1: TSaveDialog;
    btnListele: TcxButtonKadir;
    btnVazgec: TcxButtonKadir;
    txtYil: TcxComboBox;
    txtDonem: TcxComboBox;
    chkDevredilen: TcxCheckBox;
    txtSeans: TcxComboBox;
    txtTip: TcxRadioGroup;
    Yazdr1: TMenuItem;
    ExceleGnder1: TMenuItem;
    SeansHakedicmali1: TMenuItem;
    Kapat1: TMenuItem;
    procedure btnVazgecClick(Sender: TObject);
    procedure hastalar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sBitBtn1Click(Sender: TObject);
    procedure Yazdir;
    procedure ExceleGonder;
    procedure FormShow(Sender: TObject);
    procedure Seansaretle1Click(Sender: TObject);
    procedure gridHastalarClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure gridHastalarDblClick(Sender: TObject);
    procedure SeansIcmal;
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSeansDagilimi: TfrmSeansDagilimi;

implementation

uses data_modul, DB, AnaUnit, rapor, DateUtils, SeansHakedis; //frmHemsireTakip,SeansHakedis;

{$R *.dfm}

procedure TfrmSeansDagilimi.hastalar;
var
  sql ,txtTarih1 , txtTarih2 ,ay1 , ay2 : string;
  x ,y, j , r , _SeanTop , _SeanTop2,_SeanTop3,_SeanTop4,_SeanTop5,_SeanTop6,
  _SeanTop7,_SeanTop8,_SeanTop9,_SeanTop10,_SeanTop11,_SeanTop12,_SeanTop13,
  _SeanTop14,_SeanTop15,_SeanTop16,_SeanTop17,_SeanTop18,_SeanTop19,_SeanTop20,
  _SeanTop21,_SeanTop22,_SeanTop23,_SeanTop24,_SeanTop25,_SeanTop26,
  _SeanTop27,_SeanTop28,_SeanTop29,_SeanTop30,_SeanTop31,_SeanTop32,
   satir , _SeansGtop , st , gun : integer;
  _tarih_ : TdATE;
  bmpOk , bmpCancel : TBitmap;
begin

   bmpOk := TBitmap.Create;
   datalar.global_img_list4.GetBitmap(154,bmpOk);
   bmpCancel := TBitmap.Create;
   datalar.global_img_list4.GetBitmap(133,bmpCancel);

   if txtDonem.Text = ''
   then exit;

   ay1 := formatfloat('00',txtDonem.ItemIndex);
   txtTarih1 := txtYil.Text + ay1 + '01';
   _tarih_ := tarihyap(txtTarih1);
   gun := DaysInMonth(_tarih_);
   txtTarih2 := txtYil.Text + ay1 + inttostr(gun);

   if txtTip.ItemIndex = 0
   Then Begin
     if chkDevredilen.Checked
     Then
       sql := 'exec sp_SeansGostergesi' + #39 + txtTarih1 + #39 + ',' + #39 + txtTarih2 + #39 + ',''G'',' + QuotedStr(txtSeans.Text)
     Else
      sql := 'exec sp_SeansGostergesi' + #39 + txtTarih1 + #39 + ',' + #39 + txtTarih2 + #39 + ','''',' + QuotedStr(txtSeans.Text);
   End
   else
   Begin
     if chkDevredilen.Checked
     Then
       sql := 'exec sp_SeansGostergesiMakina' + #39 + txtTarih1 + #39 + ',' + #39 + txtTarih2 + #39 + ',''G'''
     Else
       sql := 'exec sp_SeansGostergesiMakina' + #39 + txtTarih1 + #39 + ',' + #39 + txtTarih2 + #39 + ',''''';

   End;



   datalar.ADO_SQL.Close;
   datalar.ADO_SQL.SQL.Clear;
   datalar.QuerySelect(datalar.ADO_SQL,sql);
//   Query2Grid3(gridHastalar,datalar.ADO_SQL,true,true,0,0);

   Grid_Temizle(gridHastalar);

   for j := 2 to 33 do
   begin
     gridHastalar.cells[j,0] := FormatFloat('00',j-1);
     gridHastalar.FontStyles[j,0] := gridHastalar.FontStyles[j,0] + [fsBold];
   end;

   case gun of
      28 : begin
               gridHastalar.ColWidths[30] := 0;
               gridHastalar.ColWidths[31] := 0;
               gridHastalar.ColWidths[32] := 0;
           end ;
      29 : begin
               gridHastalar.ColWidths[31] := 0;
               gridHastalar.ColWidths[32] := 0;
               gridHastalar.ColWidths[30] := 26;
           end ;
      30 : begin
               gridHastalar.ColWidths[32] := 0;
               gridHastalar.ColWidths[30] := 26;
               gridHastalar.ColWidths[31] := 26;
           end;
      31 : begin
               gridHastalar.ColWidths[32] := 26;
               gridHastalar.ColWidths[30] := 26;
               gridHastalar.ColWidths[31] := 26;
           end;

   else
   end;




   gridHastalar.Cells[j-1,0] := 'Toplam';

   satir := 1;
   for x := 1 to datalar.ADO_SQL.RecordCount do
   begin

       gridHastalar.Cells[40,x] := datalar.ADO_SQL.Fields[32].AsString;

       if (gridHastalar.Cells[40,x] = '0')
       then begin
           gridHastalar.Cells[1,x] := '   ' + datalar.ADO_SQL.Fields[0].AsString;
           satir := satir + 1;
       end
       else gridHastalar.Cells[1,x] := datalar.ADO_SQL.Fields[0].AsString;

       if (gridHastalar.Cells[40,x] = '9')
       then begin
            satir := 0;
            gridHastalar.cells[0,x] := '';

           _SeanTop := 0;
           gridHastalar.Cells[33,x] := '';
           for j := 1 to 32 do
           begin
             gridHastalar.Colors[j,x] := $00FF8080;
             gridHastalar.FontColors[j,x] := clWhite;
             gridHastalar.FontSizes[j,x] := 9;
           end;
           gridHastalar.FontStyles[1,x] := gridHastalar.FontStyles[1,x] + [fsBold];

       end;

       if txtTip.ItemIndex = 0
       Then Begin
           gridHastalar.cells[2,x] := ifthen(datalar.ADO_SQL.Fields[1].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[1].AsString);
           gridHastalar.cells[3,x] := ifthen(datalar.ADO_SQL.Fields[2].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[2].AsString);
           gridHastalar.cells[4,x] := ifthen(datalar.ADO_SQL.Fields[3].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[3].AsString);
           gridHastalar.cells[5,x] := ifthen(datalar.ADO_SQL.Fields[4].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[4].AsString);
           gridHastalar.cells[6,x] := ifthen(datalar.ADO_SQL.Fields[5].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[5].AsString);
           gridHastalar.cells[7,x] := ifthen(datalar.ADO_SQL.Fields[6].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[6].AsString);
           gridHastalar.cells[8,x] := ifthen(datalar.ADO_SQL.Fields[7].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[7].AsString);
           gridHastalar.cells[9,x] := ifthen(datalar.ADO_SQL.Fields[8].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[8].AsString);
           gridHastalar.cells[10,x] := ifthen(datalar.ADO_SQL.Fields[9].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[9].AsString);
           gridHastalar.cells[11,x] := ifthen(datalar.ADO_SQL.Fields[10].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[10].AsString);
           gridHastalar.cells[12,x] := ifthen(datalar.ADO_SQL.Fields[11].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[11].AsString);
           gridHastalar.cells[13,x] := ifthen(datalar.ADO_SQL.Fields[12].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[12].AsString);
           gridHastalar.cells[14,x] := ifthen(datalar.ADO_SQL.Fields[13].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[13].AsString);
           gridHastalar.cells[15,x] := ifthen(datalar.ADO_SQL.Fields[14].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[14].AsString);
           gridHastalar.cells[16,x] := ifthen(datalar.ADO_SQL.Fields[15].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[15].AsString);
           gridHastalar.cells[17,x] := ifthen(datalar.ADO_SQL.Fields[16].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[16].AsString);
           gridHastalar.cells[18,x] := ifthen(datalar.ADO_SQL.Fields[17].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[17].AsString);
           gridHastalar.cells[19,x] := ifthen(datalar.ADO_SQL.Fields[18].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[18].AsString);
           gridHastalar.cells[20,x] := ifthen(datalar.ADO_SQL.Fields[19].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[19].AsString);
           gridHastalar.cells[21,x] := ifthen(datalar.ADO_SQL.Fields[20].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[20].AsString);
           gridHastalar.cells[22,x] := ifthen(datalar.ADO_SQL.Fields[21].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[21].AsString);
           gridHastalar.cells[23,x] := ifthen(datalar.ADO_SQL.Fields[22].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[22].AsString);
           gridHastalar.cells[24,x] := ifthen(datalar.ADO_SQL.Fields[23].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[23].AsString);
           gridHastalar.cells[25,x] := ifthen(datalar.ADO_SQL.Fields[24].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[24].AsString);
           gridHastalar.cells[26,x] := ifthen(datalar.ADO_SQL.Fields[25].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[25].AsString);
           gridHastalar.cells[27,x] := ifthen(datalar.ADO_SQL.Fields[26].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[26].AsString);
           gridHastalar.cells[28,x] := ifthen(datalar.ADO_SQL.Fields[27].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[27].AsString);
           gridHastalar.cells[29,x] := ifthen(datalar.ADO_SQL.Fields[28].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[28].AsString);
           gridHastalar.cells[30,x] := ifthen(datalar.ADO_SQL.Fields[29].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[29].AsString);
           gridHastalar.cells[31,x] := ifthen(datalar.ADO_SQL.Fields[30].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[30].AsString);
           gridHastalar.cells[32,x] := ifthen(datalar.ADO_SQL.Fields[31].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[31].AsString);

           gridHastalar.ColWidths[34] := 0;
           gridHastalar.cells[34,x] :=  datalar.ADO_SQL.Fields[34].AsString;

           gridHastalar.cells[37,x] :=  datalar.ADO_SQL.Fields[36].AsString;
           gridHastalar.cells[36,x] :=  datalar.ADO_SQL.Fields[37].AsString;

           gridHastalar.cells[35,x] :=  datalar.ADO_SQL.Fields[38].AsString;

           if gridHastalar.cells[37,x] = gridHastalar.cells[37,x-1]
           then begin
            satir := satir - 1;
            gridHastalar.Ints[0,x] := satir;
           end
           else
            gridHastalar.Ints[0,x] := satir;



       gridHastalar.cells[33,x] := datalar.ADO_SQL.Fields[33].AsString;//floattostr(gridHastalar.RowSumABS(x,2,32));
       gridHastalar.Alignments[33,x] := taRightJustify;
       gridHastalar.Colors[33,x] := $0080FFFF;

       End
       Else
       Begin

           gridHastalar.cells[2,x] := ifthen(datalar.ADO_SQL.Fields[1].AsInteger = 0,'',datalar.ADO_SQL.Fields[1].AsString);
           gridHastalar.cells[3,x] := ifthen(datalar.ADO_SQL.Fields[2].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[2].AsString);
           gridHastalar.cells[4,x] := ifthen(datalar.ADO_SQL.Fields[3].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[3].AsString);
           gridHastalar.cells[5,x] := ifthen(datalar.ADO_SQL.Fields[4].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[4].AsString);
           gridHastalar.cells[6,x] := ifthen(datalar.ADO_SQL.Fields[5].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[5].AsString);
           gridHastalar.cells[7,x] := ifthen(datalar.ADO_SQL.Fields[6].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[6].AsString);
           gridHastalar.cells[8,x] := ifthen(datalar.ADO_SQL.Fields[7].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[7].AsString);
           gridHastalar.cells[9,x] := ifthen(datalar.ADO_SQL.Fields[8].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[8].AsString);
           gridHastalar.cells[10,x] := ifthen(datalar.ADO_SQL.Fields[9].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[9].AsString);
           gridHastalar.cells[11,x] := ifthen(datalar.ADO_SQL.Fields[10].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[10].AsString);
           gridHastalar.cells[12,x] := ifthen(datalar.ADO_SQL.Fields[11].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[11].AsString);
           gridHastalar.cells[13,x] := ifthen(datalar.ADO_SQL.Fields[12].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[12].AsString);
           gridHastalar.cells[14,x] := ifthen(datalar.ADO_SQL.Fields[13].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[13].AsString);
           gridHastalar.cells[15,x] := ifthen(datalar.ADO_SQL.Fields[14].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[14].AsString);
           gridHastalar.cells[16,x] := ifthen(datalar.ADO_SQL.Fields[15].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[15].AsString);
           gridHastalar.cells[17,x] := ifthen(datalar.ADO_SQL.Fields[16].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[16].AsString);
           gridHastalar.cells[18,x] := ifthen(datalar.ADO_SQL.Fields[17].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[17].AsString);
           gridHastalar.cells[19,x] := ifthen(datalar.ADO_SQL.Fields[18].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[18].AsString);
           gridHastalar.cells[20,x] := ifthen(datalar.ADO_SQL.Fields[19].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[19].AsString);
           gridHastalar.cells[21,x] := ifthen(datalar.ADO_SQL.Fields[20].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[20].AsString);
           gridHastalar.cells[22,x] := ifthen(datalar.ADO_SQL.Fields[21].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[21].AsString);
           gridHastalar.cells[23,x] := ifthen(datalar.ADO_SQL.Fields[22].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[22].AsString);
           gridHastalar.cells[24,x] := ifthen(datalar.ADO_SQL.Fields[23].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[23].AsString);
           gridHastalar.cells[25,x] := ifthen(datalar.ADO_SQL.Fields[24].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[24].AsString);
           gridHastalar.cells[26,x] := ifthen(datalar.ADO_SQL.Fields[25].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[25].AsString);
           gridHastalar.cells[27,x] := ifthen(datalar.ADO_SQL.Fields[26].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[26].AsString);
           gridHastalar.cells[28,x] := ifthen(datalar.ADO_SQL.Fields[27].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[27].AsString);
           gridHastalar.cells[29,x] := ifthen(datalar.ADO_SQL.Fields[28].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[28].AsString);
           gridHastalar.cells[30,x] := ifthen(datalar.ADO_SQL.Fields[29].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[29].AsString);
           gridHastalar.cells[31,x] := ifthen(datalar.ADO_SQL.Fields[30].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[30].AsString);
           gridHastalar.cells[32,x] := ifthen(datalar.ADO_SQL.Fields[31].AsInteger = 0 ,'',datalar.ADO_SQL.Fields[31].AsString);

     //      gridHastalar.cells[34,x] :=  datalar.ADO_SQL.Fields[36].AsString;
      //     gridHastalar.cells[35,x] :=  datalar.ADO_SQL.Fields[37].AsString;

       gridHastalar.Ints[0,x] := satir;

       for y := 2 to 32 do
       begin
           if gridHastalar.Cells[y,x] <> '' then st := st + 1;
       end;
       gridHastalar.cells[33,x] := datalar.ADO_SQL.Fields[33].AsString; //inttostr(st);
       gridHastalar.Alignments[33,x] := taRightJustify;
       gridHastalar.Colors[33,x] := $0080FFFF;
       st := 0;


       end;



       if (gridHastalar.Cells[40,x] = '0')
       then begin
       (*
        _SeansGTop := _SeansGTop + gridHastalar.ints[33,x];
        _SeanTop2 := _SeanTop2 + abs(gridHastalar.ints[2,x]);
        _SeanTop3 := _SeanTop3 + abs(gridHastalar.ints[3,x]);
        _SeanTop4 := _SeanTop4 + abs(gridHastalar.ints[4,x]);
        _SeanTop5 := _SeanTop5 + abs(gridHastalar.ints[5,x]);
        _SeanTop6 := _SeanTop6 + abs(gridHastalar.ints[6,x]);
        _SeanTop7 := _SeanTop7 + abs(gridHastalar.ints[7,x]);
        _SeanTop8 := _SeanTop8 + abs(gridHastalar.ints[8,x]);
        _SeanTop9 := _SeanTop9 + abs(gridHastalar.ints[9,x]);
        _SeanTop10 := _SeanTop10 + abs(gridHastalar.ints[10,x]);
        _SeanTop11 := _SeanTop11 + abs(gridHastalar.ints[11,x]);
        _SeanTop12 := _SeanTop12 + abs(gridHastalar.ints[12,x]);
        _SeanTop13 := _SeanTop13 + abs(gridHastalar.ints[13,x]);
        _SeanTop14 := _SeanTop14 + abs(gridHastalar.ints[14,x]);
        _SeanTop15 := _SeanTop15 + abs(gridHastalar.ints[15,x]);
        _SeanTop16 := _SeanTop16 + abs(gridHastalar.ints[16,x]);
        _SeanTop17 := _SeanTop17 + abs(gridHastalar.ints[17,x]);
        _SeanTop18 := _SeanTop18 + abs(gridHastalar.ints[18,x]);
        _SeanTop19 := _SeanTop19 + abs(gridHastalar.ints[19,x]);
        _SeanTop20 := _SeanTop20 + abs(gridHastalar.ints[20,x]);
        _SeanTop21 := _SeanTop21 + abs(gridHastalar.ints[21,x]);
        _SeanTop22 := _SeanTop22 + abs(gridHastalar.ints[22,x]);
        _SeanTop23 := _SeanTop23 + abs(gridHastalar.ints[23,x]);
        _SeanTop24 := _SeanTop24 + abs(gridHastalar.ints[24,x]);
        _SeanTop25 := _SeanTop25 + abs(gridHastalar.ints[25,x]);
        _SeanTop26 := _SeanTop26 + abs(gridHastalar.ints[26,x]);
        _SeanTop27 := _SeanTop27 + abs(gridHastalar.ints[27,x]);
        _SeanTop28 := _SeanTop28 + abs(gridHastalar.ints[28,x]);
        _SeanTop29 := _SeanTop29 + abs(gridHastalar.ints[29,x]);
        _SeanTop30 := _SeanTop30 + abs(gridHastalar.ints[30,x]);
        _SeanTop31 := _SeanTop31 + abs(gridHastalar.ints[31,x]);
        _SeanTop32 := _SeanTop32 + abs(gridHastalar.ints[32,x]);
         *)
       end;


       if (gridHastalar.Cells[40,x] = '1')
       then begin
                (*
                 _SeansGTop := _SeansGTop + _Seantop;
                 satir := 0;
                 gridHastalar.cells[0,x] := '';
                 gridHastalar.Ints[33,x] := _SeanTop;
                 gridHastalar.Ints[2,x] := _SeanTop2;
                 gridHastalar.Ints[3,x] := _SeanTop3;
                 gridHastalar.Ints[4,x] := _SeanTop4;
                 gridHastalar.Ints[5,x] := _SeanTop5;
                 gridHastalar.Ints[6,x] := _SeanTop6;
                 gridHastalar.Ints[7,x] := _SeanTop7;
                 gridHastalar.Ints[8,x] := _SeanTop8;
                 gridHastalar.Ints[9,x] := _SeanTop9;
                 gridHastalar.Ints[10,x] := _SeanTop10;
                 gridHastalar.Ints[11,x] := _SeanTop11;
                 gridHastalar.Ints[12,x] := _SeanTop12;
                 gridHastalar.Ints[13,x] := _SeanTop13;
                 gridHastalar.Ints[14,x] := _SeanTop14;
                 gridHastalar.Ints[15,x] := _SeanTop15;
                 gridHastalar.Ints[16,x] := _SeanTop16;
                 gridHastalar.Ints[17,x] := _SeanTop17;
                 gridHastalar.Ints[18,x] := _SeanTop18;
                 gridHastalar.Ints[19,x] := _SeanTop19;
                 gridHastalar.Ints[20,x] := _SeanTop20;
                 gridHastalar.Ints[21,x] := _SeanTop21;
                 gridHastalar.Ints[22,x] := _SeanTop22;
                 gridHastalar.Ints[23,x] := _SeanTop23;
                 gridHastalar.Ints[24,x] := _SeanTop24;
                 gridHastalar.Ints[25,x] := _SeanTop25;
                 gridHastalar.Ints[26,x] := _SeanTop26;
                 gridHastalar.Ints[27,x] := _SeanTop27;
                 gridHastalar.Ints[28,x] := _SeanTop28;
                 gridHastalar.Ints[29,x] := _SeanTop29;
                 gridHastalar.Ints[30,x] := _SeanTop30;
                 gridHastalar.Ints[31,x] := _SeanTop31;
                 gridHastalar.Ints[32,x] := _SeanTop32;
                  *)

                 gridHastalar.FontStyles[33,x] := gridHastalar.FontStyles[33,x] + [fsBold];
                 gridHastalar.FontStyles[1,x] := gridHastalar.FontStyles[1,x] + [fsBold];
       end;


       if (gridHastalar.Cells[40,x] = '9')
       then begin
                  gridHastalar.Cells[33,x] := '';
                  satir := 0;
                  gridHastalar.cells[0,x] := '';
       end;
       datalar.ADO_SQL.Next;
       gridHastalar.AddRow;

   end;
    (*   gridHastalar.Cells[1,x] := 'Genel Toplam';
       gridHastalar.ints[33,x] := _Seantop;
       gridHastalar.ints[33,x] := _SeansGtop;
       gridHastalar.Ints[2,x] := _SeanTop2;
       gridHastalar.Ints[3,x] := _SeanTop3;
       gridHastalar.Ints[4,x] := _SeanTop4;
       gridHastalar.Ints[5,x] := _SeanTop5;
       gridHastalar.Ints[6,x] := _SeanTop6;
       gridHastalar.Ints[7,x] := _SeanTop7;
       gridHastalar.Ints[8,x] := _SeanTop8;
       gridHastalar.Ints[9,x] := _SeanTop9;
       gridHastalar.Ints[10,x] := _SeanTop10;
       gridHastalar.Ints[11,x] := _SeanTop11;
       gridHastalar.Ints[12,x] := _SeanTop12;
       gridHastalar.Ints[13,x] := _SeanTop13;
       gridHastalar.Ints[14,x] := _SeanTop14;
       gridHastalar.Ints[15,x] := _SeanTop15;
       gridHastalar.Ints[16,x] := _SeanTop16;
       gridHastalar.Ints[17,x] := _SeanTop17;
       gridHastalar.Ints[18,x] := _SeanTop18;
       gridHastalar.Ints[19,x] := _SeanTop19;
       gridHastalar.Ints[20,x] := _SeanTop20;
       gridHastalar.Ints[21,x] := _SeanTop21;
       gridHastalar.Ints[22,x] := _SeanTop22;
       gridHastalar.Ints[23,x] := _SeanTop23;
       gridHastalar.Ints[24,x] := _SeanTop24;
       gridHastalar.Ints[25,x] := _SeanTop25;
       gridHastalar.Ints[26,x] := _SeanTop26;
       gridHastalar.Ints[27,x] := _SeanTop27;
       gridHastalar.Ints[28,x] := _SeanTop28;
       gridHastalar.Ints[29,x] := _SeanTop29;
       gridHastalar.Ints[30,x] := _SeanTop30;
       gridHastalar.Ints[31,x] := _SeanTop31;
       gridHastalar.Ints[32,x] := _SeanTop32;

      *)

       gridHastalar.Alignments[33,x] := taRightJustify;
       gridHastalar.FontStyles[33,x] := gridHastalar.FontStyles[33,x] + [fsBold];
       gridHastalar.FontStyles[1,x] := gridHastalar.FontStyles[1,x] + [fsBold];

       for j := 1 to 33 do
       begin
         gridHastalar.Colors[j,x] := $0080FFFF;
       end;


       for r := 1 to  gridHastalar.RowCount do
       begin

           for j := 1 to gun+1 do
           begin
            try
               _tarih_ :=  strtodate(inttostr(j) + DateSeparator + ay1 + DateSeparator + txtYil.Text);
               if DayOfWeek(_tarih_) = 1
               Then
                gridHastalar.Colors[j+1,r] := clGray;
            except
            end;

            if (gridHastalar.Cells[j,r] = '-1') and (gridHastalar.Cells[40,r] = '0')
            Then Begin
             // gridHastalar.Colors[j,r] := $008080FF;
              gridHastalar.AddBitmap(j,r,bmpCancel,true,haCenter,vaCenter);
            End;

            if (gridHastalar.Cells[j,r] = '1') and (txtTip.ItemIndex = 0) and (gridHastalar.Cells[40,r] = '0')
            Then begin
            //  gridHastalar.Colors[j,r] := $0080FF80;
              gridHastalar.AddBitmap(j,r,bmpOk,false,haCenter,vaCenter);
            end;


           end;
       end;



end;

procedure TfrmSeansDagilimi.btnVazgecClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TfrmSeansDagilimi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  frmana.sPanel1.BringToFront;

  Action := cafree;
end;

procedure TfrmSeansDagilimi.FormCreate(Sender: TObject);
begin
  cxPanel.Visible := false;
  dxStatusBar1.Visible := false;
  cxTab.Tabs[0].Caption := 'Hasta Seans Takip Cetveli';
  Menu:= PopupMenu1;

 // PopupMenuToToolBar(self,cxTopPanelAltOrta,PopupMenu1);
end;

procedure TfrmSeansDagilimi.sBitBtn1Click(Sender: TObject);
begin
      hastalar;

end;

procedure TfrmSeansDagilimi.SeansIcmal;
var
  ado : TADOQuery;
  sql , ay1 , Tarih1 , Tarih2 : string;
  _tarih_ : Tdate;
  gun : integer;
begin
   ay1 := formatfloat('00',txtDonem.ItemIndex);
   Tarih1 := txtYil.Text + ay1 + '01';
   _tarih_ := tarihyap(Tarih1);
   gun := DaysInMonth(_tarih_);
   Tarih2 := txtYil.Text + ay1 + inttostr(gun);
   Application.CreateForm(TfrmHakedis, frmHakedis);
   frmHakedis.list(Tarih1,Tarih2);
   frmHakedis.ShowModal;
   frmHakedis := nil;
end;

procedure TfrmSeansDagilimi.Yazdir;
var
 // PagePreview : TPagePreview;
  L : TStringList;
  sql ,txtTarih1 , txtTarih2 ,ay1 , ay2 : string;
begin


     ay1 := formatfloat('00',txtDonem.ItemIndex);


   txtTarih1 := txtYil.Text + ay1 + '01';
   txtTarih2 := txtYil.Text + ay1 + '31';

   if txtTip.ItemIndex = 0
   Then Begin
     sql := 'exec sp_SeansGostergesiYazdýr' + #39 + txtTarih1 + #39 + ',' + #39 + txtTarih2 + #39 + ',''R''';
     datalar.ADO_SQL.Close;
     datalar.ADO_SQL.SQL.Clear;
     datalar.QuerySelect(datalar.ADO_SQL,sql);
     frmRapor.topluset.Dataset1 := datalar.ADO_SQL;
     frmRapor.topluset.Dataset2 := KurumBilgi;
     frmRapor.raporData1(frmRapor.topluset ,'034','\SeansDagilim');
     frmRapor.ShowModal;
   End
   Else
   Begin
      sql := 'exec sp_SeansGostergesiMakina' + #39 + txtTarih1 + #39 + ',' + #39 + txtTarih2 + #39 + ',''R''';
      datalar.ADO_SQL.Close;
      datalar.ADO_SQL.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL,sql);
      frmRapor.topluset.Dataset1 := datalar.ADO_SQL;
      frmRapor.topluset.Dataset2 := KurumBilgi;

      sql := 'select SLB as Kod,SLT as Tanim,SLVV as seriNo from Parametreler where SLK = ''50''' +
             'order by SLB';
      datalar.ADO_SQL1.Close;
      datalar.ADO_SQL1.SQL.Clear;
      datalar.QuerySelect(datalar.ADO_SQL1,sql);
      frmRapor.topluset.Dataset3 := datalar.ADO_SQL1;


      frmRapor.raporData1(frmRapor.topluset ,'043','\SeansDagýlýmýMakina');
      frmRapor.ShowModal;
   End; 



end;

procedure TfrmSeansDagilimi.cxKaydetClick(Sender: TObject);
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  case TControl(sender).Tag of
  -1 : begin
         Yazdir;
       end;
  -2 : begin
         ExceleGonder;
       end;
  -3 : begin
         SeansIcmal;
       end;

  end;
end;

procedure TfrmSeansDagilimi.ExceleGonder;
var
  FStream: TFileStream;
  I, J: Integer;
  xls, xlw: Variant;
begin

    SaveDialog1.FileName := 'SeansGostergesi.xls';
    if SaveDialog1.Execute = True
    Then
     gridHastalar.SaveToXLS(SaveDialog1.FileName);
  //   ShowMessageSkin('SeansGostergesi.XLS','Dosyasý Oluþturuldu','','info');


(*
  FStream := TFileStream.Create('SeansGostergesi.xls', fmCreate);
  try
    XlsBeginStream(FStream, 0);
    for J := 0 to gridHastalar.RowCount -1 do
    for I := 0 to gridHastalar.ColCount -1 do
        XlsWriteCellLabel(FStream, I, J, gridHastalar.Cells[I,J]);

           //case Query1.Fields[I].DataType of
           // ftFloat :XlsWriteCellNumber(FStream, I, J, Query1.Fields[I].asFloat); //float
           // ftInteger :XlsWriteCellRk(FStream, I, J, Query1.Fields[I].asInteger);  //integer
           // else XlsWriteCellLabel(FStream, I, J, Query1.Fields[I].asString); //String ve diðer
           //end; //end of case
    XlsEndStream(FStream);
  finally
    FStream.Free;
    if mrYES = Showmessage('SeansGostergesi.xls adlý Excel Dosyasý kaydedildi.','SeansGostergesi.xls Açýlsýnmý ?','','msg')
    then begin
       xls := CreateOLEObject('Excel.Application');

       xlw := xls.WorkBooks.Open(FileName := 'c:\NoktaV3\SeansGostergesi.xls', Password := '', ReadOnly := True);

    end;

  end;
  *)
end;

procedure TfrmSeansDagilimi.FormShow(Sender: TObject);
var
   sql : string;
   i : integer;
begin
   inherited;
   txtYil.Text :=  copy(tarihal(date()),1,4);

   datalar.ADO_SQL.close;
   datalar.ADO_SQL.SQL.Clear;
   sql := 'exec sp_YillikSeansGostergesi '''',''T''';
   datalar.QuerySelect(datalar.ADO_SQL,sql);

   txtYil.Properties.Items.Clear;

     for i := 1 to datalar.ADO_SQL.RecordCount  do
     begin
         txtYil.properties.Items.Add(datalar.ADO_SQL.fieldbyname('YIL').AsString);
         datalar.ADO_SQL.Next;
     end;

end;

procedure TfrmSeansDagilimi.Seansaretle1Click(Sender: TObject);
var
  cor : TGridCoord;
  c1,c2 , r1 , r2 , x , y : integer;
begin

  c2 :=  gridHastalar.Selection.Right;
  c1 :=  gridHastalar.Selection.Left;
  r1 :=  gridHastalar.Selection.Top;
  r2 :=  gridHastalar.Selection.Bottom;

  for x := r1 to r2 do
  begin
      for y := c1 to c2 do
      begin
          if (gridHastalar.Colors[y,x] <> clgray)
              and (gridHastalar.Colors[y,x] <> $00FF8080)
              and (gridHastalar.Colors[y,x] <> $0080FFFF)
              and (y <> 1)
              and (gridHastalar.Cells[1,x] <> 'TOPLAM')
          then
          gridHastalar.Cells[y,x] := '1';
      end;

  end;




end;

procedure TfrmSeansDagilimi.gridHastalarClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin



   if gridHastalar.Cells[Acol,Arow] = '-1'
   Then
     gridHastalar.Hint := 'Medulaya Kayýt Edilmemiþ Seans'
   Else
   if gridHastalar.Cells[Acol,Arow] = '1'
   Then gridHastalar.Hint := 'Medulaya Kayýtlý Seans'
   Else gridHastalar.Hint := '';


end;

procedure TfrmSeansDagilimi.gridHastalarDblClick(Sender: TObject);
var
  dosyaNo,gelisNo , Tarih  , sql , _tarih_ , sira : string;
  ado : TADOQuery;
begin

       if gridHastalar.Cells[gridHastalar.col,gridHastalar.row] = ''
       Then exit;

       dosyaNo := gridHastalar.Cells[34,gridHastalar.row];
       gelisNo := gridHastalar.Cells[37,gridHastalar.row];

       Tarih :=  gridHastalar.Cells[gridHastalar.col ,0] + '.'+inttostr(txtdonem.itemindex)+'.'+txtYil.text;
       _tarih_ := tarihal(strtodate(Tarih));

       ado := TADOQuery.Create(nil);
       ado.Connection := datalar.ADOConnection2;

       sql := 'select siraNo from Gelisdetay where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo + ' and UTarih = ' + QuotedStr(_tarih_);
       datalar.QuerySelect(ado,sql);

       sira := ado.Fields[0].AsString;

     //  Application.CreateForm(TfrmHemsireTkp, frmHemsireTkp);
     //  frmHemsireTkp.FormAc(sira,dosyaNo , gelisNO , Tarih);

    //   GorselAyar(frmHemsireTkp,datalar.global_img_list4);
    //   frmHemsireTkp.ShowModal;
    //   frmHemsireTkp := nil;

       ado.free;

end;

end.
