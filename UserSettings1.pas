unit UserSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, ExtCtrls, StdCtrls, Buttons, ADODB, DB,
  StrUtils, Mask,   Kadir,KadirLabel,
   AdvObj, ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxRadioGroup,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxPCdxBarPopupMenu,
  cxPC, GirisUnit;

type
  TfrmUserSettings = class(TGirisForm)
    Q_Pw: TADOQuery;
    ADO_menu: TADOQuery;
    DataSource1: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridMenuSet: TcxGridDBTableView;
    cxGridMenuSetCOLUMN1: TcxGridDBColumn;
    cxGridMenuSetMainMenu: TcxGridDBColumn;
    cxGridMenuSetKAYITID: TcxGridDBColumn;
    cxGridMenuSetCOLUMN2: TcxGridDBColumn;
    cxGridMenuSetColumn3: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    DataSource2: TDataSource;
    cxGrid2: TcxGrid;
    cxGridUserSet: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridUserSetModul: TcxGridDBColumn;
    cxGridUserSetIslem: TcxGridDBColumn;
    cxGridUserSetIzin: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure gridCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure gridGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure gridGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure btnYeniClick(Sender: TObject);
    procedure btnDegistirClick(Sender: TObject);
    procedure btnSilClick(Sender: TObject);
    procedure btnIptalClick(Sender: TObject);
    procedure btnSifreDegistirClick(Sender: TObject);
    procedure btnNotCheckClick(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
    procedure btnAcClick(Sender: TObject);
    procedure btnKapat_Click(Sender: TObject);
    procedure btnHakDegistirClick(Sender: TObject);
    procedure txtFirmalarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnOKFirmaClick(Sender: TObject);
    procedure btnOKGumrukClick(Sender: TObject);
    procedure txtNameExit(Sender: TObject);
    procedure txtNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtNameButtonClick(Sender: TObject);
    procedure txtNameEnter(Sender: TObject);
    procedure txtNameKeyPress(Sender: TObject; var Key: Char);
    procedure gridCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure FormResize(Sender: TObject);
    procedure txtKendi_ReferansiKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnKapatClick(Sender: TObject);
    procedure btnTamamClick(Sender: TObject);
    procedure cxGrid1DBTableView1COLUMN2PropertiesEditValueChanged(
      Sender: TObject);
  private
    { Private declarations }
    procedure Enable;
    procedure Disable;
    procedure ClearFields;
    procedure OpenData;
    procedure WriteData (u: string);
    procedure AddUser;
    procedure UpdateUser;
    procedure UpdateRights;

  public
    { Public declarations }
  end;

var
  frmUserSettings: TfrmUserSettings;

implementation

uses Data_Modul, AnaUnit;

{$R *.dfm}
var
   opr: byte;
   EskiRenk :TColor;

procedure TfrmUserSettings.Enable;
begin
   case opr of
      1: begin
(*            ClearFields;
//            frmData.EnableEditT(txtName, 1);
            frmData.EnableEditT(txtSifre, 1);
            frmData.EnableEditT(txtSifreConfirm, 1);
            frmData.EnableEditT(txtGrup);
            frmData.EnableEditT(txtEMail);
            frmData.EnableEditT(txtAdiSoyadi, 1);
            frmData.EnableEditT(txtGSM_No);
            frmData.EnableEditT(txtSirket_GSM);
            frmData.EnableEditT(txtIs_Tel);
            frmData.EnableEditT(txtDahili_No);
            btnOKFirma.Visible := True;
            btnOKGumruk.Visible := True;
            txtFirma.Visible := True;
            txtGumruk.Visible := True; *)
         end;
      2: begin
(*            frmData.DisableEditT(txtName);
            frmData.EnableEditT(txtGrup);
            frmData.EnableEditT(txtEMail);
            frmData.EnableEditT(txtAdiSoyadi, 1);
            frmData.EnableEditT(txtGSM_No);
            frmData.EnableEditT(txtSirket_GSM);
            frmData.EnableEditT(txtIs_Tel);
            frmData.EnableEditT(txtDahili_No);
            btnOKFirma.Visible := True;
            btnOKGumruk.Visible := True;
            txtFirma.Visible := True;
            txtGumruk.Visible := True; *)
         end;
      3: begin //kullanýcý hak verme
(*            frmData.DisableEditT(txtName);
            btnCheck.Visible := True;
            btnNotCheck.Visible := True;
            txtNameCopy.Visible := True; *)
         end;
      4: begin //þifre deðiþtirme
(*            frmData.DisableEditT(txtName);
            frmData.EnableEditT(txtSifre, 1);
            frmData.EnableEditT(txtSifreConfirm, 1);
            txtSifre.Text := '';
            txtSifreConfirm.Text := ''; *)
         end;

   end; //end of case


end;

procedure TfrmUserSettings.Disable;
begin
(*
  frmData.EnableEditT(txtName, 1);
  frmData.DisableEditT(txtSifre);
  frmData.DisableEditT(txtSifreConfirm);
  frmData.DisableEditT(txtGrup);
  frmData.DisableEditT(txtEMail);
  frmData.DisableEditT(txtAdiSoyadi);
  frmData.DisableEditT(txtGSM_No);
  frmData.DisableEditT(txtSirket_GSM);
  frmData.DisableEditT(txtIs_Tel);
  frmData.DisableEditT(txtDahili_No);
  txtFirma.Visible := False;
  txtGumruk.Visible := False;
  txtNameCopy.Visible := False;
  *)


end;

procedure TfrmUserSettings.ClearFields;
var
   i:integer;
begin



end;

procedure TfrmUserSettings.cxGrid1DBTableView1COLUMN2PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  ADO_menu.Post;
end;

procedure TfrmUserSettings.OpenData;
var
   SQLstr: string;
begin

end;

procedure TfrmUserSettings.WriteData(u:string);
var
   SQLstr: string;
   i: integer;
begin
   ClearFields;
   grid.ExpandAll;

   if u = ''
   Then SQlstr := 'SELECT * FROM Users'
   Else SQlstr := 'SELECT * FROM Users WHERE Kullanici = ''' + u + '''';
   Datalar.QuerySelect(Q_Pw, SQLstr);
   //Q_Pw.First;
   if Q_Pw.Eof Then exit;
   txtName.Text := Q_Pw.FieldByName('Kullanici').asstring;
   txtSifre.Text := '*********************'; //Q_Pw.FieldByName('PWord').asstring;
   txtSifreConfirm.Text := txtSifre.Text;
   txtAdiSoyadi.Text := Q_Pw.FieldByName('ADISOYADI').asstring;

   txtDonem.Text := Q_Pw.FieldByName('Donem').asstring;

   txtZorunlu.Checked := Q_Pw.FieldByName('Default').AsBoolean;
   txtDoktor.Text := Q_Pw.FieldByName('Doktor').AsString;

   SQLstr := 'EXEC dbo.sp_USER_SETTINGS_MUHASEBE @username = ''' + txtName.Text + '''';

   Q_Pw.Close;
   Q_Pw.SQL.Clear;

   Datalar.QuerySelect(Q_Pw, SQLstr);

   for i := 1 to grid.RowCount-1 do
   begin
      if Q_Pw.Eof
      Then begin
         if grid.Cells[2,i] <> ''
         Then Begin
          grid.AddCheckBox(3,i,False,False);
          grid.Cells[4, i] := 'YENÝ';
         End;
      end
      else begin
         if Q_Pw.Locate('Modul;Islem', varArrayOf([grid.Cells[1,i], grid.Cells[2,i]]), [])
         Then begin
             if Q_Pw.FieldByName('Izin').asboolean
             Then grid.AddCheckBox(3,i,True,False)
             Else grid.AddCheckBox(3,i,False,False);
             grid.Cells[4, i] := 'ONAYLI';
         end
         else grid.Cells[4, i] := 'YENÝ';
      end;
   end;



   SQLstr := 'INSERT INTO UserMenuSettings(Kullanici,	Menu,ID,Izin) ' +
             'select ' + QuotedStr(txtName.Text) + ',M.MainMenu,M.KAYITID,0 from  MenuIslem M ' +
             '  left join UserMenuSettings U on U.ID = M.KAYITID AND U.Kullanici = ' + QuotedStr(txtName.Text) +
             ' WHERE U.ID IS null ';
   datalar.QueryExec(ADO_menu,SQLstr);


   SQLstr := ' select ' + QuotedStr(txtName.Text) + ',M.MainMenu,M.KAYITID,0 ,M.Kapsam,Izin from  MenuIslem M ' +
             ' left join UserMenuSettings U on U.ID = M.KAYITID AND U.Kullanici = ' + QuotedStr(txtName.Text) +
             ' ORDER BY M.KAYITID ';
   datalar.QuerySelect(ADO_menu,SQLstr);

end;

procedure TfrmUserSettings.FormCreate(Sender: TObject);
var
   SQLstr, modul: string;
   r, bas, count: integer;
begin
   opr := 0;


end;

procedure TfrmUserSettings.gridCanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
begin
   if opr = 3
   Then if ACol = 3
   Then CanEdit := True;
end;

procedure TfrmUserSettings.gridGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
    if ARow = 0 Then exit;
    if ((ACol = 1) AND (grid.Cells[2,ARow] = '')) OR
       ((Acol = 1) AND (grid.Cells[2,ARow] = 'Giris'))
    Then begin
        AFont.Color := clBlue;
        AFont.Style := [fsBold];
    end
    Else if ACol = 1
         Then AFont.Color := clBlue;
end;

procedure TfrmUserSettings.gridGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
   if aRow = 0
   Then HAlign := taCenter
   Else if ACol = 3
   Then HAlign := taCenter;
end;

procedure TfrmUserSettings.btnYeniClick(Sender: TObject);
begin
   opr := 1;
   Enable;
   ClearFields;
end;

procedure TfrmUserSettings.btnDegistirClick(Sender: TObject);
begin
   opr := 2;
   Enable;
end;

procedure TfrmUserSettings.AddUser;
var
  SQLstr, password, userlvl: string;
  i: integer;
begin
  try
//    if not Datalar.AdoConnection2.InTransaction
 //   Then Datalar.AdoConnection2.BeginTrans;

    {check whether data is already exists or not}
    SQLstr := 'SELECT [Kullanici] FROM Users WHERE Kullanici = ''' + Trim(txtName.Text) + '''';
    if ( Datalar.FindData (Datalar.ADO_SQL2, SQLstr) = 1 ) // already exist
    then
     begin
        ShowMessage ( 'Bu Kullanýcý daha önce kaydedilmiþ!','','', 'info' );
        exit;
     end;

    password := Sifrele(txtSifre.Text);



    SQLstr := 'INSERT INTO Users'+
             '(Kullanici, Password, ADISOYADI , donem , [default],doktor ) ' +
             'VALUES (''' +
             Trim(txtName.Text) + ''', ''' +
             Password + ''', ''' +
             Trim(txtAdiSoyadi.Text) + ''', ''' +
             Trim(txtDonem.Text) + ''', ''' +
             ifThen(txtZorunlu.Checked, '1', '0') + '''' + ','+
             QuotedStr(txtDoktor.Text) +
             ')';

    Datalar.QueryExec (Q_Pw, SQLstr);


//   if Datalar.AdoConnection2.InTransaction
//   Then Datalar.AdoConnection2.CommitTrans;
   OpenData;
   WriteData(txtName.Text);
   Disable;
   opr := 0;
  except on E: Exception do
    begin
  //    if Datalar.AdoConnection2.InTransaction
 //     Then Datalar.AdoConnection2.RollbackTrans;
      ShowMessage('Hata oluþtu: ' + E.Message,'','', 'info');
    end;
  end; //end of try
end;

procedure TfrmUserSettings.UpdateUser;
var
   SQLstr: string;
   password: string;
   userlvl: string;
   i :integer;
begin
  try
   // if not Datalar.AdoConnection2.InTransaction
 //   Then Datalar.AdoConnection2.BeginTrans;

    if opr = 4
    Then password := Sifrele(txtSifre.Text)
    else password := '';
    if password <> ''
    Then password := ' Password = ''' + password + ''' ';

    if opr = 4
    Then begin
     SQLstr := 'UPDATE Users '+
               'SET ' + Password +
               ' WHERE Kullanici = ''' + txtName.Text + ''' ';
     Datalar.QueryExec (Q_Pw, SQLstr);
     Disable;
     exit;
    end;


    SQLstr := 'UPDATE Users '+
             'SET ' +
             'Donem = ''' + Trim(txtDonem.Text) + ''', ' +
             'ADISOYADI = ''' + Trim(txtAdiSoyadi.Text) + ''', ' +
             '[default] = ''' + ifThen(txtZorunlu.Checked, '1', '0') + ''', ' +
             'doktor = ' + QuotedStr(txtDoktor.Text) +
             ' WHERE Kullanici = ''' + txtName.Text + ''' ';

    Datalar.QueryExec (Q_Pw, SQLstr);


//   if Datalar.AdoConnection2.InTransaction
//   Then Datalar.AdoConnection2.CommitTrans;
   Disable;
   opr := 0;
  except on E: Exception do
    begin
 //     if Datalar.AdoConnection2.InTransaction
 //     Then Datalar.AdoConnection2.RollbackTrans;
      ShowMessage('Hata oluþtu: ' + E.Message,'','', 'info');
    end;
  end; //end of try
end;

procedure TfrmUserSettings.UpdateRights;
var
   SQLstr, izin: string;
   i: integer;
   st:boolean;
begin
  grid.ExpandAll;
  try
 //  if not Datalar.AdoConnection2.InTransaction
 //  Then Datalar.AdoConnection2.BeginTrans;

   if txtNameCopy.Text <> ''
   Then begin
          SQLstr := 'DELETE US FROM UserSettings US WHERE Kullanici = ''' + txtName.Text + ''' AND EXISTS (SELECT DISTINCT KAPSAM, MODUL, ISLEM FROM MODULISLEM MI WHERE MI.KAPSAM IN (''' + _Modul + ''', ''ORTAK'') AND US.MODUL = MI.MODUL AND US.ISLEM = MI.ISLEM)';
          Datalar.QueryExec(Q_Pw, SQLstr);

          SQLstr := 'INSERT INTO UserSettings (Kullanici, Modul, Islem, Izin) '
                  + ' SELECT DISTINCT ''' + txtName.Text + ''' AS Kullanici, Modul, Islem, Izin '
                  + ' FROM UserSettings US WHERE Kullanici = ''' + txtNameCopy.Text + ''''
                  + ' AND EXISTS (SELECT * FROM MODULISLEM MI WHERE MI.KAPSAM IN (''' + _Modul + ''', ''ORTAK'') AND US.MODUL = MI.MODUL AND US.ISLEM = MI.ISLEM)';
          Datalar.QueryExec(Q_Pw, SQLstr);
   end
   else begin
         for i := 1 to grid.RowCount-1 do
         begin
            if grid.Cells[4, i] = 'ONAYLI'
            Then Continue;

            if grid.Cells[1, i] = ''
            Then Continue;
            st := False;
            if grid.GetCheckBoxState(3,i, st)
            Then if st
                 Then Izin := '1'
                 Else izin := '0'
            Else Izin := '0';
            if grid.Cells[4, i] = 'ONAYSIZ'
            Then
                SQLstr := 'UPDATE UserSettings SET Izin = ' + izin
                        + ' WHERE (Kullanici = ''' + txtName.Text
                        + ''') AND Modul = ''' + grid.Cells[1,i]
                        + ''' AND Islem = ''' + grid.Cells[2,i] + ''''
            else
                SQLstr := 'INSERT INTO UserSettings (Kullanici, Modul, Islem, Izin) VALUES (''' +
                          txtName.Text + ''', ''' +
                          grid.Cells[1,i] + ''', ''' +
                          grid.Cells[2,i] + ''', ''' +
                          izin + ''')';
            Datalar.QueryExec(Q_Pw, SQLstr);
         end;
   end;

 //  if Datalar.AdoConnection2.InTransaction
 //  Then Datalar.AdoConnection2.CommitTrans;
   Disable;
   opr := 0;
  except on E: Exception do
    begin
 //     if Datalar.AdoConnection2.InTransaction
 //     Then Datalar.AdoConnection2.RollbackTrans;
      ShowMessage('Hata oluþtu: ' + E.Message,'','', 'info');
    end;
  end;
end;

procedure TfrmUserSettings.btnSilClick(Sender: TObject);
var
   SQLstr: string;
begin
   ShowMessage('Bu Kýsým geçici olarak kullanýma kapatýlmýþtýr.','','', 'info');
   exit;
   if txtName.Text = '' Then exit;

   if mrYes = ShowMessage('Bu kullanýcýyý sistemden silmek istiyor musunuz?','','','msg')
   Then begin
     try
  //    if not Datalar.AdoConnection2.InTransaction
  //    Then Datalar.AdoConnection2.BeginTrans;

      SQLstr := 'DELETE FROM UserSettings WHERE Kullanici = ''' + txtName.Text + '''';
      Datalar.QueryExec(Q_Pw,SQLstr);
      SQLstr := 'DELETE FROM Users WHERE Name = ''' + txtName.Text + '''';
      Datalar.QueryExec(Q_Pw, SQLstr);

      SQLstr := 'DELETE FROM MUSTERI_TEMSILCILERI WHERE KULLANICI = ''' + txtName.Text + '''';
      Datalar.QueryExec (Q_Pw, SQLstr);

 //     if Datalar.AdoConnection2.InTransaction
 //     Then Datalar.AdoConnection2.CommitTrans;

      OpenData;
      writeData (txtName.Text);

    except on E: Exception do
      begin
 //       if Datalar.AdoConnection2.InTransaction
 //       Then Datalar.AdoConnection2.RollbackTrans;
        ShowMessage('Hata oluþtu: ' + E.Message,'','', 'info');
      end;
    end; //end of try

   end;
end;

procedure TfrmUserSettings.btnIptalClick(Sender: TObject);
begin
   if opr = 1
   Then WriteData('')
   Else WriteData(txtName.Text);
   opr := 0;
   Disable;

end;

procedure TfrmUserSettings.btnSifreDegistirClick(Sender: TObject);
begin
   opr := 4;
   Enable;
end;

procedure TfrmUserSettings.btnNotCheckClick(Sender: TObject);
var
   i: Word;
begin
   for i:= grid.Selection.Top to grid.Selection.Bottom do
   begin
      grid.SetCheckBoxState(3,i,False);
      if (opr = 3) and (grid.Cells[4, i] = 'ONAYLI')
      Then grid.Cells[4, i] := 'ONAYSIZ';
   end;
end;

procedure TfrmUserSettings.btnCheckClick(Sender: TObject);
var
   i: Word;
begin
   for i:= grid.Selection.Top to grid.Selection.Bottom do
   begin
      grid.SetCheckBoxState(3,i,True);
      if (opr = 3) and (grid.Cells[4, i] = 'ONAYLI')
      Then grid.Cells[4, i] := 'ONAYSIZ';
   end;
end;

procedure TfrmUserSettings.btnAcClick(Sender: TObject);
begin
   grid.ExpandAll;

end;

procedure TfrmUserSettings.btnKapat_Click(Sender: TObject);
begin
   grid.ContractAll;
end;

procedure TfrmUserSettings.btnHakDegistirClick(Sender: TObject);
begin
   opr := 3;
   Enable;
end;

procedure TfrmUserSettings.txtFirmalarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((opr = 1) or (opr = 2)) and (Key = 46)
  Then begin
    if ( TListBox(Sender).ItemIndex = -1 ) Then exit;
    TListBox(Sender).Items.Delete (TListBox(Sender).ItemIndex);
  end;
end;

procedure TfrmUserSettings.btnOKFirmaClick(Sender: TObject);
var
   i :Word;
   bul :Boolean;
begin
end;

procedure TfrmUserSettings.btnOKGumrukClick(Sender: TObject);
var
   i :Word;
   bul :Boolean;
begin
end;

procedure TfrmUserSettings.txtNameExit(Sender: TObject);
var
  ix_tag, i :Word;
  SQLstr, str, s : string;
begin

 if AktifEdit = TEditTyped(Sender)
 Then TEditTyped(Sender).Color := EskiRenk;

  if (TEditTyped(Sender).ReadOnly) or not ((TEditTyped(Sender).IsChanged) or (TEditTyped(Sender).Modified))
  Then begin
        exit;
      end;
  ix_tag := TEditTyped(Sender).Tag;
  case ix_tag of
      101 :begin
               if opr <> 0
               Then begin
                     exit;
               end;

               if TEditTyped(Sender).Text <> ''
               Then begin
                //     str := ControlKod (TEditTyped(Sender), Q_Pw, 'PW', 'NAME', 'ADISOYADI', 'Kullanýcý ' );
                     if str <> 'YANLIÞ'
                     Then begin
                           WriteData(TEditTyped(Sender).Text);
                     end;
               end;
           end; //201

      204: begin
                 if ( ControlTarih ( TEditTyped(Sender).Text ) = 0 )
                 Then begin
                        ShowMessage ( 'Tarih giriþi yanlýþ!','','', 'info' );
                        TEditTyped(Sender).SetFocus;
                        exit;
                 end;
           end;//404
      104: begin
              if TEditTyped(Sender).Text <> ''
              Then begin
                 //   str := ControlKod (TEditTyped(Sender), Q_PW, 'USER_GROUPS', 'KOD', 'AD', 'GRUP ' );
                    if str <> 'YANLIÞ'
                    Then begin
                          txtinfo.Caption := str;
                    end;
              end;
           end;
      110: begin
           end; //203
      111: begin
           end; //203
      112: begin
              if ( Trim(TEditTyped(Sender).Text) = '' ) Then exit;
//              str := frmData.ControlKod (TEditTyped(Sender), Q_Pw, 'PW', 'NAME', 'ADISOYADI', 'Kullanýcý ' );
           end; //203
  end; // end of CASE

  txtinfo.Caption := str;
end;

procedure TfrmUserSettings.txtNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   ord : integer;
   str, SQLstr, gecici :string;
begin
 if (key = VK_F1)
 Then begin
      ord := 0;
      if (ssCtrl in Shift)
      Then begin
            ord := 1
      end;
             case TEditTyped(Sender).Tag of
                  101 :begin
                          if opr = 0
                          Then begin
                                if
                                ListeGoster('Kullanici, ADISOYADI ', 'Users',
                                                    ' ORDER BY Kullanici, ADISOYADI',' ORDER BY ADISOYADI, Kullanici', '',
                                                    '', 'Kod', 'Adý Soyadý', '', pnlTitle.Caption,
                                                    TEditTyped(Sender).Text, TEditTyped(Sender), 25, 35, 0,
                                                    0, 0, 0, ord, 2, opr = 0,
                                                    Q_PW)
                                Then begin
                                       if not TEditTyped(Sender).ReadOnly
                                       Then begin
                                             txtinfo.Caption := Trim(Copy(ListResult, 1, 25));
                                             txtName.Text := txtinfo.Caption;
                                             WriteData(txtName.Text);
                                       end;
                                end;

                          end
                        end;
                  104 :begin
                          if
                          ListeGoster('Donem ,Donemadi', ' muh_donemler ', ' ORDER BY Donem ',' ORDER BY donem', '',
                                              ' where asil = ''D''', 'Dönem', 'Þirket', '', 'Þirket & Dönemler  ',
                                              TEditTyped(Sender).Text, TEditTyped(Sender), 15, 50, 0,
                                              0, 0, 0, ord, 2, True,
                                              Q_PW)
                          Then begin
                                if not TEditTyped(Sender).ReadOnly
                                Then begin
                                  txtDonem.Text := Trim(Copy(ListResult, 1, 15));
                                  txtinfo.Caption := Trim(Copy(ListResult, 16, 15));
                                end;
                          end;
                        end; //104
                   110 :begin
                        end; //104
                   111 :begin
                        end; //104
                  112 :begin
                          if opr = 3
                          Then begin
                                if
                                ListeGoster('Kullanici, ADISOYADI ', 'Users',
                                                    ' ORDER BY user, ADISOYADI',' ORDER BY ADISOYADI, Kullanici', '',
                                                    '', 'Kod', 'Adý Soyadý', '', pnlTitle.Caption,
                                                    TEditTyped(Sender).Text, TEditTyped(Sender), 25, 35, 0,
                                                    0, 0, 0, ord, 2, opr = 0,
                                                    Q_PW)
                                Then begin
                                       if not TEditTyped(Sender).ReadOnly
                                       Then begin
                                             txtinfo.Caption := Trim(Copy(ListResult, 1, 25));
                                             txtNameCopy.Text := txtinfo.Caption;
                                       end;
                                end;

                          end
                        end; //112

             end; //end of case
  key := 0;
 end;
end;

procedure TfrmUserSettings.txtNameButtonClick(Sender: TObject);
var
    Key :Word;
begin
  Key := VK_F1;
  txtNameKeyDown(Sender, key, []);
end;

procedure TfrmUserSettings.txtNameEnter(Sender: TObject);
begin
  AktifEdit := TEditTyped(Sender);
  EskiRenk := AktifEdit.Color;
  TEditTyped(Sender).Color := AktifRenk;
end;

procedure TfrmUserSettings.txtNameKeyPress(Sender: TObject; var Key: Char);
begin
  BuyukHarf(Key);
end;

procedure TfrmUserSettings.gridCheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
  if (opr = 3) and (grid.Cells[4, ARow] = 'ONAYLI')
  Then grid.Cells[4, ARow] := 'ONAYSIZ';
end;

procedure TfrmUserSettings.FormResize(Sender: TObject);
begin
  Perform(WM_NCACTIVATE, Word(Active), 0);
end;

procedure TfrmUserSettings.txtKendi_ReferansiKeyPress(Sender: TObject;
  var Key: Char);
begin
  NextKontrol(Self, Key);
end;

procedure TfrmUserSettings.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := cafree;

end;

procedure TfrmUserSettings.btnKapatClick(Sender: TObject);
begin
   grid.ContractAll;

end;

procedure TfrmUserSettings.btnTamamClick(Sender: TObject);
begin
   if (opr = 1) OR (opr = 2) or (opr = 4)
   Then begin
      if( ( txtSifre.Text <> txtSifreConfirm.Text ) or ((txtSifre.Text = '') and (txtSifreConfirm.Text = '')) )
      Then begin
         ShowMessage ('Þifreyi teyid edin!','','', 'info');
         txtSifreConfirm.SetFocus;
         exit;
      end;
    if (trim(txtName.Text) = '') or
       (txtSifre.Text = '') or
       (txtSifreConfirm.Text = '') or
       (txtAdiSoyadi.Text = '' )
    Then begin
//         frmData.ShowMessage ('Kullanýcý Adý, Adý Soyadý, Þifre, Þifre (Onay) ve Kullanýcý Grubu Bilgilerini Doldurmalýsýnýz!', 'info');
         ShowMessage ('Kullanýcý Adý, Adý Soyadý, Þifre ve Þifre (Onay) Bilgileri girilmesi zorunludur!','','', 'info');
         txtSifreConfirm.SetFocus;
         exit;
    end;
   end;
   try
  //   if not Datalar.AdoConnection2.InTransaction
  //   Then Datalar.AdoConnection2.BeginTrans;
     case opr of
       1: begin
           if ( mrYes = ShowMessage ('Bu Kullanýcýyý kaydetmek istiyor musunuz?','','', 'conf') )
           Then AddUser;
          end;
    2, 4: begin
           if ( mrYes = ShowMessage ('Deðiþiklikleri kaydetmek istiyor musunuz?','','', 'conf') )
           Then UpdateUser
          end;
       3: begin
           if ( mrYes = ShowMessage ('Kullanýcý haklarýndaki deðiþiklikleri|kaydetmek istiyor musunuz?','','', 'conf') )
           Then UpdateRights;
       end;
     end;

 //   if Datalar.AdoConnection2.InTransaction
 //   Then Datalar.AdoConnection2.CommitTrans;
    opr := 0;

   except on E:Exception do
    begin
 //      if Datalar.AdoConnection2.InTransaction
 //      Then Datalar.AdoConnection2.RollbackTrans;
       ShowMessage('Hata Oluþtu tekrar deneyiniz. HATA:' + #13#10 + E.Message,'','', 'info');
    end;
   end;


end;

end.
