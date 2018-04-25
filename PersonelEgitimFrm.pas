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
  cxGrid, cxPC, cxImageComboBox;



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
    Egitimci: TcxGridKadir;
    EgitimciList: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    EgitimciListid: TcxGridDBBandedColumn;
    EgitimciListegitimciTuru: TcxGridDBBandedColumn;
    EgitimciListegitimciUnvan: TcxGridDBBandedColumn;
    EgitimciListegitimciTC: TcxGridDBBandedColumn;
    EgitimciListegitimciAdiSoyadi: TcxGridDBBandedColumn;
    Egitimciler: TListeAc;
    EgitimGrid: TcxGridKadir;
    EgitimGridSatirlar: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    EgitimGridSatirlarid: TcxGridDBBandedColumn;
    EgitimGridSatirlarBaslamaTarihi: TcxGridDBBandedColumn;
    EgitimGridSatirlarBitisTarihi: TcxGridDBBandedColumn;
    EgitimGridSatirlartanimi: TcxGridDBBandedColumn;
    EgitimGridSatirlarSirketTanimi: TcxGridDBBandedColumn;
    EgitimGridSatirlarEgitimBilgi: TcxGridDBBandedColumn;
    EgitimGridSatirlarEgitimCSGBGonderimSonuc: TcxGridDBBandedColumn;
    miEgitimBilgisiniIBYSyeGonder: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
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
    procedure PropertiesEditValueChanged(Sender: TObject);override;
  private
    { Private declarations }
  protected
    function GetEgitimPersonelSQL : String;
    function GetEgitimEgitimciSQL: String;
    procedure ResetDetayDataset;
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'Egitimler';
      formGenislik = 600;
      formYukseklik = 600;

var
  frmPersonelEgitim: TfrmPersonelEgitim;


implementation

uses StrUtils, TransUtils;

{$R *.dfm}

procedure TfrmPersonelEgitim.PropertiesEditValueChanged(Sender: TObject);
var
  xDeger : String;
begin
  if not sametext (TcxImageComboKadir(Sender).name, 'EgitimTuru') then Exit;
  TcxCheckGroupKadir(FindComponent('Egitimkod')).Clear;
  xDeger := vartoStr(TcxImageComboKadir(FindComponent('EgitimTuru')).EditValue);
  if (xDeger <> '5') and (not IsNull (xDeger)) then
    TcxCheckGroupKadir(FindComponent('Egitimkod')).Filter := ' grup = ' + xDeger
   else
    TcxCheckGroupKadir(FindComponent('Egitimkod')).Filter := '';
end;

procedure TfrmPersonelEgitim.ButtonClick(Sender: TObject);
var
  i : Integer;
  sTmp,sql: String;
  ado : TADOQuery;
begin

  if TcxButtonKadir (Sender).ButtonName = 'btnEgitimListele' then
  begin
    sql :=
         ' Select e.id, e.BaslamaTarihi,e.BitisTarihi, et.tanimi tanimi, s.Tanimi SirketTanimi ,'+
          ' dbo.egitimCheckStateToTanim(e.EgitimKod,e.EgitimTuru) EgitimBilgi,'+
          ' EgitimCSGBGonderimSonuc '+
          ' from Egitimler e  left join egitimGrup_tnm et on et.Kod = e.EgitimTuru '+
          ' left outer join SIRKETLER_TNM s on s.SirketKod = e.SirketKod ';
     //     ' where e.BaslamaTarihi between ' +

    EgitimGrid.Dataset.Connection := datalar.ADOConnection2;
    EgitimGrid.Dataset.Active := false;
    EgitimGrid.Dataset.SQL.Text := sql;
    EgitimGrid.Dataset.Active := True;

  end
  else
  if TcxButtonKadir (Sender).ButtonName = 'btnEgitimciSil' then
  begin
   Egitimci.Dataset.Delete;
  end
  else
  if TcxButtonKadir (Sender).ButtonName = 'btnEgitimciEkle' then
  begin
      Egitimci.Dataset.Append;
      try
        Egitimci.Dataset.FieldByName('egitimciUnvan').AsString := vartostr(TcxTextEditKadir(FindComponent('EgitimciUnvan')).EditingValue);
        if IsNull (vartostr(TcxTextEditKadir(FindComponent('EgitimciTc')).EditingValue)) then
          Egitimci.Dataset.FieldByName('egitimciTC').Clear
         else
          Egitimci.Dataset.FieldByName('egitimciTC').AsString := vartostr(TcxTextEditKadir(FindComponent('EgitimciTc')).EditingValue);
        if IsNull (vartostr(TcxTextEditKadir(FindComponent('egitimciAdiSoyadi')).EditingValue)) then
          Egitimci.Dataset.FieldByName('egitimciAdiSoyadi').Clear
         else
          Egitimci.Dataset.FieldByName('egitimciAdiSoyadi').AsString := vartostr(TcxTextEditKadir(FindComponent('egitimciAdiSoyadi')).EditingValue);
        Egitimci.Dataset.FieldByName('Egitimid').AsString := TcxButtonEditKadir (FindComponent('id')).Text;
        Egitimci.Dataset.FieldByName('egitimciTuru').AsString := '2';
        Egitimci.Dataset.Post;
     except
        Egitimci.Dataset.Cancel;
        raise;
      end;
    Egitimci.Dataset.Active := False;
    Egitimci.Dataset.Active := True;
  end
  else
  if TcxButtonKadir (Sender).ButtonName = 'btnEgitimciListesi' then
  begin
    if IsNull (TcxButtonEditKadir (FindComponent('id')).Text) then
    begin
      ShowMessageSkin('Bu i�lem i�in e�itim kayd� se�meniz ya da ekrandaki bilgileri kaydetmeniz gerekir.', '', '', 'info');
      Exit;
    end;
    Egitimciler.Where :=
    '  durum = ''Aktif''';
    datalar.ButtonEditSecimlist := Egitimciler.ListeGetir;
    if length (datalar.ButtonEditSecimlist) > 0 then
    begin
      for i := Low (datalar.ButtonEditSecimlist) to High (datalar.ButtonEditSecimlist) do
      begin
        Egitimci.Dataset.Append;
        try
          Egitimci.Dataset.FieldByName('egitimciUnvan').AsString := DATALAR.ButtonEditSecimlist [i].kolon1;
          if IsNull (DATALAR.ButtonEditSecimlist [i].kolon2) then
            Egitimci.Dataset.FieldByName('egitimciTC').Clear
           else
            Egitimci.Dataset.FieldByName('egitimciTC').AsString := DATALAR.ButtonEditSecimlist [i].kolon2;
          if IsNull (DATALAR.ButtonEditSecimlist [i].kolon3) then
            Egitimci.Dataset.FieldByName('egitimciAdiSoyadi').Clear
           else
            Egitimci.Dataset.FieldByName('egitimciAdiSoyadi').AsString := DATALAR.ButtonEditSecimlist [i].kolon3;
          Egitimci.Dataset.FieldByName('Egitimid').AsString := TcxButtonEditKadir (FindComponent('id')).Text;
          Egitimci.Dataset.FieldByName('egitimciTuru').AsString := '1';
          Egitimci.Dataset.Post;
        except
          Egitimci.Dataset.Cancel;
          raise;
        end;
      end;
      Egitimci.Dataset.Active := False;
      Egitimci.Dataset.Active := True;
    end;

  end
  else
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
  try
    ado1 := TADOQuery.Create(nil);
    try
      ado.Connection := datalar.ADOConnection2;
      ado1.Connection := datalar.ADOConnection2;
      if TMenuItem (Sender).Tag = -40 then
      begin
        showmessageSkin ('C�SB Servisleri aktif de�il ya da servislere ula��lam�yor', '', '', 'info');
        Exit;
      end;
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
      ado1.free;
    end;
  finally
    ado.free;
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
    'from Egitimler e  left join egitimGrup_tnm et on et.Kod = e.EgitimTuru '+
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
  setDataStringB(self,'id','E�itim No.',Kolon1,'ababa',70,List,True,nil, 'tanimi', '', False, True, -100);
  setDataString(self,'EgitimCSGBGonderimSonuc','�SGB G�nderim Sonucu',Kolon1,'ababa',50, False, '', True);

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
  setDataStringKontrol(self,dateEdit, 'BaslamaTarihi','Ba�lama Zaman�',Kolon1,'tar',145);

  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  setDataStringKontrol(self,dateEdit, 'BitisTarihi','Biti� Tarihi',Kolon1,'tar',100);

  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  setDataStringKontrol(self,dateEdit, 'GecerlilikTarihi','Ge�erlilik Tarihi',Kolon1,'',100);

  setDataString(self,'Sure','S�re (Saat)',Kolon1,'',100);

(*
  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := Datalar.ADOConnection2;
  kombo.TableName := 'Egitimci_view';
  kombo.ValueField := 'tanimi1';
  kombo.DisplayField := 'tanimi2';
  kombo.BosOlamaz := True;
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'Egitimci','E�itimci 1',kolon1,'eg1',180);{}
  setDataString(self,'EgitimciX','Listede Olmayan E�itimci',Kolon1,'eg1',140, False, '', False, -100);

  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := Datalar.ADOConnection2;
  kombo.TableName := 'Egitimci_view';
  kombo.ValueField := 'tanimi1';
  kombo.DisplayField := 'tanimi2';
  kombo.BosOlamaz := True;
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'Egitimci2','E�itimci 2',kolon1,'eg2',180);{}
  setDataString(self,'Egitimci2X','Listede Olmayan E�itimci',Kolon1,'eg2',140, False, '', False, -100);
 *)

  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := nil;
  kombo.BosOlamaz := True;
  kombo.ItemList := '1;��,2;D��';
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'EgitimTip','E�itim Tipi',kolon1,'',50);

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
  Egitimler.Properties.Columns := 4;
  Egitimler.Alignment := alCenterCenter;
  Egitimler.Conn := Datalar.ADOConnection2;
  Egitimler.TableName := 'egitim_tnm';
  Egitimler.ValueField := 'kod';
  Egitimler.DisplayField := 'tanimi';
  Egitimler.tumuSecili := False;
  Egitimler.OrderField := value;
  Egitimler.Filter := ' grup = -1';// grup = ' + ifThen(_value_ = '','0',_value_);
  setDataStringKontrol(self,Egitimler,'Egitimkod','E�itimler',kolon1,'',450,140);
  Egitimler.Caption := '';


  //setDataStringC(self,'EgitimTuru','E�itim T�r�',Kolon1,'',100, '�� E�itim,D�� E�itim,Di�er');
  setDataString(self,'EgitimYeri','E�itim Yeri',Kolon1,'',100);
  setDataString(self,'SertifikaNo','Sertifika No.',Kolon1,'',100);
  setDataStringMemo(self,'EgitimIcerigi','E�itim A��klama',Kolon1,'',400, 60);
  setDataString(self,'EgitimUcreti','E�itim �creti',Kolon1,'ecr',100);
  setDataString(self,'EgitimUcretParaBirimi','Para Birimi',Kolon1,'ecr',50);

  kombo := TcxImageComboKadir.Create(self);
  kombo.Conn := nil;
  kombo.BosOlamaz := True;
  kombo.ItemList := '0;Hay�r,1;Evet';
  kombo.Filter := '';
  OrtakEventAta(kombo);
  setDataStringKontrol(self,kombo,'EgitimUcretiOdendi','�dendi mi?',kolon1,'ecr',100);


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


  setDataString(self,'EgitimciUnvan','�nvan�',Sayfa3_Kolon1,'ad',70,false,'',false,-1);
  setDataString(self,'EgitimciTc','Tc',Sayfa3_Kolon1,'ad',100,false,'',false,-1);
  setDataString(self,'egitimciAdiSoyadi','Ad� Soyad�',Sayfa3_Kolon1,'ad',150,false,'',false,-1);
  addButton(self,nil,'btnEgitimciEkle','','Ekle',Sayfa3_Kolon1,'ad',50,ButtonClick,20);
  addButton(self,nil,'btnEgitimciSil','','Sil',Sayfa3_Kolon1,'ad',50,ButtonClick,20);

  addButton(self,nil,'btnEgitimciListesi','','Listeden Ekle',Sayfa3_Kolon1,'',100,ButtonClick,21);


  setDataStringKontrol(self,Egitimci,'Egitimci','',sayfa3_kolon1,'',425,300);


  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  dateEdit.Tag := -1;
  setDataStringKontrol(self,dateEdit, 'ilkTarih','Ba�lang�� Tarihi',sayfa4_kolon1,'btar',100);
  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  dateEdit.Tag := -1;
  setDataStringKontrol(self,dateEdit, 'sonTarih','Biti� Tarihi',sayfa4_kolon1,'btar',100);
  addButton(self,nil,'btnEgitimListele','','E�itim Bilgilerini Getir',sayfa4_kolon1,'btar',120,ButtonClick,30);

  addButton(self,nil,'btnEgitimGonder','','E�itim Bilgisini G�nder',sayfa4_kolon1,'btar',120,ButtonClick,30);
  addButton(self,nil,'btnEgitimXml','','Veri Xml Olarak G�ster',sayfa4_kolon1,'btar',120,ButtonClick,30);
  addButton(self,nil,'btnEgitimSonucDetay','','G�nderim Sonu� Detay',sayfa4_kolon1,'btar',120,ButtonClick,30);

  setDataStringKontrol(self,EgitimGrid,'EgitimGrid','',sayfa4_kolon1,'',840,400);


  Menu := PopupMenu1;
  //setDataStringC(self,'EgitimUcretiOdendi','�dendi mi?',Kolon1,'',100, 'Evet,Hay�r');





  Disabled(self,True);
  TcxDateEditKadir(FindComponent('ilkTarih')).Enabled := True;
  TcxDateEditKadir(FindComponent('sonTarih')).Enabled := True;
  TcxGridKadir(FindComponent('EgitimGrid')).Enabled := True;

  SayfaCaption('E�itim Bilgileri', 'E�itime Kat�lan Personeller', 'E�itimci Bilgileri', 'E�itim CSGB G�nder', '');
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

function TfrmPersonelEgitim.GetEgitimEgitimciSQL: String;
var
  sIDText : String;
begin
  if IsNull (TcxButtonEditKadir (FindComponent('id')).Text) then
    sIDText := 'is NULL'
   else
    sIDText := '= ' + TcxButtonEditKadir (FindComponent('id')).Text;
  Result := 'Select pe.* from Personel_Egitim_Egitimci pe '+
    ' where EgitimId ' + sIDText+ ' ' +
    ' order by egitimciAdiSoyadi';
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

  Egitimci.Dataset.Connection := DATALAR.ADOConnection2;
  Egitimci.Dataset.SQL.Text := GetEgitimEgitimciSQL;
  Egitimci.Dataset.Open;

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
  //xTExtObj1, xTExtObj2 : TcxTextEditKadir;
  //xComboObj1, xComboObj2 : TcxImageComboKadir;
  //sSQL : String;
  //xEvt11, xEvt12, xEvt21, xEvt22 : TNotifyEvent;
begin
 (* xTExtObj1 := TcxTextEditKadir (FindComponent('EgitimciX'));
  xComboObj1 := TcxImageComboKadir (FindComponent ('Egitimci'));
  xTExtObj2 := TcxTextEditKadir (FindComponent('Egitimci2X'));
  xComboObj2 := TcxImageComboKadir (FindComponent ('Egitimci2'));
  *)
  case TControl(sender).Tag  of
    0 : begin
    (*
      if (not IsNull (VarToStr (xTExtObj1.EditValue))
          and not IsNull (VarToStr (xComboObj1.EditValue)))
        or (not IsNull (VarToStr (xTExtObj2.EditValue))
          and not IsNull (VarToStr (xComboObj2.EditValue))) then
      begin
        ShowMessageSkin('Ayn� hizadaki E�itimci ve Listede Olmayan E�itimci kutular� ayn� anda doldurulmamal�'#13#10'- Birinci e�itimci 1. sat�ra, ikinci e�itimci 2. sat�ra'#13#10'- Listede varsa soldan se�ilerek, yoksa sa�da bir kereli�ine elle yaz�larak eklenmelidir.', '', '', 'info');
        Exit;
      end;
      *)
    end;
    end;
  BeginTrans (DATALAR.ADOConnection2);
  try
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
        (*
        if (not IsNull (VarToStr (xTExtObj1.EditValue))) or (not IsNull (VarToStr (xTExtObj2.EditValue))) then
        begin
          sqlRun.Edit;
          try
            if not IsNull (VarToStr (xTExtObj1.EditValue)) then
              sqlRun.FieldByName('Egitimci').AsString := VarToStr (xTExtObj1.EditValue);
            if not IsNull (VarToStr (xTExtObj2.EditValue)) then
              sqlRun.FieldByName('Egitimci2').AsString := VarToStr (xTExtObj2.EditValue);
            sqlRun.Post;
          except
            sqlRun.Cancel;
            raise;
          end;
          sSQL := xComboObj1.Filter;
          xComboObj1.Filter := '(1 = 2)';
          xComboObj1.Filter := sSQL;
          sSQL := xComboObj2.Filter;
          xComboObj2.Filter := '(1 = 2)';
          xComboObj2.Filter := sSQL;
          xEvt11 := xComboObj1.Properties.OnEditValueChanged;
          xEvt21 := xTExtObj1.Properties.OnEditValueChanged;
          xEvt12 := xComboObj2.Properties.OnEditValueChanged;
          xEvt22 := xTExtObj2.Properties.OnEditValueChanged;
          xComboObj1.Properties.OnEditValueChanged := nil;
          xTExtObj1.Properties.OnEditValueChanged := nil;
          xComboObj2.Properties.OnEditValueChanged := nil;
          xTExtObj2.Properties.OnEditValueChanged := nil;
          try
            if not IsNull (VarToStr (xTExtObj1.EditValue)) then
              xComboObj1.EditValue := VarToStr (xTExtObj1.EditValue);
            if not IsNull (VarToStr (xTExtObj2.EditValue)) then
              xComboObj2.EditValue := VarToStr (xTExtObj2.EditValue);
            xTExtObj1.EditValue := '';
            xTExtObj2.EditValue := '';
          finally
            xComboObj1.Properties.OnEditValueChanged := xEvt11;
            xTExtObj1.Properties.OnEditValueChanged := xEvt21;
            xComboObj2.Properties.OnEditValueChanged := xEvt12;
            xTExtObj2.Properties.OnEditValueChanged := xEvt22;
          end;
        end;
        *)
      end;
      2 : begin
        xObj := TcxButtonEditKadir (FindComponent('id'));
        xObj.Text := '';
        ResetDetayDataset;
      end;
    end;
  finally
    if cxKaydetResult then
      CommitTrans (DATALAR.ADOConnection2)
     else
      RollbackTrans (DATALAR.ADOConnection2);
  end;
end;

end.
