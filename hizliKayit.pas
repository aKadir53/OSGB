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
    DataSource3: TDataSource;
    MemTable_Personel: TSQLMemTable;
    DataSource2: TDataSource;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
    FFileName : String;
    FAlanEslestirmeYapildi : Boolean;
  protected
    FInitialColumnHeaders : TStringList;
    FAcceptedColumnHeaders : TStringList;
    FAssignedColumnIndexes : array of Integer;
    procedure GridAlanEslestirme (pMsg: Boolean = True);
    function GridAtanmisSutunDegerAyarlaGetir (const aGrid: TStringGrid; const ACol, ARow : Integer):String;
    function GridBaslikAyarla (const S: String; const iNumber : Integer) : String;
    procedure GridSoyadiAyarla;
    procedure GridCiftBaslikAyarla;
    procedure TanimliOtomatikAktarim;
  public
    { Public declarations }
    constructor Create (Aowver: TComponent); override;
    destructor Destroy; override;
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
   v,sayfa : Variant;

implementation
  uses AnaUnit, Math, NThermo;
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
  if FAlanEslestirmeYapildi then GridAlanEslestirme(False);


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


procedure TfrmHizliKayit.GridAlanEslestirme (pMsg: Boolean = True);
var
  aStringList : TStringList;
  i, j: Integer;
  sItems : String;
  aItems: array of Integer;
begin
  if pMsg then
    if ShowMessageSkin ('Bu i�lem, bu ekran� ilk a�t���n�zda g�rd���n�z standart �ablon d���ndaki personel listelerini aktarabilmeniz i�in imk�n sa�lar'#13#10#13#10+
                        'Ba�l�klar� e�le�en s�tunlar otomatik olarak e�le�tirilecek ve geri kalan� i�in size e�le�tirme sorusu sorulacakt�r'#13#10#13#10+
                        'Devam etmek istiyor musunuz ?',
                        '', '', 'conf') <> mrYes then Exit;
  aStringList := TStringList.create;
  try
    for i := 0 to GridList.ColCount - 1 do
      GridList.Cells [i, 0] := GridBaslikAyarla (GridList.Cells [i, 0], i);
    //�� 20180105 Gride y�klenen excrl dosyas�nda ayn� ba�l�kl� s�tunlar varsa farkl�la�t�r, ileride e�le�melerde problem ��karmas�n.
    GridCiftBaslikAyarla;
    //�� 20171231 e�le�en s�tun ba�l�klar�n� gridde aray�p indexlerini ata
    for i := 0 to FInitialColumnHeaders.Count - 1 do
      aStringList.Add(IntToStr(GridList.Rows [0].IndexOf(FInitialColumnHeaders [i])));
    //�� 20180103 son aktar�lan ve e�le�tirilmi� excel ba�l�klar� ile uyu�anlar� da e�le�tir
    for i := 0 to FAcceptedColumnHeaders.Count - 1 do
      if (StrToInt (aStringList [i]) < 0)
        and (GridList.Rows [0].IndexOf(FAcceptedColumnHeaders [i]) >= 0)
        and (aStringList.IndexOf (IntToStr(GridList.Rows [0].IndexOf(FAcceptedColumnHeaders [i]))) < 0) then
          aStringList [i] := IntToStr(GridList.Rows [0].IndexOf(FAcceptedColumnHeaders [i]));
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
        if (not CombodanSectir ('Alan se�iniz', FInitialColumnHeaders [i], sItems, j))
          or (j < 0) then
        begin
          ShowMessageSkin('��lem iptal edildi', '', '', 'info');
          Exit;
        end;
        aStringList [i] := IntToStr (aItems [j]);
      end;
    end;
    //buraya kadar sa� salim geldikse olay tamam, ge�ici yerel diziyi form dizisine aktar�p ortam� terk edelim...
    for i := Low (FAssignedColumnIndexes) to High (FAssignedColumnIndexes) do
    begin
      FAssignedColumnIndexes [i] := StrToInt (aStringList [i]);
      //e�le�en yeni grid s�tun ba�l��� bo� de�ilse onu son excel kabul edilen s�tunlar listesine ekle.
      if (FAssignedColumnIndexes [i] >= 0) and (not IsNull (GridList.Cells [FAssignedColumnIndexes [i], 0])) then
        FAcceptedColumnHeaders [i] := GridList.Cells [FAssignedColumnIndexes [i], 0];
      //E�le�en ba�l�klar� grid �zerinde yerine koyarak g�ster
      if FAssignedColumnIndexes [i] >= 0 then GridList.Cells [FAssignedColumnIndexes [i], 0] := FInitialColumnHeaders [i];
    end;
    FAlanEslestirmeYapildi := True;
    if pMsg Then
      ShowMessageSkin('Alan E�le�tirmesi Ba�ar� ile Tamamland�', '', '', 'info');
  finally
    aStringList.Free;
  end;
end;

function TfrmHizliKayit.GridAtanmisSutunDegerAyarlaGetir(
  const aGrid: TStringGrid; const ACol, ARow: Integer): String;
begin
  Result := Trim (
              StringReplace (
                IfThen (
                  FAssignedColumnIndexes [ACol] >= 0,
                  aGrid.Cells[
                    IfThen (
                      FAssignedColumnIndexes [ACol] <0,
                      0,
                      FAssignedColumnIndexes [ACol]),
                    ARow],
                  ''),
                #9,
                '',
                [rfReplaceAll]));
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
begin
  if ShowMessageSkin (
      'Bu i�lem, Soyad� s�tunu bo� olan sat�rlara Ad� '+
      's�tununun son kelimesini veya Ad� s�tunu bo� '+
      'olan sat�rlara Soyad� s�tununun ilk kelimelerini atayacakt�r.'#13#10#13#10+
      'Emin misiniz ?',
      '', '', 'conf') <> mrYes then Exit;
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
begin
  try
    if showmessageskin (
        'Ekrana y�klenen "' + FFileName + '" dosyas� i�eri�i "' + DATALAR.AktifSirketAdi + '" �irketine aktar�lacak'#13#10#13#10+
        'Onayl�yor musunuz ?', '', '', 'conf') <> mrYes then Exit;

    if IsNull (Datalar.AktifSube)
      or (Length (datalar.AktifSube) > 2)
      or (Pos (',', datalar.AktifSube) > 0) then
    begin
      ShowMessageSkin('Aktif �ube se�meden personel aktar�m� yapamazs�n�z.'#13#10'Personeller, se�ili �ubeye aktar�lacak.', '', '', 'info');
      Exit;
    end;
    bBasarili := False;
    iCount := 0;
    iRowC := 0;
    ShowThermo(iThermo, 'Sat�rlar veritaban�na yaz�l�yor', 0, GridList.RowCount - 1, 0, True);
    try
      datalar.ADOConnection2.BeginTrans;
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
          ;
          Cins := ifThen(Copy(GridAtanmisSutunDegerAyarlaGetir (GridList, colCinsiyeti,_row_),1,1) = 'B','1',
                  ifThen(Copy(GridAtanmisSutunDegerAyarlaGetir (GridList, colCinsiyeti,_row_),1,1) = '1','1',
                  ifThen(Copy(GridAtanmisSutunDegerAyarlaGetir (GridList, colCinsiyeti,_row_),1,1) = 'K','1','0')));

          Medeni := ifThen(Copy(GridAtanmisSutunDegerAyarlaGetir (GridList, colMedeniHali,_row_),1,1) = 'B','1',
                    ifThen(Copy(GridAtanmisSutunDegerAyarlaGetir (GridList, colMedeniHali,_row_),1,1) = '1','1','0'));

          DTarih := ifThen(pos('.',GridAtanmisSutunDegerAyarlaGetir (GridList, colDogumTarihi,_row_)) > 0,
                           NoktasizTarih(GridAtanmisSutunDegerAyarlaGetir (GridList, colDogumTarihi,_row_)),
                           GridAtanmisSutunDegerAyarlaGetir (GridList, colDogumTarihi,_row_));

          BTarih := ifThen(pos('.',GridAtanmisSutunDegerAyarlaGetir (GridList, colIseBaslama,_row_)) > 0,
                           NoktasizTarih(GridAtanmisSutunDegerAyarlaGetir (GridList, colIseBaslama,_row_)),
                           GridAtanmisSutunDegerAyarlaGetir (GridList, colIseBaslama,_row_));

          sql := Format(_insertPersonel_,
                        [QuotedStr(datalar.AktifSirket),
                         QuotedStr(GridAtanmisSutunDegerAyarlaGetir (GridList, colTCKimlikNo,_row_)),
                         QuotedStr(GridAtanmisSutunDegerAyarlaGetir (GridList, colAdi,_row_)),
                         QuotedStr(GridAtanmisSutunDegerAyarlaGetir (GridList, colSoyadi,_row_)),
                         QuotedStr(Cins),
                         QuotedStr(Medeni),
                         QuotedStr(GridAtanmisSutunDegerAyarlaGetir (GridList, colBabaAdi,_row_)),
                         QuotedStr(GridAtanmisSutunDegerAyarlaGetir (GridList, colAnaAdi,_row_)),
                         QuotedStr(GridAtanmisSutunDegerAyarlaGetir (GridList, ColAdres,_row_)),
                         QuotedStr(AktarimTelefonNoTemizle (GridAtanmisSutunDegerAyarlaGetir (GridList, ColTelefon1,_row_))),
                         QuotedStr(AktarimTelefonNoTemizle (GridAtanmisSutunDegerAyarlaGetir (GridList, ColTelefon2,_row_))),
                         QuotedStr(GridAtanmisSutunDegerAyarlaGetir (GridList, ColDogumYeri,_row_)),
                         QuotedStr(DTarih),
                         QuotedStr(AktarimUyrukDuzelt (GridAtanmisSutunDegerAyarlaGetir (GridList, colUyruk,_row_))),
                         QuotedStr(BTarih),
                         'NULL',
                         QuotedStr(datalar.username),
                         QuotedStr('1'),
                         QuotedStr(datalar.AktifSube),
                         'NULL']);
          datalar.queryExec(SelectAdo,sql);
          iRowC := _row_;
          iCount := iCount + 1;
        end;
        bBasarili := True;
      finally
        if bBasarili then
        begin
          datalar.ADOConnection2.CommitTrans;
          showmessageSkin (IntToStr (iCount) + ' adet kay�t ba�ar� ile aktar�ld�', '', '', 'info');
        end
        else begin
          datalar.ADOConnection2.rollbackTrans;
          showmessageSkin (IntToStr (iRowC + 1) + '. sat�rda hata olu�tu, aktar�m i�lemi tamamlanamad�.', '', '', 'info');
          GridList.Row := iRowC;
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



procedure TfrmHizliKayit.TanimliOtomatikAktarim;
var
  aQuery : TADOQuery;
  aIDs : array of Integer;
  sItems, sTableName : String;
  aSL1, aSL2, aSL3 : TStringList;
  iAktarimTanimID : Integer;
begin
  aQuery := TADOQuery.Create (Self);
  try
    aQuery.Connection := DATALAR.ADOConnection2;
    aQuery.SQL.Text := 'Select * From DisAktarimTanim Where Otomatik = 1 order by ID';
    aQuery.Open;
    SetLength(aIDS, 0);
    aSL1 := TStringList.Create;
    try
      sItems := '';
      while not aQuery.Eof do
      begin
        SetLength (aIDs, High (aIDs) + 2);
        aIDs [High (aIDs)] := aQuery.FieldByName ('ID').AsInteger;
        sItems := sItems + aQuery.FieldByName ('Tanimi').AsString+#13#10;
        aSL1.Add (aQuery.FieldByName ('HedefTabloAdi').AsString);
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
      sTableName := aSL1 [iAktarimTanimID];
      iAktarimTanimID := aIDs [iAktarimTanimID];
      aQuery.SQL.Text :=
        'select HedefAlanAdi, KaynakBaslik'#13#10 +
        'from DisAktarimBaglanti'#13#10 +
        'where AktarimTanimID = ' + IntToStr (iAktarimTanimID) + ''#13#10 +
        'order by ID';
      aSL2 := TStringList.Create;
      try
        aSL3 := TStringList.Create;
        try
          aSL1.Clear;
          aQuery.Open;
          while not aQuery.Eof do
          begin
            if aSL1.IndexOf (aQuery.FieldByName('HedefAlanAdi').AsString) < 0 then
              aSL1.Add(aQuery.FieldByName('HedefAlanAdi').AsString);
            aSL2.Add(aQuery.FieldByName('HedefAlanAdi').AsString);
            aSL3.Add(aQuery.FieldByName('KaynakBaslik').AsString);
            aQuery.Next;
          end;
          if aSL1.Count <= 0 then
          begin
            ShowMessageSkin('Aktar�m Tipi i�in Alan - Ba�l�k e�le�tirmesi hi� yap�lmam��', '', '', 'info');
            Exit;
          end;
          //�imdi art�k elimizde alanlar ve kar��l���nda arayaca��m�z ba�l�klar var.
          //ortal���n...

  dialogs.showmessage ('');
          �
        finally

        end;
      finally

      end;
    finally
      aSL1.Free;
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
      GridAlanEslestirme;
       end;
    5: GridSoyadiAyarla;
    6: TanimliOtomatikAktarim;
  end;
end;




procedure TfrmHizliKayit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  MemTable_Personel.Active := False;
  MemTable_Personel.EmptyTable;
end;

procedure TfrmHizliKayit.FormCreate(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  MemTable_Personel.active := True;
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
isg katip excel'ini programdan aktarma
tan�m ekranlar�nda �ifre kutular�n� *'lamak acil
excel aktar�m�nda ekrandaki ve veritaban�ndaki �ift tckimlik numaras� kontrolleri. farkl� firmada ve �ubde varsa uyar� ver kabul ederse devam et, ayn� �irket �ubede varsa uyar� ver devam etme, pasifse aktif hale getirilebilir.
uyru�u vs alanlarda excel aktar�m d�zeltmeleri yap�lacak
end.
