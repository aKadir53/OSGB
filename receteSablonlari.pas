unit receteSablonlari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,strutils,
  Dialogs, Grids, DBGridEh, StdCtrls, Buttons, sBitBtn, ExtCtrls, DB, ADODB,
  DBCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,kadir,
  cxContainer, cxEdit, cxGroupBox, GirisUnit,KadirType,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, GridsEh, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxButtons, KadirLabel, Menus,
  cxImageComboBox;

type
  TfrmReceteSablon = class(TGirisForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh3: TDBGridEh;
    Sablonlar: TADOTable;
    SablonDetay: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    IlacAciklama: TADOTable;
    DataSource3: TDataSource;
    cxGroupBox3: TcxGroupBox;
    Aciklama: TADOTable;
    DataSource4: TDataSource;
    cxGroupBox4: TcxGroupBox;
    Tani: TADOTable;
    DataSource5: TDataSource;
    PopupMenu1: TPopupMenu;
    S1: TMenuItem;
    K1: TMenuItem;
    cxGrid1: TcxGrid;
    cxGridHastaGelis: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGridHastaGelissablonAdi: TcxGridDBColumn;
    cxGridHastaGelisreceteTur: TcxGridDBColumn;
    cxGridHastaGelisdoktor: TcxGridDBColumn;
    cxGridHastaGelisreceteAltTur: TcxGridDBColumn;
    SablonDetayid: TAutoIncField;
    SablonDetayilacKodu: TStringField;
    SablonDetayilacAdi: TStringField;
    SablonDetayEtkenMadde: TStringField;
    SablonDetaykullanimZaman: TStringField;
    SablonDetaykullanimAdet: TFloatField;
    SablonDetaykullanZamanUnit: TStringField;
    SablonDetaykullanimSekli: TStringField;
    SablonDetaykullanimYolu: TStringField;
    SablonDetaykullanimAdet2: TIntegerField;
    SablonDetayadet: TIntegerField;
    SablonDetayReceteSablonID: TIntegerField;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1ilacKodu: TcxGridDBColumn;
    cxGridDBTableView1ilacAdi: TcxGridDBColumn;
    cxGridDBTableView1kullanimZaman: TcxGridDBColumn;
    cxGridDBTableView1kullanimAdet: TcxGridDBColumn;
    cxGridDBTableView1kullanZamanUnit: TcxGridDBColumn;
    cxGridDBTableView1kullanimSekli: TcxGridDBColumn;
    cxGridDBTableView1kullanimYolu: TcxGridDBColumn;
    cxGridDBTableView1kullanimAdet2: TcxGridDBColumn;
    cxGridDBTableView1adet: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2aciklamaTip: TcxGridDBColumn;
    cxGridDBTableView2aciklama: TcxGridDBColumn;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridDBTableView3aciklamaTip: TcxGridDBColumn;
    cxGridDBTableView3aciklama: TcxGridDBColumn;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cxGridDBTableView4taniKodu: TcxGridDBColumn;
    cxGridDBTableView4tani: TcxGridDBColumn;
    BtnIlacEkle: TcxButtonKadir;
    cxButtonKadirTaniSil: TcxButtonKadir;
    cxButtonKadirTaniEkle: TcxButtonKadir;
    cxButtonKadirTanisil1: TcxButtonKadir;
    E1: TMenuItem;
    cxButtonKadirAckSil: TcxButtonKadir;
    cxButtonKadirAckEkle: TcxButtonKadir;
    cxButtonKadirilacackekle1: TcxButtonKadir;
    cxButtonKadirilacacksil1: TcxButtonKadir;
    procedure btnSendClick(Sender: TObject);
    procedure TabloAc(doktor : string);
    procedure FormCreate(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure BtnIlacEkleClick(Sender: TObject);
    procedure cxButtonKadirTaniEkleClick(Sender: TObject);
    procedure cxButtonKadirTaniSilClick(Sender: TObject);
    procedure cxButtonKadirAckEkleClick(Sender: TObject);
    procedure sablonilacekle(islem:integer);
    procedure Sablontaniekle;
    procedure sablonackekle(islem:integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReceteSablon: TfrmReceteSablon;

implementation
  uses data_modul, IlacSarfListesi,hastarecete, AnaUnit;

{$R *.dfm}

procedure TfrmReceteSablon.TabloAc(doktor : string);
begin
 // Sablonlar.Filter := 'doktor = ' + QuotedStr(doktor);
  Sablonlar.Active := true;
  SablonDetay.Active := true;
  IlacAciklama.Active := true;
  Aciklama.Active := true;
  Tani.Active := true;

end;

procedure TfrmReceteSablon.BtnIlacEkleClick(Sender: TObject);
begin
  inherited;
    sablonilacekle(ReceteSablonIlacEkle);
end;

procedure TfrmReceteSablon.btnSendClick(Sender: TObject);
begin
  Sablonlar.Active := false;
  SablonDetay.Active := false;
  IlacAciklama.Active := false;
  Tani.Active := false;

  close;

end;

procedure TfrmReceteSablon.cxButtonKadirAckEkleClick(Sender: TObject);
begin
  inherited;

  case TcxButtonKadir(Sender).Tag of
   0 : begin
   sablonackekle(receteackekle)
   end;
   1 :if MrYes = ShowMessageSkin('Açýklama Þablondan Çýkartýlýyor Emin misiniz ?','','','msg')
     Then Begin
   Aciklama.Delete;
     End;
  end;
 Aciklama.Active := False;
 Aciklama.Active := True;
end;

procedure TfrmReceteSablon.cxButtonKadirTaniEkleClick(Sender: TObject);
begin
  inherited;
  case TcxButtonKadir(Sender).Tag of
   0 : begin
   sablonTaniEkle;
   end;
   1 :if MrYes = ShowMessageSkin('Taný Þablondan Çýkartýlýyor Emin misiniz ?','','','msg')
     Then Begin
   Tani.Delete;
     End;
  end;
 Tani.Active := False;
 Tani.Active := True;
end;

procedure TfrmReceteSablon.cxButtonKadirTaniSilClick(Sender: TObject);
var
  sql : string;
  ado : TADOQuery;
begin
  inherited;

   if MrYes = ShowMessageSkin('Ýlaç Þablondan Çýkartýlýyor Emin misiniz ?','','','msg')
     Then Begin
        ado := TADOQuery.Create(nil);
        try
          sql := 'delete from ReceteDetaySablon where id = ' + SABLONDETAY.fieldbyname('id').AsString;
          datalar.QueryExec(ado,sql);
          SABLONDETAY.Active := false;
          SABLONDETAY.Active := True;
        finally
          ado.Free;
        end;
     End;

end;

procedure TfrmReceteSablon.FormCreate(Sender: TObject);
var
doktorlar:TcxImageComboKadir;
begin
  inherited;
  cxPanel.Visible := false;
  SayfaCaption('','','','','');
  Olustur(self,'','Reçete Þablonlarý',23);
  Menu := PopupMenu1;

    doktorlar := TcxImageComboKadir.Create(nil);
    doktorlar.Conn := Datalar.ADOConnection2;
    doktorlar.TableName := 'doktorlarT';
    doktorlar.ValueField := 'Kod';
    doktorlar.DisplayField := 'Tanimi';
    doktorlar.BosOlamaz := False;
    doktorlar.Filter := ' durum = ''Aktif''';

  Sablonlar.Active := true;
  SablonDetay.Active := true;
  IlacAciklama.Active := true;
  Aciklama.active:=true;
  Tani.Active := true;
  cxGridHastaGelisdoktor.Properties:=doktorlar.Properties;
end;

procedure TfrmReceteSablon.S1Click(Sender: TObject);
var
  sql : string;
  ado : TADOQuery;
begin
  if MrYes = ShowMessageSkin('Þablon Ýptal Ediliyor Emin misiniz ?','','','msg')
  Then Begin
    try
      datalar.ADOConnection2.BeginTrans;
      ado := TADOQuery.Create(nil);
      try
        sql := 'delete from receteTaniSablon where ReceteSablonID = ' + Sablonlar.fieldbyname('Id').AsString;
        datalar.QueryExec(ado,sql);
        sql := 'delete from receteAciklamaSablon where ReceteSablonID = ' + Sablonlar.fieldbyname('Id').AsString;
        datalar.QueryExec(ado,sql);
        sql := 'delete from ReceteIlacAciklamaSablon where ReceteDetaySablonID in ( ' +
               'select id from ReceteDetaySablon where ReceteSablonID = ' + Sablonlar.fieldbyname('Id').AsString + ')';
        datalar.QueryExec(ado,sql);
        sql := 'delete from ReceteDetaySablon where ReceteSablonID = ' + Sablonlar.fieldbyname('Id').AsString;
        datalar.QueryExec(ado,sql);
        Sablonlar.Delete;
        datalar.ADOConnection2.CommitTrans;
        ShowMessageSkin('Þablon Ýptal Edildi','','','info');
      finally
            ado.Free;
      end;
    except on e : exception do
      begin
        datalar.ADOConnection2.RollbackTrans;
        ShowMessageSkin('Hata',e.Message,'','info');
      end;
    end;
  End;
end;

 procedure TfrmReceteSablon.Sablonilacekle(islem:integer);
 begin
    if islem = ReceteSablonIlacEkle
   then
   begin
     try
      Application.CreateForm(TfrmIlacSarf, frmIlacSarf);
      try
        GorselAyar(frmIlacSarf,datalar.global_img_list4);
    //    frmIlacSarf.GonForm('frmHastaRecete',_dosyaNo_,_gelisNo_);
        frmIlacSarf._dosyaNO_ := _dosyaNo_;
        frmIlacSarf._gelisNO_ := _gelisNo_;
        frmilacsarf._islem_:=islem;
        frmIlacSarf.Tanilar (False);
        frmIlacSarf.Tag := TagfrmIlacSarf;
        frmIlacSarf.cxTab.Tabs[0].Caption := 'Ýlaçlar';
        frmIlacSarf.ShowModal;
      finally
        FreeAndNil(frmIlacSarf);
      end;
     except
     end;
   End;
end;

procedure TfrmRecetesablon.Sablontaniekle;
var
  List : ArrayListeSecimler;
  I : integer;
  sql, id : string;
  ado : TADOQuery;
begin
   frmHastarecete.TaniListe.Where := ifThen(frmHastarecete.cxChkSIK.Checked,'Sikkullan > 0','');
   frmHastarecete.TaniListe.SkinName := AnaForm.dxSkinController1.SkinName;
   frmHastarecete.TaniListe.SiralamaKolonu := ifThen(frmHastarecete.cxChkSIK.Checked,'Sikkullan Desc,TANI','TANI');
   List := frmHastarecete.TaniListe.ListeGetir;

 id := frmReceteSablon.SABLONLAR.FieldByName('id').AsString;

//   if frmhastarecete.sender is TcxButtonKadir.tag=1515 then ShowMessageSkin('Þablon Kayýt Edildi','','','info');

   for I := 0 to length(List) - 1 do
   begin
    try
       if not frmReceteSablon.Tani.Locate('recetesablonId;taniKodu',VarArrayOf([id, List[I].kolon1]),[])
       then begin
         frmReceteSablon.Tani.Append;
         frmReceteSablon.Tani.FieldByName('taniKodu').AsString := List[I].kolon1;
         frmReceteSablon.Tani.FieldByName('tani').AsString := List[I].kolon2;
         frmReceteSablon.Tani.post;

         sql := 'update icd_teshisleri set Sikkullan = Sikkullan + 1 where ICDKODU = ' + QuotedStr(List[I].kolon1);
         ado := TADOQuery.Create(nil);
         try
           ado.Connection := DATALAR.ADOConnection2;
           datalar.QueryExec(ado,sql);
         finally
           ado.Free;
         end;
       end;
    except
     exit;
    end;
   end;
end;

procedure TFrmRecetesablon.sablonackekle(islem:integer);
begin
 if mrYes = ShowPopupForm('Þablon Açýklama Ekle',islem)
    then begin
       if islem in [ReceteAckEkle,ReceteAckDuzenle]
       then begin

         if islem = ReceteAckEkle then Aciklama.Append else Aciklama.Edit;
         Aciklama.FieldByName('aciklamaTip').AsString := datalar.ReceteAciklama.ackKod;
         Aciklama.FieldByName('aciklama').AsString := datalar.ReceteAciklama.ack;
         Aciklama.Post;
         Aciklama.close;
         Aciklama.Open;
       end;
    {
       if islem in [ReceteIlacAckEkle,ReceteIlacAckDuzenle]
       then begin
         if islem = ReceteIlacAckEkle then ADO_ReceteIlacAciklama.Append else ADO_ReceteIlacAciklama.Edit;
         ADO_receteIlacAciklama.FieldByName('aciklamaTip').AsString := datalar.ReceteAciklama.ackKod;
         ADO_receteIlacAciklama.FieldByName('aciklama').AsString := datalar.ReceteAciklama.ack;
         ADO_receteIlacAciklama.Post;
       end;
       }
    end;
end;

end.
