program GuncellemeYap;

uses
  Forms,Windows, SysUtils, Dialogs,
  Update in 'update\Update.pas' {frmUpdate},
  data_model1 in 'data_model1.pas' {DATALAR: TDataModule},
  MESSAGE in 'MESSAGE.PAS' {frmMessage},
  kadir in 'kadir.pas';

{$R *.res}
 var hMyMutex : tHandle;

begin

  hMyMutex := CreateMutex(nil,FALSE,'Deneme');
  if (hMyMutex <> 0) then try
    if (GetLastError <> ERROR_ALREADY_EXISTS) then begin
        Application.Initialize;
        Application.CreateForm(TfrmUpdate, frmUpdate);
        Application.CreateForm(TDATALAR, DATALAR);
        Application.CreateForm(TfrmMessage, frmMessage);
        Application.Run;
    end;// else ShowMessage ('Program zaten çalýþýyor');
  finally
    CloseHandle (hMyMutex);
  end else ShowMessage ('Program taným oluþturmada hata : ' + IntToStr(GetLastError),'','','info');


end.
