unit KKD;

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
  TfrmKKD = class(TGirisForm)
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
    List: TListeAc;
    cxStyle9: TcxStyle;
    cxImageList1: TcxImageList;
    KKDGrid: TcxGridKadir;
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
    KKDSatirlar: TcxGridDBBandedTableView;
    KKDGridLevel1: TcxGridLevel;
    N1: TMenuItem;
    e2: TMenuItem;
    KKDSatirlarsirketRiskId: TcxGridDBBandedColumn;
    KKDSatirlarid: TcxGridDBBandedColumn;
    KKDSatirlarVucutKisim: TcxGridDBBandedColumn;
    KKDSatirlarVucutUzuv: TcxGridDBBandedColumn;
    KKDSatirlarKKD: TcxGridDBBandedColumn;
    KKDSatirlarStandart: TcxGridDBBandedColumn;
    KKDSatirlarKullanilacakIS: TcxGridDBBandedColumn;
    KKDSatirlarBolum: TcxGridDBBandedColumn;
    KKDSatirlarYuksektenDusme: TcxGridDBBandedColumn;
    KKDSatirlarDarbeKesik: TcxGridDBBandedColumn;
    KKDSatirlarBatmaKesik: TcxGridDBBandedColumn;
    KKDSatirlarTitresim: TcxGridDBBandedColumn;
    KKDSatirlarKaymaDusme: TcxGridDBBandedColumn;
    KKDSatirlarSicaklikAlev: TcxGridDBBandedColumn;
    KKDSatirlarSoguk: TcxGridDBBandedColumn;
    KKDSatirlarElektrik: TcxGridDBBandedColumn;
    KKDSatirlariyonizeOlmayan: TcxGridDBBandedColumn;
    KKDSatirlariyonize: TcxGridDBBandedColumn;
    KKDSatirlargurultu: TcxGridDBBandedColumn;
    KKDSatirlartozlarLifler: TcxGridDBBandedColumn;
    KKDSatirlarduman: TcxGridDBBandedColumn;
    KKDSatirlarbuhar: TcxGridDBBandedColumn;
    KKDSatirlarsiviyaBatma: TcxGridDBBandedColumn;
    KKDSatirlarsicrama: TcxGridDBBandedColumn;
    KKDSatirlarzararliBakteri: TcxGridDBBandedColumn;
    KKDSatirlarzararliVirus: TcxGridDBBandedColumn;
    KKDSatirlarmantar: TcxGridDBBandedColumn;
    KKDSatirlarantijen: TcxGridDBBandedColumn;
    cxStyle10: TcxStyle;
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
                AButtonIndex: Integer); override;
    procedure NewRecord(DataSet: TDataSet);
    procedure AfterPost(DataSet: TDataSet);

    procedure ButtonClick(Sender: TObject);
    procedure AfterScroll(DataSet: TDataSet);
    procedure RDSSatirlarNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure E3Click(Sender: TObject);
    procedure KKDSatirlarCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure KKDSatirlarStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
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
  end;



var
  frmKKD: TfrmKKD;
  Dataset : Tdataset;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}

procedure TfrmKKD.cxKaydetClick(Sender: TObject);
begin
  //SirketKodx.Text := datalar.AktifSirket; giriþ formuna eklendi.
  inherited;

  case TControl(sender).Tag  of
    0 : begin
          KKDGrid.Enabled := True;
          PopupMenuEnabled(Self,PopupMenu1,True);
          ToolBar1.Enabled := True;
          //PopupMenuToToolBarEnabled(Self,ToolBar1,PopupMenu1);
        end;
    2 : begin
          KKDGrid.Enabled := False;
          PopupMenuEnabled(Self,PopupMenu1,False);
          ToolBar1.Enabled := False;

        end;
  end;
end;


procedure TfrmKKD.E3Click(Sender: TObject);
begin
//
end;

procedure TfrmKKD.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    inherited;
    (*
    Enabled;

    if (TcxTextEditKadir(FindComponent('hazirlayan')).Text <>
       datalar.IGU) and
       (TcxTextEditKadir(FindComponent('hazirlayanDoktor')).Text <>
       datalar.doktor)
       and
       TcxImageComboKadir(FindComponent('Onay')).EditValue = 1
    then begin
       KKDSatirlar.OptionsData.Editing := False;
       KKDSatirlar.OptionsData.Inserting := False;
       KKDSatirlar.OptionsData.Deleting := False;

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
       KKDSatirlar.OptionsData.Editing := True;
       KKDSatirlar.OptionsData.Inserting := True;
       KKDSatirlar.OptionsData.Deleting := True;

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
    *)


end;

function TfrmKKD.Init(Sender : TObject) : Boolean;
begin
  KKDGrid.Dataset.Connection := datalar.ADOConnection2;
  KKDGrid.Dataset.Active := false;
  KKDGrid.Dataset.SQL.Text := 'select * from RDS_KKD_Sirket where sirketRiskId = ' + datalar.KKD.SirketRiskID;
  KKDGrid.Dataset.Active := True;
  Result := True;
end;


procedure TfrmKKD.KKDSatirlarCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
 (*
  if AViewInfo.Value = '1'
  then begin
   AViewInfo.Style.Color := clYellow;
   AViewInfo.Style.Font.Style := AViewInfo.Style.Font.Style + [fsBold];
  end
  else
  begin
   AViewInfo.Style.Color := clWhite;
   AViewInfo.Style.Font.Style := AViewInfo.Style.Font.Style - [fsBold];

  end;


  //ADone := True;
   *)
end;

procedure TfrmKKD.KKDSatirlarStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
 value : string;
begin
  //value := vartostr(ARecord.Values[AItem.Index]);
 try
  if ARecord.Index = -1 then
    Exit
  else
  if AItem.Index > 7
  then begin
     if vartostr(ARecord.Values[AItem.Index]) = '1'
     then AStyle := cxStyle10 else AStyle := cxStyle2;
  end;
 except

 end;
end;

procedure TfrmKKD.NewRecord(DataSet: TDataSet);
begin
   KKDGrid.Dataset.FieldByName('SirketRiskID').AsString := datalar.KKD.SirketRiskID;
end;

procedure TfrmKKD.RDSSatirlarNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);

procedure datawrite;
begin
    KKDSatirlar.DataController.DataSet.FieldByName('Bolum').AsString := datalar.KKD.Bolum ;
    KKDSatirlar.DataController.DataSet.FieldByName('VucutKisim').AsString := datalar.KKD.VucutKisim;
    KKDSatirlar.DataController.DataSet.FieldByName('VucutUzuv').AsString := datalar.KKD.VucutUzuv ;
    KKDSatirlar.DataController.DataSet.FieldByName('KKD').AsString := datalar.KKD.KKD ;
    KKDSatirlar.DataController.DataSet.FieldByName('Standart').AsString := datalar.KKD.TSE;
    KKDSatirlar.DataController.DataSet.FieldByName('KullanilacakIs').AsVariant := datalar.KKD.KullanilacakIs;

end;

procedure dataRead;
begin
    datalar.KKD.Bolum := KKDSatirlar.DataController.DataSet.FieldByName('Bolum').AsString;
    datalar.KKD.VucutKisim := KKDSatirlar.DataController.DataSet.FieldByName('VucutKisim').AsString;
    datalar.KKD.VucutUzuv := KKDSatirlar.DataController.DataSet.FieldByName('VucutUzuv').AsString;
    datalar.KKD.KKD := KKDSatirlar.DataController.DataSet.FieldByName('KKD').AsString ;
    datalar.KKD.TSE := KKDSatirlar.DataController.DataSet.FieldByName('Standart').AsString;
    datalar.KKD.KullanilacakIs := KKDSatirlar.DataController.DataSet.FieldByName('KullanilacakIs').AsString;

end;

begin

  case AButtonIndex of
   6 : begin
        datalar.KKD.Bolum := '';
        datalar.KKD.VucutKisim := '';
        datalar.KKD.VucutUzuv := '';
        datalar.KKD.KKD := '';
        datalar.KKD.TSE := '';
        datalar.KKD.KullanilacakIs := '';
        datalar.KKD.Bolum := '';

        if mrYes = ShowPopupForm('KKD Ekle',yeniKKD)
        then begin
         try
           KKDSatirlar.DataController.DataSet.Append;
           datawrite;
           KKDSatirlar.DataController.DataSet.post;
           KKDSatirlar.DataController.DataSet.Refresh;
           ADone := True;
        except on e : Exception do
          begin
           ShowMessageSkin(e.Message,'','','info');
           KKDSatirlar.DataController.DataSet.Cancel;
          end;
        end;
        end;
    end;

   9 : begin
        dataRead;
        if mrYes = ShowPopupForm('KKD Düzenle',KKDDuzenle)
        then begin
         try
          KKDSatirlar.DataController.DataSet.Edit;
          datawrite;
          KKDSatirlar.DataController.DataSet.Post;
          KKDSatirlar.DataController.DataSet.Refresh;
         except on e : Exception do
          begin
           ShowMessageSkin(e.Message,'','','info');
           KKDSatirlar.DataController.DataSet.Cancel;
          end;
         end;
        end;
    end;

  end;


end;

procedure TfrmKKD.AfterScroll(DataSet: TDataSet);
begin
//
end;

procedure TfrmKKD.AfterPost(DataSet: TDataSet);
begin
     cxPanelButtonEnabled(false,True,false);
     KKDGrid.Dataset.Refresh;
   //  FaturaToplamlari;

end;

procedure TfrmKKD.cxButtonCClick(Sender: TObject);
var
  TopluDataset : TDataSetKadir;
begin
  inherited;


  case Tcontrol(sender).Tag of
  -1 : begin

       end;

  -20 : begin
          //ado := TADOQuery.Create(nil);
          try
            //datalar.QuerySelect(ado, sql);
            TopluDataset.Dataset0 := datalar.QuerySelect('sp_KKD ' + datalar.KKD.SirketRiskID);
            PrintYap('KKD','Kiþisel Koruyucu Donaným Risk Deðerlendirmesi','',TopluDataset,pTNone)
          finally
            //ado.free;
          end;

        end;

  end;
end;

procedure TfrmKKD.ButtonClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
begin
    F := FormINIT(9010,GirisRecord,ikHayir,'');
    if F <> nil then F.ShowModal;
end;


procedure TfrmKKD.FormCreate(Sender: TObject);
var
  ICombo,RiskBolum : TcxImageComboKadir;
begin
  inherited;

  cxPanel.Visible := false;

  Menu := PopupMenu1;

  indexFieldName := 'id';
  TableName := 'RDS_SirketRisk';
 // TopPanel.Visible := true;

  ClientHeight := 600;
  ClientWidth := 1280;

  ICombo := TcxImageComboKadir.Create(self);
  ICombo.Name := 'ICombo';
  ICombo.Tag := -100;
  ICombo.Conn := nil;
  ICombo.ItemList := '1;E,0;H';
  ICombo.Filter := '';

  RiskBolum := TcxImageComboKadir.Create(self);
  RiskBolum.Name := 'RiskBolum';
  RiskBolum.Tag := -100;
  RiskBolum.Conn := datalar.ADOConnection2;
  RiskBolum.TableName := 'RDS_RiskBolum';
  RiskBolum.ValueField := 'Kod';
  RiskBolum.DisplayField := 'tanimi';
  RiskBolum.Filter := '';


  try
     TcxImageComboBoxProperties(KKDSatirlarBolum.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('RiskBolum')).Properties).Items;

     TcxImageComboBoxProperties(KKDSatirlarYuksektenDusme.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('ICombo')).Properties).Items;
     TcxImageComboBoxProperties(KKDSatirlarDarbeKesik.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('ICombo')).Properties).Items;
     TcxImageComboBoxProperties(KKDSatirlarBatmaKesik.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('ICombo')).Properties).Items;
     TcxImageComboBoxProperties(KKDSatirlarTitresim.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('ICombo')).Properties).Items;
     TcxImageComboBoxProperties(KKDSatirlarKaymaDusme.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('ICombo')).Properties).Items;

     TcxImageComboBoxProperties(KKDSatirlarSicaklikAlev.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('ICombo')).Properties).Items;

     TcxImageComboBoxProperties(KKDSatirlarSoguk.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('ICombo')).Properties).Items;

     TcxImageComboBoxProperties(KKDSatirlarElektrik.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('ICombo')).Properties).Items;
     TcxImageComboBoxProperties(KKDSatirlariyonizeOlmayan.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('ICombo')).Properties).Items;
     TcxImageComboBoxProperties(KKDSatirlariyonize.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('ICombo')).Properties).Items;
     TcxImageComboBoxProperties(KKDSatirlargurultu.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('ICombo')).Properties).Items;
     TcxImageComboBoxProperties(KKDSatirlartozlarLifler.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('ICombo')).Properties).Items;
     TcxImageComboBoxProperties(KKDSatirlarduman.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('ICombo')).Properties).Items;
     TcxImageComboBoxProperties(KKDSatirlarbuhar.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('ICombo')).Properties).Items;
     TcxImageComboBoxProperties(KKDSatirlarsiviyaBatma.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('ICombo')).Properties).Items;
     TcxImageComboBoxProperties(KKDSatirlarsicrama.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('ICombo')).Properties).Items;
     TcxImageComboBoxProperties(KKDSatirlarzararliBakteri.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('ICombo')).Properties).Items;
     TcxImageComboBoxProperties(KKDSatirlarzararliVirus.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('ICombo')).Properties).Items;
     TcxImageComboBoxProperties(KKDSatirlarmantar.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('ICombo')).Properties).Items;
     TcxImageComboBoxProperties(KKDSatirlarantijen.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('ICombo')).Properties).Items;

  except
  end;


  kolon2.Width := 0;
  Kolon3.Width := 0;
  Kolon4.Width := 0;

//  setDataStringBLabel(self,'bosSatir',kolon1,'',1000,'Risk Kaynaklarý');
 // setDataStringKontrol(self,KKDGrid,'KKDGrid','',Kolon1,'',1240,475);

  KKDGrid.Dataset.Connection := datalar.ADOConnection2;

  KKDGrid.Dataset.OnNewRecord := NewRecord;
  KKDGrid.Dataset.AfterPost := AfterPost;
//  KKDGrid.Dataset.BeforePost := BeforePost;
  KKDGrid.Dataset.AfterScroll := AfterScroll;


  //GridFaturalar.DataController.DataSource := DataSource;
  SayfaCaption('','','','','');
  Disabled(self,True);
end;

procedure TfrmKKD.GozlemYazdir(const GozlemID: integer);

begin

end;

procedure TfrmKKD.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

