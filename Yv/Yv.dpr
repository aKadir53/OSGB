program Yv;

uses
  Vcl.Forms,
  yvunit in 'yvunit.pas' {frmYv};

{$R *.res}
//{$WEAKLINKRTTI ON}
//  {$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmYv, frmYv);
  Application.Run;
end.
