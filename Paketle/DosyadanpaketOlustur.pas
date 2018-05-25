unit DosyadanpaketOlustur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FileCtrl, StdCtrls, ExtCtrls,kadir;

type
  TfrmDosyadanPaket = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dosyalar: TFileListBox;
    dizin: TDirectoryListBox;
    surucu: TDriveComboBox;
    Button1: TButton;
    ComboBox1: TComboBox;
    txtinfo: TLabel;
    txtSQL: TMemo;
    Label1: TLabel;
    procedure dosyalarChange(Sender: TObject);
    procedure dosyalarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDosyadanPaket: TfrmDosyadanPaket;

implementation
uses unit1;
{$R *.dfm}

procedure TfrmDosyadanPaket.dosyalarChange(Sender: TObject);
begin
     txtinfo.Caption := inttostr(dosyalar.Count);


end;

procedure TfrmDosyadanPaket.dosyalarClick(Sender: TObject);
begin

     txtSQL.Lines.LoadFromFile(dosyalar.FileName);


end;

procedure TfrmDosyadanPaket.Button1Click(Sender: TObject);
var
   x : integer;
begin
  if ComboBox1.ItemIndex = -1
  then exit;
  for x := 1 to dosyalar.Count do
  begin
    dosyalar.ItemIndex := x;
    txtSQL.Lines.LoadFromFile(dosyalar.FileName);
    frmPaket.table1.Append;
    //frmPaket.table1.FieldByName('rev').AsInteger :=
    frmPaket.table1.FieldByName('SQL_CMD').AsString := txtSQL.Lines.Text;
    frmPaket.table1.FieldByName('tarih').AsString := tarihal(date());
    frmPaket.table1.FieldByName('MODUL').AsString := copy(ComboBox1.Text,1,1);
    frmPaket.table1.FieldByName('TIPI').AsString := 'C';
    frmPaket.table1.FieldByName('VER').AsString := '1';
    frmPaket.table1.Post;
  end;
end;

procedure TfrmDosyadanPaket.ComboBox1Change(Sender: TObject);
begin

    if copy(ComboBox1.Text,1,1) = 'K'
    then begin
              surucu.Drive := 'C';
              //dosyalar.Directory := 'NoktaDiyaliz';
    end;

end;

end.
