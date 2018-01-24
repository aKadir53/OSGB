object frmLabaratuvarKabul: TfrmLabaratuvarKabul
  Left = 1
  Top = 1
  Caption = 'frmLabaratuvarKabul'
  ClientHeight = 684
  ClientWidth = 1261
  Color = 13750737
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlToolBar: TPanel
    Left = 0
    Top = 0
    Width = 1261
    Height = 43
    Align = alTop
    Color = clBackground
    Font.Charset = TURKISH_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object txtTarih: TDateEdit
      Left = 561
      Top = 5
      Width = 174
      Height = 33
      Font.Charset = TURKISH_CHARSET
      Font.Color = clBlue
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object chkTarih: TcxCheckBox
      Left = 760
      Top = 16
      Caption = 'Sadece Bu Tarih'
      ParentFont = False
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'UserSkin'
      Style.TextColor = clWhite
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 1
      Transparent = True
      Width = 161
    end
    object btnAra: TcxButtonKadir
      Left = 1
      Top = 1
      Width = 75
      Height = 41
      Align = alLeft
      Caption = 'Liste'
      TabOrder = 2
      OnClick = btnAraClick
      NewButtonVisible = False
    end
    object btnGuncelle: TcxButtonKadir
      Left = 76
      Top = 1
      Width = 75
      Height = 41
      Align = alLeft
      Caption = 'Kabul Sil'
      TabOrder = 3
      OnClick = btnGuncelleClick
      NewButtonVisible = False
    end
    object btnYazdir: TcxButtonKadir
      Left = 151
      Top = 1
      Width = 75
      Height = 41
      Align = alLeft
      Caption = 'Yazd'#305'r'
      TabOrder = 4
      OnClick = btnYazdirClick
      NewButtonVisible = False
    end
    object btnYat: TcxButtonKadir
      Left = 226
      Top = 1
      Width = 75
      Height = 41
      Align = alLeft
      Caption = 'Kabul Ara'
      TabOrder = 5
      OnClick = btnYatClick
      NewButtonVisible = False
    end
  end
  object sayfalar_LabKabul: TPageControl
    Left = 0
    Top = 43
    Width = 1261
    Height = 641
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MultiLine = True
    ParentFont = False
    TabHeight = 25
    TabOrder = 1
    TabPosition = tpBottom
    OnChange = sayfalar_LabKabulChange
    object TabSheet1: TTabSheet
      Caption = 'Kabul Bekleyenler'
      ImageIndex = 38
      object gridGelisler: TAdvStringGrid
        Tag = 200
        Left = 0
        Top = 368
        Width = 869
        Height = 49
        Cursor = crDefault
        Hint = 'Fatura Bilgileri'
        TabStop = False
        Color = clWhite
        ColCount = 11
        Ctl3D = False
        DefaultRowHeight = 21
        DrawingStyle = gdsClassic
        RowCount = 2
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing, goRowSelect]
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        Visible = False
        OnKeyDown = gridGelislerKeyDown
        HoverRowCells = [hcNormal, hcSelected]
        OnClickSort = gridGelislerClickSort
        OnCheckBoxClick = gridGelislerCheckBoxClick
        ActiveCellFont.Charset = TURKISH_CHARSET
        ActiveCellFont.Color = clRed
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        AutoSize = True
        Bands.Active = True
        Bands.PrimaryColor = clWhite
        Bands.SecondaryColor = clBtnFace
        CellNode.ShowTree = False
        ColumnHeaders.Strings = (
          '')
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.ControlStyle = csClassic
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        EnhRowColMove = False
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDownClear = '(All)'
        FixedColWidth = 30
        FixedRowHeight = 23
        FixedFont.Charset = TURKISH_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = []
        Flat = True
        FloatFormat = '%.2f'
        Navigation.AllowClipboardAlways = True
        Navigation.HomeEndKey = heFirstLastRow
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = TURKISH_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = TURKISH_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = TURKISH_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.Borders = pbNoborder
        PrintSettings.Centered = False
        PrintSettings.PageNumSep = '/'
        RowIndicator.Data = {
          46050000424D4605000000000000360000002800000018000000120000000100
          1800000000001005000000000000000000000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFEFDEC6FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFAD6B08B58429D6C6B5FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB58429FFDEADC6
          944AC6944AE7E7DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFBD8C39FFE7BDFFDEB5EFC694B58429C6AD8CFFFFFFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFBD8C39FFE7C6FFB55AFFC67BFFDEB5D6AD6BB58429D6C6
          B5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8C39FFEFD6FFB55AFFAD4AFFB55A
          FFD69CFFDEADC6944AC6944AE7E7E7FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8C39FFF7DEFF
          BD6BFFAD4AFFAD4AFFAD4AFFBD6BFFDEB5EFC694B58429C6AD8CFFFFFFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFBD8C39FFF7E7FFBD6BFFAD4AFFAD4AFFAD4AFFAD4AFFAD4AFFCE8CFFE7C6D6
          AD6BB58429D6C6B5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFBD8C39FFF7E7FFBD6BFFAD4AFFAD4AFFAD4AFFAD4AFFAD
          4AFFAD4AFFB55AFFDEADFFDEB5BD8C39C6944AFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8C39FFF7E7FFC67BFFB55AFFAD4A
          FFAD4AFFAD4AFFAD4AFFAD4AFFBD6BFFE7BDEFCEADB58429C6AD8CFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC6944AFFF7E7FF
          CE8CFFBD6BFFBD6BFFB55AFFB55AFFB55AFFD69CF7E7CEC6944AC6944AE7E7DE
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFBD8C39FFF7E7FFD69CFFC67BFFC67BFFC67BFFCE8CFFEFD6DEBD8CB58429D6
          C6B5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFBD8C39FFF7E7FFDEADFFD694FFD694FFE7C6EFDEC6BD8C
          39B5946BFFF7E7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8C39FFF7E7FFE7BDFFE7BDFFF7DE
          D6AD6BBD8C39DED6CEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8C39FFF7E7FF
          F7DEEFCEADB58429C6AD8CFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFBD8C39FFEFD6C6944AC6944AE7E7DEFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFB58429B58429D6C6B5FF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFF7E7CEFFFFFFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF}
        ScrollWidth = 16
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SelectionColor = clBackground
        SelectionRectangle = True
        SelectionTextColor = clWhite
        SortSettings.Column = 0
        SortSettings.Show = True
        SortSettings.IndexShow = True
        Version = '6.2.6.1'
        WordWrap = False
        ColWidths = (
          30
          12
          12
          12
          12
          12
          12
          12
          12
          12
          12)
        RowHeights = (
          23
          30)
        object txtHatalar: TMemo
          Left = 472
          Top = 240
          Width = 185
          Height = 33
          Lines.Strings = (
            'txtHatalar')
          TabOrder = 2
          Visible = False
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 574
        Height = 568
        Align = alLeft
        Caption = 'Panel8'
        TabOrder = 1
        object cxGrid4: TcxGrid
          Left = 1
          Top = 1
          Width = 572
          Height = 566
          Align = alClient
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LevelTabs.ImageBorder = 2
          LevelTabs.Style = 8
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object cxGridDBTableView3: TcxGridDBTableView
            OnDblClick = cxGridDBTableView3DblClick
            OnKeyDown = cxGridDBTableView3KeyDown
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
            DataController.DataSource = DataSource6
            DataController.Filter.Active = True
            DataController.Filter.AutoDataSetFilter = True
            DataController.Filter.TranslateBetween = True
            DataController.Filter.TranslateLike = True
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '#,###.#0'
                Column = cxGridDBColumn13
              end
              item
                Format = '#,###.#0'
              end
              item
                Format = '#,###.#0'
              end
              item
                Format = '#,###.#0'
              end
              item
                Kind = skSum
                Position = spFooter
                Column = cxGridDBColumn13
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '# Kay'#305't'
                Kind = skCount
                Column = cxGridDBTableView3Column1
              end>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            FilterRow.InfoText = 'Arama Sat'#305'r'#305
            FilterRow.SeparatorColor = clRed
            FilterRow.SeparatorWidth = 2
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsBehavior.AlwaysShowEditor = True
            OptionsBehavior.CellHints = True
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
            OptionsView.HeaderAutoHeight = True
            OptionsView.HeaderHeight = 35
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = clBlack
            Styles.ContentEven = cxStyle1
            Styles.ContentOdd = cxStyle2
            object cxGridDBTableView3Column1: TcxGridDBColumn
              Caption = 'Dosya'
              DataBinding.FieldName = 'dosyaNo'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 67
            end
            object cxGridDBColumn11: TcxGridDBColumn
              DataBinding.FieldName = 'Hasta'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Styles.Header = cxStyle6
              Width = 187
            end
            object cxGridDBColumn12: TcxGridDBColumn
              DataBinding.FieldName = 'Tedavi'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.AssignedValues.DisplayFormat = True
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Styles.Content = cxStyle4
              Styles.Header = cxStyle6
              Width = 45
            end
            object cxGridDBColumn13: TcxGridDBColumn
              Caption = 'Giri'#351' Tarih Saat'
              DataBinding.FieldName = 'HastaGelis'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.AssignedValues.DisplayFormat = True
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Styles.Header = cxStyle6
              Width = 142
            end
            object cxGridDBTableView3Column2: TcxGridDBColumn
              Caption = 'Ya'#351
              DataBinding.FieldName = 'Yas'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 40
            end
            object cxGridDBTableView3Column3: TcxGridDBColumn
              Caption = 'Cinsiyeti'
              DataBinding.FieldName = 'cinsiyet'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 58
            end
          end
          object cxGridLevel3: TcxGridLevel
            Caption = 'Hastalar'
            GridView = cxGridDBTableView3
            Options.DetailFrameColor = clHighlight
          end
        end
      end
      object Panel9: TPanel
        Left = 574
        Top = 0
        Width = 679
        Height = 568
        Align = alClient
        Caption = 'Panel9'
        TabOrder = 2
        object cxGrid6: TcxGrid
          Left = 1
          Top = 1
          Width = 677
          Height = 566
          Align = alClient
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LevelTabs.ImageBorder = 2
          LevelTabs.Style = 8
          object cxGridDBTableView5: TcxGridDBTableView
            PopupMenu = PopupMenu2
            OnKeyDown = cxGridDBTableView3KeyDown
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
            DataController.Filter.AutoDataSetFilter = True
            DataController.Filter.TranslateBetween = True
            DataController.Filter.TranslateLike = True
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '#,###.#0'
                Column = cxGridDBColumn27
              end
              item
                Format = '#,###.#0'
                Column = cxGridDBColumn28
              end
              item
                Format = '#,###.#0'
                Column = cxGridDBColumn29
              end
              item
                Format = '#,###.#0'
                Column = cxGridDBColumn30
              end
              item
                Kind = skSum
                Position = spFooter
                Column = cxGridDBColumn27
              end
              item
                Kind = skSum
                Position = spFooter
                Column = cxGridDBColumn28
              end
              item
                Kind = skSum
                Position = spFooter
                Column = cxGridDBColumn29
              end
              item
                Kind = skSum
                Position = spFooter
                Column = cxGridDBColumn30
              end
              item
                Kind = skSum
                Position = spFooter
                Column = cxGridDBColumn31
              end
              item
                Kind = skSum
                Position = spFooter
                Column = cxGridDBColumn32
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
                Position = spFooter
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '# Kay'#305't'
                Kind = skCount
                Column = cxGridDBColumn30
              end>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            FilterRow.InfoText = 'Arama Sat'#305'r'#305
            FilterRow.SeparatorWidth = 2
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsBehavior.AlwaysShowEditor = True
            OptionsBehavior.CellHints = True
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
            OptionsView.HeaderAutoHeight = True
            OptionsView.HeaderHeight = 30
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = clBlack
            Styles.ContentEven = cxStyle1
            Styles.ContentOdd = cxStyle2
            object cxGridDBColumn25: TcxGridDBColumn
              DataBinding.FieldName = 'Hasta'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle6
              Width = 186
            end
            object cxGridDBColumn26: TcxGridDBColumn
              DataBinding.FieldName = 'Tedavi'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.AssignedValues.DisplayFormat = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              Styles.Content = cxStyle4
              Styles.Header = cxStyle6
              Width = 39
            end
            object cxGridDBColumn27: TcxGridDBColumn
              DataBinding.FieldName = 'HastaGelis'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.AssignedValues.DisplayFormat = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle6
              Width = 70
            end
            object cxGridDBColumn29: TcxGridDBColumn
              Caption = 'Servis'
              DataBinding.FieldName = 'SERVIS'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.AssignedValues.DisplayFormat = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle6
              Width = 54
            end
            object cxGridDBColumn30: TcxGridDBColumn
              DataBinding.FieldName = 'HizmetKodu'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 103
            end
            object cxGridDBColumn31: TcxGridDBColumn
              DataBinding.FieldName = 'HizmetAd'#305
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 199
            end
            object cxGridDBColumn28: TcxGridDBColumn
              Caption = 'Tarihi'
              DataBinding.FieldName = #304'slemGiris'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Styles.Header = cxStyle6
              Width = 137
            end
            object cxGridDBColumn32: TcxGridDBColumn
              Caption = #304'steyen Doktor'
              DataBinding.FieldName = 'Doktor'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 146
            end
            object cxGridDBTableView5Column1: TcxGridDBColumn
              Caption = 'HareketS'#305'ra'
              DataBinding.FieldName = 'sIRANo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 75
            end
          end
          object cxGridLevel5: TcxGridLevel
            Caption = 'Hastalar'
            GridView = cxGridDBTableView5
            Options.DetailFrameColor = clHighlight
          end
        end
      end
      object pnlOnay: TPanel
        Left = 0
        Top = 568
        Width = 1253
        Height = 40
        Align = alBottom
        Color = clBackground
        TabOrder = 3
        DesignSize = (
          1253
          40)
        object txtinfo: TLabel
          Left = 7
          Top = 16
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
        object btnSend: TcxButtonKadir
          Left = 1174
          Top = 2
          Width = 75
          Height = 35
          Anchors = [akTop, akRight]
          Caption = 'Kabul'
          TabOrder = 0
          OnClick = btnSendClick
          NewButtonVisible = False
        end
        object btnTumSend: TcxButtonKadir
          Left = 966
          Top = 2
          Width = 204
          Height = 35
          Anchors = [akTop, akRight]
          Caption = 'T'#252'm Tetkikleri Kabul Et'
          TabOrder = 1
          OnClick = HastannTmTahlilleriniKabulEt1Click
          NewButtonVisible = False
        end
        object btnSend1: TcxButtonKadir
          Tag = -1
          Left = 775
          Top = 2
          Width = 187
          Height = 35
          Anchors = [akTop, akRight]
          Caption = 'Kabul ve Sonu'#231' Gir'
          TabOrder = 2
          OnClick = btnSendClick
          NewButtonVisible = False
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Kabul Edilenler'
      ImageIndex = 72
      object Panel2: TPanel
        Left = 405
        Top = 0
        Width = 848
        Height = 608
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object Panel3: TPanel
          Left = 2
          Top = 2
          Width = 844
          Height = 37
          Align = alTop
          BevelInner = bvLowered
          TabOrder = 0
          object txtDosyaNo: TLabel
            Left = 8
            Top = 8
            Width = 3
            Height = 15
            Font.Charset = TURKISH_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object txtTum: TCheckBox
            Left = 718
            Top = 11
            Width = 113
            Height = 17
            Caption = 'Hasta T'#252'm '#304#351'lemleri'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = txtTumClick
          end
          object txtGrup: TCheckBox
            Left = 178
            Top = 10
            Width = 201
            Height = 17
            Caption = 'Ayn'#305' Gruptakiler Beraber '
            TabOrder = 1
          end
          object CheckBox1: TCheckBox
            Left = 581
            Top = 11
            Width = 131
            Height = 17
            Caption = 'Hizmet Barkodu'
            TabOrder = 2
          end
          object btnBarkodBas: TcxButtonKadir
            Left = 446
            Top = 5
            Width = 120
            Height = 28
            Caption = 'Barkod Bas'
            TabOrder = 3
            OnClick = btnBarkodBasClick
            NewButtonVisible = False
          end
          object btnElleGir: TcxButtonKadir
            Tag = -1
            Left = 5
            Top = 5
            Width = 169
            Height = 28
            Caption = 'Test Sonu'#231'lar'#305'n'#305' Gir '
            TabOrder = 4
            OnClick = btnElleGirClick
            NewButtonVisible = False
          end
        end
        object cxGrid1: TcxGrid
          Left = 2
          Top = 39
          Width = 844
          Height = 567
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
          LookAndFeel.NativeStyle = False
          object gridLabHazir: TcxGridDBTableView
            PopupMenu = PopupMenu3
            OnDblClick = gridLabHazirDblClick
            OnKeyPress = gridLabHazirKeyPress
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
            DataController.DataSource = DataSource1
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.Active = True
            DataController.Filter.TranslateBetween = True
            DataController.Filter.TranslateLike = True
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.OnDetailExpanding = gridLabHazirDataControllerDetailExpanding
            DataController.OnDetailExpanded = gridLabHazirDataControllerDetailExpanded
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            FilterRow.InfoText = 'Arama Sat'#305'r'#305
            FilterRow.SeparatorWidth = 2
            FilterRow.ApplyChanges = fracImmediately
            OptionsBehavior.AlwaysShowEditor = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.ExpandMasterRowOnDblClick = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.NavigatorOffset = 20
            OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = clBlack
            Styles.Content = cxStyle1
            Styles.ContentEven = cxStyle2
            object gridLabHazirColumn19: TcxGridDBColumn
              DataBinding.FieldName = 'ikaz'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = DATALAR.global_img_list4
              Properties.Items = <
                item
                  ImageIndex = 133
                  Value = 1
                end
                item
                  Value = 0
                end>
              Options.Editing = False
              Width = 23
              IsCaptionAssigned = True
            end
            object gridLabHazirColumn1: TcxGridDBColumn
              Caption = 'Dosya No'
              DataBinding.FieldName = 'DosyaNo'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 40
            end
            object gridLabHazirColumn2: TcxGridDBColumn
              Caption = 'Geli'#351
              DataBinding.FieldName = 'GelisNo'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 26
            end
            object gridLabHazirColumn3: TcxGridDBColumn
              DataBinding.FieldName = 'KartDetay'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 28
            end
            object gridLabHazirColumn4: TcxGridDBColumn
              Caption = 'Hasta Ad'#305
              DataBinding.FieldName = 'HastaAd'#305
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 172
            end
            object gridLabHazirColumn5: TcxGridDBColumn
              Caption = 'Ya'#351
              DataBinding.FieldName = 'yas'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 24
            end
            object gridLabHazirColumn6: TcxGridDBColumn
              DataBinding.FieldName = 'Cinsiyet'
              Visible = False
              Options.Editing = False
              Width = 46
            end
            object gridLabHazirColumn7: TcxGridDBColumn
              DataBinding.FieldName = 'KabulTarihi'
              Options.Editing = False
              Width = 109
            end
            object gridLabHazirColumn8: TcxGridDBColumn
              DataBinding.FieldName = 'KabulNo'
              Options.Editing = False
              Width = 79
            end
            object gridLabHazirColumn14: TcxGridDBColumn
              Caption = 'Grup'
              DataBinding.FieldName = 'OZELKOD'
              Options.Editing = False
              Width = 33
            end
            object gridLabHazirColumn9: TcxGridDBColumn
              DataBinding.FieldName = 'TestKodu'
              Options.Editing = False
              Styles.Header = cxStyle3
              Width = 53
            end
            object gridLabHazirColumn10: TcxGridDBColumn
              DataBinding.FieldName = 'TestAd'#305
              Options.Editing = False
              Styles.Content = cxStyle6
              Styles.Header = cxStyle4
              Width = 158
            end
            object gridLabHazirColumn12: TcxGridDBColumn
              Caption = 'Fiyat'
              DataBinding.FieldName = 'SATISF'
              Options.Editing = False
              Width = 20
            end
            object gridLabHazirColumn15: TcxGridDBColumn
              Caption = 'Tahsilat'
              DataBinding.FieldName = 'TahsilatYapildimi'
              Width = 26
            end
            object gridLabHazirColumn11: TcxGridDBColumn
              Caption = 'Onay'
              DataBinding.FieldName = 'sec'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Width = 20
            end
            object gridLabHazirColumn13: TcxGridDBColumn
              Caption = 'Yaz'#305'c'#305
              DataBinding.FieldName = 'yazdirildi'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = DATALAR.global_img_list4
              Properties.Items = <
                item
                  ImageIndex = 76
                  Value = 1
                end
                item
                  Value = 0
                end>
              Width = 26
            end
            object gridLabHazirColumn17: TcxGridDBColumn
              Caption = 'Olu'#351'turma'
              DataBinding.FieldName = 'Date_create'
              Width = 68
            end
            object gridLabHazirColumn16: TcxGridDBColumn
              Caption = 'A'#231'iklama'
              DataBinding.FieldName = 'Sonuc'
              Width = 52
            end
            object gridLabHazirColumn18: TcxGridDBColumn
              DataBinding.FieldName = 'hareketlerSira'
              Options.Editing = False
              Width = 67
            end
            object gridLabHazirColumn20: TcxGridDBColumn
              Caption = 'Ok'
              DataBinding.FieldName = 'disLabSonucOk'
              Width = 24
            end
            object gridLabHazirColumn21: TcxGridDBColumn
              DataBinding.FieldName = 'disLabbarkodNo'
              Options.Editing = False
              Width = 57
            end
          end
          object gridSonuc: TcxGridDBBandedTableView
            DataController.DataModeController.DetailInSQLMode = True
            DataController.DataModeController.GridMode = True
            DataController.DataSource = DataSource8
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            Bands = <
              item
              end>
            object gridSonucColumn1: TcxGridDBBandedColumn
              Caption = 'Parametre Ad'#305
              DataBinding.FieldName = 'parametreadi'
              Options.Editing = False
              Width = 120
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gridSonucColumn4: TcxGridDBBandedColumn
              Caption = 'Sonu'#231
              DataBinding.FieldName = 'sonuc1'
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object gridSonucColumn2: TcxGridDBBandedColumn
              Caption = 'Birim'
              DataBinding.FieldName = 'parametrebirim'
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object gridSonucColumn3: TcxGridDBBandedColumn
              Caption = 'Referans'
              DataBinding.FieldName = 'ref_aciklama'
              Options.Editing = False
              Width = 150
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object gridSonucColumn5: TcxGridDBBandedColumn
              Caption = 'Panik Aral'#305'k'
              DataBinding.FieldName = 'Panik'
              Width = 39
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object gridSonucColumn7: TcxGridDBBandedColumn
              Caption = #304'kaz'
              DataBinding.FieldName = 'ikaz'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = DATALAR.global_img_list4
              Properties.Items = <
                item
                  ImageIndex = 133
                  Value = 'F'
                end
                item
                  Value = 'T'
                end>
              BestFitMaxWidth = 30
              Options.Editing = False
              Width = 40
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
          end
          object cxGrid1Level1: TcxGridLevel
            Caption = 'Hastalar'
            GridView = gridLabHazir
            Options.DetailFrameColor = clBlack
            Options.DetailFrameWidth = 0
            object cxGrid1Level2: TcxGridLevel
              GridView = gridSonuc
            end
          end
        end
        object pnlAciklama: TPanel
          Left = 258
          Top = 73
          Width = 425
          Height = 105
          BevelInner = bvLowered
          TabOrder = 2
          Visible = False
          object Panel1: TPanel
            Left = 2
            Top = 2
            Width = 421
            Height = 22
            Align = alTop
            Caption = 'Tetki A'#231#305'klama'
            TabOrder = 0
            object SpeedButton1: TSpeedButton
              Left = 293
              Top = 0
              Width = 64
              Height = 22
              Caption = 'Kaydet'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
                00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
                00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
                00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
                00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
                00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
                00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
                0003737FFFFFFFFF7F7330099999999900333777777777777733}
              NumGlyphs = 2
              ParentFont = False
              OnClick = SpeedButton1Click
            end
            object SpeedButton2: TSpeedButton
              Left = 359
              Top = 0
              Width = 61
              Height = 22
              Caption = 'Vazge'#231
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333333333333333333333333FFF33FF333FFF339993370733
                999333777FF37FF377733339993000399933333777F777F77733333399970799
                93333333777F7377733333333999399933333333377737773333333333990993
                3333333333737F73333333333331013333333333333777FF3333333333910193
                333333333337773FF3333333399000993333333337377737FF33333399900099
                93333333773777377FF333399930003999333337773777F777FF339993370733
                9993337773337333777333333333333333333333333333333333333333333333
                3333333333333333333333333333333333333333333333333333}
              NumGlyphs = 2
              ParentFont = False
              OnClick = SpeedButton2Click
            end
          end
          object txttext: TMemo
            Left = 2
            Top = 24
            Width = 421
            Height = 79
            Align = alClient
            Lines.Strings = (
              '')
            TabOrder = 1
          end
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 405
        Height = 608
        Align = alLeft
        BevelInner = bvLowered
        TabOrder = 1
        object cxGrid5: TcxGrid
          Left = 2
          Top = 2
          Width = 401
          Height = 604
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
          object cxGridDBTableView4: TcxGridDBTableView
            OnDblClick = cxGridDBTableView4DblClick
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
            DataController.DataSource = DataSource5
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
            OptionsView.NavigatorOffset = 20
            OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = clBlack
            Styles.Content = cxStyle1
            Styles.ContentEven = cxStyle2
            Styles.OnGetContentStyle = cxGridDBTableView4StylesGetContentStyle
            object cxGridDBColumn19: TcxGridDBColumn
              Caption = 'Dosya No'
              DataBinding.FieldName = 'DosyaNo'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 51
            end
            object cxGridDBColumn20: TcxGridDBColumn
              Caption = 'Geli'#351
              DataBinding.FieldName = 'GelisNo'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 20
            end
            object cxGridDBColumn21: TcxGridDBColumn
              DataBinding.FieldName = 'KartDetay'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 20
            end
            object cxGridDBColumn22: TcxGridDBColumn
              Caption = 'Hasta Ad'#305
              DataBinding.FieldName = 'HastaAd'#305
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 139
            end
            object cxGridDBColumn23: TcxGridDBColumn
              Caption = 'Ya'#351
              DataBinding.FieldName = 'yas'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 21
            end
            object cxGridDBColumn24: TcxGridDBColumn
              DataBinding.FieldName = 'Cinsiyet'
              Options.Editing = False
              Width = 50
            end
            object cxGridDBTableView4Column1: TcxGridDBColumn
              Caption = 'Send'
              DataBinding.FieldName = 'Gonder'
              Width = 63
            end
            object cxGridDBTableView4Column2: TcxGridDBColumn
              Caption = 'Run'
              DataBinding.FieldName = 'run'
              Width = 23
            end
          end
          object cxGridLevel4: TcxGridLevel
            Caption = 'Hastalar'
            GridView = cxGridDBTableView4
            Options.DetailFrameColor = clBlack
            Options.DetailFrameWidth = 0
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Sonu'#231' Haz'#305'r'
      ImageIndex = 73
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 1253
        Height = 608
        ActivePage = TabSheet5
        Align = alClient
        TabOrder = 0
        object TabSheet4: TTabSheet
          Caption = 'Sonu'#231'lar'
          object cxGrid2: TcxGrid
            Left = 0
            Top = 0
            Width = 1245
            Height = 577
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
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            object cxGridDBTableView1: TcxGridDBTableView
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
              DataController.DataSource = DataSource7
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
              OptionsView.NavigatorOffset = 20
              OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
              OptionsView.CellAutoHeight = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              OptionsView.RowSeparatorColor = clBlack
              Styles.Content = cxStyle1
              Styles.ContentEven = cxStyle2
              object cxGridDBColumn1: TcxGridDBColumn
                Caption = 'Dosya No'
                DataBinding.FieldName = 'DosyaNo'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 67
              end
              object cxGridDBColumn2: TcxGridDBColumn
                Caption = 'Geli'#351
                DataBinding.FieldName = 'GelisNo'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 30
              end
              object cxGridDBColumn3: TcxGridDBColumn
                DataBinding.FieldName = 'GelisDetay'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 55
              end
              object cxGridDBColumn4: TcxGridDBColumn
                Caption = 'Hasta Ad'#305
                DataBinding.FieldName = 'HastaAdi'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 230
              end
              object cxGridDBTableView1Column1: TcxGridDBColumn
                Caption = 'KabulNo'
                DataBinding.FieldName = 'barkodNo'
                Width = 108
              end
              object cxGridDBTableView1Column2: TcxGridDBColumn
                Caption = 'Test'
                DataBinding.FieldName = 'TestNo'
                Width = 79
              end
              object cxGridDBTableView1Column3: TcxGridDBColumn
                Caption = 'Test Tan'#305'm'#305
                DataBinding.FieldName = 'NAME1'
                Width = 220
              end
              object cxGridDBTableView1Column4: TcxGridDBColumn
                DataBinding.FieldName = 'KabulTarihi'
                Width = 71
              end
              object cxGridDBTableView1Column5: TcxGridDBColumn
                Caption = 'Sonu'#231' Olusturma Tarihi'
                DataBinding.FieldName = 'OlusturmaTarihi'
                Width = 116
              end
            end
            object cxGridLevel1: TcxGridLevel
              Caption = 'Hastalar'
              GridView = cxGridDBTableView1
              Options.DetailFrameColor = clBlack
              Options.DetailFrameWidth = 0
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'D'#305#351' Lab Sonu'#231' Okuma'
          ImageIndex = 1
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 1245
            Height = 28
            Align = alTop
            TabOrder = 0
            object Label1: TLabel
              Left = 965
              Top = 6
              Width = 5
              Height = 16
              Caption = '.'
            end
            object Button2: TButton
              Left = 67
              Top = 0
              Width = 174
              Height = 25
              Caption = 'Sonu'#231'lar'#305' Oku'
              TabOrder = 0
            end
            object chkDisLab: TCheckBox
              Left = 247
              Top = 8
              Width = 174
              Height = 17
              Caption = 'D'#305#351' Lab S'#252'rekli Oku'
              TabOrder = 1
            end
          end
          object txtLogs: TMemo
            Left = 0
            Top = 28
            Width = 1245
            Height = 549
            Align = alClient
            ScrollBars = ssVertical
            TabOrder = 1
          end
        end
      end
    end
  end
  object labKabul: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    AfterScroll = labKabulAfterScroll
    Parameters = <>
    SQL.Strings = (
      'exec sp_labHastaKabul '#39'20071101'#39','#39#39)
    Left = 376
    Top = 154
  end
  object DataSource1: TDataSource
    DataSet = labKabul
    Left = 352
    Top = 186
  end
  object ADO_TESTSONUCLARI_: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'dosyaNo;gelisNo;code;parametre_sira'
    MasterFields = 'DosyaNo;GelisNo;TestKodu'
    MasterSource = DataSource1
    TableName = 'laboratuvar_sonuc'
    Left = 260
    Top = 371
  end
  object DataSource2: TDataSource
    DataSet = ADO_TESTSONUCLARI
    Left = 356
    Top = 299
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 648
    Top = 328
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 16764108
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clMaroon
    end
    object cxStyle11: TcxStyle
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 680
    Top = 328
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 712
    Top = 328
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
  object cxStyleRepository4: TcxStyleRepository
    Left = 624
    Top = 328
    PixelsPerInch = 96
    object cxStyle4: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
  object cxStyleRepository5: TcxStyleRepository
    Left = 592
    Top = 328
    PixelsPerInch = 96
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
  end
  object cxStyleRepository6: TcxStyleRepository
    Left = 608
    Top = 328
    PixelsPerInch = 96
    object cxStyle6: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clMenuHighlight
    end
    object cxStyle7: TcxStyle
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 496
    Top = 389
    object x1: TMenuItem
      Caption = 'x'
      OnClick = x1Click
    end
  end
  object ADO_TESTSONUCONCEKI_: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'dosyaNo;testno'
    MasterFields = 'DosyaNo;TestKodu'
    MasterSource = DataSource1
    TableName = 'laboratuvar_sonuc'
    Left = 428
    Top = 315
  end
  object DataSource3: TDataSource
    DataSet = ADO_TESTSONUCONCEKI
    Left = 428
    Top = 355
  end
  object ADO_SQL3: TADOQuery
    Connection = DATALAR.ADOConnection2
    AfterScroll = ADO_SQL3AfterScroll
    Parameters = <>
    SQL.Strings = (
      'exec sp_LabKabulListesi '#39'20080101'#39)
    Left = 464
    Top = 152
  end
  object DataSource4: TDataSource
    DataSet = ADO_SQL3
    Left = 508
    Top = 152
  end
  object PopupMenu2: TPopupMenu
    Left = 268
    Top = 154
    object HastannTmTahlilleriniKabulEt1: TMenuItem
      Caption = 'Hastan'#305'n T'#252'm Tahlillerini Kabul Et'
      OnClick = HastannTmTahlilleriniKabulEt1Click
    end
  end
  object cxStyleRepository7: TcxStyleRepository
    Left = 736
    Top = 328
    PixelsPerInch = 96
    object cxStyle8: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clActiveBorder
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clScrollBar
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clActiveCaption
    end
  end
  object ADO_TESTSONUCLARI: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    BeforePost = ADO_TESTSONUCLARIBeforePost
    Parameters = <>
    SQL.Strings = (
      'select * from laboratuvar_sonuc'
      ' ')
    Left = 176
    Top = 296
  end
  object ADO_TESTSONUCONCEKI: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    SQL.Strings = (
      'select * from laboratuvar_sonuc'
      ' ')
    Left = 432
    Top = 280
  end
  object labKabul_liste: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'exec sp_labHastaKabul '#39'20071101'#39','#39#39)
    Left = 80
    Top = 178
  end
  object DataSource5: TDataSource
    DataSet = labKabul_liste
    Left = 120
    Top = 178
  end
  object ADO_SQL33: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    AfterScroll = ADO_SQL33AfterScroll
    Parameters = <>
    Left = 40
    Top = 160
  end
  object DataSource6: TDataSource
    DataSet = ADO_SQL33
    Left = 44
    Top = 192
  end
  object PopupMenu3: TPopupMenu
    Left = 460
    Top = 456
    object mnSe1: TMenuItem
      Caption = 'T'#252'm'#252'n'#252' Se'#231
      OnClick = mnSe1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnTekrarYazdrcam1: TMenuItem
      Caption = 'T'#252'm'#252'n'#252' Tekrar Yazd'#305'raca'#287#305'm'
      OnClick = mnTekrarYazdrcam1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object AklamaBilgisi1: TMenuItem
      Caption = 'A'#231#305'klama Bilgisi'
      OnClick = AklamaBilgisi1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object i1: TMenuItem
      Caption = 'inVitro'
      object L1: TMenuItem
        Caption = 'Testleri G'#246'nder'
      end
      object S1: TMenuItem
        Caption = 'Sonu'#231'lar'#305' Al'
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object B1: TMenuItem
        Caption = 'Bekleyen T'#252'm Sonu'#231'lar'#305' Al'
        Visible = False
      end
    end
  end
  object LabSonucHazir: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'exec sp_labHastaKabul '#39'20071101'#39','#39#39)
    Left = 104
    Top = 210
  end
  object DataSource7: TDataSource
    DataSet = LabSonucHazir
    Left = 136
    Top = 218
  end
  object ADO_Result: TADOQuery
    Connection = DATALAR.ADOConnection2
    AfterScroll = ADO_SQL3AfterScroll
    Parameters = <>
    SQL.Strings = (
      'exec sp_LabKabulListesi '#39'20080101'#39)
    Left = 752
    Top = 456
  end
  object DataSource8: TDataSource
    DataSet = ADO_Result
    Left = 780
    Top = 456
  end
  object Timer1: TTimer
    Interval = 1800000
    OnTimer = Timer1Timer
    Left = 1024
  end
  object LabInVitroTest: THTTPRIO
    OnBeforeExecute = LabInVitroTestBeforeExecute
    WSDLLocation = 'http://78.187.200.244/TestEkleWsdl.exe/wsdl/ITESTEKLE'
    Service = 'ITESTEKLEservice'
    Port = 'ITESTEKLEPort'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soUTF8InHeader, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 798
    Top = 164
  end
end
