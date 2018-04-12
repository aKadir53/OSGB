unit Tnm_LabTest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,
  GirisUnit,Data_Modul, cxDropDownEdit, cxImageComboBox, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxSkinsCore, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters;



type
  TfrmLabTest = class(TGirisForm)
    cxImageComboBox1: TcxImageComboBox;
    cxImageComboBox2: TcxImageComboBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    NormalDeger: TADOTable;
    DataSource1: TDataSource;
    NormalDegercinsiyet: TStringField;
    NormalDegeryas1: TIntegerField;
    NormalDegeryas2: TIntegerField;
    NormalDegernormal1: TFloatField;
    NormalDegernormal2: TFloatField;
    NormalDegeraciklama: TWideStringField;
    NormalDegerndSira: TIntegerField;
    cxGrid1DBTableView1ndSira: TcxGridDBColumn;
    cxGrid1DBTableView1cinsiyet: TcxGridDBColumn;
    cxGrid1DBTableView1yas1: TcxGridDBColumn;
    cxGrid1DBTableView1yas2: TcxGridDBColumn;
    cxGrid1DBTableView1normal1: TcxGridDBColumn;
    cxGrid1DBTableView1normal2: TcxGridDBColumn;
    cxGrid1DBTableView1aciklama: TcxGridDBColumn;
    NormalDegertestkodu: TWideStringField;
    cxButtonEditKadir1: TcxButtonEditKadir;
    cxImageComboBox3: TcxImageComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    procedure NormalDegerBeforePost(DataSet: TDataSet);
    procedure cxTextEditBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

const _TableName_ = 'LabTestler';
      formGenislik = 600;
      formYukseklik = 400;

var
  frmLabTest: TfrmLabTest;


implementation
    uses AnaUnit;
{$R *.dfm}



procedure TfrmLabTest.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  NormalDeger.Active := true;
  NormalDeger.Filter := 'testKodu = ' + QuotedStr(TcxButtonEditKadir(sender).Text);
end;

procedure TfrmLabTest.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmLabTest.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmLabTest.cxTextEditBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//
end;

procedure TfrmLabTest.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmLabTest.FormCreate(Sender: TObject);
var
  List,List1 : TListeAc;
begin
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  indexFieldName := 'butKodu';
  TableName := _TableName_;

  Olustur(self,_TableName_,'Test Taným',22);

  List := TListeAc.Create(nil);
  List.Table := 'LabTestler';
  List.Kolonlar.Create;
  List.Kolonlar.Add('butKodu');
  List.Kolonlar.Add('tanimi');
  List.Kolonlar.Add('sira');
  List.Kolonlar.Add('UygulamaSuresi');
  List.KolonBasliklari.Create;
  List.KolonBasliklari.Add('Test Kodu');
  List.KolonBasliklari.Add('Test Adi');
  List.KolonBasliklari.Add('Sira');
  List.KolonBasliklari.Add('Uy.Per');
  List.TColcount := 4;
  List.TColsW := '50,200,50,50';
  List.ListeBaslik := 'Testler';
  List.Name := 'butkodu';
  List.SiralamaKolonu := 'Sira';
  List.Conn := Datalar.ADOConnection2;
  List.SkinName := AnaForm.dxSkinController1.SkinName;

  setDataStringB(self,'butKodu','Test Kodu',Kolon1,'',200,List,True,cxButtonEditKadir1,'tanimi');
 // setDataStringKontrol(self,cxButtonEdit1, 'butKodu','Test Kodu',Kolon1,'',200);
  setDataString(self,'tanimi','Test Tanýmý',Kolon1,'',250);
  setDataString(self,'sira','Sira',Kolon1,'',100);

  setDataStringKontrol(self,cxImageComboBox2, 'uygulamaSuresi','Uygulama',Kolon1,'',200);

  setDataString(self,'uygulamaAdet','Adet',Kolon1,'',100);
  setDataStringKontrol(self,cxImageComboBox1, 'tip','Test Tipi',Kolon1,'',200);
  setDataString(self,'SGKTip','Sgk Tip',Kolon1,'',150);
  setDataString(self,'Birim','Birim',Kolon1,'',150);

  setDataString(self,'islemKodu','Ent.Kodu Giriþ',Kolon1,'gc',150);
  setDataString(self,'islemKoduC','Ent.Kodu Çýkýþ',Kolon1,'gc',150);

  setDataStringKontrol(self,cxImageComboBox3, 'SonucTip','Sonuç Tipi',Kolon1,'',200);


  List1 := TListeAc.Create(nil);
  List1.Table := 'LAB_GRUP_TNM';
  List1.Kolonlar.Create;
  List1.Kolonlar.Add('kod');
  List1.Kolonlar.Add('tanimi');
  List1.KolonBasliklari.Create;
  List1.KolonBasliklari.Add('Grup Kodu');
  List1.KolonBasliklari.Add('Grup Adi');
  List1.TColcount := 2;
  List1.TColsW := '50,200';
  List1.ListeBaslik := 'Testler';
  List1.Name := 'kod';
  List1.Conn := Datalar.ADOConnection2;
  List1.SkinName := AnaForm.dxSkinController1.SkinName;

  setDataStringB(self,'grupkodu','Test Grubu',Kolon1,'grb',200,List1,false,nil,'tanimi');
  setDataStringBLabel(self,'grupkodu',Kolon1,'grb',200);


  setDataStringBLabel(self,'Test_Referanslari',Kolon1,'',200);
  setDataStringKontrol(self,cxGRid1, 'NormalDegerGrid','Referans Deðerleri',Kolon1,'',350);

  tableColumnDescCreate;

  //  NormalDeger.Active := true;
  NormalDeger.Filtered := True;


 end;





procedure TfrmLabTest.NormalDegerBeforePost(DataSet: TDataSet);
begin
  inherited;
  NormalDeger.FieldByName('testKodu').AsString :=
  TcxButtonEditKadir(FindComponent('butKodu')).Text;
end;

procedure TfrmLabTest.cxKaydetClick(Sender: TObject);
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
