unit UyumSoftPortal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ADODB,  DBGrids,  Grids, ComCtrls, Mask, ExtCtrls,
  Buttons, Gauges, MSHTML,  ToolWin, REGISTRY,
  BaseGrid, AdvGrid, DBAdvGrd, DBCtrls, AdvEdit,comobj,
  ImgList, sPanel, sButton, Menus,
  SHDocVw, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, HTTPApp, HTTPProd, jpeg, strutils,
  cxGraphics, OleCtrls;

type
  TfrmPortal = class(TForm)
    pnlBrowser: TsPanel;
    WebBrowser1: TWebBrowser;
    pnlAdres: TPanel;
    Label1: TLabel;
    txtAdres: TEdit;
    pnlButton: TPanel;
    procedure yukle(user,password,url : string);
    procedure WebBrowser1DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPortal: TfrmPortal;
  _user , _pas , _tc : string;
  ButtonClick : Boolean;
implementation
  uses data_modul;
{$R *.dfm}



procedure TfrmPortal.FormCreate(Sender: TObject);
begin
  ButtonClick := false;
end;

procedure TfrmPortal.WebBrowser1DocumentComplete(ASender: TObject;
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
  Buttons: OleVariant;
  Button: OleVariant;

begin
      if ButtonClick = True then exit;

      idoc := Webbrowser1.document as IHTMLDocument2;
      ov := 'INPUT';
      IDisp := iDoc.all.tags(ov);
      if assigned(IDisp)
      then begin
               IDisp.QueryInterface(IHTMLElementCollection, iColl);
               if assigned(iColl)
               then begin
                         for i := 1 to iColl.Get_length do
                         begin
                            iDisp := iColl.item(pred(i), 0);
                            iDisp.QueryInterface(IHTMLInputElement, iInputElement);
                            if assigned(iInputElement) then

                            if iInputElement.Get_name = 'Username'
                            then iInputElement.Set_value(_user);

                            if iInputElement.Get_name = 'Password'
                            then iInputElement.Set_value(_pas);

                           (*
                            if (iInputElement.Get_type_ = 'submit')
                         //  and (iInputElement.Get_name = 'form1:buttonSorgula')
                               then iInputElement.select;
                             *)
                          end;

                          Buttons := WebBrowser1.OleObject.Document.getElementsByTagName('button');
                          for I := 0 to Buttons.Length - 1 do
                          begin
                            Button := Buttons.item(I);
                            if Button.innerText = 'Giriþ' then
                            begin
                              Button.click();
                              ButtonClick := True;
                              Break;
                            end;
                          end;

               end;
      end;
end;

procedure TfrmPortal.yukle(user,password,url : string);
begin
    _user := user;
    _pas := password;
    WebBrowser1.Navigate(url);
end;

  (*
procedure TfrmPortal.WebBrowser1DocumentComplete(ASender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
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

                         if iInputElement.Get_name = 'Username'
                         then iInputElement.Set_value(_user);

                         if iInputElement.Get_name = 'Password'
                         then iInputElement.Set_value(_pas);


                         if (iInputElement.Get_type_ = 'submit')
                       //  and (iInputElement.Get_name = 'form1:buttonSorgula')
                             then iInputElement.select;

                             //  WebBrowser1.OleObject.Document.GetElementByID('form1:buttonSorgula').Click;



                          end;
               end;
      end;

end;
   *)
end.
