unit KurumLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,  Mask, EditType, ExtCtrls, kadir,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, dxSkinsCore,
  cxButtons, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, cxControls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, Data.Win.ADODB, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridLevel, cxGrid, KadirLabel,data_modul,GirisUnit, cxTextEdit,
  cxDropDownEdit,GetFormClass,KadirType;


type
  TfrmKurumBilgi = class(TGirisForm)
    cxGridKadir1Level1: TcxGridLevel;
    cxGridKadir1: TcxGridKadir;
    GridList: TcxGridDBBandedTableView;
    DataSource1: TDataSource;
    ADO_WebServisErisim: TADOQuery;
    GridListSLK: TcxGridDBBandedColumn;
    GridListid: TcxGridDBBandedColumn;
    GridListSLK_Tanimi: TcxGridDBBandedColumn;
    GridListSLB: TcxGridDBBandedColumn;
    GridListSLB_Tanimi: TcxGridDBBandedColumn;
    GridListValue: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    PopupMenu1: TPopupMenu;
    HastaKabulifreBilgileriniDeitir1: TMenuItem;
    DnemSonlandrmaifremiDei1: TMenuItem;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    procedure sBitBtn1Click(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ADO_WebServisErisimAfterScroll(DataSet: TDataSet);
    procedure SifreBilgisiDegis(Tag : integer);
    procedure ADO_WebServisErisimAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmKurumBilgi: TfrmKurumBilgi;
  mevcutSifre,mevcutSifreD : string;
implementation
  uses MedulaKurumSifreDegis;
{$R *.dfm}

procedure TfrmKurumBilgi.FormCreate(Sender: TObject);
begin
  Menu := PopupMenu1;
 // Olustur(self,_TableName_,'Kimlik Doðrula',71,sqlInsert);
  cxPanel.Visible := false;
  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;
  SayfaCaption('','','','','');
end;

function TfrmKurumBilgi.Init(Sender : TObject) : Boolean;
begin
  ADO_WebServisErisim.Active := True;
  GridList.ViewData.Expand(true);
  Result := True;
end;

procedure TfrmKurumBilgi.ADO_WebServisErisimAfterPost(DataSet: TDataSet);
begin
  inherited;
  datalar.login;
end;

procedure TfrmKurumBilgi.ADO_WebServisErisimAfterScroll(DataSet: TDataSet);
var
  ValueCombo,ValueObjeValues : String;
  ValuesCombo : TStringList;
begin
  if ADO_WebServisErisim.FieldByName('ValueObje').AsString = 'C'
  then begin
    ValuesCombo := TStringList.Create;
    try
      ValueObjeValues := ADO_WebServisErisim.FieldByName('ValueObjeValues').AsString;
      GridListValue.PropertiesClassName := 'TcxComboBoxProperties';
      TcxComboBoxProperties(GridListValue.Properties).Items.Clear;
      Split(',',ValueObjeValues,ValuesCombo);
      for ValueCombo in  ValuesCombo  do
      begin
        TcxComboBoxProperties(GridListValue.Properties).Items.Add(ValueCombo);
      end;
    finally
      ValuesCombo.Free;
    end;
  end
  else
    GridListValue.PropertiesClassName := 'TcxTextEditProperties';

end;

procedure TfrmKurumBilgi.cxButtonCClick(Sender: TObject);
var
  Form : TGirisForm;
  r : integer;
  dosyaNo : string;
begin
   inherited;
   SifreBilgisiDegis(Tcontrol(sender).Tag);
end;

procedure TfrmKurumBilgi.SifreBilgisiDegis(Tag : integer);
var
 sql : string;
 F : TGirisForm;
 GirisRecord : TGirisFormRecord;
begin
   (*
   if TurkCharKontrol(txtSifre.Text) = True
   then begin
      ShowMessageSkin('Türkçe Karakter Ýçermeyen Harf veya Rakam Giriniz','','','info');
      txtSifre.SetFocus;
      exit;
   end;
   if TurkCharKontrol(txtDonemSonlandirmaSifre.Text) = True
   then begin
      ShowMessageSkin('Türkçe Karakter Ýçermeyen Harf veya Rakam Giriniz','','','info');
      txtDonemSonlandirmaSifre.SetFocus;
      exit;
   end;
   *)

   F := FormINIT(TagKurumSifreDegisForm,GirisRecord,ikHayir,'');

   if Tag = -1
   then begin
     mevcutSifre := datalar.WebErisimBilgi('99','01');
     ADO_WebServisErisim.Post;

   //  txtSifreLog.Lines.Add(datetimetostr(now) + ' : Yeni Hasta Kabul Þifre : ' + txtSifre.Text);
   //  txtSifreLog.Lines.SaveToFile('SifreLog.txt');


     KurumSifreDegisForm.kullaniciAdi := datalar.WebErisimBilgi('99','00');
     KurumSifreDegisForm.sifre := datalar.WebErisimBilgi('99','01');
     KurumSifreDegisForm.mevcutSifre := mevcutSifre;
   end
   else
   begin
     mevcutSifreD := datalar.WebErisimBilgi('991','01');
     ADO_WebServisErisim.Post;

  //   txtSifreLog.Lines.Add(datetimetostr(now) + ' : Yeni Dönem Son. Þifre : ' + txtDonemSonlandirmaSifre.Text);
  //   txtSifreLog.Lines.SaveToFile('SifreLog.txt');

     KurumSifreDegisForm.kullaniciAdi := datalar.WebErisimBilgi('991','00');
     KurumSifreDegisForm.sifre := datalar.WebErisimBilgi('991','01');
     KurumSifreDegisForm.mevcutSifre := mevcutSifreD;
   end;

   KurumSifreDegisForm.WebBrowser1.Navigate(datalar.DonemSonlandir);
   if F <> nil then F.show;

end;

procedure TfrmKurumBilgi.FormShow(Sender: TObject);
begin
 inherited;
 (*
  mevcutSifre := txtSifre.Text;
  mevcutSifreD := txtDonemSonlandirmaSifre.Text;

  try
   txtSifreLog.Lines.LoadFromFile('SifreLog.txt');
  except end;

  txtSifreLog.Lines.Add(datetimetostr(now) + ' : Mevcut Hasta Kabul Þifre : ' + txtSifre.Text);
  txtSifreLog.Lines.Add(datetimetostr(now) + ' : Mevcut Döenm Son. Þifre : ' + txtDonemSonlandirmaSifre.Text);

  txtSifreLog.Lines.SaveToFile('SifreLog.txt');
  *)
end;

procedure TfrmKurumBilgi.sBitBtn1Click(Sender: TObject);
var
   sql , _durum : string;
begin
{
   if TurkCharKontrol(txtSifre.Text) = True
   then begin
      ShowMessageSkin('Türkçe Karakter Ýçermeyen Harf veya Rakam Giriniz','','','info');
      txtSifre.SetFocus;
      exit;
   end;
   if TurkCharKontrol(txtDonemSonlandirmaSifre.Text) = True
   then begin
      ShowMessageSkin('Türkçe Karakter Ýçermeyen Harf veya Rakam Giriniz','','','info');
      txtDonemSonlandirmaSifre.SetFocus;
      exit;
   end;

 if chkOtomatikGelsin.Checked
 then _durum := '1' else _durum := '0';

 try
    sql := 'update Parametreler set slb = ' + #39 + txtKurumKodu.Text + #39 +
           ',slt = ' + #39 + txtSifre.Text + #39 + ',SLVV = ' + #39 + txtDonemSonKullaniciAdi.Text + #39 +
           ',SLXX = ' + #39 + txtDonemSonlandirmaSifre.Text + #39 + ',SLZ = ' + _durum +
           ' where slk = ''99''';
    datalar.QueryExec(datalar.ADO_SQL2,sql);


    // Lab Entegrasyon

    sql := 'update Parametreler set ' +
           'slb = ' + #39 + txtLabKullanici.Text + #39 +
           ',SLt = ' + #39 + txtLAbSifre.Text + #39 +
           ',SLVV = ' + #39 + txtUrl.Text + #39 +
           ',SLXX = ' + QuotedStr(txtFirma.Text) +
           ',SLX = ' + txtLabKurumKod.Text +
           ',SLYY = ' + QuotedStr(txtLabKurumKodText.Text) +
           ',SLZZ = ' + QuotedStr(txtKontolKodu.Text) +
           ' where slk = ''LA''';
    datalar.QueryExec(datalar.ADO_SQL2,sql);


    // Saðlýk Net Bilgileri

    sql := 'update Parametreler set ' +
           'SLYY = ' + #39 + txtSaglikNetSKRS.Text + #39 + ',SLZZ = ' + #39 + txtSaglikNetUser.Text + #39 +
           ',SLXXX = ' + QuotedStr(txtsaglikNetpass.Text) +  ',SLXXv = ''1085''' +
           ' where slk = ''99''';
    datalar.QueryExec(datalar.ADO_SQL2,sql);

    sql := 'update Parametreler set ' +
           'SLYY = ' + #39 + txtDYOBKurumKodu.Text + #39 + ',SLZZ = ' + #39 + txtDYOBParola.Text + #39 +
           ',SLXX = ' + QuotedStr(txtDYOBServiceKod.Text) +
           ' where slk = ''DY''';
    datalar.QueryExec(datalar.ADO_SQL2,sql);

   (*
    sql := 'update Keydat set slt = ' + #39 + txtKullaniciAdi.Text + #39 +
           ' where slk = ''00'' and  slb = ''INT_GSADI''';
    datalar.QueryExec(datalar.ADO_SQL2,sql);

    sql := 'update Keydat set slt = ' + #39 + txtSifre.Text + #39 +
           ' where slk = ''00'' and  slb = ''INT_GSSSIF''';
     *)
   // datalar.QueryExec(datalar.ADO_SQL2,sql);

sql :=

            'if not exists(select SLB,SLT from parametreler where SLk = ''90'' and SLB = ''SNET2'') ' +
            'begin  ' +
            '  insert into parametreler(SLK,SLB,SLT,SLZZ,SLXXX) values(''90''' + ',' + QuotedStr('SNET2') + ',' + '1' + ',' + QuotedStr(txtSaglikNet2user.Text) + ',' + QuotedStr(txtSaglikNet2pass.Text) + ') ' +
            'end else begin ' +


           'update Parametreler set slzz = ' + #39 + txtSaglikNet2user.Text + #39 +
           ',slxxx = ' + #39 + txtSaglikNet2pass.Text + #39 +
           ' where slk = ''90'' and SLB = ''SNET2'' end';
    datalar.QueryExec(datalar.ADO_SQL2,sql);



sql :=

            'if not exists(select SLB,SLT from parametreler where SLk = ''97'') ' +
            'begin  ' +
            '  insert into parametreler(SLK,SLB,SLT) values(''97'',' + QuotedStr(txtmernisId.Text) + ',' + QuotedStr(txtmernisPasword.Text) + ') ' +
            'end else begin ' +


           'update Parametreler set slb = ' + #39 + txtmernisId.Text + #39 +
           ',slt = ' + #39 + txtmernisPasword.Text + #39 +
           ' where slk = ''97'' end';
    datalar.QueryExec(datalar.ADO_SQL2,sql);




sql :=

            'if not exists(select SLB,SLT from parametreler where SLk = ''IT'' and SLB = ''00'') ' +
            'begin  ' +
            '  insert into parametreler(SLK,SLB,SLT,SLVV,SLXX) values(''IT'',''00'',' + QuotedStr(txtGln.Text) + ',' + QuotedStr(txtitsuser.Text) + ',' + QuotedStr(txtitspass.Text) + ') ' +
            'end else begin ' +


           'update Parametreler set slt = ' + #39 + txtGln.Text + #39 +
           ',slvv = ' + #39 + txtitsuser.Text + #39 +
           ',slxx = ' + #39 + txtitspass.Text + #39 +
           ' where slk = ''IT'' and SLb = ''00'' end';
    datalar.QueryExec(datalar.ADO_SQL2,sql);



sql :=

            'if not exists(select SLB,SLT from parametreler where SLk = ''UD'' and SLB = ''00'') ' +
            'begin  ' +
            '  insert into parametreler(SLK,SLB,SLT,SLVV,SLXX) values(''UD'',''00'',''Online Destek Grup Paralo Bilgileri'',' + QuotedStr('DIYALIZLER') + ',' + QuotedStr('Diyaliz123') + ') ' +
            'end else begin ' +


           'update Parametreler ' +
           ' set slvv = ' + #39 + txtGrupAdi.Text + #39 +
           ',slxx = ' + #39 + txtGrupParola.Text + #39 +
           ' where slk = ''UD'' and SLb = ''00'' end';
    datalar.QueryExec(datalar.ADO_SQL2,sql);


 except

   exit;
 end;

    ShowMessage('Kullanýcý Bilgileri Güncellendi','','','info');
    close;

         }
end;

end.

