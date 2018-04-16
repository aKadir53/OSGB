unit Tnm_Ilaclar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,kadir,
  GirisUnit,Data_Modul, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters,getformClass, dxSkinBlack,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;



type
  TfrmIlaclar = class(TGirisForm)
    cxPanelReceteAciklama: TcxGroupBox;
    cxGrid9: TcxGrid;
    cxGridTetkikSonuc: TcxGridDBTableView;
    cxGridLevel9: TcxGridLevel;
    cxButtonKadirAckSil: TcxButtonKadir;
    cxButtonKadirAckEkle: TcxButtonKadir;
    cxGridTetkikSonuckod: TcxGridDBColumn;
    cxGridTetkikSonuctanimi: TcxGridDBColumn;
    cxGridTetkikSonuctetkikKodu: TcxGridDBColumn;
    cxGridTetkikSonucid: TcxGridDBColumn;
    cxGridTetkikSonucsonuc: TcxGridDBColumn;
    cxGridTetkikSonucaciklama: TcxGridDBColumn;
    cxGridTetkikSonucsonuc2: TcxGridDBColumn;
    cxGridTetkikSonucreceteEklenir: TcxGridDBColumn;
    DataSource1: TDataSource;
    cxGroupBox1: TcxGroupBox;
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxButtonCClick(Sender: TObject);
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer); override;
    procedure cxButtonKadirAckEkleClick(Sender: TObject);
    procedure cxButtonKadirAckSilClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'ILACLAR_TNM';
      formGenislik = 500;
      formYukseklik = 450;

var
  frmIlaclar: TfrmIlaclar;


implementation
    uses AnaUnit;
{$R *.dfm}

procedure TfrmIlaclar.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmIlaclar.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmIlaclar.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

function TfrmIlaclar.Init(Sender: TObject) : Boolean;
var
  List,TaniList : TListeAc;
  cxBtnkod,cxBtnGrup ,cxBtnEtken: TcxButtonKadir;
  IlacGrup,etkenMadde,tetkikSonuc,aktif,tip,kulYol,RecTip : TcxImageComboKadir;
begin

case self.Tag of
 TagfrmIlaclar
  : begin
          ClientHeight := formYukseklik;
          ClientWidth := formGenislik;
          indexFieldName := 'kod';
          TableName := _TableName_;

          Olustur(self,_TableName_,'Ýlaç Taným',24);

          List := TListeAc.Create(nil);
          List.Table := 'ILACLAR_TNM_V';
          List.kolonlar.Create;
          List.kolonlar.Add('kod');
          List.kolonlar.Add('kisatanimi');
          List.kolonlar.Add('grupKoduTanimi');
          List.kolonlar.Add('etkenMadde');
          List.KolonBasliklari.Create;
          List.KolonBasliklari.Add('Ýlaç Kodu');
          List.KolonBasliklari.Add('Ýlaç Adi');
          List.KolonBasliklari.Add('Grup Kodu');
          List.KolonBasliklari.Add('Etken Madde');
          List.TColcount := 4;
          List.TColsW := '100,200,50,100';
          List.ListeBaslik := 'Ýlaçlar';
          List.Name := 'kod';
          List.Conn := Datalar.ADOConnection2;
          List.SkinName := AnaForm.dxSkinController1.SkinName;
          List.Grup := True;
          List.GrupCol := 2;

          setDataStringB(self,'kod','Ýlaç Kodu',Kolon1,'z',120,List,True,nil);

          cxBtnkod := TcxButtonKadir.Create(self);
       //   cxBtnkod.OnClick := cxButtonCClick;
          cxBtnkod.NewButtonVisible := true;
          addButton(self,cxBtnkod,'kod', '','Ýlaç Listesinden Seç',Kolon1,'z',150,cxButtonCClick);

          setDataString(self,'kisatanimi','Ýlaç Kýsa Taným',Kolon1,'',200,True);
          setDataString(self,'tanimi','Ýlaç Tanýmý',Kolon1,'',200);


          ilacGrup := TcxImageComboKadir.Create(self);
          ilacGrup.Conn := Datalar.ADOConnection2;
          ilacGrup.TableName := 'ILACLAR_ANAGRUP_TNM';
          ilacGrup.ValueField := 'kod';
          ilacGrup.DisplayField := 'tanimi';
          ilacGrup.BosOlamaz := True;
          ilacGrup.Filter := '';
          OrtakEventAta(ilacGrup);
          setDataStringKontrol(self,ilacGrup,'Grup','Grubu',kolon1,'grp',200);

          cxBtnGrup := TcxButtonKadir.Create(self);
          cxBtnGrup.Tag := 1;
          cxBtnGrup.OnClick := cxButtonCClick;
          cxBtnGrup.NewButtonVisible := False;
          addButton(self,cxBtnGrup,'Grup', '','Ýlaç Grup Tanýmla',Kolon1,'grp',150,cxButtonCClick);

          setDataString(self,'firma','Firma',Kolon1,'',150);

          etkenMadde := TcxImageComboKadir.Create(self);
          etkenMadde.Conn := Datalar.ADOConnection2;
          etkenMadde.TableName := 'ETkenMaddeSutKurallari_TNM';
          etkenMadde.ValueField := 'kod';
          etkenMadde.DisplayField := 'tanimi';
          etkenMadde.BosOlamaz := True;
          etkenMadde.Filter := '';
          OrtakEventAta(etkenMadde);
          setDataStringKontrol(self,etkenMadde,'etkenMadde','Etken Madde',kolon1,'etk',200);

          cxBtnEtken := TcxButtonKadir.Create(self);
          cxBtnEtken.Tag := 2;
          cxBtnEtken.OnClick := cxButtonCClick;
          cxBtnEtken.NewButtonVisible := False;
          addButton(self,cxBtnEtken,'Etken', '','Etken Madde',Kolon1,'etk',150,cxButtonCClick);


          Rectip := TcxImageComboKadir.Create(self);
          Rectip.Conn := datalar.ADOConnection2;
          Rectip.TableName := 'ReceteTur';
          Rectip.ValueField := 'kod';
          Rectip.DisplayField := 'tanimi';
          Rectip.BosOlamaz := True;
          Rectip.Filter := '';
          OrtakEventAta(Rectip);
          setDataStringKontrol(self,Rectip,'Rectipi','Reçete Tipi',kolon1,'',80);

          tip := TcxImageComboKadir.Create(self);
          tip.Conn := nil;
          tip.BosOlamaz := True;
          tip.ItemList := '0;Merkez,1;Ev';
          tip.Filter := '';
          OrtakEventAta(tip);
          setDataStringKontrol(self,tip,'tip','Kullaným Yeri',kolon1,'',80);

          setDataStringCurr(self,'fiyat','Fiyatý',Kolon1,'',80,',0.00',0);

          aktif := TcxImageComboKadir.Create(self);
          aktif.Conn := nil;
          aktif.BosOlamaz := True;
          aktif.ItemList := '1;Evet,0;Hayýr';
          aktif.Filter := '';
          OrtakEventAta(aktif);
          setDataStringKontrol(self,aktif,'aktif','Aktif',kolon1,'',80);
         // setDataStringChk(self,'aktif','Aktif mi?',Kolon1,'',150);

        //  cxBtnkod1.NewButtonVisible := false;
         // addButton(self,cxBtnkod1,'tetkikSonuc', '','Detay Göster',Kolon3,'',100);
        //  addButton(self,cxButtonKadir3,'unite', '','Yazdýr',Kolon3,'',100);

          setDataStringMemo(self,'unite','Açýklama',Kolon1,'',250,50);

          TaniList := TListeAc.Create(nil);
          TaniList.Table := 'icd_teshisleri';
          TaniList.kolonlar.Create;
          TaniList.kolonlar.Add('ICDKODU');
          TaniList.kolonlar.Add('TANI');
          TaniList.KolonBasliklari.Create;
          TaniList.KolonBasliklari.Add('Taný Kodu');
          TaniList.KolonBasliklari.Add('Taný Adi');
          TaniList.TColcount := 2;
          TaniList.TColsW := '50,200';
          TaniList.ListeBaslik := 'Tanýlar';
          TaniList.Name := 'TaniList';
          TaniList.Conn := Datalar.ADOConnection2;
          TaniList.SkinName := AnaForm.dxSkinController1.SkinName;


          setDataStringBLabel(self,'lblBosSatir',sayfa2_Kolon1,'',300,'Reçete Default Bilgileri');

          setDataStringB(self,'Tani','Taný Kodu',sayfa2_Kolon1,'',100,TaniList,False,nil,'Tani');

          tetkikSonuc := TcxImageComboKadir.Create(self);
          tetkikSonuc.Conn := nil;
          tetkikSonuc.BosOlamaz := True;
          tetkikSonuc.ItemList := '1;Evet,0;Hayýr';
          tetkikSonuc.Filter := '';
          OrtakEventAta(tetkikSonuc);
          setDataStringKontrol(self,tetkikSonuc,'tetkikSonuc','Tetkik Sonuç Gerekli mi?',sayfa2_Kolon1,'',100);

          kulYol := TcxImageComboKadir.Create(self);
          kulYol.Conn := Datalar.ADOConnection2;
          kulYol.TableName := 'ReceteKullanimYol';
          kulYol.ValueField := 'kod';
          kulYol.DisplayField := 'tanimi';
          kulYol.BosOlamaz := True;
          kulYol.Filter := '';
          OrtakEventAta(kulYol);
          setDataStringKontrol(self,kulYol,'kulYol','Kullanim Yolu',sayfa2_Kolon1,'',120);
          setDataStringC(self,'doz','Doz',sayfa2_Kolon1,'',100,'1x1,1x2,1x3,2x1,2x2,2x3,3x1,3x2,3x3,4x1,4x2,4x3');
          setDataStringCurr(self,'adet','Adet',sayfa2_Kolon1,'',50,',0',0);
        //  tableColumnDescCreate;

          SayfaCaption('Taným Bilgileri','Ýlaç Reçete Bilgileri','','','');
          Result := True;
       end;

   TagfrmIlacAnaGrup
   : begin
          ClientHeight := 250;
          ClientWidth := formGenislik;
          indexFieldName := 'kod';
          TableName := 'ILACLAR_ANAGRUP_TNM';

          Olustur(self,TableName,'Ýlaç Ana Grup Tanýmý',23);

          List := TListeAc.Create(nil);
          List.Table := 'ILACLAR_ANAGRUP_TNM';
          List.kolonlar.Create;
          List.Kolonlar.Add('kod');
          List.Kolonlar.Add('tanimi');
          List.KolonBasliklari.Create;
          List.KolonBasliklari.Add('Grup Kodu');
          List.KolonBasliklari.Add('Grup Adý');
          List.TColcount := 2;
          List.TColsW := '50,200';
          List.ListeBaslik := 'Ýlaç Ana Gruplarý';
          List.Name := 'kod';
          List.Conn := Datalar.ADOConnection2;
          List.SkinName := AnaForm.dxSkinController1.SkinName;

          setDataStringB(self,'kod','Ana Grup Kodu',Kolon1,'',100,List,True,nil);
          setDataString(self,'tanimi','Grup Tanýmý',Kolon1,'',250);
          SayfaCaption('Taným Bilgileri','','','','');
          Result := True;
      end;
TagfrmIlacEtkenMadde
 : begin
          ClientHeight := 550;
          ClientWidth := 600;
          indexFieldName := 'kod';
          TableName := 'ETkenMaddeSutKurallari_TNM';

          List := TListeAc.Create(nil);
          List.Table := 'ETkenMaddeSutKurallari_TNM';
          List.kolonlar.Create;
          List.Kolonlar.Add('kod');
          List.Kolonlar.Add('tanimi');
          List.KolonBasliklari.Create;
          List.KolonBasliklari.Add('Kodu');
          List.KolonBasliklari.Add('Tanýmý');
          List.TColcount := 2;
          List.TColsW := '50,200';
          List.ListeBaslik := 'Ýlaç Etken Madde';
          List.Name := 'kod';
          List.Conn := Datalar.ADOConnection2;
          List.SkinName := AnaForm.dxSkinController1.SkinName;

          setDataStringB(self,'kod','Kodu',Kolon1,'',100,List,True,nil,'','',False,True,-100);
          setDataString(self,'tanimi','Etken Madde Tanýmý',Kolon1,'',200);
          setDataString(self,'etkenMadde','Etken Madde',Kolon1,'',100);
          setDataStringMemo(self,'TetkikSonuc','Tetkik Sonuç',kolon1,'',450,80);
          setDataStringMemo(self,'Doz','Doz',kolon1,'',450,80);
          setDataStringMemo(self,'Diger','Diger',kolon1,'',450,80);
          setDataStringCurr(self,'bdoz1','Baþlangýç Doz Aralýk',Kolon1,'bdoz',50,',0.00',0);
          setDataStringCurr(self,'bdoz2','',Kolon1,'bdoz',50,',0.00',0);
          setDataStringC(self,'bdozPeryot','B.Doz Peryot',Kolon1,'bdoz',100,'3-Gün,4-Hasta,5-Ay');
          setDataStringCurr(self,'idoz1','Ýdama Doz Aralýk',Kolon1,'idoz',50,',0.00',0);
          setDataStringCurr(self,'idoz2','',Kolon1,'idoz',50,',0.00',0);
          setDataStringC(self,'idozPeryot','Ý.Doz Peryot',Kolon1,'idoz',100,'3-Gün,4-Hasta,5-Ay');


          cxPanelReceteAciklama.Visible := True;
          setDataStringKontrol(self,cxPanelReceteAciklama,'cxPanelReceteAciklama','',sayfa2_Kolon1,'',570,250,alClient);

          SayfaCaption('Taným Bilgileri','Tetkik Sonuç','','','');
          Result := True;
 end;
end;
       inherited;

end;

procedure TfrmIlaclar.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
 begin
    inherited;
  if TGirisForm(Self).Tag = TagfrmIlacEtkenMadde
  Then
  begin
    _Dataset := SQLSelectToDataSet('*','IlaclarReceteTetkikSonuc','kod = ' +
                  TcxButtonEditKadir(FindComponent('kod')).EditValue);
    DataSource1.DataSet := _Dataset;
    cxGridTetkikSonuc.DataController.DataSource := DataSource1;

  end;

 end;

procedure TfrmIlaclar.cxButtonKadirAckEkleClick(Sender: TObject);
begin
  inherited;
  _Dataset.Append;
  _dataset.FieldByName('kod').Value := TcxButtonEditKadir(FindComponent('kod')).EditValue;
  _dataset.Post;
end;

procedure TfrmIlaclar.cxButtonKadirAckSilClick(Sender: TObject);
begin
  inherited;
  _Dataset.Delete;
end;

procedure TfrmIlaclar.cxKaydetClick(Sender: TObject);
begin
  inherited;
  case TcxButton(sender).Tag  of
    0 : begin
        // ShowMessage('Kaydet');
        // ButonClick(self,'k');
      //   Olustur(self,'Users');
      //   setDataString(self,'ADISOYADI',100,10);

        end;
    2 : begin
         TcxButtonEditKadir(FindComponent('kod')).Clear;
         if Assigned(_Dataset) then _Dataset.Active := false;
    end;
  end;
end;


procedure TfrmIlaclar.cxButtonCClick(Sender: TObject);
var
 List : TListeAc;
 _L_ : ArrayListeSecimler;
 _name_ : string;
  F : TGirisForm;
  GirisRecord : TGirisFormRecord;
begin
  inherited;
  case TcxButton(sender).Tag  of
    0 : begin
            List := TListeAc.Create(nil);
            List.Kolonlar.Create;
            List.Table := 'ilacListesi';
            List.Kolonlar.Add('barkod');
            List.Kolonlar.Add('ilacAdi');

            List.KolonBasliklari.Create;
            List.KolonBasliklari.Add('Barkod');
            List.KolonBasliklari.Add('Ýlaç Adi');

            List.KolonBasliklari.Create;
            List.TColcount := 2;
            List.TColsW := '100,300';
            List.ListeBaslik := 'Ýlaçlar';
            List.Name := 'barkod';
            List.Conn := Datalar.ADOConnection2;
            List.SkinName := AnaForm.dxSkinController1.SkinName;
            List.Grup := True;

            _L_ := List.ListeGetir;
            if High (_L_) >= 0 then
            begin
              _name_ := TcxButtonKadir(sender).ButtonName;
              _name_ := StringReplace(_name_,'cxBtn','',[rfReplaceAll]);
              TcxButtonEditKadir(FindComponent(_name_)).Text := _L_ [0].kolon1;
              TcxButtonEditKadir(FindComponent('tanimi')).Text := _L_ [0].kolon2;
            end;
        end;
    1 : begin
          F := FormINIT(TagfrmIlacAnaGrup,GirisRecord,ikHayir,'');
          if F <> nil then F.ShowModal;
        end;
    2 : begin
          F := FormINIT(TagfrmIlacEtkenMadde,GirisRecord,ikHayir,'');
          if F <> nil then F.ShowModal;
        //  GirisRecord.F_IlacEtkenMadde_ := TcxImageComboKadir(FindComponent('etkenMadde')).EditValue;
       //   F := FormINIT(TagfrmIlacEtkenMaddeDetay,GirisRecord,ikHayir,'');
       //   if F <> nil then F.ShowModal;
        end;

  end;
end;

end.
