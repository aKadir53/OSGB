unit Liste;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, StdCtrls, Buttons, ExtCtrls, ADODB, BaseGrid, AdvGrid, AdvToolBtn,
  Mask,kadir, sSkinProvider, sSkinManager, sBitBtn, AdvObj;

type
  TfrmListe = class(TForm)
    pnlTitle: TPanel;
    pnlUst: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    pnlOnay: TPanel;
    pnlgrid: TPanel;
    gridList: TAdvStringGrid;
    txtFiltrele: TCheckBox;
    txtKriter1: TComboBox;
    txtKriter2: TComboBox;
    txtKriter3: TComboBox;
    txtFilterCount: TLabel;
    pnlArama: TPanel;
    txtarama: TEdit;
    sSkinManager1: TsSkinManager;
    sSkinProvider1: TsSkinProvider;
    btnTamam: TsBitBtn;
    btnIptal: TsBitBtn;
    procedure btnTamamClick(Sender: TObject);
    procedure txtFiltreleClick(Sender: TObject);
    procedure txtKriter1Change(Sender: TObject);
    procedure gridListGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: String);
    procedure gridListFilterProgress(Sender: TObject; progress: Smallint);
    procedure gridListGridHint(Sender: TObject; ARow, ACol: Integer;
      var hintstr: String);
    procedure gridListEnter(Sender: TObject);
    procedure gridListExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure gridListClickSort(Sender: TObject; ACol: Integer);
    procedure txtKriter1Select(Sender: TObject);
    procedure txtKriter2Select(Sender: TObject);
    procedure txtKriter3Select(Sender: TObject);
    procedure gridListDblClick(Sender: TObject);
    procedure gridListClick(Sender: TObject);
    procedure gridListKeyPress(Sender: TObject; var Key: Char);
    procedure btnIptalClick(Sender: TObject);
    procedure txtFiltreleKeyPress(Sender: TObject; var Key: Char);
    procedure gridListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sBitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    function AddRow: string;
    procedure TamamOpr;
    procedure IndexOlustur;
  public
    { Public declarations }
    procedure SetVar1 ( Caption_: string; Query_: TADOQuery; SQLstr_: string;
                        Title1_: string; Width1_: integer; Type1_: integer;
                        starting_: string; order_: integer; OK_: bool);
    procedure SetVar2 ( Caption_: string; Query_: TADOQuery; SQLstr_: string;
                        Title1_: string; Width1_: integer; Type1_: integer;
                        Title2_: string; Width2_: integer; Type2_: integer;
                        starting_: string; order_: integer; OK_: bool);
    procedure SetVar3 ( Caption_: string; Query_: TADOQuery; SQLstr_: string;
                        Title1_: string; Width1_: integer; Type1_: integer;
                        Title2_: string; Width2_: integer; Type2_: integer;
                        Title3_: string; Width3_: integer; Type3_: integer;
                        starting_: string; order_: integer; OK_: bool);

  end;

var
  frmListe: TfrmListe;

implementation

uses Data_Model1;

{$R *.DFM}
var
   frmTop_ :word = 0;
   frmLeft_ :word = 0;
   Title: string;
   ColCount: integer;
   Query: TADOQuery;
   SQLstr: string;
   Title1, Title2, Title3: string;
   width1, width2, width3: integer;
   type1, type2, type3: integer;  //0-string; 1-integer;
                                  //2-float; 3-float(2 dec after point);
                                  //4-date
   starting: string;
   order: integer; //0,1,2
   OK: bool;
   Kriter :Boolean = True;
{------------------------------------------------------------------------------}
procedure TfrmListe.SetVar1 ( Caption_: string; Query_: TADOQuery; SQLstr_: string;
                             Title1_: string; Width1_: integer; Type1_: integer;
                             starting_: string; order_: integer; OK_: bool);
begin
   Title := Caption_;
   Query := Query_;
   SQLstr := SQLstr_;
   ColCount := 1;
   Title1 := Title1_;
   Width1 := Width1_;
   Type1 := Type1_;
   starting := starting_;
   order := order_;
   OK := OK_;
   try txtarama.Text := ''; except end;
end;

procedure TfrmListe.SetVar2 ( Caption_: string; Query_: TADOQuery; SQLstr_: string;
                             Title1_: string; Width1_: integer; Type1_: integer;
                             Title2_: string; Width2_: integer; Type2_: integer;
                             starting_: string; order_: integer; OK_: bool);

begin
   Title := Caption_;
   Query := Query_;
   SQLstr := SQLstr_;
   ColCount := 2;
   Title1 := Title1_;
   Width1 := Width1_;
   Type1 := Type1_;
   Title2 := Title2_;
   Width2 := Width2_;
   Type2 := Type2_;
   starting := starting_;
   order := order_;
   OK := OK_;
   try txtarama.Text := ''; except end;
end;
{------------------------------------------------------------------------------}
procedure TfrmListe.SetVar3 ( Caption_: string; Query_: TADOQuery; SQLstr_: string;
                             Title1_: string; Width1_: integer; Type1_: integer;
                             Title2_: string; Width2_: integer; Type2_: integer;
                             Title3_: string; Width3_: integer; Type3_: integer;
                             starting_: string; order_: integer; OK_: bool);
begin
   Title := Caption_;
   Query := Query_;
   SQLstr := SQLstr_;
   ColCount := 3;
   Title1 := Title1_;
   Width1 := Width1_;
   Type1 := Type1_;
   Title2 := Title2_;
   Width2 := Width2_;
   Type2 := Type2_;
   Title3 := Title3_;
   Width3 := Width3_;
   Type3 := Type3_;
   starting := starting_;
   order := order_;
   OK := OK_;
   try txtarama.Text := ''; except end;
end;
{------------------------------------------------------------------------------}
function TfrmListe.AddRow: string;
var
   c1,c2,c3: string;
begin
   case Type1 of
    0: c1 := Query.Fields[0].asstring;
    1: c1 := IntToStr(Query.Fields[0].asinteger);
    2: c1 := numTOtxt_M(Query.Fields[0].asfloat, 0);
    3: c1 := numTOtxt_M(Query.Fields[0].asfloat,2);
    4: c1 := FormattedTarih(Query.Fields[0].asstring);
   end;
   if (ColCount=1)
   Then begin
      gridList.Cells[0, gridList.RowCount - 1] := c1;
      gridList.RowCount := gridList.RowCount + 1;
      if Kriter
      Then
          if txtKriter1.Items.IndexOf(Trim(c1)) = -1
          Then txtKriter1.Items.Add(Trim(c1));
      if ( Type1 = 4 )
      Then AddRow := Tarih(trim(c1))
      Else AddRow := trim(c1);
      exit;
   end;

   case Type2 of
    0: c2 := Query.Fields[1].asstring;
    1: c2 := IntToStr(Query.Fields[1].asinteger);
    2: c2 := numTOtxt_M(Query.Fields[1].asfloat, 0);
    3: c2 := numTOtxt_M(Query.Fields[1].asfloat,2);
    4: c2 := FormattedTarih(Query.Fields[1].asstring);
   end;
   if (ColCount=2)
   Then begin
      gridList.Cells[0, gridList.RowCount - 1] := c1;
      gridList.Cells[1, gridList.RowCount - 1] := c2;
      if Kriter
      Then begin
          if txtKriter1.Items.IndexOf(Trim(c1)) = -1
          Then txtKriter1.Items.Add(Trim(c1));
          if txtKriter2.Items.IndexOf(Trim(c2)) = -1
          Then txtKriter2.Items.Add(Trim(c2));
      end;
      gridList.RowCount := gridList.RowCount + 1;
      case order of
       0: if ( Type1 = 4 )
          Then AddRow := Tarih (trim(c1))
          Else AddRow := trim(c1);
       1: if ( Type2 = 4 )
          Then AddRow := Tarih (trim(c2))
          Else AddRow := trim(c2);
      end;
      exit;
   end;

   case Type3 of
    0: c3 := Query.Fields[2].asstring;
    1: c3 := IntToStr(Query.Fields[2].asinteger);
    2: c3 := numTOtxt_M(Query.Fields[2].asfloat, 0);
    3: c3 := numTOtxt_M(Query.Fields[2].asfloat,2);
    4: c3 := FormattedTarih(Query.Fields[2].asstring);
   end;
      gridList.Cells[0, gridList.RowCount - 1] := c1;
      gridList.Cells[1, gridList.RowCount - 1] := c2;
      gridList.Cells[2, gridList.RowCount - 1] := c3;

      if Kriter
      Then begin
          if txtKriter1.Items.IndexOf(Trim(c1)) = -1
          Then txtKriter1.Items.Add(Trim(c1));
          if txtKriter2.Items.IndexOf(Trim(c2)) = -1
          Then txtKriter2.Items.Add(Trim(c2));
          if txtKriter3.Items.IndexOf(Trim(c3)) = -1
          Then txtKriter3.Items.Add(Trim(c3));
      end;

      gridList.RowCount := gridList.RowCount + 1;
   case order of
    0: if ( Type1 = 4 )
       Then AddRow := Tarih(trim(c1))
       Else AddRow := trim(c1);
    1: if ( Type2 = 4 )
       Then AddRow := Tarih(trim(c2))
       Else AddRow := trim(c2);
    2: if ( Type3 = 4)
       Then AddRow := Tarih(trim(c3))
       Else AddRow := trim(c3);
   end;

end;
procedure TfrmListe.TamamOpr;
var
   str1, str2, str3 : string;
begin
  //frmData.StartWork;
   case Type1 of
    0: str1 := AddSpaceRight ( gridList.Cells[0, gridList.Row], width1 );
    1: str1 := AddSpaceLeft ( gridList.Cells[0, gridList.Row], width1-1 )+' ';
    2: str1 := AddSpaceLeft ( gridList.Cells[0, gridList.Row], width1-1 )+' ';
    3: str1 := AddSpaceLeft ( gridList.Cells[0, gridList.Row], width1-1 )+' ';
    4: str1 := AddSpaceRight ( gridList.Cells[0, gridList.Row], width1 );
   end;
   case Type2 of
    0: str2 := AddSpaceRight ( gridList.Cells[1, gridList.Row], width2 );
    1: str2 := AddSpaceLeft ( gridList.Cells[1, gridList.Row], width2-1 )+' ';
    2: str2 := AddSpaceLeft ( gridList.Cells[1, gridList.Row], width2-1 )+' ';
    3: str2 := AddSpaceLeft ( gridList.Cells[1, gridList.Row], width2-1 )+' ';
    4: str2 := AddSpaceRight ( gridList.Cells[1, gridList.Row], width2 );
   end;
   case Type3 of
    0: str3 := AddSpaceRight ( gridList.Cells[2, gridList.Row], width3 );
    1: str3 := AddSpaceLeft ( gridList.Cells[2, gridList.Row], width3-1 )+' ';
    2: str3 := AddSpaceLeft ( gridList.Cells[2, gridList.Row], width3-1 )+' ';
    3: str3 := AddSpaceLeft ( gridList.Cells[2, gridList.Row], width3-1 )+' ';
    4: str3 := AddSpaceRight ( gridList.Cells[2, gridList.Row], width3 );
   end;
  //if ( gridList.Items.Count = 0 ) Then frmData.SetListResult ( '' )
  //Else
  //if ( gridList.SelectedCellsCount = 0 ) Then frmData.SetListResult ( '' )
  //Else
  SetListResult ( str1 + str2 + str3 );
  ModalResult := mrOk;
//  frmData.SetListResult ( gridList.Rows[gridList.Row].Text );
 // frmData.EndWork;
end;
{------------------------------------------------------------------------------}
procedure TfrmListe.btnTamamClick(Sender: TObject);
begin
   TamamOpr;
end;
{------------------------------------------------------------------------------}
procedure TfrmListe.txtFiltreleClick(Sender: TObject);
begin




  gridList.Filter.Clear;
  if (txtKriter1.Visible) and (txtKriter1.Text <> '')
  Then begin
        gridList.Filter.ColumnFilter[0].Condition := txtKriter1.Text;
        gridList.Filter.ColumnFilter[0].CaseSensitive := False;
  end;
  if (txtKriter2.Visible) and (txtKriter2.Text <> '')
  Then begin
        gridList.Filter.ColumnFilter[1].Condition := txtKriter2.Text;
        gridList.Filter.ColumnFilter[1].CaseSensitive := False;
  end;
  if (txtKriter3.Visible) and (txtKriter3.Text <> '')
  Then begin
        gridList.Filter.ColumnFilter[2].Condition := txtKriter3.Text;
        gridList.Filter.ColumnFilter[2].CaseSensitive := False;
  end;
  //if gridList.Filter.Count > 0
  gridList.FilterActive := txtFiltrele.Checked;
  txtFilterCount.Caption := InttoStr(gridList.RowCount - 1) + ' Adet Kayýt Filtrelendi';
  //if gridList.Filter.Count = 0
  //Then frmData.ShowMessage('Kayýt Bulunamadý!.', 'info');
end;

procedure TfrmListe.txtKriter1Change(Sender: TObject);
begin
  txtFiltrele.Checked := False;
end;

procedure TfrmListe.gridListGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: String);
begin
  if ACol = 0
  Then case Type1 of
        1,2,3: AStyle := ssNumeric;
        4: AStyle := ssDate;
       end;
  if ACol = 1
  Then case Type2 of
        1,2,3: AStyle := ssNumeric;
        4: AStyle := ssDate;
       end;
  if ACol = 2
  Then case Type3 of
        1,2,3: AStyle := ssNumeric;
        4: AStyle := ssDate;
       end;
end;

procedure TfrmListe.gridListFilterProgress(Sender: TObject;
  progress: Smallint);
var
   str :string;
begin
  // str := Caption;
  if progress < 100
  Then begin
     //  frmData.StartWork;
       Caption := ' FÝLTRELEME DEVAM EDÝYOR %' + inttostr(progress);
  end
  else begin
     //  frmData.EndWork;
       Caption := ' FÝLTRELEME TAMAMLANDI';
  end;
end;

procedure TfrmListe.gridListGridHint(Sender: TObject; ARow, ACol: Integer;
  var hintstr: String);
begin
  hintstr := Trim(gridList.Cells[ACol,ARow]);
end;

procedure TfrmListe.gridListEnter(Sender: TObject);
begin
  Application.HintHidePause := 15000;
end;

procedure TfrmListe.gridListExit(Sender: TObject);
begin
  Application.HintHidePause := 2500;
end;

procedure TfrmListe.FormShow(Sender: TObject);
var
  i, j, index, t, konum, e: integer;
  found: bool;
  s,tmp: string;
begin
 //  frmData.StartWork;
   e := 7;

   txtKriter1.Clear;
   txtKriter2.Clear;
   txtKriter3.Clear;
   txtKriter1.Items.Clear;
   txtKriter2.Items.Clear;
   txtKriter3.Items.Clear;
   txtFiltrele.Checked := False;

   Grid_Temizle(gridList);
   gridList.RowCount := 2;
   gridList.ColCount := ColCount;
   gridList.ColumnHeaders.Clear;
   case ColCount of
    1: begin
       lbl1.Caption := Title1;
       lbl2.Caption := '';
       lbl3.Caption := '';
       gridList.Width := e*Width1 + 22;
       gridList.ColumnHeaders.Add(Title1);
       gridList.ColWidths[0] := e*Width1;
    end;
    2: begin
       gridList.Width := e*Width1 + e*Width2 + 22;
       lbl1.Caption := Title1;
       lbl2.Left := e*Width1+15;
       lbl2.Caption := Title2;
       lbl3.Caption := '';
       gridList.ColumnHeaders.Add(Title1);
       gridList.ColumnHeaders.Add(Title2);
       gridList.ColWidths[0] := e*Width1;
       gridList.ColWidths[1] := e*Width2;
    end;
    3: begin
       gridList.Width := e*Width1 + e*Width2 + e*Width3 + 22;
       lbl1.Caption := Title1;
       lbl2.Left := e*Width1+15;
       lbl2.Caption := Title2;
       lbl3.Left :=  e*Width1 + e*Width2 + 30;
       lbl3.Caption := Title3;
       gridList.ColumnHeaders.Add(Title1);
       gridList.ColumnHeaders.Add(Title2);
       gridList.ColumnHeaders.Add(Title3);
       gridList.ColWidths[0] := e*Width1;
       gridList.ColWidths[1] := e*Width2;
       gridList.ColWidths[2] := e*Width3;
    end;
   end;

   pnlTitle.Caption := Title;

   txtKriter1.Visible := lbl1.Caption <> '';
   txtKriter2.Visible := lbl2.Caption <> '';
   txtKriter3.Visible := lbl3.Caption <> '';
   //txtKriter1.Left := lbl1.Left;
   txtKriter1.Width := e*Width1 + 2;
   txtKriter2.Left := txtKriter1.Left + e*Width1 + 1;
   txtKriter2.Width := e*Width2 + 2;
   txtKriter3.Left := txtKriter2.Left + e*Width2 + 1;
   txtKriter3.Width := e*Width3 + 2;
   txtKriter1.Hint := 'Aranacak '  + lbl1.Caption + ' bilgisi';
   txtKriter2.Hint := 'Aranacak '  + lbl2.Caption + ' bilgisi';
   txtKriter3.Hint := 'Aranacak '  + lbl3.Caption + ' bilgisi';

   btnTamam.Enabled := OK;
   //if (not OK) Then btnIptal.Default := True;
   btnTamam.Left := gridList.Width - 165;
   btnIptal.Left := btnTamam.Left + 80;

//------------------------------------------------------------

   Query.Close;
   //Query.CursorLocation := clUseServer;
   //Query.CursorType := ctStatic;

   Application.ProcessMessages;
   //if (Query.Active = False) or (Query.SQL.Text <> SQLstr)
   //Then begin
   datalar.QuerySelect ( Query, SQLstr );
   //end
   //else Query.First;

   Kriter := False;
   if Query.RecordCount > 10
   Then begin
     Kriter := False;
     //txtKriter1.Visible := Kriter;
     //txtKriter2.Visible := Kriter;
     //txtKriter3.Visible := Kriter;
     //txtFiltrele.Visible := Kriter;
   end;

   //Query.First;
   if ( Query.Eof )
   Then begin
      btnTamam.Enabled := False;
      //btnIptal.Default := True;
     // frmData.EndWork;
      exit;
   end;

   i := 0;
   index := 0;
   case order of
    0: t := Type1;
    1: t := Type2;
    2: t := Type3;
   end;
   if ( starting = '' )
   Then found := True
   Else found := False;
   while not Query.Eof do
    begin
       s := AddRow;
       if ( (s <> '') AND (found = False) )
        Then begin
           if t = 1 // integer type comparison
           Then begin
              if StrToInt(starting) = StrToInt(s)
              Then begin found := true; index := i; end
              Else if StrToInt(starting) < StrToInt(s)
              Then index := i;
           end
           Else begin // for other types of comparisons make string comp
              s := Copy(s,1,Length(starting));
              if starting = s
              Then begin found := True; index := i; end
              Else if starting < s
              Then index := i;
           end;
        end;//if ( (s<>'') AND (found = False) )
       Inc(i);
       Query.Next;
    end;  //while
   //gridList.RowCount := gridList.RowCount - 1;
   gridList.Row := index + 1;
   if index<> 0
   Then gridList.TopRow := index + 1;
   //IndexOlustur;
   Query.Close;
   //Query.CursorLocation := clUseClient;
   //Query.CursorType := ctStatic;
  // frmData.EndWork;
   gridList.AutoSizeRows(False, 1);
   gridList.Refresh;
   gridList.SetFocus;
end;

procedure TfrmListe.FormActivate(Sender: TObject);
begin
   if frmTop_ = 0
   Then frmTop_ := Trunc(TScreen(frmListe).DesktopHeight/2);
   if frmLeft_ = 0
   Then frmLeft_ := Trunc(TScreen(frmListe).DesktopWidth/2);

   Top := frmTop_ - Trunc(Height/2);
   Left := frmLeft_ - Trunc(Width/2);
end;

procedure TfrmListe.gridListClickSort(Sender: TObject; ACol: Integer);
var
   str :string;
begin
  StartWork;
  str := Caption;
  Caption := 'BÝLGÝLER SIRLANIYOR... LÜTFEN BEKLEYÝNÝZ';
  IndexOlustur;
  Caption := str;
  EndWork;
end;

procedure TfrmListe.txtKriter1Select(Sender: TObject);
begin
  txtFiltrele.Checked := False;
  //gridList.Row := txtKriter1.ItemIndex + 1;
  //gridListClick(Self);
end;

procedure TfrmListe.txtKriter2Select(Sender: TObject);
begin
  txtFiltrele.Checked := False;
  //gridList.Row := txtKriter2.ItemIndex + 1;
  //gridListClick(Self);
end;

procedure TfrmListe.txtKriter3Select(Sender: TObject);
begin
  txtFiltrele.Checked := False;
  //gridList.Row := txtKriter3.ItemIndex + 1;
  //gridListClick(Self);
end;

procedure TfrmListe.gridListDblClick(Sender: TObject);
begin
  TamamOpr;
  frmListe.ModalResult := mrOK;
end;

procedure TfrmListe.gridListClick(Sender: TObject);
begin
  {
  if txtKriter1.Visible
  Then txtKriter1.ItemIndex := gridList.Row - 1;
  if txtKriter2.Visible
  Then txtKriter2.ItemIndex := gridList.Row - 1;
  if txtKriter3.Visible
  Then txtKriter3.ItemIndex := gridList.Row - 1;
  }
end;
procedure TfrmListe.IndexOlustur;
begin
   if txtKriter1.Visible
   Then begin
         txtKriter1.Items := gridList.Cols[0];
         txtKriter1.Items.Delete(0);
   end;
   if txtKriter2.Visible
   Then begin
         txtKriter2.Items := gridList.Cols[1];
         txtKriter2.Items.Delete(0);
   end;
   if txtKriter3.Visible
   Then begin
         txtKriter3.Items := gridList.Cols[2];
         txtKriter3.Items.Delete(0);
   end;
end;

procedure TfrmListe.gridListKeyPress(Sender: TObject; var Key: Char);
var
   res :TPoint;
   s :string;
begin

  if Key  = 'ý' Then Key := 'I';
  if Key  = 'i' Then Key := 'Ý';

  s := AnsiUpperCase(key);
  if s[1] in [#13, #10, #9, #14] Then exit;
  //['A'..'Z', '0'..'9', 'Ç','Þ','Ð','Ö','Ü','Ý']
  if (key in [#8])
  Then begin
         if (Length(txtarama.Text) > 0)
         Then txtArama.Text := Copy(txtArama.Text, 1, Length(txtarama.Text) - 1)
         else txtArama.Text := ''
  end
  else txtArama.Text := txtArama.Text + s;
  s := txtArama.Text + '*' + ';*' + txtArama.Text + '*';
  if s[1] in ['A'..'Z', '0'..'9', 'Ç','Þ','Ð','Ö','Ü','Ý']
  Then begin
        //s := AnsiUpperCase(s) + '*';
        res := gridList.Find(Point(-1,-1), s, [fnAutoGoto, fnMatchRegular, fnMatchCase]);
        if res.x >= 0
        Then begin
              gridList.Col:=res.x;
              gridList.row:=res.y;
        end
  end;
end;

procedure TfrmListe.btnIptalClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmListe.txtFiltreleKeyPress(Sender: TObject; var Key: Char);
begin
  NextKontrol(self, Key);
end;

procedure TfrmListe.gridListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if key = vk_return
  then
  gridList.OnDblClick(gridList);

end;

procedure TfrmListe.sBitBtn1Click(Sender: TObject);
begin
   TamamOpr;

end;

procedure TfrmListe.SpeedButton1Click(Sender: TObject);
var
  sql : string;
begin


end;

end.
