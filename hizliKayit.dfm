object frmHizliKayit: TfrmHizliKayit
  Left = 303
  Top = 93
  BorderStyle = bsDialog
  Caption = 'frmHizliKayit'
  ClientHeight = 529
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 779
    Height = 529
    Align = alClient
    TabOrder = 0
    ClientRectBottom = 525
    ClientRectLeft = 4
    ClientRectRight = 775
    ClientRectTop = 4
  end
  object cxGrid2: TcxGridKadir
    Left = 0
    Top = 0
    Width = 779
    Height = 529
    Align = alClient
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LevelTabs.ImageBorder = 2
    LevelTabs.Style = 1
    ExceleGonder = False
    object Liste: TcxGridDBTableView
      PopupMenu = PopupMenu1
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      FilterBox.CustomizeDialog = False
      DataController.DataSource = DataSource3
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.Active = True
      DataController.Filter.TranslateBetween = True
      DataController.Filter.TranslateLike = True
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Listelen Kay'#305't :#0'
          Kind = skCount
          Column = ListeTCKIMLIKNO
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      FilterRow.InfoText = 'Arama Sat'#305'r'#305
      FilterRow.SeparatorWidth = 2
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      NewItemRow.InfoText = 'Kay'#305't Ekle'
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NavigatorOffset = 20
      OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 35
      OptionsView.RowSeparatorColor = clBlack
      object ListeTCKIMLIKNO: TcxGridDBColumn
        DataBinding.FieldName = 'TCKIMLIKNO'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object ListeHASTAADI: TcxGridDBColumn
        DataBinding.FieldName = 'HASTAADI'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object ListeHASTASOYADI: TcxGridDBColumn
        DataBinding.FieldName = 'HASTASOYADI'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object ListeCINSIYETI: TcxGridDBColumn
        DataBinding.FieldName = 'CINSIYETI'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 58
      end
      object ListeMEDENI: TcxGridDBColumn
        DataBinding.FieldName = 'MEDENI'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 44
      end
      object ListeBABAADI: TcxGridDBColumn
        DataBinding.FieldName = 'BABAADI'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object ListeANAADI: TcxGridDBColumn
        DataBinding.FieldName = 'ANAADI'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object ListeEV_SEHIR: TcxGridDBColumn
        DataBinding.FieldName = 'EV_SEHIR'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object ListeEV_TEL1: TcxGridDBColumn
        Caption = 'MOB'#304'L TEL'
        DataBinding.FieldName = 'EV_TEL1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object ListeEV_TEL2: TcxGridDBColumn
        Caption = 'TEL2'
        DataBinding.FieldName = 'EV_TEL2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object ListeDOGUMYERI: TcxGridDBColumn
        DataBinding.FieldName = 'DOGUMYERI'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object ListeDOGUMTARIHI: TcxGridDBColumn
        DataBinding.FieldName = 'DOGUMTARIHI'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object ListeUYRUGU: TcxGridDBColumn
        DataBinding.FieldName = 'UYRUGU'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object ListeDurum: TcxGridDBColumn
        DataBinding.FieldName = 'Durum'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 42
      end
      object ListeBASLANGIC: TcxGridDBColumn
        Caption = 'ISE BASLAMA'
        DataBinding.FieldName = 'BASLANGIC'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object ListeKANGRUBU: TcxGridDBColumn
        DataBinding.FieldName = 'KANGRUBU'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 62
      end
    end
    object cxGridLevel1: TcxGridLevel
      Caption = 'Hastalar'
      GridView = Liste
      Options.DetailFrameColor = clBlack
      Options.DetailFrameWidth = 0
    end
  end
  object DataSource3: TDataSource
    DataSet = MemTable_Personel
    Left = 700
    Top = 119
  end
  object MemTable_Personel: TSQLMemTable
    CurrentVersion = '13.00 '
    StoreDefs = True
    DatabaseName = 'MEMORY'
    ReadOnly = False
    Active = True
    CaseInsensitive = False
    FieldDefs = <
      item
        Name = 'TCKIMLIKNO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'HASTAADI'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'HASTASOYADI'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CINSIYETI'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MEDENI'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BABAADI'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ANAADI'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EV_SEHIR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EV_TEL1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EV_TEL2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DOGUMYERI'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DOGUMTARIHI'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'UYRUGU'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Durum'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BASLANGIC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'KANGRUBU'
        DataType = ftString
        Size = 1
      end>
    TableName = 'Table668953727_4652'
    Exclusive = False
    MemoryTableAllocBy = 1000
    Left = 704
    Top = 168
  end
  object DataSource2: TDataSource
    DataSet = MemTable_Personel
    Left = 844
    Top = 7
  end
  object PopupMenu1: TPopupMenu
    Left = 696
    Top = 224
    object B1: TMenuItem
      Caption = 'Personel Kartlar'#305' Excel Dosyas'#305'n'#305' A'#231
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
    object H1: TMenuItem
      Tag = 1
      Caption = 'Kartlar'#305' Sisteme Yaz Kabul Et'
      ImageIndex = 9
      OnClick = cxButtonCClick
    end
    object N1: TMenuItem
      Caption = #304'ptal'
      ImageIndex = 75
      Visible = False
    end
  end
end
