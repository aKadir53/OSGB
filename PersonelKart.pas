unit PersonelKart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,pngImage,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,
  kadirType,KadirLabel,Kadir,Data_Modul,strUtils,
  GirisUnit, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,jpeg,
  dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, cxRadioGroup, cxDropDownEdit,
  cxCalendar, cxImageComboBox, cxPCdxBarPopupMenu, cxPC, cxCheckGroup, cxImage,
  cxGridBandedTableView, cxGridDBBandedTableView, cxSplitter, cxCheckBox,
  cxDBLookupComboBox, cxCurrencyEdit, cxVGrid, cxDBVGrid, cxInplaceContainer,
  cxLabel, Vcl.Buttons, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, Vcl.ExtCtrls,
  Vcl.ComCtrls, dxLayoutContainer, dxLayoutControl, cxMemo,GetFormClass,
  dxSkinsdxStatusBarPainter, dxStatusBar, cxCheckListBox, dxSkinBlack,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, Vcl.ActnList, acPNG;



type
  TfrmPersonelKart = class(TGirisForm)
    CINSIYETI: TcxImageComboKadir;
    MEDENI: TcxImageComboKadir;
    DURUM: TcxImageComboKadir;
    VatandasTip: TcxImageComboKadir;
    seansGunleri: TcxCheckGroup;
    DOGUMTARIHI: TcxDateEditKadir;
    PopupMenu1: TPopupMenu;
    MenucxYeni: TMenuItem;
    MenucxKaydet: TMenuItem;
    MenucxIptal: TMenuItem;
    N1: TMenuItem;
    Kapat1: TMenuItem;
    cxFotoPanel: TcxGroupBox;
    Foto: TcxImage;
    cxFotoEkleButton: TcxButton;
    dosyaNo: TcxButtonEditKadir;
    N2: TMenuItem;
    cxpnlHastaGelisler: TcxGroupBox;
    cxGridGelis: TcxGrid;
    DataSource1: TDataSource;
    cxGridGelisLevel1: TcxGridLevel;
    cxGridGelisler: TcxGridDBBandedTableView;
    cxGridGelislerdosyaNo: TcxGridDBBandedColumn;
    cxGridGelislergelisNo: TcxGridDBBandedColumn;
    cxGridGelislerBHDAT: TcxGridDBBandedColumn;
    cxGridGelislerdoktor: TcxGridDBBandedColumn;
    cxGridGelislerSERVIS: TcxGridDBBandedColumn;
    cxGridGelislerTEDAVITURU: TcxGridDBBandedColumn;
    cxGridGelislerKullanici: TcxGridDBBandedColumn;
    cxGridGelislerTakpNo: TcxGridDBBandedColumn;
    cxGridGelislerBasvuruNo: TcxGridDBBandedColumn;
    cxGridGelislerilkTakipNo: TcxGridDBBandedColumn;
    cxGridGelislerSIRANO: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    ADO_Gelisler: TADOQuery;
    lemler1: TMenuItem;
    KANGRUBU: TcxImageComboBox;
    txtAktif: TcxImageComboBox;
    ListeAc3: TListeAc;
    txtSeansSikayet: TcxCheckGroup;
    AKart1: TMenuItem;
    Epikriz1: TMenuItem;
    PopupMenu2: TPopupMenu;
    GeliA1: TMenuItem;
    SmsGnder1: TMenuItem;
    HastaRaporlar1: TMenuItem;
    G1: TMenuItem;
    T1: TMenuItem;
    R1: TMenuItem;
    N3: TMenuItem;
    G2: TMenuItem;
    T2: TMenuItem;
    IseGirisMuayene: TcxGridKadir;
    GridList: TcxGridDBBandedTableView;
    GridListMuayeneSoru: TcxGridDBBandedColumn;
    GridListGrupKod: TcxGridDBBandedColumn;
    GridListaltGrupKod: TcxGridDBBandedColumn;
    GridListGrupTanimi: TcxGridDBBandedColumn;
    GridListaltGrupTanimi: TcxGridDBBandedColumn;
    GridListvalue: TcxGridDBBandedColumn;
    GridListtarih: TcxGridDBBandedColumn;
    GridListvalueObjevalues: TcxGridDBBandedColumn;
    GridListvalueTip: TcxGridDBBandedColumn;
    GridListDesc: TcxGridDBBandedColumn;
    IseGirisMuayeneLevel1: TcxGridLevel;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle3: TcxStyle;
    A1: TMenuItem;
    cxGridGelislerPROTOKOLNO: TcxGridDBBandedColumn;
    GridPersonelEgitim: TcxGridKadir;
    GridEgitim: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    GridEgitimColumn1: TcxGridDBBandedColumn;
    GridEgitimColumn2: TcxGridDBBandedColumn;
    GridEgitimColumn3: TcxGridDBBandedColumn;
    GridEgitimColumn4: TcxGridDBBandedColumn;
    GridEgitimColumn5: TcxGridDBBandedColumn;
    Meslekler: TListeAc;
    MESLEK: TcxButtonEditKadir;
    ActionList1: TActionList;
    PersonelKaydet: TAction;
    YeniMuayene: TAction;
    Splitter_Muayene: TSplitter;
    GridPersonelIseBaslamaEgitim: TcxGridKadir;
    GridIseBaslamaEgitim: TcxGridDBBandedTableView;
    GridPersonelIseBaslamaEgitim_egitimKodu: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    GridPersonelBelgeler: TcxGridKadir;
    GridPersonelBelgelerBelge: TcxGridDBBandedTableView;
    BelgeTip: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridLevel3: TcxGridLevel;
    GridPersonelBelgelerBelgeColumn1: TcxGridDBBandedColumn;
    GridPersonelBelgelerBelgeColumn2: TcxGridDBBandedColumn;
    GridPersonelBelgelerBelgeColumn3: TcxGridDBBandedColumn;
    TCKIMLIKNO: TcxButtonEditKadir;
    Panel1: TPanel;
    cxFotoSilButton: TcxButton;
    iskazasi: TcxImage;
    GridPersonelLevel: TcxGridKadir;
    GridDegerlendirme: TcxGridDBBandedTableView;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridLevel4: TcxGridLevel;
    Tip: TcxGridDBBandedColumn;
    CalismaAlani: TcxCheckGroup;
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxButtonCClick(Sender: TObject);
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTextEditBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure seansGunleriPropertiesEditValueChanged(Sender: TObject);
    procedure FotoEkle(islem : string);
    procedure FotoNewRecord;
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    procedure TakipAl;
    function TakipSil(TakipNo : string) : string;
    procedure Gelisler(kartNo : string);
    procedure cxGridGelislerDblClick(Sender: TObject);
    procedure txtTipPropertiesChange(Sender: TObject);
    procedure txtAktifPropertiesChange(Sender: TObject);
    procedure Combo;
    procedure GelisAc;
    procedure GelisSil;
    procedure GelisDuzenle;
    procedure HastaRaporlari;
    procedure txtBobrekHastaligiPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure PropertiesEditValueChanged(Sender: TObject);override;
    procedure cxGridGelislerFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure DOGUMTARIHIPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure ADO_WebServisErisimAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure SirketlerPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonClick(Sender: TObject);
    procedure BeforePost(DataSet: TDataSet);
    procedure AfterPost(DataSet: TDataSet);
    procedure GridPersonelBelgelerBelgeNavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure GridDegerlendirmeNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);


  protected
    procedure TopluPasifYap(const bPasif: boolean);
    { Private declarations }
  public
    { Public declarations }
    procedure OrtakEventAta(Sender : TObject);overload;
    procedure OrtakEventAta(Sender : TcxImageComboKadir);overload;

    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'PersonelKart';
      formGenislik = 750;
      formYukseklik = 580;
      sqlInsert = 'exec sp_YeniHastaKarti ';//,%s,%s,%s,%s,%s,%s';
      sqlUpdate = 'exec sp_GuncelHastaKarti ';
      sqlDelete = 'delete from HastaKart where dosyaNo = %s';
      FotoTable = 'select * from PersonelFoto where dosyaNo = %s';

var
  frmPersonelKart: TfrmPersonelKart;
  ord : integer;
  _gez : integer;
  aktifKart : integer = 0;
  kart : sqlType;
  SirketDurumDegisti : integer;

implementation
uses AnaUnit, HastaAsiKArti,SMS,Anamnez, TransUtils,Web_Navigate;
{$R *.dfm}



procedure TfrmPersonelKart.AfterPost(DataSet: TDataSet);
begin

(*
  if GridPersonelBelgelerBelge.DataController.DataSet.FieldByName('BelgeTipi').AsInteger = 1
  then begin
    TcxImageComboBox(FindComponent('ISG_SertifikaTarihi')).EditValue :=
    GridPersonelBelgelerBelge.DataController.DataSet.FieldByName('BelgeTarihi').Value;
    TcxImageComboBox(FindComponent('ISG_GecerlilikTarihi')).EditValue :=
    GridPersonelBelgelerBelge.DataController.DataSet.FieldByName('GecerlilikTarihi').Value;

  end;
  *)


end;


procedure TfrmPersonelKart.BeforePost(DataSet: TDataSet);
begin

  if Dataset = GridDegerlendirme.DataController.DataSet
  Then Begin
    GridDegerlendirme.DataController.DataSet.FieldByName('dosyaNo').AsString := dosyaNo.Text;
    GridDegerlendirme.DataController.DataSet.FieldByName('Degerlendiren').AsString := datalar.username;

  End
  else
  if Dataset = GridIseBaslamaEgitim.DataController.DataSet
  then
    GridIseBaslamaEgitim.DataController.DataSet.FieldByName('dosyaNo').AsString := dosyaNo.Text
  else
  begin
    GridPersonelBelgeler.Dataset.FieldByName('personelKodu').AsString := dosyaNo.Text;
    GridPersonelBelgeler.Dataset.FieldByName('sirketKodu').AsString := TcxImageComboKadir(FindComponent('SirketKod')).EditValue;


    if (GridPersonelBelgeler.DataSet.FieldByName('durum').AsInteger = 1) and
       (GridPersonelBelgeler.DataSet.FieldByName('BelgeTipi').AsInteger = 1)
    then begin
      TcxImageComboBox(FindComponent('ISG_SertifikaTarihi')).EditValue :=
      GridPersonelBelgeler.DataSet.FieldByName('BelgeTarihi').Value;
      TcxImageComboBox(FindComponent('ISG_GecerlilikTarihi')).EditValue :=
      GridPersonelBelgeler.DataSet.FieldByName('GecerlilikTarihi').Value;
    end;

    if (GridPersonelBelgeler.Dataset.FieldByName('durum').AsInteger = 1) and
       (GridPersonelBelgeler.Dataset.FieldByName('BelgeTipi').AsInteger = 2)
    then begin
      TcxImageComboBox(FindComponent('MYK_BelgeTarihi')).EditValue :=
      GridPersonelBelgeler.Dataset.FieldByName('BelgeTarihi').Value;
      TcxImageComboBox(FindComponent('MYK_GecerlilikTarihi')).EditValue :=
      GridPersonelBelgeler.Dataset.FieldByName('GecerlilikTarihi').Value;
    end;


    if (GridPersonelBelgeler.DataSet.FieldByName('durum').AsInteger = 1) and
       (GridPersonelBelgeler.DataSet.FieldByName('BelgeTipi').AsInteger = 3)
    then begin
      TcxImageComboBox(FindComponent('SaglikRaporuTarihi')).EditValue :=
      GridPersonelBelgeler.DataSet.FieldByName('BelgeTarihi').Value;
      TcxImageComboBox(FindComponent('SaglikRaporuBitisTarihi')).EditValue :=
      GridPersonelBelgeler.DataSet.FieldByName('GecerlilikTarihi').Value;
    end;

  end;




end;

procedure TfrmPersonelKart.ButtonClick(Sender: TObject);
var
  F : TGirisForm;
  GirisRecord : TGirisFormRecord;
  TopluDataset : TDataSetKadir;
  Ado : TADOQuery;
  sql,dosyaTip : string;
  dosya : TOpenDialog;
  Egtm : TcxImageComboKadir;
begin
  case TcxButtonKadir(sender).Tag of
  TagfrmWebNavigate
        : begin
            GirisRecord.F_TC_ := TcxTextEdit(FindComponent('TCKIMLIKNO')).Text;
            GirisRecord.F_HastaAdSoyad_ := TcxTextEdit(FindComponent('HASTAADI')).Text;

            F := FormINIT(TagfrmWebNavigate,GirisRecord);

            TfrmWebNavigate(F).yukle('',
                                     TcxTextEdit(FindComponent('DOGUMTARIHI')).Text,
                                     'https://portal.myk.gov.tr/index.php?option=com_belgelendirme&view=belgelendirme_islemleri&layout=aday_bilgi_sorgu',
                                     TcxTextEdit(FindComponent('TCKIMLIKNO')).Text,
                                     TcxTextEdit(FindComponent('HASTAADI')).Text,
                                     TcxTextEdit(FindComponent('HASTASOYADI')).Text);
            if F <> nil then F.ShowModal;
          end;
    500 : begin
              if MrYes = ShowMessageSkin('Dokuman Eklenecek , Emin misiniz?','','','msg')
              then begin
                dosya := TOpenDialog.Create(nil);
                try
                  if not dosya.Execute then Exit;
                  dosyaTip := ExtractFileExt(dosya.FileName);
                  dosyaTip := StringReplace(dosyaTip,'.','',[rfReplaceAll]);

                  if (dosyaTip = 'PDF') or (dosyaTip = 'pdf')
                  then begin
                      DokumanYukle(GridPersonelBelgeler.Dataset,'Dokuman',dosya.FileName);
                      GridPersonelBelgeler.Dataset.Requery();
                  end else ShowMessageSkin('D�k�man PDF olmal�d�r','','','info');

                finally
                  dosya.Free;
                end;
              end;
          end;
    501 : begin
            Cursor := crSQLWait;
            try
              DokumanAc(GridPersonelBelgeler.Dataset,'Dokuman',GridPersonelBelgeler.Dataset.FieldByName('id').AsString+'dokumanTemp');
            finally
              Cursor := crDefault;
            end;
          end;
    502 : begin
              GridPersonelBelgeler.Dataset.Connection := datalar.ADOConnection2;
              GridPersonelBelgeler.Dataset.SQL.Text := 'select * from SCH_Pesonel_AlinanBelgeler ' +
                                                       ' where PersonelKodu = ' + QuotedStr(dosyaNo.Text) +
                                                       ' and sirketKodu = ' + QuotedStr(TcxImageComboBox(FindComponent('sirketKod')).EditValue) +
                                                       ' order by BelgeTipi,BelgeTarihi desc';
              GridPersonelBelgeler.Dataset.Open;
              GridPersonelBelgeler.Dataset.BeforePost := BeforePost;
              GridPersonelBelgeler.Dataset.AfterPost := AfterPost;

              try
               Egtm := TcxImageComboKadir.Create(nil);
               Egtm.Conn := datalar.ADOConnection2;
               Egtm.Visible := False;
               Egtm.Tag := -1;
               Egtm.TableName := 'Personel_BelgeTipleri';
               Egtm.ValueField := 'Kod';
               Egtm.DisplayField := 'Tanimi';
               Egtm.Filter := '';
               TcxImageComboBoxProperties(BelgeTip.Properties).Items :=
               TcxImageComboBoxProperties(Egtm.Properties).Items;
              finally
               // Egtm.Free;
              end;
          end;

    600 : begin
              if MrYes = ShowMessageSkin('Dokuman Eklenecek , Emin misiniz?','','','msg')
              then begin
                dosya := TOpenDialog.Create(nil);
                try
                  if not dosya.Execute then Exit;
                  dosyaTip := ExtractFileExt(dosya.FileName);
                  dosyaTip := StringReplace(dosyaTip,'.','',[rfReplaceAll]);

                  if (dosyaTip = 'PDF') or (dosyaTip = 'pdf')
                  then begin
                      DokumanYukle(GridPersonelLevel.Dataset,'belge',dosya.FileName);
                      GridPersonelBelgeler.Dataset.Requery();
                  end else ShowMessageSkin('D�k�man PDF olmal�d�r','','','info');

                finally
                  dosya.Free;
                end;
              end;
          end;
    601 : begin
            Cursor := crSQLWait;
            try
              DokumanAc(GridPersonelLevel.Dataset,'belge',GridPersonelLevel.Dataset.FieldByName('id').AsString+'dokumanTemp');
            finally
              Cursor := crDefault;
            end;
          end;
    602 : begin
              GridPersonelLevel.Dataset.Connection := datalar.ADOConnection2;
              GridPersonelLevel.Dataset.SQL.Text := 'select * from Personel_Degerlendirme ' +
                                                       ' where dosyaNo = ' + QuotedStr(dosyaNo.Text) +
                                                       ' order by Tarih desc';
              GridPersonelLevel.Dataset.Open;
              GridPersonelLevel.Dataset.BeforePost := BeforePost;
              GridPersonelLevel.Dataset.AfterPost := AfterPost;
              try
               Egtm := TcxImageComboKadir.Create(nil);
               Egtm.Conn := datalar.ADOConnection2;
               Egtm.Visible := False;
               Egtm.Tag := -1;
               Egtm.TableName := 'Personel_Degerlendirme_tipleri';
               Egtm.ValueField := 'Kod';
               Egtm.DisplayField := 'Tanimi';
               Egtm.Filter := '';
               TcxImageComboBoxProperties(Tip.Properties).Items :=
               TcxImageComboBoxProperties(Egtm.Properties).Items;
              finally
               // Egtm.Free;
              end;
          end;

    550 : TopluPasifYap (True);
    555 : TopluPasifYap (False);

    551 : begin
          //  ado := TADOQuery.Create(nil);
            try
           //  ado.Connection := datalar.ADOConnection2;

              if datalar.ADO_FOTO.FieldByName('foto').Value = Null
              then begin
                ShowMessageSkin('Personel Fotosu Y�klenmemi�','Kart Bas�m� Yap�lamaz','','info');
                exit;
              end;

              sqlRun.Edit;
              sqlRun.FieldByName('PkartBasimTarihi').AsDateTime := date;
              sqlRun.FieldByName('PkartBitisTarihi').AsDateTime := date + 365;
              sqlRun.FieldByName('PkartBasanUser').AsString := datalar.username;
              sqlRun.Post;
              sqlRun.Requery();
              TcxDateEdit(FindComponent('PkartBitisTarihi')).EditValue := date + 365;

              TopluDataset.Dataset0 := sqlRun;
              TopluDataset.Dataset1 := datalar.ADO_FOTO;
              TopluDataset.Dataset2 := datalar.QuerySelect('exec sp_frmPersonelEgitim 0, ' + QuotedStr(TcxTextEdit(FindComponent('dosyaNo')).EditValue)  + ',2');

              PrintYap('PKB','Personel Kart','',TopluDataset,kadirType.pTNone);

              sql := 'insert into Sirket_Personel_Durum_Gecmisi(sirketKod,dosyaNo,durum,aciklama,kullanici)' +
                                'values( ' + QuotedStr(TcxButtonEditKadir(FindComponent('SirketKod')).EditValue) + ','
                                           + QuotedStr(TcxTextEdit(FindComponent('TCKIMLIKNO')).EditValue) + ','
                                           + varTostr(TcxImageComboBox(FindComponent('Aktif')).EditValue) + ','
                                           + QuotedStr('Personel Kart Bas�m�') +  ','
                                           + QuotedStr(datalar.username) + ')';
              datalar.QueryExec(sql);


            finally
            // ado.free;
            end;
          end;
    -50 : begin
            ado := TADOQuery.Create(nil);
            try
              ado.Connection := datalar.ADOConnection2;
              sql := 'sp_frmPersonelEgitim @EgitimId = ' + GridPersonelEgitim.Dataset.FieldByName('egitimID').AsString +
                     ',@PersonelDosyaNo = ' + QuotedStr(dosyaNo.Text);
              datalar.QuerySelect(ado, sql);
              TopluDataset.Dataset0 := ado;
          //    TopluDataset.Dataset1 := datalar.QuerySelect('select * from EgitimAltDetay where egitimId = '  + GridPersonelEgitim.Dataset.FieldByName('egitimID').AsString);

              PrintYap('005','Personel E�itimi Sertifikas�','',TopluDataset,kadirType.pTNone);
            finally
             ado.free;
            end;
         end;
-51,-52 : begin




          end
         else
         begin
            F := FormINIT(TcxButtonKadir(sender).Tag,GirisRecord,ikHayir,'');
            if F <> nil then F.ShowModal;
            TcxImageComboKadir(FindComponent('bolum')).Filter := '';
            TcxImageComboKadir(FindComponent('birim')).Filter := '';
         end;
  end;






end;

procedure TfrmPersonelKart.SirketlerPropertiesChange(Sender: TObject);
var
  sube : string;
begin

  if not IsNull (datalar.doktorKodu)
  then
     sube := ' and subeDoktor = ' + QuotedStr(datalar.doktorKodu)
  else
  if not IsNull (datalar.IGU) then
     sube := ' and IGU = ' + QuotedStr(datalar.IGU)
  else
  if not IsNull (datalar.DSPers) then
     sube := ' and DigerSaglikPers = ' + QuotedStr(datalar.DSPers)
  else
    sube := '';

  TcxImageComboKadir(FindComponent('Sube')).TableName := 'SIRKET_SUBE_TNM';
  TcxImageComboKadir(FindComponent('Sube')).Filter := ' SirketKod = ' +
  QuotedStr(varToStr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue)) + sube;// + ' and (Pasif = 0 or Pasif is Null)';


  if (TcxImageComboKadir(Sender).name = 'SirketKod') or
     (TcxImageComboKadir(Sender).name = 'sube')
  then
  begin
      TcxImageComboKadir(FindComponent('muayenePeryot')).EditValue :=
      SirketSubeTehlikeSinifi(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue),
                              vartostr(TcxImageComboKadir(FindComponent('Sube')).EditValue));
  end;



end;

procedure TfrmPersonelKart.ADO_WebServisErisimAfterScroll(DataSet: TDataSet);
var
  ValueCombo,ValueObjeValues : String;
  ValuesCombo : TStringList;
  item : TcxRadioGroupItem;
begin

  if IseGirisMuayene.Dataset.FieldByName('ValueTip').AsString = 'R'
  then begin
    ValuesCombo := TStringList.Create;
    try
      ValueObjeValues := IseGirisMuayene.Dataset.FieldByName('ValueObjeValues').AsString;
      GridListValue.PropertiesClassName := 'TcxRadioGroupProperties';
      TcxRadioGroupProperties(GridListValue.Properties).Items.Clear;
      ExtractStrings([','], [], PChar(ValueObjeValues),ValuesCombo);
      for ValueCombo in  ValuesCombo  do
      begin
        item := TcxRadioGroupProperties(GridListValue.Properties).Items.Add;
        item.Caption := ValueCombo;
        item.Value := ValueCombo;
      end;
    finally
      ValuesCombo.Free;
    end;
  end
  else
  if IseGirisMuayene.Dataset.FieldByName('ValueTip').AsString = 'B'
  then begin
       GridListValue.PropertiesClassName := 'TcxCheckBoxProperties';
       TcxCheckBoxProperties(GridListValue.Properties).ValueChecked := '1';
       TcxCheckBoxProperties(GridListValue.Properties).ValueUnchecked := '0';
       TcxCheckBoxProperties(GridListValue.Properties).ValueGrayed := '';
  end
  Else
  if IseGirisMuayene.Dataset.FieldByName('ValueTip').AsString = 'C'
  then begin
    if length(IseGirisMuayene.Dataset.FieldByName('ValueTip').AsString) = 2
    then begin
      ValuesCombo := TStringList.Create;
      try
        ValueObjeValues := IseGirisMuayene.Dataset.FieldByName('defaultValue').AsString;
        GridListDesc.Options.Editing := True;
        GridListDesc.PropertiesClassName := 'TcxComboBoxProperties';
        TcxComboBoxProperties(GridListDesc.Properties).Items.Clear;
        ExtractStrings([','], [], PChar(ValueObjeValues),ValuesCombo);
        for ValueCombo in  ValuesCombo  do
        begin
         TcxComboBoxProperties(GridListDesc.Properties).Items.Add(ValueCombo);
        end;
      finally
        ValuesCombo.Free;
      end;
    end;
    GridListDesc.Options.Editing:= True;
    ValuesCombo := TStringList.Create;
    try
      ValueObjeValues := IseGirisMuayene.Dataset.FieldByName('ValueObjeValues').AsString;
      GridListValue.PropertiesClassName := 'TcxComboBoxProperties';
      TcxComboBoxProperties(GridListValue.Properties).Items.Clear;
      ExtractStrings([','], [], PChar(ValueObjeValues),ValuesCombo);
      for ValueCombo in  ValuesCombo  do
      begin
       TcxComboBoxProperties(GridListValue.Properties).Items.Add(ValueCombo);
      end;
    finally
      ValuesCombo.Free;
    end;
  end
  else
  begin
    GridListValue.PropertiesClassName := 'TcxTextEditProperties';
    GridListDesc.Options.Editing:= True;
  end;
end;


procedure TfrmPersonelKart.HastaRaporlari;
begin
      if dosyaNo.Text = ''
     then exit;
   (*
     HastaBilgileri.TcKimlikNo := txtTcKimlikNo.Text;
     HastaBilgileri.karneNo := txtKarneNo.Text;
     HastaBilgileri.sosyalGuvenlikNo := txtSosyalGuvenlikNo.Text;
     HastaBilgileri.yakinlikKodu := copy(txtYakinlik.Text,1,4);
     HastaBilgileri.sigortaliTuru := copy(txtSigortaliTur.Text,1,1);
     HastaBilgileri.devredilenKurum := trim(copy(txtKurumTipi.Text,1,2));
     HastaBilgileri.provizyonTipi := 'N';
     HastaBilgileri.Adi := txtHastaAdi.Text + ' ' + txtSoyAdi.Text;
     HastaBilgileri.dosyaNo := txtDosyaNo.Text;
     HastaBilgileri.provizyontarihi := frmHastaKarti.gridGelisler.Cells[3,frmHastaKarti.gridGelisler.Row];
     datalar._takip_ := gridGelisler.Cells[2,gridGelisler.Row];
     *)
      if UserRight('Hasta Kart�', 'Rapor') = False
     then begin
         ShowMessageSkin('Bu ��lem ��in Yetkiniz Bulunmamaktad�r !','','','info');
         exit;
     end;




end;


procedure TfrmPersonelKart.gelisDuzenle;
var
 hata : string;
begin
    datalar.GelisDuzenleRecord.TedaviTuru := ADO_Gelisler.FieldByName('TEDAVITURUX').AsString;
    datalar.GelisDuzenleRecord.dosyaNo := dosyaNO.Text;
    datalar.GelisDuzenleRecord.gelisNo := _gelisNo_;
    datalar.GelisDuzenleRecord.TakipNo := _TakipNo_;
    datalar.GelisDuzenleRecord.BransKodu := ADO_Gelisler.FieldByName('SERVIS').AsString;
  //  datalar.GelisDuzenleRecord.TaburcuKodu := ADO_Gelisler.FieldByName('Taburcu').AsString;
    datalar.GelisDuzenleRecord.doktor := ado_gelisler.FieldByName('doktor').AsString;
    datalar.GelisDuzenleRecord.ProtokolNo := ado_gelisler.FieldByName('protokolNo').AsString;
  //  datalar.GelisDuzenleRecord.Yupass := ADO_Gelisler.FieldByName('Yupass').AsString;
    datalar.GelisDuzenleRecord.GirisTarihi :=  ado_gelisler.FieldByName('Tarih').AsDateTime;
  //  datalar.GelisDuzenleRecord.CikisTarih :=  ado_gelisler.FieldByName('CikisTarih').AsDateTime;

    if mrYes = ShowPopupForm('Geli� D�zenle',gdgelisDuzenle)
    Then Begin
       if kadir.gelisDuzenle(datalar.GelisDuzenleRecord,Hata)
       Then begin
        Gelisler(dosyaNo.Text);
        ShowMessageSkin('Geli� Bilgisi D�zenlendi','','','info');
       end
       else ShowMessageSkin(Hata,'','','info')
    End;

end;

procedure TfrmPersonelKart.gelisSil;
var
  ado : TADOQuery;
  sql : string;
  bSucc: Boolean;
begin
   if _gelisNo_ = '' then exit;


   if UserRight('Muayene ��lemleri', 'Sil') = False
   then begin
     ShowMessageSkin('Bu ��lem ��in Yetkiniz Bulunmamaktad�r !','','','info');
     exit;
   end;

   if DATALAR.UserGroup <> '2' then
   begin
     ShowMessageSkin('Bu ��lem Sadece Doktor Kullan�c� Taraf�ndan Yap�labilir','','','info');
     exit;
   end;


   ado := TADOQuery.Create(nil);
   try
     ado.Connection := datalar.ADOConnection2;
     try
       bSucc := False;
       BeginTrans (ado.Connection);
       try
         sql := 'Delete from PersoneliseGirisMuayene where Personelkodu = ' + QuotedStr (DosyaNo.Text) +
                ' and gelisNo = ' + _gelisNo_;
         datalar.QueryExec(ado, sql);
         sql := 'Delete from Gelisler where dosyaNo = ' + QuotedStr (DosyaNo.Text) +
                ' and gelisNo = ' + _gelisNo_;
         datalar.QueryExec(ado, sql);
         bSucc := True;
       finally
         if bSucc then CommitTrans(ado.Connection)
         else RollbackTrans(ado.Connection);

       end;

       Gelisler(DosyaNo.Text);
     except on e : exception do
       begin
        ShowMessageSkin(e.Message,'','','info');
        exit;
       end;
     end;
   finally
     ado.Free;
   end;
end;


procedure TfrmPersonelKart.GridDegerlendirmeNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);

  procedure datawrite;
  begin
 //   GridPersonelBelgeler.DataSet.FieldByName('id').Value := datalar.PersonelBelge.id;
    GridPersonelLevel.DataSet.FieldByName('dosyaNo').Value := datalar.PersonelLevel.PersonelKodu;
    GridPersonelLevel.DataSet.FieldByName('Tarih').Value := datalar.PersonelLevel.Tarih;
    GridPersonelLevel.DataSet.FieldByName('Aciklama').Value := datalar.PersonelLevel.Aciklama;
    GridPersonelLevel.DataSet.FieldByName('Degerlendiren').Value := datalar.PersonelLevel.Degerlendiren;
    GridPersonelLevel.DataSet.FieldByName('personelLevel').AsString := datalar.PersonelLevel.personelLevel;
    GridPersonelLevel.DataSet.FieldByName('Tip').Value := datalar.PersonelLevel.Tip;
    GridPersonelLevel.DataSet.FieldByName('Durum').Value := datalar.PersonelLevel.Durum;
  end;

  procedure dataRead;
  begin
    datalar.PersonelLevel.id := GridPersonelLevel.DataSet.FieldByName('id').Value;
    datalar.PersonelLevel.PersonelKodu := GridPersonelLevel.DataSet.FieldByName('dosyaNo').Value;
    datalar.PersonelLevel.Aciklama := GridPersonelLevel.DataSet.FieldByName('Aciklama').Value;
    datalar.PersonelLevel.Tarih := GridPersonelLevel.DataSet.FieldByName('Tarih').Value;
    datalar.PersonelLevel.personelLevel := GridPersonelLevel.DataSet.FieldByName('personelLevel').Asstring;
    datalar.PersonelLevel.Degerlendiren := GridPersonelLevel.DataSet.FieldByName('Degerlendiren').AsString;
    datalar.PersonelLevel.Tip := GridPersonelLevel.DataSet.FieldByName('Tip').Value;
    datalar.PersonelLevel.Durum := GridPersonelLevel.DataSet.FieldByName('Durum').Value;
  end;

var
   Dataset : Tdataset;
begin
  inherited;

 case AButtonIndex of
   6 ,9: begin
            datalar.PersonelLevel.id := Null;
            datalar.PersonelLevel.PersonelKodu := vartostr(TcxTextEdit(FindComponent('DosyaNo')).EditingValue);
            datalar.PersonelLevel.SirketKodu := vartostr(TcxTextEdit(FindComponent('sirketKod')).EditingValue);
            datalar.PersonelLevel.Aciklama := '';
            datalar.PersonelLevel.Tarih := Null;
            datalar.PersonelLevel.personelLevel := '';
            datalar.PersonelLevel.Degerlendiren := '';
        end;
   end;


  case AButtonIndex of
   6 : begin
        if mrYes = ShowPopupForm('Personel De�erlendirme Ekle',yeniPersonelLevel)
        then begin
         try
           GridPersonelLevel.DataSet.Append;
           datawrite;
           GridPersonelLevel.DataSet.post;
           GridPersonelLevel.DataSet.Requery();
           ADone := True;
        except on e : Exception do
          begin
           ShowMessageSkin(e.Message,'','','info');
           GridPersonelLevel.DataSet.Cancel;
          end;
        end;
        end;
    end;

   9 : begin
          dataRead;
          if mrYes = ShowPopupForm('D�zenle',PersonelLevelDuzenle)
          then begin
           try
            GridPersonelLevel.DataSet.Edit;
            datawrite;
            GridPersonelLevel.DataSet.Post;
            GridPersonelLevel.DataSet.Requery();
           except on e : Exception do
            begin
             ShowMessageSkin(e.Message,'','','info');
             GridPersonelLevel.DataSet.Cancel;
            end;
           end;
          end;
       end;

  end;

end;


procedure TfrmPersonelKart.GridPersonelBelgelerBelgeNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);

  procedure datawrite;
  begin
 //   GridPersonelBelgeler.DataSet.FieldByName('id').Value := datalar.PersonelBelge.id;
    GridPersonelBelgeler.DataSet.FieldByName('BelgeTipi').Value := datalar.PersonelBelge.BelgeTip;
    GridPersonelBelgeler.DataSet.FieldByName('BelgeTarihi').Value := datalar.PersonelBelge.BelgeTarihi;
    GridPersonelBelgeler.DataSet.FieldByName('GecerlilikTarihi').Value := datalar.PersonelBelge.GecerlilikTarihi;
    GridPersonelBelgeler.DataSet.FieldByName('Durum').Value := datalar.PersonelBelge.Durum;
    GridPersonelBelgeler.DataSet.FieldByName('AlinanKurum').Value := datalar.PersonelBelge.AlinanKurum;
  end;

  procedure dataRead;
  begin
    datalar.PersonelBelge.id := GridPersonelBelgeler.DataSet.FieldByName('id').Value;
    datalar.PersonelBelge.BelgeTip := GridPersonelBelgeler.DataSet.FieldByName('BelgeTipi').Value;
    datalar.PersonelBelge.BelgeTarihi := GridPersonelBelgeler.DataSet.FieldByName('BelgeTarihi').Value;
    datalar.PersonelBelge.GecerlilikTarihi := GridPersonelBelgeler.DataSet.FieldByName('GecerlilikTarihi').Value;
    datalar.PersonelBelge.Durum := GridPersonelBelgeler.DataSet.FieldByName('Durum').Value;
    datalar.PersonelBelge.AlinanKurum := GridPersonelBelgeler.DataSet.FieldByName('AlinanKurum').AsString;
  end;

var
   Dataset : Tdataset;
begin
  inherited;

 case AButtonIndex of
   6 ,9: begin
            datalar.PersonelBelge.id := Null;
            datalar.PersonelBelge.PersonelKodu := vartostr(TcxTextEdit(FindComponent('DosyaNo')).EditingValue);
            datalar.PersonelBelge.SirketKodu := vartostr(TcxTextEdit(FindComponent('sirketKod')).EditingValue);
            datalar.PersonelBelge.BelgeTip := Null;
            datalar.PersonelBelge.BelgeTarihi := Null;
            datalar.PersonelBelge.GecerlilikTarihi := Null;
            datalar.PersonelBelge.Durum := Null;
            datalar.PersonelBelge.AlinanKurum := '';
        end;
   end;


  case AButtonIndex of
   6 : begin
        if mrYes = ShowPopupForm('Personel Belgesi Ekle',yeniPersonelBelge)
        then begin
         try
           GridPersonelBelgeler.DataSet.Append;
           datawrite;
           GridPersonelBelgeler.DataSet.post;
           GridPersonelBelgeler.DataSet.Requery();
           ADone := True;
        except on e : Exception do
          begin
           ShowMessageSkin(e.Message,'','','info');
           GridPersonelBelgeler.DataSet.Cancel;
          end;
        end;
        end;
    end;

   9 : begin
          dataRead;
          if mrYes = ShowPopupForm('D�zenle',PersonelBelgeDuzenle)
          then begin
           try
            GridPersonelBelgeler.DataSet.Edit;
            datawrite;
            GridPersonelBelgeler.DataSet.Post;
            GridPersonelBelgeler.DataSet.Requery();
           except on e : Exception do
            begin
             ShowMessageSkin(e.Message,'','','info');
             GridPersonelBelgeler.DataSet.Cancel;
            end;
           end;
          end;
       end;

  end;

end;

procedure TfrmPersonelKart.gelisAc;
var
  sql , Gelis , error , TedaviTuru ,protokolNo : string;
  _tarih_ : Tdate;
begin

   if dosyaNo.Text = ''
   then begin
     ShowMessageSkin('Ekranda g�r�nt�lenen bir personel kart� yokken muayene kart� a�amazs�n�z !', '', '', 'info');
     exit;
   end;

   if TcxCustomEdit(FindComponent('Aktif')).EditValue = '0' then
   begin
     ShowMessageSkin('Pasif durumdaki personele muayene kart� a�amazs�n�z !', '', '', 'info');
     exit;
   end;


   if UserRight('Muayene ��lemleri', 'Yeni Muayene') = False
   then begin
       ShowMessageSkin('Bu ��lem ��in Yetkiniz Bulunmamaktad�r !','','','info');
       exit;
   end;



   protokolNo := EnsonSeansProtokolNo(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue),
                                      vartostr(TcxImageComboKadir(FindComponent('Sube')).EditValue));
   datalar.GelisDuzenleRecord.ProtokolNo := protokolNo;
   datalar.GelisDuzenleRecord.ProtokolNoGuncelle := False;
    if mrYes = ShowPopupForm('Geli� A�',gdgelisAc)
    Then Begin
        _Tarih_ := datalar.GelisDuzenleRecord.GirisTarihi;
        TedaviTuru := datalar.GelisDuzenleRecord.TedaviTuru;

    End
    else
     exit;

   if (protokolNo <> datalar.GelisDuzenleRecord.ProtokolNo)
     and (datalar.GelisDuzenleRecord.ProtokolNoGuncelle)
     and (not IsNull (datalar.GelisDuzenleRecord.ProtokolNo)) then
   begin
     sql := 'Update sIrket_Sube_TNM '+
     'SET MuayeneProtokolNo = ' + SQLValue (datalar.GelisDuzenleRecord.ProtokolNo) + ' '+
     'where sirketKod = ' + QuotedStr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue) + ''+
     ' and SubeKod = ' + QuotedStr(TcxImageComboKadir(FindComponent('Sube')).EditValue);
     datalar.QueryExec(sql);
     protokolNo := datalar.GelisDuzenleRecord.ProtokolNo;
   end;


   sql := 'exec sp_GelisKaydet ' +
          '@dosyaNo = ' + #39 + dosyaNo.Text + #39 + ',' +
          '@gelisNo = 0 ,' +
          '@BHDAT = ' + #39 + tarihal(_Tarih_) + #39 + ',' +
          '@doktor = ' + #39 + DATALAR.doktorKodu + #39 + ',' +
          '@SERVIS = ' + #39 + '' + #39 + ',' +
          '@TEDAVITURU = ' + #39 + TedaviTuru + #39 + ',' +
          '@Kullanici = ' + #39 + datalar.username + #39 + ',' +
          '@sirketKod = ' + QuotedStr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue) + ',' +
          '@PN = ' + protokolNo;


     datalar.QuerySelect(datalar.ADO_SQL,sql);

     gelis := datalar.ADO_SQL.fieldbyname('Gelis').AsString;
     error := datalar.ADO_SQL.fieldbyname('error').AsString;

     if gelis = '-1'
     then begin
        ShowMessageSkin(error,'','','info');
        exit;
     end;

     Gelisler(dosyaNo.Text);


end;




procedure TfrmPersonelKart.OrtakEventAta(Sender : TObject);
begin
  TcxButtonEditKadir(sender).Properties.OnButtonClick := cxButtonEditPropertiesButtonClick;
  TcxButtonEditKadir(sender).OnEnter := cxEditEnter;
  TcxButtonEditKadir(sender).OnExit := cxEditExit;
  TcxButtonEditKadir(sender).OnKeyDown := cxTextEditBKeyDown;
  TcxButtonEditKadir(sender).Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;

procedure TfrmPersonelKart.OrtakEventAta(Sender : TcxImageComboKadir);
begin
  TcxImageComboKadir (sender).OnEnter := cxEditEnter;
  TcxImageComboKadir(sender).OnExit := cxEditExit;
  TcxImageComboKadir(sender).OnKeyDown := cxTextEditBKeyDown;
  TcxImageComboKadir(sender).Properties.OnEditValueChanged := PropertiesEditValueChanged;
end;

procedure TfrmPersonelKart.Gelisler(kartNo : string);
begin
 HastaGelis(kartNo,ADO_Gelisler);
end;



procedure TfrmPersonelKart.TakipAl;
begin
     if ADO_Gelisler.FieldByName('TakIpNo').AsString <> ''
     Then Begin
          ShowMessageskin('Mevcut Takip Numaras� Var , Takip Al�namaz','','','info');
          exit;
     End;

     if (copy(TcxCustomEdit(FindComponent('KurumTip')).EditingValue,1,1) = '8')
     then begin
         exit;

     end else
     begin


     end;

end;


procedure TfrmPersonelKart.txtAktifPropertiesChange(Sender: TObject);
var
   sql , _aktif , _pasifTarih : string;
begin
   if DosyaNo.Text = '' then exit;

       SirketDurumDegisti := 1;
      (*
       if TcxImageComboBox(FindComponent('Aktif')).ItemIndex in [1,2]
       then begin
         _aktif := inttostr(TcxImageComboBox(FindComponent('Aktif')).ItemIndex);
         _pasifTarih := '';
         TcxTextEdit(FindComponent('KaraListeAlinmaSebebi')).Text := '';
         TcxDateEdit(FindComponent('KaraListeAlinmaTarihi')).Clear;
         TcxTextEdit(FindComponent('pasifSebeb')).Text := '';
         TcxDateEdit(FindComponent('PasifTarih')).Clear;
         TdxLayoutItem(FindComponent('dxLaKaraListeAlinmaTarihi')).Visible := False;
         TdxLayoutItem(FindComponent('dxLaKaraListeAlinmaSebebi')).Visible := False;
         TdxLayoutItem(FindComponent('dxLaPasifTarih')).Visible := False;
         TdxLayoutItem(FindComponent('dxLapasifSebeb')).Visible := False;
       end
       else
       if TcxImageComboBox(FindComponent('Aktif')).ItemIndex  = 0
       then begin
         _aktif := '0';
         _pasifTarih := tarihal(date());
          TcxTextEdit(FindComponent('KaraListeAlinmaSebebi')).Text := '';
          TcxDateEdit(FindComponent('KaraListeAlinmaTarihi')).Clear;
          TdxLayoutItem(FindComponent('dxLaKaraListeAlinmaTarihi')).Visible := False;
          TdxLayoutItem(FindComponent('dxLaKaraListeAlinmaSebebi')).Visible := False;
          TdxLayoutItem(FindComponent('dxLaPasifTarih')).Visible := True;
          TdxLayoutItem(FindComponent('dxLapasifSebeb')).Visible := True;
          TcxDateEdit(FindComponent('PasifTarih')).EditValue := date;
       end
       else begin
          _pasifTarih := tarihal(date());
          _aktif := '3';
          TcxTextEdit(FindComponent('pasifSebeb')).Text := '';
          TcxDateEdit(FindComponent('PasifTarih')).Clear;
          TdxLayoutItem(FindComponent('dxLaKaraListeAlinmaTarihi')).Visible := True;
          TdxLayoutItem(FindComponent('dxLaKaraListeAlinmaSebebi')).Visible := True;
          TdxLayoutItem(FindComponent('dxLaPasifTarih')).Visible := False;
          TdxLayoutItem(FindComponent('dxLapasifSebeb')).Visible := False;
         //TcxImageComboBox(FindComponent('Aktif')).Enabled := False;
       end;
        *)
       (*
       sql := 'update HastaKart set aktif = ' + #39 + _aktif + #39 + ', pasifTarih = ' + #39 + _pasifTarih + #39 +
              ' where dosyaNo = ' + #39 + DosyaNo.Text + #39;
       datalar.QueryExec(datalar.ADO_SQL1,sql);
         *)

       (*
       btnKaydet.Enabled := false;
       btnGuncelle.Enabled := true;
       btnAra.Enabled := True;
       btnVazgec.Enabled := True;
       Disable;*)

       ord := 2;
       aktifKart := 1;
       //txtAktif.Enabled := false;


end;

procedure TfrmPersonelKart.txtBobrekHastaligiPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  List : ArrayListeSecimler;
begin
    List := ListeAc3.ListeGetir;
    if length(List) > 0
    Then BEgin
       TcxButtonEdit(sender).Text := List[0].kolon1 + '-' + List[0].kolon2;
    End;
end;

procedure TfrmPersonelKart.PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if (TcxImageComboKadir(Sender).name = 'SirketKod') or
     (TcxImageComboKadir(Sender).name = 'Sube')
  then
  begin
      TcxImageComboKadir(FindComponent('muayenePeryot')).EditValue :=
      SirketSubeTehlikeSinifi(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue),
                              vartostr(TcxImageComboKadir(FindComponent('Sube')).EditValue));
  end;

  if TcxImageComboKadir(sender).Name = 'EV_SEHIR'
  then begin
    TcxImageComboKadir(FindComponent('EV_ILCE')).TableName := 'SKRS_ILCE_KODLARI';
    TcxImageComboKadir(FindComponent('EV_ILCE')).Filter := 'ILKODU = ' + QuotedStr(TcxImageComboKadir(FindComponent('EV_SEHIR')).EditingValue);
    if FindComponent('EV_ILCE') <> nil Then TcxImageComboKadir(FindComponent('EV_ILCE')).EditValue := Null;
  end
  else
  if TcxImageComboKadir(sender).Name = 'EV_ILCE'
  then begin
    TcxImageComboKadir(FindComponent('EV_BUCAK')).TableName := 'SKRS_BUCAK_KODLARI';
    TcxImageComboKadir(FindComponent('EV_BUCAK')).Filter := 'ILCEKODU = ' + QuotedStr(VarToStr(TcxImageComboKadir(FindComponent('EV_ILCE')).EditingValue));
    if FindComponent('EV_BUCAK') <> nil Then TcxImageComboKadir(FindComponent('EV_BUCAK')).EditValue := Null;
  end
  else
  if TcxImageComboKadir(sender).Name = 'EV_BUCAK'
  then begin
    TcxImageComboKadir(FindComponent('EV_KOY')).TableName := 'SKRS_KOY_KODLARI';
    TcxImageComboKadir(FindComponent('EV_KOY')).Filter := 'BUCAKKODU = ' + QuotedStr(VarToStr(TcxImageComboKadir(FindComponent('EV_BUCAK')).EditingValue));
    if FindComponent('EV_KOY') <> nil Then TcxImageComboKadir(FindComponent('EV_KOY')).EditValue := Null;
  end
  else
  if TcxImageComboKadir(sender).Name = 'EV_KOY'
  then begin
    TcxImageComboKadir(FindComponent('EV_MAHALLE')).TableName := 'SKRS_MAHALLE_KODLARI';
    TcxImageComboKadir(FindComponent('EV_MAHALLE')).Filter := 'KOYKODU = ' +
    QuotedStr(VarToStr(TcxImageComboKadir(FindComponent('EV_KOY')).EditingValue));
    if FindComponent('EV_MAHALLE') <> nil Then TcxImageComboKadir(FindComponent('EV_MAHALLE')).EditValue := Null;
  end ;
 (*
  if TcxImageComboKadir(sender).Name = 'SirketKodNew'
  then begin
    datalar.AktifSirket := TcxImageComboKadir(sender).EditValue;
    datalar.AktifSirketAdi := TcxImageComboKadir(sender).EditingText;
    sirketKod.text := datalar.AktifSirket;
  end;
  *)
end;

procedure TfrmPersonelKart.txtTipPropertiesChange(Sender: TObject);
begin
  inherited;
      (*
      if txtTip.ItemIndex = 0
      then begin
        sheetSeans.TabVisible := True;
        sheetPeriton.TabVisible := false;
        pnlH.Visible := True;
        pnlP.Visible := False;
      end
      else
      begin
        sheetSeans.TabVisible := False;
        sheetPeriton.TabVisible := True;
        pnlH.Visible := False;
        pnlP.Visible := True;
      end; *)
end;

function TfrmPersonelKart.TakipSil;
begin
//
end;

procedure TfrmPersonelKart.FotoNewRecord;
var
 sql,dosyaNo : string;
 ado : TADOQuery;
begin
  dosyaNo := TcxButtonEditKadir(FindComponent('dosyaNo')).Text;
  ado := TADOQuery.Create(nil);
  try
    sql := 'if not exists(select dosyaNo from PersonelFoto where dosyaNo = ' + QuotedStr(dosyaNo) + ')' +
           ' insert into PersonelFoto (dosyaNo,foto,tip) ' +
           ' values (' + QuotedStr(dosyaNo) + ',NULL,''H'')';
    datalar.QueryExec(ado,sql);
  finally
    ado.Free;
  end;

end;

procedure TfrmPersonelKart.FotoEkle(islem : String);
var
 Fo : TFileOpenDialog;
 filename,dosyaNo : string;
 jp : TJPEGImage;
begin
  dosyaNo := TcxButtonEditKadir(FindComponent('dosyaNo')).Text;
  datalar.ADO_Foto.SQL.Text := Format(FotoTable,[#39+dosyaNo+#39]);
  datalar.ADO_FOTO.Open;

  if datalar.ADO_FOTO.eof
  then begin
   datalar.ADO_FOTO.Append;
   datalar.ADO_FOTO.FieldByName('dosyaNo').AsString := dosyaNo;
   datalar.ADO_FOTO.FieldByName('Tip').AsString := 'F';
  end
  else
    datalar.ADO_FOTO.Edit;


  if islem = 'Ekle'
  Then Begin

      Fo := TFileOpenDialog.Create(nil);
      try
        if not fo.Execute then Exit;
        filename := fo.FileName;
      finally
        fo.Free;
      end;
      Foto.Picture.LoadFromFile(filename);

      jp := TJpegimage.Create;
      try
        jp.Assign(FOTO.Picture);
        datalar.ADO_FOTO.FieldByName('Foto').Assign(jp);
        datalar.ADO_FOTO.Post;
      finally
        jp.Free;
      end;
  End
  Else
  begin
    Foto.Clear;
    datalar.ADO_FOTO.FieldByName('Foto').value := Null;
    datalar.ADO_FOTO.Post;
  end;

end;


procedure TfrmPersonelKart.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  g : TGraphic;
  List : ArrayListeSecimler;
  Egtm : TcxImageComboKadir;
  PersonelBilgi : THastaKabul;
begin

  if TcxButtonEditKadir(sender).name = 'MESLEK'
  then begin
    List := Meslekler.ListeGetir;
    TcxTextEditKadir(FindComponent('MESLEK')).EditValue := List[0].kolon1;
    TcxTextEditKadir(FindComponent('MESLEKADI')).EditValue := List[0].kolon2;
    exit;
  end;

  TListeAc(FindComponent('ListdosyaNo')).Where := ' SirketKod = ' + QuotedStr(datalar.AktifSirket) +
                                                   ' and Sube in (select datavalue from dbo.strtotable(' + QuotedStr(datalar.AktifSube) + ','',''))';


  if TcxButtonEditKadir(sender).name = 'TCKIMLIKNO'
  then begin

    PersonelBilgi := TCtoPersonelBilgi(TcxButtonEditKadir(sender).EditingValue);
    if PersonelBilgi.Adi <> ''
    then begin
      if MrYes = ShowMessageSkin(PersonelBilgi.Adi + ' ' + PersonelBilgi.Sadi, PersonelBilgi.devredilenKurum + 'Firmas�nda Kay�tl�','Bu Firmada Yeni A�mak �stiyor musunuz?','msg')
      Then Begin
         if PersonelBilgi.Durum = TcxImageComboBox(FindComponent('sirketKod')).EditValue
         Then begin
           ShowMessageSkin('Personel Zaten Ayn� Firmada Kay�tl�','','','info');
           exit;
         end
         else
         begin
             TcxDateEdit(FindComponent('DOGUMTARIHI')).EditValue := PersonelBilgi.DTarihi;
             TcxTextEdit(FindComponent('HASTAADI')).EditValue := PersonelBilgi.adi;
             TcxTextEdit(FindComponent('HASTASOYADI')).EditValue := PersonelBilgi.Sadi;
         end;

      End;
    end;
    exit;
  end;



  inherited;




  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
      FormInputZorunluKontrolPaint(self,$00FCDDD1);
  end;

  if TComponent(Sender).ClassName = 'TcxImageComboKadir' then
  Begin
    case TcxImageComboKadir(Sender).Tag of
    1 : begin
            TcxImageComboKadir(FindComponent('EV_ILCE')).Filter := 'ILKODU = ' + QuotedStr(varToStr(TcxImageComboKadir(FindComponent('EV_SEHIR')).EditingValue));
            TcxImageComboKadir(FindComponent('EV_BUCAK')).Filter := 'ILCEKODU = ' + QuotedStr(varToStr(TcxImageComboKadir(FindComponent('EV_ILCE')).EditingValue));
            TcxImageComboKadir(FindComponent('EV_KOY')).Filter := 'BUCAKKODU = ' + QuotedStr(varToStr(TcxImageComboKadir(FindComponent('EV_BUCAK')).EditingValue));
            TcxImageComboKadir(FindComponent('EV_MAHALLE')).Filter := 'KOYKODU = ' + QuotedStr(varToStr(TcxImageComboKadir(FindComponent('EV_KOY')).EditingValue));
        end;
    end;

  End;


  case TcxButtonEditKadir(sender).tag of
   1 : begin  //dosyaNo buttonedit
        try
        //    TcxImageComboKadir(FindComponent('Sirketlerx')).EditValue := TcxLabel(FindComponent('LabelSirketKod')).Caption;

           _dosyaNo_ := TcxButtonEditKadir(sender).Text;
           _Tc_ := TcxTextEditKadir(FindComponent('TcKimlikNo')).Text;
           _HastaAdSoyad_ := TcxTextEditKadir(FindComponent('HASTAADI')).Text +
                             ' ' + TcxTextEditKadir(FindComponent('HASTASOYADI')).Text;
           HastaBilgiRecordSet(TcxTextEditKadir(FindComponent('HASTAADI')).Text,
                               TcxTextEditKadir(FindComponent('HASTASOYADI')).Text,
                               _Tc_,'');

           datalar.ADO_Foto.SQL.Text := Format(FotoTable,[#39+_dosyaNo_+#39]);
           datalar.ADO_FOTO.Open;

           g := TJpegimage.Create;
           try
            if datalar.ADO_FOTO.FieldByName('foto').AsVariant <> Null
            Then begin
              g.Assign(datalar.ADO_FOTO.FieldByName('foto'));
              FOTO.Picture.Assign(g);
            end
            else
            FOTO.Picture.Assign(nil);
           finally
             g.Free;
           end;
           Gelisler(TcxButtonEditKadir(sender).Text);
      //     _gelisNO_ := ADO_Gelisler.FieldByName('gelisNO').AsString;

          GridPersonelEgitim.Dataset.Connection := datalar.ADOConnection2;
          GridPersonelEgitim.Dataset.SQL.Text := 'exec sp_frmPersonelEgitim @PersonelDosyaNo = ' + QuotedStr(dosyaNo.Text);
          GridPersonelEgitim.Dataset.Open;
//          GridEgitim.DataController.CreateAllItems(True);

          (*
          if not datalar.QuerySelect('select * from Iskazalari where PersonelDosyaNo = ' + QuotedStr(dosyaNo.Text)).Eof
          Then
              TdxLayoutItem(FindComponent('dxLaiskazasi')).Visible := True
          Else
              TdxLayoutItem(FindComponent('dxLaiskazasi')).Visible := False;
            *)

        (*
          GridPersonelIseBaslamaEgitim.Dataset.Connection := datalar.ADOConnection2;
          GridPersonelIseBaslamaEgitim.Dataset.SQL.Text := 'select * from PersoneliseBaslamaEgitimleri where dosyaNo = ' + QuotedStr(dosyaNo.Text);
          GridPersonelIseBaslamaEgitim.Dataset.Open;
          GridPersonelIseBaslamaEgitim.Dataset.BeforePost := BeforePost;
          try
           Egtm := TcxImageComboKadir.Create(nil);
           Egtm.Conn := datalar.ADOConnection2;
           Egtm.Visible := False;
           Egtm.Tag := -1;
           Egtm.TableName := 'Egitim_Tnm';
           Egtm.ValueField := 'Kod';
           Egtm.DisplayField := 'Tanimi';
           Egtm.Filter := ' grup = 4';
           TcxImageComboBoxProperties(GridPersonelIseBaslamaEgitim_egitimKodu.Properties).Items :=
           TcxImageComboBoxProperties(Egtm.Properties).Items;
          finally
           // Egtm.Free;
          end;
          *)


          (*

          GridPersonelBelgeler.Dataset.Connection := datalar.ADOConnection2;
          GridPersonelBelgeler.Dataset.SQL.Text := 'select * from SCH_Pesonel_AlinanBelgeler ' +
                                                   ' where PersonelKodu = ' + QuotedStr(dosyaNo.Text) +
                                                   ' and sirketKodu = ' + QuotedStr(TcxImageComboBox(FindComponent('sirketKod')).EditValue) +
                                                   ' order by BelgeTipi,BelgeTarihi desc';
          GridPersonelBelgeler.Dataset.Open;
          GridPersonelBelgeler.Dataset.BeforePost := BeforePost;
          GridPersonelBelgeler.Dataset.AfterPost := AfterPost;

          try
           Egtm := TcxImageComboKadir.Create(nil);
           Egtm.Conn := datalar.ADOConnection2;
           Egtm.Visible := False;
           Egtm.Tag := -1;
           Egtm.TableName := 'Personel_BelgeTipleri';
           Egtm.ValueField := 'Kod';
           Egtm.DisplayField := 'Tanimi';
           Egtm.Filter := '';
           TcxImageComboBoxProperties(BelgeTip.Properties).Items :=
           TcxImageComboBoxProperties(Egtm.Properties).Items;
          finally
           // Egtm.Free;
          end;
            *)

        except on e : exception do
           begin
             ShowMessageSkin(e.Message,'','','info');
           end;

        end;

       end;


   end;
end;

procedure TfrmPersonelKart.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmPersonelKart.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmPersonelKart.cxGridGelislerDblClick(Sender: TObject);
begin
  inherited;
//    SeansKart1.Click;
end;

procedure TfrmPersonelKart.cxGridGelislerFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if ADO_Gelisler.Active
  Then begin
    _gelisNo_ := ADO_Gelisler.FieldByName('gelisNo').AsString;
    if _gelisNO_ <> ''
    then  begin
      _gelisNo_ := ifThen(_gelisNo_ = '','0',_gelisNo_);
      _provizyonTarihi_ := ADO_Gelisler.FieldByName('Tarih').AsString;
      _Doktor_ := ADO_Gelisler.FieldByName('doktor').AsString;
      datalar.Bilgi.gelisNo := ADO_Gelisler.FieldByName('gelisNo').AsString;
      datalar.Bilgi.Doktor := ADO_Gelisler.FieldByName('doktor').AsString;
      datalar.Bilgi.ProvizyonTarihi := ADO_Gelisler.FieldByName('Tarih').AsString;

      IseGirisMuayene.Dataset.Connection := datalar.ADOConnection2;
      IseGirisMuayene.Dataset.SQL.Text := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(dosyaNo.Text)+ ',' +
                                                                         _gelisNO_ + ',' + QuotedStr('0');
      IseGirisMuayene.Dataset.Open;
      GridList.ViewData.Expand(true);
    end
    else
      IseGirisMuayene.Dataset.close;

  end;
end;

procedure TfrmPersonelKart.cxTextEditBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if TcxButtonEditKadir(Sender).Name = 'dosyaNo'
   then
    cxButtonEditPropertiesButtonClick(TcxButtonEditKadir(sender),-1);
end;

procedure TfrmPersonelKart.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then
  Gelisler(TcxButtonEditKadir(sender).Text);
end;



procedure TfrmPersonelKart.DOGUMTARIHIPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
//
end;




procedure TfrmPersonelKart.Combo;
begin
  (*
   datalar.ADO_SQL.Close;
   DATALAR.ADO_SQL.SQL.Clear;

   sql := 'select SLT from Parametreler where SLK = ''40'' and SLB = ''KH''';
   ComboDoldur(datalar.ADO_SQL,sql,txtKomorbitHastalik);
   DATALAR.ADO_SQL.SQL.Clear;

 //  ComboDoldurName('',txtBobrekHastaligi);
   ComboDoldurName('',txtKomorbitHastalik);
   ComboDoldurName('',txtTedaviSekli);
   ComboDoldurName('',txtDializorCinsi);
   ComboDoldurName('',txtDializorTipi);
   ComboDoldurName('',txtYA);
   ComboDoldurName('',txtSonDurum);
   ComboDoldurName('',txtDializat);
   ComboDoldurName('',txtDamarGiris);
   ComboDoldurName('',txtHipar);
   ComboDoldurName('',txtDegisimiYapan);
   ComboDoldurName('',txtTunelYonu);
   ComboDoldurName('',txtKataterYY);
   ComboDoldurName('',txtGS);
   ComboDoldurName('',txtKT);
    *)
end;


function TfrmPersonelKart.Init(Sender : TObject) : Boolean;
var
  key : word;
  sql : string;
  ado : TADOQuery;
begin

  Result := True;
  if not inherited Init(Sender) then exit;

  if _TC_ <> '' then
  begin
    ado := TADOQuery.Create(nil);
    try
      //t2x := ayliktarih(date,t1);
      sql := 'select top 1 dosyaNo from PersonelKart ' +
             ' where TCKIMLIKNO = ' + QuotedStr(_TC_) +
             ' and Aktif = 1 ' +
             ' order by dosyaNo';
      datalar.QuerySelect(ado,sql);
      if not ado.Eof
      then
      _dosyaNo_ := ado.Fields[0].AsString
      else begin
        ShowMessageSkin('TC Kimlik No Sistemde Bulunamad�','','','info');
        close;
        Anaform.Sayfalar.Pages[Anaform.Sayfalar.ActivePageIndex].Free;
        Result := False;
      end;
    finally
      ado.Free;
    end;
  end
  else
  if _dosyaNo_ = '' then
  begin
    ado := TADOQuery.Create(nil);
    try
      //t2x := ayliktarih(date,t1);
     (*
      sql := 'select top 1 dosyaNo from PersonelKart ' +
             ' where sirketKod = ' + QuotedStr(datalar.AktifSirket) +
             ' and Aktif = 1 ' +
             ' order by dosyaNo';
      datalar.QuerySelect(ado,sql);
      _dosyaNo_ := ado.Fields[0].AsString;
      *)
    finally
      ado.Free;
    end;
  end;

  if _dosyaNo_ <> ''
  then begin
    key := 13;
    dosyaNo.EditValue := _dosyaNo_;//datalar.Bilgi.dosyaNo;
    if varTostr(dosyaNo.EditValue) <> ''
    then
     dosyaNo.OnKeyDown(frmPersonelKart.dosyaNo,key,[]);

    enabled;
    FormInputZorunluKontrolPaint(self,$00FCDDD1);

    IseGirisMuayene.Dataset.AfterScroll := ADO_WebServisErisimAfterScroll;
    GridList.ViewData.Expand(true);
    Result := True;
  end;


end;


procedure TfrmPersonelKart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := Cafree;
end;

procedure TfrmPersonelKart.FormCreate(Sender: TObject);
var
  List,
  UYRUK  : TListeAc;
  BASLANGIC ,Tarih : TcxDateEditKadir;
  EV_SEHIR ,EV_ILCE ,EV_BUCAK , EV_KOY,EV_MAHALLE : TcxImageComboKadir;
  EGITIM : TcxImageComboKadir;
  askerlik,ozur,bolum,birim,risk,muayenePeryot,tetkikIstemGrupSablon,
  Subeler,sirketlerx: TcxImageComboKadir;

begin
  USER_ID.Tag := 0;
  //sirketKod.Tag := 0;
  PopupMenu1.Images := datalar.imag24png;
  Menu := PopupMenu1;

  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  USER_ID.Text := datalar.username;

  indexFieldName := 'dosyaNo';
  TableName := _TableName_;
  Olustur(self,_TableName_,'Personel Tan�m Kart�',22,sqlInsert);
  cxPanel.Visible := false;
  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;

  List := ListeAcCreate('PersonelKart','dosyaNo,HASTAADI,HASTASOYADI,TCKIMLIKNO,Aktif',
                       'DosyaNo,PersonelAd�,Soyad�,TCKimlikNo,Durum',
                       '50,100,100,80,50','ListdosyaNo','Personel Listesi',
                       ' SirketKod = ' + QuotedStr(datalar.AktifSirket) +
                       ' and Sube in (select datavalue from dbo.strtotable(' + QuotedStr(datalar.AktifSube) + ','',''))',
                        5,True,Self);


  //List.Where := ' SirketKod = ' + QuotedStr(datalar.AktifSirket);

  setDataStringB(self,'dosyaNo','&DosyaNo',Kolon1,'dn',80,List,True,dosyaNo,'','SirketKod',True,True,1);
 (*
  if datalar.AktifSirket = '' then
  begin
    SirketKodNew := TcxImageComboKadir.Create(self);
    SirketKodNew.Conn := Datalar.ADOConnection2;
    SirketKodNew.TableName := 'SIRKETLER_TNM';
    SirketKodNew.ValueField := 'SirketKod';
    SirketKodNew.DisplayField := 'Tanimi';
    SirketKodNew.BosOlamaz := False;
    SirketKodNew.Filter := '';
    SirketKodNew.tag := -100;
    setDataStringKontrol(self,SirketKodNew,'SirketKodNew','�irket Se�',kolon1,'',250);
    OrtakEventAta(SirketKodNew);
  end;
   *)

  setDataString(self,'HUVIYETNO','',Kolon1,'dn',45);
  //setDataString(self,'TCKIMLIKNO','TC Kimlik No  ',Kolon1,'',130,True);
  setDataStringB(self,'TCKIMLIKNO','&TC Kimlik No',Kolon1,'',130,nil,False,TCKIMLIKNO,'','',True,False,2);
  setDataString(self,'HASTAADI','Personel Ad�  ',Kolon1,'',130,True);
  setDataString(self,'HASTASOYADI','Soyad�  ',Kolon1,'',130,True);
  setDataString(self,'BABAADI','Baba Ad�  ',Kolon1,'',130);
  setDataString(self,'ANAADI','Ana Ad�  ',Kolon1,'',130);
  setDataString(self,'DOGUMYERI','Do�um Yeri  ',Kolon1,'',130);
  setDataStringKontrol(self,DOGUMTARIHI, 'DOGUMTARIHI','Do�um Tarihi  ',Kolon1,'',130);


  setDataStringKontrol(self,KANGRUBU, 'KANGRUBU','Kan Grubu  ',Kolon1,'',100);
  setDataStringKontrol(self,CINSIYETI, 'CINSIYETI','Cinsiyeti  ',Kolon1,'',100);
  setDataStringKontrol(self,MEDENI, 'MEDENI','Medeni Hal  ',Kolon1,'',100);
  setDataStringCurr(self,'CocukSayi','�ocuk Say.',kolon1,'',40,'0,',1);

  setDataStringKontrol(self,VatandasTip, 'VatandasTip','Vatanda� Tipi  ',Kolon1,'',100);
  UYRUK := ListeAcCreate('SKRS_ULKE_KODLARI','KODU,ADI','Kod,�lke Adi',
                       '50,200','KODU','�lke Kodlar�','',2);
  setDataStringB(self,'UYRUGU','Uyruk',Kolon1,'',50,UYRUK,false,nil,'ADI','',True,True);

  EGITIM := TcxImageComboKadir.Create(self);
  EGITIM.Conn := Datalar.ADOConnection2;
  EGITIM.TableName := 'EgitimDurumlari';
  EGITIM.ValueField := 'kod';
  EGITIM.DisplayField := 'tanimi';
  EGITIM.BosOlamaz := True;
  EGITIM.Filter := '';
  OrtakEventAta(EGITIM);
  setDataStringKontrol(self,EGITIM,'EGITIM_DURUMU','E�itim Durumu',kolon1,'',130);
(*
  bolum := TcxImageComboKadir.Create(self);
  bolum.Conn := Datalar.ADOConnection2;
  bolum.TableName := 'MeslekKodlari';
  bolum.ValueField := 'kod';
  bolum.DisplayField := 'tanimi';
  bolum.Filter := '';
  bolum.BosOlamaz := True;
  setDataStringKontrol(self,bolum,'MESLEK','Meslek',kolon1,'',130);
 *)


  (*
  Kurum := TcxImageComboKadir.Create(self);
  Kurum.Conn := Datalar.ADOConnection2;
  Kurum.TableName := 'Kurumlar';
  Kurum.ValueField := 'Kurum';
  Kurum.DisplayField := 'ADI1';
  Kurum.BosOlamaz := True;
  Kurum.Filter := '';
  OrtakEventAta(Kurum);
  setDataStringKontrol(self,Kurum,'Kurum','Kurum',kolon2,'',120);

  DEV_KURUM := TcxImageComboKadir.Create(self);
  DEV_KURUM.Conn := Datalar.ADOConnection2;
  DEV_KURUM.TableName := 'DevredilenKurum_Tnm';
  DEV_KURUM.ValueField := 'kod';
  DEV_KURUM.DisplayField := 'tanimi';
  DEV_KURUM.BosOlamaz := True;
  DEV_KURUM.Filter := '';
  OrtakEventAta(DEV_KURUM);
  setDataStringKontrol(self,DEV_KURUM,'KurumTip','Dev. Kurum',kolon2,'',120);


  setDataStringKontrol(self,DURUM, 'Durum','Sigortal� Tipi',Kolon2,'',70);
  *)

  Sirketlerx := TcxImageComboKadir.Create(self);
  Sirketlerx.Conn := Datalar.ADOConnection2;
  Sirketlerx.TableName := 'SIRKETLER_TNM_view';
  Sirketlerx.ValueField := 'SirketKod';
  Sirketlerx.DisplayField := 'Tanimi';
  Sirketlerx.BosOlamaz := False;
  Sirketlerx.Filter := SirketComboFilter;
  Sirketlerx.EditValue := datalar.AktifSirket;
  Sirketlerx.ItemIndex := -1;
 // sirketlerx.tag := -100;
 // sirketlerx.Properties.ReadOnly := True;
 // sirketlerx.Properties.Buttons [0].Visible := False;
  setDataStringKontrol(self,sirketlerx,'SirketKod','�irket',Kolon2,'',250,0,alNone,'');

 // OrtakEventAta(sirketlerx);

  subeler := TcxImageComboKadir.Create(self);
  subeler.Conn := Datalar.ADOConnection2;
  subeler.TableName := 'SIRKET_SUBE_TNM';
  subeler.ValueField := 'subeKod';
  subeler.DisplayField := 'subeTanim';
  subeler.BosOlamaz := True;
 // subeler.Filter :=
 // ' SirketKod = ' + QuotedStr(varToStr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue));
 //   setDataStringBLabel(Self, 'SirketKod', Kolon4, '', 0, '', '', 'SirketKod');
  setDataStringKontrol(self,subeler,'sube','�ube',Kolon2,'',120);
 // OrtakEventAta(subeler);
  sirketlerx.Properties.OnEditValueChanged := SirketlerPropertiesChange;
  subeler.Properties.OnEditValueChanged := SirketlerPropertiesChange;

  setDataString(self,'SicilNo','Sigorta No',Kolon2,'',70);
  setDataStringBLabel(self,'BosSatir1',Kolon2,'',10);

  setDataString(self,'EV_TEL1','Mobil Tel',Kolon2,'',120);
  setDataString(self,'EV_TEL2','Sabit Tel',Kolon2,'',120);


  EV_SEHIR := TcxImageComboKadir.Create(self);
  EV_SEHIR.Conn := Datalar.ADOConnection2;
  EV_SEHIR.TableName := 'SKRS_IL_KODLARI';
  EV_SEHIR.ValueField := 'KODU';
  EV_SEHIR.DisplayField := 'ADI';
  EV_SEHIR.BosOlamaz := True;
  EV_SEHIR.Filter := '';
  setDataStringKontrol(self,EV_SEHIR,'EV_SEHIR','�l',kolon2,'',120);
  OrtakEventAta(EV_SEHIR);
//  setDataStringBLabel(self,'EV_SEHIR',Kolon2,'il',100,' ');


  EV_ILCE := TcxImageComboKadir.Create(self);
  EV_ILCE.Conn := Datalar.ADOConnection2;
  EV_ILCE.TableName := 'SKRS_ILCE_KODLARI';
  EV_ILCE.ValueField := 'KODU';
  EV_ILCE.DisplayField := 'ADI';
  EV_ILCE.BosOlamaz := True;
//  EV_ILCE.Filter := EV_SEHIR.EditValue;
//  EV_ILCE.Properties.ReadOnly := True;
  setDataStringKontrol(self,EV_ILCE,'EV_ILCE','�l�e',kolon2,'',120);
  OrtakEventAta(EV_ILCE);
  //  setDataStringB(self,'EV_ILCE','�l�e',Kolon2,'ilce',60,ILCE_KODLARI,false,EV_ILCE,'ADI','EV_SEHIR',false);
//  setDataStringBLabel(self,'EV_ILCE',Kolon2,'ilce',100,' ');

  //BUCAK_KODLARI := ListeAcCreate('SKRS_BUCAK_KODLARI','KODU,ADI','Kod,Adi','50,100','KODU','BUCAKLAR',' ILCEKODU = %s',2);
  EV_BUCAK := TcxImageComboKadir.Create(self);
  EV_BUCAK.Conn := Datalar.ADOConnection2;
  EV_BUCAK.TableName := 'SKRS_BUCAK_KODLARI';
  EV_BUCAK.ValueField := 'KODU';
  EV_BUCAK.DisplayField := 'ADI';
  EV_BUCAK.BosOlamaz := True;

  setDataStringKontrol(self,EV_BUCAK,'EV_BUCAK','Bucak',kolon2,'',120);
  OrtakEventAta(EV_BUCAK);

//  setDataStringB(self,'EV_BUCAK','Bucak',Kolon2,'bucak',60,BUCAK_KODLARI,false,EV_BUCAK,'ADI','EV_ILCE',false);
//  setDataStringBLabel(self,'EV_BUCAK',Kolon2,'bucak',100,' ');

 // KOY_KODLARI := ListeAcCreate('SKRS_KOY_KODLARI','KODU,ADI','Kod,Adi','50,100','KODU','K�YLER',' BUCAKKODU = %s',2);
  EV_KOY := TcxImageComboKadir.Create(self);
 // EV_KOY.Properties.ReadOnly := True;
  EV_KOY.Conn := Datalar.ADOConnection2;
  EV_KOY.TableName := 'SKRS_KOY_KODLARI';
  EV_KOY.ValueField := 'KODU';
  EV_KOY.DisplayField := 'ADI';
  EV_KOY.BosOlamaz := True;
  setDataStringKontrol(self,EV_KOY,'EV_KOY','K�y�',kolon2,'',120);
  OrtakEventAta(EV_KOY);

 // MAHALLE_KODLARI := ListeAcCreate('SKRS_MAHALLE_KODLARI','KODU,ADI','Kod,Adi','50,100','KODU','MAHALLELER',' KOYKODU = %s',2);
  EV_MAHALLE := TcxImageComboKadir.Create(self);
  EV_MAHALLE.Conn := Datalar.ADOConnection2;
  EV_MAHALLE.TableName := 'SKRS_MAHALLE_KODLARI';
  EV_MAHALLE.ValueField := 'KODU';
  EV_MAHALLE.DisplayField := 'ADI';
  EV_MAHALLE.BosOlamaz := True;
  setDataStringKontrol(self,EV_MAHALLE,'EV_MAHALLE','Mahalle',kolon2,'',120);
   OrtakEventAta(EV_MAHALLE);

  setDataString(self,'EV_SOKAK','Sok./Cad.',Kolon2,'',166,True);
  setDataString(self,'EV_ADRES','Adres Di�er',Kolon2,'',166);
  setDataString(self,'EMAIL','E-Posta',Kolon2,'',166);


  setDataStringKontrol(self,iskazasi , 'iskazasi','',Kolon4,'',110);
  setDataStringKontrol(self,cxFotoPanel , 'cxFotoPanel','',Kolon4,'',110);
  setDataStringKontrol(self,txtAktif , 'Aktif','',Kolon4,'',110);



  (*
  BASLANGIC := TcxDateEditKadir.Create(self);
  BASLANGIC.ValueTip := tvDate;
  BASLANGIC.Properties.Alignment.Horz := taCenter;
  setDataStringKontrol(self,BASLANGIC, 'PasifTarih','Ayr�lma Tarihi',Kolon4,'',100);
  setDataStringMemo(Self,'pasifSebeb','Nedeni',Kolon4,'',250,100);

  TdxLayoutItem(FindComponent('dxLapasifSebeb')).Visible := False;
    *)
    (*
  Tarih := TcxDateEditKadir.Create(self);
  Tarih.ValueTip := tvDate;
  Tarih.Properties.Alignment.Horz := taCenter;
  Tarih.Date := date;
  setDataStringKontrol(self,Tarih,'KaraListeAlinmaTarihi','Kara Listeye Al�nma Tarihi',Kolon4,'',110);
  OrtakEventAta(Tarih);

  setDataStringMemo(Self,'KaraListeAlinmaSebebi','',Kolon4,'',250,100);
  TdxLayoutItem(FindComponent('dxLaKaraListeAlinmaSebebi')).Visible := False;
  TdxLayoutItem(FindComponent('dxLaKaraListeAlinmaTarihi')).Visible := False;
      *)

  addButton(self,nil,'btnTopluAktif','','Toplu &Aktif Yap',Kolon4,'',110,ButtonClick, 555);
  addButton(self,nil,'btnTopluPasif','','Toplu &Pasif Yap',Kolon4,'',110,ButtonClick, 550);






  BASLANGIC := TcxDateEditKadir.Create(self);
  BASLANGIC.ValueTip := tvDate;
  BASLANGIC.Properties.Alignment.Horz := taCenter;
  setDataStringKontrol(self,BASLANGIC, 'BASLANGIC','��e Ba�lama Tarihi',Kolon3,'IB',100);
(*
  BASLANGIC := TcxDateEditKadir.Create(self);
  BASLANGIC.ValueTip := tvDate;
  BASLANGIC.Properties.Alignment.Horz := taCenter;
  setDataStringKontrol(self,BASLANGIC, 'KidemTarihi','K�dem Tarihi',Kolon3,'IB',100);
  *)

  askerlik := TcxImageComboKadir.Create(self);
  askerlik.Conn := nil;
  askerlik.ItemList := '1;Yap�ld�,2;Muaf,3;Yap�lmad�';
  askerlik.Filter := '';
  askerlik.BosOlamaz := True;
  setDataStringKontrol(self,askerlik,'askerlik','Askerlik',kolon3,'',100);
  OrtakEventAta(askerlik);

  ozur := TcxImageComboKadir.Create(self);
  ozur.Conn := nil;
  ozur.ItemList := '1;�z�rl�,0;Yok';
  ozur.Filter := '';
  ozur.BosOlamaz := True;
  setDataStringKontrol(self,ozur,'Ozurluluk','�z�rl�l�k',kolon3,'',100);
  OrtakEventAta(ozur);

  risk := TcxImageComboKadir.Create(self);
  risk.Conn := nil;
  risk.ItemList := '1;Az Tehlikeli,2;Tehlikeli,3;�ok Tehlikeli';
  risk.Filter := '';
  risk.BosOlamaz := True;
  setDataStringKontrol(self,risk,'risk','Risk Grubu',kolon3,'',100);
  OrtakEventAta(risk);

  bolum := TcxImageComboKadir.Create(self);
  bolum.Conn := Datalar.ADOConnection2;
  bolum.TableName := 'Bolumler';
  bolum.ValueField := 'kod';
  bolum.DisplayField := 'tanimi';
  bolum.Filter := '';
  bolum.BosOlamaz := True;
  setDataStringKontrol(self,bolum,'bolum','B�l�m�',kolon3,'bolumGrp',120);
  OrtakEventAta(bolum);
  addButton(self,nil,'btnBolum','','Ekle',Kolon3,'bolumGrp',50,ButtonClick,TagfrmBolum*-1);

  birim := TcxImageComboKadir.Create(self);
  birim.Conn := Datalar.ADOConnection2;
  birim.TableName := 'Birimler';
  birim.ValueField := 'kod';
  birim.DisplayField := 'tanimi';
  birim.Filter := '';
  birim.BosOlamaz := True;
  setDataStringKontrol(self,birim,'birim','Birimi',kolon3,'birimGrp',120);
  OrtakEventAta(birim);
  addButton(self,nil,'btnBirim','','Ekle',Kolon3,'birimGrp',50,ButtonClick,TagfrmBirim*-1);
  setDataString(self,'yaptigiIsinTanimi','�� Tan�m�',Kolon3,'',200,True);

// meslekler := ListeAcCreate('MeslekKodlari','kod,tanimi','Meslekler','100,300','Kodu','Meslek Tan�m�','',2);

  setDataStringKontrol(self,MESLEK, 'MESLEK','Meslek Kodu  ',Kolon3,'',80);
  setDataString(self,'MESLEKADI','Meslek Tanimi',Kolon3,'',200,false,'',True);
//  OrtakEventAta(meslekKod);



 // TcxLabel(FindComponent('MuayenePeryotBaslik')).Style.Font.Color := clRed;


  muayenePeryot := TcxImageComboKadir.Create(self);
  muayenePeryot.Conn := nil;
  muayenePeryot.ItemList := '30;Ayda Bir,90;3 Ayda Bir,180;6 Ayda Bir,365;Y�lda Bir,730;�ki Y�lda Bir,1095;�� Y�lda Bir,1825;Be� Y�lda Bir';
  muayenePeryot.Filter := '';
  muayenePeryot.BosOlamaz := True;
  setDataStringKontrol(self,muayenePeryot,'MuayenePeryot','Muayene Peryodu',kolon3,'',110);
  OrtakEventAta(muayenePeryot);


  tetkikIstemGrupSablon := TcxImageComboKadir.Create(self);
  tetkikIstemGrupSablon.Conn := datalar.ADOConnection2;
  tetkikIstemGrupSablon.TableName := 'tetkikIstemGrupSablon';
  tetkikIstemGrupSablon.ValueField := 'kod';
  tetkikIstemGrupSablon.DisplayField := 'tanimi';
  tetkikIstemGrupSablon.Filter := '';
  setDataStringKontrol(self,tetkikIstemGrupSablon,'tetkikIstemGrupSablon','Tetkik Grubu',kolon3,'',110);
  OrtakEventAta(tetkikIstemGrupSablon);


  (*
  BASLANGIC := TcxDateEditKadir.Create(self);
  BASLANGIC.ValueTip := tvDate;
  BASLANGIC.Properties.Alignment.Horz := taCenter;
  setDataStringKontrol(self,BASLANGIC, 'PkartBasimTarihi','Kart Bas�m',kolon3,'PKB',100);

  BASLANGIC := TcxDateEditKadir.Create(self);
  BASLANGIC.ValueTip := tvDate;
  BASLANGIC.Properties.Alignment.Horz := taCenter;
  setDataStringKontrol(self,BASLANGIC, 'PkartBitisTarihi','Kart Ge�erlilik',kolon3,'PKB',100);
  addButton(self,nil,'btnKartPrint','','Personel Kart� Bas',Kolon3,'',110,ButtonClick, 551);

  setDataStringBLabel(self,'belge',sayfa5_Kolon1,'',500,'Personel Belge Tarih ve Ge�erlilikleri');

  BASLANGIC := TcxDateEditKadir.Create(self);
  BASLANGIC.ValueTip := tvDate;
  BASLANGIC.Properties.Alignment.Horz := taCenter;
  setDataStringKontrol(self,BASLANGIC, 'SaglikRaporuTarihi','Sa�l�k Raporu Tarihi',sayfa5_Kolon1,'SR',100);

  BASLANGIC := TcxDateEditKadir.Create(self);
  BASLANGIC.ValueTip := tvDate;
  BASLANGIC.Properties.Alignment.Horz := taCenter;
  setDataStringKontrol(self,BASLANGIC, 'SaglikRaporuBitisTarihi','Biti� Tarihi',sayfa5_Kolon1,'SR',100);
//  setDataStringIC(Self,'Kategori_MYK','Mesleki Yeterlilik Bilgisi',Sayfa5_Kolon1,'MYKA',100,'SCH_KatagoriTanim','kod','tanimi');



  BASLANGIC := TcxDateEditKadir.Create(self);
  BASLANGIC.ValueTip := tvDate;
  BASLANGIC.Properties.Alignment.Horz := taCenter;
  setDataStringKontrol(self,BASLANGIC, 'KKE_TeslimTarihi','KKE Zimmet Tarihi',sayfa5_Kolon1,'KKE',100);

  BASLANGIC := TcxDateEditKadir.Create(self);
  BASLANGIC.ValueTip := tvDate;
  BASLANGIC.Properties.Alignment.Horz := taCenter;
  setDataStringKontrol(self,BASLANGIC, 'KKE_GecerlilikTarihi','Biti� Tarihi',sayfa5_Kolon1,'KKE',100);

  BASLANGIC := TcxDateEditKadir.Create(self);
  BASLANGIC.ValueTip := tvDate;
  BASLANGIC.Properties.Alignment.Horz := taCenter;
  setDataStringKontrol(self,BASLANGIC, 'ISG_SertifikaTarihi','Ta�.�SG Tarihi',sayfa5_Kolon1,'ISG',100);

  BASLANGIC := TcxDateEditKadir.Create(self);
  BASLANGIC.ValueTip := tvDate;
  BASLANGIC.Properties.Alignment.Horz := taCenter;
  setDataStringKontrol(self,BASLANGIC, 'ISG_GecerlilikTarihi','Biti� Tarihi',sayfa5_Kolon1,'ISG',100);

  BASLANGIC := TcxDateEditKadir.Create(self);
  BASLANGIC.ValueTip := tvDate;
  BASLANGIC.Properties.Alignment.Horz := taCenter;
  setDataStringKontrol(self,BASLANGIC, 'ISG_SCH_Tarihi','�SG SCH Tarihi',sayfa5_Kolon1,'ISG_SCH',100);

  BASLANGIC := TcxDateEditKadir.Create(self);
  BASLANGIC.ValueTip := tvDate;
  BASLANGIC.Properties.Alignment.Horz := taCenter;
  setDataStringKontrol(self,BASLANGIC, 'ISG_SCH_BitisTarihi','Biti� Tarihi',sayfa5_Kolon1,'ISG_SCH',100);

  setDataStringIC(Self,'MYK','Mesleki Yeterlilik Bilgisi',Sayfa5_Kolon1,'MYKA',100,'SCH_MYK_BilgiTanim','kod','tanimi');
  setDataStringMemo(self,'MYK_Aciklama','A��klama',sayfa5_Kolon1,'MYKA',150,40);

  BASLANGIC := TcxDateEditKadir.Create(self);
  BASLANGIC.ValueTip := tvDate;
  BASLANGIC.Properties.Alignment.Horz := taCenter;
  setDataStringKontrol(self,BASLANGIC, 'MYK_BelgeTarihi','MYK Belge Tarihi',sayfa5_Kolon1,'MYKG',100);

  BASLANGIC := TcxDateEditKadir.Create(self);
  BASLANGIC.ValueTip := tvDate;
  BASLANGIC.Properties.Alignment.Horz := taCenter;
  setDataStringKontrol(self,BASLANGIC, 'MYK_GecerlilikTarihi','Biti� Tarihi',sayfa5_Kolon1,'MYKG',100);

  addButton(self,nil,'btnMYKBelgeSorgula','','Belge Sorgula',sayfa5_Kolon1,'',110,ButtonClick, TagfrmWebNavigate);


  setDataStringBLabel(self,'K�yafetOlcu',sayfa5_Kolon1,'',500,'K�yafet �l��leri');
  setDataStringC(self,'pantolon','Pantolon',sayfa5_Kolon1,'',70,'36,38,40,42,44,46,48,50,52');
  setDataStringC(self,'mont','Mont',sayfa5_Kolon1,'',70,'XXS(44),XS(46),S(48),M(50),L(52),XL(54),XXL(56),XXXL(58)');
  setDataStringC(self,'gomlek','G�mlek',sayfa5_Kolon1,'',70,'S(39),M(41),L(43),XL(45)');
  setDataStringC(self,'tshirt','T-SHIRT',sayfa5_Kolon1,'',70,'XS(2),S(3),M(4),L(5),XL(6),XXL(7)');

  setDataStringBLabel(self,'KategoriDurum',sayfa5_Kolon1,'',500,'Kategori');
  setDataStringIC(Self,'Kategori_SR','Sa�l�k Raporu',Sayfa5_Kolon1,'',200,'SCH_KatagoriTanim','kod','tanimi');
  setDataStringIC(Self,'Kategori_ISG','Ta�.�SG',Sayfa5_Kolon1,'',200,'SCH_KatagoriTanim','kod','tanimi');
  setDataStringIC(Self,'Kategori_KKE','K.K. Ekipman',Sayfa5_Kolon1,'',200,'SCH_KatagoriTanim','kod','tanimi');
  setDataStringIC(Self,'Kategori_ISG_SCH','�SG SCH',Sayfa5_Kolon1,'',200,'SCH_KatagoriTanim','kod','tanimi');
  setDataStringIC(Self,'Kategori_E','Metot SCH E�itim',Sayfa5_Kolon1,'',200,'SCH_KatagoriTanim','kod','tanimi');

  setDataStringBLabel(self,'NI_CalismaAlani',sayfa5_Kolon1,'',500,'Di�er');
  setDataStringC(self,'NI','NI/El',sayfa5_Kolon1,'',100,'(NI)Montaj,(El)Bak�m,NI/El');
//  setDataStringC(self,'CalismaAlani','�alisma Alani',sayfa5_Kolon1,'',100,'Tam,Mekanik,Elektrik,Comm');
  setDataStringKontrol(self,CalismaAlani , 'CalismaAlani','�alisma Alani',sayfa5_Kolon1,'',270);


  setDataStringKontrol(self,GridPersonelBelgeler,'GridPersonelBelgeler','',sayfa5_Kolon2,'',410,sayfa1.Height,alNone);

  addButton(self,nil,'btnMYKBelgeYukleGetir','','Kay�tlar',sayfa5_Kolon2,'btn',50,ButtonClick, 502);
  addButton(self,nil,'btnMYKBelgeYukle','','Belge Y�kle',sayfa5_Kolon2,'btn',70,ButtonClick, 500);
  addButton(self,nil,'btnMYKBelgeAc','','Belge G�ster',sayfa5_Kolon2,'btn',70,ButtonClick, 501);

  setDataStringKontrol(self,GridPersonelLevel,'GridPersonelLevel','',sayfa5_Kolon3,'',260,sayfa1.Height,alNone);
  addButton(self,nil,'btnLevelYukleGetir','','Kay�tlar',sayfa5_Kolon3,'btn2',50,ButtonClick, 602);
  addButton(self,nil,'btnLevelBelgeYukle','','Belge Y�kle',sayfa5_Kolon3,'btn2',70,ButtonClick, 600);
  addButton(self,nil,'btnLevelBelgeAc','','Belge G�ster',sayfa5_Kolon3,'btn2',70,ButtonClick, 601);
    *)

 // setDataStringC(self,'seans','Seans',sayfa2_Kolon1,'_s_',50,'1,2,3,4,5');
 // setDataString(self,'seansSuresi','G�nl�k �al��ma S�re',sayfa2_Kolon1,'_s_',30);
//  setDataString(self,'makinaNo','Makina',sayfa2_Kolon1,'_s_',40);
//  setDataStringKontrol(self,seansGunleri , 'seansGunleri','�al��ma G�nleri',sayfa2_Kolon1,'',230);



  setDataStringMemo(self,'soygecmis','Soy Ge�mi�',sayfa3_Kolon1,'',630,40);
  setDataStringMemo(self,'hastaNot','Tedavi Ge�mi�',sayfa3_Kolon1,'',630,40);
  setDataStringMemo(self,'diger','Hasta �zel Durum',sayfa3_Kolon1,'',630,40);

  setDataStringKontrol(self,txtSeansSikayet , 'GELHAST','Kronik Hast/Ba��m',sayfa3_Kolon1,'',300);

  setDataStringCurr(self,'idealKilo','Kilo',sayfa3_Kolon1,'kilo',50,'0.00', 1);
  setDataStringCurr(self,'boy','Boy',sayfa3_Kolon1,'_boy_',50,'0', 1);
//  setDataStringC(self,'HbsAg','HbsAg',sayfa3_Kolon1,'hbs',40,'-,+');
//  setDataStringC(self,'AntiHbs','AntiHbs',sayfa3_Kolon1,'hbs',40,'-,+');
//  setDataStringC(self,'AntiHCV','AntiHCV',sayfa3_Kolon1,'_hbs_',40,'-,+');
//  setDataStringC(self,'HIV','AntiHIV',sayfa3_Kolon1,'_hbs_',40,'-,+');



 // setDataStringKontrol(self,IseGirisMuayene,'IseGirisMuayene','',sayfa4_Kolon1,'',800,350,alClient);
  setDataStringKontrol(self,GridPersonelEgitim,'GridPersonelEgitim','',sayfa2_Kolon1,'',780,400,alNone);
  setDataStringKontrol(self,GridPersonelIseBaslamaEgitim,'GridPersonelIseBaslamaEgitim','',sayfa2_Kolon2,'',488,210,alNone);

  addButton(self,nil,'btnSertifikaP','','Yazd�r',sayfa2_Kolon1,'',50,ButtonClick,-50);
 // addButton(self,nil,'btnIseBaslamaEgitimEkle','bb','Ekle',sayfa2_Kolon2,'',50,ButtonClick,-51);
 // addButton(self,nil,'btnIseBaslamaEgitimSil','bb','Sil',sayfa2_Kolon2,'',50,ButtonClick,-52);

  setDataString(self,'EskiFirma1','1.Firma',sayfa4_Kolon1,'',300,false,'',False);
  setDataString(self,'EskiIskolu1','�� Kolu',sayfa4_Kolon1,'',200,false,'',False);
  setDataString(self,'EskiYaptigiIs1','Yapt��� ��',sayfa4_Kolon1,'',200,false,'',False);
  setDataString(self,'EskiGiris_CikisTarihi1','Giri� - ��k�� Tarihi',sayfa4_Kolon1,'',200,false,'',False);
  setDataStringBLabel(self,'bosSatir3',sayfa4_Kolon1,'',350);
  setDataString(self,'EskiFirma2','2.Firma',sayfa4_Kolon1,'',300,false,'',False);
  setDataString(self,'EskiIskolu2','�� Kolu',sayfa4_Kolon1,'',200,false,'',False);
  setDataString(self,'EskiYaptigiIs2','Yapt��� ��',sayfa4_Kolon1,'',200,false,'',False);
  setDataString(self,'EskiGiris_CikisTarihi2','Giri� - ��k�� Tarihi',sayfa4_Kolon1,'',200,false,'',False);



 // tableColumnDescCreate;

    cxpnlHastaGelisler.Parent := sayfa1;
    Splitter_Muayene.Parent := sayfa1;

    cxpnlHastaGelisler.Align := alBottom;
    Splitter_Muayene.Align := alBottom;




  SayfaCaption('Kimlik Bilgileri','E�itim Bilgileri','�z Ge�mi�','�al��ma Ge�mi�i','');

  if datalar.UserGroup <> '2'
  then begin
    sayfa3.TabVisible := False;
  end;


  Disabled(self,True);




 end;


procedure TfrmPersonelKart.FormShow(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmPersonelKart.seansGunleriPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
//  s := seansGunleri.EditingValue;


 // ShowMessage(s,'','','info');
end;

procedure TfrmPersonelKart.cxKaydetClick(Sender: TObject);
var
  sql : string;
begin
  case TControl(sender).Tag  of
    Kaydet :
          begin
               if FirmaBilgileri(TcxImageComboKadir(FindComponent('sirketKod')).EditValue).Aktif <> 1
                then begin
                  ShowMessageSkin('Firma Aktif De�il','','','info');
                  exit;
                end;





      (*
          if StrToint(VarToStr(TcxImageComboKadir(FindComponent('VatandasTip')).EditValue)) in [0,1]
          Then
          if TCKontrol(vartoStr(TcxTextEditKadir(FindComponent('TCKIMLIKNO')).EditingValue)) = False
           Then begin
             ShowMessageSkin('TC Kimlik No Hatal�','L�tfen Kontrol Ediniz','','info');
             TcxCustomEdit(FindComponent('TCKIMLIKNO')).SetFocus;
             exit;
           end;
           if MrYes <> ShowMessageSkin('Personel Kart�',TcxImageComboKadir(FindComponent('SirketKod')).Text,
                                       TcxImageComboKadir(FindComponent('Sube')).Text + ' �ubesine Kay�t Edilecek',
                                       'msg') Then
             exit;
             *)
      end;
      Yeni : begin
      (*
           if datalar.AktifSirket = '' then
           begin
              ShowMessageSkin('�irket Se�melisiniz','','','info');
              exit;
           end;

          if IsNull (TcxLabel(FindComponent('LabelSirketKod')).Caption) then
          TcxLabel(FindComponent('LabelSirketKod')).Caption := datalar.AktifSirket;
      *)
      end;
  end;

  datalar.KontrolUserSet := False;
  BeginTrans (DATALAR.ADOConnection2);



  try
    inherited;
    if datalar.KontrolUserSet = True then exit;
    if not cxKaydetResult then Exit;

    case TControl(sender).Tag  of
 Kaydet : begin
           // if TCtoDosyaNo(TcxCustomEdit(FindComponent('TckimlikNo')).EditingValue)

            if StrToint(VarToStr(TcxImageComboKadir(FindComponent('VatandasTip')).EditValue)) in [0,1]
            Then
            if TCKontrol(vartoStr(TcxTextEditKadir(FindComponent('TCKIMLIKNO')).EditingValue)) = False
             Then begin
               ShowMessageSkin('TC Kimlik No Hatal�','L�tfen Kontrol Ediniz','','info');
               TcxCustomEdit(FindComponent('TCKIMLIKNO')).SetFocus;
               exit;
             end;
             if MrYes <> ShowMessageSkin('Personel Kart�',TcxImageComboKadir(FindComponent('SirketKod')).Text,
                                         TcxImageComboKadir(FindComponent('Sube')).Text + ' �ubesine Kay�t Edilecek',
                                         'msg') Then exit;

           FotoNewRecord;
           Kart := sql_none;
          end;
    Sil : begin
            Kart := sql_delete;
          end;
  Yeni : begin

             if datalar.AktifSirket = '' then
             begin
                ShowMessageSkin('�irket Se�melisiniz','','','info');
                exit;
             end;

            if IsNull (TcxLabel(FindComponent('LabelSirketKod')).Caption) then
            TcxLabel(FindComponent('LabelSirketKod')).Caption := datalar.AktifSirket;

            Kart := sql_new;
            dosyaNo.Text := dosyaNoYeniNumaraAl('DN');
            if dosyaNo.Text = '0'
            then begin
              ShowMessageskin('Dosya No Al�namad�','','','info');
            end;
            foto.Picture.Assign(nil);
            HastaGelis (dosyaNo.Text, ADO_Gelisler);
            TcxImageComboKadir(FindComponent('SirketKod')).EditValue := datalar.AktifSirket;
            TcxImageComboKadir(FindComponent('Sube')).EditValue :=
            ifThen(datalar.AktifSube = '','00',ifThen(pos(',',datalar.AktifSube) > 0,'00',datalar.AktifSube));

            TcxImageComboKadir(FindComponent('muayenePeryot')).EditValue :=
            SirketSubeTehlikeSinifi(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue),
                                    vartostr(TcxImageComboKadir(FindComponent('Sube')).EditValue));

            if IsNull (TcxLabel(FindComponent('LabelSirketKod')).Caption) then
              TcxLabel(FindComponent('LabelSirketKod')).Caption := datalar.AktifSirket;
            //aktif pasif yeni  kombosu yeni kay�tta e�er ekleyen kullan�c� doktor de�ilse Yeni de�eri varsay�lan olacak.
            if IsNull (datalar.doktorKodu) then
              TcxImageComboBox (FindComponent ('Aktif')).ItemIndex := 2
             else
              TcxImageComboBox (FindComponent ('Aktif')).ItemIndex := 1;

              TcxImageComboBox (FindComponent ('VatandasTip')).EditValue := 0;
              TcxButtonEditKadir(FindComponent('UYRUGU')).EditValue := 'TR';


          end;

    end;
  finally
    if cxKaydetResult then
      CommitTrans (DATALAR.ADOConnection2)
     else
      RollbackTrans (DATALAR.ADOConnection2);
  end;
end;

procedure TfrmPersonelKart.TopluPasifYap (const bPasif : boolean);
var
  sSirketKod, sSubeKod : String;
begin
  sSirketKod := VarToStr (TcxImageComboKadir(FindComponent('SirketKod')).EditingValue);
  if IsNull (sSirketKod) then 
  begin
    ShowMessageSkin ('Personelin �irket bilgisi se�ilmemi�', '', '', 'info');
    Exit;
  end;
  sSubeKod := VarToStr (TcxImageComboKadir(FindComponent('Sube')).EditingValue);
  if IsNull (sSubeKod) then
  begin
    ShowMessageSkin ('Personelin �ube bilgisi se�ilmemi�', '', '', 'info');
    Exit;
  end;
  if not PersonelTopluPasifYap (bPasif, sSirketKod, sSubeKod) then Exit;
end;

procedure TfrmPersonelKart.cxButtonCClick(Sender: TObject);
var
 List : TListeAc;
 _L_ : ArrayListeSecimler;
 _name_, tel,msj : string;
 F : TGirisForm;
 GirisFormRecord : TGirisFormRecord;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  if dosyaNo.Text = ''
  then begin
   ShowMessageSkin('Hasta Dosyas� A��lmadan Bu ��lem Kullan�lamaz...','','','info');
   exit;
  end;

  GirisFormRecord.F_dosyaNo_ := dosyaNo.Text;
  GirisFormRecord.F_gelisNo_ := ADO_Gelisler.FieldByName('gelisNo').AsString;
  GirisFormRecord.F_MuayeneProtokolNo_ := ADO_Gelisler.FieldByName('PROTOKOLNO').AsString;
  GirisFormRecord.F_provizyonTarihi_ := NoktasizTarih(ADO_Gelisler.FieldByName('Tarih').AsString);
  GirisFormRecord.F_TC_ := sqlRun.FieldByName('TCKimlikNo').AsString;
  GirisFormRecord.F_Doktor_ := ADO_Gelisler.FieldByName('doktor').AsString;
 // GirisFormRecord.F_SigortaliTur_ := TcxImageComboKadir(FindComponent('Durum')).EditValue;
  GirisFormRecord.F_HastaAdSoyad_ := _HastaAdSoyad_;
  GirisFormRecord.F_mobilTel_ := vartoStr(TcxTextEdit(FindComponent('EV_TEL1')).Text);
  GirisFormRecord.F_firmaKod_ := TcxImageComboKadir(FindComponent('SirketKod')).EditValue;
  GirisFormRecord.F_sube_ := TcxImageComboKadir(FindComponent('sube')).EditValue;



  if (ADO_Gelisler.Eof) and (TControl(sender).Tag <> -27) and (TControl(sender).Tag <> -50)
  then begin
   ShowMessageSkin('Muayene Dosyas� A��lmadan Bu ��lem Kullan�lamaz...','','','info');
   exit;
  end;

  case TControl(sender).Tag  of
    0 : begin
          List := TListeAc.Create(nil);
          try
            List.Kolonlar.Create;
            List.Table := 'ilacListesi';
            List.Kolonlar.Add('barkod');
            List.Kolonlar.Add('ilacAdi');

            List.KolonBasliklari.Create;
            List.KolonBasliklari.Add('Barkod');
            List.KolonBasliklari.Add('�la� Adi');

            List.KolonBasliklari.Create;
            List.TColcount := 2;
            List.TColsW := '100,300';
            List.ListeBaslik := '�la�lar';
            List.Name := 'barkod';
            List.Conn := Datalar.ADOConnection2;
            List.SkinName := AnaForm.dxSkinController1.SkinName;
            List.Grup := True;

            _L_ := List.ListeGetir;
            if High (_L_) >= 0 then
            begin
              _name_ := TcxButtonKadir(sender).ButtonName;
              _name_ := StringReplace(_name_,'cxBtn','',[rfReplaceAll]);
              TcxButtonEditKadir(FindComponent(_name_)).Text := _L_ [0].kolon1;
              TcxButtonEditKadir(FindComponent('tanimi')).Text := _L_ [0].kolon2;
            end;
          finally
            List.Free;
          end;
        end;
    1 : begin
         // post;
         //ShowMessage('�ptal');
        end;
   -1 : begin

        end;
   -2 : begin

        end;


   -3 : begin
        // TakipSil('');
        end;
   -4 : begin

        end;
   -5 : begin

        end;


   -6 : begin

        end;

 -25 : begin
          F := FormINIT(TagfrmAsiKarti,GirisFormRecord,ikEvet,'');
          if F <> nil then F.ShowModal;
       end;
 -26 : begin
         EpikrizYaz(dosyaNo.Text,ADO_Gelisler.FieldByName('gelisNo').AsString,false,IseGirisMuayene.Dataset);
       end;
 -27 : begin
         GelisAc;
       end;

 -28 : begin
         tel := dosyaNoTel(_dosyaNO_,TcxTextEdit(FindComponent('EV_TEL1')).Text);
         SMSSend(tel,msj,_HastaAdSoyad_);
       end;
 -29 : begin
         HastaRaporlari;
       end;
 -30 : begin
        //  ReceteForm(dosyaNo.Text,_gelisNO_);
       end;
 -31 : begin
        GelisDuzenle;
       end;
 -32 : begin
          F := FormINIT(TagfrmHastaTetkikEkle,GirisFormRecord);
          if F <> nil then F.ShowModal;
         // TetkikEkle(dosyaNo.Text,_gelisNo_,datalar.HastaBil.Tarih);
       end;
 -33 : begin
         GelisSil;
       end;

 -35 : begin
          F := FormINIT(TagfrmTaniKarti,GirisFormRecord,ikEvet,'');
          if F <> nil then F.ShowModal;
       end;

 -36 : begin
          F := FormINIT(TagfrmHastaDiyalizIzlem,GirisFormRecord,ikHayir);
          if F <> nil then F.ShowModal;
       end;


 -50 : begin
          FotoEkle(TControl(sender).Hint);
       end;

 -51 : begin
            GirisFormRecord.F_dosyaNO_ := dosyaNO.Text;
            GirisFormRecord.F_gelisNO_ := ADO_Gelisler.FieldByName('gelisNo').AsString;

            case ADO_Gelisler.FieldByName('AnemnezEkranTipi').AsInteger of
              1 : F := FormINIT(TagfrmIseGiris,GirisFormRecord,ikHayir,'');
              2 : F := FormINIT(TagfrmAnamnez,GirisFormRecord,ikEvet,'');
            end;


            if F <> nil then F.ShowModal;


       end;

 130 : begin
          datalar.HastaBil.dosyaNO := dosyaNo.Text;
          datalar.HastaBil.gelisNo := _gelisNo_;
          F := FormINIT(TagfrmHastaRecete,GirisFormRecord,ikEvet,'');
          if F <> nil then F.ShowModal;

       end;
 140 : begin
            //F := FormINIT(TagfrmPersonelEgitim,GirisFormRecord,ikEvet,'');
            //if F <> nil then F.ShowModal;
      //  IlacTedaviKarti(dosyaNo.Text,_gelisNo_,noktasizTarih(DATALAR.Bilgi.ProvizyonTarihi));
       end;

  end;
end;

end.

