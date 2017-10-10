unit HastailacTedavi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,KadirLabel,GirisUnit,KadirType,Kadir,TedaviKart,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, dxSkinscxPCPainter,Adodb,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxPC, cxGroupBox, Vcl.Menus, cxImageComboBox,
  cxDBLookupComboBox, cxLabel, cxMemo, cxLookupEdit, cxDBLookupEdit,
  cxCurrencyEdit, Vcl.StdCtrls, Vcl.Buttons, cxCheckBox,strUtils,
  Vcl.ExtCtrls;

type
  TfrmHastaIlacTedavi = class(TfrmTedaviBilgisi)
    PopupMenu1: TPopupMenu;
    cxIlacTedaviPanel: TcxGroupBox;
    N1: TMenuItem;
    T1: TMenuItem;
    N2: TMenuItem;
    S1: TMenuItem;
    ADO_GecmisIlacTedavi: TADOQuery;
    DataSource8: TDataSource;
    frmHastaIlacTedavi_cxGroupBox1: TcxGroupBox;
    frmHastaIlacTedavi_cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid15: TcxGrid;
    cxGridIlacTedaviPlani: TcxGridDBTableView;
    cxGridIlacTedaviPlanigk: TcxGridDBColumn;
    cxGridIlacTedaviPlaniust: TcxGridDBColumn;
    cxGridIlacTedaviPlaniilac: TcxGridDBColumn;
    cxGridIlacTedaviPlaniname1: TcxGridDBColumn;
    cxGridIlacTedaviPlanigrup: TcxGridDBColumn;
    cxGridIlacTedaviPlaniname2: TcxGridDBColumn;
    cxGridIlacTedaviPlanidoz: TcxGridDBColumn;
    cxGridIlacTedaviPlaniperyot: TcxGridDBColumn;
    cxGridIlacTedaviPlanimiktar: TcxGridDBColumn;
    cxGridIlacTedaviPlanidozperyotmiktar: TcxGridDBColumn;
    cxGridIlacTedaviPlanidonem: TcxGridDBColumn;
    cxGridIlacTedaviPlaniid: TcxGridDBColumn;
    cxGridIlacTedaviPlanigelisNo: TcxGridDBColumn;
    cxGridIlacTedaviPlaniColumn1: TcxGridDBColumn;
    cxGridLevel15: TcxGridLevel;
    ADO_IlacTedavi: TADOQuery;
    DataSource7: TDataSource;
    DataSource15: TDataSource;
    ADO_IlacGelis: TADOQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    K: TcxStyle;
    Yesil_siyah: TcxStyle;
    Sari_Siyah: TcxStyle;
    R1: TMenuItem;
    cxGridIlacTedaviPlaniColumn2: TcxGridDBColumn;
    cxGridIlacTedaviPlaniColumn3: TcxGridDBColumn;
    cxGridIlacTedaviPlaniColumn4: TcxGridDBColumn;
    K1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure IlacTedavi(_dosyaNo , gelisNo,_Tarih : string ; islem : integer = 99999);
    procedure ItemClick(Sender: TObject);
    procedure cxGridIlacTedaviPlaniStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxButtonCClick(Sender: TObject);
    procedure ReceteyeEkle;
  private
    { Private declarations }
  public
  function Init(Sender : TObject) : Boolean; override;
    { Public declarations }
  end;

const _TableName_ = 'IlacTedavi';
      formGenislik = 900;
      formYukseklik = 600;
var
  frmHastaIlacTedavi: TfrmHastaIlacTedavi;
  _islem_ : integer;

implementation
      uses Data_Modul,AnaUnit,HastaRecete;
{$R *.dfm}

procedure TfrmHastaIlacTedavi.ReceteyeEkle;
var
 x ,j,y : integer;
 barkod ,ilac, ilacadi,peryot,adet,peryotadet,doz,kyol,kutuAdet,miktar : string;
 gelisNo,id ,sql,_tani_,keys: string;
 unite : real;
 ack : TStringList;
 ado : TADOQuery;
begin
   for x := 0 to cxGridIlacTedaviPlani.Controller.SelectedRowCount - 1 do
   begin
       Application.ProcessMessages;
       ilac := cxGridIlacTedaviPlani.DataController.GetValue(
                                      cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,2);

       ilacadi := trimleft(cxGridIlacTedaviPlani.DataController.GetValue(
                                      cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,14));

       doz := cxGridIlacTedaviPlani.DataController.GetValue(
                                      cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,6);

       miktar := cxGridIlacTedaviPlani.DataController.GetValue(
                                      cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,8);

       peryot := cxGridIlacTedaviPlani.DataController.GetValue(
                                      cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,7);

       adet := cxGridIlacTedaviPlani.DataController.GetValue(
                                      cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,8);

       gelisno := cxGridIlacTedaviPlani.DataController.GetValue(
                                      cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,12);

       kyol := cxGridIlacTedaviPlani.DataController.GetValue(
                                      cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,15);

       kutuAdet := cxGridIlacTedaviPlani.DataController.GetValue(
                                      cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,16);

       if frmHastaRecete.ADO_RECETE_DETAY.Locate('ilacKodu;receteId',VarArrayOf([ilac,frmHastaRecete.ADO_Recete.fieldbyname('id').AsString]),[]) = false
       Then Begin
         frmHastaRecete.ADO_RECETE_DETAY.Append;
         frmHastaRecete.ADO_RECETE_DETAY.FieldByName('ilacKodu').AsString := ilac;
         frmHastaRecete.ADO_RECETE_DETAY.FieldByName('ilacAdi').AsString := ilacadi;
         frmHastaRecete.ADO_RECETE_DETAY.FieldByName('adet').AsString := kutuadet;
         frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanimYolu').AsString := ifThen(kyol = '' ,'1',kyol);
         frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsString := '1';
         frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsString := doz;
      try
         unite := IlacKoduToUnite(ilac,_dosyaNo_,_gelisNo_,peryot,miktar) * strtofloat(adet);
         frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanZamanUnit').AsString := peryot;
      //   ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsString := miktar;
      except
      end;
        frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsString := floattostr(unite);
        frmHastaRecete.ADO_RECETE_DETAY.Post;
       End;

      ack := IlacReceteAciklama(_dosyaNo_,_gelisNo_,ilac,
                                  floattostr(strtoint(doz)*strtofloat(adet)));


       ado := TADOQuery.Create(nil);
       ado.Connection := datalar.ADOConnection2;

       sql := 'delete from ReceteIlacAciklama where receteDetayId = ' + frmHastaRecete.ADO_RECETE_DETAY.fieldbyname('id').AsString;
       datalar.QueryExec(ado,sql);
       ado.Free;
       frmHastaRecete.ADO_ReceteIlacAciklama.Active := false;
       frmHastaRecete.ADO_ReceteIlacAciklama.Active := true;

      for j := 0 to ack.Count-1 do
      begin
          frmHastaRecete.ADO_ReceteIlacAciklama.Append;
          frmHastaRecete.ADO_ReceteIlacAciklama.FieldByName('aciklama').AsString := copy(ack[j],3,500);
          frmHastaRecete.ADO_ReceteIlacAciklama.FieldByName('aciklamaTip').AsString := trim(copy(ack[j],1,2));
          frmHastaRecete.ADO_ReceteIlacAciklama.Post;
          if copy(frmHastaRecete.ADO_ReceteIlacAciklama.FieldByName('aciklama').AsString,1,4) = 'Hata'
          Then ShowMessageSkin('Dikkat , Doz Bilgisini Kontrol Ediniz','','','info');
      end;

      _tani_ := IlacReceteTaniEkle(_dosyaNo_,_gelisNo_,ilac);
      y := pos(';',_tani_)-1;
      keys := copy(_tani_,1,y);
      if copy(_tani_,1,y) <> ''
      Then Begin
       if frmHastaRecete.ADO_receteTani.Locate('taniKodu;receteId',VarArrayOf([keys,frmHastaRecete.ADO_Recete.fieldbyname('id').AsString]) ,[]) = False
       Then Begin
         frmHastaRecete.ADO_receteTani.Append;
         frmHastaRecete.ADO_receteTani.fieldbyname('taniKodu').AsString := copy(_tani_,1,pos(';',_tani_)-1);
         frmHastaRecete.ADO_receteTani.fieldbyname('tani').AsString := copy(_tani_,pos(';',_tani_)+1,100);

         frmHastaRecete.ADO_receteTani.Post;
       End;
      End;
   end;
end;

procedure TfrmHastaIlacTedavi.IlacTedavi(_dosyaNo , gelisNo,_Tarih : string ; islem : integer  = 99999);
var
  sql : string;
begin
   _islem_ := islem;
   if islem = ReceteIlacEkleIlacTedavi then R1.Visible := True else R1.Visible := false;

   sql :=  'exec sp_IlacTedaviFormuOlustur ' + QuotedStr(_dosyaNo) + ',' + gelisNo;
   datalar.QuerySelect(ADO_IlacTedavi,sql);

   sql :=  ' exec sp_GecmisDonemIlacTedavi ' + QuotedStr(_dosyaNo) + ',' +QuotedStr(_Tarih);
   datalar.QuerySelect(ADO_GecmisIlacTedavi,sql);
  // GecmisIlacTree.FullExpand;

   sql :=  ' exec sp_GecmisDonemIlacTedavi ' + QuotedStr(_dosyaNo) + ',' +QuotedStr(_Tarih) + ',0';
   datalar.QuerySelect(ADO_IlacGelis,sql);
end;


procedure TfrmHastaIlacTedavi.ItemClick(Sender: TObject);
begin

    case TMenuItem(sender).Tag of
    -1 : begin


         end;
    -2 : begin

         end;
    end;
end;

procedure TfrmHastaIlacTedavi.cxButtonCClick(Sender: TObject);
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

    case TMenuItem(sender).Tag of
    -5 : begin
           ReceteyeEkle;
           K1.Click;
         end;

    end;
end;

procedure TfrmHastaIlacTedavi.cxGridIlacTedaviPlaniStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
   if (ARecord.Values[1] = '0')
   Then begin
    AStyle := K;
   end;

   if (ARecord.Values[13] = '0')
   Then begin
    AStyle := Sari_Siyah;
   end;

   if (ARecord.Values[13] = '1')
   Then begin
    AStyle := Yesil_Siyah;
   end;
end;


function TfrmHastaIlacTedavi.Init(Sender : TObject) : Boolean;
begin
  Result := False;
  if not inherited Init(Sender) then exit;
  _HastaBilgileriniCaptionGoster_ := True;
  IlacTedavi(_dosyaNO_,_gelisNO_,_provizyonTarihi_);
  Result := True;
end;


procedure TfrmHastaIlacTedavi.FormCreate(Sender: TObject);
var
  index,i : integer;
  Ts,Ts1 : TStringList;
  List,List1 : TListeAc;
begin
 //cxYeni.Visible := false;
  inherited;
  Tag := TagfrmHastaIlacTedavi;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  indexFieldName := 'id';
  TableName := _TableName_;
  cxPanel.Visible := false;
  cxTab.Width := 200;
  SayfaCaption('Tedavi','','','','');
  Olustur(self,_TableName_,'Ýlaç Tedavi',23);
  Menu := PopupMenu1;



end;

end.
