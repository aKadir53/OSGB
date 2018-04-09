unit Sozlesmeler;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,ShellApi,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  kadir, kadirMedula3, KadirType,GetFormClass,GirisUnit,
  StdCtrls, Buttons, sBitBtn, ExtCtrls, cxContainer, cxLabel, cxTextEdit, cxGridExportLink,
  cxMaskEdit, cxDropDownEdit, cxCalendar, sCheckBox, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxGroupBox, cxRadioGroup, sGauge,
  cxPCdxBarPopupMenu, cxMemo, cxPC, cxCheckBox, rxAnimate, rxGIFCtrl,
  JvExControls, JvAnimatedImage, JvGIFCtrl, cxButtons, cxCurrencyEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, KadirLabel, cxImage,
  cxImageComboBox;

type
  TfrmSozlesmeler = class(TGirisForm)
    DataSource1: TDataSource;
    ADO_Faturalar: TADOQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle7: TcxStyle;
    PopupMenu1: TPopupMenu;
    miYeniGozetim: TMenuItem;
    cxStyle8: TcxStyle;
    tmr1: TTimer;
    GridSozlesme: TcxGridKadir;
    GridSozlesmeler: TcxGridDBTableView;
    GridSozlesmelerid: TcxGridDBColumn;
    GridSozlesmelerSirketKod: TcxGridDBColumn;
    GridSozlesmelertanimi: TcxGridDBColumn;
    GridSozlesmelerBaslangic: TcxGridDBColumn;
    GridSozlesmelerBitis: TcxGridDBColumn;
    GridSozlesmelerSozlesmeTanimi: TcxGridDBColumn;
    GridSozlesmelerFaturaKesimAyGunu: TcxGridDBColumn;
    GridSozlesmelerfaturaTarihi: TcxGridDBColumn;
    GridSozlesmelerFaturaID: TcxGridDBColumn;
    GridSozlesmelerSozlesmeTutar: TcxGridDBColumn;
    GridSozlesmelerAktif: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    procedure Fatura(islem: Integer);
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure Gonder;

  private
    { Private declarations }
    FImages : array of TcxImage;
    FImageIds : array of Integer;
    function findMethod(dllHandle: Cardinal; methodName: string): FARPROC;

  protected
    procedure GozlemYazdir (const GozlemID : integer);

  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;



const
//LIB_DLL = 'NoktaDLL.dll';
  LIB_DLL = 'D:\Projeler\VS\c#\EFatura\EFaturaDLL\ClassLibrary1\bin\Debug\EFaturaDLL.dll';
  test = 'https://efatura-test.uyumsoft.com.tr/Services/Integration';
  gercek = 'https://efatura.uyumsoft.com.tr/Services/Integration';
var
  frmSozlesmeler: TfrmSozlesmeler;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}

function TfrmSozlesmeler.findMethod(dllHandle: Cardinal;  methodName: string): FARPROC;
begin
  Result := GetProcAddress(dllHandle, pchar(methodName));
end;

procedure TfrmSozlesmeler.Gonder;
var
 i : integer;
 sql ,sozlesmeId,sirket,sirketAdi,FaturaTarihi,sonucStr,faturaID : string;
begin
   sonucStr := '';
   if mrYes = ShowMessageSkin('Seçili Sözleþmelerden Fatura Oluþturulacak',
                               '','','msg')
   then begin
       pBar.Properties.Max := GridSozlesmeler.Controller.SelectedRowCount;
       pBar.Position := 0;
       DurumGoster(True,True,'Fatura Oluþturuluyor... , ' + sirketAdi);
       try
         for i := 0 to GridSozlesmeler.Controller.SelectedRowCount - 1 do
         begin
            faturaID := GridCellToString(GridSozlesmeler,'faturaID',i);
            sozlesmeId := GridCellToString(GridSozlesmeler,'id',i);
            sirket := GridCellToString(GridSozlesmeler,'sirketKod',i);
            sirketAdi := GridCellToString(GridSozlesmeler,'tanimi',i);
            FaturaTarihi := GridCellToString(GridSozlesmeler,'faturaTarihi',i);

            if faturaID = '' then
            begin
                Application.ProcessMessages;
                pBar.Position := i;
                sql := 'exec sp_SirketAktifSozlesmedenFaturaUret ' + sozlesmeId + ',' + QuotedStr(faturaTarihi);
                sonucStr := datalar.QuerySelect(sql).Fields[0].AsString;
                if sonucStr = '1' then
                   TcxMemo(FindComponent('SonucLog')).Lines.Add(sirketAdi + ' : OK')
                 else
                   TcxMemo(FindComponent('SonucLog')).Lines.Add(sirketAdi + ' : ' + sonucStr)
            end
            else
              Continue;
         end;
         ShowMessageSkin('Fatura Oluþturma Ýþlemi Tamamlandý','','','info');
       finally
         DurumGoster(False,False,'');
       end;
   end;
end;




function TfrmSozlesmeler.Init(Sender : TObject) : Boolean;
begin
  TapPanelElemanVisible(True,True,false,false,false,false,False,false,False,False,False,False);
  txtTopPanelTarih1.Date := date;
  Result := True;
end;


procedure TfrmSozlesmeler.Fatura(islem: Integer);
var
  F : TGirisForm;
  GirisRecord : TGirisFormRecord;
  bBasarili: Boolean;
  fID : string;
begin

end;

procedure TfrmSozlesmeler.cxButtonCClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  aModalResult : TModalResult;
  guid : string;
begin
  inherited;

  case Tcontrol(sender).Tag of
  -9 : begin
         Gonder;
       end;
  -11 : begin

       end;
  -12 : begin

       end;
  -20 : begin

        end;
  -21:begin

  end;
  -22,-23:begin

          end;
  -24:begin

  end;
  -27 : begin

        end;
  end;
end;

procedure TfrmSozlesmeler.FormCreate(Sender: TObject);
var
 Memo : TcxMemo;
begin
  inherited;
  cxPanel.Visible := false;
 // ToolBar1.Visible := false;

 // ClientHeight := AnaForm.ClientHeight - (AnaForm.ToolBar1.Height + AnaForm.dxStatusBar1.Height+50);
 // ClientWidth := formGenislik;
 // Olustur(self,TableName,'Personel Listesi',23);
  Menu := PopupMenu1;

  TopPanel.Visible := true;

  setDataStringKontrol(self,GridSozlesme,'GridSozlesme','',Kolon1,'',800,400);

  Memo := TcxMemo.Create(self);
  memo.Tag := -100;
  setDataStringKontrol(self,Memo,'SonucLog','',sayfa2_Kolon1,'',800,400);

  GridSozlesmeler.DataController.DataSource := DataSource;
  SayfaCaption('Sözleþmeler','Log','','','');
end;

procedure TfrmSozlesmeler.GozlemYazdir(const GozlemID: integer);
var
  ado : TADOQuery;
  sql : String;
  TopluDataset : TDataSetKadir;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'sp_SahaGozlemRaporBaski ' + IntToStr (GozlemID);

    datalar.QuerySelect(ado, sql);
    TopluDataset.Dataset0 := ado;
    TopluDataset.Dataset0.Name := 'SahaSaglikGozetimRaporu';

    PrintYap('007','Saha Saðlýk Gözetim Raporu','',TopluDataset,pTNone)
  finally
    ado.free;
  end;
end;

procedure TfrmSozlesmeler.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

