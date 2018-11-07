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
  cxImageComboBox, cxButtonEdit, cxColorComboBox, Vcl.ImgList, cxTrackBar,
  ekbasereport, ekrtf;

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
    FineKenny: TcxImageList;
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
    RDSSatirlarColumn1: TcxGridDBBandedColumn;
    R1: TMenuItem;
    N1: TMenuItem;
    R2: TMenuItem;
    e2: TMenuItem;
    K1: TMenuItem;
    EkRTF1: TEkRTF;
    R3: TMenuItem;
    RTFDialog: TOpenDialog;
    R4: TMenuItem;
    RiskDeerlendirmeProsedr1: TMenuItem;
    F1: TMenuItem;
    Matris: TcxImageList;
    RDSSatirlarColumn2: TcxGridDBBandedColumn;
    D1: TMenuItem;
    M1: TMenuItem;
    Fmea: TcxImageList;
    RDSSatirlarColumn3: TcxGridDBBandedColumn;
    RDSSatirlarTerminSure: TcxGridDBBandedColumn;
    RDSEkipGrid: TcxGridKadir;
    RDSEkipGridList: TcxGridDBBandedTableView;
    RDSEkipGridListAdiSoyadi: TcxGridDBBandedColumn;
    RDSEkipGridListGorevTanim: TcxGridDBBandedColumn;
    RDSEkipGridListeMail: TcxGridDBBandedColumn;
    RDSEkipGridListTelefon: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    D2: TMenuItem;
    D3: TMenuItem;
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure cxKaydetClick(Sender: TObject);override;
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
    function Skor(risk : double ; Method : string = '1') : integer;
    procedure AfterScroll(DataSet: TDataSet);
    procedure RDSSatirlarNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure E3Click(Sender: TObject);
    procedure SirketlerPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function Ekip : TDataset;
    procedure DOF_FormKontrolETOlustur;
 //   function EArsivGonder(FaturaId : string) : string;
 //   function EArsivIptal(FaturaGuid : string) : string;
 //   function EArsivPDF(FaturaGuid : string ; _tag_ : integer) : string;
 //   procedure Gonder;

  private
    { Private declarations }

  protected
    procedure GozlemYazdir (const GozlemID : integer);

  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
    procedure PropertiesEditValueChanged(Sender: TObject);override;
  end;



var
  frmRDS: TfrmRDS;
  List,Faturalar : TListeAc;
  IlkYuklemem : Boolean = False;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}

procedure TfrmRDS.DOF_FormKontrolETOlustur;
var
  sql : string;
begin
  sql := 'exec sp_DOF_FormKontrolETOlustur ' +
         TcxButtonEditKadir(FindComponent('id')).EditText  + ',' +
         QuotedStr(vartoStr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue)) + ',' +
         QuotedStr(vartoStr(TcxImageComboKadir(FindComponent('SubeKod')).EditValue)) + ',' +
         QuotedStr(vartoStr(TcxImageComboKadir(FindComponent('hazirlayan')).EditValue)) + ',' +
         QuotedStr(RDSGrid.Dataset.FieldByName('Tehlike').AsString) + ',' +
         QuotedStr(RDSGrid.Dataset.FieldByName('Bolum').AsString) + ',' +
         QuotedStr(RDSGrid.Dataset.FieldByName('Risk_tanim').AsString);
  try
    if not datalar.QuerySelect(sql).Eof
    Then ShowMessageSkin('Risk Planý Ýçin Döf Oluþturuldu','','','info');
  except on e : exception do
   begin
     ShowMessageSkin(e.Message,'','','info');
   end;

  end;

end;

function TfrmRDS.Ekip : TDataset;
begin
  Ekip := nil;
  RDSEkipGrid.Dataset.Connection := Datalar.ADOConnection2;
  RDSEkipGrid.Dataset.Active := False;
  RDSEkipGrid.Dataset.SQL.Text :=
  'select AdiSoyadi,tanimi GorevTanim,eMail,Telefon from SirketRDSEkibi E ' +
  ' join SIRKET_SUBE_EKIP_View SE on SE.kod = E.EkipID ' +
  ' where ISGEkipId = 1 and SirketKod = ' +
  QuotedStr(vartoStr(TcxImageComboKadir(FindComponent('sirketKod')).EditValue)) +
  ' and E.SirketRiskID = ' + QuotedStr(vartoStr(TcxButtonEditKadir(FindComponent('id')).EditValue));
  RDSEkipGrid.Dataset.Active := True;
  Ekip := RDSEkipGrid.Dataset;
end;



procedure TfrmRDS.SirketlerPropertiesChange(Sender: TObject);
var
  sql , riskID : string;
  dataset : Tdataset;
begin
 if Assigned(TcxImageComboKadir(FindComponent('subeKod')))
 Then
  TcxImageComboKadir(FindComponent('subeKod')).Filter := ' sirketKod = ' +
  QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditingValue));

 if (TcxImageComboKadir(Sender).Name = 'subeKod') or (TcxImageComboKadir(Sender).Name = 'SirketKod')
 Then Begin

  if not IlkYuklemem  then   // Change buttonEdit ten çaðrýlmamýþsa
  begin
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


        riskID := vartoStr(TcxButtonEditKadir(FindComponent('id')).EditValue);
        sql := 'delete from SirketRDSEkibi where SirketRiskID = ' + QuotedStr(riskID) +
               ' insert into SirketRDSEkibi (SirketRiskID,EkipID) ' +
               ' select ' + riskId + ',kod from SIRKET_SUBE_EKIP_View ' +
               ' where ISGEkipId = 1 '  +
               ' and subeKod = ' + vartostr(TcxImageComboKadir(FindComponent('subeKod')).EditingValue) +
               ' and sirketKod = ' + vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditingValue) +
               ' and Aktif = 1 ';
        datalar.QueryExec(sql);
      end;

      Ekip;

      (*
   sql :=
     '(select id,adiSoyadi,eMail,SE.Telefon from SIRKET_SUBE_EKIP SE ' +
     'where SE.SirketKod = ' + QuotedStr(vartostr(TcxImageComboKadir(FindComponent('sirketKod')).EditingValue)) +
     ' and SubeKod = ' + QuotedStr(ifThen(vartostr(TcxImageComboKadir(FindComponent('subeKod')).EditingValue)='','00',vartostr(TcxImageComboKadir(FindComponent('subeKod')).EditingValue))) +
     ' and SE.ISGEkipId = 1 and SE.ISGEkipGorevID = 3) Destek ';
   TcxImageComboKadir(FindComponent('destekEleman')).TableName := sql;
   TcxImageComboKadir(FindComponent('destekEleman')).DisplayField := 'adiSoyadi';
   TcxImageComboKadir(FindComponent('destekEleman')).ValueField := 'id';
   TcxImageComboKadir(FindComponent('destekEleman')).Filter := '';

   TcxImageComboKadir(FindComponent('calisanTemsilci')).TableName :=
     '(select id,adiSoyadi,eMail,SE.Telefon from SIRKET_SUBE_EKIP SE ' +
     'where SE.SirketKod = ' + QuotedStr(vartostr(TcxImageComboKadir(FindComponent('sirketKod')).EditingValue)) +
     ' and SubeKod = ' + QuotedStr(ifThen(vartostr(TcxImageComboKadir(FindComponent('subeKod')).EditingValue)='','00',vartostr(TcxImageComboKadir(FindComponent('subeKod')).EditingValue))) +
     ' and SE.ISGEkipId = 1 and SE.ISGEkipGorevID = 2) CalisanTemsilci ';
   TcxImageComboKadir(FindComponent('calisanTemsilci')).DisplayField := 'adiSoyadi';
   TcxImageComboKadir(FindComponent('calisanTemsilci')).ValueField := 'id';
   TcxImageComboKadir(FindComponent('calisanTemsilci')).Filter := '';

   TcxImageComboKadir(FindComponent('BascalisanTemsilci')).TableName :=
     '(select id,adiSoyadi,eMail,SE.Telefon from SIRKET_SUBE_EKIP SE ' +
     'where SE.SirketKod = ' + QuotedStr(vartostr(TcxImageComboKadir(FindComponent('sirketKod')).EditingValue)) +
     ' and SubeKod = ' + QuotedStr(ifThen(vartostr(TcxImageComboKadir(FindComponent('subeKod')).EditingValue)='','00',vartostr(TcxImageComboKadir(FindComponent('subeKod')).EditingValue))) +
     ' and SE.ISGEkipId = 1 and SE.ISGEkipGorevID = 32) CalisanTemsilci ';
   TcxImageComboKadir(FindComponent('BascalisanTemsilci')).DisplayField := 'adiSoyadi';
   TcxImageComboKadir(FindComponent('BascalisanTemsilci')).ValueField := 'id';
   TcxImageComboKadir(FindComponent('BascalisanTemsilci')).Filter := '';

   TcxImageComboKadir(FindComponent('danisman')).TableName :=
     '(select id,adiSoyadi,eMail,SE.Telefon from SIRKET_SUBE_EKIP SE ' +
     'where SE.SirketKod = ' + QuotedStr(vartostr(TcxImageComboKadir(FindComponent('sirketKod')).EditingValue)) +
     ' and SubeKod = ' + QuotedStr(ifThen(vartostr(TcxImageComboKadir(FindComponent('subeKod')).EditingValue)='','00',vartostr(TcxImageComboKadir(FindComponent('subeKod')).EditingValue))) +
     ' and SE.ISGEkipId = 1 and SE.ISGEkipGorevID = 5) Danisman ';
   TcxImageComboKadir(FindComponent('danisman')).DisplayField := 'adiSoyadi';
   TcxImageComboKadir(FindComponent('danisman')).ValueField := 'id';
    TcxImageComboKadir(FindComponent('danisman')).Filter := '';

   TcxImageComboKadir(FindComponent('isverenVekil')).TableName :=
     '(select id,adiSoyadi,eMail,SE.Telefon from SIRKET_SUBE_EKIP SE ' +
     'where SE.SirketKod = ' + QuotedStr(vartostr(TcxImageComboKadir(FindComponent('sirketKod')).EditingValue)) +
     ' and SubeKod = ' + QuotedStr(ifThen(vartostr(TcxImageComboKadir(FindComponent('subeKod')).EditingValue)='','00',vartostr(TcxImageComboKadir(FindComponent('subeKod')).EditingValue))) +
     ' and SE.ISGEkipId = 1 and SE.ISGEkipGorevID = 1) isverenVekil ';
   TcxImageComboKadir(FindComponent('isverenVekil')).DisplayField := 'adiSoyadi';
   TcxImageComboKadir(FindComponent('isverenVekil')).ValueField := 'id';
   TcxImageComboKadir(FindComponent('isverenVekil')).Filter := '';
   *)
 End;



end;

function TfrmRDS.Skor(risk : double ; Method : string = '1') : integer;
var
 sql : string;
begin
   sql := 'exec sp_RDSSkor ' + floattostr(risk) + ',' + Method;
   skor := datalar.QuerySelect(sql).FieldByName('kod').AsInteger;
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
//     TdxLayoutItem(FindComponent('dxLARDSGridMatris')).Visible := False;
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
Kaydet : begin
          RDSGrid.Enabled := True;
          PopupMenuEnabled(Self,PopupMenu1,True);
          ToolBar1.Enabled := True;
        //  Ekip;
          //PopupMenuToToolBarEnabled(Self,ToolBar1,PopupMenu1);
        end;
 Yeni : begin
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
      try
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
      finally
        DurumGoster(False,False);
      end;
    end;
  end
  else
  begin
    if MrYes = ShowMessageSkin('Rapor ' + TMenuItem(sender).Caption + ' Sektörü ile Eþleþtirilmiþ Þablondan Oluþturulacak','','','msg')
    then begin
      datalar.QuerySelect(SelectAdo,'Select Bolum,TehlikeKaynagi,Tehlike,Risk_tanim from RDS_RiskKaynakSektorEslesmeTablosu where sektorid = ' + inttostr(TMenuItem(sender).Tag-1000));
      DurumGoster(True,True);
      try
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
      finally
        DurumGoster(False,False);
      end;
    end;
  end;



//
end;

procedure TfrmRDS.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  where : string;

begin
    if datalar.UserGroup = '1'
    then
      where := ''
    else
    if datalar.UserGroup = '10'
    then
      where := ' sirketKod = ' + QuotedStr(datalar.sirketKodu)
    else
      where := ' hazirlayan = ' + QuotedStr(datalar.IGU) + ' or paylasilan = ' + QuotedStr(datalar.IGU) +
               ' or hazirlayanDoktor = ' + QuotedStr(datalar.doktorKodu) + ' or paylasilan = ' + QuotedStr(datalar.doktorKodu);

    TListeAc(FindComponent('RDSList')).Where := where;

    IlkYuklemem := True;

    inherited;

    if TcxButtonEditKadir(FindComponent('id')).EditText = '' then exit;


    Enabled;
    FaturaDetay;
    Ekip;

    if (vartostr(TcxTextEditKadir(FindComponent('hazirlayan')).EditingValue) <>
       datalar.IGU) and
       (vartostr(TcxTextEditKadir(FindComponent('hazirlayanDoktor')).EditingValue) <>
       datalar.doktorKodu)
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
       RDSEkipGrid.Enabled := False;

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
       RDSEkipGrid.Enabled := True;
    end;

     if RDSGrid.Dataset.Eof
      then TcxImageComboKadir(FindComponent('Method')).Enabled := True
       else TcxImageComboKadir(FindComponent('Method')).Enabled := False;

    if vartostr(TcxImageComboKadir(FindComponent('Method')).EditingValue) = '3'
    then begin
      TcxImageComboKadir(FindComponent('TehlikeKaynak')).DisplayField := 'OzelKod';
      TcxImageComboKadir(FindComponent('TehlikeKaynak')).Filter := ' Method = ' + vartostr(TcxImageComboKadir(FindComponent('Method')).EditingValue);
    end
    else
    begin
     TcxImageComboKadir(FindComponent('TehlikeKaynak')).DisplayField  := 'tanimi';
     TcxImageComboKadir(FindComponent('TehlikeKaynak')).Filter := ' Method is null ';
    end;
     TcxImageComboBoxProperties(RDSSatirlarTehlikeKaynagi.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('TehlikeKaynak')).Properties).Items;


     IlkYuklemem := False;
end;

function TfrmRDS.Init(Sender : TObject) : Boolean;
begin
  Result := True;
end;


procedure TfrmRDS.NewRecord(DataSet: TDataSet);
begin
   RDSGrid.Dataset.FieldByName('SirketRiskID').AsInteger := TcxButtonEditKadir(FindComponent('id')).EditingValue;
 //  RDSSatirlar.DataController.DataSet.FieldByName('Method').AsInteger := datalar.Risk.Method;

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
    RDSSatirlar.DataController.DataSet.FieldByName('Etkilenecekler').AsVariant := datalar.Risk.Etkilenecek;
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
    RDSSatirlar.DataController.DataSet.FieldByName('TerminSure').AsString := varToStr(datalar.Risk.TerminSure);
    RDSSatirlar.DataController.DataSet.FieldByName('Gerceklesme').AsString := datalar.Risk.Gerceklesme;
    RDSSatirlar.DataController.DataSet.FieldByName('Olasilik_2').AsVariant := datalar.Risk.Olasilik_2;
    RDSSatirlar.DataController.DataSet.FieldByName('Frekans_2').AsVariant := datalar.Risk.Frekans_2;
    RDSSatirlar.DataController.DataSet.FieldByName('Siddet_2').AsVariant := datalar.Risk.Siddet_2;
    RDSSatirlar.DataController.DataSet.FieldByName('Risk_2').AsVariant := datalar.Risk.Risk_2;
    RDSSatirlar.DataController.DataSet.FieldByName('RDS_2').AsVariant := datalar.Risk.RDS_2;
    RDSSatirlar.DataController.DataSet.FieldByName('yasalDayanak').AsString := datalar.Risk.yasalDayanak;

    if Assigned(datalar.Risk.Image.Picture.Graphic)
    then begin
      Blob := TADOBlobStream.Create(TBlobField(RDSSatirlar.DataController.DataSet.FieldByName('Image')),bmwrite);
      try
        //datalar.Risk.Image.Picture.SaveToFile('dd.jpg');
        datalar.Risk.Image.Picture.Graphic.SaveToStream(Blob);
        Blob.Position := 0;
        TBlobField(RDSSatirlar.DataController.DataSet.FieldByName('Image')).LoadFromStream(Blob);
      finally
        Blob.Free;
      end;
    end;
  end;

  procedure dataRead;
  var
    G : TGraphic;
  begin
    datalar.Risk.Bolum := RDSSatirlar.DataController.DataSet.FieldByName('Bolum').AsVariant;
    datalar.Risk.TehlikeKaynagi := RDSSatirlar.DataController.DataSet.FieldByName('TehlikeKaynagi').AsVariant;
    datalar.Risk.Tehlike := RDSSatirlar.DataController.DataSet.FieldByName('Tehlike').AsVariant;
    datalar.Risk.Etkilenecek := RDSSatirlar.DataController.DataSet.FieldByName('Etkilenecekler').AsVariant;
    datalar.Risk.Risk_tanim := RDSSatirlar.DataController.DataSet.FieldByName('Risk_tanim').AsVariant;
    datalar.Risk.Onlemler := RDSSatirlar.DataController.DataSet.FieldByName('Onlemler').AsString;
    datalar.Risk.Olasilik := RDSSatirlar.DataController.DataSet.FieldByName('Olasilik').AsVariant;;
    datalar.Risk.Frekans := RDSSatirlar.DataController.DataSet.FieldByName('Frekans').AsVariant;;
    datalar.Risk.Siddet := RDSSatirlar.DataController.DataSet.FieldByName('Siddet').AsVariant;;
    datalar.Risk.RDS := RDSSatirlar.DataController.DataSet.FieldByName('RDS').AsVariant;;
    datalar.Risk.MevcutOnlem := RDSSatirlar.DataController.DataSet.FieldByName('MevcutOnlem').AsString;
    datalar.Risk.Sorumlu := RDSSatirlar.DataController.DataSet.FieldByName('Sorumlu').AsString;
    datalar.Risk.TerminSure := RDSSatirlar.DataController.DataSet.FieldByName('TerminSure').AsString;
    datalar.Risk.Termin := RDSSatirlar.DataController.DataSet.FieldByName('Termin').AsString;
    datalar.Risk.Gerceklesme := RDSSatirlar.DataController.DataSet.FieldByName('Gerceklesme').AsString;
    datalar.Risk.Olasilik_2 := RDSSatirlar.DataController.DataSet.FieldByName('Olasilik_2').AsVariant;
    datalar.Risk.Frekans_2 := RDSSatirlar.DataController.DataSet.FieldByName('Frekans_2').AsVariant;
    datalar.Risk.Siddet_2 := RDSSatirlar.DataController.DataSet.FieldByName('Siddet_2').AsVariant;
    datalar.Risk.Risk_2 := RDSSatirlar.DataController.DataSet.FieldByName('Risk_2').AsVariant;
    datalar.Risk.RDS_2 := RDSSatirlar.DataController.DataSet.FieldByName('RDS_2').AsVariant;
    datalar.Risk.yasalDayanak := RDSSatirlar.DataController.DataSet.FieldByName('yasalDayanak').AsString;

    g := TJpegimage.Create;
    try
        g.Assign(RDSSatirlar.DataController.DataSet.FieldByName('Image'));
        datalar.Risk.Image := TcxImage.Create(nil);
        datalar.Risk.Image.Picture.Assign(g);
    //    datalar.Risk.Image.Picture.SaveToFile('dd.jpg');
    finally
       g.free;
    end;
  end;
var
  Dataset : Tdataset;
begin
 case AButtonIndex of
   6 ,9: begin
            datalar.Risk.Bolum := Null;
            datalar.Risk.TehlikeKaynagi := Null;
            datalar.Risk.Tehlike := Null;
            datalar.Risk.Etkilenecek := Null;
            datalar.Risk.Risk_tanim := Null;
            datalar.Risk.Onlemler := '';
            datalar.Risk.Olasilik := Null;
            datalar.Risk.Frekans := Null;
            datalar.Risk.Siddet := Null;
            datalar.Risk.RDS := Null;
            datalar.Risk.MevcutOnlem := '';
            datalar.Risk.Sorumlu := '';
            datalar.Risk.Termin := '';
            datalar.Risk.TerminSure := Null;
            datalar.Risk.Gerceklesme := Null;
            datalar.Risk.Olasilik_2 := Null;
            datalar.Risk.Frekans_2 := Null;
            datalar.Risk.Siddet_2 := Null;
            datalar.Risk.Risk_2 := Null;
            datalar.Risk.RDS_2 := Null;
            datalar.Risk.yasalDayanak := '';
            datalar.Risk.SektorId := vartostr(TcxImageComboKadir(FindComponent('Sektor')).EditingValue);
            datalar.Risk.Image := TcxImage.Create(nil);
        end;
   end;

  case AButtonIndex of
   6 : begin

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
           Dataset := datalar.QuerySelect('select * from RDS_RiskKaynakSektorEslesmeTablosu ES ' +
                                     ' join RDS_TehlikeKaynak TK on TK.kod = ES.TehlikeKaynagi ' +
                                     ' where sektorid = ' + datalar.Risk.SektorId +
                                     ' and TehlikeKaynagi = ' +  datalar.Risk.TehlikeKaynagi);
           try
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
           finally
             Dataset.Free;
           end
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
var
  item,item2 : TcxImageComboBoxItem;
begin
  if TcxImageComboKadir(sender).Name = 'Method'
  then begin
  // FaturaDetay;

   datalar.Risk.Method := TcxImageComboKadir(FindComponent('Method')).EditingValue;
   if TcxImageComboKadir(FindComponent('Method')).EditingValue = 2
   Then begin
    RDSSatirlarFrekans_2.Visible := False;
    RDSSatirlarFrekans.Visible := False;
    TcxImageComboBoxProperties(RDSSatirlarRDS.Properties).Images := Matris;
    TcxImageComboBoxProperties(RDSSatirlarRDS.Properties).Items.Clear;


    item := TcxImageComboBoxProperties(RDSSatirlarRDS.Properties).Items.Add;
    item.value := 1;
    item.ImageIndex := 1;
    item := TcxImageComboBoxProperties(RDSSatirlarRDS.Properties).Items.Add;
    item.value := 2;
    item.ImageIndex := 2;
    item := TcxImageComboBoxProperties(RDSSatirlarRDS.Properties).Items.Add;
    item.value := 3;
    item.ImageIndex := 3;
    item := TcxImageComboBoxProperties(RDSSatirlarRDS.Properties).Items.Add;
    item.value := 4;
    item.ImageIndex := 3;
   End;

   if TcxImageComboKadir(FindComponent('Method')).EditingValue = 1
   Then begin
    RDSSatirlarFrekans_2.Visible := True;
    RDSSatirlarFrekans.Visible := True;
    RDSSatirlarFrekans.Caption := 'Frekans';
    RDSSatirlarFrekans_2.Caption := 'Frekans';

    TcxImageComboBoxProperties (RDSSatirlarRDS.Properties).Images := FineKenny;
    TcxImageComboBoxProperties (RDSSatirlarRDS.Properties).Items.Clear;

    item := TcxImageComboBoxProperties (RDSSatirlarRDS.Properties).Items.add;
    item.value := 1;
    item.ImageIndex := 4;
    item := TcxImageComboBoxProperties (RDSSatirlarRDS.Properties).Items.add;
    item.value := 2;
    item.ImageIndex := 0;
    item := TcxImageComboBoxProperties (RDSSatirlarRDS.Properties).Items.add;
    item.value := 3;
    item.ImageIndex := 3;
    item := TcxImageComboBoxProperties (RDSSatirlarRDS.Properties).Items.add;
    item.value := 4;
    item.ImageIndex := 2;
    item := TcxImageComboBoxProperties (RDSSatirlarRDS.Properties).Items.add;
    item.value := 5;
    item.ImageIndex := 1;

    TcxImageComboBoxProperties (RDSSatirlarRDS_2.Properties).Images := FineKenny;
    TcxImageComboBoxProperties (RDSSatirlarRDS_2.Properties).Items.Clear;

    item2 := TcxImageComboBoxProperties (RDSSatirlarRDS_2.Properties).Items.add;
    item2.value := 1;
    item2.ImageIndex := 4;
    item2 := TcxImageComboBoxProperties (RDSSatirlarRDS_2.Properties).Items.add;
    item2.value := 2;
    item2.ImageIndex := 0;
    item2 := TcxImageComboBoxProperties (RDSSatirlarRDS_2.Properties).Items.add;
    item2.value := 3;
    item2.ImageIndex := 3;
    item2 := TcxImageComboBoxProperties (RDSSatirlarRDS_2.Properties).Items.add;
    item2.value := 4;
    item2.ImageIndex := 2;
    item2 := TcxImageComboBoxProperties (RDSSatirlarRDS_2.Properties).Items.add;
    item2.value := 5;
    item2.ImageIndex := 1;

   End;

   if TcxImageComboKadir(FindComponent('Method')).EditingValue = 3
   Then begin
    RDSSatirlarFrekans_2.Visible := True;
    RDSSatirlarFrekans.Visible := True;
    RDSSatirlarFrekans.Caption := 'Saptanabilirlik';
    RDSSatirlarFrekans_2.Caption := 'Saptanabilirlik';
    TcxImageComboBoxProperties (RDSSatirlarRDS.Properties).Images := Fmea;
    TcxImageComboBoxProperties (RDSSatirlarRDS.Properties).Items.Clear;
     (*
    item := TcxImageComboBoxProperties (RDSSatirlarRDS).Items.add;
    item.value := 1;
    item.ImageIndex := 4;
    item := TcxImageComboBoxProperties (RDSSatirlarRDS.Properties).Items.add;
    item.value := 2;
    item.ImageIndex := 0;
    item := TcxImageComboBoxProperties (RDSSatirlarRDS.Properties).Items.add;
    item.value := 3;
    item.ImageIndex := 3;
    item := TcxImageComboBoxProperties (RDSSatirlarRDS.Properties).Items.add;
    item.value := 4;
    item.ImageIndex := 2;
    item := TcxImageComboBoxProperties (RDSSatirlarRDS.Properties).Items.add;
    item.value := 5;
    item.ImageIndex := 1;
    *)
   End;

  end;

  PropertiesEditValueChanged(Sender);

//  RDSSatirlar.DataController.post;
end;

procedure TfrmRDS.PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
 L : ArrayListeSecimler;

begin

  if RDSSatirlar.Controller.FocusedColumn.Name = 'RDSSatirlarRisk_tanim'
  Then begin
    List.Table := 'RDS_Risk';
    L := List.ListeGetir;
    if High (L) < 0 then Exit;
    RDSSatirlar.DataController.DataSet.Edit;
    try
      RDSSatirlar.DataController.DataSet.FieldByName('Risk_tanim').AsString := L[0].Kolon2;
      RDSSatirlar.DataController.DataSet.Post;
    except
      RDSSatirlar.DataController.DataSet.Cancel;
      raise;
    end;
  end;

  if RDSSatirlar.Controller.FocusedColumn.Name = 'RDSSatirlarTehlike'
  Then begin
    List.Table := 'RDS_Tehlike';
    L := List.ListeGetir;
    if High (L) < 0 then Exit;
    RDSSatirlar.DataController.DataSet.Edit;
    try
      RDSSatirlar.DataController.DataSet.FieldByName('Tehlike').AsString := L[0].Kolon2;
      RDSSatirlar.DataController.DataSet.Post;
    except
      RDSSatirlar.DataController.DataSet.Cancel;
      raise;
    end;
  end;
end;

procedure TfrmRDS.PropertiesEditValueChanged(Sender: TObject);
begin
  inherited;

   if TcxImageComboKadir(Sender).Name = 'SirketKod'
   Then
    SirketlerPropertiesChange(Sender);

   if TcxImageComboKadir(Sender).Name = 'subeKod'
   Then
    SirketlerPropertiesChange(Sender);



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
    Skor(RDSSatirlar.DataController.DataSet.FieldByName('Risk').AsFloat,
         vartostr(datalar.Risk.Method));

  RDSSatirlar.DataController.DataSet.FieldByName('RDS_2').AsInteger :=
    Skor(RDSSatirlar.DataController.DataSet.FieldByName('Risk_2').AsFloat,
         vartostr(datalar.Risk.Method));


end;

procedure TfrmRDS.cxButtonCClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  Method : String;
  TopluDataset : TDataSetKadir;
  Dataset : TDataset;
  F : TGirisForm;
  FB : TFirmaBilgi;
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
            Method := vartostr(TcxImageComboKadir(FindComponent('Method')).EditingValue);

            DurumGoster(True,False,'Raporunuz Hazýrlanýyor, Lütfen Bekleyiniz');
            Application.ProcessMessages;

            //datalar.QuerySelect(ado, sql);
            TopluDataset.Dataset0 := datalar.QuerySelect('select * from RDS_OLASILIK where Metod = ' + Method);
            TopluDataset.Dataset1 := datalar.QuerySelect('select * from RDS_FREKANS where Method = ' +  Method);
            TopluDataset.Dataset2 := datalar.QuerySelect('select * from RDS_SIDDET where Metod = ' +  Method);
            TopluDataset.Dataset3 := datalar.QuerySelect('select * from RDS_Skor where Metod = ' +  Method);
            TopluDataset.Dataset4 := datalar.QuerySelect('sp_RDS ' + TcxButtonEditKadir(FindComponent('id')).EditText + ',' + Method);

            PrintYap('RD'+Method,'Risk Deðerlendirme Raporu','',TopluDataset,pTNone,self);
          //  DurumGoster(False);
          finally
            //ado.free;
          end;

        end;
   -25 : begin
           datalar.KKD.SirketRiskID := TcxButtonEditKadir(FindComponent('id')).EditText;
           F := FormINIT(TagfrmKKD,GirisRecord,ikHayir,'');
           if F <> nil then F.ShowModal;
         end;
   -26 : begin

             case TcxImageComboKadir(FindComponent('Method')).EditingValue of
              1 : Method := RDP_FineKenny;
              2 : Method := RDP_Matris;
              3 : Method := RDP_Fmea;
             end;
            // Method := ifThen(vartostr(TcxImageComboKadir(FindComponent('Method')).EditingValue) = '1',RDP_FineKenny,RDP_Matris);


             Dataset := datalar.QuerySelect('sp_RDS ' + TcxButtonEditKadir(FindComponent('id')).EditText + ',' +
                                            vartostr(TcxImageComboKadir(FindComponent('Method')).EditingValue));
             DokumanAc(RTFSablonDataset(Method),'RTFFile',
                       'RTFSablonTanim_'+TcxButtonEditKadir(FindComponent('id')).EditText + '.rtf'
                       ,False);


             EkRTF1.InFile := 'RTFSablonTanim_'+TcxButtonEditKadir(FindComponent('id')).EditText + '.rtf';
             EkRTF1.ClearVars;
             EkRTF1.CreateVar('kurumAdi',TcxImageComboKadir(FindComponent('sirketKod')).Text);
             EkRTF1.CreateVar('igu',TcxImageComboKadir(FindComponent('hazirlayan')).Text);
             EkRTF1.CreateVar('dr',TcxImageComboKadir(FindComponent('hazirlayanDoktor')).Text);
             EkRTF1.CreateVar('isveren',TcxTextEditKadir(FindComponent('isverenVekil')).Text);
             EkRTF1.CreateVar('adres',Dataset.FieldByName('SubeAdres').AsString);
             EkRTF1.CreateVar('osgbfirma',Dataset.FieldByName('osgbfirma').AsString);
             EkRTF1.CreateVar('bitistarih',Dataset.FieldByName('gecerlilik_date').AsString);
             EkRTF1.CreateVar('firmaSicil',Dataset.FieldByName('subeSiciNo').AsString);
             EkRTF1.CreateVar('firmanace',Dataset.FieldByName('NaceKod').AsString);
             EkRTF1.CreateVar('tarih',TcxTextEditKadir(FindComponent('date_create')).Text);
             EkRTF1.CreateVar('yildabir',Dataset.FieldByName('RiskDegerlendirmePeryot').AsString);
             EkRTF1.CreateVar('tehlike',Dataset.FieldByName('SirketTehlikeSinifi').AsString);



             EkRtf1.ExecuteOpen([RDSGrid.Dataset],SW_SHOW);
         end;

   -27 : begin
            (*
             Method := ifThen(vartostr(TcxImageComboKadir(FindComponent('Method')).EditingValue) = '1',RDSonuc_FineKenny,RDSonuc_Matris);
             Dataset := datalar.QuerySelect('sp_RDS ' + TcxButtonEditKadir(FindComponent('id')).EditText);
             DokumanAc(RTFSablonDataset(Method),'RTFFile','RTFSablonTanim',False);
             EkRTF1.InFile := 'RTFSablonTanim.rtf';
             EkRTF1.ClearVars;
             EkRTF1.CreateVar('kurumAdi',TcxImageComboKadir(FindComponent('sirketKod')).Text);
             EkRTF1.CreateVar('igu',TcxImageComboKadir(FindComponent('hazirlayan')).Text);
             EkRTF1.CreateVar('dr',TcxImageComboKadir(FindComponent('hazirlayanDoktor')).Text);
             EkRTF1.CreateVar('isveren',TcxTextEditKadir(FindComponent('isverenVekil')).Text);
             EkRTF1.CreateVar('bitistarih',TcxTextEditKadir(FindComponent('gecerlilik_date')).Text);
             EkRTF1.CreateVar('tarih',TcxTextEditKadir(FindComponent('date_create')).Text);
             EkRTF1.CreateVar('adres',Dataset.FieldByName('SubeAdres').AsString);

             EkRtf1.ExecuteOpen([Dataset],SW_SHOW);
             *)
         end;

   -28 : begin
             case TcxImageComboKadir(FindComponent('Method')).EditingValue of
              1 : Method := RDP_FineKenny;
              2 : Method := RDP_Matris;
              3 : Method := RDP_Fmea;
             end;
             Dataset := datalar.QuerySelect('sp_RDS ' + TcxButtonEditKadir(FindComponent('id')).EditText + ',' +
                                            vartostr(TcxImageComboKadir(FindComponent('Method')).EditingValue));

             TopluDataset.Dataset0 := Dataset;
             TopluDataset.Dataset1 := RDSEkipGrid.Dataset;
             PrintYap('RET','Risk Deðerlendirme Ekip Tutanagi','',TopluDataset,pTNone)

           (*
             DokumanAc(RTFSablonDataset(RDEkipTutanagi),'RTFFile','EkipTutanagi.rtf',False);
             EkRTF1.InFile := 'EkipTutanagi.rtf';
             EkRTF1.ClearVars;
             EkRTF1.CreateVar('kurumAdi',TcxImageComboKadir(FindComponent('sirketKod')).Text);
             EkRTF1.CreateVar('igu',TcxImageComboKadir(FindComponent('hazirlayan')).Text);
             EkRTF1.CreateVar('dr',TcxImageComboKadir(FindComponent('hazirlayanDoktor')).Text);
             EkRTF1.CreateVar('isveren',TcxTextEditKadir(FindComponent('isverenVekil')).Text);
             EkRTF1.CreateVar('tarih',TcxTextEditKadir(FindComponent('date_create')).Text);
   //          EkRTF1.CreateVar('adres',Dataset.FieldByName('adres').AsString);

             EkRtf1.ExecuteOpen([Dataset],SW_SHOW);
             *)
         end;

  -29 : begin
          //ado := TADOQuery.Create(nil);
          try
            //datalar.QuerySelect(ado, sql);
            TopluDataset.Dataset0 := datalar.QuerySelect('sp_RDS ' + TcxButtonEditKadir(FindComponent('id')).EditText + ',' +
                                                          vartostr(TcxImageComboKadir(FindComponent('Method')).EditingValue));

            PrintYap('FBL','Risk Deðerlendirme Raporu Firma Bilgileri','',TopluDataset,pTNone)
          finally
            //ado.free;
          end;

        end;
  -30 : begin
          cxExceleGonder(RDSGrid,'RDS.xls');
          FB.ilgiliMailBilgileri := isgRDSEkibiMailBilgileri(vartostr(TcxButtonEditKadir(FindComponent('id')).EditValue));

          if (mailGonder(FB.ilgiliMailBilgileri,'Risk Deðerlendirme Kaynaklarý',
                        'Düzenlenen Risk Kaynaklarý , ekteki dosyada bilginize sunulmuþtur',
                        'RDS.xls')
               = '0000')
             Then ShowMessageSkin('Email Bilgilendirmesi Yapýldý','','','info')
              else ShowMessageSkin('Email Bilgilendirmesi Yapýlamadý','','','info')


        end;

   -31 : begin
           DOF_FormKontrolETOlustur;
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
  RiskBolum,sirketlerx,TehlikeKaynak ,Tehlike , Risk , TerminSure,
  Olasilik,Frekans,Siddet,Method,Onay,subeler ,Etkilenecek : TcxImageComboKadir;
  FaturaTarihi : TcxDateEditKadir;
  where : string;
  r : integer;
  SubItem : TMenuItem;
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
  sayfa1.PopupMenu := PopupMenu1;

  indexFieldName := 'id';
  TableName := 'RDS_SirketRisk';
 // TopPanel.Visible := true;

  where := ' hazirlayan = ' + QuotedStr(datalar.IGU) + ' or paylasilan = ' + QuotedStr(datalar.IGU) +
           ' or hazirlayanDoktor = ' + QuotedStr(datalar.doktorKodu) + ' or paylasilan = ' + QuotedStr(datalar.doktorKodu);

  Faturalar := ListeAcCreate('RDS_SirketRiskView','id,sirketKod,sirketAdi,Tarih,GTarih,Method,hazirlayan',
                       'ID,ÞirketKodu,ÞirketAdý,HazýrlamaTarihi,Geçerlilik,Method,Hazýrlayan',
                       '40,60,250,80,80,80,80','RDSList','Risk Raporlarý',where,7,True,self);



  setDataStringB(self,'id','Risk ID',Kolon1,'',50,Faturalar,True,nil,'','',True,True,-100);
  TcxButtonEditKadir(FindComponent('id')).Identity := True;

  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,FaturaTarihi,'date_create','Hazýrlama Tarihi',Kolon1,'',80);

  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,FaturaTarihi,'update_date','Düzenleme Tarihi',Kolon1,'',80);


  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,FaturaTarihi,'gecerlilik_date','Geçerlilik Tarihi',Kolon1,'',80);


  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'SIRKETLER_TNM_view';
  sirketlerx.ValueField := 'SirketKod';
  sirketlerx.DisplayField := 'Tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Filter := datalar.sirketlerUserFilter;
  setDataStringKontrol(self,sirketlerx,'SirketKod','Þirket',Kolon1,'',450,0,alNone,'');
  TcxImageComboKadir(FindComponent('SirketKod')).Properties.OnEditValueChanged := PropertiesEditValueChanged;//SirketlerPropertiesChange;

  Subeler := TcxImageComboKadir.Create(self);
  Subeler.Conn := Datalar.ADOConnection2;
  Subeler.TableName := 'SIRKET_SUBE_TNM';
  Subeler.ValueField := 'subeKod';
  Subeler.DisplayField := 'subeTanim';

  setDataStringKontrol(self,Subeler,'subeKod','Þube',Kolon1,'',100,0,alNone,'');
  TcxImageComboKadir(FindComponent('subeKod')).Properties.OnEditValueChanged := PropertiesEditValueChanged;//SirketlerPropertiesChange;

  //  Subeler.Filter := ' SirketKod = ' + QuotedStr(datalar.AktifSirket) + sube + ' and (Pasif = 0 or Pasif is Null)';



  Method := TcxImageComboKadir.Create(self);
  Method.Conn := Datalar.ADOConnection2;
  Method.TableName := 'RDS_Method';
  Method.ValueField := 'kod';
  Method.DisplayField := 'Tanimi';
  Method.BosOlamaz := False;
  Method.Filter := '';
  setDataStringKontrol(self,Method,'Method','Method',Kolon1,'',80,0,alNone,'');
  TcxImageComboKadir(FindComponent('Method')).Properties.OnEditValueChanged :=
  RDSSatirlarOlasilikPropertiesEditValueChanged;


  Method := TcxImageComboKadir.Create(self);
  Method.Conn := Datalar.ADOConnection2;
  Method.TableName := 'IGU';
  Method.ValueField := 'kod';
  Method.DisplayField := 'Tanimi';
  Method.BosOlamaz := False;
  Method.Enabled := False;
  Method.Filter := '';
  setDataStringKontrol(self,Method,'hazirlayan','Ýþ Güvenlik Uzm',Kolon1,'',120,0,alNone,'');


//  setDataString(self,'hazirlayan','Ýþ Güvenlik Uzm',Kolon1,'hz',120,false,'',True);

  Method := TcxImageComboKadir.Create(self);
  Method.Conn := Datalar.ADOConnection2;
  Method.TableName := 'DoktorlarT';
  Method.ValueField := 'kod';
  Method.DisplayField := 'Tanimi';
  Method.BosOlamaz := False;
  Method.Filter := '';
  Method.Enabled := False;
  setDataStringKontrol(self,Method,'hazirlayanDoktor','Ýþyeri Hekimi',Kolon1,'',120,0,alNone,'');

//  setDataString(self,'hazirlayanDoktor','Ýþyeri Hekimi ',Kolon1,'hz',120,false,'',True);


  Onay := TcxImageComboKadir.Create(self);
  Onay.Name := 'RiskBolum';
  Onay.Conn := nil;
  Onay.ItemList := '1;Evet,0;Hayýr';
  Onay.Filter := '';
  setDataStringKontrol(self,Onay,'Onay','Onay',kolon1,'',50);
  OrtakEventAta(Onay);


  (*

  Method := TcxImageComboKadir.Create(self);
  Method.Conn := Datalar.ADOConnection2;
  Method.TableName := 'SIRKET_SUBE_EKIP';
  Method.ValueField := 'id';
  Method.DisplayField := 'adiSoyadi';
  Method.BosOlamaz := False;
  Method.Filter := ' ISGEkipGorevID = 24 and sirketKod = ' + QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue));
  setDataStringKontrol(self,Method,'destekEleman','Destek Elemaný',Kolon1,'',120,0,alNone,'');


  Method := TcxImageComboKadir.Create(self);
  Method.Conn := Datalar.ADOConnection2;
  Method.TableName := 'SIRKET_SUBE_EKIP';
  Method.ValueField := 'id';
  Method.DisplayField := 'adiSoyadi';
  Method.BosOlamaz := False;
  Method.Filter := ' ISGEkipGorevID = 2 and sirketKod = ' + QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue));
  setDataStringKontrol(self,Method,'calisanTemsilci','Çalýþan Temsilci',Kolon1,'',120,0,alNone,'');

  Method := TcxImageComboKadir.Create(self);
  Method.Conn := Datalar.ADOConnection2;
  Method.TableName := 'SIRKET_SUBE_EKIP';
  Method.ValueField := 'id';
  Method.DisplayField := 'adiSoyadi';
  Method.BosOlamaz := False;
  Method.Filter := ' ISGEkipGorevID = 32 and sirketKod = ' + QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue));
  setDataStringKontrol(self,Method,'BascalisanTemsilci','Baþ Çalýþan Temsilci',Kolon1,'',120,0,alNone,'');


  Method := TcxImageComboKadir.Create(self);
  Method.Conn := Datalar.ADOConnection2;
  Method.TableName := 'SIRKET_SUBE_EKIP';
  Method.ValueField := 'id';
  Method.DisplayField := 'adiSoyadi';
  Method.BosOlamaz := False;
  Method.Filter := ' ISGEkipGorevID = 5 and sirketKod = ' + QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue));
  setDataStringKontrol(self,Method,'danisman','Danýþman',Kolon1,'',120,0,alNone,'');

  Method := TcxImageComboKadir.Create(self);
  Method.Conn := Datalar.ADOConnection2;
  Method.TableName := 'SIRKET_SUBE_EKIP';
  Method.ValueField := 'id';
  Method.DisplayField := 'adiSoyadi';
  Method.BosOlamaz := False;
  Method.Filter := ' ISGEkipGorevID = 1 and sirketKod = ' + QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue));
  setDataStringKontrol(self,Method,'isverenVekil','Ýþveren Vekili',Kolon1,'',120,0,alNone,'');
  *)


  setDataStringMemo(self,'Aciklama','Açýklama',kolon1,'',450,100);

  setDataStringKontrol(self,RDSEkipGrid,'RDSEkipGrid',' ',Kolon1,'',450,140,alNone,'',clLeft);


  Method := TcxImageComboKadir.Create(self);
  Method.Conn := Datalar.ADOConnection2;
  Method.Tag := -100;
  Method.TableName := 'RDS_Sektorler';
  Method.ValueField := 'kod';
  Method.DisplayField := 'Tanimi';
  Method.BosOlamaz := False;
  Method.Filter := '';
  setDataStringKontrol(self,Method,'Sektor','Rapora Ekleme Yaparken Sektorü Baz Al',sayfa2_Kolon1,'',120,0,alNone,'');


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

  if vartostr(TcxImageComboKadir(FindComponent('Method')).EditingValue) = '3'
  then begin
    TehlikeKaynak.DisplayField := 'OzelKod';
    TehlikeKaynak.Filter := ' Method = ' + vartostr(TcxImageComboKadir(FindComponent('Method')).EditingValue);
  end
  else
  begin
   TehlikeKaynak.DisplayField := 'tanimi';
   TehlikeKaynak.Filter := ' Method is null ';
  end;

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
//  Olasilik.Filter := '  Metod = ' + vartostr(TcxImageComboKadir(FindComponent('Method')).EditingValue);

  Frekans := TcxImageComboKadir.Create(self);
  Frekans.Name := 'Frekans';
  Frekans.Tag := -100;
  Frekans.Conn := datalar.ADOConnection2;
  Frekans.TableName := 'RDS_Frekans';
  Frekans.ValueField := 'degeri';
  Frekans.DisplayField := 'tanimi';
 // Frekans.Filter := ' where Metod = ' + vartostr(TcxImageComboKadir(FindComponent('Method')).EditingValue);

  Siddet := TcxImageComboKadir.Create(self);
  Siddet.Name := 'Siddet';
  Siddet.Tag := -100;
  Siddet.Conn := datalar.ADOConnection2;
  Siddet.TableName := 'RDS_SIDDET';
  Siddet.ValueField := 'degeri';
  Siddet.DisplayField := 'tanimi';

  Etkilenecek := TcxImageComboKadir.Create(self);
  Etkilenecek.Name := 'Etkilenen';
  Etkilenecek.Tag := -100;
  Etkilenecek.Conn := datalar.ADOConnection2;
  Etkilenecek.TableName := 'RDS_Etkilenecekler';
  Etkilenecek.ValueField := 'kod';
  Etkilenecek.DisplayField := 'tanimi';
  Etkilenecek.Filter := '';

  TerminSure := TcxImageComboKadir.Create(self);
  TerminSure.Name := 'TerminTipleri';
  TerminSure.Tag := -100;
  TerminSure.Conn := datalar.ADOConnection2;
  TerminSure.TableName := 'TerminTipleri';
  TerminSure.ValueField := 'kod';
  TerminSure.DisplayField := 'tanimi';
  TerminSure.Filter := '';

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

  if TcxImageComboKadir(FindComponent('Method')).EditingValue = 2
  then begin
    RDSSatirlarFrekans.Visible := False;
    RDSSatirlarFrekans_2.Visible := False;
  end
  else
  begin
    if TcxImageComboKadir(FindComponent('Method')).EditingValue = 3
    Then
     RDSSatirlarFrekans.Caption := 'Saptanabilirlik'
    Else
     RDSSatirlarFrekans.Caption := 'Frekans';

    RDSSatirlarFrekans.Visible := True;
    RDSSatirlarFrekans_2.Visible := True;
  end;


  try
     TcxImageComboBoxProperties(RDSSatirlarBolum.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('RiskBolum')).Properties).Items;
     TcxImageComboBoxProperties(RDSSatirlarTehlikeKaynagi.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('TehlikeKaynak')).Properties).Items;
     TcxImageComboBoxProperties(RDSSatirlarColumn3.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('Etkilenen')).Properties).Items;

     TcxImageComboBoxProperties(RDSSatirlarTerminSure.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('TerminTipleri')).Properties).Items;

     TcxImageComboBoxProperties (RDSSatirlarRDS_2.Properties).Images :=
     TcxImageComboBoxProperties (RDSSatirlarRDS.Properties).Images;
     TcxImageComboBoxProperties (RDSSatirlarRDS_2.Properties).Items :=
     TcxImageComboBoxProperties (RDSSatirlarRDS.Properties).Items;


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
*)

//     RDSSatirlarSiddet.Properties.OnEditValueChanged := RDSSatirlarOlasilikPropertiesEditValueChanged;
 //    RDSSatirlarFrekans.Properties.OnEditValueChanged := RDSSatirlarOlasilikPropertiesEditValueChanged;
 //    RDSSatirlarSiddet.Properties.OnEditValueChanged := RDSSatirlarOlasilikPropertiesEditValueChanged;
 //    RDSSatirlarOlasilik_2.Properties.OnEditValueChanged := RDSSatirlarOlasilikPropertiesEditValueChanged;
 //    RDSSatirlarFrekans_2.Properties.OnEditValueChanged := RDSSatirlarOlasilikPropertiesEditValueChanged;
 //    RDSSatirlarSiddet_2.Properties.OnEditValueChanged := RDSSatirlarOlasilikPropertiesEditValueChanged;



     RDSSatirlarTehlike.Properties.OnButtonClick := PropertiesButtonClick;

  finally
  end;




//  setDataStringBLabel(self,'bosSatir',kolon1,'',1000,'Risk Kaynaklarý');
  setDataStringKontrol(self,RDSGrid,'RDSGrid','',sayfa2_Kolon1,'',1,1,alClient);
 // setDataStringKontrol(self,RDSGridMatris,'RDSGridMatris','',Kolon1,'',1050,450);

  RDSGrid.Dataset.Connection := datalar.ADOConnection2;
//  RDSGridMatris.Dataset.Connection := datalar.ADOConnection2;

  RDSGrid.Dataset.OnNewRecord := NewRecord;
  RDSGrid.Dataset.AfterPost := AfterPost;
  RDSGrid.Dataset.BeforePost := BeforePost;
  RDSGrid.Dataset.AfterScroll := AfterScroll;

//  RDSGridMatris.Dataset.OnNewRecord := NewRecord;
//  RDSGridMatris.Dataset.AfterPost := AfterPost;
 // RDSGridMatris.Dataset.BeforePost := BeforePost;
//  RDSGridMatris.Dataset.AfterScroll := AfterScroll;

  kolon2.Width := 0;
  Kolon3.Width := 0;
  Kolon4.Width := 0;
  sayfa2_kolon2.Visible := false;
  sayfa2_kolon3.Visible := false;


  //GridFaturalar.DataController.DataSource := DataSource;
  SayfaCaption('Rapor Bilgileri','Risk Kaynaklarý','','','');
  Disabled(self,True);
end;

procedure TfrmRDS.FormShow(Sender: TObject);
begin
  inherited;
 //  TcxGrid(FindComponent('RDSGrid')).Width := sayfa1.Width - 20;
 //  TcxGrid(FindComponent('RDSGrid')).Height := sayfa1.Height - 50;


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

