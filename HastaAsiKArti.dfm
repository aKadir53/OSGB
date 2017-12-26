object frmAsiKarti: TfrmAsiKarti
  Tag = 9020
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'frmAsiKarti'
  ClientHeight = 447
  ClientWidth = 573
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
    Width = 573
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
    object gridAsilar: TcxGridDBTableView
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
      object cxGridDBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'dosyaNo'
        Visible = False
      end
      object cxGridDBColumn2: TcxGridDBColumn
        Caption = 'Tarih'
        DataBinding.FieldName = 'tarih'
        Width = 81
      end
      object cxGridDBColumn3: TcxGridDBColumn
        Caption = 'Kodu'
        DataBinding.FieldName = 'asiKodu'
        Options.Editing = False
        Width = 40
      end
      object cxGridDBColumn4: TcxGridDBColumn
        Caption = 'A'#351#305' Ad'#305
        DataBinding.FieldName = 'asiAdi'
        Options.Editing = False
        Width = 246
      end
      object cxGridDBColumn5: TcxGridDBColumn
        Caption = 'Durum'
        DataBinding.FieldName = 'durum'
        Width = 37
      end
      object gridAsilarColumn1: TcxGridDBColumn
        Caption = 'Uygulama Tarihi'
        DataBinding.FieldName = 'uygulamaTarihi'
        Width = 91
      end
    end
    object cxGridLevel2: TcxGridLevel
      Caption = 'Hastalar'
      GridView = gridAsilar
      Options.DetailFrameColor = clBlack
      Options.DetailFrameWidth = 0
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 176
    Top = 48
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
  object Asilar: TListeAc
    ListeBaslik = 'A'#350'ILAR'
    TColcount = 2
    TColsW = '50,350'
    Table = 'Asilar'
    Conn = DATALAR.ADOConnection2
    Filtercol = 1
    BaslikRenk = clBackground
    DipRenk = clBackground
    ButtonImajIndex = 132
    Kolonlar.Strings = (
      'asiKodu'
      'asiAdi')
    KolonBasliklari.Strings = (
      'A'#351#305' Kodu'
      'A'#351#305' Tan'#305'm'#305)
    Calistir = fgEvet
    BiriktirmeliSecim = False
    Grup = False
    GrupCol = 0
    Left = 96
    Top = 133
  end
end
