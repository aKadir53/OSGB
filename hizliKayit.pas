unit hizliKayit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, ExtCtrls, cxControls, cxPC,adodb,db,
  cxGraphics, cxDropDownEdit, cxMaskEdit, cxCalendar, cxLabel, cxContainer,
  cxEdit, cxTextEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,kadir,
  data_modul, KadirType,GetFormClass,
  cxDBEdit, dxmdaset, InvokeRegistry, Rio, SOAPHTTPClient,strUtils,RaporIslemleriWS,
  cxMemo, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxGroupBox, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxGridBandedTableView, cxGridDBBandedTableView, cxGridCardView,
  cxGridDBCardView, cxGridCustomLayoutView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  SQLMemMain, cxImageComboBox, KadirLabel,GirisUnit, cxButtons, Menus,
  Vcl.Grids, AdvObj, BaseGrid, AdvGrid,ComObj, tmsAdvGridExcel, AdvGridWorkbook;

type
  TfrmHizliKayit = class(TGirisForm)
    cxPageControl1: TcxPageControl;
    PopupMenu1: TPopupMenu;
    miExcelYukle: TMenuItem;
    miVeritabaninaYaz: TMenuItem;
    miAlanEslestir: TMenuItem;
    GridList: TAdvStringGrid;
    miSoyadAyarla: TMenuItem;
    miOtomatikAktarim: TMenuItem;
    procedure cxButtonCClick(Sender: TObject);
    procedure ExcelToGrid;
    procedure GridToPersonelKartTable;
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
    FFileName : String;
    FAlanEslestirmeYapildi : Boolean;
  protected
    FInitialColumnHeaders : TStringList;
    FAcceptedColumnHeaders : TStringList;
    FAssignedColumnIndexes : TIntegerArray;
    function GridAlanEslestirme (const aTargetFields : TStringList;
      var aAcceptedSourceColumns : TStringList;
      var aAcceptedColumnIndexes : TIntegerArray;
      const pReset : Boolean;
      pMsg: Boolean = True;
      aLookupColumnHeaders : TStringList = nil;
      aLookupColumnHeaderFieldNames : TStringList = nil) : Boolean;
    function GridAtanmisSutunDegerAyarlaGetir (const aGrid: TStringGrid; const ACol, ARow : Integer):String;
    function GridBagliSutunDegerAyarlaGetir (const aGrid: TStringGrid; const aBaglantiList: TIntegerArray; const ACol, ARow : Integer):String;
    function GridBaslikAyarla (const S: String; const iNumber : Integer) : String;
    procedure GridSoyadiAyarla;
    procedure GridCiftBaslikAyarla;
    procedure TanimliOtomatikAktarim;
  public
    { Public declarations }
    constructor Create (Aowver: TComponent); override;
    destructor Destroy; override;
    function Init(Sender: TObject) : Boolean; override;
  end;

  Const
  _insertPersonel_ = 'exec sp_YeniPersonelHastaKarti ' +
                     '@SirketKod = %0:s,' +
                     '@TCKIMLIKNO = %1:s,'+
                     '@HASTAADI = %2:s,'+
                     '@HASTASOYADI = %3:s,'+
                     '@CINSIYETI = %4:s,'+
                     '@MEDENI = %5:s,'+
                     '@BABAADI = %6:s,'+
                     '@ANAADI = %7:s,'+
                     '@EV_SEHIR = %19:s,'+
                     '@EV_ADRES = %8:s,'+
                     '@EV_TEL1 = %9:s,'+
                     '@EV_TEL2 = %10:s,'+
                     '@DOGUMYERI = %11:s,'+
                     '@DOGUMTARIHI = %12:s,'+
                     '@UYRUGU = %13:s,'+
                     '@baslangic = %14:s,'+
                     '@kanGrubu = %15:s,'+
                     '@USER_ID = %16:s,'+
                     '@sube = %18:s,'+
                     '@Aktif = %17:s';

var
  frmHizliKayit: TfrmHizliKayit;

implementation
uses AnaUnit, Math, NThermo, TransUtils;
{$R *.dfm}
const
  colTCKimlikNo = 1;
  colAdi        = 2;
  colSoyadi     = 3;
  colCinsiyeti  = 4;
  colMedeniHali = 5;
  colBabaAdi    = 6;
  colAnaAdi     = 7;
  ColAdres      = 8;
  ColTelefon1   = 9;
  ColTelefon2   = 10;
  ColDogumYeri  = 11;
  colDogumTarihi= 12;
  colUyruk      = 13;
  colDurum      = 14;
  colIseBaslama = 15;
  colKanGrubu   = 16;

destructor TfrmHizliKayit.Destroy;
begin
  FAcceptedColumnHeaders.Free;
  FInitialColumnHeaders.Free;
  inherited;
end;

procedure TfrmHizliKayit.ExcelToGrid;
var
  openD : TOpenDialog;
  dosya : string;
  //sonsatir ,sonColon, x : integer;
begin
  openD := TOpenDialog.Create(nil);
  try
    if not openD.Execute then Exit;
    dosya := openD.FileName;
  finally
    openD.Free;
  end;

  GridList.LoadFromXLS(dosya);
  FFileName := dosya;
  FAlanEslestirmeYapildi := False;


(*
  v := CreateOleObject('Excel.Application');
  try
    v.Workbooks.Open(dosya);
    v.visible := true;//Exceli acip verileri goster
    sayfa := v.workbooks[1].worksheets[1];
  except
    v.DisplayAlerts := False;  //Excel mesajlar�n� g�r�nteleme
    v.Quit;
    v := Unassigned;
  end;

  sonsatir := v.Range[Char(96 + 1) + IntToStr(65536)].end[3].Rows.Row;
  sonColon := sayfa.UsedRange.Columns.Count;
  if SonColon > 5 then ;;

  for x := 2 to sonsatir do
  begin
    MemTable_Personel.append;
    MemTable_Personel.fieldByname('TCKIMLIKNO').asstring := sayfa.cells[x,1];
    MemTable_Personel.fieldByname('HASTAADI').asstring := sayfa.cells[x,2];
    MemTable_Personel.fieldByname('HASTASOYADI').asstring := sayfa.cells[x,3];
    MemTable_Personel.fieldByname('CINSIYETI').asstring := sayfa.cells[x,4];
    MemTable_Personel.fieldByname('MEDENI').asstring := sayfa.cells[x,5];
    MemTable_Personel.fieldByname('BABAADI').asstring := sayfa.cells[x,6];
    MemTable_Personel.fieldByname('ANAADI').asstring := sayfa.cells[x,7];
    MemTable_Personel.fieldByname('EV_SEHIR').asstring := sayfa.cells[x,8];
    MemTable_Personel.fieldByname('EV_TEL1').asstring := sayfa.cells[x,9];
    MemTable_Personel.fieldByname('EV_TEL2').asstring := sayfa.cells[x,10];
    MemTable_Personel.fieldByname('DOGUMYERI').asstring := sayfa.cells[x,11];
    MemTable_Personel.fieldByname('DOGUMTARIHI').asstring := IfThen (Pos ('.',  sayfa.cells[x,12]) > 0, NoktasizTarih (sayfa.cells[x,12]), sayfa.cells[x,12]);;
    MemTable_Personel.fieldByname('UYRUGU').asstring := sayfa.cells[x,13];
    MemTable_Personel.fieldByname('Durum').asstring := sayfa.cells[x,14];
    MemTable_Personel.fieldByname('BASLANGIC').asstring := IfThen (Pos ('.',  sayfa.cells[x,15]) > 0, NoktasizTarih (sayfa.cells[x,15]), sayfa.cells[x,15]);
    MemTable_Personel.fieldByname('KANGRUBU').asstring := sayfa.cells[x,16];
    MemTable_Personel.post;
    end;
    *)
end;


function TfrmHizliKayit.GridAlanEslestirme (const aTargetFields : TStringList;
  var aAcceptedSourceColumns : TStringList;
  var aAcceptedColumnIndexes : TIntegerArray;
  const pReset : Boolean;
  pMsg: Boolean = True;
  aLookupColumnHeaders : TStringList = nil;
  aLookupColumnHeaderFieldNames : TStringList = nil): Boolean;
var
  aStringList : TStringList;
  i, j: Integer;
  sItems, sHeaderBackup : String;
  aItems: TIntegerArray;
begin
  Result := False;
  if pMsg then
    if ShowMessageSkin ('Bu i�lem, bu ekran� ilk a�t���n�zda g�rd���n�z standart �ablon d���ndaki personel listelerini aktarabilmeniz i�in imk�n sa�lar'#13#10#13#10+
                        IfThen (pReset,
                          '�nceden yap�lm�� e�le�tirmeler unutularak t�m s�tunlar i�in',
                          'Ba�l�klar� e�le�en s�tunlar otomatik olarak e�le�tirilecek ve geri kalan� i�in')+
                        ' size e�le�tirme sorusu sorulacakt�r'#13#10#13#10+
                        'Devam etmek istiyor musunuz ?',
                        '', '', 'conf') <> mrYes then Exit;
  aStringList := TStringList.create;
  try
    //reset gelmi�se grid ba�l�klar� e�le�mesin diye tahrip et.
    if pReset then
    begin
      sHeaderBackup := GridList.Rows [0].Text;
      for i := 0 to GridList.ColCount - 1 do
        GridList.Cells [i, 0] := GridBaslikAyarla ('[' + GridList.Cells [i, 0] + ']', i);
    end;
    try
      //stringlist boylar�n� e�itle
      while aAcceptedSourceColumns.Count < aTargetFields.Count do
        aAcceptedSourceColumns.Add(aTargetFields [aAcceptedSourceColumns.Count]);

      for i := 0 to GridList.ColCount - 1 do
        GridList.Cells [i, 0] := GridBaslikAyarla (GridList.Cells [i, 0], i);
      //�� 20180105 Gride y�klenen excrl dosyas�nda ayn� ba�l�kl� s�tunlar varsa farkl�la�t�r, ileride e�le�melerde problem ��karmas�n.
      GridCiftBaslikAyarla;
      //�� 20171231 e�le�en s�tun ba�l�klar�n� gridde aray�p indexlerini ata
      for i := 0 to aTargetFields.Count - 1 do
        aStringList.Add(IntToStr(GridList.Rows [0].IndexOf(aTargetFields [i])));
      //arama ba�l��� listeleri ge�ilmi�se o ba�l�klardan s�tunlar� bulma gayreti i�inde kendini kaybet...
      if Assigned (aLookupColumnHeaders) and Assigned (aLookupColumnHeaderFieldNames) then
      begin
        //grid s�tunlar�n� tara, s�tun e�le�memi�se s�tun ba�l��� lookup ba�l�klarda varsa, onun kar��l���ndaki s�tun da e�le�memi�se nikahla ikisini
        for i := 0 to GridList.ColCount - 1 do
        begin
          if aStringList.IndexOf (IntToStr (i)) < 0 then
          begin
            //s�tun ba�l�klar�nda var m�
            j := aLookupColumnHeaders.IndexOf(GridList.Cells [i, 0]);
            if j < 0 then Continue;
            //kar��l���ndaki s�tunun ad� ne ?
            sItems := aLookupColumnHeaderFieldNames [j];
            //alan�n indexi ne ?
            j := aTargetFields.IndexOf(sItems);
            //Alan�n indexindeki de�er -1 ise e�lenmemi�, hemen nikahla.
            if StrToInt (aStringList [j]) < 0 then aStringList [j] := IntToStr (i);
          end;
        end;
      end;

      //�� 20180103 son aktar�lan ve e�le�tirilmi� excel ba�l�klar� ile uyu�anlar� da e�le�tir
      for i := 0 to aAcceptedSourceColumns.Count - 1 do
        if (StrToInt (aStringList [i]) < 0)
          and (GridList.Rows [0].IndexOf(aAcceptedSourceColumns [i]) >= 0)
          and (aStringList.IndexOf (IntToStr(GridList.Rows [0].IndexOf(aAcceptedSourceColumns [i]))) < 0) then
            aStringList [i] := IntToStr(GridList.Rows [0].IndexOf(aAcceptedSourceColumns [i]));
      //bulunamayanlar i�in kullan�c�ya ba�vur
      for i := 0 to aStringList.Count - 1 do
      begin
        //o s�tun kar��l��� bir s�tun e�le�memi�.
        if StrToInt (aStringList [i]) < 0 then
        begin
          //grid ba�l�klar�ndan, daha �nce e�le�memi� olanlar�ndan bir ItemList olu�tur.
          sItems:= 'Yok / Alma / Atla';
          SetLength (aItems, 1);
          aItems [0] := -1;
          for j := 0 to GridList.ColCount - 1 do
            if aStringList.IndexOf (IntToStr(j)) < 0 then
            begin
              sItems := sItems + #13#10 +
                StringReplace (GridBaslikAyarla(GridList.Cells [j, 0], J), #13#10, '_', [rfReplaceAll]);
              SetLength (aItems, High (aItems) + 2);
              aItems [High (aItems)] := j;
            end;
          //se�tirecek alan kalmad�ysa d�ng�y� k�r
          if High (aItems) <= 0 then Break;

          j := -1;
          if (not CombodanSectir ('Alan se�iniz', aTargetFields [i], sItems, j))
            or (j < 0) then
          begin
            ShowMessageSkin('��lem iptal edildi', '', '', 'info');
            Exit;
          end;
          aStringList [i] := IntToStr (aItems [j]);
        end;
      end;
      //buraya kadar sa� salim geldikse olay tamam, ge�ici yerel diziyi form dizisine aktar�p ortam� terk edelim...
      SetLength(aAcceptedColumnIndexes, 0);
      for i := 0 to aStringList.Count - 1 do
      begin
        SetLength(aAcceptedColumnIndexes, High (aAcceptedColumnIndexes) + 2);
        aAcceptedColumnIndexes [i] := StrToInt (aStringList [i]);
        //e�le�en yeni grid s�tun ba�l��� bo� de�ilse onu son excel kabul edilen s�tunlar listesine ekle.
        if (aAcceptedColumnIndexes [i] >= 0) and (not IsNull (GridList.Cells [aAcceptedColumnIndexes [i], 0])) then
          aAcceptedSourceColumns [i] := GridList.Cells [aAcceptedColumnIndexes [i], 0];
        //E�le�en ba�l�klar� grid �zerinde yerine koyarak g�ster
        if aAcceptedColumnIndexes [i] >= 0 then GridList.Cells [aAcceptedColumnIndexes [i], 0] := aTargetFields [i];
      end;
      Result := True;
      if pMsg Then
        ShowMessageSkin('Alan E�le�tirmesi Ba�ar� ile Tamamland�', '', '', 'info');
    finally
      //resetli gelmi� fakat i�lem iptal olmu�sa s�tun ba�l�klar�n� geri koy
      if (not Result) and pReset then
      begin
        aStringList.Text := sHeaderBackup;
        for i := 0 to GridList.ColCount - 1 do
          GridList.Cells [i, 0] := aStringList [i];
      end;
    end;
  finally
    aStringList.Free;
  end;
end;

function TfrmHizliKayit.GridBagliSutunDegerAyarlaGetir (
  const aGrid: TStringGrid;
  const aBaglantiList: TIntegerArray;
  const ACol, ARow : Integer):String;
begin
  Result := Trim (
              StringReplace (
                IfThen (
                  aBaglantiList [ACol] >= 0,
                  aGrid.Cells[
                    IfThen (
                      aBaglantiList [ACol] <0,
                      0,
                      aBaglantiList [ACol]),
                    ARow],
                  ''),
                #9,
                '',
                [rfReplaceAll]));
end;

function TfrmHizliKayit.GridAtanmisSutunDegerAyarlaGetir(
  const aGrid: TStringGrid; const ACol, ARow: Integer): String;
begin
  Result := GridBagliSutunDegerAyarlaGetir (aGrid, FAssignedColumnIndexes, ACol, ARow);
end;

function TfrmHizliKayit.GridBaslikAyarla(const S: String; const iNumber : Integer): String;
begin
  Result := IfThen (
              IsNull (
                Trim (
                  StringReplace (
                    s,
                    #9,
                    '',
                    [rfReplaceAll]))),
              'Ba�l�ks�z S�tun - ' + IntToStr (iNumber),
              Trim (StringReplace (s, #9, '', [rfReplaceAll])));
end;

procedure TfrmHizliKayit.GridCiftBaslikAyarla;
var
  iCol, iRepeat : Integer;
  aSL : TStringList;
  sTmp1, sTmp2 : String;
begin
  aSL := TStringList.Create;
  try
    for iCol := 0 to GridList.ColCount - 1 do
    begin
      iRepeat := 1;
      sTmp1 := GridList.Cells [iCol, 0];
      sTmp2 := sTmp1;
      while aSL.IndexOf (sTmp2) >= 0 do
      begin
        sTmp2 := sTmp1 + IntToStr (iRepeat);
        iRepeat := iRepeat + 1;
      end;
      aSL.Add(sTmp2);
      GridList.Cells [iCol, 0] := sTmp2;
    end;
  finally
    aSL.Free;
  end;
end;

procedure TfrmHizliKayit.GridSoyadiAyarla;
var
  iRow, iAd, iSoyad : Integer;
  sSonKelime, sBasTaraf : String;
  aTargetFields, aAccepted : TStringList;
  aAcceptedIndexes : TIntegerArray;
begin
  if ShowMessageSkin (
      'Bu i�lem, Soyad� s�tunu bo� olan sat�rlara Ad� '+
      's�tununun son kelimesini veya Ad� s�tunu bo� '+
      'olan sat�rlara Soyad� s�tununun ilk kelimelerini atayacakt�r.'#13#10#13#10+
      'Emin misiniz ?',
      '', '', 'conf') <> mrYes then Exit;
  if not FAlanEslestirmeYapildi then
  begin
    aTargetFields := TStringList.Create;
    try
      aAccepted := TStringList.Create;
      try
        aTargetFields.Clear;
        aTargetFields.Add(FInitialColumnHeaders [colAdi]);
        aTargetFields.Add(FInitialColumnHeaders [colSoyadi]);
        aAccepted.Add(FAcceptedColumnHeaders [colAdi]);
        aAccepted.Add(FAcceptedColumnHeaders [colSoyadi]);
        if not GridAlanEslestirme (aTargetFields, aAccepted, aAcceptedIndexes, False, False) then Exit;
        FAssignedColumnIndexes [colAdi] := aAcceptedIndexes [0];
        FAssignedColumnIndexes [colSoyadi] := aAcceptedIndexes [1];
        FAcceptedColumnHeaders [colAdi] := aAccepted [0];
        FAcceptedColumnHeaders [colSoyadi] := aAccepted [1];
      finally
        aAccepted.Free;
      end;
    finally
      aTargetFields.Free;
    end;
  end;

  if (FAssignedColumnIndexes [colAdi] < 0)
    or (FAssignedColumnIndexes [colSoyadi] < 0) then
  begin
    ShowMessageSkin('Ad� veya Soyad� s�tunlar� ile alan ili�kilendirilmesi yap�lmam��', '', '', 'info');
    Exit;
  end;
  iAd := 0;
  iSoyad := 0;
  for iRow := GridList.FixedRows to GridList.RowCount - 1 do
  begin
    if IsNull (GridAtanmisSutunDegerAyarlaGetir (GridList, colAdi, iRow))
      and IsNull (GridAtanmisSutunDegerAyarlaGetir (GridList, colSoyadi, iRow)) then Continue;
    if not IsNull (GridAtanmisSutunDegerAyarlaGetir (GridList, colAdi, iRow))
      and not IsNull (GridAtanmisSutunDegerAyarlaGetir (GridList, colSoyadi, iRow)) then Continue;

    if IsNull (GridAtanmisSutunDegerAyarlaGetir (GridList, colSoyadi, iRow)) then
    begin
      iSoyad := iSoyad + 1;
      adsoyadayir (GridAtanmisSutunDegerAyarlaGetir (GridList, colAdi, iRow), sBasTaraf, sSonKelime);
    end
    else begin
      iAd := iAd + 1;
      adsoyadayir (GridAtanmisSutunDegerAyarlaGetir (GridList, colSoyadi, iRow), sBasTaraf, sSonKelime);
    end;
    GridList.Cells [FAssignedColumnIndexes [colAdi], iRow] := sBasTaraf;
    GridList.Cells [FAssignedColumnIndexes [colSoyadi], iRow] := sSonKelime;
  end;
  if iAd + iSoyad > 0 then
    showmessageskin (IntToStr (iAd) + ' adet Ad�, ' + IntToStr (iSoyad) + ' adet Soyad� bilgisi ayarland�', '', '', 'info')
   else
    showmessageskin ('De�i�ikli�e uygun sat�r bulunamad�', '', '', 'info');
end;

procedure TfrmHizliKayit.GridToPersonelKartTable;
var
  sql : string;
  bBasarili : Boolean;
  iThermo, iCount : Integer;
  _row_, iRowC : integer;
  Cins,Medeni,DTarih,BTarih : String;
  ado1 : TADOQuery;
  //aModalResult : TModalResult;
begin
  try
    if showmessageskin (
        'Ekrana y�klenen "' + FFileName + '" dosyas� i�eri�i '+#13#10+'"' + DATALAR.AktifSirketAdi + '" �irketine aktar�lacak'#13#10#13#10+
        'Onayl�yor musunuz ?', '', '', 'conf') <> mrYes then Exit;

    if IsNull (HakikiAktifSube) then
    begin
      ShowMessageSkin('Aktif �ube se�meden personel aktar�m� yapamazs�n�z.'#13#10'Personeller, se�ili �ubeye aktar�lacak.', '', '', 'info');
      Exit;
    end;
    if not FAlanEslestirmeYapildi then
      FAlanEslestirmeYapildi := GridAlanEslestirme (FInitialColumnHeaders, FAcceptedColumnHeaders, FAssignedColumnIndexes, False, False);
    if not FAlanEslestirmeYapildi then Exit;
    cins := '';
    medeni := '';
    for _row_ := 1 to GridList.RowCount - 1 do
    begin
      if IsNull (GridAtanmisSutunDegerAyarlaGetir(GridList,colTCKimlikNo,_row_))
        and IsNull (GridAtanmisSutunDegerAyarlaGetir(GridList,colAdi,_row_))
        and IsNull (GridAtanmisSutunDegerAyarlaGetir(GridList,colSoyadi,_row_)) then Continue;
      if not TCKontrol(GridAtanmisSutunDegerAyarlaGetir(GridList,colTCKimlikNo,_row_)) then
      begin
        cins := cins + IntToStr(_row_) + ', ';
        Medeni := Medeni + GridAtanmisSutunDegerAyarlaGetir(GridList,colTCKimlikNo,_row_) + ', ';
      end;
    end;
    if not IsNull (Cins) then
    begin
      Delete(cins, length (cins) - 1, 2);
      Delete(Medeni, length (Medeni) - 1, 2);
      Showmessageskin (cins + ' numaral� sat�rlardaki TC Kimlik Numaralar� Hatal� oldu�u i�in i�lem devam etmiyor'#13#10#13#10 + Medeni, '', '', 'info');
      if StrToIntDef (cins, -1) > 0 then GridList.Row := StrToIntDef (cins, -1);
      Exit;
    end;
    bBasarili := False;
    iCount := 0;
    iRowC := 0;
    ShowThermo(iThermo, 'Sat�rlar veritaban�na yaz�l�yor', 0, GridList.RowCount - 1, 0, True);
    try
      BeginTrans (datalar.ADOConnection2);
      try
        for _row_ := 1 to GridList.RowCount - 1 do
        begin
          if not UpdateThermo (_row_ - 1,
            iThermo,
            IntToStr (_row_) + ' ' +
            GridAtanmisSutunDegerAyarlaGetir(GridList,colTCKimlikNo,_row_) + ' ' +
            GridAtanmisSutunDegerAyarlaGetir(GridList,colAdi,_row_) + ' ' +
            GridAtanmisSutunDegerAyarlaGetir(GridList,colSoyadi,_row_)) then Exit;

          //hem ad� hem TCKimlik numaras� bo� ise atlayarak sonraki sat�rdan devam et.
          if IsNull (GridAtanmisSutunDegerAyarlaGetir(GridList,colTCKimlikNo,_row_))
            and IsNull (GridAtanmisSutunDegerAyarlaGetir(GridList,colAdi,_row_))
            and IsNull (GridAtanmisSutunDegerAyarlaGetir(GridList,colSoyadi,_row_)) then Continue;
          //yukar�dan ge�tiyse ad� veya TCKimlik dolu demektir.
          if IsNull (GridAtanmisSutunDegerAyarlaGetir(GridList,colTCKimlikNo,_row_))
            or IsNull (GridAtanmisSutunDegerAyarlaGetir(GridList,colAdi,_row_))
            or IsNull (GridAtanmisSutunDegerAyarlaGetir(GridList,colSoyadi,_row_)) then
          begin
            //transaction mesaj� beklemesin �nce rollback olsun sonra mesaj gelsin diye exit ile de�il raise ile yapt�k.
            raise Exception.Create ('Ad� veya Soyad� veya TC Kimlik Numaras� alan� dolu olmal�d�r.');
          end;

          sql :=
            'select pk.SirketKod, s.Tanimi SirketAdi, pk.sube, ss.subeTanim SubeAdi,'#13#10 +
            '  cast (case when pk.SirketKod = ' + SQLValue (DATALAR.AktifSirket) + ' and pk.Sube = ' + SQLValue (HakikiAktifSube) + ' then 1 else 0 end as bit) AktarilandaVar'#13#10 +
            'from personelkart pk'#13#10 +
            'inner join SIRKEtler_tnm s on s.SirketKod = pk.SirketKod'#13#10 +
            'inner join SIRKET_SUBE_TNM ss on ss.sirketKod = pk.Sirketkod'#13#10 +
            '  and ss.Subekod = pk.Sube'#13#10 +
            'where pk.TCKIMLIKNO = ' + SQLValue (GridAtanmisSutunDegerAyarlaGetir (GridList, colTCKimlikNo,_row_)) + ''#13#10 +
            'order by AktarilandaVar desc';
          ado1 := DATALAR.QuerySelect(sql);
          try
            if not ado1.Eof then
            begin
              if ado1.FieldByName ('AktarilandaVar').AsBoolean then
                raise Exception.Create(GridAtanmisSutunDegerAyarlaGetir (GridList, colTCKimlikNo,_row_) + ' TC Kimlik Numaras� bu �irket ve �ubede tan�ml�.'#13#10'Daha �nceden girilmi� veya bu excel i�inde iki kere yer alm�� olabilir')
              else begin
                if ShowMessageSkin (
                     GridAtanmisSutunDegerAyarlaGetir (GridList, colTCKimlikNo,_row_) +
                     ' TC Kimlik Numaras�, '#13#10 +
                     ado1.FieldByName ('SirketAdi').AsString + ' �irketi'#13#10+
                     ado1.FieldByName ('SubeAdi').AsString + ' �ubesinde tan�ml�.'#13#10#13#10+
                     'Devam Edilsin Mi ?' , '', '', 'conf') <> mrYes then
                  raise Exception.Create('��lem iptal edildi');
              end;
            end;
          finally
            ado1.Free;
          end;

          Cins := ifThen(AnsiSameText (Copy(GridAtanmisSutunDegerAyarlaGetir (GridList, colCinsiyeti,_row_),1,1), 'B'),'1',
                  ifThen(AnsiSameText (Copy(GridAtanmisSutunDegerAyarlaGetir (GridList, colCinsiyeti,_row_),1,1), '1'),'1',
                  ifThen(AnsiSameText (Copy(GridAtanmisSutunDegerAyarlaGetir (GridList, colCinsiyeti,_row_),1,1), 'K'),'1',
                  ifThen(AnsiSameText (Copy(GridAtanmisSutunDegerAyarlaGetir (GridList, colCinsiyeti,_row_),1,5), 'bayan'),'1',
                  '0'))));

          Medeni := ifThen(Copy(GridAtanmisSutunDegerAyarlaGetir (GridList, colMedeniHali,_row_),1,1) = 'B','1',
                    ifThen(Copy(GridAtanmisSutunDegerAyarlaGetir (GridList, colMedeniHali,_row_),1,1) = '1','1','0'));

          DTarih := ifThen(pos('.',GridAtanmisSutunDegerAyarlaGetir (GridList, colDogumTarihi,_row_)) > 0,
                           NoktasizTarih(GridAtanmisSutunDegerAyarlaGetir (GridList, colDogumTarihi,_row_)),
                           GridAtanmisSutunDegerAyarlaGetir (GridList, colDogumTarihi,_row_));

          BTarih := ifThen(pos('.',GridAtanmisSutunDegerAyarlaGetir (GridList, colIseBaslama,_row_)) > 0,
                           NoktasizTarih(GridAtanmisSutunDegerAyarlaGetir (GridList, colIseBaslama,_row_)),
                           GridAtanmisSutunDegerAyarlaGetir (GridList, colIseBaslama,_row_));

          sql := Format(_insertPersonel_,
                        [SQLValue(datalar.AktifSirket),
                         SQLValue(GridAtanmisSutunDegerAyarlaGetir (GridList, colTCKimlikNo,_row_)),
                         SQLValue(GridAtanmisSutunDegerAyarlaGetir (GridList, colAdi,_row_)),
                         SQLValue(GridAtanmisSutunDegerAyarlaGetir (GridList, colSoyadi,_row_)),
                         SQLValue(Cins),
                         SQLValue(Medeni),
                         SQLValue(GridAtanmisSutunDegerAyarlaGetir (GridList, colBabaAdi,_row_)),
                         SQLValue(GridAtanmisSutunDegerAyarlaGetir (GridList, colAnaAdi,_row_)),
                         SQLValue(GridAtanmisSutunDegerAyarlaGetir (GridList, ColAdres,_row_)),
                         SQLValue(AktarimTelefonNoTemizle (GridAtanmisSutunDegerAyarlaGetir (GridList, ColTelefon1,_row_))),
                         SQLValue(AktarimTelefonNoTemizle (GridAtanmisSutunDegerAyarlaGetir (GridList, ColTelefon2,_row_))),
                         SQLValue(GridAtanmisSutunDegerAyarlaGetir (GridList, ColDogumYeri,_row_)),
                         SQLValue(DTarih),
                         SQLValue(AktarimUyrukDuzelt (GridAtanmisSutunDegerAyarlaGetir (GridList, colUyruk,_row_))),
                         SQLValue(BTarih),
                         'NULL',
                         SQLValue(datalar.username),
                         SQLValue('1'),
                         SQLValue(HakikiAktifSube),
                         'NULL']);
          datalar.queryExec(SelectAdo,sql);
          iRowC := _row_;
          iCount := iCount + 1;
        end;
        bBasarili := True;
      finally
        if bBasarili then
        begin
          CommitTrans (datalar.ADOConnection2);
          showmessageSkin (IntToStr (iCount) + ' adet kay�t ba�ar� ile aktar�ld�', '', '', 'info');
        end
        else begin
          RollBackTrans (datalar.ADOConnection2);
          GridList.Row := iRowC + 1;
          showmessageSkin (IntToStr (iRowC + 1) + '. sat�rda hata olu�tu, aktar�m i�lemi tamamlanamad�.',
                           'Personel Bilgisi :  ' +GridList.Cells[colAdi,_row_] + ' ' + GridList.Cells[colSoyadi,_row_] ,
                           '', 'info');
        end;
      end;
    finally
      FreeThermo(iThermo);
    end;
  except on e : exception do
   begin
     showmessageSkin(e.message,'','','info');
   end;
  end;

end;

function TfrmHizliKayit.Init(Sender: TObject): Boolean;
begin
  Result := inherited Init (Sender);
  miExcelYukle .Visible := (Tag = TagfrmHizliKayitPersonel) or (Tag = TagfrmHizliKayitDisAktarimlar);
  miVeritabaninaYaz .Visible := Tag = TagfrmHizliKayitPersonel;
  miAlanEslestir .Visible := Tag = TagfrmHizliKayitPersonel;
  miSoyadAyarla .Visible := Tag = TagfrmHizliKayitPersonel;
  miOtomatikAktarim .Visible := Tag = TagfrmHizliKayitDisAktarimlar;
end;

procedure TfrmHizliKayit.TanimliOtomatikAktarim;
var
  aQuery, bQuery : TADOQuery;
  sAktarimSonrasiStoredProc, sItems, sTableName : String;
  aHedefAlanlar, aBasliginHedefAlani, aAramaBasliklari, aSecilenAlanlar : TStringList;
  iInserted, iCol, iTmp, iAktarimTanimID, iThermo, iTmpRow : Integer;
  bTmpPost, bHepsiBos, bTmp, bHedefTabloyuBosalt, bHedefTabloyuBosaltSor : Boolean;
  aSecilenIndexler : TIntegerArray;
begin
  iTmpRow := GridList.Row;
  aQuery := TADOQuery.Create (Self);
  try
    aQuery.Connection := DATALAR.ADOConnection2;
    aQuery.SQL.Text := 'Select * From DisAktarimTanim Where Otomatik = 1 order by ID';
    aQuery.Open;
    sItems := '';
    while not aQuery.Eof do
    begin
      sItems := sItems + aQuery.FieldByName ('Tanimi').AsString+#13#10;
      aQuery.Next;
    end;
    if IsNull (sItems) then
    begin
      ShowMessageSkin('Se�ilebilecek Otomatik Aktar�m Tan�m� Bulunamad�', '', '', 'info');
      Exit;
    end;
    Delete (sItems, Length (sItems) - 1, 2);
    if not CombodanSectir ('Otomatik Aktar�m Se�iniz', 'Aktar�m �e�itleri', sItems, iAktarimTanimID) then Exit;
    if iAktarimTanimID < 0 then
    begin
      ShowMessageSkin('Aktar�m Tipi d�zg�n se�ilmemi�', '', '', 'info');
      Exit;
    end;
    aQuery.RecNo := iAktarimTanimID + 1;
    sTableName := aQuery.FieldByName ('HedefTabloAdi').AsString;
    sAktarimSonrasiStoredProc := aQuery.FieldByName ('AktarimSonrasiStoredProc').AsString;
    bHedefTabloyuBosalt := aQuery.FieldByName ('HedefTabloyuBosalt').AsBoolean;
    bHedefTabloyuBosaltSor := aQuery.FieldByName ('HedefTabloyuBosalt').IsNull;
    iAktarimTanimID := aQuery.FieldByName ('ID').AsInteger;
    aQuery.SQL.Text :=
      'select HedefAlanAdi, KaynakBaslik'#13#10 +
      'from DisAktarimBaglanti'#13#10 +
      'where AktarimTanimID = ' + IntToStr (iAktarimTanimID) + ''#13#10 +
      'order by ID';
    aHedefAlanlar := TStringList.Create;
    try
      aBasliginHedefAlani := TStringList.Create;
      try
        aAramaBasliklari := TStringList.Create;
        try
          aSecilenAlanlar := TStringList.Create;
          try
            aHedefAlanlar.Clear;
            aQuery.Open;
            while not aQuery.Eof do
            begin
              if aHedefAlanlar.IndexOf (aQuery.FieldByName('HedefAlanAdi').AsString) < 0 then
                aHedefAlanlar.Add(aQuery.FieldByName('HedefAlanAdi').AsString);
              aBasliginHedefAlani.Add(aQuery.FieldByName('HedefAlanAdi').AsString);
              aAramaBasliklari.Add(aQuery.FieldByName('KaynakBaslik').AsString);
              aQuery.Next;
            end;
            if aHedefAlanlar.Count <= 0 then
            begin
              ShowMessageSkin('Aktar�m Tipi i�in Alan - Ba�l�k e�le�tirmesi hi� yap�lmam��', '', '', 'info');
              Exit;
            end;
            //�imdi art�k elimizde alanlar ve kar��l���nda arayaca��m�z ba�l�klar var.
            //ortal���n... ... ... i�in alan e�le�tirmeyi �a��r�yoruz...
            if not GridAlanEslestirme (aHedefAlanlar, aSecilenAlanlar, aSecilenIndexler, False, False, aAramaBasliklari, aBasliginHedefAlani) then
            begin
              ShowMessageSkin('��lem �ptal Edildi', '', '', 'info');
              Exit;
            end;
            if bHedefTabloyuBosaltSor then
            begin
              //showmessageSkin i�imizi g�rmedi, evet hay�r vazge� laz�m oldu
              case dialogs.MessageDlg ('Hedef Tablo �nce bo�alt�ls�n m� ?', mtConfirmation, [mbYes, mbNo, mbCancel], 0, mbNo) of
                mrYes : bHedefTabloyuBosalt := True;
                mrNo : bHedefTabloyuBosalt := False;
                else Exit;
              end;
            end;
            bTmp := False;
            iInserted := 0;
            BeginTrans (datalar.ADOConnection2);
            try
              //Aktar�m tan�mlar�nda tablo bo�alt�l�p doldurulacak tipteyse bo�alt (null ise kullan�c�ya sormu�tuk)
              if bHedefTabloyuBosalt then
              begin
                aQuery.SQL.Text := 'Delete from '+ sTableName;
                aQuery.ExecSQL;
              end;

              //Alan listesinin SQL'ini olu�tur
              sItems := '';
              for iTmp := 0 to aHedefAlanlar.Count - 1 do
                sItems := sItems + aHedefAlanlar [iTmp] + ', ';
              if IsNull (sItems) then
              begin
                ShowMessageSkin('Alan listesi olmam��', '', '', 'info');
                Exit;
              end;
              Delete (sItems, Length (sItems) - 1, 2);

              aQuery.SQL.Text := 'Update dbo.DisAktarim_Parametre set Aktif = 0 where SPID = @@SPID and Aktif = 1';
              aQuery.ExecSQL;
              aQuery.SQL.Text :=
                'Insert into dbo.DisAktarim_Parametre (SPID, Aktif, SirketKod, SubeKod, Doktor, Kullanici, HostName, RecDatetime) '+
                'SELECT @@SPID SPID, 1 Aktif, ' + SQLValue(DATALAR.AktifSirket) + ' SirketKod, ' + SQLValue (HakikiAktifSube) +
                ' SubeKod, ' + SQLValue(DATALAR.doktorKodu)+' Doktor, ' + SQLValue (DATALAR.username) +
                ' Kullanici, HOST_NAME () HostName, getdate () RecDatetime';
              aQuery.ExecSQL;

              sItems := 'SELECT TOP 0 ' + sItems + ' FROM '+ sTableName;
              aQuery.sql.Text := sItems;
              aQuery.Open;
              try
                ShowThermo (iThermo, 'Bilgiler Veritaban�na Yaz�l�yor...', 0, GridList.RowCount - 1, 0, True);
                try
                  for iTmp := 1 to GridList.RowCount -1 do
                  begin
                    iTmpRow := iTmp;
                    if not UpdateThermo (iTmp - 1, iThermo, 'Sat�r: '+ IntToStr (iTmp)) then Exit;
                    bTmpPost := False;
                    aQuery.Append;
                    try
                      //Griddeki b�t�n s�tunlar� bo�sa o sat�r� yazmamas� i�in kontrol
                      bHepsiBos := True;
                      for iCol := 0 to aHedefAlanlar.Count - 1 do
                      begin
                        sItems := GridBagliSutunDegerAyarlaGetir (GridList, aSecilenIndexler, iCol, iTmp);
                        bHepsiBos := bHepsiBos and IsNull (sItems);
                        if not IsNull (sItems) then
                          aQuery.FieldByName(aHedefAlanlar [iCol]).AsString := sItems
                         else
                          aQuery.FieldByName(aHedefAlanlar [iCol]).Clear;
                        if (aQuery.FieldByName(aHedefAlanlar [iCol]) is TStringField)
                          and (aQuery.FieldByName(aHedefAlanlar [iCol]).Size < Length (sItems)) then
                        begin
                          GridList.Row := iTmp;
                          GridList.Col := aSecilenIndexler [iCol];
                          showmessageSkin (IntToStr (iTmp) + '. sat�rda ' + aHedefAlanlar [iCol] + ' alan� i�in girilen de�er ayr�lan alandan ('+
                            IntToStr (aQuery.FieldByName(aHedefAlanlar [iCol]).Size)+') geni�', '', '', 'info');
                        end;
                      end;
                      if bHepsiBos then Continue;
                      bTmpPost := True;
                      iInserted := iInserted + 1;
                    finally
                      if bTmpPost then
                        aQuery.Post
                       else
                        aQuery.Cancel;
                    end;
                  end;
                finally
                  FreeThermo(iThermo);
                end;

              finally
                aQuery.Close;
              end;
              aQuery.SQL.Text := 'Select top 0 AktarimTanimID, HedefAlanAdi, KaynakBaslik from dbo.DisaktarimBaglanti';
              aQuery.Open;
              try
                //Arama ba�l�klar�n� veritaban�na yaz...
                for iTmp := 0 to aSecilenAlanlar.Count -1 do
                  if not IsNull (aSecilenAlanlar [iTmp])
                    and (aAramaBasliklari.IndexOf (aSecilenAlanlar [iTmp]) < 0) then
                  begin
                    aAramaBasliklari.Add(aSecilenAlanlar [iTmp]);
                    aBasliginHedefAlani.Add(aHedefAlanlar [iTmp]);
                    aQuery.Append;
                    btmpPost := False;
                    try
                      aQuery.FieldByName('AktarimTanimID').AsInteger := iAktarimTanimID;
                      aQuery.FieldByName('HedefAlanAdi').AsString := aHedefAlanlar [iTmp];
                      aQuery.FieldByName('KaynakBaslik').AsString := aSecilenAlanlar [iTmp];
                      bTmpPost := True;
                    finally
                      if bTmpPost then
                        aQuery.Post
                       else
                        aQuery.Cancel;
                    end;
                  end;
              finally
                aQuery.Close;
              end;
              bTmp := True;
            finally
              if bTmp then
              begin
                CommitTrans (datalar.ADOConnection2);
              end
              else begin
                RollbackTrans (datalar.ADOConnection2);
                GridList.Row := iTmpRow;
                showmessageSkin ('Aktar�m i�lemi s�ras�nda bir hata olu�tu ve i�lem tamamlanamad�', '', '', 'info');
              end;
            end;
            if IsNull (sAktarimSonrasiStoredProc) then Exit;
            bTmp := False;
            bTmpPost := False;
            bQuery := TADOQuery.Create(Self);
            try
              bQuery.Connection := aQuery.Connection;
              BeginTrans (datalar.ADOConnection2);
              try
                aQuery.SQL.Text := 'exec '+ sAktarimSonrasiStoredProc +' 0';
                aQuery.Open;
                try
                  ShowThermo(iThermo, 'Aktar�m sonras� g�ncellemeler yap�l�yor', 0, aQuery.RecordCount, 0, True);
                  try
                    while not aQuery.Eof do
                    begin
                      if not UpdateThermo (aQuery.RecNo - 1, iThermo, aQuery.FieldByName ('Aciklama').AsString) then Exit;
                      bQuery.SQL.Text := 'exec '+ sAktarimSonrasiStoredProc +' ' + IntToStr (aQuery.FieldByName ('iTip').AsInteger);
                      if aQuery.FieldByName ('Rowset').AsBoolean then
                      begin
                        bQuery.Open;
                        if aQuery.FieldByName ('RowsetEditInput').AsBoolean then
                        begin
                          if bQuery.RecordCount > 0 then
                          begin
                            if DBGridDialog (aQuery.FieldByName ('HataMesaji').AsString, bQuery, [mbOk], mbOk) <> mrOk Then Exit;
                          end;
                        end
                        else
                        if aQuery.FieldByName ('RowsetHata').AsBoolean then
                          if bQuery.RecordCount > 0 then
                          begin
                            bTmpPost := True;
                            sItems:= aQuery.FieldByName ('HataMesaji').AsString;
                            Exit;
                          end;
                      end
                      else begin
                        bQuery.ExecSQL;
                      end;
                      aQuery.Next;
                    end;
                  finally
                    FreeThermo(iThermo);
                  end;
                finally
                  aQuery.Close;
                end;
                bTmp := True;
              finally
                if bTmp then
                begin
                  CommitTrans (datalar.ADOConnection2);
                  showmessageSkin (IntToStr (iInserted) + ' adet sat�r ba�ar� ile aktar�ld�', '', '', 'info');
                end
                else begin
                  RollbackTrans (datalar.ADOConnection2);
                  showmessageSkin ('Aktar�m i�lemi s�ras�nda bir hata olu�tu ve i�lem tamamlanamad�', '', '', 'info');
                  if bTmpPost then
                    DBGridDialog (sItems, bQuery, [mbOk], mbOk);
                end;
              end;
            finally
              bQuery.Free;
            end;
          finally
            aSecilenAlanlar.Free;
          end;
        finally
          aAramaBasliklari.Free;
        end;
      finally
        aBasliginHedefAlani.Free;
      end;
    finally
      aHedefAlanlar.Free;
    end;
  finally
    aQuery.Free;
  end;
end;

constructor TfrmHizliKayit.Create(Aowver: TComponent);
begin
  inherited;
  FInitialColumnHeaders := TStringList.Create;
  FAcceptedColumnHeaders := TStringList.Create;
  SetLength (FAssignedColumnIndexes, 0);
end;

procedure TfrmHizliKayit.cxButtonCClick(Sender: TObject);
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;


  case TControl(sender).Tag  of
    0 : begin

          ExcelToGrid;
        end;
    1 : begin
          GridToPersonelKartTable;
        end;
    4: begin
      FAlanEslestirmeYapildi := GridAlanEslestirme (FInitialColumnHeaders, FAcceptedColumnHeaders, FAssignedColumnIndexes, True);
       end;
    5: GridSoyadiAyarla;
    6: TanimliOtomatikAktarim;
  end;
end;

procedure TfrmHizliKayit.FormCreate(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  Menu := PopupMenu1;
  cxPanel.Visible := false;
  SayfaCaption('','','' ,'','');
  //Form ilk a��ld���nda tasar�m halindeki s�tun ba�l�klar�n� dizide toplay�p ba�l� indexlerini ikinci diziye at�yoruz
  FInitialColumnHeaders.Clear;
  FAcceptedColumnHeaders.Clear;
  for i := 0 to GridList.ColCount - 1 do
  begin
    FInitialColumnHeaders.Add(GridBaslikAyarla (GridList.Cells [i, 0], i));
    FAcceptedColumnHeaders.Add(GridBaslikAyarla (GridList.Cells [i, 0], i));
  end;
  SetLength (FAssignedColumnIndexes, 0);
  for i:= 0 to FInitialColumnHeaders.Count - 1 do
  begin
    SetLength (FAssignedColumnIndexes, High (FAssignedColumnIndexes) + 2);
    FAssignedColumnIndexes [High (FAssignedColumnIndexes)] := i;
  end;
  FFileName := '';
  FAlanEslestirmeYapildi := False;
end;

end.
