unit PersonelEgitimFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel, cxcalendar,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxDropDownEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, cxPC;



type
  TfrmPersonelEgitim = class(TGirisForm)
    EgitimPersonel: TcxGridKadir;
    GridList: TcxGridDBBandedTableView;
    GridListMuayeneSoru: TcxGridDBBandedColumn;
    GridListGrupKod: TcxGridDBBandedColumn;
    EgitimPersonelLevel1: TcxGridLevel;
    PersonelList: TListeAc;
    PopupMenu1: TPopupMenu;
    Y1: TMenuItem;
    T1: TMenuItem;
    S1: TMenuItem;
    L1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure SayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
       var AllowChange: Boolean);
    procedure SayfalarChange(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure PropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetEgitimPersonelSQL : String;
    procedure ResetDetayDataset;
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'Egitimler';
      formGenislik = 600;
      formYukseklik = 500;

var
  frmPersonelEgitim: TfrmPersonelEgitim;


implementation

uses StrUtils;

{$R *.dfm}

procedure TfrmPersonelEgitim.PropertiesEditValueChanged(Sender: TObject);
begin
  TcxCheckGroupKadir(FindComponent('Egitimkod')).Clear;
  TcxCheckGroupKadir(FindComponent('Egitimkod')).Filter :=
  ' grup = ' + vartoStr(TcxImageComboKadir(FindComponent('EgitimTuru')).EditValue);
end;

procedure TfrmPersonelEgitim.ButtonClick(Sender: TObject);
var
  i : Integer;
  sTmp: String;
  ado : TADOQuery;
begin
  if TcxButtonKadir (Sender).ButtonName = 'btnPersonelEkle' then
  begin
    if IsNull (TcxButtonEditKadir (FindComponent('id')).Text) then
    begin
      ShowMessageSkin('Bu i�lem i�in e�itim kayd� se�meniz ya da ekrandaki bilgileri kaydetmeniz gerekir.', '', '', 'info');
      Exit;
    end;
    PersonelList.Where :=
      'Aktif = 1 '+
      'and SirketKod = ' + QuotedStr(varTOstr(TcxImageComboKadir((FindComponent('PersonelSirketKod'))).EditingValue)) +
      'and not exists (select 1 '+
      'from Personel_Egitim pe '+
      'where pe.EgitimId '+ IfThen (IsNull (TcxButtonEditKadir (FindComponent('id')).Text), 'is NULL', '= ' +  TcxButtonEditKadir (FindComponent('id')).Text) + ' '+
      'and pe.PersonelDosyaNo = PersonelKartview.DosyaNo)';
    datalar.ButtonEditSecimlist := PersonelList.ListeGetir;
    if length (datalar.ButtonEditSecimlist) > 0 then
    begin
      for i := Low (datalar.ButtonEditSecimlist) to High (datalar.ButtonEditSecimlist) do
      begin
        EgitimPersonel.Dataset.Append;
        try
          EgitimPersonel.Dataset.FieldByName('PersonelDosyaNo').AsString := DATALAR.ButtonEditSecimlist [i].kolon1;
          EgitimPersonel.Dataset.FieldByName('Egitimid').AsString := TcxButtonEditKadir (FindComponent('id')).Text;
          EgitimPersonel.Dataset.Post;
        except
          EgitimPersonel.Dataset.Cancel;
          raise;
        end;
      end;
      EgitimPersonel.Dataset.Active := False;
      EgitimPersonel.Dataset.Active := True;
    end;
  end
  else if TcxButtonKadir (Sender).ButtonName = 'btnPersonelSil' then
  begin
    sTmp := EgitimPersonel.Dataset.FieldByName ('id').AsString;
    if not IsNull (sTmp) then
    begin
      if ShowMessageSkin ('Se�illi Personeli Silmek �stiyor Musunuz ?', '', '', 'conf') <> mrYes then Exit;
      i := EgitimPersonel.Dataset.RecNo;
      datalar.QueryExec(ado, 'delete from Personel_Egitim where id = '+ sTmp);
      EgitimPersonel.Dataset.Active := False;
      EgitimPersonel.Dataset.Active := True;
      if i > EgitimPersonel.Dataset.RecordCount then i := EgitimPersonel.Dataset.RecordCount;
      if i > 0 then EgitimPersonel.Dataset.RecNo := i;
    end;

  end;
end;

procedure TfrmPersonelEgitim.cxButtonCClick(Sender: TObject);
var
  Ado,ado1 : TADOQuery;
  sql : string;
  TopluDataset : TDataSetKadir;
begin
  inherited;
  if IsNull (TcxButtonEditKadir (FindComponent('id')).Text) then
  begin
    ShowMessageSkin('Bu i�lemden �nce E�itim kayd�n� kaydetmeniz gerekir.', '', '', 'info');
    Exit;
  end;
  ado := TADOQuery.Create(nil);
  ado1 := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    ado1.Connection := datalar.ADOConnection2;
    sql := 'sp_frmPersonelEgitim ' + TcxButtonEditKadir(FindComponent('id')).Text;
    if TMenuItem (Sender).Tag = -20 then sql := sql + ', ' + QuotedStr (EgitimPersonel.Dataset.FieldByName('PersonelDosyaNo').AsString);

    datalar.QuerySelect(ado, sql);
    TopluDataset.Dataset0 := ado;
    TopluDataset.Dataset0.Name := 'PersonelEgitimleri';


    sql := 'declare @ek varchar(max),@et int ' +
           ' select @ek = EgitimKod,@et = EgitimTuru from egitimler where id = ' + TcxButtonEditKadir(FindComponent('id')).Text +
           ' select datavalue Egitimler from dbo.strtotable(dbo.egitimCheckStateToTanim(@ek,@et),'','') where datavalue <> ''''';
    datalar.QuerySelect(ado1, sql);
    TopluDataset.Dataset1 := ado1;

    if TMenuItem (Sender).Tag = -30 then
      PrintYap('004','E�itime Kat�lan Personel Listesi','',TopluDataset,pTNone)
     else
      PrintYap('005','Personel E�itimi Sertifikas�','',TopluDataset,pTNone);
  finally
    ado.free;
    ado1.free;
  end;
end;

procedure TfrmPersonelEgitim.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
    FormInputZorunluKontrolPaint(self,$00FCDDD1);
  end;
  //if TcxButtonEditKadir(FindComponent('id')).Text = '' then exit;
  ResetDetayDataset;
end;

procedure TfrmPersonelEgitim.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmPersonelEgitim.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmPersonelEgitim.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmPersonelEgitim.FormCreate(Sender: TObject);
var
  List : TListeAc;
  kombo , kombo1 ,sirketlerx ,sirketlerxx: TcxImageComboKadir;
  dateEdit: TcxDateEditKadir;
  Egitimler : TcxCheckGroupKadir;
begin
  Tag := TagfrmPersonelEgitim;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
  indexFieldName := 'id';
  TableName := _TableName_;
  Olustur(self,_TableName_,'Personel E�itimleri',22);


  List := TListeAc.Create(nil);

  List.Table :=
    '(Select e.id, e.EgitimKod, e.BaslamaTarihi, et.tanimi tanimi, s.Tanimi SirketTanimi , '+
    ' dbo.egitimCheckStateToTanim(e.EgitimKod,e.EgitimTuru) EgitimBilgi ' +
    'from Egitimler e  inner join egitimGrup_tnm et on et.Kod = e.EgitimTuru '+
    'left outer join SIRKETLER_TNM s on s.SirketKod = e.SirketKod) Egitimler';

  List.kolonlar.Add('id');// := Ts;
  List.kolonlar.Add('Tanimi');// := Ts;
  List.kolonlar.Add('BaslamaTarihi'); // := Ts;
  List.kolonlar.Add('SirketTanimi'); // := Ts;
  List.kolonlar.Add('EgitimBilgi');// := Ts;

  List.KolonBasliklari.Add('ID');// := Ts1;
  List.KolonBasliklari.Add('Tan�m�');// := Ts1;
  List.KolonBasliklari.Add('Ba�lama Tarihi');// := Ts1;
  List.KolonBasliklari.Add('�irket'); // := Ts;
  List.KolonBasliklari.Add('E�itimler');// := Ts1;
  List.TColcount := 5;
  List.TColsW := '10,80,70,200,400';
  List.ListeBaslik := 'Kay�tl� E�itimler';
  List.Name := 'id';
  List.Conn := Datalar.ADOConnection2;
  List.SkinName := 'coffee';//AnaForm.dxSkinController1.SkinName;
  List.Where := '';//'SirketKod = ' + QuotedStr (DATALAR.AktifSirket);
  setDataStringB(self,'id','E�itim No.',Kolon1,'',70,List,True,nil, 'tanimi', '', False, True, -100);

 // setDataStringB(self,'SirketKod','�irket Kodu',Kolon1,'',100,nil, True, SirketKod);
 // SirketKod.Properties.ReadOnly := True;

  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'SIRKETLER_TNM_view';
  sirketlerx.ValueField := 'SirketKod';
  sirketlerx.DisplayField := 'Tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Filter := SirketComboFilter;
  setDataStringKontrol(self,sirketlerx,'SirketKod','�irket',Kolon1,'',250,0,alNone,'');

  (*
  //�ube kodu ekle
  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := Datalar.ADOConnection2;
  kombo.TableName := 'Egitim_tnm';
  kombo.ValueField := 'kod';
  kombo.DisplayField := 'tanimi';
  kombo.BosOlamaz := True;
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'Egitimkod','E�itim',kolon1,'',145);
    *)


  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  dateEdit.Properties.Kind := ckdatetime;
  setDataStringKontrol(self,dateEdit, 'BaslamaTarihi','Ba�lama Zaman�',Kolon1,'',145);

  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  setDataStringKontrol(self,dateEdit, 'BitisTarihi','Biti� Tarihi',Kolon1,'',100);

  setDataString(self,'Sure','S�re (Saat)',Kolon1,'',100);
  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := Datalar.ADOConnection2;
  kombo.TableName := 'Egitimci_view';
  kombo.ValueField := 'tanimi1';
  kombo.DisplayField := 'tanimi2';
  kombo.BosOlamaz := True;
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'Egitimci','E�itimci',kolon1,'',200);{}
  //setDataString(self,'Egitimci','E�itimci',Kolon1,'',100);

  kombo1 := TcxImageComboKadir.Create(self);
  kombo1.Conn := datalar.ADOConnection2;
  kombo1.TableName := 'egitimGrup_tnm';
  kombo1.DisplayField := 'tanimi';
  kombo1.ValueField := 'kod';
  kombo1.BosOlamaz := True;
  kombo1.Filter := '';
  OrtakEventAta(kombo1);
  setDataStringKontrol(self,kombo1,'EgitimTuru','E�itim T�r�',kolon1,'',120);
  TcxImageComboKadir(FindComponent('EgitimTuru')).Properties.OnEditValueChanged := PropertiesEditValueChanged;

  Egitimler := TcxCheckGroupKadir.Create(self);
  Egitimler.Properties.EditValueFormat := cvfStatesString;
  Egitimler.Properties.Columns := 3;
  Egitimler.Alignment := alCenterCenter;
  Egitimler.Conn := Datalar.ADOConnection2;
  Egitimler.TableName := 'egitim_tnm';
  Egitimler.ValueField := 'kod';
  Egitimler.DisplayField := 'tanimi';
  Egitimler.tumuSecili := False;
  Egitimler.OrderField := value;
  Egitimler.Filter := ' grup = -1';// grup = ' + ifThen(_value_ = '','0',_value_);
  setDataStringKontrol(self,Egitimler,'Egitimkod','E�itimler',kolon1,'',400,80);
  Egitimler.Caption := '';


  //setDataStringC(self,'EgitimTuru','E�itim T�r�',Kolon1,'',100, '�� E�itim,D�� E�itim,Di�er');
  setDataString(self,'EgitimYeri','E�itim Yeri',Kolon1,'',100);
  setDataString(self,'SertifikaNo','Sertifika No.',Kolon1,'',100);
  setDataStringMemo(self,'EgitimIcerigi','E�itim A��klama',Kolon1,'',400, 60);
  setDataString(self,'EgitimUcreti','E�itim �creti',Kolon1,'',100);
  setDataString(self,'EgitimUcretParaBirimi','Para Birimi',Kolon1,'',100);

  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := nil;
  kombo.BosOlamaz := True;
  kombo.ItemList := '0;Hay�r,1;Evet';
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'EgitimUcretiOdendi','�dendi mi?',kolon1,'',120);

  sirketlerxx := TcxImageComboKadir.Create(self);
  sirketlerxx.Conn := Datalar.ADOConnection2;
  sirketlerxx.TableName := 'SIRKETLER_TNM';
  sirketlerxx.ValueField := 'SirketKod';
  sirketlerxx.DisplayField := 'Tanimi';
  sirketlerxx.BosOlamaz := False;
  sirketlerxx.Filter := '';
  sirketlerxx.Tag := -100;
  setDataStringKontrol(self,sirketlerxx,'PersonelSirketKod','�irketler',Sayfa2_Kolon1,'',250,0,alNone,'');

  addButton(self,nil,'btnPersonelEkle','','Personel Getir',Sayfa2_Kolon1,'PERS',120,ButtonClick);
  addButton(self,nil,'btnPersonelSil','','Se�ili Personeli Sil',Sayfa2_Kolon1,'PERS',120,ButtonClick);
  setDataStringKontrol(self,EgitimPersonel,'EgitimPersonel','',sayfa2_kolon1,'',410,300);
  GridList.Bands [0].Width := 380;;
  Menu := PopupMenu1;
  //setDataStringC(self,'EgitimUcretiOdendi','�dendi mi?',Kolon1,'',100, 'Evet,Hay�r');

  Disabled(self,True);
  SayfaCaption('E�itim Bilgileri', 'E�itime Kat�lan Personeller', '', '', '');
  //_HastaBilgileriniCaptionGoster_ := True;
end;

function TfrmPersonelEgitim.GetEgitimPersonelSQL: String;
var
  sIDText : String;
begin
  if IsNull (TcxButtonEditKadir (FindComponent('id')).Text) then
    sIDText := 'is NULL'
   else
    sIDText := '= ' + TcxButtonEditKadir (FindComponent('id')).Text;
  Result := 'Select pe.*, pk.HASTAADI + '' '' + pk.HASTASOYADI as PersonelAdiSoyadi '+
    'from Personel_Egitim pe '+
    'inner join PersonelKart pk on pk.DosyaNo = pe.PersonelDosyaNo '+
    'where EgitimId ' + sIDText+ ' ' +
    'order by PersonelAdiSoyadi, pe.id';
end;

function TfrmPersonelEgitim.Init(Sender: TObject): Boolean;
begin
  result := inherited;
  result := True;
end;

procedure TfrmPersonelEgitim.ResetDetayDataset;
begin
  EgitimPersonel.Dataset.Connection := DATALAR.ADOConnection2;
  EgitimPersonel.Dataset.SQL.Text := GetEgitimPersonelSQL;
  EgitimPersonel.Dataset.Open;
end;

procedure TfrmPersonelEgitim.SayfalarChange(Sender: TObject);
begin
  //d
end;

procedure TfrmPersonelEgitim.SayfalarPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  cxPanel.Visible := (newPage <> sayfa2);

end;

procedure TfrmPersonelEgitim.cxKaydetClick(Sender: TObject);
var
  xObj : TcxButtonEditKadir;
begin
  //SirketKodx.Text := datalar.AktifSirket; giri� formuna eklendi.
  inherited;
  //post ettikten sonra veritaban�ndan Identity de�eri al�p edit kutusuna yazmas� i�in....
  case TControl(sender).Tag  of
    0 : begin
      xObj := TcxButtonEditKadir (FindComponent('id'));
      if IsNull (xObj.EditingValue) then
      begin
        xObj.Text := IntToStr (F_IDENTITY);
        ResetDetayDataset;
      end;
    end;
    2 : begin
      xObj := TcxButtonEditKadir (FindComponent('id'));
      xObj.Text := '';
      ResetDetayDataset;
    end;
  end;
end;

end.
