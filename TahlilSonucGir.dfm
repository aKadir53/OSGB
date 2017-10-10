object frmTahlilsonucGir: TfrmTahlilsonucGir
  Tag = 200
  Left = 333
  Top = 77
  BorderStyle = bsDialog
  Caption = 'frmTahlilsonucGir'
  ClientHeight = 700
  ClientWidth = 1278
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlOnay: TPanel
    Left = 0
    Top = 648
    Width = 1278
    Height = 52
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
    object btnVazgec: TcxButtonKadir
      Left = 1184
      Top = 1
      Width = 93
      Height = 50
      Align = alRight
      Caption = 'Kapat'
      TabOrder = 0
      OnClick = btnVazgecClick
      NewButtonVisible = False
    end
  end
  object cxGrid2: TcxGrid
    Left = 249
    Top = 19
    Width = 756
    Height = 629
    Align = alLeft
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
    object Sonuc: TcxGridDBTableView
      PopupMenu = otoSonuc
      OnKeyDown = SonucKeyDown
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
      Navigator.Visible = True
      FilterBox.CustomizeDialog = False
      OnEditing = SonucEditing
      OnEditKeyPress = SonucEditKeyPress
      DataController.DataSource = DataSource1
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
      OptionsCustomize.ColumnSorting = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.NavigatorOffset = 20
      OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
      OptionsView.DataRowHeight = 35
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 40
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clBlack
      Styles.Selection = cxStyle2
      object SonucColumn1: TcxGridDBColumn
        Caption = 'DosyaNO'
        DataBinding.FieldName = 'dosyaNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Header = cxStyle1
        Width = 50
      end
      object SonucColumn2: TcxGridDBColumn
        Caption = 'Gelis'
        DataBinding.FieldName = 'gelisNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Header = cxStyle1
        Width = 29
      end
      object SonucColumn3: TcxGridDBColumn
        Caption = 'TestKod'
        DataBinding.FieldName = 'code'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Styles.Header = cxStyle1
        Width = 64
      end
      object SonucColumn4: TcxGridDBColumn
        Caption = 'Test Ad'#305
        DataBinding.FieldName = 'NAME1'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Styles.Header = cxStyle1
        Width = 140
      end
      object SonucColumn5: TcxGridDBColumn
        Caption = 'G.Sonu'#231
        DataBinding.FieldName = 'gd'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle1
        Width = 61
      end
      object SonucColumn6: TcxGridDBColumn
        Caption = #199'.Sonu'#231
        DataBinding.FieldName = 'cd'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle1
        Width = 60
      end
      object SonucColumn7: TcxGridDBColumn
        DataBinding.FieldName = 'SIRANO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle1
      end
      object SonucColumn8: TcxGridDBColumn
        Caption = 'A'#231#305'klama'
        DataBinding.FieldName = 'islemAciklamasi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle1
        Width = 224
      end
      object SonucColumn9: TcxGridDBColumn
        Caption = 'Tarih'
        DataBinding.FieldName = 'TARIH'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle1
        Width = 113
      end
      object SonucColumn10: TcxGridDBColumn
        Caption = 'Kabul Tipi'
        DataBinding.FieldName = 'KabulNo'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          ''
          'T - Tedavi'
          'K - Kontrol')
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 52
      end
    end
    object cxGridLevel1: TcxGridLevel
      Caption = 'Hastalar'
      GridView = Sonuc
      Options.DetailFrameColor = clBlack
      Options.DetailFrameWidth = 0
    end
  end
  object cxGrid3: TcxGrid
    Left = 0
    Top = 19
    Width = 249
    Height = 629
    Touch.ParentTabletOptions = False
    Touch.TabletOptions = [toPressAndHold, toSmoothScrolling]
    Align = alLeft
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LevelTabs.ImageBorder = 2
    LevelTabs.Style = 1
    object Liste: TcxGridDBTableView
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
      OnFocusedRecordChanged = ListeFocusedRecordChanged
      DataController.DataModeController.DetailInSQLMode = True
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.Active = True
      DataController.Filter.TranslateBetween = True
      DataController.Filter.TranslateLike = True
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#.##'
          Kind = skAverage
          Column = ListeDBColumn901940
        end
        item
          Format = '# Adet Kay'#305't Listelendi'
          Kind = skCount
          FieldName = 'dosyaNo'
          Column = Listeh
        end
        item
          Format = '#.##'
          Kind = skAverage
          Column = ListeColumn2
        end
        item
          Format = '#.##'
          Kind = skAverage
          Column = ListeColumn5
        end
        item
          Format = '#.##'
          Kind = skAverage
          Column = ListeColumn6
        end
        item
          Format = '#.##'
          Kind = skAverage
          Column = ListeDBColumn9016203
        end>
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
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.NavigatorOffset = 20
      OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
      OptionsView.DataRowHeight = 35
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 40
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clBlack
      Styles.Selection = cxStyle2
      Styles.Header = cxStyle1
      object ListedosyaNo: TcxGridDBColumn
        DataBinding.FieldName = 'dosyaNo'
        Visible = False
      end
      object ListeColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'g'
        Visible = False
      end
      object ListeColumn10: TcxGridDBColumn
        Caption = 'TcKimlikNo'
        DataBinding.FieldName = 'tc'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 84
      end
      object Listeh: TcxGridDBColumn
        Caption = 'Hasta Ad'#305
        DataBinding.FieldName = 'h'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 217
      end
      object ListeColumn9: TcxGridDBColumn
        DataBinding.FieldName = 'Tarih'
        Visible = False
        Width = 83
      end
      object ListeDBColumn901940: TcxGridDBColumn
        Tag = 901940
        Caption = #220're'
        DataBinding.FieldName = '901940'
        Visible = False
        Width = 40
      end
      object ListeColumn2: TcxGridDBColumn
        Caption = #220're_'#199
        DataBinding.FieldName = '901940c'
        Visible = False
        Width = 40
      end
      object ListeDBColumn902210: TcxGridDBColumn
        Tag = 902210
        Caption = 'Kreatinin'
        DataBinding.FieldName = '902210'
        Visible = False
        Width = 40
      end
      object ListeColumn3: TcxGridDBColumn
        Caption = 'Kreatinin_'#199
        DataBinding.FieldName = '902210c'
        Visible = False
        Width = 40
      end
      object ListeDBColumn903130: TcxGridDBColumn
        Tag = 903130
        Caption = 'Potasyum'
        DataBinding.FieldName = '903130'
        Visible = False
        Width = 40
      end
      object ListeColumn4: TcxGridDBColumn
        Caption = 'Potasyum_'#199
        DataBinding.FieldName = '903130c'
        Visible = False
        Width = 40
      end
      object ListeColumn5: TcxGridDBColumn
        Caption = 'Kt/V'
        DataBinding.FieldName = 'ktv'
        Visible = False
        Width = 30
      end
      object ListeColumn6: TcxGridDBColumn
        Caption = 'URR%'
        DataBinding.FieldName = 'urr'
        Visible = False
        Width = 30
      end
      object ListeDBColumn903670: TcxGridDBColumn
        Tag = 903670
        Caption = 'Sodyum'
        DataBinding.FieldName = '903670'
        Visible = False
        Width = 40
      end
      object ListeDBColumn901910: TcxGridDBColumn
        Tag = 901910
        Caption = 'Kalsiyum'
        DataBinding.FieldName = '901910'
        Visible = False
        Width = 40
      end
      object DuzCa: TcxGridDBColumn
        DataBinding.FieldName = 'DuzCa'
        Visible = False
        Width = 36
      end
      object ListeDBColumn901260: TcxGridDBColumn
        Tag = 901260
        Caption = 'Fosfor'
        DataBinding.FieldName = '901260'
        Visible = False
        Width = 40
      end
      object Caxp: TcxGridDBColumn
        Caption = 'CaXP'
        DataBinding.FieldName = 'Caxp'
        Visible = False
        Width = 34
      end
      object ListeDBColumn900200: TcxGridDBColumn
        Tag = 900200
        Caption = 'ALT'
        DataBinding.FieldName = '900200'
        Visible = False
        Width = 40
      end
      object ListeDBColumn901500: TcxGridDBColumn
        Tag = 901500
        Caption = 'Glukoz'
        DataBinding.FieldName = '901500'
        Visible = False
        Width = 40
      end
      object ListeDBColumn903240: TcxGridDBColumn
        Tag = 903240
        Caption = 'T.Protein'
        DataBinding.FieldName = '903240'
        Visible = False
        Width = 40
      end
      object ListeDBColumn900210: TcxGridDBColumn
        Tag = 900210
        Caption = 'Albumin'
        DataBinding.FieldName = '900210'
        Visible = False
        Width = 40
      end
      object ListeDBColumn901620: TcxGridDBColumn
        Tag = 901620
        Caption = 'Hemogram'
        DataBinding.FieldName = '901620'
        Visible = False
        Width = 40
      end
      object ListeDBColumn9016201: TcxGridDBColumn
        Tag = 9016201
        Caption = 'WBC'
        DataBinding.FieldName = '901620.1'
        Visible = False
        Width = 40
      end
      object ListeDBColumn9016202: TcxGridDBColumn
        Tag = 9016202
        Caption = 'RBC'
        DataBinding.FieldName = '901620.2'
        Visible = False
        Width = 40
      end
      object ListeDBColumn9016203: TcxGridDBColumn
        Tag = 9016203
        Caption = 'HGB'
        DataBinding.FieldName = '901620.3'
        Visible = False
        Width = 40
      end
      object ListeDBColumn9016204: TcxGridDBColumn
        Tag = 9016204
        Caption = 'HCT'
        DataBinding.FieldName = '901620.4'
        Visible = False
        Width = 40
      end
      object ListeDBColumn9016205: TcxGridDBColumn
        Tag = 9016205
        Caption = 'PLT'
        DataBinding.FieldName = '901620.5'
        Visible = False
        Width = 40
      end
      object ListeDBColumn9016206: TcxGridDBColumn
        Tag = 9016206
        Caption = 'MPV'
        DataBinding.FieldName = '901620.6'
        Visible = False
        Width = 40
      end
      object ListeDBColumn9016207: TcxGridDBColumn
        Tag = 9016207
        Caption = 'MCV'
        DataBinding.FieldName = '901620.7'
        Visible = False
        Width = 40
      end
      object ListeDBColumn9016208: TcxGridDBColumn
        Tag = 9016208
        Caption = 'MCH'
        DataBinding.FieldName = '901620.8'
        Visible = False
        Width = 40
      end
      object ListeDBColumn901020: TcxGridDBColumn
        Tag = 901020
        Caption = 'S.Demiri'
        DataBinding.FieldName = '901020'
        Visible = False
        Width = 40
      end
      object ListeDBColumn901040: TcxGridDBColumn
        Tag = 901040
        Caption = 'SDBK'
        DataBinding.FieldName = '901040'
        Visible = False
        Width = 40
      end
      object ListeDBColumn901220: TcxGridDBColumn
        Tag = 901220
        Caption = 'Ferritin'
        DataBinding.FieldName = '901220'
        Visible = False
        Width = 40
      end
      object Ts: TcxGridDBColumn
        Caption = 'TS%'
        DataBinding.FieldName = 'TS'
        Visible = False
        Width = 41
      end
      object ListeDBColumn904120: TcxGridDBColumn
        Tag = 904120
        Caption = #220'rik Asit'
        DataBinding.FieldName = '904120'
        Visible = False
        Width = 40
      end
      object ListeDBColumn900900: TcxGridDBColumn
        Tag = 900900
        Caption = 'CRP'
        DataBinding.FieldName = '900900'
        Visible = False
        Width = 40
      end
      object ListeDBColumn900681: TcxGridDBColumn
        Tag = 900681
        Caption = 'Bikarbonat'
        DataBinding.FieldName = '900681'
        Visible = False
        Width = 40
      end
      object ListeDBColumn900340: TcxGridDBColumn
        Tag = 900340
        Caption = 'ALP'
        DataBinding.FieldName = '900340'
        Visible = False
        Width = 40
      end
      object ListeDBColumn902980: TcxGridDBColumn
        Tag = 902980
        Caption = 'PTH'
        DataBinding.FieldName = '902980'
        Visible = False
        Width = 40
      end
      object ListeDBColumn901450: TcxGridDBColumn
        Tag = 901450
        Caption = 'HbA1c'
        DataBinding.FieldName = '901460'
        Visible = False
        Width = 40
      end
      object ListeDBColumn907440: TcxGridDBColumn
        Tag = 907440
        Caption = 'HBsAg'
        DataBinding.FieldName = '907440'
        Visible = False
        Width = 40
      end
      object ListeDBColumn906610: TcxGridDBColumn
        Tag = 906610
        Caption = 'Anti HBs'
        DataBinding.FieldName = '906610'
        Visible = False
        Width = 40
      end
      object ListeDBColumn906630: TcxGridDBColumn
        Tag = 906630
        Caption = 'Anti HCV'
        DataBinding.FieldName = '906630'
        Visible = False
        Width = 40
      end
      object ListeDBColumn906660: TcxGridDBColumn
        Tag = 906660
        Caption = 'Anti HIV'
        DataBinding.FieldName = '906660'
        Visible = False
        Width = 40
      end
      object ListeDBColumn902110: TcxGridDBColumn
        Tag = 902110
        Caption = 'T.Kolesterol'
        DataBinding.FieldName = '902110'
        Visible = False
        Width = 40
      end
      object ListeDBColumn902290: TcxGridDBColumn
        Tag = 902290
        Caption = 'LDL Kolesterol'
        DataBinding.FieldName = '902290'
        Visible = False
        Width = 40
      end
      object ListeDBColumn901580: TcxGridDBColumn
        Tag = 901580
        Caption = 'HDL Kolesterol'
        DataBinding.FieldName = '901580'
        Visible = False
        Width = 40
      end
      object ListeDBColumn903990: TcxGridDBColumn
        Tag = 903990
        Caption = 'Trigliserit'
        DataBinding.FieldName = '903990'
        Visible = False
        Width = 40
      end
      object ListeDBColumn530100: TcxGridDBColumn
        Tag = 530100
        Caption = 'EKG'
        DataBinding.FieldName = '530100'
        Visible = False
        Width = 40
      end
      object ListeDBColumn801840: TcxGridDBColumn
        Tag = 801840
        Caption = 'Tele Kar.'
        DataBinding.FieldName = '801840'
        Visible = False
        Width = 40
      end
      object ListeDBColumn705140: TcxGridDBColumn
        Tag = 705140
        Caption = 'Kan Grubu'
        DataBinding.FieldName = '705140'
        Visible = False
        Width = 40
      end
      object ListeColumn7: TcxGridDBColumn
        DataBinding.FieldName = 'tak'#305'pno'
        Visible = False
      end
      object ListeColumn8: TcxGridDBColumn
        DataBinding.FieldName = 'basvuruno'
        Visible = False
      end
    end
    object cxGridLevel3: TcxGridLevel
      Caption = 'Hastalar'
      GridView = Liste
      Options.DetailFrameColor = clBlack
      Options.DetailFrameWidth = 0
    end
  end
  object Button2: TButton
    Left = 536
    Top = 34
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
    Visible = False
    OnClick = Button2Click
  end
  object cxGroupBox1: TcxGroupBox
    Left = 1005
    Top = 19
    Align = alClient
    Caption = #214'nceki De'#287'erler (Son 6 Ay)'
    TabOrder = 4
    Height = 629
    Width = 273
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 267
      Height = 299
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
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 269
      ExplicitHeight = 324
      object cxGridDBTableView1: TcxGridDBTableView
        OnKeyDown = SonucKeyDown
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
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NavigatorOffset = 20
        OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.RowSeparatorColor = clBlack
        Styles.Content = cxStyle1
        object cxGridDBTableView1Column1: TcxGridDBColumn
          Caption = 'Tarih'
          DataBinding.FieldName = 'TARIH'
          Options.Editing = False
          Width = 103
        end
        object cxGridDBTableView1Column2: TcxGridDBColumn
          Caption = 'Gd'
          DataBinding.FieldName = 'gd'
          Options.Editing = False
          Width = 51
        end
        object cxGridDBTableView1Column3: TcxGridDBColumn
          Caption = 'Cd'
          DataBinding.FieldName = 'cd'
          Options.Editing = False
          Width = 48
        end
        object cxGridDBTableView1Column4: TcxGridDBColumn
          Caption = 'Kabul Tipi'
          DataBinding.FieldName = 'KabulNo'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Width = 54
        end
      end
      object cxGridLevel2: TcxGridLevel
        Caption = 'Hastalar'
        GridView = cxGridDBTableView1
        Options.DetailFrameColor = clBlack
        Options.DetailFrameWidth = 0
      end
    end
    object pnlKlavye: TcxGroupBox
      Left = 3
      Top = 314
      Align = alBottom
      PanelStyle.Active = True
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = 322
      ExplicitWidth = 269
      Height = 305
      Width = 267
      object Button1: TButton
        Left = 190
        Top = 2
        Width = 75
        Height = 42
        Hint = 'Klavye Pad Kapat'
        Align = alRight
        ImageAlignment = iaCenter
        ImageIndex = 83
        Images = DATALAR.imag32png
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = Button1Click
        ExplicitLeft = 192
      end
      object TouchKeyboard1: TTouchKeyboard
        Left = 2
        Top = 44
        Width = 263
        Height = 259
        Cursor = crHandPoint
        Align = alBottom
        Color = clSilver
        GradientEnd = 16777088
        GradientStart = 16744448
        Layout = 'NumPad'
        ParentColor = False
        ExplicitWidth = 265
        CustomCaptionOverrides = {
          0100000002000000020000000A45006E007400650072000A4700690072006900
          730002000000124200610063006B007300700061006300650006530069006C00}
      end
    end
  end
  object pnlTop: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 5
    Height = 19
    Width = 1278
    object cxCheckBox1: TcxCheckBox
      Left = 249
      Top = 0
      Caption = 'Radyoloji'
      TabOrder = 0
      Transparent = True
      OnClick = CheckBox1Click
      Width = 81
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO_tetkikler
    Left = 264
    Top = 98
  end
  object ADO_tetkikler: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    AfterScroll = ADO_tetkiklerAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'select hr.dosyaNo,hr.gelisNo,code,NAME1,gd,cd,SIRANO,islemAcikla' +
        'masi,hr.TARIH,h.*,l.*,d.* from hareketler hr  join HastaKart h o' +
        'n h.dosyaNo = hr.dosyaNo  left join labtestler l on l.butkodu = ' +
        'hr.code  left join LabSonucDegerlendirme d on d.dosyaNo = hr.dos' +
        'yaNo and d.gelisNo = hr.gelisNo  '
      
        'where onay = 1 and hr.dosyaNo = '#39'015099'#39' and hr.gelisNo = 2 and ' +
        'abs(l.Tip) = '#39'2'#39' order by l.sira, code ')
    Left = 208
    Top = 96
  end
  object ADO_tetkikEski: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    Left = 424
    Top = 176
  end
  object DataSource2: TDataSource
    DataSet = ADO_tetkikEski
    Left = 464
    Top = 178
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object otoSonuc: TPopupMenu
    Left = 424
    Top = 72
    object T1: TMenuItem
      Caption = 'Test'
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.global_img_list4
    Left = 336
    Top = 56
    object SonuYazdr1: TMenuItem
      Tag = -1
      Caption = 'Sonu'#231' Yazd'#305'r'
      ImageIndex = 8
      OnClick = cxKaydetClick
    end
  end
end
