object frmTaniKart: TfrmTaniKart
  Tag = 9020
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'frmTaniKart'
  ClientHeight = 447
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 727
    Height = 447
    Align = alClient
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LevelTabs.ImageBorder = 2
    LevelTabs.Style = 1
    LookAndFeel.Kind = lfFlat
    object gridTanilar: TcxGridDBTableView
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      FilterBox.CustomizeDialog = False
      DataController.DataModeController.DetailInSQLMode = True
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.Active = True
      DataController.Filter.TranslateBetween = True
      DataController.Filter.TranslateLike = True
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      FilterRow.InfoText = 'Arama Sat'#305'r'#305
      FilterRow.SeparatorWidth = 2
      FilterRow.ApplyChanges = fracImmediately
      NewItemRow.InfoText = 'Kay'#305't Ekle'
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Inserting = False
      OptionsView.NavigatorOffset = 20
      OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clBlack
      object gridTanilarColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Tarih'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 109
      end
      object cxGridDBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'dosyaNo'
        Visible = False
      end
      object cxGridDBColumn2: TcxGridDBColumn
        Caption = 'Icd Kodu'
        DataBinding.FieldName = 'ICD_KODU'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 63
      end
      object cxGridDBColumn3: TcxGridDBColumn
        Caption = 'Icd Ad'#305
        DataBinding.FieldName = 'ICD_NAME'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 326
      end
      object cxGridDBColumn4: TcxGridDBColumn
        Caption = 'Birincil Tan'#305
        DataBinding.FieldName = 'BIRINCIL'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'Evet'
          'Hay'#305'r')
        HeaderAlignmentHorz = taCenter
        Width = 59
      end
      object cxGridDBColumn5: TcxGridDBColumn
        Caption = 'Tan'#305' T'#252'r'#252
        DataBinding.FieldName = 'TANITURU'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #214'n Tan'#305
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = 'Kesin Tan'#305
            Value = '2'
          end
          item
            Description = 'Ay'#305'r'#305'c'#305' Tan'#305
            Value = '3'
          end>
        HeaderAlignmentHorz = taCenter
        Width = 54
      end
      object gridTanilarColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'islemSiraNo'
        HeaderAlignmentHorz = taCenter
        Width = 82
      end
    end
    object cxGridLevel2: TcxGridLevel
      Caption = 'Hastalar'
      GridView = gridTanilar
      Options.DetailFrameColor = clBlack
      Options.DetailFrameWidth = 0
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 16
    Top = 112
    object Kapat1: TMenuItem
      Tag = -3
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxButtonCClick
    end
    object Ekle1: TMenuItem
      Tag = -1
      Caption = 'Ekle'
      ImageIndex = 30
      OnClick = cxButtonCClick
    end
    object Sl1: TMenuItem
      Tag = -2
      Caption = 'S'#304'l'
      ImageIndex = 33
      OnClick = cxButtonCClick
    end
  end
  object Tanilar: TListeAc
    ListeBaslik = 'Tanilar'
    TColcount = 2
    TColsW = '50,350'
    Table = 'icd_teshisleri'
    Conn = DATALAR.ADOConnection2
    Filtercol = 1
    BaslikRenk = clBackground
    DipRenk = clBackground
    ButtonImajIndex = 132
    Kolonlar.Strings = (
      'ICDKODU'
      'TANI')
    KolonBasliklari.Strings = (
      'Tani Kodu'
      'Tani Ad'#305)
    Calistir = fgEvet
    BiriktirmeliSecim = False
    Grup = False
    GrupCol = 0
    Left = 16
    Top = 165
  end
end
