unit topluGelis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, BaseGrid, AdvGrid, ComCtrls, Buttons, sBitBtn,
  AdvToolBtn, ExtCtrls, Menus,kadir, Mask,KadirMedula3,GetFormClass, KadirType,
  EditType, InvokeRegistry, Rio, SOAPHTTPClient,SOAPHTTPTrans , WinInet,adodb,
  sComboBox, sCheckBox, cxGraphics, cxControls, cxLookAndFeels,AnaUnit,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxProgressBar, dxSkinsCore,
  dxSkinsDefaultPainters, cxCheckBox, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,GirisUnit,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, AdvObj,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox, cxRadioGroup,
  cxLabel;

type
  TfrmTopluGelis = class(TGirisForm)
    pnlToolBar: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    gridAktif: TAdvStringGrid;
    TabSheet2: TTabSheet;
    txtHatalar: TMemo;
    txtSigortaliTur: TComboBox;
    txtDevredilenKurum: TComboBox;
    pnlGunler: TPanel;
    GroupBox5: TGroupBox;
    Label37: TLabel;
    Label47: TLabel;
    txtPazartesi: TsCheckBox;
    txtSali: TsCheckBox;
    txtCarsamba: TsCheckBox;
    txtPersembe: TsCheckBox;
    txtCuma: TsCheckBox;
    txtCumartesi: TsCheckBox;
    txtPazar: TsCheckBox;
    txtMakinaNo: TEditTyped;
    txtSure: TEditTyped;
    txtSeans: TsComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    sBitBtn5: TsBitBtn;
    sBitBtn6: TsBitBtn;
    PopupMenu1: TPopupMenu;
    mnSe1: TMenuItem;
    mptal1: TMenuItem;
    HTTPRIO1: THTTPRIO;
    N1: TMenuItem;
    H1: TMenuItem;
    L1: TMenuItem;
    T1: TMenuItem;
    S1: TMenuItem;
    G1: TMenuItem;
    A1: TMenuItem;
    GeliTarihineGreHastaListesi1: TMenuItem;
    txtProvizyonTarihi: TcxDateEdit;
    txtSeansNo: TcxComboBox;
    TakipSor: TcxRadioGroup;
    hastaTip: TcxComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    procedure gridAktifCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure mnSe1Click(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure haksahibi(x : integer);
    procedure haksahibiBosalt(x : integer);

    function SeansDetay(gun : integer ; gunler , Bas , Bit , dosyaNo , gelisNo , doktor , mn , s : string) : boolean;
    procedure gridAktifGetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure HTTPRIO1HTTPWebNode1BeforePost(
      const HTTPReqResp: THTTPReqResp; Data: Pointer);
    procedure gridAktifCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure sBitBtn2Click(Sender: TObject);
    function seans : string;
    procedure seansisaretle(seans : string);
    procedure sBitBtn6Click(Sender: TObject);
    procedure gridAktifDblClick(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure gridAktifCheckBoxMouseUp(Sender: TObject; ACol,
      ARow: Integer; State: Boolean);
    procedure KartTalepClick(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LabHizmetEkle;
    procedure cxButtonCClick(Sender: TObject);
    procedure txtProvizyonTarihiPropertiesChange(Sender: TObject);
    procedure Listele(Tag : integer);
    procedure TakipAl;
    procedure SeansOlustur;
    procedure GelisAc;

  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmTopluGelis: TfrmTopluGelis;
  sonSeansTarihi : Tdate;

implementation

uses data_modul, DB,HastaKart;

{$R *.dfm}

function TfrmTopluGelis.Init(Sender : TObject) : Boolean;
begin
  Result := False;
  txtProvizyonTarihi.Date := date;
  sonSeansTarihi := ayliktarih(date);
  if not inherited Init(Sender) then exit;
end;

procedure TfrmTopluGelis.cxButtonCClick(Sender: TObject);
begin
inherited;
  case Tcontrol(sender).Tag of
  -4 : begin
          LabHizmetEkle;
       end;
  -5 : begin
         TakipAl;
       end;
  -6 : begin
        SeansOlustur;
       end;
  -7 : begin
        GelisAc;
       end;
  -8,-9 : begin
             Listele(Tcontrol(sender).Tag);
          end;

  end;
end;

procedure TfrmTopluGelis.GelisAc;
var
  sql , sonuc,Takip,gelis,error : string;
  x : integer;
  ado : TADOQuery;
begin
  //datalar.ADOConnection2.BeginTrans;
 // try
       ado := TADOQuery.Create(nil);x
       ado.Connection := datalar.ADOConnection2;

       Takipsor.Enabled := false;
       DurumGoster(True,True);
       pbar.Position := 0;
       pbar.Properties.Max := gridAktif.RowCount - 2;

       for x := 1 to gridAktif.RowCount - 2 do
       begin
          Application.ProcessMessages;
          pbar.Position := pbar.Position + 1;
          if gridAktif.Cells[25,x] = 'T'
          then begin

             datalar.Bilgi.TakipNo := '';
             datalar.Bilgi.BasvuruNo := '';


             sql := 'select * from gelisler where dosyaNo = ' + QuotedStr(gridAktif.Cells[1,x]) +
                    ' and BHDAT = ' + QuotedStr(tarih(gridAktif.Cells[6,x]));
             datalar.QuerySelect(ado,sql);

             //ShowMessageSkin('Bu Hastanýn Bulunduðunuz Aya Ait Bir Seans Geliþi Bulunmaktadýr, Tekrar Açamazsýnýz...','','','info');
             if not ado.Eof then Continue;

             if TakipSor.ItemIndex = 0
             Then Begin
                  haksahibiBosalt(x);
                  haksahibi(x);
                  sonuc := TakipAl_3KimlikDorulama(datalar.Bilgi,datalar.HastaKabul,False);
                  if sonuc = '0000'
                  Then begin
                        gridAktif.Cells[11,x] := datalar.Bilgi.devredilenKurum;
                        gridAktif.Cells[10,x] := datalar.Bilgi.Durum;

                        if datalar.Bilgi.devredilenKurum <> ''
                        Then Begin
                          sql := 'update hastakart set DURUM = ' + QuotedStr(datalar.Bilgi.Durum) +
                                ',KurumTip = ' + QuotedStr(DATALAR.Bilgi.devredilenKurum) +
                                ' where dosyaNO = ' + QuotedStr(gridAktif.Cells[1,x]);
                          datalar.QueryExec(datalar.ADO_SQL1,sql);

                        End;
                  End;

                  //gridAktif.Cells[15,x] := sonuc;

                  txtHatalar.Lines.Add(datalar.Bilgi.Adi+' Takip Sonucu :' + sonuc + ' ' + datalar.Bilgi.TakipNo + ' Devredilen Kurum [ ' + datalar.Bilgi.devredilenKurum + ' ]');
             End;



             try
            (*
              sql := 'insert into Gelisler (dosyaNo,gelisNo,BHDAT,TEDAVITURU,TakýpSend,ce,Kullanici,DATE_CREATE,doktor,SEVKGECSURE,SERVIS,HastaTop,KurumTop,TakýpNo,BasvuruNo) ' +
                     'values(' + #39 + gridAktif.Cells[1,x] + #39 + ',' +
                             gridAktif.Cells[2,x] + ',' +
                             #39 + tarih(gridAktif.Cells[6,x]) + #39 + ',' +
                             #39 + gridAktif.Cells[5,x] + #39 + ',' +
                             #39 + '9' + #39 + ',' +
                             #39 + 'H' + #39 + ',' +
                             #39 + datalar.username + #39 + ',' +
                             #39 + FormatDateTime('mm.dd.yyyy',date()) + #39 + ',' +
                             #39 + copy(gridAktif.Cells[16,x],1,4)+ #39 + ',' +
                             '0' + ',' +
                             #39 + gridAktif.Cells[4,x] + #39 + ',' +
                             '0' + ',' +
                             '0'  + ',' +
                             QuotedStr(datalar.Bilgi.TakipNo) + ',' +
                             QuotedStr(datalar.Bilgi.BasvuruNo) + ')';  *)


             sql := 'exec sp_GelisKaydet ' +
                    '@dosyaNo = ' + #39 + gridAktif.Cells[1,x]+ #39 + ',' +
                    '@gelisNo = ' + gridAktif.Cells[2,x] + ',' +
                    '@BHDAT = ' + #39 + tarih(gridAktif.Cells[6,x]) + #39 + ',' +
                    '@SEVKGECSURE = 0 ,' +
                    '@doktor = ' + #39 + copy(gridAktif.Cells[16,x],1,4) + #39 + ',' +
                    '@SERVIS = ' + #39 + gridAktif.Cells[4,x] + #39 + ',' +
                    '@TEDAVITURU = ' + #39 + 'G' + #39 + ',' +
                    '@HastaTop = 0 ,' +
                    '@KurumTop = 0 ,' +
                    '@Kullanici = ' + #39 + datalar.username + #39 + ',' +
                    '@DIYALIZOR = ' + QuotedStr('') + ',' +
                    '@GIRISYOLU = ' + QuotedStr('') + ',' +
                    '@TakipNo = '   + QuotedStr(datalar.Bilgi.TakipNo) + ',' +
                    '@basvuruNo = ' + QuotedStr(datalar.Bilgi.BasvuruNo) ;

               datalar.QuerySelect(datalar.ADO_SQL1,sql);

               gelis := datalar.ADO_SQL1.fieldbyname('Gelis').AsString;
               error := datalar.ADO_SQL1.fieldbyname('error').AsString;

               if gelis = '-1'
               then begin
                  //ShowMessageSkin(error,'','','info');
                  raise Exception.Create(error);
                  Continue;
               end;

              txtHatalar.Lines.Add(datalar.Bilgi.Adi+' Gelis Tablosuna Yazýldý :' + Takip + ' , ' + gridAktif.Cells[3,x]);
              Takip := '';


              datalar.ADO_SQL1.Close;
              datalar.ADO_SQL1.SQL.Clear;
              sql := 'delete from hareketler where dosyaNo = ' + QuotedStr(gridAktif.Cells[1,x]) +
              ' and gelisNo = ' + gridAktif.Cells[2,x];
              datalar.QueryExec(datalar.ADO_SQL1,sql);

              datalar.ADO_SQL1.Close;
              datalar.ADO_SQL1.SQL.Clear;
              sql := 'exec sp_hastaLabIsle ' + QuotedStr(gridAktif.Cells[1,x]) + ',' +
                                               gridAktif.Cells[2,x] + ',' +
                                               QuotedStr(tarih(gridAktif.Cells[6,x]));
              datalar.QueryExec(datalar.ADO_SQL1,sql);


              SeansDetay(31,'',gridAktif.Cells[13,x],gridAktif.Cells[14,x],
                         gridAktif.Cells[1,x],gridAktif.Cells[2,x],copy(gridAktif.cells[16,x],1,4),gridAktif.cells[17,x],gridAktif.cells[18,x]);


             if sureKontrol
             then begin
                if Raporgecerlimi(gridAktif.Cells[1,x]) = 0
                then begin
                   txtHatalar.Lines.Add('Dikkat , Rapor Bitiþ Tarihi Dolmuþtur. Yeni Rapor Giriþi Yapmadan Seans Geliþi Açamazsýnýz...!');
                end else
                if Raporgecerlimi(gridAktif.Cells[1,x]) <> -1
                then begin
                    txtHatalar.Lines.Add('Dikkat , Rapor Bitiþ Tarihi Dolmak Üzere ,Kalan gun :' + floattostr(RaporGecerlimi(gridAktif.Cells[1,x])));
                   end;
             end;

             except on e : Exception do
               begin
                  txtHatalar.Lines.Add(e.Message + ' ; ' + datalar.Bilgi.Adi+' Gelis Tablosuna Yazýlmadý :' + Takip + ',' + gridAktif.Cells[3,x]);
               end;
             end;

          end;

       end; // for end

//  except on e : Exception do
//    begin
        //datalar.ADOConnection2.RollbackTrans;
//        ShowMessageSkin('Hata Oluþtu : ' + e.Message,'','','info');
        //exit;
//    end;
  //end;
  //datalar.ADOConnection2.CommitTrans;
  ShowMessageSkin('Geliþler Açýldý','','','info');
  Takipsor.Enabled := true;
  DurumGoster(False);

end;

procedure TfrmTopluGelis.SeansOlustur;
var
  x : integer;
  gelis , sonuc : string;
begin

       Takipsor.Enabled := false;
       pbar.Visible := true;
       pbar.Position := 0;
       pbar.Properties.Max := gridAktif.RowCount - 2;

       for x := 1 to gridAktif.RowCount - 2 do
       begin
          Application.ProcessMessages;
          pbar.Position := pbar.Position + 1;
          gelis := inttostr(strtoint(gridAktif.Cells[2,x]));

          if gridAktif.Cells[25,x] = 'T'
          then begin
              SeansDetay(31,'',gridAktif.Cells[13,x],gridAktif.Cells[14,x],
                         gridAktif.Cells[1,x],gelis,copy(gridAktif.cells[16,x],1,4),gridAktif.cells[17,x],gridAktif.cells[18,x]);

          end;
       end;

       ShowMessageSkin('Seanslar Oluþturuldu','','','info');
end;

procedure TfrmTopluGelis.TakipAl;
var
  x : integer;
  gelis , sonuc , sql , dosyaNo : string;
  ado : TADOQuery;
begin

       Takipsor.Enabled := false;
       pbar.Visible := true;
       pbar.Position := 0;
       pbar.Properties.Max := gridAktif.RowCount - 2;

       ado := TADOQuery.Create(nil);x
       ado.Connection := datalar.ADOConnection2;

       for x := 1 to gridAktif.RowCount - 2 do
       begin
          Application.ProcessMessages;
          pbar.Position := pbar.Position + 1;
          gelis := inttostr(strtoint(gridAktif.Cells[2,x]));
          dosyaNo := gridAktif.Cells[1,x];

          if gridAktif.Cells[25,x] = 'T'
          then begin
                  haksahibiBosalt(x);
                  haksahibi(x);
                  sonuc := '';
                  sql := 'select * from gelisler where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis + ' and isnull(TakýpNO,'''') = ' + QuotedStr('');
                  datalar.QuerySelect(ado,sql);
                  if not ado.Eof
                  then

                 sonuc := TakipAl_3KimlikDorulama(datalar.Bilgi,datalar.HastaKabul,False);


                 if sonuc = '0000'
                 Then begin
                        sql := 'update gelisler ' +
                               ' set TakýpNo = ' + QuotedStr(datalar.Bilgi.TakipNo) + ',basvuruNo = ' + QuotedStr(datalar.Bilgi.BasvuruNo) +
                               'where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis;

                        datalar.QueryExec(ado,sql);
                 txtHatalar.Lines.Add(gridAktif.Cells[3,x] + ': Takip No : ' + datalar.Bilgi.TakipNo + ' Baþvuru : ' + datalar.Bilgi.BasvuruNo);
                 End
                 else
                  txtHatalar.Lines.Add(gridAktif.Cells[3,x] + ' :  ' + sonuc);

          end;

       end;
       ado.free;
       ShowMessageSkin('Takipler Alýndý','','','info');
end;


procedure TfrmTopluGelis.Listele(Tag : integer);
var
   sql : string;
   x : integer;
   ilkS,sonS : string;
begin
  ilkS := tarih(txtProvizyonTarihi.text);
  sonS := tarih(datetostr(ayliktarih(txtProvizyonTarihi.Date)));

  if Tag = -8
  then
   sql := 'exec er_aphastalistesi ''1''' + ',' + QuotedStr(ilkS) + ',' +
           QuotedStr(sonS) + ',' + QuotedStr(txtSeansNo.Text) + ',' + QuotedStr(copy(hastaTip.Text,1,1))
  else
   sql := 'exec er_aphastalistesiGelis ''1''' + ',' + QuotedStr(ilkS) + ',' + QuotedStr(sonS) + ',' +
           QuotedStr(txtSeansNo.Text) + ',' + QuotedStr(copy(hastaTip.Text,1,1));

   datalar.QuerySelect(datalar.ADO_SQL,sql);

   Grid_Temizle(gridAktif);

   for x := 1 to datalar.ADO_SQL.RecordCount do
   begin
       gridAktif.Cells[1,x] := datalar.ADO_SQL.fieldbyname('dosyaNo').AsString;
       gridAktif.AddCheckBox(1,x,false,false);
       gridAktif.Cells[2,x] := datalar.ADO_SQL.fieldbyname('Gno').AsString;
       gridAktif.Cells[3,x] := datalar.ADO_SQL.fieldbyname('ADSOYAD').AsString;
       gridAktif.Cells[4,x] := datalar.ADO_SQL.fieldbyname('BRANS').AsString;
       gridAktif.Cells[5,x] := 'G';
       gridAktif.Cells[6,x] := datalar.ADO_SQL.fieldbyname('provizyontarihi').AsString;
       gridAktif.Cells[7,x] := datalar.ADO_SQL.fieldbyname('TCKIMLIKNO').AsString;
       gridAktif.Cells[8,x] := datalar.ADO_SQL.fieldbyname('SIGORTANO').AsString;
       gridAktif.Cells[9,x] := datalar.ADO_SQL.fieldbyname('KarneNo').AsString;
       gridAktif.Cells[10,x] := datalar.ADO_SQL.fieldbyname('Durum').AsString;
       gridAktif.Cells[11,x] := datalar.ADO_SQL.fieldbyname('KurumTip').AsString;
       gridAktif.Cells[12,x] := datalar.ADO_SQL.fieldbyname('bitisTarihi').AsString;
       gridAktif.Cells[15,x] := datalar.ADO_SQL.fieldbyname('seansGunleri').AsString;
       gridAktif.cells[16,x] := datalar.ADO_SQL.fieldbyname('Doktor').AsString;
       gridAktif.cells[17,x] := datalar.ADO_SQL.fieldbyname('makinaNo').AsString;
       gridAktif.cells[18,x] := datalar.ADO_SQL.fieldbyname('Seans').AsString;
       gridAktif.cells[38,x] := datalar.ADO_SQL.fieldbyname('dtar').AsString;
       gridAktif.Cells[39,x] := datalar.ADO_SQL.fieldbyname('KANG').AsString;
       gridAktif.Cells[40,x] := datalar.ADO_SQL.fieldbyname('seansSayi').AsString;

       gridAktif.Cells[41,x] := datalar.ADO_SQL.fieldbyname('EV_ADRES').AsString;
       gridAktif.Cells[42,x] := datalar.ADO_SQL.fieldbyname('EV_TEL1').AsString;

       gridAktif.Cells[13,x] := ilkS;
       gridAktif.Cells[14,x] := sonS;

       gridAktif.Cells[25,x] := '';

       if sureKontrol
       then begin
          if (Raporgecerlimi(gridAktif.Cells[1,x]) = 0)
             and ((gridAktif.Cells[40,x] = '2') or (gridAktif.Cells[40,x] = '4'))
          then begin
            SatiriRenklendir(gridAktif,x,25,clRed);
            txtHatalar.Lines.Add(gridAktif.Cells[3,x] +  ' : Dikkat , Rapor Bitiþ Tarihi Dolmuþtur. Yeni Rapor Giriþi Yapmadan Seans Geliþi Açamazsýnýz...!');
            gridAktif.Cells[100,x] := 'RB';

          end else
          if (Raporgecerlimi(gridAktif.Cells[1,x]) <> -1)
          and ((gridAktif.Cells[40,x] = '2') or (gridAktif.Cells[40,x] = '4'))
          then begin
              SatiriRenklendir(gridAktif,x,25,clYellow);
              txtHatalar.Lines.Add(gridAktif.Cells[3,x] + ' : Dikkat , Rapor Bitiþ Tarihi Dolmak Üzere ,Kalan gun :' + floattostr(RaporGecerlimi(gridAktif.Cells[1,x])));
              gridAktif.Cells[100,x] := 'RBU';
          end
          else
          if (Raporgecerlimi(gridAktif.Cells[1,x]) = -2)
          and ((gridAktif.Cells[40,x] = '2') or (gridAktif.Cells[40,x] = '4'))
          then begin
              SatiriRenklendir(gridAktif,x,25,clAqua);
              txtHatalar.Lines.Add(gridAktif.Cells[3,x] + ' : Dikkat , Rapor Bitiþ Tarihi Dolmak Üzere ,Kalan gun :' + floattostr(RaporGecerlimi(gridAktif.Cells[1,x])));
              gridAktif.Cells[100,x] := 'RBY';
          end
          else
            gridAktif.Cells[100,x] := '';

       end;


       datalar.ADO_SQL.Next;
       gridAktif.AddRow;

   end;

end;


procedure TfrmTopluGelis.LabHizmetEkle;
var
  sql , gelis : string;
  ado : TADOQuery;
  x : integer;

begin
       ado := TADOQuery.Create(nil);x
       ado.Connection := datalar.ADOConnection2;

       pbar.Visible := true;
       pbar.Position := 0;
       pbar.Properties.Max := gridAktif.RowCount - 2;

       for x := 1 to gridAktif.RowCount - 2 do
       begin
          Application.ProcessMessages;
          pbar.Position := pbar.Position + 1;
          gelis := inttostr(strtoint(gridAktif.Cells[2,x]));

          if gridAktif.Cells[25,x] = 'T'
          then begin

              ado.Close;
              ado.SQL.Clear;
              sql := 'select * from hareketler where dosyaNo = ' + QuotedStr(gridAktif.Cells[1,x]) +
              ' and gelisNo = ' + gelis;
              datalar.QuerySelect(ado,sql);

               if ado.Eof
               Then begin
                 (* ado.Close;
                  ado.SQL.Clear;
                  sql := 'delete from hareketler where dosyaNo = ' + QuotedStr(gridAktif.Cells[1,x]) +
                  ' and gelisNo = ' + gelis;
                  datalar.QueryExec(ado,sql);
                   *)
                  ado.Close;
                  ado.sql.Clear;
                  sql := 'exec sp_hastaLabIsle ' + QuotedStr(gridAktif.Cells[1,x]) + ',' +
                                                   gelis + ',' +
                                                   QuotedStr(tarih(gridAktif.Cells[6,x]));
                  datalar.QueryExec(ado,sql);

               end;
          end;
       end;

       ado.Free;
       pbar.Visible := false;
       pbar.Position := 0;

end;




function TfrmTopluGelis.seans : string;
var
 _seans1 , _seans2 ,_seans3 , _seans4 , _seans5 ,_seans6 , _seans7 : string;
begin
  if txtPazartesi.Checked then _seans1 := '1' else _seans1 := '0';
  if txtSali.Checked then _seans2 := '1' else _seans2 := '0';
  if txtCarsamba.Checked then _seans3 := '1' else _seans3 := '0';
  if txtPersembe.Checked then _seans4 := '1' else _seans4 := '0';
  if txtCuma.Checked then _seans5 := '1' else _seans5 := '0';
  if txtCumartesi.Checked then _seans6 := '1' else _seans6 := '0';
  if txtPazar.Checked then _seans7 := '1' else _seans7 := '0';
  result := _seans7 + _seans1 + _seans2 + _seans3 + _seans4 + _seans5 + _seans6;
end;


procedure TfrmTopluGelis.seansisaretle(seans : string);
begin
  if copy(seans,2,1) = '1' then txtPazartesi.Checked := true else txtPazartesi.Checked := false;
  if copy(seans,3,1) = '1' then txtSali.Checked := true else txtSali.Checked := false;
  if copy(seans,4,1) = '1' then txtCarsamba.Checked := true else txtCarsamba.Checked := false;
  if copy(seans,5,1) = '1' then txtPersembe.Checked := true else txtPersembe.Checked := false;
  if copy(seans,6,1) = '1' then txtCuma.Checked := true else txtCuma.Checked := false;
  if copy(seans,7,1) = '1' then txtCumartesi.Checked := true else txtCumartesi.Checked := false;
  if copy(seans,1,1) = '1' then txtPazar.Checked := true else txtPazar.Checked := false;
end;

function TfrmTopluGelis.SeansDetay(gun : integer ; gunler , Bas , Bit , dosyaNo , gelisNo , doktor , mn , s : string) : boolean;
var
  _gun , x , y : integer;
  _tarih , _btarih : tDate;
  diyalizor, sql ,raporTakipNo : string;
  ado : TADOQuery;
begin
     sql := '';
     gunler := seansgun(dosyaNo);
     //diyalizor := DiyalizorGetir(dosyaNo);
     _btarih := strtodate(Bit);
     y := 1;

     raporTakipNo := raporTakipNobul(dosyaNo);
     if raporTakipNo = ''
     then begin
       ShowMessageSkin('Hastanýn Aktif Diyaliz Raporu Bulunamadý','','','info');
       exit;
     end;

     for x := 1 to gun do
     begin
        _gun := DayOfWeek(strtodate(Bas));

        if pos(inttostr(_gun),gunler) <> 0
        Then Begin 

           sql := 'if not exists(select * from gelisdetay where dosyaNo = ' + QuotedStr(dosyaNo)  + ' and rtarih = ' + QuotedStr(tarih(Bas)) + ')' +
                  ' begin ' +
                  'insert into GelisDetay (dosyaNo,gelisNo,RTarih,Durum,Doktor,makinaNo,Seans) ' +
                  ' values (' + QuotedStr(dosyaNo) + ','
                              + gelisNo + ','
                              + QuotedStr(tarih(Bas)) + ','
                              + '0' + ','
                              + QuotedStr(doktor) + ','
                              + QuotedStr(mn) + ','
                              + QuotedStr(s) +
                              ') end';
           datalar.ADO_SQL.close;
           datalar.ADO_SQL.SQL.Clear;
           datalar.QueryExec(datalar.ADO_SQL,sql);
           y := y + 1;

        End;
        _tarih := strtodate(Bas);
        _tarih := _tarih + 1;
        Bas := datetostr(_tarih);
        if _tarih > _btarih Then Break;

     end;

     datalar.ADO_SQL1.close;
     datalar.ADO_SQL1.SQL.Clear;
     sql := 'update Gelisler set GelinenSeans = ' + '0' + ',' +
            'AcilmisSeans = ' + inttostr(y-1) + ',' +
            'CIKTAR = ' + #39 + tarihal(_btarih) + #39 +
            ' where dosyaNo = ' + #39 + dosyaNo + #39 +
            ' and gelisNo = ' + gelisNo;

     datalar.QueryExec(datalar.ADO_SQL1,sql);




end;


procedure TfrmTopluGelis.haksahibiBosalt(x : integer);
begin
     datalar.Bilgi.tckimlikNo := '';
     datalar.Bilgi.sosyalGuvenlikNo := '';
     datalar.Bilgi.karneNo := '';
     datalar.Bilgi.Durum := '';
     datalar.Bilgi.devredilenKurum := '';
     datalar.Bilgi.provizyonTuru := 'N';
     datalar.Bilgi.DTarihi := '';
     datalar.Bilgi.yakinlikKodu := '';
     datalar.Bilgi.Adi := '';
     datalar.Bilgi.tedaviTuru := 'G';
     datalar.Bilgi.TakipTuru := 'N';
     datalar.Bilgi.tedaviTipi := '1';
     datalar.Bilgi.BransKodu := KurumBransi;
     datalar.Bilgi.ilkTakip := '';
     datalar.Bilgi.telefon := '';
     datalar.Bilgi.adres := '';

end;



procedure TfrmTopluGelis.haksahibi(x : integer);
begin
     datalar.Bilgi.tckimlikNo := gridAktif.Cells[7,x];
     datalar.Bilgi.sosyalGuvenlikNo := gridAktif.Cells[8,x];
     datalar.Bilgi.karneNo := gridAktif.Cells[9,x];
     datalar.Bilgi.Durum := gridAktif.Cells[10,x];
     datalar.Bilgi.devredilenKurum := gridAktif.Cells[11,x];
     datalar.Bilgi.provizyonTuru := 'N';
     datalar.Bilgi.DTarihi := gridAktif.Cells[6,x];
     datalar.Bilgi.ProvizyonTarihi := gridAktif.Cells[6,x];
     datalar.Bilgi.yakinlikKodu := gridAktif.Cells[12,x];
     datalar.Bilgi.Adi := gridAktif.Cells[3,x];
     datalar.Bilgi.tedaviTuru := 'G';
     datalar.Bilgi.TakipTuru := 'N';
     datalar.Bilgi.tedaviTipi := '1';
     datalar.Bilgi.BransKodu := KurumBransi;
     datalar.Bilgi.telefon := gridAktif.Cells[42,x];
     datalar.Bilgi.adres := gridAktif.Cells[41,x];

end;


procedure TfrmTopluGelis.gridAktifCheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin

     if (gridAktif.Cells[100,arow] <> 'RB') and (gridAktif.Cells[100,arow] <> 'RBY')
     Then Begin

         if state = true
         then begin
              gridAktif.Cells[25,arow] := 'T';

         end;

         if state = false
         then begin
            gridAktif.Cells[25,arow] := 'F';

         end;


     End;


end;

procedure TfrmTopluGelis.mnSe1Click(Sender: TObject);
var
   x : integer;
   secim : boolean;
   _secim : string;
begin

   if TPopupMenu(sender).Tag = 0
   then begin
       secim := True;
       _secim := 'T';
   end else
   begin                                                                              
       secim := False;
       _secim := 'F';
   end;

       for x := 1 to gridAktif.RowCount - 1 do
       begin
            if (gridAktif.Cells[100,x] = 'RB') or (gridAktif.Cells[100,x] = 'RBY')  then Continue;
            gridAktif.SetCheckBoxState(1,x,secim);
            gridAktif.Cells[25,x] := _secim;


       end;

end;

procedure TfrmTopluGelis.btnVazgecClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTopluGelis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmTopluGelis.FormCreate(Sender: TObject);
begin
  Tag := TagfrmKanTetkikTakipDegerlendir;
  TableName := '';
  cxPanel.Visible := false;
  cxTab.Width := 200;
  SayfaCaption('','','','','');
  Olustur(self,'','',23);
  Menu := PopupMenu1;
end;

procedure TfrmTopluGelis.gridAktifGetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
var
  sql : string;
  ado : TADOQuery;
  x : integer;
begin
    if (acol = 6) or (acol = 13) or (acol = 14)
    then aEditor := edDateEdit;


    if acol = 16
    then begin
            ado := TADOQuery.Create(nil);x
            ado.Connection := datalar.ADOConnection2;

            AEditor := edComboList;
            sql := 'select * from Doktorlar where durum = ''Aktif''';
            datalar.QuerySelect(ado,sql);
            gridAktif.Combobox.Clear;
            for x := 1 to ado.RecordCount do
            begin
                 gridAktif.AddComboString(ado.Fields[0].asstring + '-' + ado.Fields[1].asstring);
                 ado.Next;
            end;
           ado.Close;
           ado.Free;
    end;

    if acol = 10
    then begin
        AEditor := edComboList;
        gridAktif.Combobox.Clear;
        for x := 0 to txtSigortaliTur.Items.Count do
        begin
          gridAktif.AddComboString(txtSigortaliTur.Items.Strings[x]);

        end;
    end;

    if acol = 11
    then begin
        AEditor := edComboList;
        gridAktif.Combobox.Clear;
        for x := 0 to txtDevredilenKurum.Items.Count do
        begin
          gridAktif.AddComboString(txtDevredilenKurum.Items.Strings[x]);

        end;
    end;

end;

procedure TfrmTopluGelis.H1Click(Sender: TObject);
var
 r : integer;
 Form : TGirisForm;
begin
   if FindTab(AnaForm.sayfalar,'TabfrmHastaKart')
   Then begin
     Form := TGirisForm(FormClassType(TagfrmHastaKart));
     TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := gridAktif.Cells[1,gridAktif.Row];
     TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
   end
   Else begin
    Form := FormINIT(TagfrmHastaKart,self,gridAktif.Cells[1,gridAktif.Row],NewTab(AnaForm.sayfalar,'TabfrmHastaKart'),ikEvet,'Giriþ');
    if Form <> nil then Form.show;
   end;
end;


procedure TfrmTopluGelis.txtProvizyonTarihiPropertiesChange(Sender: TObject);
begin
  inherited;
  sonSeansTarihi := ayliktarih(txtProvizyonTarihi.Date);
end;

procedure TfrmTopluGelis.HTTPRIO1HTTPWebNode1BeforePost(
  const HTTPReqResp: THTTPReqResp; Data: Pointer);
var
    TimeOut : integer;

begin

      TimeOut := 10000; // in milleseconds.

      InternetSetOption(Data,
      INTERNET_OPTION_RECEIVE_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(TimeOut));

      InternetSetOption(Data,
      INTERNET_OPTION_SEND_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(TimeOut));

end;

procedure TfrmTopluGelis.gridAktifCanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
begin
//  if (acol = 1) or (acol =2)
//  then canedit := false;

end;

procedure TfrmTopluGelis.sBitBtn2Click(Sender: TObject);
var
  ado : TADOQuery;
  sql : string;
  x : integer;
begin
(*
       ado := TADOQuery.Create(nil);
       ado.Connection := datalar.ADOConnection2;

       for x := 1 to gridAktif.RowCount - 2 do
       begin
          Application.ProcessMessages;
          if gridAktif.Cells[25,x] = 'T'
          then begin
             sql := 'update hastakart set ' +
                    ' kurumTip = ' + QuotedStr(trim(copy(gridAktif.Cells[11,x],1,2))) +
                    ',durum = ' +  QuotedStr(trim(copy(gridAktif.Cells[10,x],1,1))) +
                    ',seansGunleri = ' + QuotedStr(gridAktif.Cells[15,x]) +
                    ',makinaNo = ' + QuotedStr(gridAktif.Cells[17,x]) +
                    ',seans = ' + QuotedStr(gridAktif.Cells[18,x]) +
                    ' where dosyaNo = ' + QuotedStr(gridAktif.Cells[1,x]);
             datalar.QueryExec(ado,sql);
          end;
       end;
       ShowMessageSkin('iþlem Tamamlandý','','','info');
       ado.Free;
       *)
end;

procedure TfrmTopluGelis.sBitBtn6Click(Sender: TObject);
begin

   gridAktif.Cells[15,gridAktif.row] := seans;
   gridAktif.Cells[17,gridAktif.Row] := txtMakinaNo.Text;
   gridAktif.Cells[18,gridAktif.Row] := txtSeans.Text[1];

   pnlGunler.Visible := false;


end;

procedure TfrmTopluGelis.gridAktifDblClick(Sender: TObject);
begin

   if gridAktif.Col = 15
   Then begin
     pnlGunler.Visible := true;
     seansisaretle(gridAktif.Cells[15,gridAktif.row]);
   End;
   
end;

procedure TfrmTopluGelis.sBitBtn5Click(Sender: TObject);
begin

  pnlGunler.Visible := false;

end;

procedure TfrmTopluGelis.gridAktifCheckBoxMouseUp(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
   if gridAktif.cells[100,Arow] = 'RB'
   then gridAktif.SetCheckBoxState(1,Arow,False);
end;

procedure TfrmTopluGelis.KartTalepClick(Sender: TObject);
var
  sql, kurum , tc,ad,dt,kg,kadi , sifre : string;
  ado : TADOQuery;
  x : integer;
  con : string;
begin
(*
   con := 'Provider=SQLOLEDB.1;Password=Guneysu**Rize;Persist Security Info=True;User ID=noktaadmin;Initial Catalog=mavi;Data Source=213.142.141.101';
   sifre := '12345678987654321';

   datalar.ADOConnection1.ConnectionString := con;

   if sifre <> inputbox('Talep þifre','Talep Þifrsini Girin','')
   Then begin
      ShowMessageSkin('Talep Þifresi Kabul Edilmedi','','','info');
      exit;
   End;

   if mryes = ShowMessageSkin('Seçili Hastalara Kart Talebinde Bulunulacak , Emin misiniz ?','','','msg')
   Then Begin
     try
      datalar.ADOConnection1.Connected := true;
      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection1;
      datalar.Login;
      for x := 1 to gridAktif.RowCount - 1 do
      Begin
        Application.ProcessMessages;
        gridAktif.Row := x;
        if gridAktif.Cells[25,x] = 'T'
        Then Begin
         kurum := inttostr(datalar._kurumKod);
         tc := gridAktif.Cells[7,x];
         ad := gridAktif.Cells[3,x];
         dt := gridAktif.Cells[38,x];
         kg := gridAktif.Cells[39,x];
         kadi := merkezAdi(kurum);

         sql :=  ' if not exists(select * from HastaKartTalep where kurum = ' + QuotedStr(kurum) + ' and tc = ' + QuotedStr(tc) + ') ' +
                 ' begin ' +
                 '   insert into HastaKartTalep (kurum,tc,adSoyad,dtarih,kangrubu,merkezadi) ' +
                 '   select ' + QuotedStr(kurum) + ',' + QuotedStr(tc) + ',' + QuotedStr(ad) + ',' + QuotedStr(dt) + ',' + QuotedStr(kg) + ',' + QuotedStr(kadi) +
                 '   select ''0'',''Kart Talebi Ýletildi''' +
                 ' end ' +
                 ' else ' +
                 ' select ''1'',''Kart Talebi Mevcut''';

         datalar.QuerySelect(ado,sql);


        End;

      End; // for end

     except on e : Exception do
      begin
        ShowMessageSkin('Hata : ' + e.Message,'','','info');
      end;

     end;  // try end

     datalar.ADOConnection1.Connected := false;

   End;

     *)

end;

end.
