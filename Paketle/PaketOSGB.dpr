program PaketOSGB;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmPaket},
  DosyadanpaketOlustur in 'DosyadanpaketOlustur.pas' {frmDosyadanPaket},
  kadir in 'kadir.pas',
  data_model1 in 'data_model1.pas' {DATALAR: TDataModule},
  NThermo in '..\NThermo.pas' {NThermoDlgFrm},
  TransUtils in '..\TransUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPaket, frmPaket);
  Application.CreateForm(TfrmDosyadanPaket, frmDosyadanPaket);
  Application.CreateForm(TDATALAR, DATALAR);
  Application.Run;
end.
