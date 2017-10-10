unit message_y;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, jpeg,
  dxGDIPlusClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  Menus, cxButtons, cxGroupBox, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue;

type
  TfrmMessage_y = class(TForm)
    lblMessage1: TLabel;
    lblMessage2: TLabel;
    txtMsg: TRichEdit;
    imgSoru_: TImage;
    imgUnlem_: TImage;
    cxPanel: TcxGroupBox;
    btnYes: TcxButton;
    btnIptal: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure txtMsgEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMessage_y: TfrmMessage_y;

implementation

uses message;

{$R *.DFM}
var
   frmTop_ :word = 0;
   frmLeft_ :word = 0;

procedure TfrmMessage_y.FormCreate(Sender: TObject);
begin
(*
    //imgUnlem.ResHandle := 0;
    //imgUnlem.ResName := 'info_avi';

    //imgSoru.ResHandle := 0;
    //imgSoru.ResName := 'qry_avi';
    txtMsg.Clear;
    case frmMessage.Tag of
      0: // msg, evet and iptal buttons are visible, hayir selected
        begin
         btnYes.Visible := True;
         btnYes.Caption := '&Evet';
         btnIptal.Visible := True;
         btnIptal.Caption := '&Hayýr';
         btnIptal.TabOrder := 0;
         btnYes.TabOrder := 1;
         btnIptal.Focused;
         imgSoru_.Visible := True;
         imgUnlem_.Visible := False;
         Caption := 'SORU ?';
        end;
      1: // info,only evet button is visible
        begin
         btnYes.Visible := True;
         btnYes.Caption := '&Tamam';
         btnIptal.Visible := False;
         btnYes.TabOrder := 0;
         imgUnlem_.Visible := True;
         imgSoru_.Visible := False;
         Caption := 'BÝLGÝ !';
        end;
      2: //confirmation, evet and hayir buttons are visible, evet selected
        begin
         btnYes.Visible := True;
         btnYes.Caption := '&Evet';
         btnIptal.Visible := True;
         btnIptal.Caption := '&Hayýr';
         btnYes.TabOrder := 0;
         btnIptal.TabOrder := 1;
         imgSoru_.Visible := True;
         imgUnlem_.Visible := False;
         Caption := 'SORU ?';
        end;
      3: //chc, give choice, tamam, vazgec /tamam selected
        begin
         btnYes.Caption := '&Tamam';
         btnYes.Visible := True;
         btnIptal.Caption := '&Vazgeç';
         btnIptal.Visible := True;
         btnYes.TabOrder := 0;
         btnIptal.TabOrder := 1;
         imgSoru_.Visible := False;
         imgUnlem_.Visible := True;
         Caption := 'ONAYLAMA ?';
        end;
      4: //chc2, give choice, tamam, vazgec/ vazgec selected
        begin
         btnYes.Caption := '&Tamam';
         btnYes.Visible := True;
         btnIptal.Caption := '&Vazgeç';
         btnIptal.Visible := True;
         btnYes.TabOrder := 1;
         btnIptal.TabOrder := 0;
         imgSoru_.Visible := False;
         imgUnlem_.Visible := True;
         Caption := 'ONAYLAMA ?';
        end;
      5: //ozel1, give choice, Ýntaç, Küþat/ Küþat selected
        begin
         btnYes.Caption := 'Ý&ntaç';
         btnYes.Visible := True;
         btnIptal.Caption := '&Küþat';
         btnIptal.Visible := True;
         btnYes.TabOrder := 0;
         btnIptal.TabOrder := 1;
         imgSoru_.Visible := True;
         imgUnlem_.Visible := False;
         Caption := 'SEÇÝMÝNÝZ ?';
        end;
    end; // case

    //imgUnlem.Active := imgUnlem.Visible;
    //imgSoru.Active := imgSoru.Visible;
*)
end;

procedure TfrmMessage_y.txtMsgEnter(Sender: TObject);
begin
 //perform(wm_nextdlgctl,0,0);
 ActiveControl := btnYes;
end;

procedure TfrmMessage_y.FormShow(Sender: TObject);
begin
    //imgUnlem.ResHandle := 0;
    //imgUnlem.ResName := 'info_avi';

    //imgSoru.ResHandle := 0;
    //imgSoru.ResName := 'qry_avi';

    //txtMsg.Clear;
    case frmMessage_y.Tag of
      0: // msg, evet and iptal buttons are visible, hayir selected
        begin
         btnYes.Visible := True;
         btnYes.Caption := '&Evet';
         btnIptal.Visible := True;
         btnIptal.Caption := '&Hayýr';
         btnIptal.TabOrder := 0;
         btnYes.TabOrder := 1;
         btnIptal.SetFocus;// .Focused;
         //imgSoru.Visible := True;
         //imgUnlem.Visible := False;
         imgSoru_.Visible := True;
         imgUnlem_.Visible := False;
         Caption := 'SORU ?';
        end;
      1: // info,only evet button is visible
        begin
         btnYes.Visible := True;
         btnYes.Caption := '&Tamam';
         btnIptal.Visible := False;
         btnYes.TabOrder := 0;
         btnYes.SetFocus;
         //imgUnlem.Visible := True;
         //imgSoru.Visible := False;
         imgUnlem_.Visible := True;
         imgSoru_.Visible := False;
         Caption := 'BÝLGÝ !';
        end;
      2: //confirmation, evet and hayir buttons are visible, evet selected
        begin
         btnYes.Visible := True;
         btnYes.Caption := '&Evet';
         btnIptal.Visible := True;
         btnIptal.Caption := '&Hayýr';
         btnYes.TabOrder := 0;
         btnIptal.TabOrder := 1;
         btnYes.SetFocus;
         //imgSoru.Visible := True;
         //imgUnlem.Visible := False;
         imgSoru_.Visible := True;
         imgUnlem_.Visible := False;
         Caption := 'SORU ?';
        end;
      3: //chc, give choice, tamam, vazgec /tamam selected
        begin
         btnYes.Caption := '&Tamam';
         btnYes.Visible := True;
         btnIptal.Caption := '&Vazgeç';
         btnIptal.Visible := True;
         btnYes.TabOrder := 0;
         btnIptal.TabOrder := 1;
         btnYes.SetFocus;
         //imgSoru.Visible := False;
         //imgUnlem.Visible := True;
         imgSoru_.Visible := False;
         imgUnlem_.Visible := True;
         Caption := 'ONAYLAMA ?';
        end;
      4: //chc2, give choice, tamam, vazgec/ vazgec selected
        begin
         btnYes.Caption := '&Tamam';
         btnYes.Visible := True;
         btnIptal.Caption := '&Vazgeç';
         btnIptal.Visible := True;
         btnYes.TabOrder := 1;
         btnIptal.TabOrder := 0;
         btnIptal.SetFocus;
         //imgSoru.Visible := False;
         //imgUnlem.Visible := True;
         imgSoru_.Visible := False;
         imgUnlem_.Visible := True;
         Caption := 'ONAYLAMA ?';
        end;
      5: //ozel1, give choice, Ýntaç, Küþat/ Küþat selected
        begin
         btnYes.Caption := 'Ý&ntaç';
         btnYes.Visible := True;
         btnIptal.Caption := '&Küþat';
         btnIptal.Visible := True;
         btnYes.TabOrder := 0;
         btnIptal.TabOrder := 1;
         imgSoru_.Visible := True;
         imgUnlem_.Visible := False;
         Caption := 'SEÇÝMÝNÝZ ?';
        end;
      6: // varyok, var and yok buttons are visible, yok selected
        begin
         btnYes.Visible := True;
         btnYes.Caption := '&VAR';
         btnIptal.Visible := True;
         btnIptal.Caption := '&YOK';
         btnIptal.TabOrder := 0;
         btnYes.TabOrder := 1;
         btnIptal.SetFocus; //.Focused;
         //imgSoru.Visible := True;
         //imgUnlem.Visible := False;
         imgSoru_.Visible := True;
         imgUnlem_.Visible := False;
         Caption := 'CEVAP ?';
        end;
    end; // case
    //imgUnlem.Active := imgUnlem.Visible;
    //imgSoru.Active := imgSoru.Visible;
    //if imgUnlem.Active Then imgUnlem
end;

procedure TfrmMessage_y.FormActivate(Sender: TObject);
begin
   if frmTop_ = 0
   Then frmTop_ := Trunc(TScreen(frmMessage_y).DesktopHeight/2);
   if frmLeft_ = 0
   Then frmLeft_ := Trunc(TScreen(frmMessage_y).DesktopWidth/2);

   Top := frmTop_ - Trunc(Height/2);
   Left := frmLeft_ - Trunc(Width/2);
end;

end.
