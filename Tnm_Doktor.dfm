object frmDoktorlar: TfrmDoktorlar
  Left = 0
  Top = 0
  Caption = 'frmDoktorlar'
  ClientHeight = 438
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxFotoPanel: TcxGroupBox
    Left = 440
    Top = 8
    Caption = 'Foto'
    TabOrder = 0
    Height = 153
    Width = 121
    object Foto: TcxImage
      Left = 3
      Top = 15
      Align = alClient
      Properties.ClearKey = 46
      Properties.PopupMenuLayout.MenuItems = []
      Properties.ReadOnly = False
      Properties.Stretch = True
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 117
      ExplicitHeight = 124
      Height = 99
      Width = 115
    end
    object cxGroupBox1: TcxGroupBox
      Left = 3
      Top = 114
      Align = alBottom
      PanelStyle.Active = True
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = 122
      ExplicitWidth = 117
      Height = 29
      Width = 115
      object cxFotoEkleButton: TcxButton
        Tag = -50
        Left = 2
        Top = 2
        Width = 56
        Height = 25
        Align = alLeft
        Caption = 'Ekle'
        TabOrder = 0
        OnClick = cxFotoEkleButtonClick
      end
      object cxFotoTemizle: TcxButton
        Tag = -51
        Left = 58
        Top = 2
        Width = 56
        Height = 25
        Align = alLeft
        Caption = 'Temizle'
        TabOrder = 1
        OnClick = cxFotoEkleButtonClick
      end
    end
  end
  object GridFirmalar: TcxGridKadir
    Left = 24
    Top = 167
    Width = 721
    Height = 252
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
      FilterBox.CustomizeDialog = False
      FilterBox.Position = fpTop
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.Active = True
      DataController.Filter.TranslateBetween = True
      DataController.Filter.TranslateLike = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = DBGridDoktorCalismaDakika
        end
        item
          Kind = skSum
          Column = DBGridIGUCalismaDakika
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      FilterRow.InfoText = 'Arama Sat'#305'r'#305
      FilterRow.SeparatorWidth = 2
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      NewItemRow.InfoText = 'Yeni Sat'#305'r Ekle'
      NewItemRow.SeparatorColor = clYellow
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.IncSearch = True
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
      OptionsView.HeaderHeight = 30
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clBlack
      object DBGridSirketKod: TcxGridDBColumn
        DataBinding.FieldName = 'SirketKod'
        Visible = False
      end
      object DBGridtanimi: TcxGridDBColumn
        Caption = 'Firma Tanimi'
        DataBinding.FieldName = 'tanimi'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 250
      end
      object DBGridsubeKod: TcxGridDBColumn
        DataBinding.FieldName = 'subeKod'
        Visible = False
      end
      object DBGridsubeTanim: TcxGridDBColumn
        Caption = #350'ube Tanim'
        DataBinding.FieldName = 'subeTanim'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object DBGridtehlikeSinifi: TcxGridDBColumn
        Caption = 'T.Sinifi'
        DataBinding.FieldName = 'tehlikeSinifi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 50
      end
      object DBGridcalisanSayi: TcxGridDBColumn
        Caption = #199'.Sayi'
        DataBinding.FieldName = 'calisanSayi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 50
      end
      object DBGridSEHIR: TcxGridDBColumn
        Caption = #350'ehir'
        DataBinding.FieldName = 'SEHIR'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
      end
      object DBGridILCE: TcxGridDBColumn
        Caption = #304'l'#231'e'
        DataBinding.FieldName = 'ILCE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
      end
      object DBGridIGU: TcxGridDBColumn
        DataBinding.FieldName = 'IGU'
        Visible = False
      end
      object DBGridIguAdi: TcxGridDBColumn
        Caption = 'Igu Uzman'
        DataBinding.FieldName = 'IguAdi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
      end
      object DBGridsubeDoktor: TcxGridDBColumn
        DataBinding.FieldName = 'subeDoktor'
        Visible = False
      end
      object DBGriddoktorAdi: TcxGridDBColumn
        Caption = 'Doktor'
        DataBinding.FieldName = 'doktorAdi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 120
      end
      object DBGridDoktorCalismaDakika: TcxGridDBColumn
        Caption = 'Dr. '#199'. Dakika'
        DataBinding.FieldName = 'DoktorCalismaDakika'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
      end
      object DBGridIGUCalismaDakika: TcxGridDBColumn
        Caption = #304'g.'#199'.Dakika'
        DataBinding.FieldName = 'IGUCalismaDakika'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
      end
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
end
