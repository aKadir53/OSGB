unit TahlilSonucGir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, kadir,strutils,GirisUnit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, Buttons, cxButtons, ExtCtrls, ADODB, cxMemo, Keyboard, cxTextEdit, cxDropDownEdit, Menus,
  KadirLabel, cxContainer, cxCheckBox, dxSkinsCore, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxGroupBox;

type
  TfrmTahlilsonucGir = class(TGirisForm)
    pnlOnay: TPanel;
    txtinfo: TLabel;
    cxGrid2: TcxGrid;
    Sonuc: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    DataSource1: TDataSource;
    SonucColumn1: TcxGridDBColumn;
    SonucColumn2: TcxGridDBColumn;
    SonucColumn3: TcxGridDBColumn;
    SonucColumn4: TcxGridDBColumn;
    SonucColumn5: TcxGridDBColumn;
    SonucColumn6: TcxGridDBColumn;
    SonucColumn7: TcxGridDBColumn;
    ADO_tetkikler: TADOQuery;
    SonucColumn8: TcxGridDBColumn;
    SonucColumn9: TcxGridDBColumn;
    ADO_tetkikEski: TADOQuery;
    DataSource2: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    TouchKeyboard1: TTouchKeyboard;
    Button1: TButton;
    cxGrid3: TcxGrid;
    Liste: TcxGridDBTableView;
    ListedosyaNo: TcxGridDBColumn;
    ListeColumn1: TcxGridDBColumn;
    ListeColumn10: TcxGridDBColumn;
    Listeh: TcxGridDBColumn;
    ListeColumn9: TcxGridDBColumn;
    ListeDBColumn901940: TcxGridDBColumn;
    ListeColumn2: TcxGridDBColumn;
    ListeDBColumn902210: TcxGridDBColumn;
    ListeColumn3: TcxGridDBColumn;
    ListeDBColumn903130: TcxGridDBColumn;
    ListeColumn4: TcxGridDBColumn;
    ListeColumn5: TcxGridDBColumn;
    ListeColumn6: TcxGridDBColumn;
    ListeDBColumn903670: TcxGridDBColumn;
    ListeDBColumn901910: TcxGridDBColumn;
    DuzCa: TcxGridDBColumn;
    ListeDBColumn901260: TcxGridDBColumn;
    Caxp: TcxGridDBColumn;
    ListeDBColumn900200: TcxGridDBColumn;
    ListeDBColumn901500: TcxGridDBColumn;
    ListeDBColumn903240: TcxGridDBColumn;
    ListeDBColumn900210: TcxGridDBColumn;
    ListeDBColumn901620: TcxGridDBColumn;
    ListeDBColumn9016201: TcxGridDBColumn;
    ListeDBColumn9016202: TcxGridDBColumn;
    ListeDBColumn9016203: TcxGridDBColumn;
    ListeDBColumn9016204: TcxGridDBColumn;
    ListeDBColumn9016205: TcxGridDBColumn;
    ListeDBColumn9016206: TcxGridDBColumn;
    ListeDBColumn9016207: TcxGridDBColumn;
    ListeDBColumn9016208: TcxGridDBColumn;
    ListeDBColumn901020: TcxGridDBColumn;
    ListeDBColumn901040: TcxGridDBColumn;
    ListeDBColumn901220: TcxGridDBColumn;
    Ts: TcxGridDBColumn;
    ListeDBColumn904120: TcxGridDBColumn;
    ListeDBColumn900900: TcxGridDBColumn;
    ListeDBColumn900681: TcxGridDBColumn;
    ListeDBColumn900340: TcxGridDBColumn;
    ListeDBColumn902980: TcxGridDBColumn;
    ListeDBColumn901450: TcxGridDBColumn;
    ListeDBColumn907440: TcxGridDBColumn;
    ListeDBColumn906610: TcxGridDBColumn;
    ListeDBColumn906630: TcxGridDBColumn;
    ListeDBColumn906660: TcxGridDBColumn;
    ListeDBColumn902110: TcxGridDBColumn;
    ListeDBColumn902290: TcxGridDBColumn;
    ListeDBColumn901580: TcxGridDBColumn;
    ListeDBColumn903990: TcxGridDBColumn;
    ListeDBColumn530100: TcxGridDBColumn;
    ListeDBColumn801840: TcxGridDBColumn;
    ListeDBColumn705140: TcxGridDBColumn;
    ListeColumn7: TcxGridDBColumn;
    ListeColumn8: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    SonucColumn10: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    otoSonuc: TPopupMenu;
    Button2: TButton;
    T1: TMenuItem;
    btnVazgec: TcxButtonKadir;
    cxCheckBox1: TcxCheckBox;
    PopupMenu1: TPopupMenu;
    SonuYazdr1: TMenuItem;
    cxGroupBox1: TcxGroupBox;
    pnlKlavye: TcxGroupBox;
    pnlTop: TcxGroupBox;
    procedure HastaSonuc(dosyaNo,gelisNo,hasta : string; tip: string = '2');
    procedure btnVazgecClick(Sender: TObject);
    procedure SonucKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CheckBox1Click(Sender: TObject);
    procedure ADO_tetkiklerAfterScroll(DataSet: TDataSet);
    procedure SonucEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure SonucEditKeyPress(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
    procedure ListeFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Yazdir;
    procedure cxKaydetClick(Sender: TObject);override;
  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmTahlilsonucGir: TfrmTahlilsonucGir;
  _dosya_ , _gelis_ , _hasta_ , _tip_ : string;
implementation
    uses data_modul, rapor;//TahlilTakipListesi;
{$R *.dfm}

function TfrmTahlilsonucGir.Init(Sender : TObject) : Boolean;
var
   x : integer;
   _menu_ :  TMenuItem;
   sira,testKodu,sql : string;
   ado : TADOQuery;
begin
       HastaSonuc(_dosyaNO_,_gelisNo_,_HastaAdSoyad_);
       try
        ado := TADOQuery.Create(nil);
        ado.Connection := datalar.ADOConnection2;
        sql := 'select * from LabSonucOtoDeger order by Sira';
        datalar.QuerySelect(ado,sql);
        otoSonuc.Items.Clear;
        for  x := 1 to ado.RecordCount do
        begin
            _Menu_ := TMenuItem.Create(Self);
            _menu_.Caption := ado.fieldbyname('Deger').AsString;
            _menu_.Tag := x;
            _menu_.OnClick := Button2.OnClick;
            otoSonuc.Items.Add(_menu_);
            ado.Next;
        end;

        sql := 'select * from KanGruplari order by Kod';
        datalar.QuerySelect(ado,sql);
        for  x := 1 to ado.RecordCount do
        begin
            _Menu_ := TMenuItem.Create(Self);
            _menu_.Caption := ado.fieldbyname('grup').AsString;
            _menu_.Tag := x;
            _menu_.OnClick := Button2.OnClick;
            otoSonuc.Items.Add(_menu_);
            ado.Next;
        end;

       except
       end;
       ado.Free;
  Result := True;
end;

procedure TfrmTahlilsonucGir.CheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.Checked
  Then begin
   HastaSonuc(_dosya_,_gelis_,_hasta_,'');
   _tip_ := '';
  end
  Else begin
    HastaSonuc(_dosya_,_gelis_,_hasta_,'2');
    _tip_ := '2';
  end;

end;

procedure TfrmTahlilsonucGir.FormCreate(Sender: TObject);


begin
       cxPanel.Visible := false;
       dxStatusBar1.Visible := false;
       cxTab.Tabs[0].Caption := 'Sonuç Giriþ';
       Menu:= PopupMenu1;

  //    setDataStringKontrol(self,cxCheckBox1, '','',Kolon1,'',100);


end;

procedure TfrmTahlilsonucGir.HastaSonuc(dosyaNo,gelisno,hasta : string; tip : string = '2');
var
  sql,sqlTip : string;
begin
     _tip_ := tip;

     if tip = '2' then
     sqlTip := ' and abs(l.Tip) = ''2'''
     Else
     sqlTip := '';


     cxTab.Tabs[0].Caption := _HastaAdSoyad_;

     sql := 'select hr.dosyaNo,hr.gelisNo,code,NAME1,gd,cd,SIRANO,islemAciklamasi,hr.TARIH,hr.KAbulNo from hareketler hr ' +
          //  ' join HastaKart h on h.dosyaNo = hr.dosyaNo ' +
            ' left join labtestler l on l.butkodu = hr.code ' +
         //   ' left join LabSonucDegerlendirme d on d.dosyaNo = hr.dosyaNo and d.gelisNo = hr.gelisNo ' +
            ' where (onay = 1 or substring(kabulNo,1,1) <> '''') and hr.dosyaNo = ' + QuotedStr(_dosyaNo_) + ' and hr.gelisNo = ' + _gelisNo_ +
             sqlTip +
            ' order by KabulNo,l.sira, code ';
     datalar.QuerySelect(ADO_Tetkikler,sql);

end;


procedure TfrmTahlilsonucGir.ListeFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  dosyaNo,gelisNo,hasta : string;
begin

  try
 //    dosyaNo := frmTahliltakip.ADO_Tetkikler.fieldbyname('dosyaNo').AsString;
 //    gelisNo := frmTahliltakip.ADO_Tetkikler.fieldbyname('g').AsString;
 //    hasta := frmTahliltakip.ADO_Tetkikler.fieldbyname('h').AsString;

   //  Application.CreateForm(TfrmTahlilsonucGir, frmTahlilsonucGir);
     frmTahlilsonucGir.HastaSonuc(dosyaNo,gelisNo,hasta);
   //  frmTahlilsonucGir.ShowModal;
   //  frmTahlilsonucGir := nil;
  except on e : Exception do
   begin
     ShowMessageSkin(e.Message,'','','info');
   end;
  end;
end;

procedure TfrmTahlilsonucGir.SonucEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  pnlKlavye.Visible := True;
end;

procedure TfrmTahlilsonucGir.SonucEditKeyPress(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
begin
  if Key = ','
  then Key := '.';
end;

procedure TfrmTahlilsonucGir.SonucKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 sql : string;
begin

  if key = 13
  then begin
   ADO_tetkikler.Next;
  end;


end;


procedure TfrmTahlilsonucGir.cxKaydetClick(Sender: TObject);
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  case TControl(sender).Tag of
  -1 : begin
         Yazdir;
       end;

  end;

end;

procedure TfrmTahlilsonucGir.ADO_tetkiklerAfterScroll(DataSet: TDataSet);
var
 sql : string;
begin
    sql := 'select top 7 cast(TARIH as datetime) TARIH,gd,cd,KabulNo from hareketler ' +
            ' where TARIH > getdate()-180' +
            ' and  dosyaNo = ' + QuotedStr(ADO_tetkikler.FieldByName('dosyaNo').AsString) +
            ' and code = ' + QuotedStr(ADO_tetkikler.FieldByName('code').AsString) + ' and gd+cd > 0 ' +
            ' order by TARIH desc ';
     datalar.QuerySelect(ADO_TetkikEski,sql);

end;

procedure TfrmTahlilsonucGir.Yazdir;
var
 ado : TADOQuery;
 sql : string;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  sql := 'exec sp_HastaLabSonuc ' + QuotedStr(_dosya_) + ',' +  _gelis_ + ',' + QuotedStr(_tip_);
  datalar.QuerySelect(ado,sql);
  frmRapor.topluset.Dataset0 := ado;
  frmRapor.raporData1(frmRapor.topluset ,'112','\Lab Sonuç Yazdýr');
  frmRapor.ShowModal;
  ado.Free;
end;

procedure TfrmTahlilsonucGir.btnVazgecClick(Sender: TObject);
begin
 close;
end;

procedure TfrmTahlilsonucGir.Button1Click(Sender: TObject);
begin
  pnlKlavye.Visible := false;
end;

procedure TfrmTahlilsonucGir.Button2Click(Sender: TObject);
var
  s : string;
begin
  s := StringReplace(TMenuItem(sender).Caption,'&','',[rfReplaceAll]);

  ADO_tetkikler.Edit;

  if ADO_tetkikler.FieldByName('SonucTip').AsString = 'B'
  then begin
    if s = 'NEGATÝF' then s := '-1';
    if s = 'POZÝTÝF' then s := '1';
    ADO_tetkikler.FieldByName('gd').AsVariant := s;
  end;

  if ADO_tetkikler.FieldByName('SonucTip').AsString = 'N'
  then begin
    ADO_tetkikler.FieldByName('gd').AsVariant := s;
  end;

  if ADO_tetkikler.FieldByName('SonucTip').AsString = 'S'
  then begin
    ADO_tetkikler.FieldByName('islemAciklamasi').AsString := s;
  end;

  ADO_tetkikler.Post;

end;

end.
