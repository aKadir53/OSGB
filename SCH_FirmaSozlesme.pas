unit SCH_FirmaSozlesme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,ShellApi,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  kadir, kadirMedula3, KadirType,GetFormClass,GirisUnit,
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
  cxImageComboBox, cxButtonEdit, cxSpinEdit;

type
  TfrmSCH_FirmaSozlesme = class(TGirisForm)
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
    miYeniGozetim: TMenuItem;
    cxStyle8: TcxStyle;
    tmr1: TTimer;
    SozlesmeSatirlar: TcxGridDBTableView;
    SozlesmeGridLevel1: TcxGridLevel;
    SozlesmeGrid: TcxGridKadir;
    SozlesmeSatirlarid: TcxGridDBColumn;
    SozlesmeSatirlarHizmetKodu: TcxGridDBColumn;
    SozlesmeSatirlarBirimFiyat: TcxGridDBColumn;
    SozlesmeSatirlarColumn1: TcxGridDBColumn;
    SozlesmeSatirlarColumn2: TcxGridDBColumn;
    SozlesmeSatirlarTip: TcxGridDBColumn;
    N1: TMenuItem;
    S1: TMenuItem;
    N2: TMenuItem;
    S2: TMenuItem;
    procedure Fatura(islem: Integer);
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
                AButtonIndex: Integer); override;
    procedure SozlesmeDetay;
    procedure NewRecord(DataSet: TDataSet);
    procedure AfterPost(DataSet: TDataSet);

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
  frmSCH_FirmaSozlesme: TfrmSCH_FirmaSozlesme;
  Sozlesmeler : TListeAc;
implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}


procedure TfrmSCH_FirmaSozlesme.SozlesmeDetay;
begin
   SozlesmeGrid.Dataset.Active := False;
   SozlesmeGrid.Dataset.SQL.Text := 'select * from SCH_FirmaSozlesmeleri where SirketKod = ' + QuotedStr(TGirisForm(self)._firmaKod_);
   SozlesmeGrid.Dataset.Active := True;
end;

procedure TfrmSCH_FirmaSozlesme.cxKaydetClick(Sender: TObject);
begin
  //SirketKodx.Text := datalar.AktifSirket; giriþ formuna eklendi.
  inherited;

  case TControl(sender).Tag  of
    0 : begin

    end;
    2 : begin
        // TcxTextEditKadir(FindComponent('sirketKod')).EditValue := TGirisForm(self)._firmaKod_;
        // SozlesmeDetay;
        end;
  end;
end;


procedure TfrmSCH_FirmaSozlesme.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    inherited;
    (*
    if TcxButtonEditKadir(sender).name = 'SirketKod'
    then
      TcxTextEditKadir(FindComponent('sirketTanimi')).Text := TcxButtonEditKadir(sender).tanimDeger
    else
    begin
      Enabled;
      SozlesmeDetay;
    end;

      *)
end;

function TfrmSCH_FirmaSozlesme.Init(Sender : TObject) : Boolean;
begin
  SozlesmeDetay;

  Result := True;
end;


procedure TfrmSCH_FirmaSozlesme.Fatura(islem: Integer);

begin
  //
end;

procedure TfrmSCH_FirmaSozlesme.NewRecord(DataSet: TDataSet);
begin
 //  SozlesmeGrid.Dataset.FieldByName('SirketSozlesmeID').AsInteger := TcxButtonEditKadir(FindComponent('id')).EditingValue;
end;

procedure TfrmSCH_FirmaSozlesme.AfterPost(DataSet: TDataSet);
begin
    (*
     cxPanelButtonEnabled(false,True,false);
     SozlesmeGrid.Dataset.Refresh;
     SozlesmeDetay;
      *)
end;

procedure TfrmSCH_FirmaSozlesme.cxButtonCClick(Sender: TObject);
var
  L : ArrayListeSecimler;
  dosya : TOpenDialog;
  dosyaTip : string;
  filename : string;
begin
  inherited;

  case Tcontrol(sender).Tag of
    -9 : begin
              if MrYes = ShowMessageSkin('Dokuman Eklenecek , Emin misiniz?','','','msg')
              then begin
                dosya := TOpenDialog.Create(nil);
                try
                  if not dosya.Execute then Exit;
                  dosyaTip := ExtractFileExt(dosya.FileName);
                  dosyaTip := StringReplace(dosyaTip,'.','',[rfReplaceAll]);

                  if (dosyaTip = 'PDF') or (dosyaTip = 'pdf')
                  then begin
                      DokumanYukle(SozlesmeGrid.Dataset,'Dokuman',dosya.FileName);
                  end else ShowMessageSkin('Döküman PDF olmalýdýr','','','info');

                finally
                  dosya.Free;
                end;
              end;
         end;
  -10 : begin
            if MrYes = ShowMessageSkin('Dokuman Silinecek , Emin misiniz?','','','msg')
            then begin
               SozlesmeGrid.Dataset.Edit;
               SozlesmeGrid.Dataset.FieldByName('dokuman').AsVariant := Null;
               SozlesmeGrid.Dataset.FieldByName('DokumanTip').AsString := '';
               SozlesmeGrid.Dataset.post;
               SozlesmeGrid.Dataset.Requery();
            end;
        end;
  -11 : begin
            Cursor := crSQLWait;
            try
              DokumanAc(SozlesmeGrid.Dataset,'Dokuman',SozlesmeGrid.Dataset.FieldByName('id').AsString+'dokumanTemp');
            finally
              Cursor := crDefault;
            end;
        end;

  end;
end;

procedure TfrmSCH_FirmaSozlesme.FormCreate(Sender: TObject);
var
 // List : TListeAc;
  FaturaKesimAyGunu : TcxSpinEdit;
  SozlesmeTarihi : TcxDateEditKadir;
  Onay ,Tip : TcxImageComboKadir;
begin
  inherited;


  cxPanel.Visible := False;
  Menu := PopupMenu1;
  indexFieldName := 'id';
  TableName := 'SCH_FirmaSozlesmeleri';
 // TopPanel.Visible := true;



  setDataStringKontrol(self,SozlesmeGrid,'SozlesmeGrid','',Kolon1,'',1,1,alClient);
  SozlesmeGrid.Dataset.Connection := datalar.ADOConnection2;
  SozlesmeGrid.Dataset.OnNewRecord := NewRecord;
  SozlesmeGrid.Dataset.AfterPost := AfterPost;

  kolon2.Width := 0;
  Kolon3.Width := 0;
  Kolon4.Width := 0;
 // setDataStringBLabel(self,'bosSatirFTop',kolon1,'FTop',538,'');


  //GridFaturalar.DataController.DataSource := DataSource;
  SayfaCaption('','','','','');
  Disabled(self,True);

end;

procedure TfrmSCH_FirmaSozlesme.GozlemYazdir(const GozlemID: integer);
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

procedure TfrmSCH_FirmaSozlesme.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

