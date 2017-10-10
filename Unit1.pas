unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ButtonGroup,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLookAndFeels, dxSkinsForm, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  dxSkinsdxNavBarPainter, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxPC,
  cxClasses, dxNavBarBase, dxNavBarCollns, dxNavBar, cxMemo, cxRichEdit, cxLabel,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, KadirLabel, Vcl.ImgList, dxLayoutcxEditAdapters,
  dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl, cxMaskEdit,
  cxDropDownEdit, cxCheckBox, Menus, cxButtons;

type
  TForm1 = class(TForm)
    dxSkinController1: TdxSkinController;
    Button1: TButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    dxNavBar1: TdxNavBar;
    dxNavBar1Group1: TdxNavBarGroup;
    dxNavBar1Group2: TdxNavBarGroup;
    dxNavBar1Item1: TdxNavBarItem;
    dxNavBar1Group1Control: TdxNavBarGroupControl;
    dxNavBar1Group2Control: TdxNavBarGroupControl;
    cxLabel2: TcxLabel;
    dxNavBar1Group3: TdxNavBarGroup;
    dxNavBar1Group4: TdxNavBarGroup;
    dxNavBar1Group3Control: TdxNavBarGroupControl;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ListeAc1: TListeAc;
    cxImageList1: TcxImageList;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxTextEdit1: TcxTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxComboBox1: TcxComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxCheckBox1: TcxCheckBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxRichEdit1: TcxRichEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxTextEdit2: TcxTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxTextEdit3: TcxTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxButton1: TcxButton;
    cxTextEdit4: TcxTextEdit;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.cxButton1Click(Sender: TObject);
var
 edit,edit1 : TcxTextEdit;
 item : TdxLayoutItem;
begin

   edit := TcxTextEdit.Create(self);
   dxLayoutControl1Group3.CreateItemForControl(edit).Caption := 'Deneme';
    edit1 := TcxTextEdit.Create(self);
   dxLayoutControl1Group2.CreateItemForControl(edit1).Caption := 'Test';

end;

end.
