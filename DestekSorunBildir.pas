unit DestekSorunBildir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,adodb,strutils,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinMcSkin,
  cxDropDownEdit, cxMaskEdit, cxCalendar, cxTextEdit, cxGroupBox, cxRadioGroup,
  cxMemo, cxLabel, Menus, StdCtrls, cxButtons, cxCheckBox, ComCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,kadir, kadirType,
  IdExplicitTLSClientServerBase, IdFTP, cxProgressBar, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxImageComboBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxHyperLinkEdit,ShellApi, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue;

type
  TfrmDestekSorunBildir = class(TForm)
    Panel2: TPanel;
    txtSorunSahibi: TcxTextEdit;
    txtKurum: TcxTextEdit;
    txtZaman: TcxDateEdit;
    cxButton1: TcxButton;
    IdFTP1: TIdFTP;
    cxGroupBox1: TcxGroupBox;
    txtMesaj: TcxMemo;
    cxLabel5: TcxLabel;
    cxCheckBox1: TcxCheckBox;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    tip: TcxRadioGroup;
    txtEtki: TcxComboBox;
    txtPersonel: TcxTextEdit;
    txtKonu: TcxComboBox;
    txtAciliyet: TcxComboBox;
    cxGroupBox2: TcxGroupBox;
    cxGrid4: TcxGrid;
    gridSorunlar: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    DataSource5: TDataSource;
    Ado_Sql: TADOQuery;
    cxGroupBox3: TcxGroupBox;
    gridSorunlarkurumKodu: TcxGridDBColumn;
    gridSorunlarsorunBildirimTarihSaat: TcxGridDBColumn;
    gridSorunlarsorunId: TcxGridDBColumn;
    gridSorunlarsorunSahibi: TcxGridDBColumn;
    gridSorunlarsorunTipi: TcxGridDBColumn;
    gridSorunlarsorunAciliyeti: TcxGridDBColumn;
    gridSorunlarsorunTanimi: TcxGridDBColumn;
    gridSorunlarsorunAciklamasi: TcxGridDBColumn;
    gridSorunlarOzelKod1: TcxGridDBColumn;
    gridSorunlarOzelKod2: TcxGridDBColumn;
    gridSorunlardurum: TcxGridDBColumn;
    gridSorunlarilgilenenPersonel: TcxGridDBColumn;
    gridSorunlarfonksiyonelEtki: TcxGridDBColumn;
    gridSorunlarSorunIhtiyac: TcxGridDBColumn;
    gridSorunlarKonu: TcxGridDBColumn;
    gridSorunlarCozumTarih: TcxGridDBColumn;
    gridSorunlarmesaj: TcxGridDBColumn;
    gridSorunlarpuan: TcxGridDBColumn;
    gridSorunlarsecreen: TcxGridDBColumn;
    Panel1: TPanel;
    pb: TcxProgressBar;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxButton2: TcxButton;
    DataSource1: TDataSource;
    ADO_CVP: TADOQuery;
    cxGroupBox4: TcxGroupBox;
    cxGrid1: TcxGrid;
    gridCevaplar: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    gridCevaplarsorunId: TcxGridDBColumn;
    gridCevaplarid: TcxGridDBColumn;
    gridCevaplartarihSaat: TcxGridDBColumn;
    gridCevaplarDurum: TcxGridDBColumn;
    gridCevaplarAciklama: TcxGridDBColumn;
    gridCevaplarPersonel: TcxGridDBColumn;
    pnlCvp: TcxGroupBox;
    txtCvp: TcxMemo;
    cxLabel6: TcxLabel;
    txtCvpPersonel: TcxComboBox;
    cxLabel7: TcxLabel;
    cxButton4: TcxButton;
    gridCevaplarColumn1: TcxGridDBColumn;
    cxButton5: TcxButton;
    PopupMenu1: TPopupMenu;
    C1: TMenuItem;
    K1: TMenuItem;
    K2: TMenuItem;
    M1: TMenuItem;
    N1: TMenuItem;
    E1: TMenuItem;
    cxButton6: TcxButton;
    PopupMenu2: TPopupMenu;
    O1: TMenuItem;
    gridSorunlarColumn1: TcxGridDBColumn;
    gridSorunlarColumn2: TcxGridDBColumn;

    procedure IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure IdFTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure cxButton1Click(Sender: TObject);
    procedure SorunKaydet;
    procedure Sorunlar(kod : string;d1,d2 : string);
    procedure Cozumler;
    procedure cxButton2Click(Sender: TObject);
    procedure Ado_SqlAfterScroll(DataSet: TDataSet);
    procedure cxButton4Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure K2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Kapat(puan : string);
    procedure cxButton6Click(Sender: TObject);
    procedure O1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//C:\Program Files\TeamViewer\Version8\teamviewer.exe -i 18876347 --Password test -m fileTransfer

var
  frmDestekSorunBildir: TfrmDestekSorunBildir;
  sorunId, dosya,kurumkod : string;

implementation
 uses data_modul;
{$R *.dfm}

procedure TfrmDestekSorunBildir.Kapat(puan : string);
var
  sql : string;
  ado : TADOQuery;
begin
//  datalar.ADOConnection1.Connected := True;
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection1;
    try
      sql := 'update sorunlar set durum = 0 , puan =  ' + puan +
             ' where sorunId = ' + Ado_Sql.FieldByName('sorunId').AsString;

      datalar.QueryExec(ado,sql);
    except on e : Exception do
     begin
      ShowMessageSkin(e.Message,'','','info');
     end;
    end;
  finally
    ado.Free;
  end;
  cxButton2.Click;
end;

procedure TfrmDestekSorunBildir.O1Click(Sender: TObject);
var
  sql : string;
  ado : TADOQuery;
begin
//  datalar.ADOConnection1.Connected := True;
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection1;
    try
      sql := 'update sorunCozumSureci ' +
             ' set durum = 0 ' +
             ' where sorunId = ' + ado_CVP.FieldByName('sorunId').AsString;
      datalar.QueryExec(ado,sql);
    except on e : Exception do
     begin
      ShowMessageSkin(e.Message,'','','info');
     end;
    end;
  finally
    ado.Free;
  end;
  cozumler;
end;

procedure TfrmDestekSorunBildir.C1Click(Sender: TObject);
begin
  pnlCvp.Visible := True;

end;

procedure TfrmDestekSorunBildir.Cozumler;
var
  sql : string;
begin
   sql := 'select * from sorunCozumSureci where sorunId = ' +
         Ado_Sql.FieldByName('sorunId').AsString;
   datalar.QuerySelect(ADO_CVP,sql);
end;


procedure TfrmDestekSorunBildir.Sorunlar(kod : string;d1,d2 : string);
var
 sql : string;
begin
  //datalar.Login;
  cxDateEdit1.Date := tarihyap(d1);
  cxDateEdit2.Date := tarihyap(d2);
  try
    sql := 'select *,d.TalepOnayDurumu,d.YazilimGereksinimleri from sorunlar s '+
           ' left join SorunTalepTalepDegerlendirme d on s.sorunId = d.TalepId '  +
           ' where s.kurumKodu = ' +
           QuotedStr(datalar.osgbKodu) + ' and convert(varchar,sorunbildirimTarihSaat,112) ' +
           ' between ' + QuotedStr(d1) + ' and ' + QuotedStr(d2);
    datalar.QuerySelect(Ado_Sql,sql);
  except
  end;

end;

procedure TfrmDestekSorunBildir.SorunKaydet;
var
  sql  : string;
  ado : TADOQuery;
begin
//  datalar.ADOConnection1.Connected := True;

      if datalar.ADOConnection1.Connected = false
      then begin
           SQL_Host_Baglan;
           if DATALAR.ADOConnection1.Connected = false
           then begin
              exit;
           end;
      end;

  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection1;

  //  datalar.Login;

    try
      sql := 'insert into sorunlar (kurumkodu,sorunsahibi,sorunAciliyeti,sorunAciklamasi,' +
             'ilgilenenPersonel,fonksiyonelEtki,sorunIhtiyac,Konu,secreen,kullanici,Tip)' +
             ' values(' + QuotedStr(DATALAR.osgbKodu) + ','
                        + QuotedStr(datalar._merkezAdi) + ','
                        + inttostr(txtAciliyet.ItemIndex) + ','
                        + QuotedStr(txtMesaj.Text) + ','
                        + QuotedStr(txtPersonel.Text) + ','
                        + inttostr(txtEtki.ItemIndex) + ','
                        + QuotedStr(tip.Properties.Items[tip.ItemIndex].Value) + ','
                        + inttostr(txtKonu.ItemIndex) + ','
                        + QuotedStr(ifThen(cxCheckBox1.Checked,'1','0')) + ','
                        + QuotedStr(datalar.username) + ','
                        + QuotedStr('O') +

                        ') select SCOPE_IDENTITY() ';

      datalar.QuerySelect(ado,sql);

      if not ado.Eof
      Then
       sorunId := ado.Fields[0].AsString;

      if cxCheckBox1.Checked
      then begin
        dosya := 'secreen_'+sorunId + '.jpg';
        renameFile('C:\OSGB\screen.jpg','C:\OSGB\' + dosya);
        IdFTP1.Connect();
        Application.ProcessMessages;
        IdFTP1.Put('C:\OSGB\' + dosya ,'/httpdocs/secreen/' + dosya ,false);
        IdFTP1.Disconnect;
      end;

      ShowMessage('Bildiriminiz ' + sorunId + ' Nolu referans ile Yapýldý','','','info');
      try
       deletefile('C:\OSGB\' + dosya);
      except
      end;

    except on e : Exception do
     begin
        ShowMessage('Hata : '+ e.Message,'','','info');
     end;
    end;

    cxButton2.Click;
  finally
    ado.Free;
  end;
end;

procedure TfrmDestekSorunBildir.Ado_SqlAfterScroll(DataSet: TDataSet);
var
  sql : string;
begin
  cozumler;

end;

procedure TfrmDestekSorunBildir.cxButton1Click(Sender: TObject);
begin
  if txtKonu.ItemIndex < 1
  Then
   ShowMessageSkin('Bildirim Konusu Zorunludur','','','info')
  Else
  if length(txtMesaj.Text) = 0
  Then
   ShowMessageSkin('Bildirim Mesaj Zorunludur','','','info')
  Else
   sorunKaydet;
 //  close;
end;

procedure TfrmDestekSorunBildir.cxButton2Click(Sender: TObject);
begin
  sorunlar('',tarihal(cxDateEdit1.Date),tarihal(cxDateEdit2.Date));
end;

procedure TfrmDestekSorunBildir.cxButton4Click(Sender: TObject);
var
  sql : string;
  ado : TADOQuery;
begin
//  datalar.ADOConnection1.Connected := True;
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection1;
    try
      sql := 'insert into sorunCozumSureci (sorunId,durum,aciklama,personel,Taraf) ' +
             'values( ' + ado_sql.FieldByName('sorunId').AsString + ',' +
             '1,' +
             QuotedStr(txtCvp.Text) + ',' +
             inttostr(txtCvpPersonel.ItemIndex) + ',' +
             QuotedStr(datalar.osgbKodu) + ')';

      datalar.QueryExec(ado,sql);
      pnlCvp.Visible := false;
    except on e : Exception do
     begin
      ShowMessageSkin(e.Message,'','','info');
     end;
    end;
  finally
    ado.Free;
  end;
  cozumler;
end;

procedure TfrmDestekSorunBildir.cxButton6Click(Sender: TObject);
var
 filename : string;
 par : string;
begin
  inherited;
//  winexec(pansichar('c:\NoktaV3\AlpemixCMX.exe Mavinoktabilgitek diyalizler diyaliz123 ' + datalar._username),0);
  filename := 'c:\OSGB\AlpemixCMX.exe';
  par :=  'Mavinoktabilgitek diyalizler diyaliz123 ' +  StringReplace((copy(merkezAdi(''),1,15) + ' - ' + datalar.username),' ','_',[rfReplaceAll]);
  ShellExecute(Handle,'open', pwidechar(filename),
                pwidechar(par), nil, SW_SHOWNORMAL);
end;

procedure TfrmDestekSorunBildir.E1Click(Sender: TObject);
var
 url , id : string;
begin
  id := ado_sql.FieldByName('sorunId').AsString;
  url := 'http://www.noktayazilim.net/secreen/secreen_' + id + '.jpg';

  if ado_sql.FieldByName('secreen').AsString = '1'
  Then Begin
    ShellExecute(Handle,'Open',pchar(url),Nil,nil,SW_SHOWNORMAL);
  End;
end;

procedure TfrmDestekSorunBildir.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmDestekSorunBildir.FormCreate(Sender: TObject);
begin
  tag := TagfrmDestekTalep;
end;

procedure TfrmDestekSorunBildir.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE
  then close;

end;

procedure TfrmDestekSorunBildir.FormShow(Sender: TObject);
begin
  cxDateEdit1.Date := date;
  cxDateEdit2.Date := cxDateEdit1.Date;

end;

procedure TfrmDestekSorunBildir.IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
  panel1.Caption := 'Ekran Görüntüsü Yükleniyor';
  pb.Position := AWorkCount;
  Application.ProcessMessages;
end;

procedure TfrmDestekSorunBildir.IdFTP1WorkBegin(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
   pb.Visible := true;
   pb.Properties.Max := AWorkCountMax;
   Application.ProcessMessages;
end;

procedure TfrmDestekSorunBildir.IdFTP1WorkEnd(ASender: TObject;
  AWorkMode: TWorkMode);
begin
    panel1.Caption := '';
    pb.Position := 0;
    pb.Visible := false;
end;

procedure TfrmDestekSorunBildir.K2Click(Sender: TObject);
var
 p : integer;
 sql : string;
begin
  p := TMenuItem(sender).Tag;

  Kapat(inttostr(p));

end;

end.
