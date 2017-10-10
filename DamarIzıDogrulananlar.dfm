object frmDamarIzi: TfrmDamarIzi
  Left = 128
  Top = 107
  Caption = 'frmDamarIzi'
  ClientHeight = 489
  ClientWidth = 912
  Color = 13750737
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'Tarih'
    TabOrder = 0
    Height = 489
    Width = 912
    object cxGroupBox2: TcxGroupBox
      Left = 2
      Top = -2
      Align = alTop
      PanelStyle.Active = True
      TabOrder = 0
      ExplicitTop = 5
      ExplicitWidth = 906
      Height = 28
      Width = 908
      object txtDonem: TcxDateEditKadir
        Left = 2
        Top = 2
        Align = alLeft
        Properties.DateOnError = deToday
        TabOrder = 0
        BosOlamaz = False
        ValueTip = tvString
        ExplicitHeight = 21
        Width = 155
      end
    end
    object cxGrid4: TcxGridKadir
      Left = 2
      Top = 26
      Width = 908
      Height = 461
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
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ExcelFileName = 'DamarIziDogrulananHastaList'
      ExceleGonder = True
      ExplicitTop = 33
      ExplicitHeight = 454
      object gridHastalar: TcxGridDBTableView
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
        DataController.DetailKeyFieldNames = 'Kod'
        DataController.Filter.Active = True
        DataController.Filter.TranslateBetween = True
        DataController.Filter.TranslateLike = True
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = gridHastalarTc
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
        object gridHastalarTc: TcxGridDBColumn
          DataBinding.FieldName = 'Tc'
          Width = 119
        end
        object gridHastalarHasta: TcxGridDBColumn
          DataBinding.FieldName = 'Hasta'
          Width = 276
        end
        object gridHastalarTarih: TcxGridDBColumn
          DataBinding.FieldName = 'Tarih'
          Width = 112
        end
        object gridHastalarbrans: TcxGridDBColumn
          Caption = 'Bran'#351
          DataBinding.FieldName = 'brans'
          Width = 94
        end
      end
      object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
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
            Column = cxGrid1DBBandedTableView1Column5
          end
          item
            Kind = skSum
            Column = cxGrid1DBBandedTableView1Column5
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
        object cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Tan'#305'm'
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn
          Caption = 'Tan'#305'm Ad'#305
          DataBinding.FieldName = 'ad'
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn
          Caption = 'Toplam'
          DataBinding.FieldName = 'adet'
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Column4: TcxGridDBBandedColumn
          DataBinding.FieldName = 'kurumT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###.#0'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Column5: TcxGridDBBandedColumn
          DataBinding.FieldName = 'hastaT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###.#0'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object cxGrid1DBBandedTableView2: TcxGridDBBandedTableView
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
        object cxGrid1DBBandedTableView2Column1: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NAME1'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2Column2: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SATISF'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object cxGrid1DBBandedTableView3: TcxGridDBBandedTableView
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Bands = <
          item
            Caption = 'i'#351'lemler'
          end>
      end
      object cxGrid1DBBandedTableView4: TcxGridDBBandedTableView
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
        object cxGrid1DBBandedTableView4Column1: TcxGridDBBandedColumn
          Caption = 'Tanim'
          DataBinding.FieldName = 'TANIM'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView4Column2: TcxGridDBBandedColumn
          Caption = 'Hasta Ad'#305
          DataBinding.FieldName = 'HASTAADI'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView4Column3: TcxGridDBBandedColumn
          Caption = 'Soyad'#305
          DataBinding.FieldName = 'HASTASOYADI'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView4Column4: TcxGridDBBandedColumn
          Caption = 'Hizmet Ad'#305
          DataBinding.FieldName = 'NAME1'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView4Column5: TcxGridDBBandedColumn
          Caption = 'Kurum F'
          DataBinding.FieldName = 'KSATISF'
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView4Column6: TcxGridDBBandedColumn
          Caption = 'Hasta F'
          DataBinding.FieldName = 'SATISF'
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
      end
      object cxGridLevel3: TcxGridLevel
        Caption = 'Hastalar'
        GridView = gridHastalar
        Options.DetailFrameColor = clHighlight
      end
    end
  end
  object OdemeBilgiTest: THTTPRIO
    WSDLLocation = 'OdemeBilgisiIslemleri.wsdl'
    Service = 'OdemeBilgisiIslemleriService'
    Port = 'OdemeBilgisiIslemleri'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soUTF8InHeader, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 35
    Top = 404
  end
  object DataSource1: TDataSource
    DataSet = DATALAR.memData_DamarIzi
    Left = 720
    Top = 104
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 416
    Top = 120
    object K1: TMenuItem
      Tag = -1
      Caption = 'Kimlik Do'#287'rulanan Hastalar'
      ImageIndex = 71
      OnClick = cxButtonCClick
    end
    object H1: TMenuItem
      Tag = -2
      Caption = 'Hasta Kart'#305
      ImageIndex = 44
      OnClick = cxButtonCClick
    end
  end
end
