object frmTakipKontrol: TfrmTakipKontrol
  Left = 99
  Top = 44
  Caption = 'frmTakipKontrol'
  ClientHeight = 665
  ClientWidth = 1292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Progres: TsGauge
    Left = 0
    Top = 629
    Width = 1292
    Height = 14
    Align = alBottom
    Visible = False
    SkinData.SkinSection = 'GAUGE'
    ForeColor = clBlack
    Progress = 10
    Suffix = '%'
    ExplicitTop = 591
    ExplicitWidth = 1154
  end
  object pnlToolBar: TPanel
    Left = 0
    Top = 0
    Width = 1292
    Height = 32
    Align = alTop
    Color = clBackground
    Font.Charset = TURKISH_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object txtTarih: TcxDateEdit
      Left = 41
      Top = 4
      ParentFont = False
      Properties.DateOnError = deToday
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 121
    end
    object txttarih1: TcxDateEdit
      Left = 164
      Top = 4
      ParentFont = False
      Properties.DateOnError = deToday
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Width = 121
    end
    object hastaTip: TcxRadioGroup
      Left = 289
      Top = 4
      Alignment = alCenterCenter
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Hemodiyaliz'
          Value = '0'
        end
        item
          Caption = 'Periton'
          Value = '1'
        end>
      ItemIndex = 0
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = clBlack
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Height = 24
      Width = 206
    end
    object chkTakip: TCheckBox
      Left = 625
      Top = 9
      Width = 190
      Height = 17
      Caption = 'Takibi Olmayanlar'#305' G'#246'sterme'
      Color = clBtnFace
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
    end
    object ktip: TcxComboBox
      Left = 499
      Top = 4
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 12
      Properties.Items.Strings = (
        '1 - SGK'
        '99 - Yurt D'#305#351#305' Sigortal'#305'lar'
        '8 - '#220'cretli'
        '98 - '#214'zel Kurum - Sigorta'
        'T'#252'm'#252)
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Text = '1 - SGK'
      Width = 120
    end
    object btnList: TcxButton
      Left = 2
      Top = 3
      Width = 37
      Height = 25
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000060000001E000000020000000000000000FFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000C0B0D722D1B23E0020304730000000200000000FFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000005080A6E785361FDA5465CFF612F3EFF0507096E00000010FFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000408
        086A774F5DFCA4465BFF983B4FFFA34055FF412734B404080A2EFFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000003070767744E
        5CFBA4465BFF973A4EFF9C3C50FF8F3F53FF24212B5B00050704FFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000070A0C78734F5DFCA446
        5BFF973A4EFF9C3C50FF913E52FF2C27336D0000000000000000FFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000070A0C757D5160FFA4465BFF973A
        4EFF9B3C50FF933E52FF3328357B000101000000000000000000FFFFFF000000
        0000000000000000000000000000000000000000000000000011000000330000
        003C000000310000000E000000000306072E7B5261F9A34459FF973A4EFF9B3C
        50FF923E52FF312A377A00010100000000000000000000000000FFFFFF000000
        000000000000000000000A0B0B0E2025244B14090B98330809D9632929F76D32
        32FB602627F62D0607D40000007B2D353571A96778FF973449FF9B3C50FF953E
        53FF3429367D0001000000000000000000000000000000000000FFFFFF000000
        000000000000060707063B3B3B81795558F3C8918FFFF9D0C0FFFFEAD4FFFFEC
        D5FFFFE8D2FFF5C9B8FFB26C66FF68383AF5AA9CA2FF9C475BFF953A4FFF3B2B
        388C000102000000000000000000000000000000000000000000FFFFFF000000
        00000000000022222256A37A7CFBFFEAE4FFFFFDEEFFFFE8CEFFFCDDBFFFFCDB
        BDFFFCDDBEFFFFE4C8FFFFF5DBFFF0C1B1FFA76A6BFF747274CA695F666C0509
        0A02000000000000000000000000000000000000000000000000FFFFFF000000
        0000000000096E484BCAFFEDEBFFFFFFFDFFFEECDBFFFBD8B8FFFAD4B3FFFAD6
        B6FFFAD6B5FFFBD7B7FFFCDDC1FFFFF3DBFFECBAADFF3004059F000807000202
        0200000000000000000000000000000000000000000000000000FFFFFF000000
        00000B000144D1A09FFFFFFFFFFFFFFBF7FFFDE5CFFFFCDBBEFFFDE2C8FFFDE4
        CDFFFDE2CAFFFDE0C6FFFCE2C8FFFDE6D1FFFFFBE6FFB06B66FB010000440102
        0200000000000000000000000000000000000000000000000000FFFFFF000000
        000D3D121685FEE1D7FFFFFAF3FFFEEFE1FFFDE4CDFFFDEAD6FFFDF2E6FFFEF4
        EBFFFEF3E9FFFEEFE2FFFDECDBFFFDECDAFFFFF2E0FFF3C9BDFF59282D9D282E
        2D07000000000000000000000000000000000000000000000000FFFFFF000100
        001F682C2EA8FFF3E4FFFEE9D4FFFCDFC5FFFDE6D0FFFEF3E8FFFFFAF6FFFFFC
        FAFFFFFBF8FFFEF7EFFFFEF4E9FFFEF2E6FFFEF2E5FFFFF1E4FF996568C96267
        661F060606000000000000000000000000000000000000000000FFFFFF000400
        0021703333ACFFF0DBFFFBD6B7FFFAD4B2FFFDE9D5FFFEF7EFFFFFFDFBFFFFFF
        FFFFFFFDFBFFFEFAF5FFFEF9F3FFFEF9F3FFFEF8F1FFFFF9F0FFAE8283D27C80
        80270B0B0B000000000000000000000000000000000000000000FFFFFF000200
        001267272996FFEAD2FFFAD4B1FFFAD6B6FFFEECDBFFFEF7F0FFFFFBF8FFFFFC
        FAFFFFFCF9FFFFFBF8FFFFFCFAFFFFFDFCFFFFFDFAFFFFF7F1FFB08789C59093
        931B242424001C1C1C001D1D1D001D1D1D001D1D1D001D1D1D00FFFFFF000000
        00003C050957FAD0BEFFFEE2C5FFFCE0C6FFFEEEDEFFFEF5EBFFFEF7F0FFFEF9
        F3FFFFFBF6FFFFFDFBFFFFFFFEFFFFFFFFFFFFFFFFFFF7E1DEFFA98B8E9E8B8F
        8E076B6B6B006E6E6E006E6E6E006E6E6E006E6E6E006E6E6E00FFFFFF000000
        00000700000DC57B75E5FFF8E0FFFDE7D2FFFDEDDCFFFEF1E3FFFEF2E7FFFEF5
        EBFFFFFAF5FFFFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFDEBDBEF5A8A3A45D2020
        2000000000000000000000000000000000000000000000000000FFFFFF000000
        0000000000004F0B0D66F7CBBDFFFFF7E2FFFDEBD8FFFDEDDCFFFDEEDEFFFDF1
        E4FFFEF8F0FFFFFDFAFFFFFEFDFFFFFFFFFFF7E4E3FFC0ACAEACA4A6A6222020
        20001A1A1A001B1B1B001B1B1B001B1B1B001B1B1B001B1B1B00FFFFFF000000
        000000000000000000007E212592F0C4B6FFFFFAE5FFFFF1DDFFFEECDAFFFEEF
        DEFFFFF6EAFFFFFEF8FFFFFFFCFFF4DDDBFFCBAEB0C2C4C6C73AE2E2E203E2E2
        E200E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100FFFFFF000000
        000000000000020000001F00010080071059C86D6BDDEDC9B9FFFBE8D5FFFAE5
        D4FFF9E1D4FFEBC8C1FFD8A8A7E6D1B3B68AE0E2E227F6F7F703FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        000000000000020000001E01040078010C009600070797051048A3202780C072
        748CC0878A84CFAAAD54E2DBDC1AFAFEFD00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      TabOrder = 5
      OnClick = btnListClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 32
    Width = 1292
    Height = 597
    Align = alClient
    TabOrder = 1
    object LayoutHizmetler: TdxLayoutControl
      Left = 690
      Top = 1
      Width = 601
      Height = 595
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutHizmetlerSkinLookAndFeel1
      object cxPageControl1: TcxPageControl
        Left = 10
        Top = 10
        Width = 20
        Height = 1200
        Color = 16315635
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        Properties.ActivePage = cxTabSheetMedula
        ClientRectBottom = 1193
        ClientRectLeft = 3
        ClientRectRight = 13
        ClientRectTop = 2
        object cxTabSheetMedula: TcxTabSheet
          Caption = 'Medula'
          ImageIndex = 0
          object Splitter1: TSplitter
            Left = 0
            Top = 380
            Width = 10
            Height = 3
            Cursor = crVSplit
            Align = alTop
            ExplicitTop = 352
            ExplicitWidth = 553
          end
          object Splitter2: TSplitter
            Left = 0
            Top = 652
            Width = 10
            Height = 3
            Cursor = crVSplit
            Align = alTop
            ExplicitTop = 633
            ExplicitWidth = 134
          end
          object grpSeans: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Caption = 'Seanslar'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 380
            Width = 10
            object cxGrid8: TcxGrid
              Left = 3
              Top = 15
              Width = 4
              Height = 355
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
              ExplicitLeft = 2
              ExplicitTop = -2
              ExplicitWidth = 6
              ExplicitHeight = 380
              object cxGridDBTableView4: TcxGridDBTableView
                PopupMenu = PopupMenu2
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
                    Kind = skCount
                    FieldName = 'sutKodu'
                    Column = cxGridDBColumn21
                  end>
                DataController.Summary.SummaryGroups = <>
                Filtering.MRUItemsList = False
                Filtering.ColumnMRUItemsList = False
                FilterRow.InfoText = 'Arama Sat'#305'r'#305
                FilterRow.SeparatorWidth = 2
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
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                OptionsView.HeaderHeight = 20
                OptionsView.Indicator = True
                OptionsView.RowSeparatorColor = clBlack
                object cxGridDBColumn21: TcxGridDBColumn
                  Caption = 'SutKodu'
                  DataBinding.FieldName = 'sutKodu'
                  Width = 58
                end
                object cxGridDBColumn22: TcxGridDBColumn
                  Caption = #304'slemTarihi'
                  DataBinding.FieldName = 'islemTarihi'
                  Width = 87
                end
                object cxGridDBColumn23: TcxGridDBColumn
                  Caption = 'Bran'#351
                  DataBinding.FieldName = 'bransKodu'
                  Width = 37
                end
                object cxGridDBColumn24: TcxGridDBColumn
                  DataBinding.FieldName = 'hizmetSunucuRefNo'
                  Width = 52
                end
                object cxGridDBColumn25: TcxGridDBColumn
                  DataBinding.FieldName = 'islemSiraNo'
                  Width = 60
                end
                object cxGridDBColumn26: TcxGridDBColumn
                  Caption = 'TescilNo'
                  DataBinding.FieldName = 'drTescilNo'
                  Width = 60
                end
                object cxGridDBColumn27: TcxGridDBColumn
                  Caption = 'Adet'
                  DataBinding.FieldName = 'adet'
                  Width = 34
                end
                object cxGridDBColumn28: TcxGridDBColumn
                  Caption = 'RaporTakipno'
                  DataBinding.FieldName = 'raporTakipno'
                  Width = 89
                end
                object cxGridDBColumn29: TcxGridDBColumn
                  Caption = 'Doktor Adi'
                  DataBinding.FieldName = 'DoktorAdi'
                  Width = 86
                end
                object cxGridDBTableView4Column1: TcxGridDBColumn
                  DataBinding.FieldName = 'raporNo'
                end
              end
              object cxGridDBBandedTableView29: TcxGridDBBandedTableView
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
                    Column = cxGridDBBandedColumn96
                  end
                  item
                    Kind = skSum
                    Column = cxGridDBBandedColumn96
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
                object cxGridDBBandedColumn92: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Tan'#305'm'
                  Width = 90
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn93: TcxGridDBBandedColumn
                  Caption = 'Tan'#305'm Ad'#305
                  DataBinding.FieldName = 'ad'
                  Width = 150
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn94: TcxGridDBBandedColumn
                  Caption = 'Toplam'
                  DataBinding.FieldName = 'adet'
                  Width = 70
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn95: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'kurumT'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '#,###.#0'
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn96: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'hastaT'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '#,###.#0'
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
              end
              object cxGridDBBandedTableView30: TcxGridDBBandedTableView
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
                object cxGridDBBandedColumn97: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'NAME1'
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn98: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'SATISF'
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
              end
              object cxGridDBBandedTableView31: TcxGridDBBandedTableView
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Bands = <
                  item
                    Caption = 'i'#351'lemler'
                  end>
              end
              object cxGridDBBandedTableView32: TcxGridDBBandedTableView
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
                object cxGridDBBandedColumn99: TcxGridDBBandedColumn
                  Caption = 'Tanim'
                  DataBinding.FieldName = 'TANIM'
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn100: TcxGridDBBandedColumn
                  Caption = 'Hasta Ad'#305
                  DataBinding.FieldName = 'HASTAADI'
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn101: TcxGridDBBandedColumn
                  Caption = 'Soyad'#305
                  DataBinding.FieldName = 'HASTASOYADI'
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn102: TcxGridDBBandedColumn
                  Caption = 'Hizmet Ad'#305
                  DataBinding.FieldName = 'NAME1'
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn103: TcxGridDBBandedColumn
                  Caption = 'Kurum F'
                  DataBinding.FieldName = 'KSATISF'
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn104: TcxGridDBBandedColumn
                  Caption = 'Hasta F'
                  DataBinding.FieldName = 'SATISF'
                  Position.BandIndex = 0
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel7: TcxGridLevel
                Caption = 'Hastalar'
                GridView = cxGridDBTableView4
                Options.DetailFrameColor = clHighlight
              end
            end
          end
          object grpTahlil: TcxGroupBox
            Left = 0
            Top = 383
            Align = alTop
            Caption = 'Tahlil'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 1
            Height = 269
            Width = 10
            object cxGrid2: TcxGrid
              Left = 3
              Top = 15
              Width = 4
              Height = 244
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
              ExplicitLeft = 2
              ExplicitTop = -2
              ExplicitWidth = 6
              ExplicitHeight = 269
              object Tahlil: TcxGridDBTableView
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
                    Kind = skCount
                    FieldName = 'sutKodu'
                    Column = TahlilsutKodu
                  end>
                DataController.Summary.SummaryGroups = <>
                Filtering.MRUItemsList = False
                Filtering.ColumnMRUItemsList = False
                FilterRow.InfoText = 'Arama Sat'#305'r'#305
                FilterRow.SeparatorWidth = 2
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
                OptionsView.FooterAutoHeight = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                OptionsView.RowSeparatorColor = clBlack
                object TahliltakipNo: TcxGridDBColumn
                  DataBinding.FieldName = 'takipNo'
                  Visible = False
                end
                object TahlilsutKodu: TcxGridDBColumn
                  Caption = 'SutKodu'
                  DataBinding.FieldName = 'sutKodu'
                  HeaderAlignmentHorz = taCenter
                  Width = 50
                end
                object TahlilTanim: TcxGridDBColumn
                  DataBinding.FieldName = 'Tanim'
                  HeaderAlignmentHorz = taCenter
                  Width = 100
                end
                object Tahlilname: TcxGridDBColumn
                  Caption = 'Tan'#305'm'
                  DataBinding.FieldName = 'name'
                  Visible = False
                  Width = 100
                end
                object TahlilislemTarihi: TcxGridDBColumn
                  Caption = #304#351'lem Tarihi'
                  DataBinding.FieldName = 'islemTarihi'
                  HeaderAlignmentHorz = taCenter
                  Width = 65
                end
                object TahlilbransKodu: TcxGridDBColumn
                  Caption = 'Bran'#351
                  DataBinding.FieldName = 'bransKodu'
                  HeaderAlignmentHorz = taCenter
                  Width = 35
                end
                object TahlildrTescilNo: TcxGridDBColumn
                  DataBinding.FieldName = 'drTescilNo'
                  HeaderAlignmentHorz = taCenter
                  Width = 50
                end
                object Tahlilsonuc: TcxGridDBColumn
                  Caption = 'Sonu'#231
                  DataBinding.FieldName = 'sonuc'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  HeaderAlignmentHorz = taCenter
                  Width = 57
                end
                object Tahlilbirim: TcxGridDBColumn
                  Caption = 'Birim'
                  DataBinding.FieldName = 'birim'
                  HeaderAlignmentHorz = taCenter
                  Width = 60
                end
                object TahlilhizmetSunucuRefNo: TcxGridDBColumn
                  DataBinding.FieldName = 'hizmetSunucuRefNo'
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
                GridView = Tahlil
                Options.DetailFrameColor = clHighlight
              end
            end
          end
          object grpRad: TcxGroupBox
            Left = 0
            Top = 655
            Align = alTop
            Caption = 'Radyoloji'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 2
            Height = 105
            Width = 10
            object cxGrid5: TcxGrid
              Left = 3
              Top = 15
              Width = 4
              Height = 80
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
              ExplicitLeft = 2
              ExplicitTop = -2
              ExplicitWidth = 6
              ExplicitHeight = 105
              object Rad: TcxGridDBTableView
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
                DataController.DataSource = DataSource6
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
                object cxGridDBColumn7: TcxGridDBColumn
                  Caption = 'SutKodu'
                  DataBinding.FieldName = 'sutKodu'
                  Width = 48
                end
                object cxGridDBColumn8: TcxGridDBColumn
                  Caption = 'Tan'#305'm'#305
                  DataBinding.FieldName = 'name'
                  Width = 139
                end
                object cxGridDBColumn9: TcxGridDBColumn
                  Caption = #304'slemTarihi'
                  DataBinding.FieldName = 'islemTarihi'
                  Width = 50
                end
                object cxGridDBColumn10: TcxGridDBColumn
                  DataBinding.FieldName = 'bransKodu'
                  Visible = False
                  Width = 53
                end
                object cxGridDBColumn11: TcxGridDBColumn
                  DataBinding.FieldName = 'hizmetSunucuRefNo'
                  Width = 30
                end
                object cxGridDBColumn13: TcxGridDBColumn
                  DataBinding.FieldName = 'drTescilNo'
                  Visible = False
                  Width = 63
                end
                object RadColumn1: TcxGridDBColumn
                  Caption = 'A'#231'iklama'
                  DataBinding.FieldName = 'aciklama'
                  Width = 138
                end
                object RadColumn2: TcxGridDBColumn
                  DataBinding.FieldName = 'sonuc'
                  Width = 21
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
              object cxGridLevel4: TcxGridLevel
                Caption = 'Hastalar'
                GridView = Rad
                Options.DetailFrameColor = clHighlight
              end
            end
          end
          object grpMalzeme: TcxGroupBox
            Left = 0
            Top = 760
            Align = alClient
            Caption = 'Malzeme'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 3
            Height = 431
            Width = 10
            object cxGrid7: TcxGrid
              Left = 3
              Top = 15
              Width = 4
              Height = 406
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
              ExplicitLeft = 2
              ExplicitTop = -2
              ExplicitWidth = 6
              ExplicitHeight = 431
              object cxGridDBTableView3: TcxGridDBTableView
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
                DataController.Filter.Active = True
                DataController.Filter.TranslateBetween = True
                DataController.Filter.TranslateLike = True
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skCount
                    Column = cxGridDBTableView3islemTarihi
                  end>
                DataController.Summary.SummaryGroups = <>
                Filtering.MRUItemsList = False
                Filtering.ColumnMRUItemsList = False
                FilterRow.InfoText = 'Arama Sat'#305'r'#305
                FilterRow.SeparatorWidth = 2
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
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                OptionsView.RowSeparatorColor = clBlack
                object cxGridDBTableView3islemTarihi: TcxGridDBColumn
                  DataBinding.FieldName = 'islemTarihi'
                  Width = 72
                end
                object cxGridDBTableView3hizmetSunucuRefNo: TcxGridDBColumn
                  DataBinding.FieldName = 'hizmetSunucuRefNo'
                  Width = 53
                end
                object cxGridDBTableView3islemSiraNo: TcxGridDBColumn
                  DataBinding.FieldName = 'islemSiraNo'
                  Width = 40
                end
                object cxGridDBTableView3kodsuzMalzemeAdi: TcxGridDBColumn
                  DataBinding.FieldName = 'kodsuzMalzemeAdi'
                  Width = 221
                end
                object cxGridDBTableView3adet: TcxGridDBColumn
                  DataBinding.FieldName = 'adet'
                  Width = 32
                end
                object cxGridDBTableView3barkod: TcxGridDBColumn
                  DataBinding.FieldName = 'barkod'
                  Width = 60
                end
                object cxGridDBTableView3kodsuzMalzemeFiyati: TcxGridDBColumn
                  DataBinding.FieldName = 'kodsuzMalzemeFiyati'
                  Width = 32
                end
                object cxGridDBTableView3malzemeKodu: TcxGridDBColumn
                  DataBinding.FieldName = 'malzemeKodu'
                  Width = 60
                end
                object cxGridDBTableView3malzemeTuru: TcxGridDBColumn
                  DataBinding.FieldName = 'malzemeTuru'
                  Width = 23
                end
                object cxGridDBTableView3paketHaric: TcxGridDBColumn
                  DataBinding.FieldName = 'paketHaric'
                  Width = 22
                end
                object cxGridDBTableView3ozelDurum: TcxGridDBColumn
                  DataBinding.FieldName = 'ozelDurum'
                  Width = 61
                end
              end
              object cxGridDBBandedTableView25: TcxGridDBBandedTableView
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
                    Column = cxGridDBBandedColumn83
                  end
                  item
                    Kind = skSum
                    Column = cxGridDBBandedColumn83
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
                object cxGridDBBandedColumn79: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Tan'#305'm'
                  Width = 90
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn80: TcxGridDBBandedColumn
                  Caption = 'Tan'#305'm Ad'#305
                  DataBinding.FieldName = 'ad'
                  Width = 150
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn81: TcxGridDBBandedColumn
                  Caption = 'Toplam'
                  DataBinding.FieldName = 'adet'
                  Width = 70
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn82: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'kurumT'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '#,###.#0'
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn83: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'hastaT'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '#,###.#0'
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
              end
              object cxGridDBBandedTableView26: TcxGridDBBandedTableView
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
                object cxGridDBBandedColumn84: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'NAME1'
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn85: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'SATISF'
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
              end
              object cxGridDBBandedTableView27: TcxGridDBBandedTableView
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Bands = <
                  item
                    Caption = 'i'#351'lemler'
                  end>
              end
              object cxGridDBBandedTableView28: TcxGridDBBandedTableView
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
                object cxGridDBBandedColumn86: TcxGridDBBandedColumn
                  Caption = 'Tanim'
                  DataBinding.FieldName = 'TANIM'
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn87: TcxGridDBBandedColumn
                  Caption = 'Hasta Ad'#305
                  DataBinding.FieldName = 'HASTAADI'
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn88: TcxGridDBBandedColumn
                  Caption = 'Soyad'#305
                  DataBinding.FieldName = 'HASTASOYADI'
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn89: TcxGridDBBandedColumn
                  Caption = 'Hizmet Ad'#305
                  DataBinding.FieldName = 'NAME1'
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn90: TcxGridDBBandedColumn
                  Caption = 'Kurum F'
                  DataBinding.FieldName = 'KSATISF'
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cxGridDBBandedColumn91: TcxGridDBBandedColumn
                  Caption = 'Hasta F'
                  DataBinding.FieldName = 'SATISF'
                  Position.BandIndex = 0
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel6: TcxGridLevel
                Caption = 'Hastalar'
                GridView = cxGridDBTableView3
                Options.DetailFrameColor = clHighlight
              end
            end
          end
        end
        object cxTabSheetSistem: TcxTabSheet
          Caption = 'Sistem'
          ImageIndex = 1
          ExplicitTop = 26
          ExplicitWidth = 554
          ExplicitHeight = 1167
        end
      end
      object LayoutHizmetlerGroup_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        LayoutLookAndFeel = dxLayoutHizmetlerSkinLookAndFeel1
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object LayoutHizmetlerItem2: TdxLayoutItem
        LayoutLookAndFeel = dxLayoutHizmetlerSkinLookAndFeel1
        Parent = LayoutHizmetlerGroup_Root
        Control = cxPageControl1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
    object cxPageControl2: TcxPageControl
      Left = 1
      Top = 1
      Width = 689
      Height = 595
      Align = alLeft
      TabOrder = 1
      Properties.ActivePage = cxTabSheetTakipler
      ClientRectBottom = 588
      ClientRectLeft = 3
      ClientRectRight = 682
      ClientRectTop = 26
      object cxTabSheetTakipler: TcxTabSheet
        Caption = 'Takipler'
        ImageIndex = 0
        object Panel1: TPanel
          Left = 0
          Top = 540
          Width = 679
          Height = 22
          Align = alBottom
          TabOrder = 0
          object cxLabel14: TcxLabel
            Left = 1
            Top = 1
            Align = alLeft
            Caption = 'D'#246'nem S.  (704230)'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'mcskin'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'mcskin'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'mcskin'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'mcskin'
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 11
          end
          object cxLabel15: TcxLabel
            Left = 162
            Top = 1
            Align = alLeft
            Caption = 'Donem S. (704234)'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'mcskin'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'mcskin'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'mcskin'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'mcskin'
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 11
          end
          object cxLabel16: TcxLabel
            Left = 319
            Top = 1
            Align = alLeft
            Caption = 'Donem S. (704233)'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'mcskin'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'mcskin'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'mcskin'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'mcskin'
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            AnchorY = 11
          end
          object txt230Donem: TcxTextEdit
            Left = 119
            Top = 1
            Align = alLeft
            ParentFont = False
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'mcskin'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'mcskin'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'mcskin'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'mcskin'
            TabOrder = 3
            Text = '0'
            Width = 43
          end
          object txt233Donem: TcxTextEdit
            Left = 433
            Top = 1
            Align = alLeft
            ParentFont = False
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'mcskin'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'mcskin'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'mcskin'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'mcskin'
            TabOrder = 4
            Text = '0'
            Width = 43
          end
          object txt234Donem: TcxTextEdit
            Left = 276
            Top = 1
            Align = alLeft
            ParentFont = False
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'mcskin'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'mcskin'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'mcskin'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'mcskin'
            TabOrder = 5
            Text = '0'
            Width = 43
          end
        end
        object cxGrid4: TcxGrid
          Left = 0
          Top = 0
          Width = 679
          Height = 540
          Align = alClient
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Images = DATALAR.imag24png
          ParentFont = False
          TabOrder = 1
          LevelTabs.ImageBorder = 2
          LevelTabs.Style = 1
          LookAndFeel.Kind = lfOffice11
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
            DataController.DataSource = DataSource4
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
            object cxGridDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'code'
              Width = 59
            end
            object cxGridDBColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'Tanim'
              Width = 299
            end
            object cxGridDBColumn3: TcxGridDBColumn
              DataBinding.FieldName = 'sonuc'
              Width = 122
            end
            object cxGridDBColumn4: TcxGridDBColumn
              DataBinding.FieldName = 'birim'
              Width = 121
            end
            object cxGridDBColumn5: TcxGridDBColumn
              DataBinding.FieldName = 'tip'
              Width = 122
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
          object Takipler: TcxGridTableView
            PopupMenu = PopupMenu1
            OnFocusedRecordChanged = TakiplerFocusedRecordChanged
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = TakipNo
              end
              item
                Kind = skSum
                Column = TakiplerColumn2
              end>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnSorting = False
            OptionsSelection.MultiSelect = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 35
            Styles.Content = cxStyle1
            Styles.OnGetContentStyle = TakiplerStylesGetContentStyle
            object Sec: TcxGridColumn
              PropertiesClassName = 'TcxCheckBoxProperties'
              Width = 29
            end
            object TakipNo: TcxGridColumn
              Caption = 'TakipNo'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
            end
            object HastaNo: TcxGridColumn
              Caption = 'Hasta No'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 50
            end
            object gelisNo: TcxGridColumn
              Caption = 'Geli'#351
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 31
            end
            object Hasta: TcxGridColumn
              Caption = 'Hasta Ad'#305' Soyad'#305
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 134
            end
            object TakipTarih: TcxGridColumn
              Caption = 'Tarih'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 75
            end
            object SIRANO: TcxGridColumn
              Visible = False
            end
            object BasvuruNo: TcxGridColumn
              Caption = 'BasvuruNo'
              Visible = False
            end
            object Durum: TcxGridColumn
              Caption = 'Durum'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = DATALAR.global_img_list4
              Properties.Items = <
                item
                  ImageIndex = 108
                  Value = 9
                end
                item
                  ImageIndex = 121
                  Value = 0
                end
                item
                  ImageIndex = 115
                  Value = 1
                end>
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Width = 36
            end
            object TakiplerColumn1: TcxGridColumn
              Caption = 'Seans Adet'
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Width = 40
            end
            object TakiplerColumn2: TcxGridColumn
              Caption = 'Medula Seans'
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaBottom
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Width = 40
            end
            object TakiplerColumn3: TcxGridColumn
              Caption = 'Tahlil Adet'
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Width = 40
            end
            object TakiplerColumn4: TcxGridColumn
              Caption = 'Medula Tahlil'
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Width = 40
            end
            object TakiplerColumn5: TcxGridColumn
              Caption = 'Rad Adet'
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Width = 40
            end
            object TakiplerColumn6: TcxGridColumn
              Caption = 'Medula Rad'
              DataBinding.ValueType = 'Integer'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Width = 40
            end
            object TakiplerColumn7: TcxGridColumn
              Visible = False
            end
          end
          object cxGrid4Level1: TcxGridLevel
            GridView = Takipler
          end
        end
      end
      object cxTabSheetEAck: TcxTabSheet
        Caption = 'Medula A'#231#305'klama (Epikriz)'
        ImageIndex = 1
        object cxGroupBox1: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Caption = 'A'#231#305'klama'
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Mcskin'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Mcskin'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Mcskin'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Mcskin'
          TabOrder = 0
          Height = 137
          Width = 679
          object cxMemo1: TcxMemo
            Left = 3
            Top = 15
            Align = alTop
            TabOrder = 0
            ExplicitLeft = 2
            ExplicitTop = -3
            ExplicitWidth = 675
            Height = 74
            Width = 673
          end
          object cxButton1_kaydet: TcxButton
            Left = 6
            Top = 93
            Width = 75
            Height = 31
            Caption = 'Kaydet'
            TabOrder = 1
            OnClick = cxButton1_kaydetClick
          end
        end
      end
      object cxTabSheetLog: TcxTabSheet
        Caption = 'Medula G'#246'nderim Durum'
        ImageIndex = 2
        object txtHatalar: TcxMemo
          Left = 0
          Top = 0
          Align = alClient
          Lines.Strings = (
            '')
          TabOrder = 0
          Height = 562
          Width = 679
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 643
    Width = 1292
    Height = 22
    Panels = <
      item
        Width = 200
      end
      item
        Width = 50
      end
      item
        Width = 50
      end>
    SimplePanel = True
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.global_img_list4
    OnPopup = PopupMenu1Popup
    Left = 36
    Top = 166
    object mnSe1: TMenuItem
      Tag = -1
      Caption = 'T'#252'm'#252'n'#252' Se'#231
      OnClick = mnSe1Click
    end
    object mptal1: TMenuItem
      Tag = -2
      Caption = 'T'#252'm'#252' '#304'ptal'
      OnClick = mptal1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object akipDetayFormu1: TMenuItem
      Tag = -3
      Caption = 'Takip Detay Formu'
      OnClick = akipDetayFormu1Click
    end
    object T1: TMenuItem
      Tag = -4
      Caption = 'Tedavi Kart'#305
      OnClick = T1Click
    end
    object S1: TMenuItem
      Tag = -5
      Caption = 'Seans Kart'#305
      OnClick = S1Click
    end
    object H1: TMenuItem
      Tag = -6
      Caption = 'Hasta Kart'#305
      OnClick = H1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object HizmetleriptalEt1: TMenuItem
      Tag = -7
      Caption = 'Seanslar'#305' '#304'ptal Et'
      Enabled = False
      ImageIndex = -7
      Visible = False
      OnClick = HizmetleriptalEt1Click
    end
    object ahlilleriptalEt1: TMenuItem
      Tag = -8
      Caption = 'Tahlilleri '#304'ptal Et'
      ImageIndex = -8
      OnClick = HizmetleriptalEt1Click
    end
    object MalzemeptalEt1: TMenuItem
      Tag = -9
      Caption = 'Malzeme '#304'ptal Et'
      OnClick = HizmetleriptalEt1Click
    end
    object R1: TMenuItem
      Tag = -10
      Caption = 'Radyoloji '#304'ptal'
      OnClick = HizmetleriptalEt1Click
    end
    object mHizmetleriptalEt1: TMenuItem
      Tag = -11
      Caption = 'T'#252'm Hizmetleri '#304'ptal Et'
      Enabled = False
      ImageIndex = 131
      Visible = False
      OnClick = HizmetleriptalEt1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object SeanslarSistemeYaz1: TMenuItem
      Tag = -12
      Caption = 'Okunan Seanslar'#305' Sisteme Yaz'
      Visible = False
      OnClick = SeanslarSistemeYaz1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object mHizmetleriKaydet1: TMenuItem
      Tag = -13
      Caption = 'T'#252'm Hizmetleri Kaydet'
      ImageIndex = 49
      OnClick = mHizmetleriKaydet1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object FaturayaAt1: TMenuItem
      Tag = -14
      Caption = 'Faturaya At'
      ImageIndex = 50
      OnClick = FaturayaAt1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object MedulaSistemKontrol1: TMenuItem
      Tag = -15
      Caption = 'Medula <-> Sistem Kontrol'#252
      OnClick = MedulaSistemKontrol1Click
    end
    object M1: TMenuItem
      Tag = -16
      Caption = 'Medula <-> Sistem Kontrol'#252'   [Hizmet Kod Toplam'#305'n'#305' Do'#287'rula]'
      OnClick = M1Click
    end
    object H2: TMenuItem
      Tag = -17
      Caption = 'Hizmetleri Oku'
      OnClick = H2Click
    end
    object S3: TMenuItem
      Tag = -18
      Caption = 'Seans Hakedi'#351' '#304'cmali'
      OnClick = S3Click
    end
    object L1: TMenuItem
      Caption = 'Listele'
      Visible = False
    end
    object K1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      Visible = False
      OnClick = cxButtonCClick
    end
  end
  object ADO_Tahlil: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'takipNo'
    MasterFields = 'Tak'#305'pNo'
    MasterSource = DataSource2
    TableName = 'gssTakipOkuTahlil'
    Left = 516
    Top = 116
    object ADO_TahliltakipNo: TStringField
      FieldName = 'takipNo'
      Size = 50
    end
    object ADO_TahlilsutKodu: TStringField
      FieldName = 'sutKodu'
    end
    object ADO_TahlilislemTarihi: TStringField
      FieldName = 'islemTarihi'
      Size = 15
    end
    object ADO_TahlilbransKodu: TStringField
      FieldName = 'bransKodu'
      Size = 4
    end
    object ADO_TahlilhizmetSunucuRefNo: TStringField
      FieldName = 'hizmetSunucuRefNo'
    end
    object ADO_TahlilislemSiraNo: TStringField
      FieldName = 'islemSiraNo'
      Size = 15
    end
    object ADO_TahlildrTescilNo: TStringField
      FieldName = 'drTescilNo'
      Size = 10
    end
    object ADO_TahlilAdet: TIntegerField
      FieldName = 'Adet'
    end
    object ADO_TahlilsiraNo: TIntegerField
      FieldName = 'siraNo'
    end
    object ADO_Tahlilname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object ADO_TahlilozelDurum: TStringField
      FieldName = 'ozelDurum'
    end
    object ADO_Tahlilbirim: TStringField
      FieldName = 'birim'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO_TahlillSQL
    Left = 468
    Top = 268
  end
  object ADO_SQL: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from gelisler')
    Left = 284
    Top = 132
  end
  object DataSource2: TDataSource
    DataSet = ADO_SQL
    Left = 292
    Top = 180
  end
  object ADO_Diger: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'takipNo;siraNo'
    MasterFields = 'Tak'#305'pNo'
    MasterSource = DataSource2
    TableName = 'gssTakipOkuDiger'
    Left = 620
    Top = 140
  end
  object DataSource3: TDataSource
    DataSet = ADO_Diger
    Left = 620
    Top = 188
  end
  object ADO_TahlilSonuc: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'takipNo'
    MasterFields = 'Tak'#305'pNo'
    MasterSource = DataSource2
    TableName = 'gssTakipOkuTahlilSonuc'
    Left = 468
    Top = 116
  end
  object DataSource4: TDataSource
    DataSet = ADO_TahlillSQL
    Left = 468
    Top = 156
  end
  object ADO_Malzeme: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'takipNo'
    MasterFields = 'Tak'#305'pNo'
    MasterSource = DataSource2
    TableName = 'gssTakipOkuMalzeme'
    Left = 380
    Top = 180
  end
  object DataSource5: TDataSource
    DataSet = ADO_Malzeme
    Left = 388
    Top = 236
  end
  object DataSource6: TDataSource
    DataSet = ADO_TetkikveRad
    Left = 564
    Top = 188
  end
  object ADO_TetkikveRad: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'takipNo'
    MasterFields = 'Tak'#305'pNo'
    MasterSource = DataSource2
    TableName = 'gssTakipOkuTetkikvdRadyoloji'
    Left = 564
    Top = 148
  end
  object ADO_DigerSistem: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <
      item
        Name = 't'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = '1959MOL'
      end>
    Prepared = True
    SQL.Strings = (
      'select * from gelisdetay gd'
      
        'join gelisler g on g.dosyaNo = gd.dosyaNo and g.gelisNo = gd.gel' +
        'isNo'
      'join doktorlar d on d.kod = substring(gd.doktor,1,4)'
      'where g.tak'#305'pNo =:t')
    Left = 556
    Top = 260
  end
  object DataSource7: TDataSource
    DataSet = ADO_DigerSistem
    Left = 556
    Top = 308
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 184
    Top = 136
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 8421631
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 792
    Top = 248
    object S2: TMenuItem
      Caption = 'Seans'#305' '#304'ptal Et'
      OnClick = S2Click
    end
  end
  object dxLayoutHizmetlerLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 8
    Top = 112
    object dxLayoutHizmetlerSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
    end
  end
  object ADO_TahlillSQL: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Param1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = '1AH3L28'
      end>
    Prepared = True
    SQL.Strings = (
      
        'select t.takipNo,t.sutKodu,t.islemTarihi,t.bransKodu,t.drTescilN' +
        'o,t.name,ts.sonuc,ts.Tanim,ts.birim,t.hizmetSunucuRefNo '
      'from gssTakipOkuTahlil t'
      
        'join gssTakipOkuTahlilSonuc ts on t.takipNo = ts.TakipNo and t.h' +
        'izmetSunucuRefNo = ts.islemSiraNo'
      'where T.takipno =:@tn')
    Left = 464
    Top = 208
  end
end
