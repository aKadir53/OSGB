unit labParametreleri;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,  ExtCtrls, Grids,
  DBGridEh, ADODB, DB, DBCtrls, cxStyles,GirisUnit,KadirType,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,strutils,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid , kadir,
  Menus, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxGroupBox,
  cxRadioGroup, cxPC, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, GridsEh, cxButtons, KadirLabel;

type
  TfrmLabParams = class(TGirisForm)
    pnlToolBar: TPanel;
    Panel1: TPanel;
    ADO_TESTLER: TADOQuery;
    DataSource1: TDataSource;
    ADO_PARAMETRELER: TADOTable;
    DataSource2: TDataSource;
    Panel2: TPanel;
    DBGridEh3: TDBGridEh;
    ADO_NORMALLER: TADOTable;
    DataSource3: TDataSource;
    ADO_LABOTODEGER: TADOTable;
    DataSource4: TDataSource;
    DBGridEh1: TDBGridEh;
    PopupMenu1: TPopupMenu;
    GrupDeitir1: TMenuItem;
    pnlGrup: TPanel;
    Panel3: TPanel;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    gridTestler: TcxGrid;
    gridTestlerDBTableView1: TcxGridDBTableView;
    gridTestlerDBTableView1Column1: TcxGridDBColumn;
    gridTestlerDBTableView1Column2: TcxGridDBColumn;
    gridTestlerDBTableView1Column3: TcxGridDBColumn;
    gridTestlerLevel1: TcxGridLevel;
    grup: TcxRadioGroup;
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    DBGridEh2: TDBGridEh;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Splitter1: TSplitter;
    txtBirimler: TComboBox;
    btnYat: TcxButtonKadir;
    btnGrupAyar: TcxButtonKadir;
    procedure TablolariAc;
    procedure TablolariKapat;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVazgecClick(Sender: TObject);
    procedure gridTestlerDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ADO_PARAMETRELERBeforePost(DataSet: TDataSet);
    procedure ADO_NORMALLERBeforePost(DataSet: TDataSet);
    procedure btnYatClick(Sender: TObject);
    procedure ADO_PARAMETRELERNewRecord(DataSet: TDataSet);
    procedure ADO_PARAMETRELERAfterEdit(DataSet: TDataSet);
    procedure ADO_PARAMETRELERAfterInsert(DataSet: TDataSet);
    procedure ADO_PARAMETRELERAfterPost(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure GrupDeitir1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure grupClick(Sender: TObject);
    procedure btnYazdirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = '';
      formGenislik = 500;
      formYukseklik = 550;

var
  frmLabParams: TfrmLabParams;
  grupCod : string;

implementation
uses Data_modul;// , ayarlar;
{$R *.dfm}

function TfrmLabParams.Init(Sender: TObject) : Boolean;
begin
  Result := True;
  TablolariAc;
end;

procedure TfrmLabParams.TablolariKapat;
begin
     ADO_TESTLER.Active := False;
     ADO_PARAMETRELER.Active := False;
     ADO_NORMALLER.Active := False;
     ADO_LABOTODEGER.Active := False;
end;



procedure TfrmLabParams.TablolariAc;
var
  sql : string;
  ado : TADOQuery;
begin
     //ado := TADOQuery.Create(nil);
     //ado.Connection := datalar.ADOConnection2;

     ADO_TESTLER.Active := true;
     ADO_PARAMETRELER.Active := true;
     ADO_NORMALLER.Active := true;
     ADO_LABOTODEGER.Active := true;

   //  sql := 'select slt from labBirimleri ';
   //  ComboDoldur(ado,sql,txtBirimler);
   //  ado.Free;


     DBGridEh2.Columns[2].PickList := txtBirimler.Items;


      //    gruplariRadioGrupdiz(grup);

end;

procedure TfrmLabParams.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     TablolariKapat;
end;

procedure TfrmLabParams.FormCreate(Sender: TObject);
begin
  Tag := TagfrmLabParametreleri;

  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  TableName := _TableName_;

 // Olustur(self,_TableName_,'Testler',28);
  menu := PopupMenu1;
  cxPanel.Visible := false;
  SayfaCaption('','','','','');

end;

procedure TfrmLabParams.btnVazgecClick(Sender: TObject);
begin
     close;
end;

procedure TfrmLabParams.gridTestlerDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (key = vk_return)
    Then begin
         ADO_PARAMETRELER.Append;
         ADO_PARAMETRELER.FieldByName('sira').AsInteger := 1;
         ADO_PARAMETRELER.FieldByName('parametreadi').AsString := ADO_TESTLER.fieldbyname('NAME1').AsString;
         DBGridEh2.SetFocus;
         DBGridEh2.SelectedIndex := 2;

    End;
end;

procedure TfrmLabParams.ADO_PARAMETRELERBeforePost(DataSet: TDataSet);
begin

   ADO_PARAMETRELER.FieldByName('type').AsString  :=
   ifThen(ADO_PARAMETRELER.FieldByName('type').AsString = '','P',ADO_PARAMETRELER.FieldByName('type').AsString);



end;

procedure TfrmLabParams.ADO_NORMALLERBeforePost(DataSet: TDataSet);
begin


   ADO_NORMALLER.FieldByName('yas1').Asstring :=
   ifThen(ADO_NORMALLER.FieldByName('yas1').Asstring = '','0',ADO_NORMALLER.FieldByName('yas1').Asstring);


   ADO_NORMALLER.FieldByName('yas2').Asstring :=
   ifThen(ADO_NORMALLER.FieldByName('yas2').Asstring = '','100',ADO_NORMALLER.FieldByName('yas2').Asstring);

   ADO_NORMALLER.FieldByName('cinsiyet').AsString :=
   ifThen(ADO_NORMALLER.FieldByName('cinsiyet').AsString = '','H',ADO_NORMALLER.FieldByName('cinsiyet').AsString);


   if ADO_PARAMETRELER.FieldByName('Panikikaz').AsString = 'E'
   Then Begin
      if (ADO_NORMALLER.FieldByName('Normal1').AsString = '') and
         (ADO_NORMALLER.FieldByName('Normal2').AsString = '')

      Then BEgin
          ShowMessageSkin('Panik Deðer Aralýðý Tanýmlamadýnýz !!!','','','info');

      End;
   End;





end;

procedure TfrmLabParams.btnYatClick(Sender: TObject);
begin
(*
   Application.CreateForm(TfrmAyar, frmAyar);
   GorselAyar(frmAyar,datalar.global_img_list4);
   frmAyar.txtAyarTip.ItemIndex := abs(TsBitBtn(sender).Tag);
   frmAyar.txtAyarTipClick(nil);
   frmAyar.txtAyarTip.Enabled := false;

   frmAyar.ShowModal;
  *)
end;

procedure TfrmLabParams.ADO_PARAMETRELERNewRecord(DataSet: TDataSet);
begin
  // DBGridEh3.Enabled := false;


end;

procedure TfrmLabParams.ADO_PARAMETRELERAfterEdit(DataSet: TDataSet);
begin
  // DBGridEh3.Enabled := false;
end;

procedure TfrmLabParams.ADO_PARAMETRELERAfterInsert(DataSet: TDataSet);
begin
 //  DBGridEh3.Enabled := false;
end;

procedure TfrmLabParams.ADO_PARAMETRELERAfterPost(DataSet: TDataSet);
begin
  //  DBGridEh3.Enabled := True;
end;

procedure TfrmLabParams.Button2Click(Sender: TObject);
begin
 pnlGrup.Visible := false;
end;

procedure TfrmLabParams.GrupDeitir1Click(Sender: TObject);
var
  sql : string;
  ado : TADOQuery;
  item : TcxRadioGroupItem;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;

    Sql := 'select SLB kod,SLT as grup from parametreler where SLK = ''53''';
    datalar.QuerySelect(ado,sql);
    Grup.Clear;
    while not ado.Eof do
    begin
      item := Grup.Properties.Items.Add;
      item.Caption := ado.FieldByName('grup').AsString;
      item.Value := ado.FieldByName('kod').AsString;
      ado.Next;
    end;
  finally
    ado.Free;
  end;


  try
   grup.ItemIndex := -1;
  except
  end;
   pnlGrup.Visible := true;

end;

procedure TfrmLabParams.Button1Click(Sender: TObject);
var
  sql : string;
  ado : TADOQuery;
begin
  try
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;

      sql := 'update HIZMET set OZELKOD = ' + QuotedStr(grupCod) +
             ' where code = ' + QuotedStr(ADO_TESTLER.fieldbyname('code').AsString);

      datalar.QueryExec(ado,sql);
    finally
     ado.Free;
    end;
  except
    ShowMessageSkin('Hata Oluþtu','','','info');
    exit;
  End;
 //   ShowMessageSkin('Grup Deðiþtirildi','','','info');

  ADO_TESTLER.Active := False;
  ADO_TESTLER.Active := true;
  pnlGrup.Visible := false;

end;

procedure TfrmLabParams.grupClick(Sender: TObject);
var
  a : string;
  x : integer;
  ado : TADOQuery;
  sql : string;
begin
  grupCod := varToStr(grup.ActiveProperties.Items.Items[grup.itemindex].Value);
  try
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;
      sql := 'update HIZMET set OZELKOD = ' + QuotedStr(grupCod) +
             ' where code = ' + QuotedStr(ADO_TESTLER.fieldbyname('code').AsString);
      datalar.QueryExec(ado,sql);
    finally
      ado.Free;
    end;
  except
    ShowMessageSkin('Hata Oluþtu','','','info');
    exit;
  End;
  ADO_TESTLER.Active := False;
  ADO_TESTLER.Active := true;
  pnlGrup.Visible := false;

end;

procedure TfrmLabParams.btnYazdirClick(Sender: TObject);
var
//   HizmetE : kadir.Hizmetekle;
   msj : string;
begin

 //  HizmetE := HizmetEkle.Create;
 //  HizmetE.Tanim := '02';
 //  HizmetE.show;
 //  HizmetE.Free;


end;

end.
