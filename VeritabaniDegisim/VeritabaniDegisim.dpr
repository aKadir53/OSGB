program VeritabaniDegisim;

uses
  Vcl.Forms,
  UAnaForm in 'Units\UAnaForm.pas' {AnaForm},
  UGenel in 'Units\UGenel.pas',
  NThermo in 'Units\NThermo.pas' {NThermoDlgFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAnaForm, AnaForm);
  Application.Run;
end.
