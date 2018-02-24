unit Anamnez;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,
  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,cxMemo,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel,
  TedaviKart,GetFormClass, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxDropDownEdit, cxGridLevel,cxRadioGroup,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid;



type
  TfrmAnamnez = class(TfrmTedaviBilgisi)
    PopupMenu1: TPopupMenu;
    T1: TMenuItem;
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
    M1: TMenuItem;
    R2: TMenuItem;
    Y1: TMenuItem;
    R3: TMenuItem;
    procedure cxKaydetClick(Sender: TObject);
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure ADO_WebServisErisimAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'Gelisler';
      formGenislik = 850;
      formYukseklik = 600;

var
  frmAnamnez: TfrmAnamnez;


implementation
      uses AnamnezListe;
{$R *.dfm}

procedure TfrmAnamnez.ADO_WebServisErisimAfterScroll(DataSet: TDataSet);
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

function TfrmAnamnez.Init(Sender: TObject) : Boolean;
 var
  index,i,_left_ : integer;
  Ts,Ts1 : TStringList;
  List,List1,List3 : TListeAc;
  bransKodu,calismaTipi,cardType,sirket,medulaGonderimTipi,servisler : TcxImageComboKadir;
begin
  Result := False;

case self.Tag of
 TagfrmAnamnez ,TagfrmIseGiris
  : begin
        Tag := TagfrmAnamnez;
        ClientHeight := formYukseklik;
        ClientWidth := formGenislik;
        IseGirisMuayene.Visible := False;

        indexFieldName := 'dosyaNo = ' + _dosyaNO_ + ' and  gelisNo = ' + _gelisNo_ ;
        TableName := _TableName_;
        cxYeni.Visible := False;
        cxIptal.Visible := False;
        Menu := PopupMenu1;
        setDataStringBLabel(self,'lblSikayet',Kolon1,'',550,'Hastanýn Þikayeti');
        setDataStringMemo(self,'SIKAYETLERI','',Kolon1,'',550,80);
        addButton(self,nil,'btnSikayet','','Þikayet Seç',Kolon1,'',120,ButtonClick,1);
        setDataStringBLabel(self,'lblBulgu',Kolon1,'',550,'Muayene Bulgularý');
        setDataStringMemo(self,'MUAYENEBULGULARI','',Kolon1,'Bulgu',550,80);
        addButton(self,nil,'btnMuayeneBulgu','','Bulgu Seç',Kolon1,'',120,ButtonClick,2);
        setDataStringBLabel(self,'lblSonuc',Kolon1,'',550,'Tedavi ve Sonuç');
        setDataStringMemo(self,'MUAYENESONUC','',Kolon1,'sonuc',550,80);
        addButton(self,nil,'btnMuayeneSouc','','Sonuç Seç',Kolon1,'',120,ButtonClick,4);

        setDataStringCurr(self,'ISTIRAHATGUN','ÝstirahatGün',Kolon1,'sevk',40,'0',1);

        servisler := TcxImageComboKadir.Create(self);
        servisler.Conn := Datalar.ADOConnection2;
        servisler.TableName := 'SERVIS_TNM';
        servisler.ValueField := 'kod';
        servisler.DisplayField := 'tanimi';
        servisler.BosOlamaz := True;
        servisler.Filter := '';
        OrtakEventAta(servisler);
        setDataStringKontrol(self,servisler,'SEVKBRANS','Sevk Edilen Branþ',kolon1,'sevk',150);


        SayfaCaption('Muayene Bilgileri','','','','');
        _fields_ := '*';
        yukle;
        sqlRunLoad;

       // tableColumnDescCreate;

        Result := True;
       if self.Tag = TagfrmIseGiris then
        begin
            Tag := TagfrmIseGiris;
            IseGirisMuayene.Visible := True;
            IseGirisMuayene.Align := alClient;

            IseGirisMuayene.Dataset.Connection := datalar.ADOConnection2;
            IseGirisMuayene.Dataset.SQL.Text := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(_dosyaNO_)+ ',' +
                                                                               _gelisNO_ + ',' + QuotedStr('0');
            IseGirisMuayene.Dataset.Open;
            IseGirisMuayene.Dataset.AfterScroll := ADO_WebServisErisimAfterScroll;
            GridList.ViewData.Expand(true);
            Result := True;
        end;
  end;
end;
end;


procedure TfrmAnamnez.cxButtonCClick(Sender: TObject);
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

  GirisFormRecord.F_dosyaNo_ := _dosyaNo_;
  GirisFormRecord.F_gelisNo_ := _gelisNo_;
  GirisFormRecord.F_HastaAdSoyad_ := _HastaAdSoyad_;

    case TControl(sender).Tag  of
      -1 : begin
             F := FormINIT(TagfrmTaniKarti,GirisFormRecord,ikEvet,'');
             if F <> nil then F.ShowModal;
      end;
      -2 : begin
             YeniRecete(ReceteYeni,_dosyaNo_,_gelisNo_,'');
             F := FormINIT(TagfrmHastaRecete,GirisFormRecord,ikEvet,'');
             if F <> nil then F.ShowModal;
           end;
      -26 : begin
             F := FormINIT(TagfrmHastaRecete,GirisFormRecord,ikEvet,'');
             if F <> nil then F.ShowModal;
            end;

      -3 : begin
             F := FormINIT(TagfrmHastaTetkikEkle,GirisFormRecord);
             if F <> nil then F.ShowModal;
           end;
    end;
end;


procedure TfrmAnamnez.ButtonClick(Sender: TObject);
var
  tip : string;
begin
  case TControl(sender).Tag  of
  1,2,4 : begin
           Application.CreateForm(TfrmAnamnezListe, frmAnamnezListe);
           try
             frmAnamnezListe.compIndex(TcxButton(Sender).tag);
             frmAnamnezListe.Tanilar(inttostr(TcxButton(Sender).tag),'',datalar.doktorkodu);
             frmAnamnezListe.ShowModal;
           finally
             FreeAndNil (frmAnamnezListe);
           end;
          end;
     -26 : begin
             case self.tag  of
               TagfrmIseGiris : EpikrizYaz(_dosyaNo_,_gelisNo_,false,IseGirisMuayene.Dataset);
             end;
           end;
  end;
end;

procedure TfrmAnamnez.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmAnamnez.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmAnamnez.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmAnamnez.cxKaydetClick(Sender: TObject);
begin
  inherited;
  case TcxButton(sender).Tag  of
    0 : begin
        // ShowMessage('Kaydet');
        // ButonClick(self,'k');
      //   Olustur(self,'Users');
      //   setDataString(self,'ADISOYADI',100,10);

        end;
    1 : begin
         // post;
         //ShowMessage('Ýptal');
    end;
  end;
end;

end.
