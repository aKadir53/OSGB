unit Tnm_IlacEtkenMaddeDetay;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,KadirLabel,GirisUnit,KadirType;

type
  TfrmIlacEtkenMaddeDetay = class(TGirisForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const TableName = 'ILACLAR_ANAGRUP_TNM';
      formGenislik = 400;
      formYukseklik = 200;
var
  frmIlacEtkenMaddeDetay: TfrmIlacEtkenMaddeDetay;

implementation
      uses Data_Modul,AnaUnit;
{$R *.dfm}

end.
