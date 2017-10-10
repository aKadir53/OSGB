unit receteSablonlari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, StdCtrls, Buttons, sBitBtn, ExtCtrls, DB, ADODB,
  DBCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,kadir,
  cxContainer, cxEdit, cxGroupBox, GirisUnit,KadirType,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, GridsEh,
  Vcl.Menus, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters;

type
  TfrmReceteSablon = class(TGirisForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh3: TDBGridEh;
    Sablonlar: TADOTable;
    SablonDetay: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    cxGroupBox1: TcxGroupBox;
    DBGridEh1: TDBGridEh;
    cxGroupBox2: TcxGroupBox;
    DBGridEh2: TDBGridEh;
    IlacAciklama: TADOTable;
    DataSource3: TDataSource;
    cxGroupBox3: TcxGroupBox;
    DBGridEh4: TDBGridEh;
    Aciklama: TADOTable;
    DataSource4: TDataSource;
    cxGroupBox4: TcxGroupBox;
    DBGridEh5: TDBGridEh;
    Tani: TADOTable;
    DataSource5: TDataSource;
    PopupMenu1: TPopupMenu;
    S1: TMenuItem;
    K1: TMenuItem;
    procedure btnSendClick(Sender: TObject);
    procedure TabloAc(doktor : string);
    procedure FormCreate(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReceteSablon: TfrmReceteSablon;

implementation
  uses data_modul;

{$R *.dfm}

procedure TfrmReceteSablon.TabloAc(doktor : string);
begin
 // Sablonlar.Filter := 'doktor = ' + QuotedStr(doktor);
  Sablonlar.Active := true;
  SablonDetay.Active := true;
  IlacAciklama.Active := true;
  Aciklama.Active := true;
  Tani.Active := true;

end;

procedure TfrmReceteSablon.btnSendClick(Sender: TObject);
begin
  Sablonlar.Active := false;
  SablonDetay.Active := false;
  IlacAciklama.Active := false;
  Tani.Active := false;

  close;

end;

procedure TfrmReceteSablon.cxKaydetClick(Sender: TObject);
begin
inherited;
//
end;

procedure TfrmReceteSablon.FormCreate(Sender: TObject);
begin
  inherited;
  Tag := TagfrmTedaviBilgisi;

  cxPanel.Visible := false;
  SayfaCaption('','','','','');
  Olustur(self,'','Reçete Þablonlarý',23);
  Menu := PopupMenu1;

  Sablonlar.Active := true;
  SablonDetay.Active := true;
  IlacAciklama.Active := true;
  Tani.Active := true;

end;

procedure TfrmReceteSablon.S1Click(Sender: TObject);
var
  sql : string;
  ado : TADOQuery;
begin
       if MrYes = ShowMessageSkin('Þablon Ýptal Ediliyor Eminmisiniz ?','','','msg')
       Then Begin
       try
         ado := TADOQuery.Create(nil);
         sql := 'delete from receteTaniSablon where ReceteID = ' + Sablonlar.fieldbyname('Id').AsString;
         datalar.QueryExec(ado,sql);
         sql := 'delete from receteAciklamaSablon where ReceteID = ' + Sablonlar.fieldbyname('Id').AsString;
         datalar.QueryExec(ado,sql);
         sql := 'delete from ReceteDetaySablon where ReceteID = ' + Sablonlar.fieldbyname('Id').AsString;
         datalar.QueryExec(ado,sql);
         Sablonlar.Delete;
         ShowMessageSkin('Þablon Ýptal Edildi','','','info');
       except
       end;
        ado.Free;
       End;
end;

end.
