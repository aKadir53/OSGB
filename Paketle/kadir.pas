unit kadir;

interface

uses  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
      Dialogs, ADODB,registry,ComCtrls,StdCtrls,db,ExtCtrls,AdvGrid, DBAdvGrd,
      ShellApi,forms,data_model1,Grids,JvToolEdit,

      Mask, Math,  Printers,
      EditType, StrUtils, Menus,  SHDocVw, ActiveX,  Buttons,
      ImgList, BaseGrid, ConerBtn, AdvToolBtn,
      IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

function Httpserver : string;
function Ipserver : string;
Function serverbaglan(adres , katalog , sifre :string):string;

function kullanici : string;
function GetDataForMuavin: string;
function AnaHesapAdi (AnaNo: string): string;
function Bugun: string;
procedure StartWork;
procedure EndWork;
function ListResult: string;
procedure Grid_Temizle ( grid_adi : TStringGrid );
function NextKontrol(frm_:TForm; var Key: Char): Boolean;
procedure SetListResult ( s: string );
function AddSpaceLeft ( s: string; l: integer ): string;
function AddSpaceRight ( s: string; l: integer ): string;
function Tarih (t: string): string;
function FormattedTarih (t: string): string;
function numTOtxt_M ( d: extended; p: integer ):string;
function ShowMessage ( msg1,msg2,msg3: string; t: string ): word;
function ShowMessageSkin ( msg1,msg2,msg3: string; t: string ): word;
function tarihyap(t: string): tdate;
function tarihal(t: tdate): string;
function SayisalVeri(alan:Tlabelededit; var Key: Char): Boolean;
function BuyukHarf(var Key: Char): Boolean;
Function yaz(islem :string; tarih :tdate;hesapkodu :string ;tutarb :real;tutara:real;conn:string) :string;
Function bakim(b: TADOConnection;donem:string):string;
Function serverismi(katalog :string):string;overload;
Function serverismi(adres , katalog :string):string;overload;
Function servertip():string;
function Zorunlu(_frm: TForm; var myhint:string) :Boolean;overload;
function Zorunlu(_pnl: TPanel; var myhint:string) :Boolean;overload;
function silinensatirbilgisi (Grid:TAdvStringGrid ; col : integer; col1:integer) : string;
procedure ComboDoldur (Q  : TADOQuery;
                              sql: string;
                              C  :TComboBox);

procedure ComboDoldur2 (Q  : TADOQuery;
                              sql: string;
                              C  :TComboBox;alan:integer ; alan2 :integer);

function Grd_Giydir(Grid:TAdvStringGrid;colsay:integer;ca : tstringlist) : string;
function Grd_ColGenislik(Grid:TAdvStringGrid;colsay:integer;c1:integer;c2:integer;c3:integer;
                         c4:integer;c5:integer;c6:integer;c7:integer;c8:integer):string;
function ListeGoster( flds,_tablo,ord1,ord2,ord3,whr,
                             txt1,txt2,txt3,title_: String;
                             txtara :String;
                             input_ :tjvcomboedit;
                             w1,w2,w3,t1,t2,t3,ord_,cols_: Integer;
                             bul :Boolean;
                             Sorgu_:TADOQuery ): Boolean; overload;

function ListeGoster( flds,_tablo,ord1,ord2,ord3,whr,
                             txt1,txt2,txt3,title_: String;
                             txtara :String;
                             input_ :TEditTyped;
                             w1,w2,w3,t1,t2,t3,ord_,cols_: Integer;
                             bul :Boolean;
                             Sorgu_:TADOQuery ): Boolean;overload;

function tariharalikkontrol (tarih : Tdate ; donem : string) : string;
function aktifdonem : string;
procedure Query2Grid3 (grid_adi : TAdvStringGrid ;sorgu : TADOQuery ; SiraNo,gridReSize : Boolean;tip,t:integer); overload;
procedure Query2Grid3 (grid_adi : TAdvStringGrid ;sorgu : TADOQuery ; SiraNo,gridReSize : Boolean;tip,t,rcol,icol:integer) ; overload;

function secilisatirsayisi (Grid:TAdvStringGrid ; col : integer) : integer;
function secilisatirbilgisi (Grid:TAdvStringGrid ; col : integer;col1:integer) : string;
function notsecilisatirbilgisi (Grid:TAdvStringGrid ; col : integer; col1:integer) : string;
procedure GorselAyar(_frm : TForm; image:TImageList);
function KucukHarfTRK(str :string) :string;
function updatesatirbilgisi (Grid:TAdvStringGrid ; col : integer;col1:integer) : string;
function secilisatirtopla (Grid:TAdvStringGrid ; col : integer; col1:integer; renk :tcolor; r:boolean) : real;
procedure tumuseciptal(Grid : TAdvStringGrid ; durum : integer); overload;
procedure tumuseciptal1(Grid : TAdvStringGrid);

procedure tumuseciptal(grid : TAdvStringGrid);overload;

procedure Query2Grid3_Sirket(grid_adi : TAdvStringGrid ;sorgu : TADOQuery ; SiraNo,gridReSize : Boolean;tip,t:integer) ;
function ControlTarih ( t: string): integer;
procedure XlsBeginStream(XlsStream: TStream; const BuildNumber: Word);
procedure XlsEndStream(XlsStream: TStream);
procedure XlsWriteCellRk(XlsStream: TStream; const ACol, ARow: Word;
  const AValue: Integer);
procedure XlsWriteCellNumber(XlsStream: TStream; const ACol, ARow: Word;
  const AValue: Double);
procedure XlsWriteCellLabel(XlsStream: TStream; const ACol, ARow: Word;
  const AValue: string);
function txtTOtxt_M (txt: string ): string;
function AllignRight ( s: string ): string;
function hesapbakiye(hesap : string) : real;
function _HesapAdi (hesapkodu: string): string;
function ayliktarih(tarih : Tdate) : Tdate;
function sirket(donem : string) : string;
function HesapTanimGetir(_kod : string) : string;
function PosHesapGetir(_kod : string) : string;
function AktifYil (donem : string) : string;
function UserRight(M, Islem: string): boolean;
function Sifrele (s: string): string;
procedure gridara(grid : TAdvStringGrid ; text : string);
function bransAdi(_kod : string): string;
function tesisAdi(_kod : string) : string;
procedure Disabled(_form : TForm);
procedure EnabledEdit(_form : TForm);
function Kurumadi(_kurum : string) : string;
function CariAd(_cariKod : string) : string;
procedure ilComboDoldur (combo : TComboBox);
function KillTaskc(Dosyadi: string): integer;


const
  _YTL_ = 'YTL';
  _OTL_ = 'TRL';
  harfler = '0123456789abcdefghijklmnoprstuvwxyz';
  SirketC = clMoneyGreen;
  SirketRC = clSilver;
  SirketR = clGray;
  _Modul = '';
  htCaptionBtn = htSizeLast + 1;
  WherePCSettingsKey = 'Software\MicroSoft\Windows\CurrentVersion\Explorer';
  WhereIESettingsKey = 'Software\MicroSoft\Internet Explorer';
  WhereControlPanel = 'Control Panel';
  IEPageSetup = 'PageSetup';

  SettingsSection = 'Shell Folders';
  Key_Personal = 'Personal';

var
  strList: string;
  AktifRenk :TColor = clYellow;
  ZorunluRenk :TColor = clSkyBlue;
  OpsiyonRenk :TColor = clWhite;
  KapaliRenk :TColor = clSilver;
  _pnlUst :TColor = clBtnFace;
  _pnlBaslik :TColor = clSilver;//clBlack;
  _pnlBaslikYazi :TColor = clBlack;//clWhite;
  _pnlOnay :TColor = $00BA7E5A;//12222042; //$00A56E3A;//clBackground;
  _pnlOnayYazi :TColor = clWhite;
  gridrenk :TColor = clBtnFace;
  gridYaziRenk :TColor = clBlack;
  gridAktif :TColor = clSkyBlue;//12222042;//$00A56E3A;//clBackground;
  gridAktifYaziRenk :TColor = clRed;
  sec : integer;
  DataForMuavin: string;
  MAX_NUM_LENGTH: integer;

  CXlsBof: array[0..5] of Word = ($809, 8, 00, $10, 0, 0);
  CXlsEof: array[0..1] of Word = ($0A, 00);
  CXlsLabel: array[0..5] of Word = ($204, 0, 0, 0, 0, 0);
  CXlsNumber: array[0..4] of Word = ($203, 14, 0, 0, 0);
  CXlsRk: array[0..4] of Word = ($27E, 10, 0, 0, 0);


implementation

uses message,Tlhelp32;






function KillTaskc(Dosyadi: string): integer;
const
   PROCESS_TERMINATE=$0001;
var
   devam: BOOL;
   fyakhandle: THandle;
   islem32: TProcessEntry32;
begin
   result := 0;

   fyakhandle := CreateToolhelp32Snapshot
                      (TH32CS_SNAPPROCESS, 0);
   islem32.dwSize := Sizeof(islem32);
   devam := Process32First(fyakhandle,
                                 islem32);

   while integer(devam) <> 0 do
   begin
     if ((UpperCase(ExtractFileName(islem32.szExeFile)) =
         UpperCase(Dosyadi))
      or (UpperCase(islem32.szExeFile) =
         UpperCase(Dosyadi))) then
      Result := Integer(TerminateProcess(OpenProcess(
                        PROCESS_TERMINATE, BOOL(0),
                        islem32.th32ProcessID), 0));
    devam := Process32Next(fyakhandle,
                                  islem32);
   end;

  CloseHandle(fyakhandle);
end;


function Httpserver : string;
var
   sql : string;
begin
   datalar.ADO_SQL.close;
   datalar.ADO_SQL.SQL.Clear;
   sql := 'select SLT from parametreler where SLK = ''GT'' and SLB = ''0002''';
   datalar.QuerySelect(datalar.ADO_SQL,sql);
   result := datalar.ADO_SQL.Fields[0].AsString;

end;

function Ipserver : string;
var
   sql : string;
begin
   datalar.ADO_SQL.close;
   datalar.ADO_SQL.SQL.Clear;
   sql := 'select SLT from parametreler where SLK = ''GT'' and SLB = ''0003''';
   datalar.QuerySelect(datalar.ADO_SQL,sql);
   result := datalar.ADO_SQL.Fields[0].AsString;

end;


procedure ilComboDoldur (combo : TComboBox);
var
  sql : string;
begin
  sql := 'select iladi from iller';
  ComboDoldur(datalar.ADO_SQL1,sql,combo);
end;

function cariAd(_cariKod : string) : string;
var
  sql : string;
begin
   sql := 'select cariad from saticilar where carikod = ' + #39 + _cariKod + #39;
   datalar.QuerySelect(datalar.ADO_SQL3,sql);
   result := datalar.ADO_SQL3.Fields[0].AsString;
end;

function KurumAdi (_kurum : string) : string;
var
  sql : string;
begin
    sql := 'select ADI1 from Kurumlar where Kurum = ' + #39 + _kurum + #39;
    datalar.QuerySelect(datalar.ADO_SQL,sql);
    if not datalar.ADO_SQL.Eof
    then result := datalar.ADO_SQL.Fields[0].AsString;

end;

procedure Disabled(_form : TForm);
var
  _say , x : integer;

begin
  _say := _form.ComponentCount - 1;

  for x := 0 to _say do
  begin
     if  _form.Components[x].ClassType = TEditTyped
     then begin
         if TEditTyped(_form.Components[x]).tag > 100
         then TEditTyped(_form.Components[x]).Color := clBtnShadow
         else TEditTyped(_form.Components[x]).Color := clBtnFace;
         TEditTyped(_form.Components[x]).Enabled := false;
     end;

     if  _form.Components[x].ClassType = TComboBox
     then begin
         if TComboBox(_form.Components[x]).tag > 100
         then TComboBox(_form.Components[x]).Color := clBtnShadow
         else TComboBox(_form.Components[x]).Color := clBtnFace;
         TComboBox(_form.Components[x]).Enabled := False;
     end;

     if  _form.Components[x].ClassType = TMemo
     then begin
         if TComboBox(_form.Components[x]).tag > 100
         then TComboBox(_form.Components[x]).Color := clBtnShadow
         else TComboBox(_form.Components[x]).Color := clBtnFace;
         TComboBox(_form.Components[x]).Enabled := False;
     end;


  end;
  _form.Refresh;
end;

procedure EnabledEdit(_form : TForm);
var
  _say , x : integer;

begin
  _say := _form.ComponentCount - 1;

  for x := 0 to _say do
  begin
     if  _form.Components[x].ClassType = TEditTyped
     then begin
         if TEditTyped(_form.Components[x]).tag > 100
         then TEditTyped(_form.Components[x]).Color := clSkyBlue
         else TEditTyped(_form.Components[x]).Color := clWhite;
         TEditTyped(_form.Components[x]).Enabled := True;
     end;

     if  _form.Components[x].ClassType = TComboBox
     then begin
         if TComboBox(_form.Components[x]).tag > 100
         then TComboBox(_form.Components[x]).Color := clSkyBlue
         else TComboBox(_form.Components[x]).Color := clWhite;
         TComboBox(_form.Components[x]).Enabled := True;
     end;

     if  _form.Components[x].ClassType = TMemo
     then begin
         if TComboBox(_form.Components[x]).tag > 100
         then TComboBox(_form.Components[x]).Color := clSkyBlue
         else TComboBox(_form.Components[x]).Color := clWhite;
         TComboBox(_form.Components[x]).Enabled := True;
     end;


  end;
end;



function tesisAdi(_kod : string) : string;
var
  sql : string;
begin
   sql := 'select UNVANI from SAGLIKTESIS where kodu = ' + #39 + _kod + #39;
   datalar.QuerySelect(datalar.ADO_SQL,sql);
   result := datalar.ADO_SQL.fieldbyname('UNVANI').AsString;
end;


function bransAdi(_kod : string) : string;
var
  sql : string;
begin
   sql := 'select DALI from KLINIKKODLARI where kodu = ' + #39 + _kod + #39;
   datalar.QuerySelect(datalar.ADO_SQL,sql);
   result := datalar.ADO_SQL.fieldbyname('DALI').AsString;
end;

procedure gridara(grid : TAdvStringGrid ; text : string);
var
   res :TPoint;
   s :string;

begin
        s := text;
        res := grid.Find(Point(-1,-1), s, [fnAutoGoto, fnMatchRegular, fnMatchCase]);
        if res.x >= 0
        Then begin
              grid.Col:=res.x;
              grid.row:=res.y;
        end else
        begin
           ShowMessageSkin('Arama Kriterine Uygun Kayýt Bulunamadý','','','info');
        end;

end;



function Sifrele (s: string): string;
var
   i: integer;
   t: string;
begin
   t := s;
   for i:= 1 to length(s) do
      t[i] := chr((ord(s[i])*11+13) mod 256);
   Sifrele := t;
end;


function UserRight(M, Islem: string): boolean;
begin
   Datalar.QuerySelect(Datalar.ADO_SQL2,
    'SELECT Izin FROM UserSettings WHERE Kullanici = ''' + Datalar.username +
    ''' AND Modul = ''' + M +
    ''' AND Islem = ''' + Islem + '''');
   Datalar.ADO_SQL2.First;
   if Datalar.ADO_SQL2.Eof
   Then UserRight := False
   Else UserRight := Datalar.ADO_SQL2.Fields[0].asboolean;
   Datalar.ADO_SQL2.Close;
end;

function AktifYil (donem : string) : string;
var
   x : integer;
   sql : string;
begin
//   sql := 'select * from muh_donemler where donem = ' + #39 + donem + #39;
//   datalar.QuerySelect(datalar.ADO_SQL2,sql);

//   result := copy(datalar.ADO_SQL2.fieldbyname('tarih1').AsString,1,4);

end;

function HesapTanimGetir(_kod : string) : string;
begin
    datalar.QuerySelect(datalar.ADO_SQL3,'select * from muh_Hesap_tanim');
    datalar.ADO_SQL3.Locate('TANIM',_kod,[]);
    result := datalar.ADO_SQL3.fieldbyname('hesapkodu').AsString;
end;

function PosHesapGetir(_kod : string) : string;
begin
    datalar.QuerySelect(datalar.ADO_SQL2,'select * from Keydat where slk = ''53'' and slb = ' + #39 + _kod + #39);
    result := datalar.ADO_SQL2.fieldbyname('SLXX').AsString;
end;

function ayliktarih(tarih : Tdate) : Tdate;
var
  s : string;
  sp : char;
  ay , yil , gun : word;

begin

       sp := DateSeparator;
       s := '01' + sp + copy(tarihal(tarih),5,2) + sp + copy(tarihal(tarih),1,4);
       ay := strtoint(copy(tarihal(tarih),5,2));

       inc(ay);
       if ay > 12 then ay := 1;
       yil := strtoint(copy(tarihal(tarih),1,4));
       gun := 1;
       if (ay = 1) and (gun = 1) then inc(yil);
       result  := EncodeDate(yil,ay,gun) - 1;

end;

function hesapbakiye(hesap : string) : real;
var
   sql : string;
   borc,alacak : real;
begin
    if hesap <> ''
    then begin
        sql := 'exec hesap_bakiye  ' + #39 + trim(hesap) + #39;
        datalar.QuerySelect(datalar.ado_sql,sql);
        borc := datalar.ado_sql.fieldbyname('borc').AsFloat;
        alacak := datalar.ado_sql.fieldbyname('alacak').AsFloat;

        result := borc - alacak;
    end else result := 0;

end;

procedure Grid_Temizle ( grid_adi : TStringGrid );
var
   i,j,k:integer;
begin
    if Grid_Adi.FixedRows = 0 then k := 0 else k:=Grid_Adi.FixedRows;
    for i := k to Grid_adi.RowCount - 1 do
      for j := 0 to Grid_adi.ColCount - 1 do
        Grid_Adi.Cells[j, i] := '';
    if Grid_Adi.FixedRows > 0
    Then Grid_Adi.RowCount := Grid_Adi.FixedRows + 1
    else Grid_Adi.RowCount := 1;
end;

function AllignRight ( s: string ): string;
var
   i: integer;
begin
   for i:= 1 to MAX_NUM_LENGTH-length(s) do
     if ( (i mod 4) <> 0 )
       then insert ( '  ', s, 1)
       else insert(' ', s, 1);
   AllignRight := s;
end;

function txtTOtxt_M (txt: string ): string;
var
   i: integer;
   sp : char;
begin
   sp := ThousandSeparator;
   if (trim(txt) = '') OR (trim(txt) = '0.00')
   Then txt := '0'
   Else
     for i:= 1 to length(txt) do
       if ( ( txt[i] = sp ) OR ( txt[i]= ' ' ) )
       Then delete (txt,i,1);
   txtTOtxt_M := txt;
end;


procedure XlsBeginStream(XlsStream: TStream; const BuildNumber: Word);
begin
  CXlsBof[4] := BuildNumber;
  XlsStream.WriteBuffer(CXlsBof, SizeOf(CXlsBof));
end;

procedure XlsEndStream(XlsStream: TStream);
begin
  XlsStream.WriteBuffer(CXlsEof, SizeOf(CXlsEof));
end;

procedure XlsWriteCellRk(XlsStream: TStream; const ACol, ARow: Word;
  const AValue: Integer);
var
  V: Integer;
begin
  CXlsRk[2] := ARow;
  CXlsRk[3] := ACol;
  XlsStream.WriteBuffer(CXlsRk, SizeOf(CXlsRk));
  V := (AValue shl 2) or 2;
  XlsStream.WriteBuffer(V, 4);
end;

procedure XlsWriteCellNumber(XlsStream: TStream; const ACol, ARow: Word;
  const AValue: Double);
begin
  CXlsNumber[2] := ARow;
  CXlsNumber[3] := ACol;
  XlsStream.WriteBuffer(CXlsNumber, SizeOf(CXlsNumber));
  XlsStream.WriteBuffer(AValue, 8);
end;

procedure XlsWriteCellLabel(XlsStream: TStream; const ACol, ARow: Word;
  const AValue: string);
var
  L: Word;
begin
  L := Length(AValue);
  CXlsLabel[1] := 8 + L;
  CXlsLabel[2] := ARow;
  CXlsLabel[3] := ACol;
  CXlsLabel[5] := L;
  XlsStream.WriteBuffer(CXlsLabel, SizeOf(CXlsLabel));
  XlsStream.WriteBuffer(Pointer(AValue)^, L);
end;
// END OF EXCEL FONK


function kullanici : string;
begin
  result  := datalar.username;
end;

function ControlTarih ( t: string): integer;
// tarih is given from the mask edit in the form __/__/____
var
   d, m, y: integer;
   x: string;
begin
   x := t;
   if  ( (x[1] = ' ') OR
         (x[2] = ' ') OR
         (x[4] = ' ') OR
         (x[5] = ' ') OR
         (x[7] = ' ') OR
         (x[8] = ' ') OR
         (x[9] = ' ') OR
         (x[10] = ' ') )
      Then begin ControlTarih := 0; exit; end;

   delete ( x, 3, 8);
   if ( x[1] = '0' ) Then delete ( x, 1, 1);
   d := StrToInt ( x );
   if ( d=0 ) Then begin ControlTarih := 0; exit; end;

   x := t;
   delete ( x, 1, 3);
   delete ( x, 3, 5);
   if ( x[1] = '0' ) Then delete ( x, 1, 1);
   m := StrToInt ( x );
   if ( m=0 ) Then begin ControlTarih := 0; exit; end;

   x := t;
   delete ( x, 1, 6);
   y := StrToInt ( x );

   if ( y=0 ) Then begin ControlTarih := 0; exit; end;

   if ( d > 31 ) Then begin ControlTarih := 0; exit; end;

   if ( m > 12 ) Then begin ControlTarih := 0; exit; end;

   if  ( ( (m=4) OR (m=6) OR (m=9) OR (m=11) )
          AND (d=31) )
       Then begin ControlTarih := 0; exit end;

   if ( (m=2) AND (d>29) ) Then begin ControlTarih := 0; exit; end;
   if ( (m=2) AND (y mod 4 <> 0) AND (d=29) )
       Then begin ControlTarih := 0; exit; end;

   ControlTarih := 1;
end;


function GetDataForMuavin: string;
begin
   GetDataForMuavin := DataForMuavin;
end;


function AnaHesapAdi (AnaNo: string): string;
var
   SQLstr: string;
begin
   SQLstr := 'SELECT hesap_adi FROM muh_hesap_plani WHERE hesap_kodu = ''' + AnaNo + '''';
   datalar.QuerySelect ( datalar.ADO_SQL3, SQLstr );
   AnaHesapAdi := datalar.ADO_SQL3.FieldByName('hesap_adi').asstring;
end;

function _HesapAdi (hesapkodu: string): string;
var
   SQLstr: string;
begin
   SQLstr := 'SELECT hesap_adi FROM muh_hesap_plani WHERE hesap_kodu = ''' + hesapkodu + '''';
   datalar.QuerySelect ( datalar.ADO_SQL3, SQLstr );
   _HesapAdi := datalar.ADO_SQL3.FieldByName('hesap_adi').asstring;
end;

function Bugun: string;
var
   y, m, d: word;
   yil, ay, gun: string;
   ds :Char;
begin
   DecodeDate ( date, y, m, d);
   ds := DateSeparator;
   yil := IntToStr (y);
   ay := IntToStr (m);
   gun := IntToStr (d);

   if ( length(ay)=1 ) Then
      insert ('0', ay, 1 );
   if ( length(gun)=1 ) Then
      insert ('0', gun, 1);

   Bugun := gun + ds + ay + ds + yil ;
end;


function Zorunlu(_frm: TForm; var myhint:string) :Boolean;
var
  i:integer;
  tmp :string;
  TComp_ :TComponent;
begin
  Result := False;
  for i := 0 to _frm.ComponentCount - 1 do
    begin
      TComp_ := _frm.Components[i];
      if TComp_ <> nil
      Then begin
        if TComp_ is TEditTyped
        Then if  (TEditTyped(TComp_).Color = ZorunluRenk) and (TEditTyped(TComp_).Visible)
             Then begin
               if (TEditTyped(TComp_).EditMask = '') and (Trim(TEditTyped(TComp_).Text) = '')
               Then begin
                if myhint = '' Then try TEditTyped(TComp_).SetFocus; except end;
                myhint := myhint + #13#10 + '   * ' + TEditTyped(TComp_).Hint;
                //exit;
               end;
               //(*
               if (TEditTyped(TComp_).EditMask <> '') and (TEditTyped(TComp_).Visible)
               Then begin
                tmp := TEditTyped(TComp_).Text;
                tmp := StringReplace(tmp, ' ', '', [rfReplaceAll]);
                if    (tmp <> TEditTyped(TComp_).Text)
                   or (tmp = '')
                Then begin
                 if myhint = '' Then try TEditTyped(TComp_).SetFocus; except end;
                 myhint := myhint + #13#10 + '   * ' + TEditTyped(TComp_).Hint + ' -[GÝRÝÞ BÝÇÝMÝ HATALI olabilir.]';
                 //exit;
                end;
               end;
               //*)
             end;
        if TComp_ is TMemo
        Then if  (TMemo(TComp_).Color = ZorunluRenk) and (TMemo(TComp_).Visible)
              and (Trim(TMemo(TComp_).Text) = '')
             Then begin
               if myhint = '' Then try TMemo(TComp_).SetFocus; except end;
               myhint := myhint + #13#10 + '   * ' + TMemo(TComp_).Hint;
               //exit;
             end;

        if TComp_ is TListBox
        Then if  (TListBox(TComp_).Color = ZorunluRenk) and (TListBox(TComp_).Visible)
              and (TListBox(TComp_).Items.Count = 0)
             Then begin
               if myhint = '' Then try TListBox(TComp_).SetFocus; except end;
               myhint := myhint + #13#10 + '   * ' + TListBox(TComp_).Hint;
               //exit;
             end;

        if TComp_ is TComboBox
        Then if  (TComboBox(TComp_).Color = ZorunluRenk) and (TComboBox(TComp_).Visible)
              and (TComboBox(TComp_).Text = '')
             Then begin
               if myhint = '' Then try TComboBox(TComp_).SetFocus; except end;
               myhint := myhint + #13#10 + '   * ' + TComboBox(TComp_).Hint;
               //exit;
             end;

         if TComp_ is TRadioGroup
         Then if  (TRadioGroup(TComp_).ItemIndex = -1)
               and (TRadioGroup(TComp_).Visible)
              Then begin
                if myhint = '' Then try TRadioGroup(TComp_).SetFocus; except end;
                myhint := myhint + #13#10 + '   * ' + TRadioGroup(TComp_).Hint;
                //exit;
              end;

      end; // end of nil
    end; //end of for
  Result := True;
end;

function Zorunlu(_pnl: TPanel; var myhint:string) :Boolean;
var
  i:integer;
  tmp :string;
  TComp_ :TComponent;
begin
  Result := False;
  for i := 0 to _pnl.ControlCount - 1 do
    begin
      TComp_ := _pnl.Controls[i];
      if TComp_ <> nil
      Then begin
        if TComp_ is TEditTyped
        Then if  (TEditTyped(TComp_).Color = ZorunluRenk) and (TEditTyped(TComp_).Visible)
             Then begin
               if (TEditTyped(TComp_).EditMask = '') and (Trim(TEditTyped(TComp_).Text) = '')
               Then begin
                if myhint = '' Then try TEditTyped(TComp_).SetFocus; except end;
                myhint := myhint + #13#10 + '   * ' + TEditTyped(TComp_).Hint;
                //exit;
               end;
               //(*
               if (TEditTyped(TComp_).EditMask <> '') and (TEditTyped(TComp_).Visible)
               Then begin
                tmp := TEditTyped(TComp_).Text;
                tmp := StringReplace(tmp, ' ', '', [rfReplaceAll]);
                if    (tmp <> TEditTyped(TComp_).Text)
                   or (tmp = '')
                Then begin
                 if myhint = '' Then try TEditTyped(TComp_).SetFocus; except end;
                 myhint := myhint + #13#10 + '   * ' + TEditTyped(TComp_).Hint + ' -[GÝRÝÞ BÝÇÝMÝ HATALI olabilir.]';
                 //exit;
                end;
               end;
               //*)
             end;
        if TComp_ is TMemo
        Then if  (TMemo(TComp_).Color = ZorunluRenk) and (TMemo(TComp_).Visible)
              and (Trim(TMemo(TComp_).Text) = '')
             Then begin
               if myhint = '' Then try TMemo(TComp_).SetFocus; except end;
               myhint := myhint + #13#10 + '   * ' + TMemo(TComp_).Hint;
               //exit;
             end;

        if TComp_ is TListBox
        Then if  (TListBox(TComp_).Color = ZorunluRenk) and (TListBox(TComp_).Visible)
              and (TListBox(TComp_).Items.Count = 0)
             Then begin
               if myhint = '' Then try TListBox(TComp_).SetFocus; except end;
               myhint := myhint + #13#10 + '   * ' + TListBox(TComp_).Hint;
               //exit;
             end;

        if TComp_ is TComboBox
        Then if  (TComboBox(TComp_).Color = ZorunluRenk) and (TComboBox(TComp_).Visible)
              and (TComboBox(TComp_).Text = '')
             Then begin
               if myhint = '' Then try TComboBox(TComp_).SetFocus; except end;
               myhint := myhint + #13#10 + '   * ' + TComboBox(TComp_).Hint;
               //exit;
             end;

         if TComp_ is TRadioGroup
         Then if  (TRadioGroup(TComp_).ItemIndex = -1)
               and (TRadioGroup(TComp_).Visible)
              Then begin
                if myhint = '' Then try TRadioGroup(TComp_).SetFocus; except end;
                myhint := myhint + #13#10 + '   * ' + TRadioGroup(TComp_).Hint;
                //exit;
              end;

         if TComp_ is TJvComboEdit
         Then if  (TJvComboEdit(TComp_).Text = '') and (TJvComboEdit(TComp_).Color = ZorunluRenk)
               and (TJvComboEdit(TComp_).Visible)
              Then begin
                if myhint = '' Then try TJvComboEdit(TComp_).SetFocus; except end;
                myhint := myhint + #13#10 + '   * ' + TJvComboEdit(TComp_).Hint;
                //exit;
              end;
       (*
         if TComp_ is TDBEditEh
         Then if  (TDBEditEh(TComp_).text = '') and (TDBEditEh(TComp_).Color = ZorunluRenk)
               and (TDBEditEh(TComp_).Visible)
              Then begin
                if myhint = '' Then try TDBEditEh(TComp_).SetFocus; except end;
                myhint := myhint + #13#10 + '   * ' + TDBEditEh(TComp_).Hint;
                //exit;
              end;

         if TComp_ is TDBDateTimeEditEh
         Then if  (TDBDateTimeEditEh(TComp_).text = '  .  .    ') and (TDBDateTimeEditEh(TComp_).Color = ZorunluRenk)
               and (TDBDateTimeEditEh(TComp_).Visible)
              Then begin
                if myhint = '' Then try TDBDateTimeEditEh(TComp_).SetFocus; except end;
                myhint := myhint + #13#10 + '   * ' + TDBDateTimeEditEh(TComp_).Hint;
                //exit;
              end;
         *)
         if TComp_ is TComboBox
         Then if  (TComboBox(TComp_).Text = '') and (TComboBox(TComp_).Color = ZorunluRenk)
               and (TComboBox(TComp_).Visible)
              Then begin
                if myhint = '' Then try TComboBox(TComp_).SetFocus; except end;
                myhint := myhint + #13#10 + '   * ' + TComboBox(TComp_).Hint;
                //exit;
              end;

      end; // end of nil
    end; //end of for
  Result := True;
end;

procedure tumuseciptal(grid : TAdvStringGrid;durum:integer);
var
  x : integer;
begin

       if durum = 0
       then begin

          for  x := 1 to Grid.rowcount -1 do
          begin
              Grid.SetCheckBoxState(1,x , True);
              Grid.Cells[25,x] := 'T';
          end;

       end else begin
          for  x := 1 to Grid.rowcount - 1 do
          begin
              Grid.SetCheckBoxState(1,x , False);
              Grid.Cells[25,x] := 'F';
          end;
       end;

//     --  if sec=0 then sec:=1 else sec :=0;

end;

procedure tumuseciptal1(grid : TAdvStringGrid);
var
  x , y , z : integer;

begin

       y := grid.Selection.Top;
       z := grid.Selection.Bottom;

       x := y;

       if sec = 0
       then begin

          for  x := y to z do
          begin
              Grid.SetCheckBoxState(1,x , True);
              Grid.Cells[25,x] := 'T';
              Grid.OnCheckBoxClick(grid,1,x,True);
          end;

       end else begin
          for  x := y to z  do
          begin
              Grid.SetCheckBoxState(1,x , False);
              Grid.Cells[25,x] := 'F';
              Grid.OnCheckBoxClick(grid,1,x,False);
          end;
       end;

      if sec=0 then sec:=1 else sec :=0;

end;

procedure tumuseciptal(grid : TAdvStringGrid);
var
  x : integer;
begin

       if sec = 0
       then begin

          for  x := 1 to Grid.rowcount - 1 do
          begin
              Grid.SetCheckBoxState(1,x , True);
              Grid.Cells[25,x] := 'T';
          end;

       end else begin
          for  x := 1 to Grid.rowcount - 1 do
          begin
              Grid.SetCheckBoxState(1,x , False);
              Grid.Cells[25,x] := 'F';
          end;
       end;

      if sec=0 then sec:=1 else sec :=0;

end;

procedure GorselAyar(_frm : TForm;image:TImageList);
var
   say : Word;
   _Kontrol :TComponent;
   _bmp, _bmp2 :TBitMap;
   _ms :TMemoryStream;
   _comp :TComponent;
begin
  //_bmp2 := TBitmap.Create;
  //BitBtn2ATBtn(_frm);
  _ms := TMemoryStream.Create;

{
  if _frm.KeyPreview = False
  Then begin
        _frm.OnKeyPress := OnKeyPress;
        if _frm.MethodAddress('FormKeyDown') = nil
        Then _frm.OnKeyDown := OnKeyDown;
        _frm.KeyPreview := True;
  end;
        _frm.OnKeyPress := OnKeyPress;
        if _frm.MethodAddress('FormKeyDown') = nil
        Then _frm.OnKeyDown := OnKeyDown;
 }
  {
  if _frm.FindComponent('_MAVIBTN_') <> nil
  Then begin
         _frm.FindComponent('_MAVIBTN_').KeyDown := frmData.NextKontrol;

  end;
  }
  {
  if APP_NAME = 'MUHASEBE'
  Then begin
      if (_frm.Height + 50 > Screen.Height)
      Then begin
             try
             if not (biMaximize in _frm.BorderIcons)
             Then _frm.BorderIcons := _frm.BorderIcons + [biMaximize];
             except
             end;
             _frm.WindowState := wsMaximized;
      end;
  end;
   }

  _frm.Caption := sirket('');

  for say := 0 to _frm.ComponentCount - 1 do
  begin
    _Kontrol := _frm.Components[say];
    if _Kontrol is TAdvStringGrid
    Then begin
         //  TAdvStringGrid(_Kontrol).Navigation.HomeEndKey := heFirstLastRow;
           TAdvStringGrid(_Kontrol).Color :=gridrenk;
           TAdvStringGrid(_Kontrol).Font.Color := gridYaziRenk;
           TAdvStringGrid(_Kontrol).SelectionColor := gridAktif;
           TAdvStringGrid(_Kontrol).SelectionTextColor := gridAktifYaziRenk;
           TAdvStringGrid(_Kontrol).FixedColor := _pnlBaslik;
           if UpperCase(Copy(_frm.Name, 1, 11)) <> 'FRMONIZLEME'
           Then TAdvStringGrid(_Kontrol).Options :=  TAdvStringGrid(_Kontrol).Options - [goFixedHorzLine(* goColSizing*)];
          Continue;
    end;

    if _Kontrol is TPanel
    Then begin
          if AnsiUpperCase(_Kontrol.Name) = 'PNLUST'
          Then begin
                 TPanel(_Kontrol).Color := _pnlUst
          end
          else if AnsiUpperCase(_Kontrol.Name) = 'PNLTITLE'
          Then begin
                  TPanel(_Kontrol).Color := _pnlBaslik;
                  TPanel(_Kontrol).Font.Color := _pnlBaslikYazi;
                  TPanel(_Kontrol).Alignment := taLeftJustify;
                  TPanel(_Kontrol).BorderWidth := 5;
                  TPanel(_Kontrol).Caption := KucukHarfTRK(TPanel(_Kontrol).Caption);
          end
          else if AnsiUpperCase(_Kontrol.Name) = 'PNLONAY'
          Then begin
                  TPanel(_Kontrol).Color := _pnlOnay;
                  TPanel(_Kontrol).Font.Color := _pnlOnayYazi;
          end
          else if AnsiUpperCase(_Kontrol.Name) = 'PNLTOOLBAR'
          Then TPanel(_Kontrol).Color := _pnlOnay;
          Continue;
    end;


    if (_Kontrol is TEditTyped)
    Then begin

          if TEditTyped(_Kontrol).Color = clSkyBlue
          Then TEditTyped(_Kontrol).Color := ZorunluRenk
          else if (TEditTyped(_Kontrol).Color = clWindow) or (TEditTyped(_Kontrol).Color = clWhite)
               Then TEditTyped(_Kontrol).Color := OpsiyonRenk
               else if (TEditTyped(_Kontrol).Color = clBtnFace) or (TEditTyped(_Kontrol).Color = clSilver)
                    Then TEditTyped(_Kontrol).Color := KapaliRenk;

         if (TEditTyped(_Kontrol).ParentFont = False) and (TEditTyped(_Kontrol).Alignment = taLeftJustify)
         Then begin
                TEditTyped(_Kontrol).Alignment := taCenter;
                TEditTyped(_Kontrol).Alignment := taLeftJustify;
         end;

         if TEditTyped(_Kontrol).ButtonWidth > 0
         Then begin
                _bmp := TBitmap.Create;
                TEditTyped(_Kontrol).NumGlyphs := 1;
                image.GetBitmap(0, _bmp);
                TEditTyped(_Kontrol).Glyph := _bmp;
                _bmp.Free;
                Continue;
         end;
    end;

    if (_Kontrol is TMemo)
    Then begin
         if TMemo(_Kontrol).Color = clSkyBlue
         Then TMemo(_Kontrol).Color := ZorunluRenk
         else if (TMemo(_Kontrol).Color = clBtnFace) or (TMemo(_Kontrol).Color = clSilver)
              Then TMemo(_Kontrol).Color := KapaliRenk
         else if (TMemo(_Kontrol).Color = clWhite) or (TMemo(_Kontrol).Color = clWindow)
              Then TMemo(_Kontrol).Color := OpsiyonRenk;
    end;

    {
    if (_Kontrol is TCheckBox)
    Then begin
           TCheckBox(_Kontrol).OnKeyPress :=   frmData.chkKeyPress;
           Continue;
    end;
     }

    if (_Kontrol is TComboBox)
    Then begin
          if TComboBox(_Kontrol).Color = clSkyBlue
          Then TComboBox(_Kontrol).Color := ZorunluRenk
          else if (TComboBox(_Kontrol).Color = clWindow) or (TComboBox(_Kontrol).Color = clWhite)
               Then TComboBox(_Kontrol).Color := OpsiyonRenk
               else if (TComboBox(_Kontrol).Color = clBtnFace) or (TComboBox(_Kontrol).Color = clSilver)
                    Then TComboBox(_Kontrol).Color := KapaliRenk;
           Continue;
    end;

    if (_Kontrol.Tag > 0) and (_Kontrol is TAdvToolButton) and (not(_Kontrol is TConvexBtn))
    Then begin
          //{
          TAdvToolButton(_Kontrol).ShowHint := True;

         { if _Kontrol.Tag < 13
          Then begin
                 {
                 _comp := FindComponent('_' +  IntToStr(_Kontrol.Tag) );
                 _ms.Position := 0;

                 TAdvToolButton(_comp).GlyphDisabled.SaveToStream( _ms );
                 _ms.Position := 0;
                 TAdvToolButton(_Kontrol).GlyphDisabled.LoadFromStream( _ms );

                 _ms.Position := 0;
                 TAdvToolButton(_comp).Glyph.SaveToStream( _ms );
                 _ms.Position := 0;
                 TAdvToolButton(_Kontrol).Glyph.LoadFromStream( _ms );

          end
          else begin}
          //}
                 _bmp := TBitmap.Create;
                 image.GetBitmap(_Kontrol.Tag, _bmp);
                 TAdvToolButton(_Kontrol).Glyph := _bmp;
                 _bmp.Free;
        //  end;
          Continue;
    end;

    if (_Kontrol.Tag > 0) and (_Kontrol is TBitBtn) and (not(_Kontrol is TConvexBtn))
    Then begin
          //{
          TBitBtn(_Kontrol).ShowHint := True;

         { if _Kontrol.Tag < 13
          Then begin
                 {
                 _comp := FindComponent('_' +  IntToStr(_Kontrol.Tag) );
                 _ms.Position := 0;

                 TAdvToolButton(_comp).GlyphDisabled.SaveToStream( _ms );
                 _ms.Position := 0;
                 TAdvToolButton(_Kontrol).GlyphDisabled.LoadFromStream( _ms );

                 _ms.Position := 0;
                 TAdvToolButton(_comp).Glyph.SaveToStream( _ms );
                 _ms.Position := 0;
                 TAdvToolButton(_Kontrol).Glyph.LoadFromStream( _ms );

          end
          else begin}
          //}
                 _bmp := TBitmap.Create;
                 image.GetBitmap(_Kontrol.Tag, _bmp);
                 TBitBtn(_Kontrol).Glyph := _bmp;
                 _bmp.Free;
        //  end;
          Continue;
    end;

    if (_Kontrol.Tag > 0) and (_Kontrol is TBitBtn) and (not(_Kontrol is TConvexBtn))
    Then begin
          _bmp := TBitmap.Create;
         // global_img_list2.GetBitmap(_Kontrol.Tag, _bmp);
        //  if TBitBtn(_Kontrol).NumGlyphs = 2
        //  Then global_img_list2.GetBitmap(_Kontrol.Tag, _bmp)
        //  else global_img_list.GetBitmap(_Kontrol.Tag, _bmp);
         // TBitBtn(_Kontrol).Glyph := _bmp;
        //  _bmp.Free;
          Continue;
    end
    else if (Pos('BTNOK', AnsiUpperCase(_Kontrol.Name)) > 0)
    Then begin
          {  _bmp := TBitmap.Create;
            global_img_list16.GetBitmap(0, _bmp);
            if _Kontrol is TAdvToolButton
            Then TAdvToolButton(_Kontrol).Glyph := _bmp
            else TBitBtn(_Kontrol).Glyph := _bmp;
            _bmp.Free;
          Continue;}
    end;
  end; //end of for

  _ms.Free;
end;

function KucukHarfTRK(str :string) :string;
var
   ln :Word;
   str_ : string;
begin
  Result := str;
  if Length(str) > 0
  Then begin
         ln := 1;
         while ln <= Length(str) do
         begin
           str_ := str[ln];
           if (ln > 1) and (str[ln - 1] <> ' ')
           Then begin
                  case str[ln] of
                    'I' : str[ln] := 'ý';
                    'Ý' : str[ln] := 'i'
                    else begin
                           str_ := AnsiLowerCase(str_);
                           str[ln] := str_[1];
                    end;
                  end; //end of case
           end
           else begin
                  case str[ln] of
                    'ý' : str[ln] := 'I';
                    'i' : str[ln] := 'Ý'
                    else begin
                           str_ := AnsiUpperCase(str_);
                           str[ln] := str_[1];
                    end;
                  end; //end of case
           end;
           Inc(ln);
         end;
  end;
  Result := str;
end;

function secilisatirtopla (Grid:TAdvStringGrid ; col : integer; col1:integer; renk : tcolor; r:boolean) :real;
var
   z,x,u : integer;
   doktorkod : string;
   seciliadet : real;
   renk1 : tcolor;
begin

   if r = false
   then begin
       seciliadet := 0;
       for x := 1 to Grid.RowCount - 1 do
       begin
           if  Grid.Cells[col,x] = 'T'
           then begin
                seciliadet := seciliadet + abs(Grid.floats[col1,x]);
                z := x;
          end;
       end;

   end;

   if r = true
   then begin
       seciliadet := 0;
       for x := 1 to Grid.RowCount - 1 do
       begin

           if  (Grid.Cells[col,x] = 'T') and (Grid.Colors[col1,x] = renk)
           then begin
                seciliadet := seciliadet + abs(Grid.floats[col1,x]);
                z := x;
             end;
       end;

   end;

       result := seciliadet;//formatcurr('#,###.00',seciliadet);


end;



function secilisatirbilgisi (Grid:TAdvStringGrid ; col : integer; col1:integer) : string;
var
   z,x,u : integer;
   doktorkod : string;
   seciliadet : integer;
begin
   doktorkod := '';
   for x := 1 to Grid.RowCount - 1 do
   begin
       if  Grid.Cells[col,x] = 'T'
       then begin
            seciliadet := seciliadet + 1;
            doktorkod := doktorkod +  Grid.Cells[col1,x] + ',' ;
            z := x;
      end;
   end;
   u := length(doktorkod);
   if copy(doktorkod,u,1) = ','
   then
   delete(doktorkod,u,1);

   result := doktorkod;
end;

function notsecilisatirbilgisi (Grid:TAdvStringGrid ; col : integer; col1:integer) : string;
var
   z,x,u : integer;
   doktorkod : string;
   seciliadet : integer;
begin
   doktorkod := '';
   for x := 1 to Grid.RowCount - 1 do
   begin
       if  Grid.Cells[col,x] <> 'T'
       then begin
            seciliadet := seciliadet + 1;
            doktorkod := doktorkod +  Grid.Cells[col1,x] + ',' ;
            z := x;
      end;
   end;
   u := length(doktorkod);
   if copy(doktorkod,u,1) = ','
   then
   delete(doktorkod,u,1);

   result := doktorkod;
end;


function updatesatirbilgisi (Grid:TAdvStringGrid ; col : integer; col1:integer) : string;
var
   z,x,u : integer;
   doktorkod : string;
   seciliadet : integer;
begin
   doktorkod := '';
   for x := 1 to Grid.RowCount - 1 do
   begin
       if  Grid.Cells[col,x] = 'UPDATE'
       then begin
            seciliadet := seciliadet + 1;
            doktorkod := doktorkod +  Grid.Cells[col1,x] + ',' ;
            z := x;
      end;
   end;
   u := length(doktorkod);
   if copy(doktorkod,u,1) = ','
   then
   delete(doktorkod,u,1);

   result := doktorkod;
end;

function silinensatirbilgisi (Grid:TAdvStringGrid ; col : integer; col1:integer) : string;
var
   z,x,u : integer;
   doktorkod : string;
   seciliadet : integer;
begin
   doktorkod := '';
   for x := 1 to Grid.RowCount - 1 do
   begin
       if  Grid.Cells[col,x] = 'SÝLÝNDÝ'
       then begin
            seciliadet := seciliadet + 1;
            doktorkod := doktorkod +  Grid.Cells[col1,x] + ',' ;
            z := x;
      end;
   end;
   u := length(doktorkod);
   if copy(doktorkod,u,1) = ','
   then
   delete(doktorkod,u,1);

   result := doktorkod;
end;

function secilisatirsayisi (Grid:TAdvStringGrid ; col : integer) : integer;
var
  x ,seciliadet : integer;
begin
   seciliadet :=0;
   for x := 1 to Grid.RowCount - 1 do
   begin
       if  Grid.Cells[col,x] = 'T'
       then begin
            seciliadet := seciliadet + 1;
       end;
   end;
   result := seciliadet;
end;


procedure Query2Grid3 (grid_adi : TAdvStringGrid ;sorgu : TADOQuery ; SiraNo,gridReSize : Boolean;tip,t:integer);var
  i,mcol,mrow:integer;

begin
 Grid_Temizle(grid_adi);
 Sorgu.First;

 if not Sorgu.Eof then
 begin
  if grid_adi.FixedCols=0 then begin grid_adi.ColCount:=Sorgu.FieldCount; mcol:=0; end
     else begin
           mcol := 0;
           if not(SiraNo) Then begin grid_adi.ColCount:=Sorgu.FieldCount+1;mcol:=1; end

           else begin
                 grid_adi.ColCount:=Sorgu.FieldCount+1;
                 mcol:=1;
                end;
          end;

  if grid_adi.FixedRows=0 then begin grid_adi.RowCount:=Sorgu.RecordCount+1; mrow:=0; end
     else begin
           grid_adi.RowCount:=Sorgu.RecordCount+2;
           mrow:=1;
          end;

  while not Sorgu.Eof do
   begin
      for i:=0 to Sorgu.FieldCount-1 do
          begin


            if Sorgu.Fields[i].DataType = ftFloat
            Then begin
              if (Trim(Sorgu.Fields[i].AsString) <> '')
              Then grid_adi.Cells[i + mcol,mrow] := FormatFloat ( '#,##0.#0',Sorgu.Fields[i].AsFloat)
              else grid_adi.Cells[i + mcol,mrow] := Sorgu.Fields[i].AsString;

              grid_adi.Alignments[i+mcol , mrow] := taRightJustify;
            end
            else grid_adi.Cells[i + mcol,mrow] := Sorgu.Fields[i].AsString;

            if Pos( 'TARIH', AnsiUpperCase(Sorgu.Fields[i].FieldName) ) <> 0
            Then grid_adi.Cells[i + mcol,mrow] := FormattedTarih(grid_adi.Cells[i+mcol,mrow]);

           // if GridResize
           // Then if Canvas.TextWidth( grid_adi.Cells[i + mcol, mrow] ) > grid_adi.ColWidths[i + mcol]
            //     Then grid_adi.ColWidths[i + mcol] := Canvas.TextWidth(grid_adi.Cells[i + mcol, mrow]);

          end; //end of FOR
      if SiraNo Then Grid_adi.Cells[0,mrow] := IntToStr(mrow) else Grid_adi.Cells[0,mrow]:='';

      if tip = 1
      then begin
          if t = 1
          then begin
               grid_adi.AddCheckBox(1,mrow,True,false);
               grid_adi.Cells[25,mrow] := 'T';
          end
          else begin
               grid_adi.AddCheckBox(1,mrow,false,false);
               grid_adi.Cells[25,mrow] := 'F';
          end;

      end;



      inc(mrow);



      Sorgu.Next;
   end;
  end;
end;


procedure Query2Grid3 (grid_adi : TAdvStringGrid ;sorgu : TADOQuery ; SiraNo,gridReSize : Boolean;tip,t,rcol,icol:integer);var
  i,mcol,mrow:integer;

begin
 Grid_Temizle(grid_adi);
 Sorgu.First;

 if not Sorgu.Eof then
 begin
  if grid_adi.FixedCols=0 then begin grid_adi.ColCount:=Sorgu.FieldCount; mcol:=0; end
     else begin
           mcol := 0;
           if not(SiraNo) Then grid_adi.ColCount:=Sorgu.FieldCount
           else begin
                 grid_adi.ColCount:=Sorgu.FieldCount+1;
                 mcol:=1;
                end;
          end;

  if grid_adi.FixedRows=0 then begin grid_adi.RowCount:=Sorgu.RecordCount+1; mrow:=0; end
     else begin
           grid_adi.RowCount:=Sorgu.RecordCount+2;
           mrow:=1;
          end;

  while not Sorgu.Eof do
   begin
      for i:=0 to Sorgu.FieldCount-1 do
          begin


            if Sorgu.Fields[i].DataType = ftFloat
            Then begin
              if (Trim(Sorgu.Fields[i].AsString) <> '')  or (Sorgu.Fields[i].Asstring <> '0.00')
              Then grid_adi.Cells[i + mcol,mrow] := FormatFloat ( '#,##0.#0',Sorgu.Fields[i].AsFloat)
              else grid_adi.Cells[i + mcol,mrow] := '';//Sorgu.Fields[i].AsString;

              grid_adi.Alignments[i+mcol , mrow] := taRightJustify;


            end
            else grid_adi.Cells[i + mcol,mrow] := Sorgu.Fields[i].AsString;

            ifthen(grid_adi.Cells[i + mcol,mrow] = '0.00','',grid_adi.Cells[i + mcol,mrow]);

            if Pos( 'TARIH', AnsiUpperCase(Sorgu.Fields[i].FieldName) ) <> 0
            Then grid_adi.Cells[i + mcol,mrow] := FormattedTarih(grid_adi.Cells[i+mcol,mrow]);

           // if GridResize
           // Then if Canvas.TextWidth( grid_adi.Cells[i + mcol, mrow] ) > grid_adi.ColWidths[i + mcol]
            //     Then grid_adi.ColWidths[i + mcol] := Canvas.TextWidth(grid_adi.Cells[i + mcol, mrow]);

          end; //end of FOR
      if SiraNo Then Grid_adi.Cells[0,mrow] := IntToStr(mrow);

      if tip = 1
      then begin
          if t = 1
          then begin
               grid_adi.AddCheckBox(1,mrow,True,false);
               grid_adi.Cells[25,mrow] := 'T';
          end
          else begin
               grid_adi.AddCheckBox(1,mrow,false,false);
               grid_adi.Cells[25,mrow] := 'F';
          end;

      end;

    if mrow >0
    then begin
       if (grid_adi.Cells[18,mRow] = '') and (grid_adi.Cells[11,mRow] <> '0.00')
       then grid_adi.Colors[11,mRow] := clRed;

       if (grid_adi.Cells[19,mRow] = '') and (grid_adi.Cells[12,mRow] <> '0.00')
       then grid_adi.Colors[12,mRow] := clRed;

       if (grid_adi.Cells[19,mRow] <> '') AND (grid_adi.Cells[20,mRow] = '1')
       then grid_adi.Colors[12,mRow] := clYellow;

       if (grid_adi.Cells[19,mRow] <> '') AND (grid_adi.Cells[20,mRow] <> '1')
       then grid_adi.Colors[12,mRow] := clAQUA;

    end;



      inc(mrow);



      Sorgu.Next;
   end;
  end;
end;

procedure Query2Grid3_sirket (grid_adi : TAdvStringGrid ;sorgu : TADOQuery ; SiraNo,gridReSize : Boolean;tip,t:integer);
var
  i,mcol,mrow:integer;

begin
 Grid_Temizle(grid_adi);
 Sorgu.First;

 if not Sorgu.Eof then
 begin
  if grid_adi.FixedCols=0 then begin grid_adi.ColCount:=Sorgu.FieldCount; mcol:=0; end
     else begin
           mcol := 0;
           if not(SiraNo) Then begin grid_adi.ColCount:=Sorgu.FieldCount+1;mcol:=1; end

           else begin
                 grid_adi.ColCount:=Sorgu.FieldCount+1;
                 mcol:=1;
                end;
          end;

  if grid_adi.FixedRows=0 then begin grid_adi.RowCount:=Sorgu.RecordCount+1; mrow:=0; end
     else begin
           grid_adi.RowCount:=Sorgu.RecordCount+2;
           mrow:=1;
          end;

  while not Sorgu.Eof do
   begin
      for i:=0 to Sorgu.FieldCount-1 do
          begin


            if Sorgu.Fields[i].DataType = ftFloat
            Then begin
              if (Trim(Sorgu.Fields[i].AsString) <> '')
              Then grid_adi.Cells[i + mcol,mrow] := FormatFloat ( '#,##0.#0',Sorgu.Fields[i].AsFloat)
              else grid_adi.Cells[i + mcol,mrow] := Sorgu.Fields[i].AsString;

              grid_adi.Alignments[i+mcol , mrow] := taRightJustify;
            end
            else grid_adi.Cells[i + mcol,mrow] := Sorgu.Fields[i].AsString;

            if Pos( 'TARIH', AnsiUpperCase(Sorgu.Fields[i].FieldName) ) <> 0
            Then grid_adi.Cells[i + mcol,mrow] := FormattedTarih(grid_adi.Cells[i+mcol,mrow]);

           // if GridResize
           // Then if Canvas.TextWidth( grid_adi.Cells[i + mcol, mrow] ) > grid_adi.ColWidths[i + mcol]
            //     Then grid_adi.ColWidths[i + mcol] := Canvas.TextWidth(grid_adi.Cells[i + mcol, mrow]);

          end; //end of FOR
      if SiraNo Then Grid_adi.Cells[0,mrow] := IntToStr(mrow) else Grid_adi.Cells[0,mrow]:='';

      if  Sorgu.Fields[6].AsString = 'D'
      then begin
         grid_adi.Cells[1 , mrow] := '';
         grid_adi.Cells[2 , mrow] := '';
         grid_adi.AddImageIdx(1,mrow,62,haBeforeText,vaCenter);
         grid_adi.FontColors[3,mrow] := clBlue;
         grid_adi.FontColors[4,mrow] := clBlue;
         grid_adi.FontColors[5,mrow] := clBlue;
         grid_adi.Colors[2,mrow] := clyellow;
         grid_adi.Colors[3,mrow] := clyellow;grid_adi.Colors[4,mrow] := clyellow;
         grid_adi.Colors[5,mrow] := clyellow;
         grid_adi.Colors[6,mrow] := clyellow;



      end;

      if  Sorgu.Fields[6].AsString = 'A'
      then begin
         grid_adi.FontStyles[1,mrow] := grid_adi.FontStyles[1,mrow] + [fsBold];
         grid_adi.FontStyles[2,mrow] := grid_adi.FontStyles[1,mrow] + [fsBold];
//         grid_adi.FontColors[1,mrow] := clred;
//         grid_adi.FontColors[2,mrow] := clred;

         grid_adi.Cells[3 , mrow] := '';
         grid_adi.Cells[4 , mrow] := '';
         grid_adi.Cells[5 , mrow] := '';
         grid_adi.Cells[6 , mrow] := '';

      end;



      if tip = 1
      then begin
          if t = 1
          then begin
               grid_adi.AddCheckBox(1,mrow,True,false);
               grid_adi.Cells[25,mrow] := 'T';
          end
          else begin
               grid_adi.AddCheckBox(1,mrow,false,false);
               grid_adi.Cells[25,mrow] := 'F';
          end;

      end;



      inc(mrow);



      Sorgu.Next;
   end;
  end;

end;

function sirket (donem : string) : string;
var
   x : integer;
   sql : string;
begin
   sql := 'select merkezAdi from merkezBilgisi';
   datalar.QuerySelect(datalar.ADO_SQL2,sql);
   result := datalar.ADO_SQL2.fieldbyname('merkezAdi').AsString;

end;


function aktifdonem : string;
var
 xx : TRegistry;
begin
    xx:=Tregistry.Create;
    xx.OpenKey('Software\NOKTA',True);
    result := xx.ReadString('DONEM');

end;

Function tariharalikkontrol (tarih : Tdate;donem : string):string;
begin
  datalar.ADO_SQL.Close;
  datalar.ADO_SQL.SQL.Clear;
  datalar.ADO_SQL.SQL.Add('exec dbo.tarih_kilit '+ #39+tarihal(tarih) +#39 + ',' +#39+donem+#39);
  datalar.ADO_SQL.Open;



  if datalar.ADO_SQL.FieldByName('sonuc').AsString = 'ok'
  then begin
//      showmessage('Tarih Kilitli , Bu Tarihli Ýþlem Yapýlamaz ....','','','info');
      result := 'ok';
  end;

  if datalar.ADO_SQL.FieldByName('sonuc').AsString = 'DONEMDISI'
  then begin
//      showmessage('Tarih Kilitli , Bu Tarihli Ýþlem Yapýlamaz ....','','','info');
      result := 'DONEMDISI';
  end;



end;

function ListResult: string;
begin
   ListResult := strList;
end;


function NextKontrol(frm_:TForm; var Key: Char): Boolean;
begin
  if key = #13
  Then begin
         Key := #0;
         frm_.Perform(WM_NEXTDLGCTL, 0, 0);
         if frm_.ActiveControl.Name = '_MAVIBTN_'
         Then frm_.Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;


procedure StartWork;
begin
   Screen.Cursor := crHourGlass;
end;
procedure EndWork;
begin
   Screen.Cursor := crDefault;
end;



procedure SetListResult ( s: string );
begin
   strList := s;
end;


function AddSpaceLeft ( s: string; l: integer ): string;
var
   i: integer;
begin
   for i:= 1 to l-length(s) do
     insert(' ', s, 1);
   AddSpaceLeft := s;
end;


function AddSpaceRight ( s: string; l: integer ): string;
var
   i: integer;
begin
   for i:= 1 to l-length(s) do
     s := s + ' ';
   AddSpaceRight := s;
end;


function Tarih (t: string): string;
var
   d, m, y: string;
   ds :Char;
begin
   ds := DateSeparator;
   if ( (Trim(StringReplace(t, ds, '', [rfReplaceAll])) = '') OR (t = '  /  /    ') OR (t = '  .  .    '))
   Then begin Tarih := ''; exit; end;

   d := t;
   delete ( d, 3, 8 );
   m := t;
   delete ( m, 1, 3 );
   delete ( m, 3, 5 );
   y := t;
   delete ( y, 1, 6 );

   Tarih := y + m + d;
end;


function FormattedTarih (t: string): string;
var
   d, m, y: string;
   //sysDecimalSeparator :Char;
   ds :Char;
begin
   if Trim(t) = ''
   Then begin
     FormattedTarih := '';
     exit;
   end;
   ds := DateSeparator;
   //sysDecimalSeparator := DecimalSeparator;
   //DecimalSeparator := '/';
   d := t;
   delete ( d, 1, 6 );
   m := t;
   delete ( m, 1, 4 );
   delete ( m, 3, 2 );
   y := t;
   delete ( y, 5, 4 );
   FormattedTarih := d + ds + m + ds + y;
   //DecimalSeparator := sysDecimalSeparator;
end;


function numTOtxt_M ( d: extended; p: integer ): string;
var
   i: integer;
begin
   DecimalSeparator := '.';
   ThousandSeparator := ',';
   if (p = -3)
   Then begin
      i := trunc(d/1000);
      numTOtxt_M := FloatToStrF(i,ffNumber,18,0);
   end
   Else begin
      if ( p<0) Then p := 0;
      numTOtxt_M := FloatToStrF( d, ffNumber,18-p,p)
   end;
end;


function ListeGoster( flds,_tablo,ord1,ord2,ord3,whr,
                                txt1,txt2,txt3,title_: String;
                                txtara:String;
                                input_:TJvComboEdit;
                                w1,w2,w3,t1,t2,t3,ord_,cols_: Integer;
                                bul :Boolean;
                                Sorgu_:TADOQuery ): Boolean;
var
   SQLstr :String;
begin
(*
//
   Result := False;
   if Copy(flds, 1, 5) <> 'EXEC '
   Then SQLstr := 'SELECT '+flds+' FROM '+_tablo
   else SQLstr := flds;
   case ord_ of
     0:SQLStr := SQLstr + whr + ord1;
     1:SQLStr := SQLstr + whr + ord2;
     2:SQLStr := SQLstr + whr + ord3;
   end;

   datalar.QuerySelect ( Sorgu_, SQLstr );

   case cols_ of
     1:   frmListe.SetVar1 ( Title_, Sorgu_, SQLstr,
                      txt1, w1, t1,
                      txtara, ord_, bul );
     2:   frmListe.SetVar2 ( Title_, Sorgu_, SQLstr,
                      txt1, w1, t1,
                      txt2,w2, t2,
                      txtara, ord_, bul );
     3:   frmListe.SetVar3 ( Title_, Sorgu_, SQLstr,
                      txt1, w1, t1,
                      txt2,w2, t2,
                      txt3,w3, t3,
                      txtara, ord_, bul );
   end;

   if frmListe = nil
   Then begin
          //frmListe := TfrmListe.Create(Application);
          Application.CreateForm(TfrmListe, frmListe);
          //frmData.GorselAyar(frmListe);
   end
   else begin end;
   frmListe.Caption := Title_+' LÝSTESÝ';
   frmListe.Width := 7*w1+7*w2+7*w3+22+40;
   if ( frmListe.ShowModal = mrOK )
   Then begin
         Result := True;
         txtara := Trim(Copy(ListResult,1,w1));
         //frmData.StartWork;

         if  (input_ <> nil)
         Then if (not(input_.ReadOnly)) //and (input_.Tag <> 101)
              Then begin
                    input_.Text := txtara;
              end;
         //frmData.EndWork;
   end;
   //else frmData.ListResult := '';
   if  (input_ <> nil)
   Then if (input_.Enabled) and (input_.Visible)
        Then input_.SetFocus;
        *)
end;

function ListeGoster( flds,_tablo,ord1,ord2,ord3,whr,
                                txt1,txt2,txt3,title_: String;
                                txtara:String;
                                input_:TEditTyped;
                                w1,w2,w3,t1,t2,t3,ord_,cols_: Integer;
                                bul :Boolean;
                                Sorgu_:TADOQuery ): Boolean;
var
   SQLstr :String;
begin
(*
//
   Result := False;
   if Copy(flds, 1, 5) <> 'EXEC '
   Then SQLstr := 'SELECT '+flds+' FROM '+_tablo
   else SQLstr := flds;
   case ord_ of
     0:SQLStr := SQLstr + whr + ord1;
     1:SQLStr := SQLstr + whr + ord2;
     2:SQLStr := SQLstr + whr + ord3;
   end;

   datalar.QuerySelect ( Sorgu_, SQLstr );

   case cols_ of
     1:   frmListe.SetVar1 ( Title_, Sorgu_, SQLstr,
                      txt1, w1, t1,
                      txtara, ord_, bul );
     2:   frmListe.SetVar2 ( Title_, Sorgu_, SQLstr,
                      txt1, w1, t1,
                      txt2,w2, t2,
                      txtara, ord_, bul );
     3:   frmListe.SetVar3 ( Title_, Sorgu_, SQLstr,
                      txt1, w1, t1,
                      txt2,w2, t2,
                      txt3,w3, t3,
                      txtara, ord_, bul );
   end;

   if frmListe = nil
   Then begin
          //frmListe := TfrmListe.Create(Application);
          Application.CreateForm(TfrmListe, frmListe);
          //frmData.GorselAyar(frmListe);
   end
   else begin end;
   frmListe.Caption := Title_+' LÝSTESÝ';
   frmListe.Width := 7*w1+7*w2+7*w3+22+40;
   if ( frmListe.ShowModal = mrOK )
   Then begin
         Result := True;
         txtara := Trim(Copy(ListResult,1,w1));
         //frmData.StartWork;

         if  (input_ <> nil)
         Then if (not(input_.ReadOnly)) //and (input_.Tag <> 101)
              Then begin
                    input_.Text := txtara;
              end;
         //frmData.EndWork;
   end;
   //else frmData.ListResult := '';
   if  (input_ <> nil)
   Then if (input_.Enabled) and (input_.Visible)
        Then input_.SetFocus;
        *)
end;



function ShowMessage ( msg1,msg2,msg3: string; t: string ): word;
var
   i: integer;
   s, msg: string;

begin

  if frmMessage = nil
  Then begin
        frmMessage := TfrmMessage.Create(application);
  end
  else begin
        frmMessage.Height := 117;
        frmMessage.txtMsg.Clear;
  end;

  if ( t = 'msg' ) // ask question, hayir is selected
  Then frmMessage.Tag := 0
  Else if ( t = 'info' )
  Then frmMessage.Tag := 1
  Else if ( t = 'conf' ) //confirmation, ask question, evet is selected
  Then frmMessage.Tag := 2
  Else if ( t = 'chc' ) //give choice Tamam, vazgec, tamam is selected
  Then frmMessage.Tag := 3
  Else if ( t = 'chc2' ) //give choice Tamam, vazgec, vazgec is selected
  Then frmMessage.Tag := 4
  Else if ( t = 'ozel1' ) //give choice intaç/küþat is selected
  Then frmMessage.Tag := 5
  Else if ( t = 'varyok' ) //give choice Var, Yok, Yok is selected
  Then frmMessage.Tag := 6
  Else exit;

  frmMessage.txtMsg.Clear;
  msg1 := StringReplace(msg1, '|',#13#10,[rfReplaceAll]);
  msg2 := StringReplace(msg2, '|',#13#10,[rfReplaceAll]);
  msg3 := StringReplace(msg3, '|',#13#10,[rfReplaceAll]);
//  frmMessage.txtMsg.Lines.Add(Trim(msg2));
//  frmMessage.txtMsg.Clear;
//  frmMessage.Height := 116;
//  frmMessage.Width := 479;
//  frmMessage.txtMsg.Height := 59;

  frmMessage.txtMsg.Text := msg2;

  frmMessage.txtMsg.Text := msg2;

  if Trim(msg1) <> ''
  Then frmMessage.txtMsg.Lines.Insert(0,msg1);
  if Trim(msg3) <> ''
  Then frmMessage.txtMsg.Lines.Add(msg3);
  //Dialogs.ShowMessage (inttostr(frmMessage.txtMsg.Lines.Count));
  //if frmMessage.txtMsg.Lines.Count > 2
  //Then begin
   frmMessage.txtMsg.Height := frmMessage.txtMsg.Lines.Count * 14 + 18;
   frmMessage.Height := frmMessage.txtMsg.Height + 60;

   if frmMessage.Height > 550
   Then begin
     frmMessage.Height := 550;
     frmMessage.txtMsg.Height := frmMessage.Height - 60;
   end;

   frmMessage.btnYes.Top := frmMessage.txtMsg.Height + 5;
   frmMessage.btnIptal.Top := frmMessage.txtMsg.Height + 5;
  //end;
  //Dialogs.ShowMessage (inttostr(frmMessage.txtMsg.Height));
  {
  for i:= 1 to length(msg) do
    if (msg[i] = '|')
    Then break;
  if ( i < Length(msg) )
  Then begin
     s := msg;
     delete (s,i,length(s)-i+1);
     frmMessage.lblMessage1.Caption := s;
     s := msg;
     delete (s,1,i);
     frmMessage.lblMessage2.Caption := s;
  end
  Else begin
     frmmessage.lblMessage1.Caption := msg;
     frmMessage.lblMessage2.Caption := '';
  end;
  frmmessage.Caption := frmData.CompanyName;}
  //frmMessage.Position := poDesktopCenter;
  frmMessage.ShowModal;
  ShowMessage := frmMessage.ModalResult;
end;

function ShowMessageSkin ( msg1,msg2,msg3: string; t: string ): word;
var
   i: integer;
   s, msg: string;

begin

(*
  if frmMessage_y = nil
  Then begin
        frmMessage_y := TfrmMessage_y.Create(application);
  end
  else begin
        frmMessage_y.Height := 117;
        frmMessage_y.txtMsg.Clear;
  end;

  if ( t = 'msg' ) // ask question, hayir is selected
  Then frmMessage_y.Tag := 0
  Else if ( t = 'info' )
  Then frmMessage_y.Tag := 1
  Else if ( t = 'conf' ) //confirmation, ask question, evet is selected
  Then frmMessage_y.Tag := 2
  Else if ( t = 'chc' ) //give choice Tamam, vazgec, tamam is selected
  Then frmMessage_y.Tag := 3
  Else if ( t = 'chc2' ) //give choice Tamam, vazgec, vazgec is selected
  Then frmMessage_y.Tag := 4
  Else if ( t = 'ozel1' ) //give choice intaç/küþat is selected
  Then frmMessage_y.Tag := 5
  Else if ( t = 'varyok' ) //give choice Var, Yok, Yok is selected
  Then frmMessage_y.Tag := 6
  Else exit;

  frmMessage_y.txtMsg.Clear;
  msg1 := StringReplace(msg1, '|',#13#10,[rfReplaceAll]);
  msg2 := StringReplace(msg2, '|',#13#10,[rfReplaceAll]);
  msg3 := StringReplace(msg3, '|',#13#10,[rfReplaceAll]);
//  frmMessage.txtMsg.Lines.Add(Trim(msg2));
//  frmMessage.txtMsg.Clear;
//  frmMessage.Height := 116;
//  frmMessage.Width := 479;
//  frmMessage.txtMsg.Height := 59;

  frmMessage_y.txtMsg.Text := msg2;

  frmMessage_y.txtMsg.Text := msg2;

  if Trim(msg1) <> ''
  Then frmMessage_y.txtMsg.Lines.Insert(0,msg1);
  if Trim(msg3) <> ''
  Then frmMessage_y.txtMsg.Lines.Add(msg3);
  //Dialogs.ShowMessage (inttostr(frmMessage.txtMsg.Lines.Count));
  //if frmMessage.txtMsg.Lines.Count > 2
  //Then begin
   frmMessage_y.txtMsg.Height := frmMessage_Y.txtMsg.Lines.Count * 14 + 18;
   frmMessage_y.Height := frmMessage_y.txtMsg.Height + 60;

   if frmMessage_y.Height > 550
   Then begin
     frmMessage_y.Height := 550;
     frmMessage_y.txtMsg.Height := frmMessage_y.Height - 60;
   end;

   frmMessage_y.btnYes.Top := frmMessage_y.txtMsg.Height + 5;
   frmMessage_y.btnIptal.Top := frmMessage_y.txtMsg.Height + 5;
  //end;
  //Dialogs.ShowMessage (inttostr(frmMessage.txtMsg.Height));
  {
  for i:= 1 to length(msg) do
    if (msg[i] = '|')
    Then break;
  if ( i < Length(msg) )
  Then begin
     s := msg;
     delete (s,i,length(s)-i+1);
     frmMessage.lblMessage1.Caption := s;
     s := msg;
     delete (s,1,i);
     frmMessage.lblMessage2.Caption := s;
  end
  Else begin
     frmmessage.lblMessage1.Caption := msg;
     frmMessage.lblMessage2.Caption := '';
  end;
  frmmessage.Caption := frmData.CompanyName;}
  //frmMessage.Position := poDesktopCenter;
  frmMessage_y.ShowModal;
  ShowMessageSkin := frmMessage_y.ModalResult;
  *)
end;

function Grd_ColGenislik(Grid:TAdvStringGrid;colsay:integer;c1:integer;c2:integer;c3:integer;
                         c4:integer;c5:integer;c6:integer;c7:integer;c8:integer):string;
 var
 c,r:integer;
begin

      Grid.ColWidths[0]:=c1;
      if colsay = 1 then exit;
      Grid.ColWidths[1]:=c2;
      if colsay = 2 then exit;
      Grid.ColWidths[2]:=c3;
      if colsay = 3 then exit;
      Grid.ColWidths[3]:=c4;
      if colsay = 4 then exit;
      Grid.ColWidths[4]:=c5;
      if colsay = 5 then exit;
      Grid.ColWidths[5]:=c6;
      if colsay = 6 then exit;
      Grid.ColWidths[6]:=c7;
      if colsay = 7 then exit;
      Grid.ColWidths[7]:=c8;


end;



function tarihyap(t: string): tdate;
var
ds : char;
y,a,g : string;
begin
    ds := DateSeparator;
    y := copy(t,1,4);
    a := copy(t,5,2);
    g := copy(t,7,2);

    result := strtodate(g + ds + a + ds + y);

end;


function tarihal(t: tdate): string;
var
sonuct,s:string;
begin
s:=datetostr(t);
result:=copy(s,7,4)+copy(s,4,2)+copy(s,1,2);
end;


function Grd_Giydir(Grid:TAdvStringGrid;colsay:integer;ca : tstringlist) : string;
 var
  x : integer;
begin

   grid.ColCount:=ca.Count+1;

   for x:=0 to ca.Count-1 do
     begin
       if x=0 then grid.ColWidths[x]:=20 else
         begin
//         grid.ColWidths[x]:=length(ca.Strings[x])*10;
         end;

       grid.Cells[x+1,0]:=ca.Strings[x];


      end;



end;


function SayisalVeri(alan:Tlabelededit; var Key: Char): Boolean;
begin
  if not(key in ['0'..'9', #13,#8,#10]) Then key := #0;
  if (key = '.') and (Pos('.',alan.Text) > 0)
  Then key := #0;
end;


function BuyukHarf(var Key: Char): Boolean;
var
  s:string;
begin

  if key in [#10, #39, #34] Then key := #0;
  if (key = '''') or (key = '"') Then key := #0180;
  if key in ['a'..'z','ý','ü','ö','þ','ð','ç']
  Then begin
         s:=key;
         if key='ý' then key:='I'
         else if key='i' then key:='Ý'
         else begin s:=AnsiUpperCase(s); key:=s[1]; end;
  end;
end;


procedure ComboDoldur (Q  : TADOQuery;
                              sql: string;
                              C  :TComboBox);
begin
   Q.SQL.Add(sql);
   q.Open;
   Q.first;
   C.Items.Clear ;
   while not Q.Eof do
   begin
      C.Items.Add (trim(Q.Fields[0].asstring));
      Q.Next;
   end;
   q.Close;
end;


procedure ComboDoldur2 (Q  : TADOQuery;
                              sql: string;
                              C  :TComboBox;alan:integer ; alan2 :integer);
begin
   Q.SQL.Add(sql);
   q.Open;
   Q.first;
   C.Items.Clear ;
   while not Q.Eof do
   begin
      C.Items.Add (trim(Q.Fields[alan].asstring)+'-'+trim(Q.Fields[alan2].asstring));
      Q.Next;
   end;
   q.Close;
end;


Function bakim(b: TADOConnection;donem:string): string;
VAR
sql:string;
ay,alan,alan1:string;
ay1:integer;
// adoconnection1:tadoconnection1;
kadir1: TADOCommand;
baglan:TADOConnection;
begin

//hafýzada bir adocommand oluþturuluyor...
kadir1:=TADOCommand.Create(kadir1);
kadir1.Connection:=b;
kadir1.ConnectionString:=serverismi(donem);

//--------
try

for ay1:=1 to 12 do begin

 alan:='ay'+inttostr(ay1)+'topb';
 alan1:='ay'+inttostr(ay1)+'topa';

 sql:='update muh_hesap_plani set '+alan+'= (select sum(borc) from muh_fis_hareket where hesapkodu=h.hesap_kodu'+
 ' and month(tarih)='+inttostr(ay1)+'),'+
  alan1+'= (select sum(alacak) from muh_fis_hareket where hesapkodu=h.hesap_kodu'+
 ' and month(tarih)='+inttostr(ay1)+')'+
 'from muh_hesap_plani h';
 kadir1.CommandText:=sql;

// showmessage(sql);

 kadir1.Execute;

 sql:='update muh_hesap_plani set  '+alan+'=0'+' where '+alan+' is null';
 kadir1.CommandText := sql;
 kadir1.Execute;

 sql:='update muh_hesap_plani set  '+alan1+'=0'+' where '+alan1+' is null';
 kadir1.CommandText := sql;
 kadir1.Execute;






end;
except
    result:='H';
    exit;
    kadir1.Destroy;
end;
    result:='E';

    kadir1.Destroy;


end;
Function servertip():string;
VAR
Xy:TREGISTRy;
CN:string;
begin
    xy := Tregistry.Create;
    xy.OpenKey('Software\NOKTA\NOKTA',True);
    CN := xy.ReadString('CS');

    if cn = 'ODBC' then
    begin
      result := 'MSDASQL.1';
    end;
    if cn = 'SQL' then
    begin
      result:='SQLOLEDB.1';
    end;


end;

Function serverismi(adres , katalog :string):string;
VAR
   XX:TREGISTRy;
   s,s1,servername,sifre:string;

begin

    xx := Tregistry.Create;
    xx.OpenKey('Software\NOKTA\NOKTA',True);
    s := xx.ReadString('servername');
    s1 := xx.ReadString('CS');
    sifre := xx.ReadString('sifre');
    adres := s;
    if s1='ODBC'
    then begin
      servername:=
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=mavinokta;Data Source=SQL SERVER;Initial Catalog=' + katalog;
    end;

    if s1='SQL'
    then begin
      servername:=
      'Provider=SQLOLEDB.1;Password='+sifre+';Persist Security Info=False;User ID=sa;Initial Catalog='+katalog+';Data Source='+adres;
    end;

    result:=servername;

end;

Function serverbaglan(adres , katalog , sifre :string):string;
VAR
   XX:TREGISTRy;
   s,s1,servername,_sifre:string;
begin

    xx := Tregistry.Create;
    xx.OpenKey('Software\NOKTA\NOKTA',True);
    s := xx.ReadString('servername');
    s1 := xx.ReadString('cs');
    _sifre := xx.ReadString('sifre');

    if sifre = '' then  _sifre := xx.ReadString('sifre')
    Else _sifre := sifre;

    //sifre := '';
    //adres := s;
    if s1='ODBC'
    then begin
      servername:=
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=SA;Data Source=SQL SERVER;Initial Catalog='+katalog;
    end;

    if s1='SQL'
    then begin
      servername:=
      'Provider=SQLOLEDB.1;Password=53RizeGuneysu' + ';Persist Security Info=True;User ID=noktaadmin;Initial Catalog='+katalog+';Data Source='+adres;
    end;

    result:=servername;

end;


Function serverismi(katalog :string):string;
VAR
  XX:TREGISTRy;
  s,s1,servername,sifre:string;
  _pos_ : integer;

begin
  xx := Tregistry.Create;
  try
    xx.OpenKey('Software\NOKTA\NOKTA',True);
    s := xx.ReadString('servername');
    s1 := xx.ReadString('CS');
    sifre := '5353';//xx.ReadString('sifre');

    katalog := xx.ReadString('DONEM');
    _pos_ := pos('-',katalog)-1;
    katalog := trim(copy(katalog,1,_pos_));

    //katalog := 'DIALIZ';
    if s1='ODBC'
    then begin
      servername:=
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=SA;Data Source=SQL SERVER;Initial Catalog='+katalog;
    end;

    if s1='SQL'
    then begin
      servername:=
      'Provider=SQLOLEDB.1;Password='+sifre+';Persist Security Info=False;User ID=Nokta;Initial Catalog='+katalog+
      ';Data Source='+s+';Application Name=Mavi Nokta E-Reçete Veritabaný Günc.Paket Masaüstü Uyg.';
    end;

    result:=servername;
  finally
    xx.Free;
  end;
end;

Function yaz(islem :string; tarih :tdate;hesapkodu :string ;tutarb :real;tutara:real;conn:string) :string;
VAR
sql:string;
ay:string;
ay1:integer;
// adoconnection1:tadoconnection1;
kadir1: TADOCommand;


begin

try
//hafýzada bir adocommand oluþturuluyor...
kadir1:=TADOCommand.Create(kadir1);
kadir1.ConnectionString:=conn;
//serverismi('MUHASEBE');

ay:=copy(datetostr(tarih),4,2);
ay1:=strtoint(ay);

if islem='+' then begin

case ay1 of
  1: sql:='update muh_hesap_plani set ay1topb=ay1topb+ :t,ay1topa=ay1topa+ :t1  where hesap_kodu='''+hesapkodu+'''';
  2: sql:='update muh_hesap_plani set ay2topb=ay2topb+ :t,ay2topa=ay2topa+ :t1  where hesap_kodu='''+hesapkodu+'''';
  3: sql:='update muh_hesap_plani set ay3topb=ay3topb+ :t,ay3topa=ay3topa+ :t1  where hesap_kodu='''+hesapkodu+'''';
  4: sql:='update muh_hesap_plani set ay4topb=ay4topb+ :t,ay4topa=ay4topa+ :t1  where hesap_kodu='''+hesapkodu+'''';
  5: sql:='update muh_hesap_plani set ay5topb=ay5topb+ :t,ay5topa=ay5topa+ :t1  where hesap_kodu='''+hesapkodu+'''';
  6: sql:='update muh_hesap_plani set ay6topb=ay6topb+ :t,ay6topa=ay6topa+ :t1  where hesap_kodu='''+hesapkodu+'''';
  7: sql:='update muh_hesap_plani set ay7topb=ay7topb+ :t,ay7topa=ay7topa+ :t1  where hesap_kodu='''+hesapkodu+'''';
  8: sql:='update muh_hesap_plani set ay8topb=ay8topb+ :t,ay8topa=ay8topa+ :t1  where hesap_kodu='''+hesapkodu+'''';
  9: sql:='update muh_hesap_plani set ay9topb=ay9topb+ :t,ay9topa=ay9topa+ :t1  where hesap_kodu='''+hesapkodu+'''';
  10: sql:='update muh_hesap_plani set ay10topb=ay10topb+ :t,ay10topa=ay10topa+ :t1  where hesap_kodu='''+hesapkodu+'''';
  11: sql:='update muh_hesap_plani set ay11topb=ay11topb+ :t,ay11topa=ay11topa+ :t1  where hesap_kodu='''+hesapkodu+'''';
  12: sql:='update muh_hesap_plani set ay12topb=ay12topb+ :t,ay12topa=ay12topa+ :t1  where hesap_kodu='''+hesapkodu+'''';
else
exit;
end;
end;

if islem='-' then begin

case ay1 of
  1: sql:='update muh_hesap_plani set ay1topb=ay1topb- :t,ay1topa=ay1topa- :t1  where hesap_kodu='''+hesapkodu+'''';
  2: sql:='update muh_hesap_plani set ay2topb=ay2topb- :t,ay2topa=ay2topa- :t1  where hesap_kodu='''+hesapkodu+'''';
  3: sql:='update muh_hesap_plani set ay3topb=ay3topb- :t,ay3topa=ay3topa- :t1  where hesap_kodu='''+hesapkodu+'''';
  4: sql:='update muh_hesap_plani set ay4topb=ay4topb- :t,ay4topa=ay4topa- :t1  where hesap_kodu='''+hesapkodu+'''';
  5: sql:='update muh_hesap_plani set ay5topb=ay5topb- :t,ay5topa=ay5topa- :t1  where hesap_kodu='''+hesapkodu+'''';
  6: sql:='update muh_hesap_plani set ay6topb=ay6topb- :t,ay6topa=ay6topa- :t1  where hesap_kodu='''+hesapkodu+'''';
  7: sql:='update muh_hesap_plani set ay7topb=ay7topb- :t,ay7topa=ay7topa- :t1  where hesap_kodu='''+hesapkodu+'''';
  8: sql:='update muh_hesap_plani set ay8topb=ay8topb- :t,ay8topa=ay8topa- :t1  where hesap_kodu='''+hesapkodu+'''';
  9: sql:='update muh_hesap_plani set ay9topb=ay9topb- :t,ay9topa=ay9topa- :t1  where hesap_kodu='''+hesapkodu+'''';
  10: sql:='update muh_hesap_plani set ay10topb=ay10topb- :t,ay10topa=ay10topa- :t1  where hesap_kodu='''+hesapkodu+'''';
  11: sql:='update muh_hesap_plani set ay11topb=ay11topb- :t,ay11topa=ay11topa- :t1  where hesap_kodu='''+hesapkodu+'''';
  12: sql:='update muh_hesap_plani set ay12topb=ay12topb- :t,ay12topa=ay12topa- :t1  where hesap_kodu='''+hesapkodu+'''';
else
exit;
end;
end;

//    showmessage(sql);

kadir1.CommandText:=sql;
kadir1.Parameters[0].DataType:=ftfloat;
kadir1.Parameters[0].Value:=tutarb;
kadir1.Parameters[1].DataType:=ftfloat;
kadir1.Parameters[1].Value:=tutara;
kadir1.Execute;

except
    result:='H';
    exit;
    kadir1.Destroy;
end;
   result:='E';
   kadir1.Destroy;



end;



end.

