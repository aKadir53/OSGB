unit AnamnezListe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, Mask, EditType, StdCtrls, clisted, Buttons,
  sBitBtn, ExtCtrls, DB, data_modul,cxMemo,
  kadir, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxCurrencyEdit, cxGridBandedTableView,
  cxGridDBBandedTableView, Menus, ADODB, cxLookAndFeels,
  cxLookAndFeelPainters, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, GridsEh, dxmdaset;

type
  TfrmAnamnezListe = class(TForm)
    pnlToolBar: TPanel;
    PanelSource: TPanel;
    pnlOnay: TPanel;
    txtinfo: TLabel;
    btnSend: TsBitBtn;
    btnVazgec: TsBitBtn;
    GroupBox2: TGroupBox;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    DBGridEh2: TDBGridEh;
    DataSource2: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
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
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
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
    SkKullanlanlardankar1: TMenuItem;
    Label1: TLabel;
    ADO_SQL: TADOQuery;
    N1: TMenuItem;
    Liste1: TMenuItem;
    EklemeModu1: TMenuItem;
    Listedenkar1: TMenuItem;
    Eklenenler: TdxMemData;
    EklenenlerICDKODU: TStringField;
    EklenenlerTANI: TStringField;
    procedure txtHizmetGruplariCheckListItemToText(sender: TObject;
      var aText: String);
    procedure Gruplar;
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSendClick(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
    procedure Tanilar(_tani , tip , doktor : string);
    procedure TanilarCombo;
    procedure gridHizmetlerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSikKullanClick(Sender: TObject);
    procedure btnSikKullanilanlarClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SkKullanlanlardankar1Click(Sender: TObject);
    procedure ADO_SQLNewRecord(DataSet: TDataSet);
    procedure txtSikayetBulguChange(Sender: TObject);
    procedure gridMode(tip : integer);
    procedure Liste1Click(Sender: TObject);
    procedure compIndex(index : integer);
    procedure sBitBtn1Click(Sender: TObject);
    procedure Listedenkar1Click(Sender: TObject);
    procedure cxGridDBTableView1CanFocusRecord(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      var AAllow: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAnamnezListe: TfrmAnamnezListe;
 // Hizmet : THizmetler;
  _doktor , tani , modul : string;
  comp : integer;
implementation

uses  Anamnez;

{$R *.dfm}
procedure TfrmAnamnezListe.compIndex(index : integer);
begin
     comp := index;
end;


procedure TfrmAnamnezListe.gridMode(tip : integer);
begin
  if tip = 1
  Then Begin
    cxGridDBTableView1.OptionsData.Appending := true;
    cxGridDBTableView1.OptionsData.Deleting := true;
    cxGridDBTableView1.OptionsData.DeletingConfirmation := true;
    cxGridDBTableView1.OptionsData.Editing := true;
    cxGridDBTableView1.OptionsData.Inserting := true;
 //   cxGridDBTableView1.DataController.DataModeController.GridMode := True;
  End
  Else
  Begin
    cxGridDBTableView1.OptionsData.Appending := false;
    cxGridDBTableView1.OptionsData.Deleting := false;
    cxGridDBTableView1.OptionsData.DeletingConfirmation := false;
    cxGridDBTableView1.OptionsData.Editing := false;
    cxGridDBTableView1.OptionsData.Inserting := false;
 //   cxGridDBTableView1.DataController.DataModeController.GridMode := false;

  End;

end;


procedure TfrmAnamnezListe.TanilarCombo;

begin
  //   datalar.ADO_TANILAR.close;
  //   datalar.ADO_TANILAR.SQL.Clear;

  //   ComboDoldur2(datalar.ADO_TANILAR,'select kodu,adi from icd_ana_grup',txtIcdGrup,0,1);
end;

procedure TfrmAnamnezListe.Tanilar(_tani , tip , doktor : string);
var
   sql : string;
begin
  modul := _tani;
  tani := _tani;

     case strtoint(modul) of
      1 : Caption := 'Hasta Þikayetleri';
      2 : Caption := 'Muayane Bulgularý';
      4 : Caption := 'Tedavi ve Sonuç Bilgileri';
     end;

  if tip = 'SIK'
  Then Begin
     SkKullanlanlardankar1.Visible := true;
     Liste1.Visible := false;
     EklemeModu1.Visible := false;
     Listedenkar1.Visible := false;
  End
  Else
  Begin
     SkKullanlanlardankar1.Visible := false;
     Liste1.Visible := true;
     EklemeModu1.Visible := true;
     Listedenkar1.Visible := true;
  End;

  _doktor := doktor;

  if tip = 'SIK'
  Then Begin
    ADO_SQL.Close;
    ADO_SQL.SQL.Clear;
    sql := 'select *,kod as ifade from SIK_Kullanilanlar' +
           ' where doktor = ' + QuotedStr(_doktor) +
           ' and modul = ' + QuotedStr(_tani);

    datalar.QuerySelect(ADO_SQL,sql);
  End
  Else
  Begin
    ADO_SQL.Close;
    ADO_SQL.SQL.Clear;
    sql := 'select MODUL,ifade,id from Sikayet_Bulgular where modul = ' + QuotedStr(_tani);
    datalar.QuerySelect(ADO_SQL,sql);
  End;

  gridMode(0);
end;

procedure TfrmAnamnezListe.Gruplar;
begin
 (*
    sql := 'select SLB,SLT from hizmet_gruplari';
    datalar.QuerySelect(datalar.ADO_SQL,sql);

    txtHizmetGruplari.Clear;

    for x := 1 to datalar.ADO_SQL.RecordCount do
    begin
        txtHizmetGruplari.Items.Add(datalar.ADO_SQL.FieldList[0].AsString + ' ' + datalar.ADO_SQL.FieldList[1].AsString);
        datalar.ADO_SQL.Next;
    end;
   *)
end;


procedure TfrmAnamnezListe.txtHizmetGruplariCheckListItemToText(
  sender: TObject; var aText: String);
begin
 atext :=  copy(atext,1,2);
end;

procedure TfrmAnamnezListe.DBGridEh1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

    if key = vk_return
    then begin

      Eklenenler.Append;
      Eklenenler.FieldByName('ICDKODU').AsString := datalar.ADO_TANILAR.fieldbyname('ICDKODU').AsString;
      Eklenenler.FieldByName('TANI').AsString := datalar.ADO_TANILAR.fieldbyname('TANI').AsString;

      Eklenenler.Post;
    end;

end;

procedure TfrmAnamnezListe.btnSendClick(Sender: TObject);
var
   i : integer;
   s : string;
begin

     Eklenenler.First;

     for i := 1 to Eklenenler.RecordCount do
     begin
          s := s + Eklenenler.fieldbyname('TANI').AsString + ',';
          Eklenenler.Next;
     end;
     s := trim(copy(s,1,Length(s)-1));

     case strtoint(modul) of
      1 : TcxMemo(frmAnamnez.FindComponent('SIKAYETLERI')).EditValue := s;
      2 : TcxMemo(frmAnamnez.FindComponent('MUAYENEBULGULARI')).EditValue := s;
      4 : TcxMemo(frmAnamnez.FindComponent('MUAYENESONUC')).EditValue := s;
     end;

     close;
end;

procedure TfrmAnamnezListe.btnVazgecClick(Sender: TObject);
begin
     datalar.ADO_TANILAR.Close;
     close;
end;

procedure TfrmAnamnezListe.gridHizmetlerKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key = vk_return
    then begin
        Eklenenler.Append;
        Eklenenler.FieldByName('ICDKODU').AsString := datalar.ADO_TANILAR.fieldbyname('ICDKODU').AsString;
        Eklenenler.FieldByName('TANI').AsString := datalar.ADO_TANILAR.fieldbyname('TANI').AsString;

        Eklenenler.Post;
    end;
end;

procedure TfrmAnamnezListe.btnSikKullanClick(Sender: TObject);
begin
(*

    Eklenenler.First;

    for x := 1 to Eklenenler.RecordCount do
     Begin


        sql := 'insert into SIK_Kullanilanlar (doktor,kod,modul) ' +
               'values( ' + QuotedStr(datalar.doktorKodu) + ',' +
               QuotedStr(Eklenenler.fieldbyname('TANI').AsString) + ',' +
               QuotedStr(tani) + ')';

        datalar.ADO_SQL7.Close;
        datalar.ADO_SQL7.SQL.Clear;
        datalar.QueryExec(datalar.ADO_SQL7,sql);

        Eklenenler.Next;
     End;



    if datalar.ADOConnection2.InTransaction
    Then
    datalar.ADOConnection2.CommitTrans;

    ShowMessageSkin('Tanýlar Sýk Kullanýlanlara Eklendi','','','msg');
   *)
end;

procedure TfrmAnamnezListe.btnSikKullanilanlarClick(Sender: TObject);
begin
 //   Tanilar(copy(txtSikayetBulgu.Text,1,1) ,'SIK',datalar.doktorKodu);
 //   gridMode(0);
end;

procedure TfrmAnamnezListe.cxGridDBTableView1DblClick(Sender: TObject);
var
   key : word;
begin
    key := 13;
    cxGridDBTableView1KeyDown(sender,key,[]);

end;

procedure TfrmAnamnezListe.cxGridDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key = vk_return
    then begin
        Eklenenler.Append;
        Eklenenler.FieldByName('ICDKODU').AsString := ADO_SQL.fieldbyname('modul').AsString;
        Eklenenler.FieldByName('TANI').AsString := ADO_SQL.fieldbyname('ifade').AsString;

        Eklenenler.Post;
    end;
end;

procedure TfrmAnamnezListe.SkKullanlanlardankar1Click(Sender: TObject);
var
  sql ,sira : string;

begin
   sira := ADO_SQL.fieldbyname('sira').AsString;

   try
       sql := 'delete from SIK_Kullanilanlar where sira = ' + sira;

       datalar.ADO_SQL7.Close;
       datalar.ADO_SQL7.SQL.Clear;
       datalar.QueryExec(datalar.ADO_SQL7,sql);
       ShowMessageSkin('Sýk Kullanýlanlardan Çýkarýldý','','','msg');

   except on e : Exception do
    begin
     ShowMessageSkin('Hata , Sýk Kullanýlanlardan Çýkarýlamadý ,' + e.Message,'','','msg');
    end;
   end;
end;

procedure TfrmAnamnezListe.ADO_SQLNewRecord(DataSet: TDataSet);
begin

   ADO_SQL.FieldByName('modul').AsString := modul;

end;

procedure TfrmAnamnezListe.txtSikayetBulguChange(Sender: TObject);
begin
     Tanilar(modul ,'TANI','');
end;

procedure TfrmAnamnezListe.Liste1Click(Sender: TObject);
begin
    gridMode(TPopupMenu(sender).Tag);
end;

procedure TfrmAnamnezListe.sBitBtn1Click(Sender: TObject);
begin
     Tanilar(modul ,'TANI',datalar.doktorKodu);
end;

procedure TfrmAnamnezListe.Listedenkar1Click(Sender: TObject);
var
  sira , sql : string;
begin
   sira := ADO_SQL.fieldbyname('id').AsString;

   try
       sql := 'delete from Sikayet_Bulgular where id = ' + sira;

       datalar.ADO_SQL7.Close;
       datalar.ADO_SQL7.SQL.Clear;
       datalar.QueryExec(datalar.ADO_SQL7,sql);
       ShowMessageSkin('Listeden Çýkarýldý','','','msg');

   except on e : Exception do
    begin
     ShowMessageSkin('Hata , Listeden Çýkarýlamadý ,' + e.Message,'','','msg');
    end;
   end;

end;

procedure TfrmAnamnezListe.cxGridDBTableView1CanFocusRecord(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  var AAllow: Boolean);
begin

   //  ShowMessage(ADO_SQL.fieldbyname('id').AsString,'','','info');

end;

end.
