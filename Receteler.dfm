object frmReceteler: TfrmReceteler
  Left = 228
  Top = 69
  Caption = 'frmReceteler'
  ClientHeight = 548
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlOnay: TPanel
    Left = 0
    Top = 512
    Width = 912
    Height = 36
    Align = alBottom
    Color = clBackground
    TabOrder = 0
    object txtinfo: TLabel
      Left = 7
      Top = 11
      Width = 3
      Height = 13
      Caption = '.'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Receteler_sayfalar: TcxPageControl
    Left = 0
    Top = 0
    Width = 912
    Height = 512
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet1
    ClientRectBottom = 505
    ClientRectLeft = 3
    ClientRectRight = 905
    ClientRectTop = 26
    object cxTabSheet1: TcxTabSheet
      Caption = 'Re'#231'eteler'
      ImageIndex = 0
      object cxGrid2: TcxGrid
        Left = 0
        Top = 201
        Width = 902
        Height = 278
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
        object ReceteDetay: TcxGridDBTableView
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
              Format = '#,###.#0'
              Kind = skSum
              FieldName = 'borc'
            end
            item
              Format = '#,###.#0'
              Kind = skSum
              FieldName = 'alacak'
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
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clBlack
          object ReceteDetayilacKodu: TcxGridDBColumn
            Caption = 'Barkod'
            DataBinding.FieldName = 'ilacKodu'
            Width = 139
          end
          object ReceteDetayilacAdi: TcxGridDBColumn
            DataBinding.FieldName = 'ilacAdi'
            Width = 395
          end
          object ReceteDetayadet: TcxGridDBColumn
            Caption = 'Adet'
            DataBinding.FieldName = 'adet'
            Width = 59
          end
          object ReceteDetaykullanimAdet: TcxGridDBColumn
            Caption = 'Doz1'
            DataBinding.FieldName = 'kullanimAdet'
            Width = 60
          end
          object ReceteDetaykullanimAdet2: TcxGridDBColumn
            Caption = 'Doz2'
            DataBinding.FieldName = 'kullanimAdet2'
            Width = 60
          end
          object ReceteDetaykullanimZaman: TcxGridDBColumn
            Caption = 'Peryot'
            DataBinding.FieldName = 'kullanimZaman'
            Width = 81
          end
          object ReceteDetaykullanZamanUnit: TcxGridDBColumn
            Caption = 'Peryot Birim'
            DataBinding.FieldName = 'kullanZamanUnit'
            Width = 87
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
          GridView = ReceteDetay
          Options.DetailFrameColor = clHighlight
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 902
        Height = 201
        Align = alTop
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LevelTabs.ImageBorder = 2
        LevelTabs.Style = 1
        ExplicitTop = -6
        object Recete: TcxGridDBTableView
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
          OnFocusedRecordChanged = ReceteFocusedRecordChanged
          DataController.DataSource = Ds_cxGrid2
          DataController.Filter.Active = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.TranslateLike = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'DosyaNo'
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
          OptionsSelection.MultiSelect = True
          OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupByHeaderLayout = ghlHorizontal
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clBlack
          Styles.Group = cxStyle1
          object ReceteTCKIMLIKNO: TcxGridDBColumn
            Caption = 'Kimlik No'
            DataBinding.FieldName = 'TCKIMLIKNO'
            Width = 76
          end
          object ReceteHASTAADI: TcxGridDBColumn
            Caption = 'Hasta Ad'#305
            DataBinding.FieldName = 'HASTAADI'
            Width = 80
          end
          object ReceteHASTASOYADI: TcxGridDBColumn
            Caption = 'Hasta Soyad'#305
            DataBinding.FieldName = 'HASTASOYADI'
            Width = 87
          end
          object ReceteTanimi: TcxGridDBColumn
            Caption = #350'irketi'
            DataBinding.FieldName = 'tanimi'
            Width = 199
          end
          object Recetetarih: TcxGridDBColumn
            Caption = 'Tarih'
            DataBinding.FieldName = 'tarih'
            Width = 61
          end
          object ReceteeReceteNo: TcxGridDBColumn
            Caption = 'E-Re'#231'ete No'
            DataBinding.FieldName = 'eReceteNo'
            Width = 51
          end
          object ReceteprotokolNo: TcxGridDBColumn
            Caption = 'Protoko lNo'
            DataBinding.FieldName = 'protokolNo'
            Width = 224
          end
          object RecetereceteTur: TcxGridDBColumn
            Caption = 'Recete Tur'
            DataBinding.FieldName = 'receteTur'
            Width = 65
          end
          object Recetedoktor: TcxGridDBColumn
            Caption = 'Doktor'
            DataBinding.FieldName = 'doktor'
            Width = 107
          end
          object ReceteDosyaNo: TcxGridDBColumn
            DataBinding.FieldName = 'DosyaNo'
            Width = 44
          end
          object RecetegelisNo: TcxGridDBColumn
            DataBinding.FieldName = 'gelisNo'
            Width = 24
          end
          object Receteid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Width = 47
          end
          object ReceteTani: TcxGridDBColumn
            DataBinding.FieldName = 'Tani'
            Width = 40
          end
          object RecetereceteAltTur: TcxGridDBColumn
            DataBinding.FieldName = 'receteAltTur'
            Width = 54
          end
          object ReceteHastaBildirim: TcxGridDBColumn
            DataBinding.FieldName = 'HastaBildirim'
            Width = 39
          end
          object ReceteEczanedenAlim: TcxGridDBColumn
            DataBinding.FieldName = 'EczanedenAlim'
            Width = 20
          end
          object ReceteDate_Create: TcxGridDBColumn
            DataBinding.FieldName = 'Date_Create'
            Width = 75
          end
          object ReceteEpoKutuAdet_IlacAdi: TcxGridDBColumn
            DataBinding.FieldName = 'EpoKutuAdet_IlacAdi'
            Width = 139
          end
        end
        object cxGridLevel2: TcxGridLevel
          Caption = 'Hastalar'
          GridView = Recete
          Options.DetailFrameColor = clHighlight
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Re'#231'ete '#304'la'#231' Say'#305'lar'#305
      ImageIndex = 1
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 902
        Height = 233
        Align = alTop
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LevelTabs.ImageBorder = 2
        LevelTabs.Style = 1
        object cxGridDBTableView1: TcxGridDBTableView
          OnDblClick = cxGridDBTableView1DblClick
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
          DataController.DataSource = DataSource2
          DataController.Filter.Active = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.TranslateLike = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,###.#0'
              Kind = skSum
              FieldName = 'borc'
            end
            item
              Format = '#,###.#0'
              Kind = skSum
              FieldName = 'alacak'
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
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clBlack
          object cxGridDBTableView1ilacKodu: TcxGridDBColumn
            DataBinding.FieldName = 'ilacKodu'
            Width = 121
          end
          object cxGridDBTableView1ilacAdi: TcxGridDBColumn
            DataBinding.FieldName = 'ilacAdi'
            Width = 476
          end
          object cxGridDBTableView1toplamAdet: TcxGridDBColumn
            DataBinding.FieldName = 'toplamAdet'
            Width = 143
          end
          object cxGridDBTableView1toplamDoz: TcxGridDBColumn
            DataBinding.FieldName = 'toplamDoz'
            Width = 141
          end
        end
        object cxGridDBBandedTableView9: TcxGridDBBandedTableView
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
              Column = cxGridDBBandedColumn31
            end
            item
              Kind = skSum
              Column = cxGridDBBandedColumn31
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
          object cxGridDBBandedColumn27: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Tan'#305'm'
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn28: TcxGridDBBandedColumn
            Caption = 'Tan'#305'm Ad'#305
            DataBinding.FieldName = 'ad'
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn29: TcxGridDBBandedColumn
            Caption = 'Toplam'
            DataBinding.FieldName = 'adet'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn30: TcxGridDBBandedColumn
            DataBinding.FieldName = 'kurumT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,###.#0'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn31: TcxGridDBBandedColumn
            DataBinding.FieldName = 'hastaT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,###.#0'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
        object cxGridDBBandedTableView10: TcxGridDBBandedTableView
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
          object cxGridDBBandedColumn32: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NAME1'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn33: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SATISF'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object cxGridDBBandedTableView11: TcxGridDBBandedTableView
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Bands = <
            item
              Caption = 'i'#351'lemler'
            end>
        end
        object cxGridDBBandedTableView12: TcxGridDBBandedTableView
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
          object cxGridDBBandedColumn34: TcxGridDBBandedColumn
            Caption = 'Tanim'
            DataBinding.FieldName = 'TANIM'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn35: TcxGridDBBandedColumn
            Caption = 'Hasta Ad'#305
            DataBinding.FieldName = 'HASTAADI'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn36: TcxGridDBBandedColumn
            Caption = 'Soyad'#305
            DataBinding.FieldName = 'HASTASOYADI'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn37: TcxGridDBBandedColumn
            Caption = 'Hizmet Ad'#305
            DataBinding.FieldName = 'NAME1'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn38: TcxGridDBBandedColumn
            Caption = 'Kurum F'
            DataBinding.FieldName = 'KSATISF'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn39: TcxGridDBBandedColumn
            Caption = 'Hasta F'
            DataBinding.FieldName = 'SATISF'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
        end
        object cxGridLevel3: TcxGridLevel
          Caption = 'Hastalar'
          GridView = cxGridDBTableView1
          Options.DetailFrameColor = clHighlight
        end
      end
      object cxGrid4: TcxGrid
        Left = 0
        Top = 233
        Width = 902
        Height = 246
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
        object cxGridDBTableView2: TcxGridDBTableView
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
          DataController.Filter.Active = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.TranslateLike = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,###.#0'
              Kind = skSum
              FieldName = 'borc'
            end
            item
              Format = '#,###.#0'
              Kind = skSum
              FieldName = 'alacak'
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
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clBlack
          object cxGridDBColumn12: TcxGridDBColumn
            DataBinding.FieldName = 'DosyaNo'
            Width = 45
          end
          object cxGridDBColumn13: TcxGridDBColumn
            DataBinding.FieldName = 'gelisNo'
            Width = 40
          end
          object cxGridDBColumn14: TcxGridDBColumn
            Caption = 'Hasta Ad'#305
            DataBinding.FieldName = 'HASTAADI'
            Width = 108
          end
          object cxGridDBColumn15: TcxGridDBColumn
            Caption = 'Soyad'#305
            DataBinding.FieldName = 'HASTASOYADI'
            Width = 118
          end
          object cxGridDBColumn16: TcxGridDBColumn
            DataBinding.FieldName = 'receteTur'
            Width = 65
          end
          object cxGridDBColumn17: TcxGridDBColumn
            DataBinding.FieldName = 'protokolNo'
            Width = 64
          end
          object cxGridDBColumn18: TcxGridDBColumn
            DataBinding.FieldName = 'doktor'
            Width = 178
          end
          object cxGridDBColumn19: TcxGridDBColumn
            DataBinding.FieldName = 'tarih'
            Width = 75
          end
          object cxGridDBColumn20: TcxGridDBColumn
            DataBinding.FieldName = 'eReceteNo'
            Width = 68
          end
          object cxGridDBColumn21: TcxGridDBColumn
            DataBinding.FieldName = 'HastaBildirim'
            Width = 68
          end
          object cxGridDBColumn22: TcxGridDBColumn
            DataBinding.FieldName = 'EczanedenAlim'
            Width = 77
          end
        end
        object cxGridDBBandedTableView13: TcxGridDBBandedTableView
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
              Column = cxGridDBBandedColumn44
            end
            item
              Kind = skSum
              Column = cxGridDBBandedColumn44
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
          object cxGridDBBandedColumn40: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Tan'#305'm'
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn41: TcxGridDBBandedColumn
            Caption = 'Tan'#305'm Ad'#305
            DataBinding.FieldName = 'ad'
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn42: TcxGridDBBandedColumn
            Caption = 'Toplam'
            DataBinding.FieldName = 'adet'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn43: TcxGridDBBandedColumn
            DataBinding.FieldName = 'kurumT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,###.#0'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn44: TcxGridDBBandedColumn
            DataBinding.FieldName = 'hastaT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,###.#0'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
        object cxGridDBBandedTableView14: TcxGridDBBandedTableView
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
          object cxGridDBBandedColumn45: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NAME1'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn46: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SATISF'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object cxGridDBBandedTableView15: TcxGridDBBandedTableView
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Bands = <
            item
              Caption = 'i'#351'lemler'
            end>
        end
        object cxGridDBBandedTableView16: TcxGridDBBandedTableView
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
          object cxGridDBBandedColumn47: TcxGridDBBandedColumn
            Caption = 'Tanim'
            DataBinding.FieldName = 'TANIM'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn48: TcxGridDBBandedColumn
            Caption = 'Hasta Ad'#305
            DataBinding.FieldName = 'HASTAADI'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn49: TcxGridDBBandedColumn
            Caption = 'Soyad'#305
            DataBinding.FieldName = 'HASTASOYADI'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn50: TcxGridDBBandedColumn
            Caption = 'Hizmet Ad'#305
            DataBinding.FieldName = 'NAME1'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn51: TcxGridDBBandedColumn
            Caption = 'Kurum F'
            DataBinding.FieldName = 'KSATISF'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn52: TcxGridDBBandedColumn
            Caption = 'Hasta F'
            DataBinding.FieldName = 'SATISF'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
        end
        object cxGridLevel4: TcxGridLevel
          Caption = 'Hastalar'
          GridView = cxGridDBTableView2
          Options.DetailFrameColor = clHighlight
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Re'#231'eteler (Hasta Gruplu)'
      ImageIndex = 2
      object cxGrid5: TcxGrid
        Left = 0
        Top = 32
        Width = 902
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
        object cxGridRecetelerGrup: TcxGridDBTableView
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
          DataController.DataSource = DataSource4
          DataController.Filter.Active = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.TranslateLike = True
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '# Adet '#304'la'#231
              Kind = skCount
              Position = spFooter
              Column = cxGridRecetelerGrupColumn2
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'ilacKodu'
              Column = cxGridRecetelerGrupColumn1
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
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupByHeaderLayout = ghlHorizontal
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.GroupRowHeight = 25
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 0
          OptionsView.RowSeparatorColor = clBlack
          Styles.Footer = cxStyle2
          Styles.Group = cxStyle1
          object cxGridDBColumn23: TcxGridDBColumn
            DataBinding.FieldName = 'DosyaNo'
            Visible = False
            Width = 31
          end
          object cxGridDBColumn24: TcxGridDBColumn
            DataBinding.FieldName = 'gelisNo'
            Visible = False
            Width = 28
          end
          object cxGridDBColumn25: TcxGridDBColumn
            Caption = 'TC kimlik'
            DataBinding.FieldName = 'TCKIMLIKNO'
            Visible = False
            Width = 44
          end
          object HastaBilgisi: TcxGridDBColumn
            Caption = 'Hasta Bilgileri'
            DataBinding.FieldName = 'HASTAADI'
            Visible = False
            GroupIndex = 0
            Width = 76
          end
          object cxGridDBColumn27: TcxGridDBColumn
            Caption = 'Soyad'#305
            DataBinding.FieldName = 'HASTASOYADI'
            Visible = False
            Width = 81
          end
          object cxGridDBColumn28: TcxGridDBColumn
            DataBinding.FieldName = 'receteTur'
            Visible = False
            Width = 72
          end
          object cxGridDBColumn29: TcxGridDBColumn
            DataBinding.FieldName = 'protokolNo'
            Visible = False
            Width = 209
          end
          object cxGridDBColumn30: TcxGridDBColumn
            DataBinding.FieldName = 'doktor'
            Visible = False
            Width = 127
          end
          object cxGridDBColumn31: TcxGridDBColumn
            DataBinding.FieldName = 'tarih'
            Visible = False
            Width = 62
          end
          object cxGridDBColumn32: TcxGridDBColumn
            DataBinding.FieldName = 'eReceteNo'
            Visible = False
            Width = 47
          end
          object cxGridDBColumn33: TcxGridDBColumn
            DataBinding.FieldName = 'EpoKutuAdet_IlacAdi'
            Visible = False
            Width = 138
          end
          object cxGridDBColumn34: TcxGridDBColumn
            Caption = 'Olu'#351'turma Zaman'#305
            DataBinding.FieldName = 'Date_Create'
            Visible = False
            Width = 87
          end
          object cxGridDBColumn35: TcxGridDBColumn
            DataBinding.FieldName = 'HastaBildirim'
            Visible = False
            Width = 38
          end
          object cxGridDBColumn36: TcxGridDBColumn
            DataBinding.FieldName = 'EczanedenAlim'
            Visible = False
            Width = 35
          end
          object cxGridDBColumn37: TcxGridDBColumn
            Caption = 'Re'#231'ete Bilgileri'
            DataBinding.FieldName = 'id'
            Visible = False
            GroupIndex = 1
            Width = 20
          end
          object cxGridRecetelerGrupColumn1: TcxGridDBColumn
            Caption = #304'la'#231' Kodu'
            DataBinding.FieldName = 'ilacKodu'
            Width = 89
          end
          object cxGridRecetelerGrupColumn2: TcxGridDBColumn
            Caption = #304'la'#231' Ad'#305
            DataBinding.FieldName = 'ilacAdi'
            Width = 303
          end
          object cxGridRecetelerGrupColumn3: TcxGridDBColumn
            Caption = 'Kutu Adet'
            DataBinding.FieldName = 'adet'
            Width = 57
          end
          object cxGridRecetelerGrupColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'kullanimAdet'
            Visible = False
            Width = 45
          end
          object cxGridRecetelerGrupColumn5: TcxGridDBColumn
            Caption = 'Doz'
            DataBinding.FieldName = 'doz'
            Width = 42
          end
          object cxGridRecetelerGrupColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'kullanimZaman'
            Visible = False
            Width = 125
          end
          object cxGridRecetelerGrupColumn7: TcxGridDBColumn
            Caption = 'Peryot Birim'
            DataBinding.FieldName = 'kullanZamanUnit'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'G'#252'n'
                ImageIndex = 0
                Value = '3'
              end
              item
                Description = 'Hafta'
                Value = '4'
              end>
            Width = 65
          end
          object cxGridRecetelerGrupColumn8: TcxGridDBColumn
            Caption = 'Kullanim Yolu'
            DataBinding.FieldName = 'kullanimYolu'
            Width = 299
          end
        end
        object cxGridDBBandedTableView17: TcxGridDBBandedTableView
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
              Column = cxGridDBBandedColumn57
            end
            item
              Kind = skSum
              Column = cxGridDBBandedColumn57
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
          object cxGridDBBandedColumn53: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Tan'#305'm'
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn54: TcxGridDBBandedColumn
            Caption = 'Tan'#305'm Ad'#305
            DataBinding.FieldName = 'ad'
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn55: TcxGridDBBandedColumn
            Caption = 'Toplam'
            DataBinding.FieldName = 'adet'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn56: TcxGridDBBandedColumn
            DataBinding.FieldName = 'kurumT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,###.#0'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn57: TcxGridDBBandedColumn
            DataBinding.FieldName = 'hastaT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,###.#0'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
        object cxGridDBBandedTableView18: TcxGridDBBandedTableView
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
          object cxGridDBBandedColumn58: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NAME1'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn59: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SATISF'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object cxGridDBBandedTableView19: TcxGridDBBandedTableView
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Bands = <
            item
              Caption = 'i'#351'lemler'
            end>
        end
        object cxGridDBBandedTableView20: TcxGridDBBandedTableView
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
          object cxGridDBBandedColumn60: TcxGridDBBandedColumn
            Caption = 'Tanim'
            DataBinding.FieldName = 'TANIM'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn61: TcxGridDBBandedColumn
            Caption = 'Hasta Ad'#305
            DataBinding.FieldName = 'HASTAADI'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn62: TcxGridDBBandedColumn
            Caption = 'Soyad'#305
            DataBinding.FieldName = 'HASTASOYADI'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn63: TcxGridDBBandedColumn
            Caption = 'Hizmet Ad'#305
            DataBinding.FieldName = 'NAME1'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn64: TcxGridDBBandedColumn
            Caption = 'Kurum F'
            DataBinding.FieldName = 'KSATISF'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn65: TcxGridDBBandedColumn
            Caption = 'Hasta F'
            DataBinding.FieldName = 'SATISF'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
        end
        object cxGridLevel5: TcxGridLevel
          Caption = 'Hastalar'
          GridView = cxGridRecetelerGrup
          Options.DetailFrameColor = clHighlight
        end
      end
      object Recete_Hasta_Grup_Top_Panel: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 1
        Height = 32
        Width = 902
        object txtHastaBilgisi: TcxTextEdit
          Tag = -100
          Left = 301
          Top = 2
          Align = alClient
          ParentFont = False
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.OnChange = TopPanelPropertiesChange
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 599
        end
        object cxLabel1: TcxLabel
          Left = 2
          Top = 2
          Align = alLeft
          AutoSize = False
          Caption = 'Grup Bilgisi '#304#231'inde Ge'#231'en ifadeye G'#246're Filtrele'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 28
          Width = 299
          AnchorX = 152
          AnchorY = 16
        end
      end
    end
  end
  object ADO_Receteler: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'exec sp_Receteler '#39#39','#39'20170105'#39','#39'20180605'#39','#39#39','#39'0001'#39)
    Left = 136
    Top = 122
  end
  object Ds_cxGrid2: TDataSource
    DataSet = ADO_Receteler
    Left = 134
    Top = 74
  end
  object ADO_ReceteDetay: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from receteDetay')
    Left = 392
    Top = 98
  end
  object DataSource1: TDataSource
    DataSet = ADO_ReceteDetay
    Left = 454
    Top = 114
  end
  object ADO_toplam: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select ilacKodu,ilacAdi,sum(adet) toplamAdet , '
      'sum (kullanimAdet*kullanimadet2) toplamDoz from recete R'
      'join receteDetay RD on R.id = RD.receteId'
      'group by ilacKodu,ilacAdi')
    Left = 560
    Top = 114
  end
  object DataSource2: TDataSource
    DataSet = ADO_toplam
    Left = 614
    Top = 114
  end
  object DataSource3: TDataSource
    DataSet = ADO_Hast
    Left = 710
    Top = 130
  end
  object ADO_Hast: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select ilacKodu,ilacAdi,sum(adet) toplamAdet , '
      'sum (kullanimAdet*kullanimadet2) toplamDoz from recete R'
      'join receteDetay RD on R.id = RD.receteId'
      'group by ilacKodu,ilacAdi')
    Left = 712
    Top = 82
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 40
    Top = 176
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16571857
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 64
    end
  end
  object Ado_Receteler_Grup: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'exec sp_Receteler '#39'20150101'#39','#39'20170330'#39','#39'G'#39)
    Left = 304
    Top = 130
  end
  object DataSource4: TDataSource
    DataSet = Ado_Receteler_Grup
    Left = 302
    Top = 178
  end
  object PopupMenu1: TPopupMenu
    Left = 512
    Top = 200
    object D1: TMenuItem
      Caption = 'Detaylar'#305' A'#231
      OnClick = D1Click
    end
    object D2: TMenuItem
      Caption = 'Detaylar'#305' Kapat'
      OnClick = D2Click
    end
    object E1: TMenuItem
      Tag = 1
      Caption = 'Excele G'#246'nder'
    end
    object Y1: TMenuItem
      Caption = 'Yazd'#305'r'
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 16
    Top = 96
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clBtnFace
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16777088
      TextColor = clRed
    end
  end
end
