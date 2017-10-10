unit AktifPasifSebeb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, adodb, kadir,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, Menus, cxButtons, cxGroupBox, cxMemo;

type
  TfrmAktifPasifSebebleri = class(TForm)
    cxGroupBox4: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    txtSebebAdi: TcxComboBox;
    txtTarih: TcxDateEdit;
    cxGroupBox3: TcxGroupBox;
    btnDurumDegisTamam: TcxButton;
    txtSebeb: TcxMemo;
    txtOlumNedeni: TcxComboBox;
    procedure BakiyeSebeb(dosyaNo,gelisNo,DetayNo , _ap_ : string);
    procedure txtSebebAdiChange(Sender: TObject);
    procedure btnDurumDegisTamamClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAktifPasifSebebleri: TfrmAktifPasifSebebleri;
  _dosya , _gelis , _detay : string;
implementation
   uses data_modul;
{$R *.dfm}

procedure TfrmAktifPasifSebebleri.BakiyeSebeb(dosyaNo,gelisNo,DetayNo, _ap_ : string);
var
  sql : string;
begin
    _dosya := dosyaNo;
    _gelis := gelisNo;
    _detay := DetayNo;
    txtTarih.Date := date();

    if _ap_ = 'P'
    Then Begin
         Caption := 'Hasta Pasit Etme';
         cxGroupBox1.Caption := 'Pasifleþtirme Sebeb';
         txtSebebAdi.Properties.Items.Clear;

         txtSebebAdi.Properties.Items.Add('0 - Baþka Merkeze Gitme');
         txtSebebAdi.Properties.Items.Add('1 - Transplantasyona Gitme');
         txtSebebAdi.Properties.Items.Add('2 - Periton Diyalize Geçme');
         txtSebebAdi.Properties.Items.Add('3 - Baþka Tedavi Modeline Geçme');
         txtSebebAdi.Properties.Items.Add('4 - Ýzlemden Çýkma');
         txtSebebAdi.Properties.Items.Add('5 - Ölüm');

    End
    Else
    Begin
         Caption := 'Hasta Aktif Etme';
         cxGroupBox1.Caption := 'Aktifleþtirme Sebeb';
         txtSebebAdi.Properties.Items.Clear;
         txtSebebAdi.Properties.Items.Add('6 - Hemodiyalize Yeni Baþlama');
         txtSebebAdi.Properties.Items.Add('7 - Baþka Merkezden Gelme');
         txtSebebAdi.Properties.Items.Add('8 - Transplantasyondan Gelen');
         txtSebebAdi.Properties.Items.Add('9 - Tedavi Devam');
    //     txtSebebAdi.Items.Add('M - Misafir');
    End;
(*
    datalar.ADO_SQL1.close;
    datalar.ADO_SQL1.SQL.Clear;
    sql := 'select * from hastaBakiye where dosyaNo = ' + #39 + DosyaNo + #39 +
           ' and gelisNo = ' + GelisNo + ' and detayNo = ' + DetayNo;
    datalar.QuerySelect(datalar.ADO_SQL1,sql);

    txtSebebAdi.Text := datalar.ADO_SQL1.fieldbyname('bakiyeNedeni').AsString;
    txtSebeb.Lines.Text := datalar.ADO_SQL1.fieldbyname('Aciklama').AsString;
*)

end;

procedure TfrmAktifPasifSebebleri.btnDurumDegisTamamClick(Sender: TObject);
var
  sql : string;
  ado : TADOQuery;
begin
//     frmIslemKarti.BakiyeSebeb(txtSebebAdi.Text,txtSebeb.Text);

     if (txtSebebAdi.Text <> '') and
        (txtTarih.Text <> '')
     Then Begin
           ado := TADOQuery.Create(nil);
           ado.Connection := datalar.ADOConnection2;

           if (txtSebebAdi.ItemIndex = 5) and
              (txtOlumNedeni.text = '')
           then begin
             ShowMessageSkin('Ölüm Nedeni Boþ Olamaz','','','info');
             exit;
           end;


           sql := 'update hastakart set pasifSebeb = ' + QuotedStr(txtSebebAdi.Text) +
                  ',AktifDegisTarih = ' + QuotedStr(tarihal(txtTarih.Date)) +
                  ',OlumNedeni = ' + QuotedStr(trim(copy(txtOlumNedeni.Text,1,2))) +
                  ' where dosyaNo = ' + QuotedStr(_dosya);
           datalar.QueryExec(ado,sql);

          try
           if txtSebebAdi.ItemIndex = 5
           Then begin
              sql := 'IF not EXISTS(SELECT * FROM hastakartdurum WHERE dosyaNo = ' + QuotedStr(_dosya) + ' and substring(pasifSebeb,1,1) = ''5''' + ')' +
                     ' BEGIN ' +
                       'insert into hastaKartDurum (dosyaNo,pasifSebeb,tarih,aciklama,kullanici) ' +
                       ' values ( ' + QuotedStr(_dosya) + ',' + QuotedStr(txtSebebAdi.Text) + ',' +
                       QuotedStr(tarihal(txtTarih.Date)) + ',' + QuotedStr(txtSebeb.Text) + ',' + QuotedStr(datalar.username) + ')' +
                     ' END else ' +
                     ' BEGIN ' +
                     ' update hastaKartDurum set pasifSebeb = ' + QuotedStr(txtSebebAdi.Text) + ',' +
                     ' tarih = ' + QuotedStr(tarihal(txtTarih.Date)) + ',' +
                     ' aciklama = ' + QuotedStr(txtSebeb.Text) + ',' +
                     ' kullanici = ' + QuotedStr(datalar.username) +
                     ' where dosyaNo = ' + QuotedStr(_dosya) + ' and substring(pasifSebeb,1,1) = ''5''' +
                     ' END';
           end
           else
           begin
             sql := 'insert into hastaKartDurum (dosyaNo,pasifSebeb,tarih,aciklama,kullanici) ' +
                    ' values ( ' + QuotedStr(_dosya) + ',' + QuotedStr(txtSebebAdi.Text) + ',' +
                    QuotedStr(tarihal(txtTarih.Date)) + ',' + QuotedStr(txtSebeb.Text) + ',' + QuotedStr(datalar.username) + ')';
           end;

           datalar.QueryExec(ado,sql);

          except
          end;


           sql := 'update gelisdetay set sebeb = ' + QuotedStr(txtSebebAdi.Text) +
                  ' where dosyaNo = ' + QuotedStr(_dosya) + ' and durum = 0 and RTarih >= ' + QuotedStr(tarihal(txtTarih.Date));
           datalar.QueryExec(ado,sql);


           ado.Free;
           close;
     End
     else
       ShowMessageSkin('Sebeb yada Tarih Bilgisi Girilmedi','','','info');

end;

procedure TfrmAktifPasifSebebleri.txtSebebAdiChange(Sender: TObject);
var
 sql : string;
 ado : TADOQuery;
begin

    if copy(txtSebebAdi.Text,1,1) = '5'
    Then begin
      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;
      sql := 'SELECT * FROM hastakartdurum WHERE dosyaNo = ' +
             QuotedStr(_dosya) + ' and substring(pasifSebeb,1,1) = ''5''';
      datalar.QuerySelect(ado,sql);

      txtSebeb.Text := ado.FieldByName('Aciklama').AsString;
      txtOlumNedeni.Text :=  ado.FieldByName('pasifSebeb').AsString;
      ado.Free;
      txtOlumNedeni.Visible := true;
    end
    Else txtOlumNedeni.Visible := false;


end;

end.
