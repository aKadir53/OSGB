unit LAbsonucGir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, sBitBtn, ExtCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,adodb,
  Menus, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter;

type
  TfrmLabSonucGir = class(TForm)
    pnlOnay: TPanel;
    txtinfo: TLabel;
    btnVazgec: TsBitBtn;
    Panel1: TPanel;
    cxGrid2: TcxGrid;
    sonucGir: TcxGridDBTableView;
    sonucGirColumn3: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    sonucGirColumn2: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    sonucGirColumn1: TcxGridDBColumn;
    sonucGirColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    PopupMenu1: TPopupMenu;
    x1: TMenuItem;
    sonucGirColumn5: TcxGridDBColumn;
    procedure btnYazdirClick(Sender: TObject);
    procedure sonucGirEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure btnVazgecClick(Sender: TObject);
    procedure x1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure btnSeanslarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLabSonucGir: TfrmLabSonucGir;

implementation
  uses LabaratuvarKabul, data_modul, rapor;
{$R *.dfm}

procedure TfrmLabSonucGir.btnYazdirClick(Sender: TObject);
var
   sql : string;
   ado : TADOQuery;
begin
  datalar.ADO_SQL3.Close;
  datalar.ADO_SQL3.SQL.Clear;
  sql := 'exec sp_LabSonucYazdir ' +  #39 + frmLabaratuvarKabul.bilgi.dosyaNo + #39 + ',' +
         frmLabaratuvarKabul.bilgi.gelisNo + ',' + frmLabaratuvarKabul.bilgi.detayNo;
  datalar.QuerySelect(datalar.ADO_SQL3,sql);


  //frmRapor.topluset.Dataset1 := datalar.ADO_SQL3;


  frmRapor.raporData(datalar.ADO_SQL3,'010','\LabSonuc','');
  frmRapor.ShowModal;


  sql := 'update LaboratuvarKabul set sec = 0,yazdirildi = 1  ' +
         'where dosyaNo = ' + QuotedStr(frmLabaratuvarKabul.bilgi.dosyaNo) +
         ' and sec = 1';
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    datalar.QueryExec(ado,sql);
  finally
    ado.Free;
  end;
  //cxGridDBTableView4DblClick(nil);
end;

procedure TfrmLabSonucGir.sonucGirEditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
   if key = vk_f7
   Then begin
   aedit.EditValue := 'NEGATÝF';
   aedit.PostEditValue;

   end;

   if key = vk_f6
   Then
   aedit.EditValue := 'POZÝTÝF';
   aedit.PostEditValue;

   if key = vk_return
   Then Begin
   // aedit.PostEditValue;
    frmLabaratuvarKabul.ADO_TESTSONUCLARI.Next;
   End;
end;

procedure TfrmLabSonucGir.btnVazgecClick(Sender: TObject);
begin
   close;
end;

procedure TfrmLabSonucGir.x1Click(Sender: TObject);
begin
     frmLabaratuvarKabul.ADO_TESTSONUCLARI.Edit;
     frmLabaratuvarKabul.ADO_TESTSONUCLARI.FieldByName('sonuc1').AsString := TMenuItem(sender).Caption;
     frmLabaratuvarKabul.ADO_TESTSONUCLARI.Post;
end;

procedure TfrmLabSonucGir.PopupMenu1Popup(Sender: TObject);
var
   x : integer;
   menu :  TMenuItem;
   sira,testKodu,sql : string;
begin
        sira := frmLabaratuvarKabul.ADO_TESTSONUCLARI.fieldbyname('parametre_sira').AsString;
        testKodu := frmLabaratuvarKabul.ADO_TESTSONUCLARI.fieldbyname('testNo').AsString;

        sql := 'select * from labOtoDeger where sira = ' + sira + ' and kod = ' + QuotedStr(testKodu);
        datalar.ADO_SQL.Close;
        datalar.ADO_SQL.SQL.Clear;
        datalar.QuerySelect(datalar.ADO_SQL,sql);

        PopupMenu1.Items.Clear;

//        dizi := TMenuItem.Create(nil);

        for  x := 1 to datalar.ADO_SQL.RecordCount do
        begin

            Menu := TMenuItem.Create(Self);
            menu.Caption := datalar.ADO_SQL.fieldbyname('ifade').AsString;
            menu.Tag := x;
       //     menu.OnClick := btnSeanslar.OnClick;
            PopupMenu1.Items.Add(menu);

            datalar.ADO_SQL.Next;
        end;



end;

procedure TfrmLabSonucGir.btnSeanslarClick(Sender: TObject);
begin
     frmLabaratuvarKabul.ADO_TESTSONUCLARI.Edit;
     frmLabaratuvarKabul.ADO_TESTSONUCLARI.FieldByName('sonuc1').AsString := copy(TMenuItem(sender).Caption,2,100);
     frmLabaratuvarKabul.ADO_TESTSONUCLARI.Post;

end;

procedure TfrmLabSonucGir.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 27
  then btnVazgec.Click;
end;

procedure TfrmLabSonucGir.FormShow(Sender: TObject);
begin

   cxGrid2.SetFocus;
   sonucGir.Focused;
   sonucGir.Items[7].Focused := true;

end;

end.
