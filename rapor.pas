unit rapor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, frxDesgn, frxClass, ADODB,KadirType,
  frxDBSet,db, kadir,DBCtrls, frxExportPDF, frxExportRTF, frxExportXLS,
  frxExportXML, frxExportHTML, frxBarcode, frxDCtrl, ExtCtrls,
  frxDMPExport, frxChBox, frxRich, frxChart, frxGradient,frxRes,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxButtons, frxADOComponents,
  frxExportMail, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters;



type
  TfrmRapor = class(TForm)
    frxDBDataset1: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    StatusBar1: TStatusBar;
    memo: TDBMemo;
    DataSource1: TDataSource;
    frxReport1: TfrxReport;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXMLExport1: TfrxXMLExport;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    frxDBDataset4: TfrxDBDataset;
    frxDBDataset5: TfrxDBDataset;
    frxDBDataset6: TfrxDBDataset;
    frxDBDataset7: TfrxDBDataset;
    frxDBDataset8: TfrxDBDataset;
    frxDBDataset9: TfrxDBDataset;
    frxDBDataset10: TfrxDBDataset;
    frxDBDataset11: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDialogControls1: TfrxDialogControls;
    Panel1: TPanel;
    frxChartObject1: TfrxChartObject;
    frxRichObject1: TfrxRichObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxGradientObject1: TfrxGradientObject;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintDialog1: TPrintDialog;
    frxDBDataset12: TfrxDBDataset;
    frxDBDataset0: TfrxDBDataset;
    frxDBDataset00: TfrxDBDataset;
    btnOnIzle: TcxButton;
    btnYazdir: TcxButton;
    btnSend: TcxButton;
    frxADOComponents1: TfrxADOComponents;
    frxMailExport1: TfrxMailExport;
    frxADOComponents2: TfrxADOComponents;
    procedure raporData(Dataset : TADOQuery ; kod ,dosya ,yazici: string);
    procedure rapor1Data(dataset : TADOQuery ; kod , dosya , yazici : string);
    procedure raporDataset(Dataset : TDataset ; kod ,dosya ,yazici: string);
    procedure rapor1Dataset(Dataset : TDataset ; kod ,dosya ,yazici: string);

    procedure raporData1(dataset : TDataSetKadir ; kod , caption : string;formId : string = '' ;printTip : TprintTip = pTNone;printer : string = '');
    procedure rapor1Data1(dataset : TDataSetKadir ; kod , dosya : string);
    function frxDesigner1SaveReport(Report: TfrxReport;
      SaveAs: Boolean): Boolean;
    function frxDesigner1LoadReport(Report: TfrxReport): Boolean;
    procedure FormShow(Sender: TObject);
    procedure btnYazdir_Click(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure btnYazdirClick(Sender: TObject);
    procedure btnOnIzleClick(Sender: TObject);

  private

    { Private declarations }
  public
       topluset : TDataSetKadir;
    { Public declarations }
  end;

var
  frmRapor: TfrmRapor;
  data : Tdataset;
  dosyaName ,d , _printer : string;
  toplu : TDataSetKadir;
implementation
 uses data_modul;
{$R *.dfm}

procedure TfrmRapor.raporData(dataset : TADOQuery ; kod , dosya , yazici : string);
var
    template : TStream;
    yol ,_server : string;
    i : integer;
begin
     _printer := yazici;
     datalar.ADO_RAPORLAR.Active := true;
     datalar.ADO_RAPORLAR.Locate('raporkodu',kod,[]);
     frmRapor.Caption := dosya;
     d := dosya;
    template := datalar.ADO_RAPORLAR.CreateBlobStream(datalar.ADO_RAPORLAR.FieldByName('Rapor'), bmRead);x
    template.Position := 0;
    try
       frxReport1.LoadFromStream(template);
       frxDBDataset1.DataSet := dataset;
      // frxReport1.ShowReport;
    finally
          template.Free;
    end; 

end;


procedure TfrmRapor.rapor1Data(dataset : TADOQuery ; kod , dosya , yazici : string);
var
    template : TStream;
    yol ,_server : string;
    i : integer;
begin
     _printer := yazici;

     datalar.ADO_RAPORLAR1.Active := true;
     datalar.ADO_RAPORLAR1.Locate('raporkodu',kod,[]);
          frmRapor.Caption := dosya;

     d := dosya;

    template := datalar.ADO_RAPORLAR1.CreateBlobStream(datalar.ADO_RAPORLAR1.FieldByName('Rapor'), bmRead);x
    template.Position := 0;
    try
       frxReport1.LoadFromStream(template);
       frxDBDataset1.DataSet := dataset;
      // frxReport1.ShowReport;
    finally
          template.Free;
    end; 

end;




procedure TfrmRapor.raporDataset(dataset : Tdataset ; kod , dosya , yazici : string);
var
    template : TStream;
    yol ,_server : string;
    i : integer;
begin
     _printer := yazici;

     frmRapor.Caption := dosya;

     datalar.ADO_RAPORLAR.Active := true;
     datalar.ADO_RAPORLAR.Locate('raporkodu',kod,[]);

     d := dosya;


    template := datalar.ADO_RAPORLAR.CreateBlobStream(datalar.ADO_RAPORLAR.FieldByName('Rapor'), bmRead);x
    template.Position := 0;
    try
       frxReport1.LoadFromStream(template);
       frxDBDataset1.DataSet := dataset;
      // frxReport1.ShowReport;
    finally
          template.Free;
    end;

end;


procedure TfrmRapor.rapor1Dataset(dataset : Tdataset ; kod , dosya , yazici : string);
var
    template : TStream;
    yol ,_server : string;
    i : integer;
begin
     _printer := yazici;

     frmRapor.Caption := dosya;

     datalar.ADO_RAPORLAR1.Active := true;
     datalar.ADO_RAPORLAR1.Locate('raporkodu',kod,[]);

     d := dosya;

    template := datalar.ADO_RAPORLAR1.CreateBlobStream(datalar.ADO_RAPORLAR1.FieldByName('Rapor'), bmRead);x
    template.Position := 0;
    try
       frxReport1.LoadFromStream(template);
       frxDBDataset1.DataSet := dataset;
      // frxReport1.ShowReport;
    finally
          template.Free;
    end;


end;


procedure TfrmRapor.raporData1(dataset : TDataSetKadir ; kod , caption : string;formId : string = '' ;printTip : TprintTip = pTNone;printer : string = '');
var
    template : TStream;
    yol ,_server : string;
    i : integer;
begin
     datalar.ADO_RAPORLAR.Active := true;
     datalar.ADO_RAPORLAR.First;

     if datalar.ADO_RAPORLAR.Locate('raporkodu',kod,[]) = False
     Then begin
       datalar.ADO_RAPORLAR.append;
       datalar.ADO_RAPORLAR.FieldByName('raporKodu').AsString := kod;
       datalar.ADO_RAPORLAR.FieldByName('rapor').AsString := '';
       datalar.ADO_RAPORLAR.Post;
     end;


     frmRapor.Caption := caption;

    template := datalar.ADO_RAPORLAR.CreateBlobStream(datalar.ADO_RAPORLAR.FieldByName('Rapor'), bmRead);x
    template.Position := 0;
    try
       frxReport1.LoadFromStream(template);
       frxDBDataset0.DataSet := dataset.Dataset0;
       frxDBDataset00.DataSet := dataset.Dataset00;
       frxDBDataset1.DataSet := dataset.Dataset1;
       frxDBDataset2.DataSet := dataset.Dataset2;
       frxDBDataset3.DataSet := dataset.Dataset3;
       frxDBDataset4.DataSet := dataset.Dataset4;
       frxDBDataset5.DataSet := dataset.Dataset5;
       frxDBDataset6.DataSet := dataset.Dataset6;
       frxDBDataset7.DataSet := dataset.Dataset7;
       frxDBDataset8.DataSet := dataset.Dataset8;
       frxDBDataset9.DataSet := dataset.Dataset9;
       frxDBDataset10.DataSet := dataset.Dataset10;
       frxDBDataset11.DataSet := dataset.Dataset11;
       frxDBDataset12.DataSet := dataset.Dataset12;
    finally
          template.Free;
    end;

    if printTip = pTYazdir
    then begin
     frxReport1.PrepareReport;
     frxReport1.PrintOptions.ShowDialog := false;
     frxReport1.Print;
    end
    else
    if printTip in [pTOnIzle,pTDizayn] then
    begin
       frxReport1.PreviewOptions.Buttons := [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator];
       frxReport1.PrintOptions.ShowDialog := True;
       if printer <> ''
       Then begin
            frxReport1.PrintOptions.Printer := printer;
            frxReport1.SelectPrinter;
       End;
       if printTip = pTOnIzle then frxReport1.ShowReport else frxReport1.DesignReport;
    end;

end;

procedure TfrmRapor.rapor1Data1(dataset : TDataSetKadir ; kod , dosya : string);
var
    template : TStream;
    yol ,_server : string;
    i : integer;
begin

  //  frxReport1.Variables.AddVariable('Sabitler','Donem','ÞUBAT');
     datalar.ADO_RAPORLAR1.Active := false;
     datalar.ADO_RAPORLAR1.Active := true;
     datalar.ADO_RAPORLAR1.Locate('raporkodu',kod,[]);

  //   memo.DataSource := datalar.ADO_RAPORLAR;
         frmRapor.Caption := dosya;
     d := dosya;


    template := datalar.ADO_RAPORLAR1.CreateBlobStream(datalar.ADO_RAPORLAR1.FieldByName('Rapor'), bmRead);x
    template.Position := 0;
    try
       frxReport1.LoadFromStream(template);
       frxDBDataset0.DataSet := dataset.Dataset0;
       frxDBDataset0.DataSet.Name := dataset.Dataset0.name;

       frxDBDataset1.DataSet := dataset.Dataset1;
       frxDBDataset1.DataSet.name := dataset.Dataset1.name;
       frxDBDataset2.DataSet := dataset.Dataset2;
       frxDBDataset3.DataSet := dataset.Dataset3;
       frxDBDataset4.DataSet := dataset.Dataset4;
       frxDBDataset5.DataSet := dataset.Dataset5;
       frxDBDataset6.DataSet := dataset.Dataset6;
       frxDBDataset7.DataSet := dataset.Dataset7;
       frxDBDataset8.DataSet := dataset.Dataset8;
       frxDBDataset9.DataSet := dataset.Dataset9;
       frxDBDataset10.DataSet := dataset.Dataset10;
       frxDBDataset11.DataSet := dataset.Dataset11;
       frxDBDataset12.DataSet := dataset.Dataset12;

      // frxReport1.ShowReport;
    finally
          template.Free;
    end;



end;



procedure TfrmRapor.btnSendClick(Sender: TObject);
begin
   //  frxDBDataset1.DataSet := data;
     frxReport1.PreviewOptions.Buttons := [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator];
     frxReport1.PrintOptions.ShowDialog := True;

     if _printer = 'fis'
     Then begin
          frxReport1.PrintOptions.Printer := 'fis';
          frxReport1.SelectPrinter;
     End;


//     frxResources.
//     Get('Turkish.frc');
//     .LoadFromFile('Turkish.frc');
     frxReport1.DesignReport;
     close;

end;

function TfrmRapor.frxDesigner1SaveReport(Report: TfrxReport;
SaveAs: Boolean): Boolean;
var
   template : TStream;
begin
//    showmessage('x','','','info');
 //   Report.SaveToFile(dosyaName);

    template := TMemoryStream.Create;x
    template.Position := 0;
    Report.SaveToStream(template);


    if datalar.ADO_RAPORLAR.Active = true
    Then Begin

        datalar.ADO_RAPORLAR.Edit;
        try
           datalar.ADO_RAPORLAR.DisableControls;
           datalar.ADO_RAPORLAR.FieldByName('raporAdi').AsString := d;
           (datalar.ADO_RAPORLAR.FieldByName('rapor') as TBlobField).LoadFromStream(template);
           datalar.ADO_RAPORLAR.Post;
        finally
               datalar.ADO_RAPORLAR.EnableControls;
        end;

    End
    Else
    Begin

        datalar.ADO_RAPORLAR1.Edit;
        try
           datalar.ADO_RAPORLAR1.DisableControls;
           datalar.ADO_RAPORLAR1.FieldByName('raporAdi').AsString := d;
           (datalar.ADO_RAPORLAR1.FieldByName('rapor') as TBlobField).LoadFromStream(template);
           datalar.ADO_RAPORLAR1.Post;
        finally
               datalar.ADO_RAPORLAR1.EnableControls;
        end;


    End;

end;

function TfrmRapor.frxDesigner1LoadReport(Report: TfrxReport): Boolean;
var
   template : TStream;
begin

    showmessage('y','','','info');

(*
    template := TMemoryStream.Create;
    template.Position := 0;
    Report.SaveToStream(template);
    datalar.ADO_RAPORLAR.Edit;
try
   datalar.ADO_RAPORLAR.DisableControls;
   (datalar.ADO_RAPORLAR.FieldByName('rapor') as TBlobField).LoadFromStream(template);
   datalar.ADO_RAPORLAR.Post;
finally
       datalar.ADO_RAPORLAR.EnableControls;
end;
*)
end;


procedure TfrmRapor.btnOnIzleClick(Sender: TObject);
begin
    // frxDBDataset1.DataSet := data;
     frxReport1.PreviewOptions.Buttons := [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator];
     frxReport1.PrintOptions.ShowDialog := True;

     if _printer = 'fis'
     Then begin
          frxReport1.PrintOptions.Printer := 'fis';
          frxReport1.SelectPrinter;
     End;

     frxReport1.ShowReport;
     close;

end;

procedure TfrmRapor.FormShow(Sender: TObject);
begin

   if UserRight('Raporlar', 'Dizayn Modu') = True
   then begin
          btnSend.Visible := True;
   End Else btnSend.Visible := False;

   if UserRight('Raporlar', 'Ön Ýzleme') = True
   then begin
          btnOnIzle.Visible := True;
   End Else btnOnIzle.Visible := False;


end;

procedure TfrmRapor.btnYazdirClick(Sender: TObject);
var
  durum : boolean;
  FReport : TfrxReport;
begin

     frxReport1.PrepareReport;
     frxReport1.PrintOptions.ShowDialog := false;
     frxReport1.Print;
     close;

end;

procedure TfrmRapor.btnYazdir_Click(Sender: TObject);
var
  durum : boolean;
begin
//     frxReport1.PreviewOptions.Buttons := [pbPrint];

(*
     if _printer <> ''
     Then begin
          frxReport1.PrintOptions.ShowDialog := false;
          frxReport1.PrintOptions.Printer := _printer;
          frxReport1.SelectPrinter;
//          frxReport1.PrintOptions.Copies := HastaKabulBarkodAdedi(durum);
     End;
  *)

     frxReport1.PrepareReport;
     frxReport1.PrintOptions.ShowDialog := false;
     frxReport1.Print;
     close;



end;

end.
