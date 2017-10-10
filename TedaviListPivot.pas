unit TedaviListPivot;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, ADODB, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxContainer, Menus, StdCtrls, cxButtons, cxMaskEdit, cxGridExportlink,
  cxDropDownEdit, cxCalendar,Kadir,KadirLabel,KadirType,GetformClass,GirisUnit;

type
  TfrmTedaviListP = class(TGirisForm)
    Grid: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Grida: TcxGridDBColumn;
    Grid_dg_: TcxGridDBColumn;
    Gridsira: TcxGridDBColumn;
    GridDBColumn1: TcxGridDBColumn;
    GridDBColumn2: TcxGridDBColumn;
    GridDBColumn3: TcxGridDBColumn;
    GridDBColumn4: TcxGridDBColumn;
    GridDBColumn5: TcxGridDBColumn;
    GridDBColumn6: TcxGridDBColumn;
    GridDBColumn7: TcxGridDBColumn;
    GridDBColumn8: TcxGridDBColumn;
    GridDBColumn9: TcxGridDBColumn;
    GridDBColumn10: TcxGridDBColumn;
    GridDBColumn11: TcxGridDBColumn;
    GridDBColumn12: TcxGridDBColumn;
    GridDBColumn13: TcxGridDBColumn;
    GridDBColumn14: TcxGridDBColumn;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    E1: TMenuItem;
    G1: TMenuItem;
    D1: TMenuItem;
    H1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure G1Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTedaviListP: TfrmTedaviListP;

implementation
    uses AnaUnit,data_modul;
{$R *.dfm}

procedure TfrmTedaviListP.E1Click(Sender: TObject);
begin
    SaveDialog1.FileName := 'TopluTedaviListesi.xls';
    if SaveDialog1.Execute = True
    Then
      ExportGridToExcel(SaveDialog1.FileName,cxGrid1 ,False,True);
end;

procedure TfrmTedaviListP.FormCreate(Sender: TObject);
begin
   cxPanel.Visible := false;
   Menu:= PopupMenu1;
   TopPanel.Visible := True;
   TapPanelElemanVisible(True,True,True,False,False,False,False,False,False,False,False,False);
   Grid.DataController.DataSource := DataSource;

   Grid.ViewData.Expand(True);

end;

procedure TfrmTedaviListP.G1Click(Sender: TObject);
begin
   case TMenuItem(sender).Tag of
    1 : Grid.ViewData.Expand(True);
    2 : Grid.ViewData.Collapse(True);
   end;
end;

procedure TfrmTedaviListP.H1Click(Sender: TObject);
var
 Form : TGirisForm;
 dosyaNo : string;
begin
     dosyaNo := _Dataset.FieldByName('dosyaNo').AsString;
     if FindTab(AnaForm.sayfalar,'TabfrmHastaKart')
     Then begin
       Form := TGirisForm(FormClassType(TagfrmHastaKart));
       TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := dosyaNo;
       TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
     end
     Else begin
      Form := FormINIT(TagfrmHastaKart,self,dosyaNo,NewTab(AnaForm.sayfalar,'TabfrmHastaKart'),ikEvet,'Giriþ');
      if Form <> nil then Form.show;
     end;
end;

end.
