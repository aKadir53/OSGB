unit RDS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,ShellApi,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  kadir, kadirMedula3, KadirType,GetFormClass,GirisUnit,dxLayoutContainer,
  StdCtrls, Buttons, sBitBtn, ExtCtrls, cxContainer, cxLabel, cxTextEdit, cxGridExportLink,
  cxMaskEdit, cxDropDownEdit, cxCalendar, sCheckBox, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxGroupBox, cxRadioGroup, sGauge,
  cxPCdxBarPopupMenu, cxMemo, cxPC, cxCheckBox, rxAnimate, rxGIFCtrl,
  JvExControls, JvAnimatedImage, JvGIFCtrl, cxButtons, cxCurrencyEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, KadirLabel, cxImage,
  cxImageComboBox, cxButtonEdit, cxColorComboBox, Vcl.ImgList, cxTrackBar;

type
  TfrmRDS = class(TGirisForm)
    DataSource1: TDataSource;
    ADO_RiskDetay: TADOQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle7: TcxStyle;
    PopupMenu1: TPopupMenu;
    cxStyle8: TcxStyle;
    tmr1: TTimer;
    E1: TMenuItem;
    E3: TMenuItem;
    List: TListeAc;
    cxStyle9: TcxStyle;
    cxImageList1: TcxImageList;
    RDSGrid: TcxGridKadir;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
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
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    RDSSatirlar: TcxGridDBBandedTableView;
    RDSSatirlarSirketRiskID: TcxGridDBBandedColumn;
    RDSSatirlarid: TcxGridDBBandedColumn;
    RDSSatirlarBolum: TcxGridDBBandedColumn;
    RDSSatirlarTehlikeKaynagi: TcxGridDBBandedColumn;
    RDSSatirlarTehlike: TcxGridDBBandedColumn;
    RDSSatirlarRisk_tanim: TcxGridDBBandedColumn;
    RDSSatirlarOnlemler: TcxGridDBBandedColumn;
    RDSSatirlarOlasilik: TcxGridDBBandedColumn;
    RDSSatirlarFrekans: TcxGridDBBandedColumn;
    RDSSatirlarSiddet: TcxGridDBBandedColumn;
    RDSSatirlarRisk: TcxGridDBBandedColumn;
    RDSSatirlarRDS: TcxGridDBBandedColumn;
    RDSSatirlarMevcutOnlem: TcxGridDBBandedColumn;
    RDSSatirlarSorumlu: TcxGridDBBandedColumn;
    RDSSatirlarTermin: TcxGridDBBandedColumn;
    RDSSatirlarGerceklesme: TcxGridDBBandedColumn;
    RDSSatirlarOlasilik_2: TcxGridDBBandedColumn;
    RDSSatirlarFrekans_2: TcxGridDBBandedColumn;
    RDSSatirlarSiddet_2: TcxGridDBBandedColumn;
    RDSSatirlarRisk_2: TcxGridDBBandedColumn;
    RDSSatirlarRDS_2: TcxGridDBBandedColumn;
    RDSSatirlaryasalDayanak: TcxGridDBBandedColumn;
    RDSGridLevel1: TcxGridLevel;
    RDSGridMatris: TcxGridKadir;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
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
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    RDSSatirlarMatris: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    RDSSatirlarColumn1: TcxGridDBBandedColumn;
    R1: TMenuItem;
    N1: TMenuItem;
    R2: TMenuItem;
    e2: TMenuItem;
    K1: TMenuItem;
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure cxKaydetClick(Sender: TObject);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
                AButtonIndex: Integer); override;
    procedure FaturaDetay;
    procedure NewRecord(DataSet: TDataSet);
    procedure AfterPost(DataSet: TDataSet);
    procedure BeforePost(DataSet: TDataSet);

    procedure ButtonClick(Sender: TObject);
    procedure RDSSatirlarOlasilikPropertiesEditValueChanged(Sender: TObject);
    procedure PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    function Skor(risk : double) : integer;
    procedure AfterScroll(DataSet: TDataSet);
    procedure RDSSatirlarNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure E3Click(Sender: TObject);
    procedure SirketlerPropertiesChange(Sender: TObject);

 //   function EArsivGonder(FaturaId : string) : string;
 //   function EArsivIptal(FaturaGuid : string) : string;
 //   function EArsivPDF(FaturaGuid : string ; _tag_ : integer) : string;
 //   procedure Gonder;

  private
    { Private declarations }
    FImages : array of TcxImage;
    FImageIds : array of Integer;
    function findMethod(dllHandle: Cardinal; methodName: string): FARPROC;

  protected
    procedure GozlemYazdir (const GozlemID : integer);

  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;



var
  frmRDS: TfrmRDS;
  Dataset : Tdataset;
  List,Faturalar : TListeAc;
implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}



procedure TfrmRDS.SirketlerPropertiesChange(Sender: TObject);
var
  sql : string;
  dataset : Tdataset;
begin
 if Assigned(TcxImageComboKadir(FindComponent('subeKod')))
 Then
  TcxImageComboKadir(FindComponent('subeKod')).Filter := ' sirketKod = ' +
  QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditingValue));

 if TcxImageComboKadir(Sender).Name = 'subeKod'
 Then Begin
      sql :=
      ' select I.kod IGUKod,I.tanimi IGUAdi,D.kod DoktorKod,D.tanimi DoktorAdi from SIRKETLER_TNM S ' +
      ' join SIRKET_SUBE_TNM SB on SB.sirketKod = S.sirketKod ' +
      ' left join IGU I on I.kod = SB.IGU ' +
      ' left join DoktorlarT D on D.kod = SB.subeDoktor ' +
      ' where S.sirketKod = ' +
       QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditingValue)) +
      ' and SB.subeKod = ' +
       QuotedStr(vartostr(TcxImageComboKadir(FindComponent('subeKod')).EditingValue));

       dataset := datalar.QuerySelect(sql);

      TcxImageComboKadir(FindComponent('hazirlayanDoktor')).EditValue := dataset.FieldByName('DoktorKod').AsString;
      TcxImageComboKadir(FindComponent('hazirlayan')).EditValue := dataset.FieldByName('IGUKod').AsString;

 End;
end;

function TfrmRDS.findMethod(dllHandle: Cardinal;  methodName: string): FARPROC;
begin
  Result := GetProcAddress(dllHandle, pchar(methodName));
end;

function TfrmRDS.Skor(risk : double) : integer;
var
 sql : string;
begin
  Skor := 0;
  try
   sql := 'exec sp_RDSSkor ' + floattostr(risk);
   skor := datalar.QuerySelect(sql).FieldByName('kod').AsInteger;
  finally
  end;
end;

procedure TfrmRDS.FaturaDetay;
begin
  // if TcxImageComboKadir(FindComponent('Method')).EditingValue = 1
 //  Then begin
     RDSGrid.Dataset.Active := False;
     RDSGrid.Dataset.SQL.Text := 'select * from RDS_SirketRiskKaynakFK where SirketRiskID = ' +
     QuotedStr(TcxButtonEditKadir(FindComponent('id')).Text);
     RDSGrid.Dataset.Active := True;
     TdxLayoutItem(FindComponent('dxLARDSGrid')).Visible := True;
     TdxLayoutItem(FindComponent('dxLARDSGridMatris')).Visible := False;
//  end;

(*
   if TcxImageComboKadir(FindComponent('Method')).EditingValue = 2
   Then begin
     RDSGridMatris.Dataset.Active := False;
     RDSGridMatris.Dataset.SQL.Text := 'select * from RDS_SirketRiskKaynakMatris where SirketRiskID = ' +
     QuotedStr(TcxButtonEditKadir(FindComponent('id')).Text);
     RDSGridMatris.Dataset.Active := True;
     TdxLayoutItem(FindComponent('dxLARDSGrid')).Visible := False;
     TdxLayoutItem(FindComponent('dxLARDSGridMatris')).Visible := True;
  end;
 *)



end;

procedure TfrmRDS.cxKaydetClick(Sender: TObject);
begin
  //SirketKodx.Text := datalar.AktifSirket; giriþ formuna eklendi.
  inherited;

  case TControl(sender).Tag  of
    0 : begin
          RDSGrid.Enabled := True;
          PopupMenuEnabled(Self,PopupMenu1,True);
          ToolBar1.Enabled := True;
          //PopupMenuToToolBarEnabled(Self,ToolBar1,PopupMenu1);
        end;
    2 : begin
          TcxDateEditKadir(FindComponent('date_create')).EditValue := date;
          if datalar.IGU <> '' then
           TcxTextEditKadir(FindComponent('hazirlayan')).EditValue := datalar.IGU;
          if datalar.doktor <> '' then
           TcxTextEditKadir(FindComponent('hazirlayanDoktor')).EditValue := datalar.doktor;
          RDSGrid.Enabled := False;
          PopupMenuEnabled(Self,PopupMenu1,False);
          ToolBar1.Enabled := False;
          //PopupMenuToToolBarEnabled(Self,ToolBar1,PopupMenu1);
          FaturaDetay;
        end;
  end;
end;


procedure TfrmRDS.E3Click(Sender: TObject);
var
 i : integer;
begin
  if TMenuItem(sender).Tag < 1000
  then begin
    if MrYes = ShowMessageSkin('Rapor ' + TMenuItem(sender).Caption + ' Sektörü ile Eþleþtirilecek','','','msg')
    then begin
      DurumGoster(True,True);
      pBar.Properties.Max := RDSSatirlar.DataController.DataSet.RecordCount-1;

      for i := 0 to RDSSatirlar.DataController.DataSet.RecordCount - 1 do
      begin
       try
        datalar.QueryExec('if not exists(select * from RDS_RiskKaynakSektorEslesmeTablosu where sektorid = ' + TcxButtonEditKadir(FindComponent('id')).Text +
                          ' and Bolum = ' + QuotedStr(RDSSatirlar.DataController.DataSet.FieldByName('Bolum').AsString) +
                          ' and TehlikeKaynagi = ' + QuotedStr(RDSSatirlar.DataController.DataSet.FieldByName('TehlikeKaynagi').AsString) +
                          ' and Tehlike = ' +  QuotedStr(RDSSatirlar.DataController.DataSet.FieldByName('Tehlike').AsString) +')' +
                          'begin ' +
                          'insert into RDS_RiskKaynakSektorEslesmeTablosu (sektorid,Bolum,TehlikeKaynagi,Tehlike,Risk_tanim) ' +
                          'values(' + inttostr(TMenuItem(sender).Tag) + ',' +
                                      QuotedStr(RDSSatirlar.DataController.DataSet.FieldByName('Bolum').AsString) + ',' +
                                      QuotedStr(RDSSatirlar.DataController.DataSet.FieldByName('TehlikeKaynagi').AsString) + ',' +
                                      QuotedStr(RDSSatirlar.DataController.DataSet.FieldByName('Tehlike').AsString) + ',' +
                                      QuotedStr(RDSSatirlar.DataController.DataSet.FieldByName('Risk_tanim').AsString) +
                          ') end');
       finally
         RDSSatirlar.DataController.DataSet.Next;
         pBar.Position := pBar.Position + 1;
       end;



      end;
      DurumGoster(False,False);
    end;
  end
  else
  begin
    if MrYes = ShowMessageSkin('Rapor ' + TMenuItem(sender).Caption + ' Sektörü ile Eþleþtirilmiþ Þablondan Oluþturulacak','','','msg')
    then begin
      datalar.QuerySelect(SelectAdo,'Select Bolum,TehlikeKaynagi,Tehlike,Risk_tanim from RDS_RiskKaynakSektorEslesmeTablosu where sektorid = ' + inttostr(TMenuItem(sender).Tag-1000));
      DurumGoster(True,True);
      pBar.Properties.Max := SelectAdo.RecordCount-1;

      for i := 0 to SelectAdo.RecordCount - 1 do
      begin
       try
         if not
          RDSSatirlar.DataController.DataSet.Locate('SirketRiskID;Bolum;TehlikeKaynagi',
                                                    VarArrayOf([TcxButtonEditKadir(FindComponent('id')).Text,
                                                    SelectAdo.FieldByName('Bolum').AsString,
                                                    SelectAdo.FieldByName('TehlikeKaynagi').AsString]),[])
         Then Begin
           RDSSatirlar.DataController.DataSet.Append;
           RDSSatirlar.DataController.DataSet.FieldByName('Bolum').AsString := SelectAdo.FieldByName('Bolum').AsString;
           RDSSatirlar.DataController.DataSet.FieldByName('TehlikeKaynagi').AsString := SelectAdo.FieldByName('TehlikeKaynagi').AsString;
           RDSSatirlar.DataController.DataSet.FieldByName('Tehlike').AsString := SelectAdo.FieldByName('Tehlike').AsString;
           RDSSatirlar.DataController.DataSet.FieldByName('Risk_tanim').AsString := SelectAdo.FieldByName('Risk_tanim').AsString;
           RDSSatirlar.DataController.DataSet.Post;
         End;
         (*
         datalar.QueryExec('insert into RDS_RiskKaynakSektorEslesmeTablosu (sektorid,Bolum,TehlikeKaynagi,Tehlike,Risk_tanim) ' +
                          'values(' + inttostr(TMenuItem(sender).Tag) + ',' +
                                      QuotedStr(RDSSatirlar.DataController.DataSet.FieldByName('Bolum').AsString) + ',' +
                                      QuotedStr(RDSSatirlar.DataController.DataSet.FieldByName('TehlikeKaynagi').AsString) + ',' +
                                      QuotedStr(RDSSatirlar.DataController.DataSet.FieldByName('Tehlike').AsString) + ',' +
                                      QuotedStr(RDSSatirlar.DataController.DataSet.FieldByName('Risk_tanim').AsString) + ')');
        *)
         SelectAdo.Next;
         pBar.Position := pBar.Position + 1;
       except
       end;
      end;
      DurumGoster(False,False);
    end;
  end;



//
end;

procedure TfrmRDS.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  list : ArrayListeSecimler;
  where,prm : string;

begin

    where := ' hazirlayan = ' + QuotedStr(datalar.IGU) + ' or paylasilan = ' + QuotedStr(datalar.IGU) +
           ' or hazirlayan = ' + QuotedStr(datalar.doktorKodu) + ' or paylasilan = ' + QuotedStr(datalar.doktorKodu);


    TListeAc(FindComponent('RDSList')).Where := where;

    inherited;
    Enabled;
    FaturaDetay;

    if (TcxTextEditKadir(FindComponent('hazirlayan')).Text <>
       datalar.IGU) and
       (TcxTextEditKadir(FindComponent('hazirlayanDoktor')).Text <>
       datalar.doktor)
       and
       TcxImageComboKadir(FindComponent('Onay')).EditValue = 1
    then begin
       RDSSatirlar.OptionsData.Editing := False;
       RDSSatirlar.OptionsData.Inserting := False;
       RDSSatirlar.OptionsData.Deleting := False;

       TcxImageComboKadir(FindComponent('SirketKod')).Enabled := False;
       TcxImageComboKadir(FindComponent('subeKod')).Enabled := False;
       TcxTextEditKadir(FindComponent('hazirlayanDoktor')).Enabled := False;
       TcxTextEditKadir(FindComponent('hazirlayan')).Enabled := False;
       TcxImageComboKadir(FindComponent('date_create')).Enabled := False;
       TcxImageComboKadir(FindComponent('update_date')).Enabled := False;
       TcxImageComboKadir(FindComponent('gecerlilik_date')).Enabled := False;
       TcxImageComboKadir(FindComponent('Method')).Enabled := False;
       TcxImageComboKadir(FindComponent('Onay')).Enabled := False;

    end
    else
    begin
       RDSSatirlar.OptionsData.Editing := True;
       RDSSatirlar.OptionsData.Inserting := True;
       RDSSatirlar.OptionsData.Deleting := True;

       TcxImageComboKadir(FindComponent('SirketKod')).Enabled := True;
       TcxImageComboKadir(FindComponent('subeKod')).Enabled := True;
       TcxTextEditKadir(FindComponent('hazirlayanDoktor')).Enabled := True;
       TcxTextEditKadir(FindComponent('hazirlayan')).Enabled := True;
       TcxImageComboKadir(FindComponent('date_create')).Enabled := True;
       TcxImageComboKadir(FindComponent('update_date')).Enabled := True;
       TcxImageComboKadir(FindComponent('gecerlilik_date')).Enabled := True;
       TcxImageComboKadir(FindComponent('Method')).Enabled := True;
       TcxImageComboKadir(FindComponent('Onay')).Enabled := True;
    end;



end;

function TfrmRDS.Init(Sender : TObject) : Boolean;
var
  _obje_ : TcxCustomEdit;
begin
  Result := True;
end;


procedure TfrmRDS.NewRecord(DataSet: TDataSet);
begin
   RDSGrid.Dataset.FieldByName('SirketRiskID').AsInteger := TcxButtonEditKadir(FindComponent('id')).EditingValue;
end;

procedure TfrmRDS.RDSSatirlarNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);

procedure datawrite;
var
  Blob : TADOBlobStream;
begin
    RDSSatirlar.DataController.DataSet.FieldByName('Bolum').AsString := datalar.Risk.Bolum;
    RDSSatirlar.DataController.DataSet.FieldByName('TehlikeKaynagi').AsString := datalar.Risk.TehlikeKaynagi;
    RDSSatirlar.DataController.DataSet.FieldByName('Tehlike').AsString := datalar.Risk.Tehlike;
    RDSSatirlar.DataController.DataSet.FieldByName('Risk_tanim').AsString := datalar.Risk.Risk_tanim;
    RDSSatirlar.DataController.DataSet.FieldByName('Onlemler').AsString := datalar.Risk.Onlemler;
    RDSSatirlar.DataController.DataSet.FieldByName('Olasilik').AsVariant := datalar.Risk.Olasilik;
    RDSSatirlar.DataController.DataSet.FieldByName('Frekans').AsVariant := datalar.Risk.Frekans;
    RDSSatirlar.DataController.DataSet.FieldByName('Siddet').AsVariant := datalar.Risk.Siddet;
    RDSSatirlar.DataController.DataSet.FieldByName('Risk').AsVariant := datalar.Risk.Risk;
    RDSSatirlar.DataController.DataSet.FieldByName('RDS').AsVariant := datalar.Risk.RDS;
    RDSSatirlar.DataController.DataSet.FieldByName('MevcutOnlem').AsString := datalar.Risk.MevcutOnlem;
    RDSSatirlar.DataController.DataSet.FieldByName('Sorumlu').AsString := datalar.Risk.Sorumlu;
    RDSSatirlar.DataController.DataSet.FieldByName('Termin').AsString := datalar.Risk.Termin;
    RDSSatirlar.DataController.DataSet.FieldByName('Gerceklesme').AsString := datalar.Risk.Gerceklesme;
    RDSSatirlar.DataController.DataSet.FieldByName('Olasilik_2').AsVariant := datalar.Risk.Olasilik_2;
    RDSSatirlar.DataController.DataSet.FieldByName('Frekans_2').AsVariant := datalar.Risk.Frekans_2;
    RDSSatirlar.DataController.DataSet.FieldByName('Siddet_2').AsVariant := datalar.Risk.Siddet_2;
    RDSSatirlar.DataController.DataSet.FieldByName('Risk_2').AsVariant := datalar.Risk.Risk_2;
    RDSSatirlar.DataController.DataSet.FieldByName('RDS_2').AsVariant := datalar.Risk.RDS_2;
    RDSSatirlar.DataController.DataSet.FieldByName('yasalDayanak').AsString := datalar.Risk.yasalDayanak;

    try
      if Assigned(datalar.Risk.Image.Picture.Graphic)
      then begin
        Blob := TADOBlobStream.Create(TBlobField(RDSSatirlar.DataController.DataSet.FieldByName('Image')),bmwrite);
    //  datalar.Risk.Image.Picture.SaveToFile('dd.jpg');
        datalar.Risk.Image.Picture.Graphic.SaveToStream(Blob);
        Blob.Position := 0;
        TBlobField(RDSSatirlar.DataController.DataSet.FieldByName('Image')).LoadFromStream(Blob);
       end;
    finally
      Blob.Free;
    end;
end;

procedure dataRead;
var
  G : TGraphic;
begin
  datalar.Risk.Bolum := RDSSatirlar.DataController.DataSet.FieldByName('Bolum').AsVariant;
  datalar.Risk.TehlikeKaynagi := RDSSatirlar.DataController.DataSet.FieldByName('TehlikeKaynagi').AsVariant;
  datalar.Risk.Tehlike := RDSSatirlar.DataController.DataSet.FieldByName('Tehlike').AsVariant;
  datalar.Risk.Risk_tanim := RDSSatirlar.DataController.DataSet.FieldByName('Risk_tanim').AsVariant;
  datalar.Risk.Onlemler := RDSSatirlar.DataController.DataSet.FieldByName('Onlemler').AsString;
  datalar.Risk.Olasilik := RDSSatirlar.DataController.DataSet.FieldByName('Olasilik').AsVariant;;
  datalar.Risk.Frekans := RDSSatirlar.DataController.DataSet.FieldByName('Frekans').AsVariant;;
  datalar.Risk.Siddet := RDSSatirlar.DataController.DataSet.FieldByName('Siddet').AsVariant;;
  datalar.Risk.RDS := RDSSatirlar.DataController.DataSet.FieldByName('RDS').AsVariant;;
  datalar.Risk.MevcutOnlem := RDSSatirlar.DataController.DataSet.FieldByName('MevcutOnlem').AsString;
  datalar.Risk.Sorumlu := RDSSatirlar.DataController.DataSet.FieldByName('Sorumlu').AsString;
  datalar.Risk.Termin := RDSSatirlar.DataController.DataSet.FieldByName('Termin').AsString;
  datalar.Risk.Gerceklesme := RDSSatirlar.DataController.DataSet.FieldByName('Gerceklesme').AsString;
  datalar.Risk.Olasilik_2 := RDSSatirlar.DataController.DataSet.FieldByName('Olasilik_2').AsVariant;
  datalar.Risk.Frekans_2 := RDSSatirlar.DataController.DataSet.FieldByName('Frekans_2').AsVariant;
  datalar.Risk.Siddet_2 := RDSSatirlar.DataController.DataSet.FieldByName('Siddet_2').AsVariant;
  datalar.Risk.Risk_2 := RDSSatirlar.DataController.DataSet.FieldByName('Risk_2').AsVariant;
  datalar.Risk.RDS_2 := RDSSatirlar.DataController.DataSet.FieldByName('RDS_2').AsVariant;
  datalar.Risk.yasalDayanak := RDSSatirlar.DataController.DataSet.FieldByName('yasalDayanak').AsString;

  try
      g := TJpegimage.Create;
      g.Assign(RDSSatirlar.DataController.DataSet.FieldByName('Image'));
      datalar.Risk.Image := TcxImage.Create(nil);
      datalar.Risk.Image.Picture.Assign(g);
  //    datalar.Risk.Image.Picture.SaveToFile('dd.jpg');
  finally
     g.free;
  end;
end;

begin

  case AButtonIndex of
   6 : begin
        datalar.Risk.Bolum := Null;
        datalar.Risk.TehlikeKaynagi := Null;
        datalar.Risk.Tehlike := Null;
        datalar.Risk.Risk_tanim := Null;
        datalar.Risk.Onlemler := '';
        datalar.Risk.Olasilik := Null;
        datalar.Risk.Frekans := Null;
        datalar.Risk.Siddet := Null;
        datalar.Risk.RDS := Null;
        datalar.Risk.MevcutOnlem := '';
        datalar.Risk.Sorumlu := '';
        datalar.Risk.Termin := '';
        datalar.Risk.Gerceklesme := Null;
        datalar.Risk.Olasilik_2 := Null;
        datalar.Risk.Frekans_2 := Null;
        datalar.Risk.Siddet_2 := Null;
        datalar.Risk.Risk_2 := Null;
        datalar.Risk.RDS_2 := Null;
        datalar.Risk.yasalDayanak := '';
        datalar.Risk.SektorId := vartostr(TcxImageComboKadir(FindComponent('Sektor')).EditingValue);
        datalar.Risk.Image := TcxImage.Create(nil);

        if mrYes = ShowPopupForm('Risk Kaynaðý Ekle',yeniRisk)
        then begin
         try


          if datalar.Risk.Tehlike <> ''
          then begin
           RDSSatirlar.DataController.DataSet.Append;
           datawrite;
           RDSSatirlar.DataController.DataSet.post;
          end
          else
          begin
           Dataset := TDataSet.Create(nil);
           Dataset := datalar.QuerySelect('select * from RDS_RiskKaynakSektorEslesmeTablosu ES ' +
                                     ' join RDS_TehlikeKaynak TK on TK.kod = ES.TehlikeKaynagi ' +
                                     ' where sektorid = ' + datalar.Risk.SektorId +
                                     ' and TehlikeKaynagi = ' +  datalar.Risk.TehlikeKaynagi);
           while not Dataset.Eof
            do
            begin
              RDSSatirlar.DataController.DataSet.Append;
              RDSSatirlar.DataController.DataSet.FieldByName('Bolum').AsString := datalar.Risk.Bolum;
              RDSSatirlar.DataController.DataSet.FieldByName('TehlikeKaynagi').AsString := Dataset.FieldByName('TehlikeKaynagi').AsString;
              RDSSatirlar.DataController.DataSet.FieldByName('Tehlike').AsString := Dataset.FieldByName('Tehlike').AsString;
              RDSSatirlar.DataController.DataSet.FieldByName('Risk_Tanim').AsString := Dataset.FieldByName('Risk_Tanim').AsString;
              RDSSatirlar.DataController.DataSet.post;
              Dataset.Next;
            end;

          end;


          RDSSatirlar.DataController.DataSet.Refresh;
          ADone := True;
        except on e : Exception do
          begin
           ShowMessageSkin(e.Message,'','','info');
           RDSSatirlar.DataController.DataSet.Cancel;
          end;
        end;
        end;
    end;

   9 : begin
        dataRead;
        if mrYes = ShowPopupForm('Risk Kaynaðý Düzenle',riskDuzenle)
        then begin
         try
          RDSSatirlar.DataController.DataSet.Edit;
          datawrite;
          RDSSatirlar.DataController.DataSet.Post;
          RDSSatirlar.DataController.DataSet.Refresh;
         except on e : Exception do
          begin
           ShowMessageSkin(e.Message,'','','info');
           RDSSatirlar.DataController.DataSet.Cancel;
          end;
         end;
        end;
    end;

  end;


end;

procedure TfrmRDS.RDSSatirlarOlasilikPropertiesEditValueChanged(
  Sender: TObject);
begin
  if TcxImageComboKadir(sender).Name = 'Method'
  then
   FaturaDetay;

//  RDSSatirlar.DataController.post;
end;

procedure TfrmRDS.PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
 L : ArrayListeSecimler;
 i : integer;
 n : string;

begin

  if RDSSatirlar.Controller.FocusedColumn.Name = 'RDSSatirlarRisk_tanim'
  Then begin
    List.Table := 'RDS_Risk';
    L := List.ListeGetir;
    RDSSatirlar.DataController.DataSet.Edit;
    RDSSatirlar.DataController.DataSet.FieldByName('Risk_tanim').AsString := L[0].Kolon2;
    RDSSatirlar.DataController.DataSet.Post;
  end;

  if RDSSatirlar.Controller.FocusedColumn.Name = 'RDSSatirlarTehlike'
  Then begin
    List.Table := 'RDS_Tehlike';
    L := List.ListeGetir;
    RDSSatirlar.DataController.DataSet.Edit;
    RDSSatirlar.DataController.DataSet.FieldByName('Tehlike').AsString := L[0].Kolon2;
    RDSSatirlar.DataController.DataSet.Post;
  end;

end;

procedure TfrmRDS.AfterScroll(DataSet: TDataSet);
begin
//
end;

procedure TfrmRDS.AfterPost(DataSet: TDataSet);
begin
     cxPanelButtonEnabled(false,True,false);
     RDSGrid.Dataset.Refresh;
   //  FaturaToplamlari;

end;

procedure TfrmRDS.BeforePost(DataSet: TDataSet);
begin
//  RDSSatirlar.DataController.DataSet.FieldByName('Risk').AsFloat :=
 // RDSSatirlar.DataController.DataSet.FieldByName('Olasilik').AsFloat *
 // RDSSatirlar.DataController.DataSet.FieldByName('Frekans').AsFloat *
 // RDSSatirlar.DataController.DataSet.FieldByName('Siddet').AsFloat;

  RDSSatirlar.DataController.DataSet.FieldByName('RDS').AsInteger :=
    Skor(RDSSatirlar.DataController.DataSet.FieldByName('Risk').AsFloat);
end;

procedure TfrmRDS.cxButtonCClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  aModalResult : TModalResult;
  guid : string;
  ado : TADOQuery;
  sql : String;
  TopluDataset : TDataSetKadir;
  F : TGirisForm;
begin
  inherited;


  case Tcontrol(sender).Tag of
  -1 : begin
          if TcxButtonEditKadir(FindComponent('id')).EditText = '' then exit;
          datalar.Risk.RiskID := TcxButtonEditKadir(FindComponent('id')).EditText;
          if mrYes = ShowPopupForm('Risk Raporu Paylaþ',riskRaporuPaylas)
          then begin

          end;
       end;
  -20 : begin
          //ado := TADOQuery.Create(nil);
          try
            //datalar.QuerySelect(ado, sql);
            TopluDataset.Dataset0 := datalar.QuerySelect('select * from RDS_OLASILIK where Metod = 1');
            TopluDataset.Dataset1 := datalar.QuerySelect('select * from RDS_FREKANS');
            TopluDataset.Dataset2 := datalar.QuerySelect('select * from RDS_SIDDET where Metod = 1');
            TopluDataset.Dataset3 := datalar.QuerySelect('select * from RDS_Skor where Metod = 1');
            TopluDataset.Dataset4 := datalar.QuerySelect('sp_RDS ' + TcxButtonEditKadir(FindComponent('id')).EditText);



            PrintYap('RDS','Risk Deðerlendirme Raporu','',TopluDataset,pTNone)
          finally
            //ado.free;
          end;

        end;
   -25 : begin
           datalar.KKD.SirketRiskID := TcxButtonEditKadir(FindComponent('id')).EditText;
           F := FormINIT(TagfrmKKD,GirisRecord,ikHayir,'');
           if F <> nil then F.ShowModal;
         end;

  end;
end;

procedure TfrmRDS.ButtonClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
begin
    F := FormINIT(9010,GirisRecord,ikHayir,'');
    if F <> nil then F.ShowModal;
end;


procedure TfrmRDS.FormCreate(Sender: TObject);
var
  RiskBolum,sirketlerx,TehlikeKaynak ,Tehlike , Risk ,
  Olasilik,Frekans,Siddet,Skor ,Method,Onay,subeler  : TcxImageComboKadir;
  FaturaTarihi : TcxDateEditKadir;
  SirketAdi : TcxTextEditKadir;
  item : TcxRadioGroupItem;
  i : TcxImageComboBoxItem;
  where : string;
  r : integer;
  SubItem : TMenuItem;
  pmenu : TPopupMenu;
begin
  inherited;


  cxPanel.Visible := True;
  datalar.QuerySelect(SelectAdo, 'Select kod,tanimi from RDS_Sektorler');
  for r := 0 to SelectAdo.RecordCount - 1 do
  begin
   SubItem:= TMenuItem.Create(PopupMenu1);
   SubItem.Tag:= SelectAdo.Fields[0].AsInteger;
   SubItem.Caption:= SelectAdo.Fields[1].AsString;
   SubItem.OnClick := E3Click;
   PopupMenu1.Items[1].Add(SubItem);
   SelectAdo.Next;
  end;

  datalar.QuerySelect(SelectAdo, 'Select distinct kod,tanimi from RDS_Sektorler S ' +
                                 'join RDS_RiskKaynakSektorEslesmeTablosu E on E.sektorid = S.kod');

  for r := 0 to SelectAdo.RecordCount - 1 do
  begin
   SubItem:= TMenuItem.Create(PopupMenu1);
   SubItem.Tag:= 1000+SelectAdo.Fields[0].AsInteger;
   SubItem.Caption:= SelectAdo.Fields[1].AsString;
   SubItem.OnClick := E3Click;
   PopupMenu1.Items[2].Add(SubItem);
   SelectAdo.Next;
  end;

  Menu := PopupMenu1;

  indexFieldName := 'id';
  TableName := 'RDS_SirketRisk';
 // TopPanel.Visible := true;

  where := ' hazirlayan = ' + QuotedStr(datalar.IGU) + ' or paylasilan = ' + QuotedStr(datalar.IGU) +
           ' or hazirlayan = ' + QuotedStr(datalar.doktorKodu) + ' or paylasilan = ' + QuotedStr(datalar.doktorKodu);

  Faturalar := ListeAcCreate('RDS_SirketRiskView','id,sirketKod,sirketAdi,Tarih,GTarih,Method,hazirlayan',
                       'ID,ÞirketKodu,ÞirketAdý,HazýrlamaTarihi,Geçerlilik,Method,Hazýrlayan',
                       '40,60,250,80,80,80,80','RDSList','Risk Raporlarý',where,7,True,self);



  setDataStringB(self,'id','Risk ID',Kolon1,'trh',50,Faturalar,True,nil,'','',True,True,-100);
  TcxButtonEditKadir(FindComponent('id')).Identity := True;

  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,FaturaTarihi,'date_create','Hazýrlama Tarihi',Kolon1,'trh',80);

  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,FaturaTarihi,'update_date','Düzenleme Tarihi',Kolon1,'trh',80);


  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,FaturaTarihi,'gecerlilik_date','Geçerlilik Tarihi',Kolon1,'trh',80);


  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'SIRKETLER_TNM_view';
  sirketlerx.ValueField := 'SirketKod';
  sirketlerx.DisplayField := 'Tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Filter := datalar.sirketlerUserFilter;
  setDataStringKontrol(self,sirketlerx,'SirketKod','Þirket',Kolon1,'trh',250,0,alNone,'');
  TcxImageComboKadir(FindComponent('SirketKod')).Properties.OnEditValueChanged := SirketlerPropertiesChange;

  Subeler := TcxImageComboKadir.Create(self);
  Subeler.Conn := Datalar.ADOConnection2;
  Subeler.TableName := 'SIRKET_SUBE_TNM';
  Subeler.ValueField := 'subeKod';
  Subeler.DisplayField := 'subeTanim';

  setDataStringKontrol(self,Subeler,'subeKod','Þube',Kolon1,'trh',100,0,alNone,'');
  TcxImageComboKadir(FindComponent('subeKod')).Properties.OnEditValueChanged := SirketlerPropertiesChange;

  //  Subeler.Filter := ' SirketKod = ' + QuotedStr(datalar.AktifSirket) + sube + ' and (Pasif = 0 or Pasif is Null)';



  Method := TcxImageComboKadir.Create(self);
  Method.Conn := Datalar.ADOConnection2;
  Method.TableName := 'RDS_Method';
  Method.ValueField := 'kod';
  Method.DisplayField := 'Tanimi';
  Method.BosOlamaz := False;
  Method.Filter := '';
  setDataStringKontrol(self,Method,'Method','Method',Kolon1,'hz',80,0,alNone,'');
  TcxImageComboKadir(FindComponent('Method')).Properties.OnEditValueChanged :=
  RDSSatirlarOlasilikPropertiesEditValueChanged;


  Method := TcxImageComboKadir.Create(self);
  Method.Conn := Datalar.ADOConnection2;
  Method.TableName := 'IGU';
  Method.ValueField := 'kod';
  Method.DisplayField := 'Tanimi';
  Method.BosOlamaz := False;
  Method.Filter := '';
  setDataStringKontrol(self,Method,'hazirlayan','Ýþ Güvenlik Uzm',Kolon1,'hz',120,0,alNone,'');


//  setDataString(self,'hazirlayan','Ýþ Güvenlik Uzm',Kolon1,'hz',120,false,'',True);

  Method := TcxImageComboKadir.Create(self);
  Method.Conn := Datalar.ADOConnection2;
  Method.TableName := 'DoktorlarT';
  Method.ValueField := 'kod';
  Method.DisplayField := 'Tanimi';
  Method.BosOlamaz := False;
  Method.Filter := '';
  setDataStringKontrol(self,Method,'hazirlayanDoktor','Ýþyeri Hekimi',Kolon1,'hz',120,0,alNone,'');

//  setDataString(self,'hazirlayanDoktor','Ýþyeri Hekimi ',Kolon1,'hz',120,false,'',True);


  Onay := TcxImageComboKadir.Create(self);
  Onay.Name := 'RiskBolum';
  Onay.Conn := nil;
  Onay.ItemList := '1;Evet,0;Hayýr';
  Onay.Filter := '';
  setDataStringKontrol(self,Onay,'Onay','Onay',kolon4,'hz',50);
  OrtakEventAta(Onay);

  Method := TcxImageComboKadir.Create(self);
  Method.Conn := Datalar.ADOConnection2;
  Method.Tag := -100;
  Method.TableName := 'RDS_Sektorler';
  Method.ValueField := 'kod';
  Method.DisplayField := 'Tanimi';
  Method.BosOlamaz := False;
  Method.Filter := '';
  setDataStringKontrol(self,Method,'Sektor','Rapora Ekleme Yaparken Sektorü Baz Al',Kolon1,'hz',120,0,alNone,'');


 // addButton(self,nil,'btnTanimEkle','','Risk Kaynak Taným Ekle',Kolon2,'srkt',120,ButtonClick);


  RiskBolum := TcxImageComboKadir.Create(self);
  RiskBolum.Name := 'RiskBolum';
  RiskBolum.Tag := -100;
  RiskBolum.Conn := datalar.ADOConnection2;
  RiskBolum.TableName := 'RDS_RiskBolum';
  RiskBolum.ValueField := 'Kod';
  RiskBolum.DisplayField := 'tanimi';
  RiskBolum.Filter := '';

  TehlikeKaynak := TcxImageComboKadir.Create(self);
  TehlikeKaynak.Name := 'TehlikeKaynak';
  TehlikeKaynak.Tag := -100;
  TehlikeKaynak.Conn := datalar.ADOConnection2;
  TehlikeKaynak.TableName := 'RDS_TehlikeKaynak';
  TehlikeKaynak.ValueField := 'Kod';
  TehlikeKaynak.DisplayField := 'tanimi';
  TehlikeKaynak.Filter := '';

  Tehlike := TcxImageComboKadir.Create(self);
  Tehlike.Name := 'Tehlike';
  Tehlike.Tag := -100;
  Tehlike.Conn := datalar.ADOConnection2;
  Tehlike.TableName := 'RDS_Tehlike';
  Tehlike.ValueField := 'Kod';
  Tehlike.DisplayField := 'tanimi';
  Tehlike.Filter := '';

  Risk := TcxImageComboKadir.Create(self);
  Risk.Name := 'Risk';
  Risk.Tag := -100;
  Risk.Conn := datalar.ADOConnection2;
  Risk.TableName := 'RDS_Risk';
  Risk.ValueField := 'Kod';
  Risk.DisplayField := 'tanimi';
  Risk.Filter := '';

  Olasilik := TcxImageComboKadir.Create(self);
  Olasilik.Name := 'Olasilik';
  Olasilik.Tag := -100;
  Olasilik.Conn := datalar.ADOConnection2;
  Olasilik.TableName := 'RDS_OLASILIK';
  Olasilik.ValueField := 'degeri';
  Olasilik.DisplayField := 'tanimi';
  Olasilik.Filter := ' where Metod = 1';

  Frekans := TcxImageComboKadir.Create(self);
  Frekans.Name := 'Frekans';
  Frekans.Tag := -100;
  Frekans.Conn := datalar.ADOConnection2;
  Frekans.TableName := 'RDS_Frekans';
  Frekans.ValueField := 'degeri';
  Frekans.DisplayField := 'tanimi';
  Frekans.Filter := '';

  Siddet := TcxImageComboKadir.Create(self);
  Siddet.Name := 'Siddet';
  Siddet.Tag := -100;
  Siddet.Conn := datalar.ADOConnection2;
  Siddet.TableName := 'RDS_SIDDET';
  Siddet.ValueField := 'degeri';
  Siddet.DisplayField := 'tanimi';
  Siddet.Filter := ' where Metod = 1';
(*
  Skor := TcxImageComboKadir.Create(self);
  Skor.Name := 'Skor';
  Skor.Tag := -100;
  Skor.Conn := datalar.ADOConnection2;
  Skor.TableName := 'RDS_Skor';
  Skor.ValueField := 'kod';
  Skor.DisplayField := 'tanimi';
  Skor.Filter := '';
  *)

  try
     TcxImageComboBoxProperties(RDSSatirlarBolum.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('RiskBolum')).Properties).Items;
     TcxImageComboBoxProperties(RDSSatirlarTehlikeKaynagi.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('TehlikeKaynak')).Properties).Items;
 //    TcxImageComboBoxProperties(RDSSatirlarTehlike.Properties).Items :=
 //    TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('Tehlike')).Properties).Items;
  //   TcxImageComboBoxProperties(RDSSatirlarRisk_tanim.Properties).Items :=
 //    TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('Risk')).Properties).Items;

   (*
     TcxImageComboBoxProperties(RDSSatirlarOlasilik.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('Olasilik')).Properties).Items;
     TcxImageComboBoxProperties(RDSSatirlarFrekans.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('Frekans')).Properties).Items;
     TcxImageComboBoxProperties(RDSSatirlarSiddet.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('Siddet')).Properties).Items;

     TcxImageComboBoxProperties(RDSSatirlarOlasilik_2.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('Olasilik')).Properties).Items;
     TcxImageComboBoxProperties(RDSSatirlarFrekans_2.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('Frekans')).Properties).Items;
     TcxImageComboBoxProperties(RDSSatirlarSiddet_2.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('Siddet')).Properties).Items;
     *)
  //   TcxImageComboBoxProperties(RDSSatirlarRDS.Properties).Items :=
  //   TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('Skor')).Properties).Items;

  //   TcxColorComboBoxProperties(RDSSatirlarRDS.Properties).Items.Clear;
  //   TcxColorComboBoxProperties(RDSSatirlarRDS.Properties).Items.AddColor(clRed,'TOLERANS GÖSTERÝLEMEZ RÝSK');
  //   TcxColorComboBoxProperties(RDSSatirlarRDS.Properties).Items.AddColor(clYellow,'ÖNEMLÝ RÝSK');

   //  TcxColorComboBox(RDSSatirlarRDS).ColorValue


//     RDSSatirlarFrekans.Properties.OnEditValueChanged := RDSSatirlarOlasilikPropertiesEditValueChanged;
//     RDSSatirlarSiddet.Properties.OnEditValueChanged := RDSSatirlarOlasilikPropertiesEditValueChanged;
//     RDSSatirlarOlasilik_2.Properties.OnEditValueChanged := RDSSatirlarOlasilikPropertiesEditValueChanged;
//     RDSSatirlarFrekans_2.Properties.OnEditValueChanged := RDSSatirlarOlasilikPropertiesEditValueChanged;
//     RDSSatirlarSiddet_2.Properties.OnEditValueChanged := RDSSatirlarOlasilikPropertiesEditValueChanged;



     RDSSatirlarTehlike.Properties.OnButtonClick := PropertiesButtonClick;

  finally
  end;




//  setDataStringBLabel(self,'bosSatir',kolon1,'',1000,'Risk Kaynaklarý');
  setDataStringKontrol(self,RDSGrid,'RDSGrid','',Kolon1,'',1050,450);
  setDataStringKontrol(self,RDSGridMatris,'RDSGridMatris','',Kolon1,'',1050,450);

  RDSGrid.Dataset.Connection := datalar.ADOConnection2;
  RDSGridMatris.Dataset.Connection := datalar.ADOConnection2;

  RDSGrid.Dataset.OnNewRecord := NewRecord;
  RDSGrid.Dataset.AfterPost := AfterPost;
  RDSGrid.Dataset.BeforePost := BeforePost;
  RDSGrid.Dataset.AfterScroll := AfterScroll;

  RDSGridMatris.Dataset.OnNewRecord := NewRecord;
  RDSGridMatris.Dataset.AfterPost := AfterPost;
  RDSGridMatris.Dataset.BeforePost := BeforePost;
  RDSGridMatris.Dataset.AfterScroll := AfterScroll;

  kolon2.Width := 0;
  Kolon3.Width := 0;
  Kolon4.Width := 0;


  //GridFaturalar.DataController.DataSource := DataSource;
  SayfaCaption('','','','','');
  Disabled(self,True);
end;

procedure TfrmRDS.GozlemYazdir(const GozlemID: integer);
var
  ado : TADOQuery;
  sql : String;
  TopluDataset : TDataSetKadir;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'sp_SahaGozlemRaporBaski ' + IntToStr (GozlemID);

    datalar.QuerySelect(ado, sql);
    TopluDataset.Dataset0 := ado;
    TopluDataset.Dataset0.Name := 'SahaSaglikGozetimRaporu';

    PrintYap('007','Saha Saðlýk Gözetim Raporu','',TopluDataset,pTNone)
  finally
    ado.free;
  end;
end;

procedure TfrmRDS.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

