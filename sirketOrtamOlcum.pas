unit sirketOrtamOlcum;

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
  cxImageComboBox, cxButtonEdit, cxColorComboBox, Vcl.ImgList;

type
  TfrmSirketOrtamOlcum = class(TGirisForm)
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
    OrtamOlcumGrid: TcxGridKadir;
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
    Satirlar: TcxGridDBBandedTableView;
    OrtamOlcumGridLevel1: TcxGridLevel;
    i1: TMenuItem;
    SatirlarColumn1: TcxGridDBBandedColumn;
    SatirlarColumn2: TcxGridDBBandedColumn;
    SatirlarColumn3: TcxGridDBBandedColumn;
    SatirlarColumn4: TcxGridDBBandedColumn;
    cxStyle10: TcxStyle;
    SatirlarColumn5: TcxGridDBBandedColumn;
    procedure Fatura(islem: Integer);
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
    procedure BeforeEdit(DataSet: TDataSet);
    procedure BeforeDelete(DataSet: TDataSet);
    procedure ButtonClick(Sender: TObject);
    procedure FaturaSatirTutarCustomDrawFooterCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure AfterScroll(DataSet: TDataSet);
    function CreateRotatedFont: HFONT;
    procedure SatirlarRDSCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure RDSSatirlarNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure SirketlerPropertiesChange(Sender: TObject);
    procedure SatirSil(rowid : string);
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



const
//LIB_DLL = 'NoktaDLL.dll';
  LIB_DLL = 'D:\Projeler\VS\c#\EFatura\EFaturaDLL\ClassLibrary1\bin\Debug\EFaturaDLL.dll';
  test = 'https://efatura-test.uyumsoft.com.tr/Services/Integration';
  gercek = 'https://efatura.uyumsoft.com.tr/Services/Integration';
var
  frmSirketOrtamOlcum: TfrmSirketOrtamOlcum;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}

function TfrmSirketOrtamOlcum.CreateRotatedFont: HFONT;
  var
    ALogFont: TLogFont;
begin
    FillChar(ALogFont, SizeOf(ALogFont), 0);
   // GetObject(ANFont.Handle, SizeOf(ALogFont), @ALogFont);
    ALogFont.lfEscapement := 900;
    Result := CreateFontIndirect(ALogFont);
end;

procedure TfrmSirketOrtamOlcum.SatirSil(rowid : string);
var
  sql : string;
begin
  sql := 'delete from Ortam_OlcumDetay where id = ' + QuotedStr(rowid);
  datalar.QueryExec(sql);
end;

procedure TfrmSirketOrtamOlcum.SirketlerPropertiesChange(Sender: TObject);
var
  subeIGU,subeDoktor : string;
begin
 subeIGU := ' and IGU = ' + QuotedStr(datalar.IGU);
 subeDoktor := ' and subeDoktor = ' + QuotedStr(datalar.doktorKodu);

 TcxImageComboKadir(FindComponent('subeKod')).Clear;
 if Assigned(TcxImageComboKadir(FindComponent('subeKod')))
 Then begin
  if datalar.UserGroup = '2'
  then
    TcxImageComboKadir(FindComponent('subeKod')).Filter := ' sirketKod = ' +
    QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditingValue)) + subeDoktor;

  if datalar.UserGroup = '11'
  then
    TcxImageComboKadir(FindComponent('subeKod')).Filter := ' sirketKod = ' +
    QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditingValue)) + subeIGU;


 end;

 //TcxImageComboKadir(FindComponent('IGU')).TableName := SirketIGUToSQLStr(TcxImageComboKadir(FindComponent('sirketKod')).EditingValue);
 //TcxImageComboKadir(FindComponent('IGU')).Filter := '';


end;

procedure TfrmSirketOrtamOlcum.FaturaDetay;
var
 sql : string;
begin

sql :=

      'select OO.*,Srk.Tanimi SirketAdi,S.subeTanim SubeAdi,D.tanimi DoktorAdi,I.tanimi IGUAdi,' +
      'ODT.tanimi OlcumAdi,RB.tanimi BolumAdi,OD.Deger,ODT.Birim,ODT.NormalDeger,OD.id detayID ' +
      'from Ortam_Olcum OO ' +
      'join Ortam_OlcumDetay OD on OO.id = OD.ortamOlcumID ' +
      'join OrtamOlcumTipleri ODT on ODT.Kod = OD.Olcum ' +
      'join RDS_RiskBolum RB on RB.kod = OD.Bolum ' +
      'join SIRKETLER_TNM Srk on Srk.sirketKod = OO.sirketKod ' +
      'join SIRKET_SUBE_TNM S on S.sirketKod = OO.sirketKod and S.subeKod = OO.subeKod ' +
      'left join doktorlarT D on D.kod = OO.doktor ' +
      'left join IGU I on I.kod = OO.IGU ' +
      ' where OO.id = ' + QuotedStr(TcxButtonEditKadir(FindComponent('id')).Text);



     OrtamOlcumGrid.Dataset.Active := False;
     OrtamOlcumGrid.Dataset.SQL.Text := sql;
     OrtamOlcumGrid.Dataset.Active := True;

end;

procedure TfrmSirketOrtamOlcum.FaturaSatirTutarCustomDrawFooterCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
//  FaturaToplamlari;
end;

procedure TfrmSirketOrtamOlcum.cxKaydetClick(Sender: TObject);
begin
  //SirketKodx.Text := datalar.AktifSirket; giriþ formuna eklendi.
  if TControl(sender).Tag in [Sil] then
  begin
        datalar.ADOConnection2.BeginTrans;
        try
         datalar.QueryExec('delete from Ortam_OlcumDetay where ortamOlcumID = ' + TcxButtonEditKadir(FindComponent('id')).Text);
         datalar.QueryExec('delete from Ortam_Olcum where id = ' + TcxButtonEditKadir(FindComponent('id')).Text);
         datalar.ADOConnection2.CommitTrans;
        except on e : exception do
         begin
          ShowMessageSkin(e.Message,'','','info');
          datalar.ADOConnection2.RollbackTrans;
         end;
        end;
  end;



  inherited;

  case TControl(sender).Tag  of
     Kaydet : begin
                OrtamOlcumGrid.Enabled := True;
              end;
     Yeni :   begin
                TcxImageComboKadir(FindComponent('IGU')).EditValue := datalar.IGU;
                TcxImageComboKadir(FindComponent('doktor')).EditValue := datalar.doktorKodu;
                TcxDateEditKadir(FindComponent('Tarih')).EditValue := date;
                OrtamOlcumGrid.Enabled := False;
                FaturaDetay;
              end;

     Sil :    begin
                FaturaDetay
              end;
  end;
end;


procedure TfrmSirketOrtamOlcum.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    if AButtonIndex > -1 then inherited;
    if vartoStr(TcxButtonEditKadir(FindComponent('id')).EditingValue) = ''
    then begin
     OrtamOlcumGrid.Dataset.Active := False;
     exit;
    end;

    Enabled;
    FaturaDetay;

    if (TcxImageComboKadir(FindComponent('IGU')).EditValue <>
       datalar.IGU) and
       (TcxImageComboKadir(FindComponent('doktor')).EditValue <>
       datalar.doktorKodu)
    //   and
    //   TcxImageComboKadir(FindComponent('Onay')).EditValue = 1
    then begin
       Satirlar.OptionsData.Editing := False;
       Satirlar.OptionsData.Inserting := False;
       Satirlar.OptionsData.Deleting := False;

       TcxImageComboKadir(FindComponent('SirketKod')).Enabled := False;
       TcxImageComboKadir(FindComponent('SubeKod')).Enabled := False;
       TcxTextEditKadir(FindComponent('IGU')).Enabled := False;
       TcxTextEditKadir(FindComponent('doktor')).Enabled := False;
       TcxImageComboKadir(FindComponent('tarih')).Enabled := False;
   //    TcxImageComboKadir(FindComponent('isveren')).Enabled := False;
   //    TcxImageComboKadir(FindComponent('Onay')).Enabled := False;

    end
    else
    begin
       Satirlar.OptionsData.Editing := True;
       Satirlar.OptionsData.Inserting := True;
       Satirlar.OptionsData.Deleting := True;

       TcxImageComboKadir(FindComponent('SirketKod')).Enabled := True;
       TcxImageComboKadir(FindComponent('SubeKod')).Enabled := True;
       TcxTextEditKadir(FindComponent('doktor')).Enabled := True;
       TcxTextEditKadir(FindComponent('IGU')).Enabled := True;
       TcxImageComboKadir(FindComponent('tarih')).Enabled := True;
     //  TcxImageComboKadir(FindComponent('isveren')).Enabled := True;
    //   TcxImageComboKadir(FindComponent('Onay')).Enabled := True;
    end;


end;

function TfrmSirketOrtamOlcum.Init(Sender : TObject) : Boolean;
begin
  Result := True;
   // TcxButtonEditKadir(FindComponent('id')).EditValue := DATALAR.QuerySelect('select id from SirketSahaGozetim where RDS_ID = ' + QuotedStr(_kod_)).Fields[0].AsString;
   // indexFieldValue := TcxButtonEditKadir(FindComponent('id')).EditingValue;
   // indexKaydiBul(_kod_,'RDS_ID');
  //  cxButtonEditPropertiesButtonClick(TcxButtonEditKadir(FindComponent('id')),-1);
end;


procedure TfrmSirketOrtamOlcum.Fatura(islem: Integer);

begin
  //
end;

procedure TfrmSirketOrtamOlcum.NewRecord(DataSet: TDataSet);
begin
   OrtamOlcumGrid.Dataset.FieldByName('ortamOlcumID').AsInteger := TcxButtonEditKadir(FindComponent('id')).EditingValue;
end;

procedure TfrmSirketOrtamOlcum.RDSSatirlarNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);

var
  Book : TBookmark;

procedure datawrite;
begin
//


end;

procedure dataRead;
begin

//
end;

begin

  

end;

procedure TfrmSirketOrtamOlcum.SatirlarRDSCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
 (*
  if AViewInfo.Value = 'TOLERANS GÖSTERÝLEMEZ RÝSK'
  Then
    ACanvas.Brush.Color := clRed
  else
  if AViewInfo.Value = 'ESASLI RÝSK'
  Then ACanvas.Brush.Color := clCream
  else
  if AViewInfo.Value = 'ÖNEMLÝ RÝSK'
  Then ACanvas.Brush.Color := clYellow
  else
  if AViewInfo.Value = 'OLASI RÝSK'
  then ACanvas.Brush.Color := clActiveCaption
  else
  if AViewInfo.Value = 'ÖNEMSÝZ RÝSK'
  then ACanvas.Brush.Color := clFuchsia;


(*
  ACanvas.Brush.Style := bsClear; // set the brush style to transparent
  FillChar(lf, SizeOf(lf), Byte(0));
  lf.lfHeight := 20;
  lf.lfEscapement := 10 * 90; // degrees to rotate
  lf.lfOrientation := -10 * 90;
  lf.lfCharSet := DEFAULT_CHARSET;
  lf.lfWidth := 150;

  StrCopy(lf.lfFaceName, 'Tahoma');

  ACanvas.Font.Handle := CreateFontIndirect(lf);
 // ACanvas. TextOut(10, 100, 'Rotated text');
 *)
end;

procedure TfrmSirketOrtamOlcum.PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);

begin
(*
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
  *)
end;

procedure TfrmSirketOrtamOlcum.AfterScroll(DataSet: TDataSet);
begin
//
end;

procedure TfrmSirketOrtamOlcum.AfterPost(DataSet: TDataSet);
begin
     cxPanelButtonEnabled(false,True,false);
   //  Satirlar.DataController.Dataset.Refresh;
   //  FaturaToplamlari;

end;

procedure TfrmSirketOrtamOlcum.BeforeEdit(DataSet: TDataSet);
begin
  // Satirlar.DataController.Dataset.DataSource.DataSet.Properties['Unique Table'].Value := 'SirketSahaGozetimDetay';
end;

procedure TfrmSirketOrtamOlcum.BeforeDelete(DataSet: TDataSet);
begin
  // SahaGozetimGrid.DataSet.Properties['Unique Table'].Value := 'SirketSahaGozetimDetay';
end;

procedure TfrmSirketOrtamOlcum.BeforePost(DataSet: TDataSet);
begin

//  RDSSatirlar.DataController.DataSet.FieldByName('Risk').AsFloat :=
 // RDSSatirlar.DataController.DataSet.FieldByName('Olasilik').AsFloat *
 // RDSSatirlar.DataController.DataSet.FieldByName('Frekans').AsFloat *
 // RDSSatirlar.DataController.DataSet.FieldByName('Siddet').AsFloat;

  //Satirlar.DataController.DataSet.FieldByName('RDS').AsInteger :=
 //   Skor(RDSSatirlar.DataController.DataSet.FieldByName('Risk').AsFloat);
end;

procedure TfrmSirketOrtamOlcum.cxButtonCClick(Sender: TObject);
var
  dosya : TOpenDialog;
  TopluDataset : TDataSetKadir;
  FB : TFirmaBilgi;
begin
  inherited;


  case Tcontrol(sender).Tag of
  -20 : begin
          TopluDataset.Dataset0 := OrtamOlcumGrid.Dataset;
         // TopluDataset.Dataset1 := SahaGozetimGrid.Dataset;

          PrintYap('011','Ortam Olcum','',TopluDataset);
        end;
  -30 : begin
  (*
          FB := FirmaBilgileri(vartostr(TcxImageComboKadir(FindComponent('sirketKod')).EditValue));
        //  cxExceleGonder(SahaGozetimGrid,'DOF.xls');
          if (mailGonder(FB.YetkiliMail,'DÖF',
                        'Düzenlenen DÖF ler , ekteki dosyada bilginize sunulmuþtur',
                        'DOF.xls')
               = '0000')
             Then ShowMessageSkin('Email Bilgilendirmesi Yapýldý','','','info')
              else ShowMessageSkin('Email Bilgilendirmesi Yapýlamadý','','','info')

       *)
        end;
  -24:begin
       dosya := TOpenDialog.Create(nil);
       DurumGoster;
       try
         if not dosya.Execute then Exit;
         DokumanYukle(Satirlar.DataController.Dataset,'Image',dosya.FileName,2048);
       finally
         dosya.free;
         DurumGoster(False);
       end;

      end;
  -25 : begin
          DokumanAc(Satirlar.DataController.Dataset,'Image','DOFBelge_'+Satirlar.DataController.Dataset.FieldByName('id').AsString);
        end;
  end;
end;

procedure TfrmSirketOrtamOlcum.ButtonClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
  sql , s ,id: string;
begin
    //F := FormINIT(9010,GirisRecord,ikHayir,'');
   // if F <> nil then F.ShowModal;

  case TcxButton(sender).Tag of
    1 : begin

          datalar.OrtamOlcum.Bolum := '';
          SetLength(datalar.OrtamOlcum.Olcumler,0);

          if mrYes = ShowPopupForm('Ölçüm Kriteri Ekle',olcumEkle)
          then begin
            if Length(datalar.OrtamOlcum.Olcumler) > 0
            then
              for s in datalar.OrtamOlcum.Olcumler do
              begin
                sql := 'if not exists(select * from Ortam_OlcumDetay ' +
                       ' where ortamOlcumID = ' + TcxButtonEditKadir(FindComponent('id')).EditValue +
                       '  and Bolum = ' + datalar.OrtamOlcum.Bolum + ' and Olcum = ' + s + ') ' +
                       ' begin ' +
                       ' insert into Ortam_OlcumDetay (ortamOlcumID,Bolum,Olcum) ' +
                       ' values (' + TcxButtonEditKadir(FindComponent('id')).EditValue + ',' +
                                    datalar.OrtamOlcum.Bolum + ',' +
                                    s + ')' +
                       ' end';
                datalar.QueryExec(sql);
              end;



          end;
          faturaDetay;
    end;

    2 : begin
          id := OrtamOlcumGrid.Dataset.FieldByName('detayID').AsString;
          datalar.QueryExec('delete from Ortam_OlcumDetay where id = ' + QuotedStr(id));
          faturaDetay;
    end;


  end;


end;


procedure TfrmSirketOrtamOlcum.FormCreate(Sender: TObject);
var
  Faturalar : TListeAc;
  sirketlerx,subeler ,Onay,IGU : TcxImageComboKadir;
  FaturaTarihi : TcxDateEditKadir;
  where , sube : string;
begin
  inherited;


  cxPanel.Visible := True;
  Menu := PopupMenu1;
  indexFieldName := 'id';
  TableName := 'Ortam_Olcum';
 // TopPanel.Visible := true;

  if datalar.UserGroup = '1'
  then
    where := ''
  else
  if datalar.UserGroup = '10'
  then
    where := ' sirketKod = ' + QuotedStr(datalar.sirketKodu)
  else
    where := ' IGU = ' + QuotedStr(datalar.IGU) + ' or Doktor = ' + QuotedStr(datalar.doktorKodu);

  Faturalar := ListeAcCreate('SirketOrtamOlcumView','id,sirketKod,sirketAdi,Tarih',
                       'ID,ÞirketKodu,ÞirketAdý,Tarihi',
                       '40,60,250,80','ID','Ortam Ölçümleri',where,4,True);

  setDataStringB(self,'id','ID',Kolon1,'trh',50,Faturalar,True,nil,'','',True,True,-100);
  TcxButtonEditKadir(FindComponent('id')).Identity := True;

  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,FaturaTarihi,'Tarih','Ölçüm Tarihi',Kolon1,'trh',80);


  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'SIRKETLER_TNM_view';
  sirketlerx.ValueField := 'SirketKod';
  sirketlerx.DisplayField := 'Tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Filter := datalar.sirketlerUserFilter;
  setDataStringKontrol(self,sirketlerx,'SirketKod','Þirket',Kolon1,'trh',230,0,alNone,'');
  TcxImageComboKadir(FindComponent('SirketKod')).Properties.OnEditValueChanged := SirketlerPropertiesChange;

  sube := ' and IGU = ' + QuotedStr(datalar.IGU) + ' or subedoktor = ' + QuotedStr(datalar.doktorKodu);


  Subeler := TcxImageComboKadir.Create(self);
  Subeler.Conn := Datalar.ADOConnection2;
  Subeler.TableName := 'SIRKET_SUBE_TNM';
  Subeler.ValueField := 'subeKod';
  Subeler.DisplayField := 'subeTanim';
  Subeler.Filter := ' SirketKod = ' + QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue)) + sube + ' and (Pasif = 0 or Pasif is Null)';
  setDataStringKontrol(self,Subeler,'SubeKod','Þube',Kolon1,'trh',80,0,alNone,'');

  IGU := TcxImageComboKadir.Create(self);
  IGU.Conn := Datalar.ADOConnection2;
  IGU.TableName := 'IGU';
  IGU.ValueField := 'kod';
  IGU.DisplayField := 'Tanimi';
  IGU.BosOlamaz := False;
  IGU.Filter := ' Durum = ''Aktif''';
  setDataStringKontrol(self,IGU,'IGU','Ýþ Güvenlik Uzm',Kolon1,'trh',100,0,alNone,'');

  IGU := TcxImageComboKadir.Create(self);
  IGU.Conn := Datalar.ADOConnection2;
  IGU.TableName := 'DoktorlarT';
  IGU.ValueField := 'kod';
  IGU.DisplayField := 'Tanimi';
  IGU.BosOlamaz := False;
  IGU.Filter := ' Durum = ''Aktif''';
  setDataStringKontrol(self,IGU,'doktor','Ýþyeri Hekimi',Kolon1,'trh',100,0,alNone,'');

  addButton(self,nil,'btnOlcum','','Ölçüm Kriteri Ekle',Kolon1,'trh',100,ButtonClick,1);
  addButton(self,nil,'btnOlcumSil','','Ölçüm Kriteri Kaldýr',Kolon1,'trh',100,ButtonClick,2);
//  setDataString(self,'hazirlayan','Hazýrlayan',Kolon1,'trh',80,false,'',True);
 // setDataString(self,'isveren','Isveren',Kolon1,'trh',120,false,'',False);

(*
  Onay := TcxImageComboKadir.Create(self);
  Onay.Conn := nil;
  Onay.ItemList := '1;Evet,0;Hayýr';
  Onay.Filter := '';
  setDataStringKontrol(self,Onay,'Onay','Onay',kolon4,'trh',50);
  OrtakEventAta(Onay);
  *)


(*
  try
     TcxImageComboBoxProperties(RDSSatirlarBolum.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('RiskBolum')).Properties).Items;
     TcxImageComboBoxProperties(RDSSatirlarTehlikeKaynagi.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('TehlikeKaynak')).Properties).Items;
     RDSSatirlarTehlike.Properties.OnButtonClick := PropertiesButtonClick;
  finally
  end;
*)



//  setDataStringBLabel(self,'bosSatir',kolon1,'',1000,'Risk Kaynaklarý');
  setDataStringKontrol(self,OrtamOlcumGrid,'OrtamOlcumGrid','',Kolon1,'',1,1,alClient);


  OrtamOlcumGrid.Dataset.Connection := datalar.ADOConnection2;


  OrtamOlcumGrid.Dataset.OnNewRecord := NewRecord;
  OrtamOlcumGrid.Dataset.AfterPost := AfterPost;
  OrtamOlcumGrid.Dataset.BeforePost := BeforePost;
  OrtamOlcumGrid.Dataset.AfterScroll := AfterScroll;
  OrtamOlcumGrid.Dataset.BeforeEdit := BeforeEdit;
  OrtamOlcumGrid.Dataset.BeforeDelete := BeforeDelete;



  kolon2.Visible := false;
  kolon3.Visible := false;
  kolon4.Visible := false;


  //GridFaturalar.DataController.DataSource := DataSource;
  SayfaCaption('','','','','');
  Disabled(self,True);
end;

procedure TfrmSirketOrtamOlcum.GozlemYazdir(const GozlemID: integer);
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

procedure TfrmSirketOrtamOlcum.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

