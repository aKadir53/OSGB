unit donemSonlandirma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,MSHTML,data_modul, OleCtrls, SHDocVw, StdCtrls,GirisUnit,Kadir;

type
  TfrmDonemSonlandir = class(TGirisForm)
    WebBrowser1: TWebBrowser;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure WebBrowser1DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmDonemSonlandir: TfrmDonemSonlandir;
  sg : integer = 0;
implementation

{$R *.dfm}

function TfrmDonemSonlandir.Init(Sender : TObject) : Boolean;
begin
  WebBrowser1.Navigate(datalar.DonemSonlandir);
  Result := True;
end;


procedure TfrmDonemSonlandir.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  sg := 0;
  inherited;
end;

procedure TfrmDonemSonlandir.FormCreate(Sender: TObject);
begin
//  Menu := PopupMenu1;
 // Olustur(self,_TableName_,'Kimlik Doðrula',71,sqlInsert);
  cxPanel.Visible := false;
  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;
  SayfaCaption('','','','','');
end;

procedure TfrmDonemSonlandir.WebBrowser1DocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
var
   iDoc: IHTMLDocument2;
   i: integer;
   ov: OleVariant;
   iDisp: IDispatch;
   iColl: IHTMLElementCollection;
   iInputElement : IHTMLInputElement;
   iTextElement:IHTMLTextAreaElement;
   formelement:IHtmlFormElement;
   _goster : integer;
begin
      datalar.browserOk := 1;
      datalar.Login;

      idoc := Webbrowser1.document as IHTMLDocument2;
      ov := 'INPUT';
      IDisp := iDoc.all.tags(ov);
      if assigned(IDisp)
      then begin
               IDisp.QueryInterface(IHTMLElementCollection, iColl);
               if assigned(iColl)
               then begin
                         for i := 1 to iColl.Get_length do begin
                         iDisp := iColl.item(pred(i), 0);
                         iDisp.QueryInterface(IHTMLInputElement, iInputElement);
                         if assigned(iInputElement) then

                          if datalar.WebErisimBilgi('991','02') = 'Evet'
                          then begin
                                    if iInputElement.Get_name = 'j_username'
                                    then iInputElement.Set_value(datalar._donemuser);

                                    if iInputElement.Get_name = 'j_password'
                                    then iInputElement.Set_value(datalar._donemsifre);
                          end;

                       //   if iInputElement.Get_type_ = 'submit'
                       //   then iInputElement.Get_form.submit;



                          end;
               end;
      end;

end;


end.
