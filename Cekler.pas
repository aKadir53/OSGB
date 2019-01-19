unit Cekler;

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
  cxGrid, cxPC, cxCurrencyEdit;



type
  TfrmCekler = class(TGirisForm)
    PersonelList: TListeAc;
    PopupMenu1: TPopupMenu;
    Y1: TMenuItem;
    GridCek: TcxGridKadir;
    GridCekler: TcxGridDBBandedTableView;
    GridCekLevel1: TcxGridLevel;
    DataSource1: TDataSource;
    E1: TMenuItem;
    GridCeklerid: TcxGridDBBandedColumn;
    GridCeklerTarih: TcxGridDBBandedColumn;
    GridCeklerVadeTarihi: TcxGridDBBandedColumn;
    GridCeklertutar: TcxGridDBBandedColumn;
    GridCekleraciklama: TcxGridDBBandedColumn;
    GridCeklerTip: TcxGridDBBandedColumn;
    GridCeklerDurum: TcxGridDBBandedColumn;
    GridCeklersirketKod: TcxGridDBBandedColumn;
    GridCeklerTedarikciKod: TcxGridDBBandedColumn;
    GridCeklerkod: TcxGridDBBandedColumn;
    GridCeklertanimi: TcxGridDBBandedColumn;
    GridCeklerkimden: TcxGridDBBandedColumn;
    GridCeklerkime: TcxGridDBBandedColumn;
    T1: TMenuItem;
    GridCeklerevrakNo: TcxGridDBBandedColumn;
    E2: TMenuItem;
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
    procedure ResetDetayDataset;
    procedure CekTahsilatIptal(id,carid : string);
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'cari_Cekler';
      formGenislik = 600;
      formYukseklik = 600;
      insertCek = 'insert into cari_Cekler (evrakNo,VadeTarihi,sirketKod,TedarikciKod,tutar,Tip,Durum,Tarih,user_create,aciklama) ' +
                  ' values(%s,%s,%s,%s,%g,%s,%s,%s,%s,%s)';

var
  frmCekler: TfrmCekler;


implementation

uses StrUtils, TransUtils;

{$R *.dfm}

procedure TfrmCekler.CekTahsilatIptal(id,carid : string);
var
  sql : string;
  bTmm : Boolean;
begin
  try
    bTmm := False;
    BeginTrans (datalar.ADOConnection2);
    try
      sql := 'update cari_cekler set durum = 1 where id  = ' + id;
      datalar.QueryExec(sql);

      sql := 'delete from cariHareketler where id = ' + carid;
      datalar.QueryExec(sql);
      bTmm := True;
    finally
      if bTmm then
        CommitTrans (datalar.ADOConnection2)
       else
        RollbackTrans (datalar.ADOConnection2);
    end;
  except on e : Exception do
  begin
    ShowMessageSkin(e.Message,'','','info');
  end;
  end;
end;


procedure TfrmCekler.PropertiesEditValueChanged(Sender: TObject);
begin
//
end;

procedure TfrmCekler.ButtonClick(Sender: TObject);
begin
//
end;

procedure TfrmCekler.cxButtonCClick(Sender: TObject);
var
  fID ,sql : string;
begin
  inherited;

  case Tcontrol(sender).Tag of
  -20 : begin
           fID := GridCekler.DataController.DataSet.FieldByName('id').AsString;
           if mrYEs = ShowPopupForm('Çek Tahsilat Ekle',CekTahsilat,fID)
           then begin
           end;
        end;
  -21 : begin
          CekTahsilatIptal(GridCekler.DataController.DataSet.FieldByName('id').AsString,
                           GridCekler.DataController.DataSet.FieldByName('cariHareketid').AsString);
        end;
  -22 : begin
           if Tcontrol(sender).Tag = -23
           then begin
             datalar.Cek.evrakNo := GridCekler.DataController.DataSet.FieldByName('evrakNo').AsString;
             datalar.Cek.vade := GridCekler.DataController.DataSet.FieldByName('VadeTarihi').AsDateTime;
             datalar.Cek.tutar := GridCekler.DataController.DataSet.FieldByName('tutar').AsVariant;
             datalar.Cek.sirketKod := GridCekler.DataController.DataSet.FieldByName('sirketKod').AsString;
             datalar.Cek.tedarikciKod := GridCekler.DataController.DataSet.FieldByName('TedarikciKod').AsString;
             datalar.Cek.tip := GridCekler.DataController.DataSet.FieldByName('Tip').AsString;
             datalar.CEk.durum := GridCekler.DataController.DataSet.FieldByName('Durum').AsString;
           end
           else
           begin
             datalar.Cek.evrakNo := '';
             datalar.Cek.vade := date();
             datalar.Cek.tutar := 0;
             datalar.Cek.sirketKod := '';
             datalar.Cek.tedarikciKod := '';
             datalar.Cek.tip := '';
             datalar.CEk.durum := '';
           end;
           //datalar.Cek.banka
           if mrYEs = ShowPopupForm('Çek Tanýmla',yeniCek,'')
           then begin
              //evrakNo,VadeTarihi,sirketKod,kimden,TedarikciKod,kime,tutar,Tip,Durum,date_create,user_create
             (*
             try
              sql := Format(insertCek,
                                       [QuotedStr(datalar.Cek.evrakNo),
                                        QuotedStr(tarihal(datalar.Cek.vade)),
                                        ifThen(datalar.Cek.sirketKod <> '',QuotedStr(datalar.Cek.sirketKod),'null'),
                                        ifThen(datalar.Cek.TedarikciKod <> '',QuotedStr(datalar.Cek.TedarikciKod),'null'),
                                        datalar.Cek.tutar,
                                        QuotedStr(datalar.Cek.Tip),
                                        QuotedStr(datalar.Cek.Durum),
                                        QuotedStr(FormatDateTime('YYYY-MM-DD HH:NN:SS',now())),
                                        QuotedStr(datalar.username),
                                        QuotedStr(datalar.Cek.aciklama)]);

               datalar.QueryExec(sql);
             except on e : exception do
              begin
                ShowMessageSkin(e.Message,'','','info');
              end;
             end; *)
           end;


        end;


  end;
end;

procedure TfrmCekler.cxButtonEditPropertiesButtonClick(Sender: TObject;
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

procedure TfrmCekler.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmCekler.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmCekler.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmCekler.FormCreate(Sender: TObject);
begin
  cxPanel.Visible := false;
  TopPanel.Visible := true;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
  indexFieldName := 'id';
  TableName := _TableName_;

  _DataSource := DataSource1;
  Menu := PopupMenu1;
 // Olustur(self,_TableName_,'Personel Eðitimleri',22);


  KurumTipTopPanel.Conn := Datalar.ADOConnection2;
  KurumTipTopPanel.TableName := 'cari_CekDurum';
  KurumTipTopPanel.ValueField := 'Kod';
  KurumTipTopPanel.DisplayField := 'Tanimi';
  KurumTipTopPanel.BosOlamaz := False;
  KurumTipTopPanel.Filter := '';


  GridCekler.DataController.DataSource := DataSource;


  SayfaCaption('Çekler', '', '', '', '');
end;

function TfrmCekler.GetEgitimPersonelSQL: String;

begin

end;

function TfrmCekler.Init(Sender: TObject): Boolean;
begin
   TapPanelElemanVisible(True,True,True,false,false,false,True,false,False,false,False,false);
   result := True;
end;

procedure TfrmCekler.ResetDetayDataset;
begin

end;

procedure TfrmCekler.SayfalarChange(Sender: TObject);
begin
  //d
end;

procedure TfrmCekler.SayfalarPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  cxPanel.Visible := (newPage <> sayfa2);

end;

procedure TfrmCekler.cxKaydetClick(Sender: TObject);
var
  xObj : TcxButtonEditKadir;
begin
  //SirketKodx.Text := datalar.AktifSirket; giriþ formuna eklendi.
  inherited;
  //post ettikten sonra veritabanýndan Identity deðeri alýp edit kutusuna yazmasý için....
  case TControl(sender).Tag  of
    0 : begin
      xObj := TcxButtonEditKadir (FindComponent('id'));
      if IsNull (xObj.EditingValue) then
      begin
        xObj.Text := IntToStr (F_IDENTITY);

      end;
    end;
    2 : begin
      xObj := TcxButtonEditKadir (FindComponent('id'));
      xObj.Text := '';

    end;
  end;
end;

end.
