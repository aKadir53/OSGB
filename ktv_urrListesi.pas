unit ktv_urrListesi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, sBitBtn, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, adodb,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,kadir,KadirType,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridExportLink,
  cxClasses, cxGridCustomView, cxGrid, cxContainer, cxProgressBar, dxSkinsCore,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus, cxButtons, cxLabel,
  cxTextEdit, cxGroupBox, cxRadioGroup,GirisUnit,
   KadirLabel;

type
  TfrmKtvListesi = class(TGirisForm)
    pnlTitle: TPanel;
    pnlToolBar: TPanel;
    txtDonem: TDateTimePicker;
    pnlOnay: TPanel;
    txtinfo: TLabel;
    cxGrid2: TcxGridKadir;
    GridEkstre: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    txtDonem2: TDateTimePicker;
    DataSource1: TDataSource;
    GridEkstreColumn1: TcxGridDBColumn;
    GridEkstreColumn2: TcxGridDBColumn;
    GridEkstreColumn3: TcxGridDBColumn;
    GridEkstreColumn4: TcxGridDBColumn;
    GridEkstreColumn5: TcxGridDBColumn;
    GridEkstreColumn6: TcxGridDBColumn;
    cxprogres: TcxProgressBar;
    GridEkstreColumn7: TcxGridDBColumn;
    DiyalizTip: TcxRadioGroup;
    GridEkstreColumn8: TcxGridDBColumn;
    pnlKtv: TcxGroupBox;
    txtKtv: TcxTextEdit;
    txtUrr: TcxTextEdit;
    txtCaxp: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxButtonKaydet: TcxButton;
    cxButtonIptal: TcxButton;
    chkKtv: TcxRadioGroup;
    PopupMenu1: TPopupMenu;
    K1: TMenuItem;
    E1: TMenuItem;
    D1: TMenuItem;
    cxBtnListele: TcxButtonKadir;
    ADO_KTV: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridEkstreDblClick(Sender: TObject);
    procedure cxButtonIptalClick(Sender: TObject);
    procedure cxButtonKaydetClick(Sender: TObject);
    procedure DiyalizTipPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);
    procedure Hesapla;
    procedure cxBtnListeleClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKtvListesi: TfrmKtvListesi;
  ado : TADOQuery;
  d,g : string;

implementation
     uses data_modul;
{$R *.dfm}

procedure TfrmKtvListesi.Hesapla;
var
  sql : string;
  ado2,ado1 : TADOQuery;
  ktvHesap : string;
begin
  if mrYes = ShowMessageSkin('Ktv,URR,CaxP,Düzenlenmil Ca deðerleri hesaplanacak','Test Sonuçlarýnýn ve giriþ çýkýþ kilolarýnýn girili olmasý gereklidir','Devam Edilsinmi','msg' )
  Then Begin
        sql := 'select dosyaNo,gelisNo from gelisler ' +
               'where bhdat between ' + QuotedStr(tarihal(txtDonem.Date))   + ' and ' + QuotedStr(tarihal(txtDonem2.Date));

        ado2 := TADOQuery.Create(nil);
        ado1 := TADOQuery.Create(nil);

        datalar.QuerySelect(ado,sql);

        cxprogres.Visible := true;
        cxprogres.Properties.Max := ado.RecordCount;
        txtinfo.Caption := 'Ýþlem Yapýlýyor..';


        ktvHesap := chkKtv.Properties.Items[chkKtv.ItemIndex].Value;//            'D2' else ktvHesap := 'D';

        while not ado2.Eof do
        begin
          Application.ProcessMessages;
          try
            sql := 'sp_KtvHesapla ' + QuotedStr(ado2.Fields[0].AsString) + ',' + ado2.Fields[1].AsString + ',' + QuotedStr(ktvHesap);
            datalar.QueryExec(ado1,sql);
          except
          end;
          cxprogres.Position := cxprogres.Position + 1;
          ado2.Next;
        end;

        ShowMessageSkin('Hesaplamalar Yapýldý','','','info');

        ado2.Free;
        ado1.Free;
        cxprogres.Visible := false;
       txtinfo.Caption := '.';
  End;

end;


procedure TfrmKtvListesi.cxButtonKaydetClick(Sender: TObject);
var
  sql : string;
  ado1 : TADOQuery;
begin
  ado1 := TADOQuery.Create(nil);

  sql := 'update LabSonucDegerlendirme ' +
         ' set Kt_v = ' + StringReplace(txtKtv.Text,',','.',[rfReplaceAll]) +
         ',urr = ' + StringReplace(txturr.Text,',','.',[rfReplaceAll]) +
         ',caXP = ' + StringReplace(txtCaxp.Text,',','.',[rfReplaceAll]) +
         ' where dosyaNo = ' + QuotedStr(d) + ' and gelisNo = ' + g;
  datalar.QueryExec(ado1,sql);
  ado1.Free;

  pnlKtv.Visible := false;
  //sBitBtn1.Click;


end;

procedure TfrmKtvListesi.cxButtonCClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmKtvListesi.cxButtonIptalClick(Sender: TObject);
begin
  pnlKtv.Visible := false;

end;

procedure TfrmKtvListesi.cxBtnListeleClick(Sender: TObject);
var
  sql : string;
begin
   sql := ' exec sp_KtvListesi ' + QuotedStr(tarihal(txtDonem.Date)) + ',' +
                                   QuotedStr(tarihal(txtDonem2.DateTime)) +
                                   ',@tip = ' + QuotedStr(DiyalizTip.EditValue);
   datalar.QuerySelect(ADO_KTV,sql);
end;

procedure TfrmKtvListesi.cxKaydetClick(Sender: TObject);
var
   Dosya : string;
begin
inherited;
//
   case Tcontrol(sender).Tag of
   -3 : begin
          hesapla;
        end;
   end;
end;

procedure TfrmKtvListesi.DiyalizTipPropertiesChange(Sender: TObject);
begin
(*   if DiyalizTip.EditValue = 'H'
   then
     btnKtv.Enabled := true
   else
     btnKtv.Enabled := false;
  *)
end;

procedure TfrmKtvListesi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    ado.Free;
  except
  end;


end;

procedure TfrmKtvListesi.FormCreate(Sender: TObject);
begin
  inherited;
  Tag := TagfrmKtvListesi;
//  ClientHeight := formYukseklik;
//  ClientWidth := formGenislik;

  TableName := '';
  cxPanel.Visible := false;
  cxTab.Width := 200;
  SayfaCaption('Kt/v - Urr','','','','');
  Olustur(self,'','Kt/V Urr Listesi',23);
  Menu := PopupMenu1;
end;

procedure TfrmKtvListesi.GridEkstreDblClick(Sender: TObject);
begin
   pnlKtv.Visible := True;
   d := ADO_KTV.FieldByName('dosyaNo').AsString;
   g := ADO_KTV.FieldByName('gelisNo').AsString;
   txtKtv.SetFocus;
end;

end.
