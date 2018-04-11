unit HastaDiyalizIzlem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,KadirLabel,GirisUnit,KadirType,Kadir,TedaviKart,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, dxSkinscxPCPainter,Adodb,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxPC, cxGroupBox, cxImageComboBox,strUtils,
  cxDBLookupComboBox, cxLabel, cxMemo, cxLookupEdit, cxDBLookupEdit,
  cxCurrencyEdit, Vcl.StdCtrls, Vcl.Buttons, cxCheckBox,
  Vcl.ExtCtrls,  cxButtons, cxDBEdit, Menus, AdvMemo, cxCheckListBox;

type
  TfrmHastaDiyalizIzlem = class(TfrmTedaviBilgisi)
    PopupMenu1: TPopupMenu;
    cxIlacTedaviPanel: TcxGroupBox;
    ADO_Tetkikler: TADOQuery;
    DataSource8: TDataSource;
    frmHastaIlacTedavi_cxGroupBox1: TcxGroupBox;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    K: TcxStyle;
    Yesil_siyah: TcxStyle;
    Sari_Siyah: TcxStyle;
    K1: TMenuItem;
    ADO_TetkikDegerlendir: TADOQuery;
    DataSource1: TDataSource;
    Tetkikler: TListeAc;
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGroupBoxAnemi: TcxGroupBox;
    txtAnemi: TcxCheckListBox;
    cxGroupBoxAciklama: TcxGroupBox;
    txtDAciklama: TcxMemo;
    cxGroupBoxSinekalset: TcxGroupBox;
    txtSinekalset: TcxComboBox;
    cxGroupBoxAntihiper: TcxGroupBox;
    txtAntihipertansif: TcxComboBox;
    cxGroupBoxAktifD: TcxGroupBox;
    txtDVitaminKul: TcxComboBox;
    cxGroupBoxTedaviSeyri: TcxGroupBox;
    txtedaviSeyri: TcxComboBox;
    cxGroupBoxFosfor: TcxGroupBox;
    txtFosfor: TcxCheckListBox;
    cxTabSheet1: TcxTabSheet;
    cxGroupBoxEpikrizAck: TcxGroupBox;
    txtAciklama: TAdvMemo;
    K2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ItemClick(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxGridIlacTedaviPlaniStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxBtnHesapKaydetClick(Sender: TObject);
    procedure TedaviIzlemGetir;
    procedure gelisSikayetSec(cL : TcxCheckListBox ; c : string);
    function gelisSikayetSecili(c : TcxCheckListBox) : string;
    procedure cxButtonCClick(Sender: TObject);
    procedure Kaydet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const _TableName_ = 'Hareketler';
      formGenislik = 600;
      formYukseklik = 600;
var
  frmHastaDiyalizIzlem: TfrmHastaDiyalizIzlem;


implementation
      uses Data_Modul,AnaUnit;
{$R *.dfm}

procedure TfrmHastaDiyalizIzlem.Kaydet;
var
  ado : TADOQuery;
begin
  sql := 'update gelisler ' +
         ' set aciklama = ' + ifThen(trimleft(txtAciklama.lines.Text) = '' , 'NULL', QuotedStr(trimleft(txtAciklama.lines.Text))) +
       //  ',OrnekNo = ' + QuotedStr(txtOrnekNo.Text) +
       //  ',CikisOrnekNo = ' + QuotedStr(txtOrnekNoCikis.Text) +
         ',DVitamin = ' + QuotedStr(txtDVitaminKul.text) +
         ',Anemi = ' + QuotedStr(gelisSikayetSecili(txtAnemi)) +
         ',tedaviSeyri = ' + QuotedStr(txtedaviSeyri.Text) +
         ',DVaciklama = ' + QuotedStr(txtDAciklama.Text) +
         ',Sinekalset = ' + QuotedStr(txtSinekalset.Text) +
         ',Antihipertansif = ' + QuotedStr(txtAntihipertansif.Text) +
         ',FosforBagAjan = ' + QuotedStr(gelisSikayetSecili(txtFosfor)) +
         ' where dosyaNO = ' + QuotedStr(_dosyaNo_) + ' and gelisNO = ' + _gelisNo_;
   datalar.QueryExec(ado,sql);

end;

function TfrmHastaDiyalizIzlem.gelisSikayetSecili(c : TcxCheckListBox) : string;
var
  r : integer;
  cs : string;
begin
    for r := 0 to c.Items.Count - 1 do
    begin
       if c.Items[r].Checked then cs := cs + inttostr(r) + ',';
    end;

    result := ';'+cs;

end;

procedure TfrmHastaDiyalizIzlem.gelisSikayetSec(cL : TcxCheckListBox ; c : string);
var
  r : integer;
  T : TStringList;
begin
    for r := 0 to cL.Items.Count - 1 do
    begin
       cL.Items[r].Checked := False;
    end;

    T := TStringList.Create;

    c := StringReplace(c,';','',[rfReplaceAll]);
    Split(',',c,T);

    for r := 0 to T.Count - 1 do
    begin
       if T[r] <> ''
       Then cL.Items[strtoint(T[r])].Checked := True;
    end;

    T.Free;

end;

procedure TfrmHastaDiyalizIzlem.TedaviIzlemGetir;
var
  sql : string;
begin
    sql := 'select * from gelisler where dosyaNO = ' + QuotedStr(_dosyaNo_) + ' and  gelisNO = ' + _gelisNo_;
    datalar.ADO_SQL.close;
    datalar.ADO_SQL.SQL.Clear;
    datalar.QuerySelect(datalar.ADO_SQL,sql);

    txtAciklama.Lines.Text := datalar.ADO_SQL.fieldbyname('aciklama').AsString;

    txtDVitaminKul.text  := datalar.ADO_SQL.fieldbyname('Dvitamin').AsString;
    txtSinekalset.Text := datalar.ADO_SQL.fieldbyname('Sinekalset').AsString;
    txtAntihipertansif.Text := datalar.ADO_SQL.fieldbyname('Antihipertansif').AsString;

    try
      gelisSikayetSec(txtFosfor,datalar.ADO_SQL.fieldbyname('FosforBagAjan').AsString);

      gelisSikayetSec(txtAnemi,datalar.ADO_SQL.fieldbyname('Anemi').AsString);
    //  txtAnemi.Text := datalar.ADO_SQL.fieldbyname('Anemi').AsString;
    except
    end;

    if txtDVitaminKul.Text = '1 - Ihtiyacý Yok'
    Then txtDVitaminKul.Style.Color := clWhite
    Else txtDVitaminKul.Style.Color := clYellow;

   (*
    if txtAnemi.Text = '1 - Tedaviye ihtiyacý yok'
    Then txtAnemi.Style.Color := clWhite
    Else txtAnemi.Style.Color := clYellow;
     *)

    if txtAntihipertansif.Text = '1 - Kullanmýyor'
    Then txtAntihipertansif.Style.Color := clWhite
    Else txtAntihipertansif.Style.Color := clYellow;


    if txtSinekalset.Text = '2 - Kullanmýyor'
    Then txtSinekalset.Style.Color := clWhite
    Else txtSinekalset.Style.Color := clYellow;

    txtedaviSeyri.Text := datalar.ADO_SQL.fieldbyname('tedaviSeyri').AsString;
    txtDAciklama.Text := datalar.ADO_SQL.fieldbyname('DVaciklama').AsString;

 //   _Tarih_ := datalar.ADO_SQL.fieldbyname('bhdat').AsString;

   // txtCa.Text := datalar.ADO_SQL.fieldbyname('Ca').AsString;

    datalar.ADO_SQL.close;

    ado_tetkikDegerlendir.SQL.Clear;
    sql := 'select dosyaNo,gelisNo,Uyarý as uyari,Onay from HastaTedaviUyari where dosyaNo = ' + QuotedStr(_dosyaNo_) + ' and gelisNo = ' + _gelisNo_;
    datalar.QuerySelect(ado_tetkikDegerlendir,sql);



end;


procedure TfrmHastaDiyalizIzlem.cxKaydetClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmHastaDiyalizIzlem.ItemClick(Sender: TObject);
begin
    case TMenuItem(sender).Tag of
   -1,-3,-6,-12 : begin
                   // GrupTetkikEkle(TMenuItem(sender).Tag);
                  end;
    -2 : begin
         // TetkikSil;
         end;
    -4 : begin
          // Kantetkikleri(_dosyaNO_,datalar.HastaBil.Tarih);
         end;
    -5 : begin

         end;
    -20 : begin
          //  KTVHesapListe;
          end;
    -21 : begin
           // KanTetkikleriDegerlendir(_dosyaNO_,_gelisNO_);
          end;
    -22 : begin
          // TetkikEkle;
          end;


    end;
end;

procedure TfrmHastaDiyalizIzlem.cxBtnHesapKaydetClick(Sender: TObject);
begin
  inherited;
      ADO_TetkikDegerlendir.Post;
end;

procedure TfrmHastaDiyalizIzlem.cxButtonCClick(Sender: TObject);
begin
  inherited;

    case TMenuItem(sender).Tag of
   -1 : begin
           Kaydet;
        end;
    -2 : begin
         // TetkikSil;
         end;
    -4 : begin
          // Kantetkikleri(_dosyaNO_,datalar.HastaBil.Tarih);
         end;
    -5 : begin

         end;
    -20 : begin
          //  KTVHesapListe;
          end;
    -21 : begin
           // KanTetkikleriDegerlendir(_dosyaNO_,_gelisNO_);
          end;
    -22 : begin
          // TetkikEkle;
          end;


    end;


end;

procedure TfrmHastaDiyalizIzlem.cxGridIlacTedaviPlaniStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
   if (ARecord.Values[1] = '0')
   Then begin
    AStyle := K;
   end;

   if (ARecord.Values[13] = '0')
   Then begin
    AStyle := Sari_Siyah;
   end;

   if (ARecord.Values[13] = '1')
   Then begin
    AStyle := Yesil_Siyah;
   end;
end;

procedure TfrmHastaDiyalizIzlem.FormCreate(Sender: TObject);
var
  index,i : integer;
  Ts,Ts1 : TStringList;
  List,List1 : TListeAc;
begin
 //cxYeni.Visible := false;
  inherited;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  TableName := _TableName_;
  cxPanel.Visible := false;
  SayfaCaption('Tetkikler','','','','');
  Olustur(self,_TableName_,'Diyaliz Izlem',23);
  Menu := PopupMenu1;



end;

end.
