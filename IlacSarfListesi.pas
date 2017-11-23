unit IlacSarfListesi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, adodb,
  Dialogs, Grids, DBGridEh, Mask, StdCtrls, clisted, Buttons,KadirType,
  sBitBtn, ExtCtrls, DB, RxMemDS, data_modul, strUtils,GirisUnit,
  sComboBox,kadir, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxLookAndFeels, cxLookAndFeelPainters, DBCtrls,dxmdaset, cxContainer, cxCheckBox,
  cxTextEdit, cxMemo, cxDBLookupComboBox, Menus, cxButtons, dxSkinsCore,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxDropDownEdit;

type
  TfrmIlacSarf = class(TGirisForm)
    pnlToolBar: TPanel;
    PanelSource: TPanel;
    pnlTitle: TPanel;
    pnlOnay: TPanel;
    txtinfo: TLabel;
    GroupBox2: TGroupBox;
    txtarama: TcxTextEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    txtGruplar: TsComboBox;
    gridIlacSarf: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridIlacSarfColumn1: TcxGridDBColumn;
    gridIlacSarfColumn2: TcxGridDBColumn;
    DBNavigator1: TDBNavigator;
    ADO_ILACSARF: TADOQuery;
    gridIlacSarfColumn3: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    Eklenen: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    EklenenColumn1: TcxGridDBColumn;
    Eklenenler: TdxMemData;
    EklenenlerETKENMADDE: TStringField;
    EklenenlerFormu: TStringField;
    Eklenenlerdoz: TStringField;
    EklenenlerKyolu: TStringField;
    chkDoz: TcxCheckBox;
    txtDetay: TcxMemo;
    chkSIK: TcxCheckBox;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    K: TcxStyle;
    Y: TcxStyle;
    T: TcxStyle;
    gridIlacSarfColumn4: TcxGridDBColumn;
    Eklenenleradet: TStringField;
    EklenenColumn2: TcxGridDBColumn;
    EklenenColumn3: TcxGridDBColumn;
    gridIlacSarfColumn5: TcxGridDBColumn;
    gridIlacSarfColumn6: TcxGridDBColumn;
    gridIlacSarfColumn7: TcxGridDBColumn;
    gridIlacSarfColumn8: TcxGridDBColumn;
    Eklenenlertani: TStringField;
    EklenenColumn4: TcxGridDBColumn;
    btnVazgec: TcxButton;
    btnSend: TcxButton;
    procedure txtHizmetGruplariCheckListItemToText(sender: TObject;
      var aText: String);
    procedure Gruplar;
    procedure btnSendClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
    procedure Tanilar(_tani , t : string);
    procedure txtaramaChange(Sender: TObject);
    procedure TanilarCombo;
    procedure GonForm(_form , _dosyano , _gelisNo : string);
    procedure txtGruplarClick(Sender: TObject);
    procedure gridIlacSarfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridIlacSarfDblClick(Sender: TObject);
    procedure gridIlacSarfKeyPress(Sender: TObject; var Key: Char);
    procedure chkDozClick(Sender: TObject);
    procedure ADO_ILACSARFAfterScroll(DataSet: TDataSet);
    procedure chkSIKClick(Sender: TObject);
    procedure gridIlacSarfStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIlacSarf: TfrmIlacSarf;
  _form_ , dosyaNo , gelisNo , dozTipi , KulPer , KulPerAdet : string;

implementation
   uses HastaRecete;

{$R *.dfm}

procedure TfrmIlacSarf.GonForm(_form , _dosyaNo ,_gelisNo: string);
begin
 _form := _form;
 dosyaNo := _dosyano;
 gelisNO := _gelisNo;
end;


procedure TfrmIlacSarf.TanilarCombo;
var
   sql : string;
begin
  (*
     sql := 'select SLB,SLT from hizmet_gruplari ' +
            ' where substring(SLXX,1,1) in (''6'',''7'')';
     datalar.ADO_ILACSARF.close;
     datalar.ADO_ILACSARF.SQL.Clear;
     ComboDoldur2(datalar.ADO_ILACSARF,sql,txtGruplar,0,1);
     *)
end;

procedure TfrmIlacSarf.Tanilar(_tani , t : string);
var
   sql ,grup : string;
   ado : TADOQuery;
begin
  _form_ := _tani;
  ado := TADOQuery.Create(nil);x
  try
    ADO_ILACSARF.Close;
    ADO_ILACSARF.SQL.Clear;
    sql := 'select * from ' + t +
           ' where Aktif = 1 order by NAME1 ' ;
    datalar.QuerySelect(ADO_ILACSARF,sql);
  except
  end;
end;
procedure TfrmIlacSarf.Gruplar;
var
   sql : string;
   x : integer;
begin
 (*
    sql := 'select SLB,SLT from hizmet_gruplari';
    datalar.QuerySelect(datalar.ADO_SQL,sql);

    txtHizmetGruplari.Clear;

    for x := 1 to datalar.ADO_SQL.RecordCount do
    begin
        txtHizmetGruplari.Items.Add(datalar.ADO_SQL.FieldList[0].AsString + ' ' + datalar.ADO_SQL.FieldList[1].AsString);
        datalar.ADO_SQL.Next;
    end;
   *)
end;


procedure TfrmIlacSarf.txtHizmetGruplariCheckListItemToText(
  sender: TObject; var aText: String);
begin
 atext :=  copy(atext,1,2);

end;

procedure TfrmIlacSarf.ADO_ILACSARFAfterScroll(DataSet: TDataSet);
begin
  if chkDoz.Checked
  then
    try
     txtDetay.Lines :=
     IlacReceteAciklama(datalar._dosyaNo_,datalar._gelisNo_,
                    ADO_ILACSARF.FieldByName('code').AsString,
                    inttostr(1*ADO_ILACSARF.FieldByName('UNITE').AsInteger));
    except
    end
  else
     pnlToolBar.Caption := '';
end;

procedure TfrmIlacSarf.btnSendClick(Sender: TObject);
var
   i,j ,x: integer;
   s , txt , _tani_ ,sql , keys , peryot,peryotAdet ,doz1,doz2: string;
   Teshis : TStringList;
   Tani : TStringList;
   ack : TStringList;
   ado : TADOQuery;
   unite : real;
begin
  try
    if Tag = TagfrmIlacSarf
    Then Begin
       try
         frmHastaRecete.ADO_RECETE_DETAY.Active := false;
         frmHastaRecete.ADO_RECETE_DETAY.Active := True;

         Eklenenler.First;
         for i := 1 to Eklenenler.RecordCount do
         begin
           if Eklenenler.fieldbyname('doz').AsString <> ''
           Then Begin
             if frmHastaRecete.ADO_RECETE_DETAY.Locate('ilacKodu;receteId',VarArrayOf([Eklenenler.fieldbyname('ETKENMADDE').AsString,
                                                                                      frmHastaRecete.ADO_Recete.fieldbyname('id').AsString]),[]) = True
             Then begin
               ShowMessageSkin(Eklenenler.fieldbyname('ETKENMADDE').AsString + ' ilaç reçeteye eklenmiþ','','','info');
               exit;
             End;

              frmHastaRecete.ADO_RECETE_DETAY.Append;
              frmHastaRecete.ADO_RECETE_DETAY.FieldByName('ilacKodu').AsString := Eklenenler.fieldbyname('ETKENMADDE').AsString;
              frmHastaRecete.ADO_RECETE_DETAY.FieldByName('ilacAdi').AsString := Eklenenler.fieldbyname('Formu').AsString;

              frmHastaRecete.ADO_RECETE_DETAY.FieldByName('adet').AsString := Eklenenler.fieldbyname('adet').AsString;
              frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanimYolu').AsString :=
              ifThen(Eklenenler.fieldbyname('Kyolu').AsString = '' ,'1',Eklenenler.fieldbyname('Kyolu').AsString);
              frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsString := '1';

              doz1 := copy(Eklenenler.fieldbyname('doz').AsString,1,pos('x',Eklenenler.fieldbyname('doz').AsString)-1);
              doz2 := copy(Eklenenler.fieldbyname('doz').AsString,pos('x',Eklenenler.fieldbyname('doz').AsString)+1,5);

              frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsString := doz1;

              try
                unite := 1 * strtofloat(doz2);//IlacKoduToUnite(Eklenenler.fieldbyname('ETKENMADDE').AsString,_dosyaNo_,_gelisNo_,peryot,peryotAdet)

                frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanZamanUnit').AsString := '3';
                frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsString := '1';

              except
              end;

              frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsString := floattostr(unite);
              //Eklenenler.fieldbyname('doz').AsString[3];

              frmHastaRecete.ADO_RECETE_DETAY.Post;

              ado := TADOQuery.Create(nil);x

              sql := 'update ilacListesi set sikKullan = 1 where barkod = ' + QuotedStr(Eklenenler.fieldbyname('ETKENMADDE').AsString);
              datalar.QueryExec(ado,sql);

              sql := 'IF EXISTS (SELECT * FROM ilacListesi WHERE barkod = ' + QuotedStr(Eklenenler.fieldbyname('ETKENMADDE').AsString) + ')' +
                      ' BEGIN ' +
                      '  UPDATE ilacListesi ' +
                      '  SET kulYol = ' + QuotedStr(Eklenenler.fieldbyname('Kyolu').AsString) + ',' +
                      '  ICD = ' + QuotedStr(Eklenenler.fieldbyname('tani').AsString) +
                      '  where barkod = ' + QuotedStr(Eklenenler.fieldbyname('ETKENMADDE').AsString) +
                      ' END';
              datalar.QueryExec(ado,sql);

              (*
              ack := IlacReceteAciklama(_dosyaNo_,_gelisNo_,Eklenenler.fieldbyname('ETKENMADDE').AsString,
                                          inttostr(frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsInteger *
                                                   frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsInteger)
                                          );
                *)

               sql := 'delete from ReceteIlacAciklama where receteDetayId = ' + frmHastaRecete.ADO_RECETE_DETAY.fieldbyname('id').AsString;
               datalar.QueryExec(ado,sql);
               ado.Free;
               frmHastaRecete.ADO_ReceteIlacAciklama.Active := false;
               frmHastaRecete.ADO_ReceteIlacAciklama.Active := true;

            (*
              for j := 0 to ack.Count-1 do
              begin
                  frmHastaRecete.ADO_ReceteIlacAciklama.Append;
                  frmHastaRecete.ADO_ReceteIlacAciklama.FieldByName('aciklama').AsString := copy(ack[j],3,500);
                  frmHastaRecete.ADO_ReceteIlacAciklama.FieldByName('aciklamaTip').AsString := trim(copy(ack[j],1,2));
                  frmHastaRecete.ADO_ReceteIlacAciklama.Post;
                  if copy(frmHastaRecete.ADO_ReceteIlacAciklama.FieldByName('aciklama').AsString,1,4) = 'Hata'
                  Then ShowMessageSkin('Dikkat , Doz Bilgisini Kontrol Ediniz','','','info');
              end;
               *)

              frmHastaRecete.ADO_receteTani.Active := false;
              frmHastaRecete.ADO_receteTani.Active := True;

              _tani_ := IlacReceteTaniEkle(dosyaNo,gelisNo,Eklenenler.fieldbyname('ETKENMADDE').AsString);
              x := pos(';',_tani_)-1;
              keys := copy(_tani_,1,x);
              if copy(_tani_,1,x) <> ''
              Then Begin
               if frmHastaRecete.ADO_receteTani.Locate('taniKodu;receteId',VarArrayOf([keys,frmHastaRecete.ADO_Recete.fieldbyname('id').AsString]) ,[]) = False
               Then Begin
                 frmHastaRecete.ADO_receteTani.Append;
                 frmHastaRecete.ADO_receteTani.fieldbyname('taniKodu').AsString := copy(_tani_,1,pos(';',_tani_)-1);
                 frmHastaRecete.ADO_receteTani.fieldbyname('tani').AsString := copy(_tani_,pos(';',_tani_)+1,100);
                 frmHastaRecete.ADO_receteTani.Post;
               End;
              End;
              if Eklenenler.fieldbyname('Tani').AsString <> ''
              Then Begin
              keys := Eklenenler.fieldbyname('Tani').AsString;
               if frmHastaRecete.ADO_receteTani.Locate('taniKodu;receteId',VarArrayOf([keys,frmHastaRecete.ADO_Recete.fieldbyname('id').AsString]) ,[]) = False
               Then Begin
                 frmHastaRecete.ADO_receteTani.Append;
                 frmHastaRecete.ADO_receteTani.fieldbyname('taniKodu').AsString := keys;
                 frmHastaRecete.ADO_receteTani.fieldbyname('tani').AsString := TaniKodToTaniAd(keys);
                 frmHastaRecete.ADO_receteTani.Post;
               End;
              End;
              Eklenenler.Next;
           End // if end
           Else
           Begin
              ShowMessageSkin(Eklenenler.fieldbyname('Formu').AsString + ' için doz girilmemiþ','','','info');
              exit;
           End;
         end; // for end
         s := copy(s,1,Length(s)-1);
      except on e : Exception do
       begin
           ShowMessageSkin(e.Message,'','','info');
       end;
      end;
    End;
     close;
  except
  end;
end;

procedure TfrmIlacSarf.DBGridEh1DblClick(Sender: TObject);
var
   key : word;
begin
     (*
     key := vk_return;
     DBGridEh1.OnKeyDown(DBGridEh1,key,[]);
       *)

end;

procedure TfrmIlacSarf.FormCreate(Sender: TObject);
begin
  inherited;
  Tag := TagfrmIlacSarf;

  cxPanel.Visible := false;
  cxTab.Width := 200;
  SayfaCaption('','','','','');
  Olustur(self,_TableName_,'Ýlaç Listesi',97);
end;

procedure TfrmIlacSarf.btnVazgecClick(Sender: TObject);
begin
     datalar.ADO_ILACSARF.Close;
     close;
end;

procedure TfrmIlacSarf.chkDozClick(Sender: TObject);
begin
  if chkDoz.Checked
  Then pnlToolBar.Visible := True
  Else pnlToolBar.Visible := False;

end;

procedure TfrmIlacSarf.chkSIKClick(Sender: TObject);
var
  c : boolean;
begin
  c := chkDoz.Checked;
  chkDoz.Checked := False;

  if chkSIK.Checked
  Then
    frmIlacSarf.Tanilar('Recete','ILACLARMM')
  Else
    frmIlacSarf.Tanilar('Recete','ILACLARM');
  chkDoz.Checked := c;


end;

procedure TfrmIlacSarf.txtaramaChange(Sender: TObject);
begin
//     Tanilar(txtarama.Text,'');
end;

procedure TfrmIlacSarf.txtGruplarClick(Sender: TObject);
begin
  //   Tanilar(txtarama.Text,'');
end;

procedure TfrmIlacSarf.gridIlacSarfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 s : string;
 _key_ : char;
begin
    if key = vk_return
    then begin

              Eklenenler.Append;
              Eklenenler.FieldByName('ETKENMADDE').AsString := ADO_ILACSARF.fieldbyname('code').AsString;
              Eklenenler.FieldByName('formu').AsString := ADO_ILACSARF.fieldbyname('NAME1').AsString;
              Eklenenler.FieldByName('KYolu').AsString := ADO_ILACSARF.fieldbyname('kulYol').AsString;
              Eklenenler.FieldByName('tani').AsString := ADO_ILACSARF.fieldbyname('ICD').AsString;
              Eklenenler.FieldByName('doz').AsString := ADO_ILACSARF.fieldbyname('doz').AsString;
              Eklenenler.FieldByName('adet').AsString := ADO_ILACSARF.fieldbyname('adet').AsString;
           //   Eklenenler.FieldByName('tani').AsString := ADO_ILACSARF.fieldbyname('taniKodu').AsString;

              Eklenenler.Post;
              _key_ := #27;
              txtarama.Text := '';
              s := '';

              KeyPressGridf(gridIlacSarf,_key_,s,1,True);
    end;

end;

procedure TfrmIlacSarf.gridIlacSarfDblClick(Sender: TObject);
var
   key : word;
begin
     key := vk_return;
     gridIlacSarf.OnKeyDown(gridIlacSarf,key,[]);
end;

procedure TfrmIlacSarf.gridIlacSarfKeyPress(Sender: TObject;
  var Key: Char);
 var
   s:  string;  
begin
   KeyPressGridf(gridIlacSarf,key,s,1,True);
   txtarama.Text := s;
end;

procedure TfrmIlacSarf.gridIlacSarfStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
   if (ARecord.Values[2] = 'K')
   Then AStyle := K;

   if (ARecord.Values[2] = 'Y')
   Then AStyle := Y;

   if (ARecord.Values[2] = 'T')
   Then AStyle := T;

end;

end.
