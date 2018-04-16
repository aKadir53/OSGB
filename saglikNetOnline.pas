unit saglikNetOnline;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,data_modul, DB, ADODB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxContainer,
  Menus, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,ShellAPI,
  cxCalendar, cxGroupBox, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxSkinsForm, cxPC,kadir,cxMemo, cxRadioGroup, cxCheckBox, acPNG,
  cxImage, cxLabel, cxHyperLinkEdit, cxRichEdit, cxDBRichEdit, AdvMemo, Advmxml,
  DBAdvMemo, xmldom, XMLIntf, msxmldom, XMLDoc, cxImageComboBox, ExtCtrls,
  cxDBEdit, OleCtrls, SHDocVw,SYSWS, Soap.InvokeRegistry, Soap.Rio,
  Soap.SOAPHTTPClient,GirisUnit,KadirType,GetFormClass,kadirLabel;

type
  TfrmSaglikNetOnline = class(TGirisForm)
    ado_List: TADOQuery;
    DataSource1: TDataSource;
    cxPageControl1: TcxPageControl;
    page_list: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    gridListe: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGroupBox1: TcxGroupBox;
    ilkTarih: TcxDateEdit;
    sonTarih: TcxDateEdit;
    btnList: TcxButton;
    btnSend: TcxButton;
    txtLog: TcxMemo;
    btnMuayeneKayit: TcxButton;
    btnCikis: TcxButton;
    chkHastaKayit: TcxCheckBox;
    pnlSendDurum: TcxGroupBox;
    cxImage1: TcxImage;
    pnlDurumCaption: TcxLabel;
    btnVazgec: TcxButton;
    gridListeTCKIMLIKNO: TcxGridDBColumn;
    gridListeHASTAADI: TcxGridDBColumn;
    gridListeHASTASOYADI: TcxGridDBColumn;
    gridListeSYSTakipNo: TcxGridDBColumn;
    gridListeCOLUMN1: TcxGridDBColumn;
    cxTabSheet1: TcxTabSheet;
    msjTip: TcxRadioGroup;
    gridListeColumn2: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    S1: TMenuItem;
    gridListeColumn3: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    gridListeColumn4: TcxGridDBColumn;
    gridListeColumn5: TcxGridDBColumn;
    Panel1: TPanel;
    cxButton6: TcxButton;
    txtMesaj: TcxDBMemo;
    XMLDocument1: TXMLDocument;
    WebBrowser1: TWebBrowser;
    gridListeColumn6: TcxGridDBColumn;
    gridListeColumn7: TcxGridDBColumn;
    HTTPRIO1: THTTPRIO;
    G1: TMenuItem;
    H1: TMenuItem;
    T1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure btnMuayeneKayitClick(Sender: TObject);
    procedure btnCikisClick(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
    function SYSOnlineCvpDBDurumYaz(SiraNo,SysTakipNo,MesajTipi,SONUCKODU,SONUCMESAJ,user : string) : integer;
    procedure MesajGonder(mesaj , islemTipi , HastaneRefNo: string);
    procedure gridListeStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure cxButton6Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure msjTipClick(Sender: TObject);
    procedure HTTPRIO1BeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure HTTPRIO1AfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxListeleClick(Sender : TObject);
    procedure VeriSil;
    procedure VeriGonder;
    procedure Listele;
    procedure TopPanelButonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmSaglikNetOnline: TfrmSaglikNetOnline;
  stop : integer;
  mesajTipi,msg : string;

implementation
    uses anaUnit;
{$R *.dfm}

function TfrmSaglikNetOnline.Init(Sender: TObject) : Boolean;
begin
 Result := True;
end;

procedure TfrmSaglikNetOnline.cxListeleClick(Sender : TObject);
begin
 inherited;
 if datalar.ZorunluAlanVar = true then exit;

 case TControl(sender).Tag of

       ClckListele   : begin
                         Listele;
                       end;
 end;

end;


procedure TfrmSaglikNetOnline.cxKaydetClick(Sender: TObject);
var
  Form : TGirisForm;
  r : integer;
  dosyaNo,ad,soyad : string;
  GirisFormRecord : TGirisFormRecord;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  r := gridListe.DataController.DataControllerInfo.FocusedRecordIndex;
  dosyaNo := ado_List.FieldByName('dosyaNo').AsString; //TCtoDosyaNo(gridListe.DataController.Values[r, 0]);
  GirisFormRecord.F_dosyaNo_ := dosyaNo;
  GirisFormRecord.F_gelisNo_ := ado_List.FieldByName('gelisNo').AsString;
  GirisFormRecord.F_TC_ := ado_List.FieldByName('TCKIMLIKNO').AsString;

  GirisFormRecord.F_HastaAdSoyad_ :=
     ado_List.FieldByName('HASTAADI').AsString + ' ' +
     ado_List.FieldByName('HASTASOYADI').AsString;;

    case TControl(sender).Tag of
    -1 : begin
           VeriSil;
         end;
    -2 : begin
           VeriGonder;
         end;
    -3 : begin
             if FindTab(AnaForm.sayfalar,'TabfrmHastaKart')
             Then begin
               Form := TGirisForm(FormClassType(TagfrmHastaKart));
               TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := dosyaNo;
               TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
             end
             Else begin
              Form := FormINIT(TagfrmHastaKart,self,dosyaNo,NewTab(AnaForm.sayfalar,'TabfrmHastaKart'),ikEvet,'Giriþ');
              if Form <> nil then Form.show;
           end;
         end;

     -4 : begin
              Form := FormINIT(TagfrmHastaDiyalizIzlem,GirisFormRecord,ikHayir);
              if Form <> nil then Form.ShowModal;
           end;
    end;

end;

procedure TfrmSaglikNetOnline.Listele;
var
 sql , _systakipNovar_ : string;
begin
  DurumGoster;

  if chkHastaKayit.Checked = True
  then _systakipNovar_ := '1'
  else _systakipNovar_ := '100';


  case (ENabizmesajTipi.ItemIndex) of
   0 : mesajTipi := 'Hasta Kayýt';
   1 : mesajTipi := 'Diyaliz Bildirim';
   2 : mesajTipi := 'Diyaliz Ýzlem';
  end;


  sql := 'EXEC ' + ENabizmesajTipi.EditingValue + ' '  + QuotedStr(tarihal(txtTopPanelTarih1.Date)) + ',' +
                                                QuotedStr(tarihal(txtTopPanelTarih2.Date)) + ',' +
                                                systakipNovar.EditValue + ',0';

  datalar.QuerySelect(ado_List,sql);
  DurumGoster(false);

end;

procedure TfrmSaglikNetOnline.veriGonder;
var
  sonuc,sql : string;
  SS : TStringList;
  ado : TADOQuery;
  c : char;
  i : integer;
  takip ,HastaneRefNo : string;
  _row_ : integer;
  sysTakipNo,ad,soyad,id : string;
begin
   txtLog.Lines.Clear;
   pnlDurum.Visible := true;
   Application.ProcessMessages;
   stop := 0;
   try
     for _row_ := 0 to gridListe.Controller.SelectedRowCount - 1 do
     begin
       if stop = 1 then Break;
       HastaneRefNo := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,0);
       sysTakipNo := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,4);
       ad := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,2);
       soyad := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,3);
       msg := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,5);
       pnlDurumCaption.Caption := '';
       pnlDurumCaption.Caption := ad + ' ' + soyad;
       Application.ProcessMessages;

       if (mesajTipi = 'Hasta Kayýt') and (sysTakipNo = '')
       then begin
         MesajGonder(msg,mesajTipi,HastaneRefNo);
         Application.ProcessMessages;
       end;

       if (mesajTipi <> 'Hasta Kayýt') and (sysTakipNo <> '')
       then begin
         MesajGonder(msg,mesajTipi,HastaneRefNo);
         Application.ProcessMessages;
       end;


     end;
   except on e : Exception do
    begin
      ShowMessageSkin(e.Message,'','','info');
    end;
   end;

   pnlDurum.Visible := false;

end;


procedure TfrmSaglikNetOnline.veriSil;
var
  msg,sonuc,sql : string;
  SS : TStringList;
  ado : TADOQuery;
  c : char;
  i , _row_ : integer;
  takip ,HastaneRefNo , sysTakipNo ,ad,soyad: string;

begin

   pnlDurum.Visible := true;
   cxGrid1.Enabled := false;
   stop := 0;
   try
     for _row_ := 0 to gridListe.Controller.SelectedRowCount - 1 do
     begin
       if stop = 1 then Break;
       HastaneRefNo := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,0);
       sysTakipNo := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,4);
       ad := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,2);
       soyad := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,3);
       msg := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,8);
       pnlDurumCaption.Caption := ad + ' ' + soyad;

       MesajGonder(msg,'Hasta Kayýt Silme',HastaneRefNo);
       Application.ProcessMessages;


     end;
   except
   end;

   pnlDurum.Visible := false;
   cxGrid1.Enabled := true;

end;



procedure TfrmSaglikNetOnline.MesajGonder(mesaj , islemTipi , HastaneRefNo: string);
var
//  sys : _HastaKayit;
  sysM : _MuayeneKayit;
  sysS : _SYSSaglikNetGonderimIslemleri;
  msg,sonuc,sql : string;
  SS : TStringList;
  ado : TADOQuery;
  c : char;
  i : integer;
  takip : string;

  procedure sonucYaz;
  begin
   if Length(sonuc) > 0
   then begin
     SS := TStringList.Create;
     ExtractStrings(['|'], [], PChar(sonuc), SS);

     if pos('Hasta Kayýt',islemTipi) > 0
     Then Begin
         if SS[0] = 'S0000'
         then begin
            if pos('Sil',islemTipi) > 0 then
            takip := '' else takip := SS[2];

            ado := TADOQuery.Create(nil);
            ado.Connection := datalar.ADOConnection2;
            sql := 'update gelisler set SYSTakipNo = ' + QuotedStr(takip) +
                   ' where SIRANO = ' + HastaneRefNo;
            datalar.QueryExec(ado,sql);
            txtLog.Lines.Add(SS[1] + ' - ' + SS[2]);
            ado.Free;
            SYSOnlineCvpDBDurumYaz(HastaneRefNo,SS[2],islemTipi,SS[0],SS[1],datalar.username);
         end
         else
         begin
           txtLog.Lines.Add(SS[1]);
           SYSOnlineCvpDBDurumYaz(HastaneRefNo,'',islemTipi,SS[0],SS[1],datalar.username);
           if SS[0] = 'E2033'
           then begin
            takip := copy(SS[1],pos('=',SS[1])+1,50);
            ado := TADOQuery.Create(nil);
            ado.Connection := datalar.ADOConnection2;
            sql := 'update gelisler set SYSTakipNo = ' + QuotedStr(takip) +
                   ' where SIRANO = ' + HastaneRefNo;
            datalar.QueryExec(ado,sql);
            ado.Free;
           end;
         end;
     End
     else
     begin
        if SS[0] = 'S0000'
        then begin
           txtLog.Lines.Add(SS[0] + ' - ' + SS[1]);
           SYSOnlineCvpDBDurumYaz(HastaneRefNo,SS[2],islemTipi,SS[0],SS[1],datalar.username);
        end
        else begin
           txtLog.Lines.Add(SS[0] + ' - ' + SS[1]);
           SYSOnlineCvpDBDurumYaz(HastaneRefNo,'',islemTipi,SS[0],SS[1],datalar.username);
        end;

     end;

     SS.Free;
   end;
  end;

begin

   //txtLog.Lines.Clear;
  try
  // sys := CoHastaKayit.Create;
  // sysS := CoSYSSaglikNetGonderimIslemleri.Create;
   sonuc := '';
  // sonuc := sysS.SendMesaj(mesaj,islemTipi);

   HTTPRIO1.URL := 'https://sys.sagliknet.saglik.gov.tr/SYS/SYSWS.svc';
   sonuc := (HTTPRIO1 as ISYSWS).SYSSendMessage('');


   sonucYaz;
  except on e : Exception do
   begin
    ShowMessageSkin(e.Message,'','','info');
   end;
  end;
end;



procedure TfrmSaglikNetOnline.msjTipClick(Sender: TObject);
begin
  cxButton1.Click;
end;

function TfrmSaglikNetOnline.SYSOnlineCvpDBDurumYaz(SiraNo,SysTakipNo,MesajTipi,SONUCKODU,SONUCMESAJ,user : string) : integer;
var
  ado : TADOQuery;
  sql : string;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  try
    sql := 'insert into SaglikNetGonderimSonuc (siraNo,SYSTakipNo,MESAJTIPI,SONUCKODU,SONUCMESAJ,USER_ID,DATE_CREATE) ' +
           ' values(' + SiraNo + ',' +
                        QuotedStr(SysTakipNo) + ',' +
                        QuotedStr(MesajTipi) + ',' +
                        QuotedStr(SONUCKODU) + ',' +
                        QuotedStr(SONUCMESAJ) + ',' +
                        QuotedStr(user) + ',' +
                        QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm',now())) + ')';

    datalar.QueryExec(ado,sql);
    SYSOnlineCvpDBDurumYaz := 0;
  except
    SYSOnlineCvpDBDurumYaz := 1;
  end;

  ado.Free;

end;


procedure TfrmSaglikNetOnline.btnMuayeneKayitClick(Sender: TObject);
var
  sysM : _MuayeneKayit;
  sysC : _CikisKayit;
  sysS : _SYSSaglikNetGonderimIslemleri;
  msg,sonuc,sql : string;
  SS : TStringList;
  ado : TADOQuery;
  c : char;
  i ,_row_: integer;
  sysTakipNo ,ad,soyad: string;

  procedure sonucYaz;
  begin
   if Length(sonuc) > 0
   then begin
     SS := TStringList.Create;
     ExtractStrings(['|'], [], PChar(sonuc), SS);

     if SS[0] = 'S0000'
     then begin
        txtLog.Lines.Add('OK   ' + ad + ' ' + soyad + ' - ' + SS[1] + ' - ' + SS[2]);
     end
     else
        txtLog.Lines.Add('HATA ' + ad + ' ' + soyad + ' - ' + SS[1] + ' - ' +sysTakipNo);
      // SYSOnlineCvpDBDurumYaz(sysTakipNo,'Muayene Kayýt',SS[0],SS[1],datalar.username);
     SS.Free;
   end;
  end;
begin

   txtLog.Lines.Clear;

   sysM := CoMuayeneKayit.Create;
   sysC := CoCikisKayit.Create;
   sysS := CoSYSSaglikNetGonderimIslemleri.Create;

   pnlDurum.Visible := True;
   stop := 0;
   for _row_ := 0 to gridListe.Controller.SelectedRowCount - 1 do
   begin
     try
       if stop = 1 then Break;
       sysTakipNo := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,26);
       ad := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,7);
       soyad := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,8);

       pnlDurumCaption.Caption := ad + ' ' + soyad;
       if length(sysTakipNo) > 0
       then begin
         msg := sysM.PaketverisiniDoldur(sysTakipNo);
         sonuc := sysS.SendMesaj(msg,'Muayene Kayýt');
         sonucYaz;
       end;
     except on e : exception do
      begin
        sonuc := ' |'+e.Message;
        sonucYaz;
      end;
     end;
     Application.ProcessMessages;
   end;

   pnlDurum.Visible := False;

(*
   if ado_List.FieldByName('CIKIS_ZAMANI').AsString <> ''
   Then begin
     sysC.KURUM_ADI := ado_List.FieldByName('HIZMET_SUNUCU_ADI').AsString;
     sysC.KURUM_KODU := ado_List.FieldByName('HIZMET_SUNUCU').AsString;
     sysC.CIKIS_SEKLI := ado_List.FieldByName('CIKIS_SEKLI').AsString;
     sysC.CIKIS_SEKLI_ADI := ado_List.FieldByName('CIKIS_SEKLI_ADI').AsString;
     sysC.CIKIS_ZAMANI := FormatDateTime('yyyyMMddHHmm', ado_List.FieldByName('CIKIS_ZAMANI').AsDateTime);



     msg := sysC.PaketOlustur(sysTakipNo);

     sonuc := sysS.SendMesaj(msg,'Çýkýþ Kayýt');

     if Length(sonuc) > 0
     then begin
       SS := TStringList.Create;
       ExtractStrings(['|'], [], PChar(sonuc), SS);

       if SS[0] = 'S0000'
       then begin
          txtLog.Lines.Add(SS[1] + ' - ' + SS[2]);
       end
       else
         txtLog.Lines.Add(SS[1]);
         SYSOnlineCvpDBDurumYaz(sysTakipNo,'Çýkýþ Kayýt',SS[0],SS[1],datalar.username);
       SS.Free;
     end;

   end;
  *)


end;

procedure TfrmSaglikNetOnline.btnCikisClick(Sender: TObject);
var
  sysC : _CikisKayit;
  sysS : _SYSSaglikNetGonderimIslemleri;
  msg,sonuc,sql : string;
  SS : TStringList;
  ado : TADOQuery;
  c : char;
  i : integer;
  sysTakipNo : string;

  procedure veriDoldur;
  begin
     sysC.KURUM_ADI := ado_List.FieldByName('HIZMET_SUNUCU_ADI').AsString;
     sysC.KURUM_KODU := ado_List.FieldByName('HIZMET_SUNUCU').AsString;
     sysC.CIKIS_SEKLI := ado_List.FieldByName('CIKIS_SEKLI').AsString;
     sysC.CIKIS_SEKLI_ADI := ado_List.FieldByName('CIKIS_SEKLI_ADI').AsString;
     sysC.CIKIS_ZAMANI := FormatDateTime('yyyyMMddHHmm', ado_List.FieldByName('CIKIS_ZAMANI').AsDateTime);
     sysTakipNo := ado_List.FieldByName('SYSTakipNo').AsString;
  end;
  procedure sonucYaz;
  begin
     if Length(sonuc) > 0
     then begin
       SS := TStringList.Create;
       ExtractStrings(['|'], [], PChar(sonuc), SS);

       if SS[0] = 'S0000'
       then begin
          txtLog.Lines.Add(SS[1] + ' - ' + SS[2]);
       end
       else
         txtLog.Lines.Add(SS[1]);
       //  SYSOnlineCvpDBDurumYaz(sysTakipNo,'Çýkýþ Kayýt',SS[0],SS[1],datalar.username);
       SS.Free;
     end;
  end;

begin
   sysS := CoSYSSaglikNetGonderimIslemleri.Create;
   sysC := CoCikisKayit.Create;

   pnlDurum.Visible := true;
   cxGrid1.Enabled := false;
   stop := 0;
   try
     while not ado_List.Eof do
     begin
       if stop = 1 then Break;
       if (ado_List.FieldByName('CIKIS_ZAMANI').AsString <> '') and (length(ado_List.FieldByName('SYSTakipNo').AsString) > 0)
       then begin
          veriDoldur;
          pnlDurumCaption.Caption := ado_List.FieldByName('AD').AsString + ' ' + ado_List.FieldByName('SOYAD').AsString;
          msg := '';
          sonuc := '';
          msg := sysC.PaketOlustur(sysTakipNo);
          sonuc := sysS.SendMesaj(msg,'Çýkýþ Kayýt');
          sonucYaz;
          Application.ProcessMessages;
       end;
       ado_List.Next;
     end;
   except
   end;

   pnlDurum.Visible := false;
   cxGrid1.Enabled := true;



end;

procedure TfrmSaglikNetOnline.btnVazgecClick(Sender: TObject);
begin
  stop := 1;
end;

procedure TfrmSaglikNetOnline.cxButton6Click(Sender: TObject);
begin


     XMLDocument1.XML.Add(txtMesaj.Text);
     XMLDocument1.Active := true;
     XMLDocument1.SaveToFile('c:\NoktaV3\sysOnlineMesaj.xml');

     ShellExecute(Handle,'open', PChar('iexplore.exe'),
                  PChar ('c:\NoktaV3\sysOnlineMesaj.xml'), nil, SW_SHOWNORMAL);

end;

procedure TfrmSaglikNetOnline.cxPageControl1Change(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex =  1
  then begin
     XMLDocument1.XML.Clear;
     XMLDocument1.XML.Add(txtMesaj.Text);
     XMLDocument1.Active := true;
     XMLDocument1.SaveToFile('c:\NoktaV3\sysOnlineMesaj.xml');

     WebBrowser1.Navigate('c:\NoktaV3\sysOnlineMesaj.xml');

  end;

end;

procedure TfrmSaglikNetOnline.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;

end;

procedure TfrmSaglikNetOnline.TopPanelButonClick(Sender: TObject);
begin
    case TcxButtonKadir(sender).Tag of
     ClckListele : begin
                     Listele;
                   end;
    end;

end;

procedure TfrmSaglikNetOnline.FormCreate(Sender: TObject);
begin
  inherited;
   ilkTarih.Date := date;
   sonTarih.Date := date;
   btnList.Tag := ClckListele;
   top := 1;
   left := 1;
   cxPanel.Visible := false;
   dxStatusBar1.Visible := false;
   cxTab.Tabs[0].Caption := 'Saðlýk Net Online';
   Menu:= PopupMenu1;

   TopPanel.Visible := True;
   TapPanelElemanVisible(True,True,True,True,False,False,False,True);
   btnListTopPanel.OnClick := TopPanelButonClick;
  // addButtonTopPanel(self,'btnSendTopPanel','Listele',50,-2,TopPanelButonClick);


//  pnlToolBar.Parent := cxTabSheet1; //cxTopPanelAltOrta;



end;

procedure TfrmSaglikNetOnline.gridListeStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
    if ARecord.Values[6] = 'T'
    Then
      AStyle := cxStyle1;
end;

procedure TfrmSaglikNetOnline.HTTPRIO1AfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
  Response: UTF8String;
  StrList1: TStringList;
begin
   StrList1 := TStringList.Create;
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   StrList1.add(R);
   StrList1.SaveToFile('sysOnlineKayitCvp.XML');
   StrList1.Free;
end;
procedure TfrmSaglikNetOnline.HTTPRIO1BeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
  Response: UTF8String;
  StrList1: TStringList;
   Header ,Footer : Widestring;
begin
   StrList1 := TStringList.Create;
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));

   R := msg;
   Header := '<soap:Envelope '+
    'xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" '+
    'xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" '+
    'xmlns:xsd="http://www.w3.org/2001/XMLSchema" '+
    'xmlns:xs="http://www.w3.org/2001/XMLSchema" '+
    'xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing" '+
    'xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" '+
    'xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">'+
    '<soap:Header>'+
        '<wsse:Security>'+
            '<wsse:UsernameToken wsu:Id="SecurityToken-04ce24bd-9c7c-4ca9-9764-92c53b0662c5">'+
                '<wsse:Username>534327</wsse:Username>'+
                '<wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">dd123456</wsse:Password>'+
            '</wsse:UsernameToken>'+
        '</wsse:Security>'+
    '</soap:Header>' +
        '<soap:Body>'+
        '<SYSSendMessage>'+
            '<input>';

   Footer :=   '</input>'+
            '</SYSSendMessage>'+
          '</soap:Body>';
  //  '</soap:Envelope>';

   StrList1.add(Header + msg + Footer);

   (*
   StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Body>','<soap:Body>',[RfReplaceAll]);
   StrList1.text := StringReplace(StrList1.text,'</SOAP-ENV:Body>','</soap:Body>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',Header,[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</SOAP-ENV:Envelope>','</soap:Envelope>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<SYSSendMessage xmlns="https://sys.sagliknet.saglik.gov.tr/SYS/">','<SYSSendMessage>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'&gt;','>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'&lt;','<',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</SOAP-ENV:Body>','</soap:Body>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</SOAP-ENV:Envelope>','</soap:Envelope>',[RfReplaceAll]);
  *)
  StrList1.text := UTF8Encode(StrList1.text);

   SOAPRequest.Position := 0;
   StrList1.SaveToStream(SOAPRequest);

   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));

   StrList1.SaveToFile('sysOnlineKayit.XML');
   StrList1.Free;
end;
end.
