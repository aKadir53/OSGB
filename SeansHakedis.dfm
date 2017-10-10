object frmHakedis: TfrmHakedis
  Left = 0
  Top = 0
  Caption = 'Hakedi'#351' '#304'cmali'
  ClientHeight = 292
  ClientWidth = 1087
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid2: TcxGridKadir
    Left = 0
    Top = 0
    Width = 1087
    Height = 255
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
    ExcelFileName = 'HakedisIcmal'
    ExceleGonder = True
    object Detay: TcxGridDBTableView
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
      DataController.DataSource = DataSource1
      DataController.Filter.Active = True
      DataController.Filter.TranslateBetween = True
      DataController.Filter.TranslateLike = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = DetayColumn3
        end
        item
          Kind = skSum
          Column = DetayColumn4
        end
        item
          Kind = skSum
          Column = DetayColumn5
        end
        item
          Kind = skSum
          Column = DetayColumn6
        end
        item
          Kind = skSum
          Column = DetayColumn7
        end
        item
          Format = '#,###'
          Kind = skAverage
          Column = DetayColumn9
        end
        item
          Format = '#,###.##'
          Kind = skSum
          Column = DetayColumn11
        end
        item
          Format = '#,###.##'
          Kind = skSum
          Column = DetayColumn12
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      FilterRow.InfoText = 'Arama Sat'#305'r'#305
      FilterRow.SeparatorWidth = 2
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clBlack
      object DetayColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'KurumTipi'
        Width = 140
      end
      object DetayColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Donem'
        Width = 109
      end
      object DetayColumn8: TcxGridDBColumn
        DataBinding.FieldName = 'HizmetKodu'
      end
      object DetayColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'Planlanan'
        Width = 57
      end
      object DetayColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'Gerceklesen'
        Width = 63
      end
      object DetayColumn5: TcxGridDBColumn
        DataBinding.FieldName = 'MedulayaGonderilen'
        Width = 108
      end
      object DetayColumn6: TcxGridDBColumn
        DataBinding.FieldName = 'MedulayaGonderilmeyen'
        Width = 123
      end
      object DetayColumn7: TcxGridDBColumn
        Caption = 'Hasta Sayisi'
        DataBinding.FieldName = 'HastaSayi'
        Width = 71
      end
      object DetayColumn9: TcxGridDBColumn
        DataBinding.FieldName = 'ToplamHastaSayi'
        Width = 97
      end
      object DetayColumn10: TcxGridDBColumn
        DataBinding.FieldName = 'BirimFiyat'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object DetayColumn11: TcxGridDBColumn
        DataBinding.FieldName = 'MedulaTutar'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object DetayColumn12: TcxGridDBColumn
        DataBinding.FieldName = 'GerceklesenTutar'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 100
      end
    end
    object cxGridDBBandedTableView1: TcxGridDBBandedTableView
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
          Column = cxGridDBBandedColumn5
        end
        item
          Kind = skSum
          Column = cxGridDBBandedColumn5
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
      object cxGridDBBandedColumn1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tan'#305'm'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn2: TcxGridDBBandedColumn
        Caption = 'Tan'#305'm Ad'#305
        DataBinding.FieldName = 'ad'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn3: TcxGridDBBandedColumn
        Caption = 'Toplam'
        DataBinding.FieldName = 'adet'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn4: TcxGridDBBandedColumn
        DataBinding.FieldName = 'kurumT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,###.#0'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn5: TcxGridDBBandedColumn
        DataBinding.FieldName = 'hastaT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,###.#0'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object cxGridDBBandedTableView2: TcxGridDBBandedTableView
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
      object cxGridDBBandedColumn6: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAME1'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn7: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SATISF'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGridDBBandedTableView3: TcxGridDBBandedTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Bands = <
        item
          Caption = 'i'#351'lemler'
        end>
    end
    object cxGridDBBandedTableView4: TcxGridDBBandedTableView
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
      object cxGridDBBandedColumn8: TcxGridDBBandedColumn
        Caption = 'Tanim'
        DataBinding.FieldName = 'TANIM'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn9: TcxGridDBBandedColumn
        Caption = 'Hasta Ad'#305
        DataBinding.FieldName = 'HASTAADI'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn10: TcxGridDBBandedColumn
        Caption = 'Soyad'#305
        DataBinding.FieldName = 'HASTASOYADI'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn11: TcxGridDBBandedColumn
        Caption = 'Hizmet Ad'#305
        DataBinding.FieldName = 'NAME1'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn12: TcxGridDBBandedColumn
        Caption = 'Kurum F'
        DataBinding.FieldName = 'KSATISF'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn13: TcxGridDBBandedColumn
        Caption = 'Hasta F'
        DataBinding.FieldName = 'SATISF'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      Caption = 'Hastalar'
      GridView = Detay
      Options.DetailFrameColor = clHighlight
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 255
    Width = 1087
    Height = 37
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 760
      Top = 2
      Width = 88
      Height = 32
      Caption = 'Kapat'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Tag = 9997
      Left = 625
      Top = 2
      Width = 129
      Height = 31
      Caption = 'Excel e G'#246'nder'
      TabOrder = 1
      OnClick = cxButtonCClick
    end
  end
  object DataSource1: TDataSource
    Left = 560
    Top = 88
  end
end
