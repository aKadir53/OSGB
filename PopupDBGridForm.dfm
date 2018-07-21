object frmPopupDBGridForm: TfrmPopupDBGridForm
  Left = 379
  Top = 248
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Popup Form'
  ClientHeight = 320
  ClientWidth = 769
  Color = 13750737
  Font.Charset = TURKISH_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPanelBottom: TcxGroupBox
    Left = 0
    Top = 285
    Align = alBottom
    PanelStyle.Active = True
    TabOrder = 0
    Height = 35
    Width = 769
    object btnYes: TcxButton
      Left = 607
      Top = 2
      Width = 80
      Height = 31
      Align = alRight
      Caption = 'Tamam'
      ModalResult = 6
      TabOrder = 0
    end
    object btnIptal: TcxButton
      Left = 687
      Top = 2
      Width = 80
      Height = 31
      Align = alRight
      Caption = 'Vazge'#231
      ModalResult = 2
      TabOrder = 1
    end
  end
  object cxGroupDoktorlar: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = '.'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 1
    Height = 285
    Width = 769
    object cxGrid3: TcxGridKadir
      Left = 3
      Top = 36
      Width = 763
      Height = 134
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
      ExceleGonder = False
      object DBGrid: TcxGridDBTableView
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        FilterBox.CustomizeDialog = False
        FilterBox.Position = fpTop
        DataController.DataSource = DataSource1
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.Active = True
        DataController.Filter.TranslateBetween = True
        DataController.Filter.TranslateLike = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.MRUItemsList = False
        Filtering.ColumnMRUItemsList = False
        FilterRow.InfoText = 'Arama Sat'#305'r'#305
        FilterRow.SeparatorWidth = 2
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        NewItemRow.InfoText = 'Yeni Sat'#305'r Ekle'
        NewItemRow.SeparatorColor = clYellow
        NewItemRow.Visible = True
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Appending = True
        OptionsData.DeletingConfirmation = False
        OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.RowSeparatorColor = clBlack
        Styles.FilterBox = cxStyle2
        Styles.NewItemRowInfoText = cxStyle1
      end
      object cxGridDBBandedTableView5: TcxGridDBBandedTableView
        DataController.DataModeController.DetailInSQLMode = True
        DataController.DataModeController.GridMode = True
        DataController.DataModeController.SmartRefresh = True
        DataController.DetailKeyFieldNames = 'Tan'#305'm'
        DataController.Filter.Active = True
        DataController.Filter.AutoDataSetFilter = True
        DataController.Filter.TranslateBetween = True
        DataController.Filter.TranslateIn = True
        DataController.Filter.TranslateLike = True
        DataController.KeyFieldNames = 'Tan'#305'm'
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            Column = cxGridDBBandedColumn18
          end
          item
            Kind = skSum
            Column = cxGridDBBandedColumn18
          end>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        FilterRow.InfoText = 'Arama Sat'#305'r'#305
        FilterRow.ApplyChanges = fracImmediately
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.DragDropText = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsBehavior.PullFocusing = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.BandCaptionsInColumnAlternateCaption = True
        OptionsView.BandHeaderEndEllipsis = True
        Bands = <
          item
            Caption = 'Geli'#351'ler'
          end>
        object cxGridDBBandedColumn14: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Tan'#305'm'
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn15: TcxGridDBBandedColumn
          Caption = 'Tan'#305'm Ad'#305
          DataBinding.FieldName = 'ad'
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn16: TcxGridDBBandedColumn
          Caption = 'Toplam'
          DataBinding.FieldName = 'adet'
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn17: TcxGridDBBandedColumn
          DataBinding.FieldName = 'kurumT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###.#0'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn18: TcxGridDBBandedColumn
          DataBinding.FieldName = 'hastaT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###.#0'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object cxGridDBBandedTableView6: TcxGridDBBandedTableView
        DataController.DetailKeyFieldNames = 'gelisNo'
        DataController.KeyFieldNames = 'gelisNo'
        DataController.MasterKeyFieldNames = 'gelisNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.AlwaysShowEditor = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Hareketler'
          end>
        object cxGridDBBandedColumn19: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NAME1'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn20: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SATISF'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object cxGridDBBandedTableView7: TcxGridDBBandedTableView
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Bands = <
          item
            Caption = 'i'#351'lemler'
          end>
      end
      object cxGridDBBandedTableView8: TcxGridDBBandedTableView
        DataController.DataModeController.DetailInSQLMode = True
        DataController.DataModeController.GridMode = True
        DataController.Filter.Active = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.BandCaptionsInColumnAlternateCaption = True
        Bands = <
          item
          end>
        object cxGridDBBandedColumn21: TcxGridDBBandedColumn
          Caption = 'Tanim'
          DataBinding.FieldName = 'TANIM'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn22: TcxGridDBBandedColumn
          Caption = 'Hasta Ad'#305
          DataBinding.FieldName = 'HASTAADI'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn23: TcxGridDBBandedColumn
          Caption = 'Soyad'#305
          DataBinding.FieldName = 'HASTASOYADI'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn24: TcxGridDBBandedColumn
          Caption = 'Hizmet Ad'#305
          DataBinding.FieldName = 'NAME1'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn25: TcxGridDBBandedColumn
          Caption = 'Kurum F'
          DataBinding.FieldName = 'KSATISF'
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn26: TcxGridDBBandedColumn
          Caption = 'Hasta F'
          DataBinding.FieldName = 'SATISF'
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
      end
      object cxGridLevel2: TcxGridLevel
        Caption = 'Hastalar'
        GridView = DBGrid
        Options.DetailFrameColor = clHighlight
      end
    end
    object txtTable: TcxImageComboKadir
      Left = 3
      Top = 15
      Align = alTop
      Properties.ClearKey = 46
      Properties.DropDownRows = 20
      Properties.Items = <>
      Properties.OnChange = txtTablePropertiesChange
      TabOrder = 1
      Visible = False
      BosOlamaz = False
      Width = 763
    end
    object GrpAciklama: TcxGroupBox
      Left = 3
      Top = 170
      Align = alBottom
      TabOrder = 2
      Visible = False
      Height = 105
      Width = 763
      object txtAciklama: TcxDBRichEdit
        Left = 3
        Top = 22
        Align = alClient
        DataBinding.DataField = 'aciklama'
        TabOrder = 0
        Height = 80
        Width = 757
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 568
    Top = 96
    object K1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      OnClick = cxKaydetClick
    end
    object E1: TMenuItem
      Tag = -1
      Caption = 'Egitimleri Getir'
      ImageIndex = 76
      Visible = False
      OnClick = cxButtonCClick
    end
  end
  object ListeNaceKods: TListeAc
    ListeBaslik = 'Nace Kodlari'
    TColcount = 4
    TColsW = '50,200,200,80'
    Table = 'nacekodsView'
    Conn = DATALAR.ADOConnection2
    Filtercol = 1
    BaslikRenk = clBackground
    DipRenk = clBackground
    ButtonImajIndex = 132
    Kolonlar.Strings = (
      'NACEKODU'
      'NaceTANIMI'
      'GrupTanimi'
      'TEHLIKESINIFI')
    KolonBasliklari.Strings = (
      'Nace Kodu'
      'Nace Tan'#305'm'#305
      'Grubu'
      'Tehlike')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SkinName = 'Lilian'
    Grup = True
    GrupCol = 2
    Left = 232
    Top = 93
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16777088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object DataSource1: TDataSource
    Left = 176
    Top = 144
  end
end
