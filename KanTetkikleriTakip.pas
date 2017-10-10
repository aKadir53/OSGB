unit KanTetkikleriTakip;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, ExtCtrls, cxGraphics, cxControls,kadir,kadirType,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDropDownEdit, cxCalendar,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ADODB , cxGridExportLink, dxSkinsCore,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, Vcl.Menus,
  GirisUnit, cxContainer, cxCheckBox, KadirLabel;

type
  TfrmKanTetkikTakip = class(TGirisForm)
    cxGrid2: TcxGridKadir;
    ILACKULLANIM: TcxGridDBTableView;
    DataSource1: TDataSource;
    cxGridLevel1: TcxGridLevel;
    ADO_Tetkikler: TADOQuery;
    ILACKULLANIMColumn1: TcxGridDBColumn;
    ILACKULLANIMColumn2: TcxGridDBColumn;
    ILACKULLANIMColumn3: TcxGridDBColumn;
    ILACKULLANIMColumn4: TcxGridDBColumn;
    ILACKULLANIMColumn5: TcxGridDBColumn;
    ILACKULLANIMColumn6: TcxGridDBColumn;
    ILACKULLANIMColumn7: TcxGridDBColumn;
    ILACKULLANIMColumn8: TcxGridDBColumn;
    ILACKULLANIMColumn9: TcxGridDBColumn;
    ILACKULLANIMColumn10: TcxGridDBColumn;
    ILACKULLANIMColumn11: TcxGridDBColumn;
    ILACKULLANIMColumn12: TcxGridDBColumn;
    ILACKULLANIMColumn13: TcxGridDBColumn;
    ILACKULLANIMColumn14: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    SaveDialog1: TSaveDialog;
    ILACKULLANIMColumn15: TcxGridDBColumn;
    cxStyle6: TcxStyle;
    ADO_Tele: TADOQuery;
    PopupMenu1: TPopupMenu;
    Y1: TMenuItem;
    E1: TMenuItem;
    K1: TMenuItem;
    H1: TMenuItem;
    T1: TMenuItem;
    chkHepatit: TcxCheckBox;
    procedure KanTetkikleri(dosyaNo,Tarih : string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkHepatitClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure Yazdir(tag : integer);
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKanTetkikTakip: TfrmKanTetkikTakip;
  //_dosyaNo_ ,
  _tarih_ , marker : string;

implementation
   uses data_modul;
{$R *.dfm}

procedure TfrmKanTetkikTakip.Yazdir(tag : integer);
var
  sql : string;
  ado,ado0,ado1,ado2,ado3,ado4,ado5,ado6,ado7,ado8,ado9,ado10,ado11,ado12 : TADOQuery;
  topluset : TDataSetKadir;
begin
    ado := TADOQuery.Create(nil);
    sql := 'select * from hastakart where dosyaNo = ' + QuotedStr(_dosyaNo_);
    datalar.QuerySelect(ado,sql);
    topluset.Dataset0 := ado;


    if tag = -2
    Then Begin
      KanTetkikleri(_dosyaNo_,_tarih_);
      topluset.Dataset1 := ADO_Tetkikler;
      topluset.Dataset2 := ADO_Tele;

      PrintYap('201','\Hasta Tetkik Takip Hepatit',inttostr(TagfrmKanTetkikTakip),topluset,ptNone);

    End
    Else
    Begin
      topluset.Dataset1 := ADO_Tetkikler;
      topluset.Dataset2 := ADO_Tele;

      PrintYap('203','\Hasta Tetkik Takip Hepatit',inttostr(TagfrmKanTetkikTakip),topluset,ptNone);

    End;


    ado.Free;

end;

procedure TfrmKanTetkikTakip.KanTetkikleri(dosyaNo,Tarih : String);
var
  sql : string;
  ado : TADOQuery;
begin
   marker := 'H';
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   sql := 'select SLX from parametreler where SLK = ''30'' and SLB = ''03''';
   datalar.QuerySelect(ado,sql);

   if not ado.eof
   then begin
     marker := 'H'+StringReplace(ado.Fields[0].AsString,'0','',[rfReplaceAll]);
   end;

   _tarih_ := Tarih;
   _dosyaNo_ := dosyaNo;
   sql := 'exec sp_HastaTetkikTakipPIVOT ' + QuotedStr(dosyaNo) + ',' + QuotedStr(Tarih) + ',@f=-1 , @marker = ' + QuotedStr(marker);
   ADO_Tetkikler.Connection := datalar.ADOConnection2;
   datalar.QuerySelect(ADO_Tetkikler,sql);
end;


procedure TfrmKanTetkikTakip.chkHepatitClick(Sender: TObject);
var
 sql : string;
begin
    if chkHepatit.Checked
    Then begin
       sql := 'exec sp_HastaTetkikTakip ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_Tarih_) + ',@f=1,@marker=''T''';
       datalar.QuerySelect(ADO_Tele,sql);

       sql := 'exec sp_HastaTetkikTakip ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_Tarih_) + ',@f=1,@marker=''E''';
    end
    Else
       sql := 'exec sp_HastaTetkikTakip ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_Tarih_) + ',@f=1,@marker=' + QuotedStr(marker);


    datalar.QuerySelect(ADO_Tetkikler,sql);

end;

procedure TfrmKanTetkikTakip.cxButtonCClick(Sender: TObject);
var
   Dosya : string;
begin
  inherited;
  case Tcontrol(sender).tag of
  -1,-2 : begin
           Yazdir(Tcontrol(sender).tag);
          end;
  (*
  ExceleGonder : begin

          SaveDialog1.Execute;
          Dosya := SaveDialog1.FileName;
          try
              ExportGridToExcel(dosya,cxGrid2,False,True);
          except on e : Exception do
             begin
                  ShowMessageSkin('Hata Oluþtu : ' + e.Message,'','','info');
                  exit;
             end;
          end;
             ShowMessageSkin(Dosya + ' ',' Baþarý ile Kaydedildi','','info');
           end;
            *)
       end;
end;

procedure TfrmKanTetkikTakip.cxKaydetClick(Sender: TObject);
begin
 inherited;
//
end;

procedure TfrmKanTetkikTakip.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ADO_Tetkikler.Close;
  
end;

procedure TfrmKanTetkikTakip.FormCreate(Sender: TObject);
begin
  Tag := TagfrmKanTetkikTakip;
 // ClientHeight := formYukseklik;
  //ClientWidth := formGenislik;

  TableName := '';
  cxPanel.Visible := false;
  cxTab.Width := 200;
  SayfaCaption('Kan Tetkik Takip','','','','');
  Olustur(self,'','Hasta Tetkikleri',23);
  Menu := PopupMenu1;
end;

end.
