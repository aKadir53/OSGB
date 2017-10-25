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
 private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'Egitimler';
      formGenislik = 500;
      formYukseklik = 500;

var
  frmPersonelEgitim: TfrmPersonelEgitim;


implementation

{$R *.dfm}
procedure TfrmPersonelEgitim.ButtonClick(Sender: TObject);
var
  i : Integer;
  sTmp: String;
begin
  if TcxButtonKadir (Sender).ButtonName = 'btnPersonelEkle' then
  begin
    PersonelList.Where :=
      'Aktif = 1 '+
      'and SirketKod = ' + QuotedStr (datalar.AktifSirket)+
      'and not exists (select 1 '+
      'from Personel_Egitim pe '+
      'where pe.EgitimId = ' +  TcxButtonEditKadir (FindComponent('id')).Text + ' '+
      'and pe.PersonelDosyaNo = PersonelKartview.DosyaNo)';
    datalar.ButtonEditSecimlist := PersonelList.ListeGetir;
    if length (datalar.ButtonEditSecimlist) > 0 then
    begin
      for i := Low (datalar.ButtonEditSecimlist) to High (datalar.ButtonEditSecimlist) do
      begin
        EgitimPersonel.Dataset.Append;
        EgitimPersonel.Dataset.FieldByName('PersonelDosyaNo').AsString := DATALAR.ButtonEditSecimlist [i].kolon1;
        EgitimPersonel.Dataset.FieldByName('Egitimid').AsString := TcxButtonEditKadir (FindComponent('id')).Text;
        EgitimPersonel.Dataset.Post;
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
      datalar.QueryExec(nil, 'delete from Personel_Egitim where id = '+ sTmp);
      EgitimPersonel.Dataset.Active := False;
      EgitimPersonel.Dataset.Active := True;
    end;

  end;
end;

procedure TfrmPersonelEgitim.cxButtonCClick(Sender: TObject);
var
  Ado : TADOQuery;
  sql : string;
  TopluDataset : TDataSetKadir;
begin
  inherited;

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  sql := 'sp_frmPersonelEgitim ' + TcxButtonEditKadir(FindComponent('id')).Text;
  datalar.QuerySelect(ado, sql);
  TopluDataset.Dataset0 := ado;
  TopluDataset.Dataset0.Name := 'PersonelEgitimleri';

  PrintYap('004','Personel Eðitimi Sertifikasý','',TopluDataset,pTNone);
  ado.free;

end;

procedure TfrmPersonelEgitim.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
  end;
  EgitimPersonel.Dataset.Connection := DATALAR.ADOConnection2;
  EgitimPersonel.Dataset.SQL.Text :=
    'Select pe.*, pk.HASTAADI + '' '' + pk.HASTASOYADI as PersonelAdiSoyadi '+
    'from Personel_Egitim pe '+
    'inner join PersonelKart pk on pk.DosyaNo = pe.PersonelDosyaNo '+
    'where EgitimId = ' + TcxButtonEditKadir (FindComponent('id')).Text+
    'order by PersonelAdiSoyadi, pe.id';
  EgitimPersonel.Dataset.Open;
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
  kombo : TcxImageComboKadir;
  dateEdit: TcxDateEditKadir;
begin
  Tag := TagfrmPersonelEgitim;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
  indexFieldName := 'id';
  TableName := _TableName_;
  Olustur(self,_TableName_,'Personel Eðitimleri',22);


  List := TListeAc.Create(nil);

  List.Table := '(Select e.*, et.tanimi from Egitimler e inner join Egitim_Tnm et on et.Kod = e.EgitimKod) Egitimler';

  List.kolonlar.Add('id');// := Ts;
  List.kolonlar.Add('EgitimKod');// := Ts;
  List.kolonlar.Add('Tanimi');// := Ts;
  List.kolonlar.Add('BaslamaTarihi'); // := Ts;


  List.KolonBasliklari.Add('ID');// := Ts1;
  List.KolonBasliklari.Add('Eðitim Kodu');// := Ts1;
  List.KolonBasliklari.Add('Tanýmý');// := Ts1;
  List.KolonBasliklari.Add('Baþlama Tarihi');// := Ts1;
  List.TColcount := 4;
  List.TColsW := '10,10,140,70';
  List.ListeBaslik := 'Eðitimler';
  List.Name := 'id';
  List.Conn := Datalar.ADOConnection2;
  List.SkinName := 'coffee';//AnaForm.dxSkinController1.SkinName;
  List.Where := 'SirketKod = ' + QuotedStr (DATALAR.AktifSirket);
  setDataStringB(self,'id','Eðitim No.',Kolon1,'',70,List,True,nil, 'tanimi', '', False, True, -100);

  setDataStringB(self,'SirketKod','Þirket Kodu',Kolon1,'',100,nil, True, SirketKod);
  SirketKod.Properties.ReadOnly := True;

  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := Datalar.ADOConnection2;
  kombo.TableName := 'Egitim_tnm';
  kombo.ValueField := 'kod';
  kombo.DisplayField := 'tanimi';
  kombo.BosOlamaz := True;
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'Egitimkod','Eðitim',kolon1,'',145);

  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  dateEdit.Properties.Kind := ckdatetime;
  setDataStringKontrol(self,dateEdit, 'BaslamaTarihi','Baþlama Zamaný',Kolon1,'',145);

  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  setDataStringKontrol(self,dateEdit, 'BitisTarihi','Bitiþ Tarihi',Kolon1,'',100);

  setDataString(self,'Sure','Süre (Saat)',Kolon1,'',100);
  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := Datalar.ADOConnection2;
  kombo.TableName := 'DoktorlarT';
  kombo.ValueField := 'kod';
  kombo.DisplayField := 'tanimi';
  kombo.BosOlamaz := True;
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'Egitimci','Eðitimci',kolon1,'',120);{}
  //setDataString(self,'Egitimci','Eðitimci',Kolon1,'',100);
  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := nil;
  kombo.BosOlamaz := True;
  kombo.ItemList := '0;Ýç Eðitim,1;Dýþ Eðitim';
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'EgitimTuru','Eðitim Türü',kolon1,'',120);
  //setDataStringC(self,'EgitimTuru','Eðitim Türü',Kolon1,'',100, 'Ýç Eðitim,Dýþ Eðitim,Diðer');
  setDataString(self,'EgitimYeri','Eðitim Yeri',Kolon1,'',100);
  setDataString(self,'SertifikaNo','Sertifika No.',Kolon1,'',100);
  setDataStringMemo(self,'EgitimIcerigi','Eðitim Ýçeriði',Kolon1,'',300, 65);
  setDataString(self,'EgitimUcreti','Eðitim Ücreti',Kolon1,'',100);
  setDataString(self,'EgitimUcretParaBirimi','Para Birimi',Kolon1,'',100);

  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := nil;
  kombo.BosOlamaz := True;
  kombo.ItemList := '0;Hayýr,1;Evet';
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'EgitimUcretiOdendi','Ödendi mi?',kolon1,'',120);
  addButton(self,nil,'btnPersonelEkle','','Personel Getir',Sayfa2_Kolon1,'PERS',120,ButtonClick);
  addButton(self,nil,'btnPersonelSil','','Seçili Personeli Sil',Sayfa2_Kolon1,'PERS',120,ButtonClick);
  setDataStringKontrol(self,EgitimPersonel,'EgitimPersonel','',sayfa2_kolon1,'',400,300);
  GridList.Bands [0].Width := 350;;
  Menu := PopupMenu1;
  //setDataStringC(self,'EgitimUcretiOdendi','Ödendi mi?',Kolon1,'',100, 'Evet,Hayýr');

  //Disabled(self,True);
  SayfaCaption('Eðitim Bilgileri', 'Eðitime Katýlan Personeller', '', '', '');
  //_HastaBilgileriniCaptionGoster_ := True;
end;





function TfrmPersonelEgitim.Init(Sender: TObject): Boolean;
begin
  result := inherited;
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
begin
  SirketKod.Text := datalar.AktifSirket;
  inherited;
end;

end.
