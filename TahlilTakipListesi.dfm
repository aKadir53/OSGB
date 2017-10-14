object frmTahliltakip: TfrmTahliltakip
  Left = 1
  Top = 1
  Caption = 'Tetkikler'
  ClientHeight = 675
  ClientWidth = 1284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1284
    Height = 675
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.TabPosition = tpBottom
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'McSkin'
    ClientRectBottom = 650
    ClientRectLeft = 4
    ClientRectRight = 1280
    ClientRectTop = 5
    object cxTabSheet1: TcxTabSheet
      Caption = 'Kay'#305'tlar'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object PnltetkikDegerlendir: TcxGroupBox
        Left = 1000
        Top = 33
        Align = alRight
        Caption = 'Tetkik Sonu'#231' De'#287'erlendir'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 0
        Visible = False
        Height = 612
        Width = 276
        object cxPageControlTetkikDegerlendir: TcxPageControl
          Left = 3
          Top = 15
          Width = 270
          Height = 587
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = TetkikDegerlendirSayfa1
          Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGoDialog, pcoGradientClientArea]
          ClientRectBottom = 580
          ClientRectLeft = 3
          ClientRectRight = 263
          ClientRectTop = 26
          object TetkikDegerlendirSayfa1: TcxTabSheet
            Caption = 'Tetkik De'#287'erlendir'
            ImageIndex = 0
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxGrid1: TcxGrid
              Left = 0
              Top = 25
              Width = 260
              Height = 529
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
              object gridTetkikDegerlendir: TcxGridDBTableView
                Navigator.Buttons.First.Visible = False
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.Visible = False
                Navigator.Buttons.Next.Visible = False
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.Visible = False
                Navigator.Buttons.Insert.Visible = False
                Navigator.Buttons.Append.Enabled = False
                Navigator.Buttons.Append.Visible = True
                Navigator.Buttons.Delete.Enabled = False
                Navigator.Buttons.Delete.Visible = False
                Navigator.Buttons.Edit.Visible = True
                Navigator.Buttons.Post.Visible = True
                Navigator.Buttons.Cancel.Visible = True
                Navigator.Buttons.Refresh.Visible = True
                Navigator.Buttons.SaveBookmark.Visible = True
                Navigator.Buttons.GotoBookmark.Visible = True
                Navigator.Buttons.Filter.Visible = True
                Navigator.Visible = True
                FilterBox.CustomizeDialog = False
                DataController.DataModeController.DetailInSQLMode = True
                DataController.DataSource = DataSource3
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
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                OptionsView.NavigatorOffset = 20
                OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
                OptionsView.CellAutoHeight = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                OptionsView.RowSeparatorColor = clBlack
                object cxGridDBColumn1: TcxGridDBColumn
                  Caption = 'De'#287'erlendirme Sonucu'
                  DataBinding.FieldName = 'uyari'
                  Options.Editing = False
                  Styles.Content = cxStyle2
                  Width = 205
                end
                object gridTetkikDegerlendirColumn1: TcxGridDBColumn
                  DataBinding.FieldName = 'Onay'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ValueChecked = 1
                  Properties.ValueUnchecked = '0'
                  Width = 30
                end
              end
              object cxGridLevel2: TcxGridLevel
                Caption = 'Hastalar'
                GridView = gridTetkikDegerlendir
                Options.DetailFrameColor = clBlack
                Options.DetailFrameWidth = 0
              end
            end
            object btnTetkikDegerlendir: TcxButton
              Left = 0
              Top = 0
              Width = 260
              Height = 25
              Align = alTop
              Caption = 'Tetkik Sonu'#231'lar'#305'n'#305' De'#287'erlendir'
              TabOrder = 1
              OnClick = btnTetkikDegerlendirClick
            end
          end
          object TetkikDegerlendirSayfa2: TcxTabSheet
            Caption = 'Tetkik De'#287'. Ayar'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxGrid13: TcxGrid
              Left = 0
              Top = 0
              Width = 260
              Height = 554
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
              LookAndFeel.SkinName = 'UserSkin'
              object gridUyar: TcxGridDBTableView
                PopupMenu = PopupMenu1
                Navigator.Buttons.First.Visible = False
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.Visible = False
                Navigator.Buttons.Next.Visible = False
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.Visible = False
                Navigator.Buttons.Insert.Visible = False
                Navigator.Buttons.Append.Enabled = False
                Navigator.Buttons.Append.Visible = True
                Navigator.Buttons.Delete.Enabled = False
                Navigator.Buttons.Delete.Visible = False
                Navigator.Buttons.Edit.Visible = True
                Navigator.Buttons.Post.Visible = True
                Navigator.Buttons.Cancel.Visible = True
                Navigator.Buttons.Refresh.Visible = True
                Navigator.Buttons.SaveBookmark.Visible = True
                Navigator.Buttons.GotoBookmark.Visible = True
                Navigator.Buttons.Filter.Visible = True
                Navigator.Visible = True
                FilterBox.CustomizeDialog = False
                DataController.DataModeController.DetailInSQLMode = True
                DataController.DataSource = DataSource17
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
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                OptionsView.NavigatorOffset = 20
                OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
                OptionsView.CellAutoHeight = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                OptionsView.RowSeparatorColor = clBlack
                object cxGridDBColumn22: TcxGridDBColumn
                  Caption = 'De'#287'erlendirme Tan'#305'm'#305
                  DataBinding.FieldName = 'tipname'
                  Options.Editing = False
                  Width = 253
                end
                object cxGridDBColumn23: TcxGridDBColumn
                  DataBinding.FieldName = 'uyar'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ValueChecked = 1
                  Properties.ValueUnchecked = '0'
                  Width = 30
                end
                object gridUyarColumn1: TcxGridDBColumn
                  Caption = 'Kriter'
                  DataBinding.FieldName = 'kriter'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.ReadOnly = True
                  Width = 288
                end
              end
              object cxGridLevel13: TcxGridLevel
                Caption = 'Hastalar'
                GridView = gridUyar
                Options.DetailFrameColor = clBlack
                Options.DetailFrameWidth = 0
              end
            end
          end
        end
      end
      object pnlTitle: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'pnlTitle'
        PanelStyle.Active = True
        TabOrder = 1
        Height = 33
        Width = 1276
        object tarih2: TcxDateEdit
          Left = 198
          Top = 2
          Align = alLeft
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          ExplicitHeight = 21
          Width = 121
        end
        object tarih1: TcxDateEdit
          Left = 77
          Top = 2
          Align = alLeft
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          ExplicitHeight = 21
          Width = 121
        end
        object DiyalizTip: TcxRadioGroup
          Left = 319
          Top = 2
          Align = alLeft
          Alignment = alCenterCenter
          ParentFont = False
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Hemodiyaliz'
              Value = 'H'
            end
            item
              Caption = 'Periton Ayaktan'
              Value = 'P'
            end
            item
              Caption = 'Periton Aletli'
              Value = 'A'
            end>
          ItemIndex = 0
          Style.Font.Charset = TURKISH_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Height = 29
          Width = 330
        end
        object chkMisafir: TcxCheckBox
          Left = 649
          Top = 2
          Align = alLeft
          Caption = 'Misafir Hastalar'#305' Listemele'
          Style.TransparentBorder = True
          TabOrder = 3
          Transparent = True
          ExplicitHeight = 0
          Width = 177
        end
        object btnList: TcxButton
          Left = 2
          Top = 2
          Width = 75
          Height = 29
          Align = alLeft
          Caption = 'Listele'
          TabOrder = 4
          OnClick = btnListClick
        end
      end
      object cxGridKadir1: TcxGridKadir
        Left = 0
        Top = 33
        Width = 1000
        Height = 612
        Align = alClient
        TabOrder = 2
        ExcelFileName = 'TahlilSonuclar'#305
        ExceleGonder = True
        object Liste: TcxGridDBBandedTableView
          OnDblClick = ListeDblClick
          OnCustomDrawCell = ListeCustomDrawCell
          DataController.DataSource = DataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 33
          Bands = <
            item
              Caption = 'Kimlik Bilgileri'
              FixedKind = fkLeft
              Styles.Content = cxStyle8
              Styles.Header = cxStyle3
              Width = 388
            end
            item
              Caption = 'Biyokimya'
              Styles.Header = cxStyle3
            end
            item
              Caption = 'Hemogram'
              Styles.Header = cxStyle1
            end
            item
              Caption = 'Marker'
              Styles.Header = cxStyle3
            end
            item
              Caption = 'Radyoloji'
              Styles.Content = cxStyle6
            end
            item
              Caption = 'Medula Bilgileri'
            end>
          object Listetc: TcxGridDBBandedColumn
            Caption = 'T.C. Kimlik No'
            DataBinding.FieldName = 'tc'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 86
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object ListedosyaNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'dosyaNo'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object Listeg: TcxGridDBBandedColumn
            DataBinding.FieldName = 'g'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object Listeh: TcxGridDBBandedColumn
            Caption = 'Hasta Ad'#305
            DataBinding.FieldName = 'h'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object Listeia: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ia'
            Visible = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object ListekabulNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'kabulNo'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object Listektv: TcxGridDBBandedColumn
            Caption = 'Kt/V'
            DataBinding.FieldName = 'ktv'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object ListetakpNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'tak'#305'pNo'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object ListebasvuruNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'basvuruNo'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object Listetarih: TcxGridDBBandedColumn
            Caption = 'Tarih'
            DataBinding.FieldName = 'tarih'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 72
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object Listets: TcxGridDBBandedColumn
            Caption = 'TS%'
            DataBinding.FieldName = 'ts'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 43
            Position.BandIndex = 1
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object Listeurr: TcxGridDBBandedColumn
            Caption = 'URR'
            DataBinding.FieldName = 'urr'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 1
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object ListeduzCa: TcxGridDBBandedColumn
            DataBinding.FieldName = 'duzCa'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 41
            Position.BandIndex = 1
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object ListeCaxp: TcxGridDBBandedColumn
            Caption = 'Ca X P'
            DataBinding.FieldName = 'Caxp'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 38
            Position.BandIndex = 1
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn530100: TcxGridDBBandedColumn
            Caption = 'EKG'
            DataBinding.FieldName = '530100'
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn705140: TcxGridDBBandedColumn
            Caption = 'Kan Grubu'
            DataBinding.FieldName = '705140'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 76
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn801840: TcxGridDBBandedColumn
            Caption = 'Tele Kar.'
            DataBinding.FieldName = '801840'
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn900200: TcxGridDBBandedColumn
            Caption = 'ALT'
            DataBinding.FieldName = '900200'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 33
            Position.BandIndex = 1
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn900210: TcxGridDBBandedColumn
            Caption = 'Albumin'
            DataBinding.FieldName = '900210'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 46
            Position.BandIndex = 1
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn900340: TcxGridDBBandedColumn
            Caption = 'ALP'
            DataBinding.FieldName = '900340'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 39
            Position.BandIndex = 1
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn900681: TcxGridDBBandedColumn
            Caption = 'Bikarbonat'
            DataBinding.FieldName = '900681'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 56
            Position.BandIndex = 1
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn900900: TcxGridDBBandedColumn
            Caption = 'CRP'
            DataBinding.FieldName = '900900'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 37
            Position.BandIndex = 1
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn901020: TcxGridDBBandedColumn
            Caption = 'S.Demiri'
            DataBinding.FieldName = '901020'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 1
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn901040: TcxGridDBBandedColumn
            Caption = 'SDBK'
            DataBinding.FieldName = '901040'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 42
            Position.BandIndex = 1
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn901220: TcxGridDBBandedColumn
            Caption = 'Ferritin'
            DataBinding.FieldName = '901220'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 1
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn901910: TcxGridDBBandedColumn
            Caption = 'Ca'
            DataBinding.FieldName = '901910'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 34
            Position.BandIndex = 1
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn901940: TcxGridDBBandedColumn
            Caption = #220're'
            DataBinding.FieldName = '901940'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn902110: TcxGridDBBandedColumn
            Caption = 'Total Kolesterol'
            DataBinding.FieldName = '902110'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 52
            Position.BandIndex = 1
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn902210: TcxGridDBBandedColumn
            Caption = 'Kreatinin'
            DataBinding.FieldName = '902210'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn902290: TcxGridDBBandedColumn
            Caption = 'LDL Kolesterol'
            DataBinding.FieldName = '902290'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 53
            Position.BandIndex = 1
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn902980: TcxGridDBBandedColumn
            Caption = 'PTH'
            DataBinding.FieldName = '902980'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 39
            Position.BandIndex = 1
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn903130: TcxGridDBBandedColumn
            Caption = 'K'
            DataBinding.FieldName = '903130'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn903240: TcxGridDBBandedColumn
            Caption = 'T.Protein'
            DataBinding.FieldName = '903240'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 1
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn903670: TcxGridDBBandedColumn
            Caption = 'Na'
            DataBinding.FieldName = '903670'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 32
            Position.BandIndex = 1
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn903990: TcxGridDBBandedColumn
            Caption = 'Trigliserit'
            DataBinding.FieldName = '903990'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 1
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn904120: TcxGridDBBandedColumn
            Caption = #220'rik Asit'
            DataBinding.FieldName = '904120'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 1
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn906610: TcxGridDBBandedColumn
            Caption = 'Anti HBs'
            DataBinding.FieldName = '906610'
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn906630: TcxGridDBBandedColumn
            Caption = 'Anti HCV'
            DataBinding.FieldName = '906630'
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 3
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn906660: TcxGridDBBandedColumn
            Caption = 'Anti HIV'
            DataBinding.FieldName = '906660'
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 3
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn907440: TcxGridDBBandedColumn
            Caption = 'HBsAg'
            DataBinding.FieldName = '907440'
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn901260: TcxGridDBBandedColumn
            Caption = 'P'
            DataBinding.FieldName = '901260'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 31
            Position.BandIndex = 1
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn901500: TcxGridDBBandedColumn
            Caption = 'Glukoz'
            DataBinding.FieldName = '901500'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 39
            Position.BandIndex = 1
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn901460: TcxGridDBBandedColumn
            Caption = 'HbA1c'
            DataBinding.FieldName = '901460'
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn9016201: TcxGridDBBandedColumn
            Caption = 'WBC'
            DataBinding.FieldName = '901620.1'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn9016202: TcxGridDBBandedColumn
            Caption = 'RBC'
            DataBinding.FieldName = '901620.2'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn9016203: TcxGridDBBandedColumn
            Caption = 'HGB'
            DataBinding.FieldName = '901620.3'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn9016204: TcxGridDBBandedColumn
            Caption = 'HCT'
            DataBinding.FieldName = '901620.4'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn9016205: TcxGridDBBandedColumn
            Caption = 'PLT'
            DataBinding.FieldName = '901620.5'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 2
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn9016206: TcxGridDBBandedColumn
            Caption = 'MPV'
            DataBinding.FieldName = '901620.6'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 2
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn9016207: TcxGridDBBandedColumn
            Caption = 'MCV'
            DataBinding.FieldName = '901620.7'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 2
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn9016208: TcxGridDBBandedColumn
            Caption = 'MCH'
            DataBinding.FieldName = '901620.8'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 2
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn901940C: TcxGridDBBandedColumn
            Caption = #220're '#199#305'k'#305#351
            DataBinding.FieldName = '901940C'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn902210C: TcxGridDBBandedColumn
            Caption = 'Kreatinin '#199#305'k'#305#351
            DataBinding.FieldName = '902210C'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 48
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn903130C: TcxGridDBBandedColumn
            Caption = 'K '#199#305'k'#305#351
            DataBinding.FieldName = '903130C'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object ListeColumn1: TcxGridDBBandedColumn
            Caption = 'Takip No'
            DataBinding.FieldName = 'tak'#305'pNo'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object ListeColumn2: TcxGridDBBandedColumn
            Caption = 'Ba'#351'vuru No'
            DataBinding.FieldName = 'basvuruNo'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object ListeColumn3: TcxGridDBBandedColumn
            Caption = 'HDL Kolesterol'
            DataBinding.FieldName = '901580'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 52
            Position.BandIndex = 1
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
        end
        object cxGridKadir1Level1: TcxGridLevel
          GridView = Liste
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'LOG'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object txtHatalar: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          '')
        TabOrder = 0
        Height = 645
        Width = 1276
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO_TetkiklerHastaList
    Left = 168
    Top = 202
  end
  object ADO_TetkiklerHastaList: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = ADO_TetkiklerHastaListAfterScroll
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'exec sp_hastaTahlilSonuclari '#39'20150301'#39','#39'20150330'#39',@tip = '#39'0'#39',@a' +
        'pm = '#39'0,1,2'#39)
    Left = 128
    Top = 216
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 8
    Top = 232
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15132390
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor]
      Color = 8454143
    end
    object cxStyle7: TcxStyle
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clMaroon
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 16
    Top = 56
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 280
    Top = 208
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 432
    Top = 160
    object T1: TMenuItem
      Tag = -9
      Caption = 'Hasta Kart'#305
      OnClick = T1Click
    end
    object T6: TMenuItem
      Tag = -8
      Caption = 'Tetkik Kart'#305
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object T2: TMenuItem
      Caption = 'Medulaya Kaydet'
      OnClick = T2Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object T3: TMenuItem
      Tag = 9
      Caption = 'Tetkik Takip Formu'
      OnClick = T3Click
    end
    object T4: TMenuItem
      Tag = 10
      Caption = 'Tetkik Takip Formu Hepatit'
      OnClick = T3Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object L1: TMenuItem
      Tag = -7
      Caption = 'Lab '#214'rnekNo Giri'#351
      OnClick = L1Click
    end
    object K1: TMenuItem
      Tag = -6
      Caption = 'Kilo Order Formu'
      ImageIndex = 105
      OnClick = K1Click
    end
    object K2: TMenuItem
      Tag = -5
      Caption = 'Ktv Hesaplama Listesi'
      ImageIndex = 107
      OnClick = K2Click
    end
    object S1: TMenuItem
      Tag = -4
      Caption = 'Sonu'#231' Yaz'
      ImageIndex = 28
      OnClick = S1Click
    end
    object S2: TMenuItem
      Tag = -3
      Caption = 'Sonu'#231' Takip Form'
    end
    object S3: TMenuItem
      Tag = -2
      Caption = 'Sonu'#231' Gir'
      ImageIndex = 104
      OnClick = cxButtonCClick
    end
    object T5: TMenuItem
      Tag = -1
      Caption = 'Tetkik Sonu'#231' De'#287'erlendir'
      ImageIndex = 102
      OnClick = cxButtonCClick
    end
  end
  object ADO_Tele: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    Left = 200
    Top = 208
  end
  object ADO_Tet: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 232
    Top = 208
  end
  object ado_tetkikDegerlendir: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from Anamnez_ICD')
    Left = 520
    Top = 342
  end
  object DataSource3: TDataSource
    DataSet = ado_tetkikDegerlendir
    Left = 616
    Top = 350
  end
  object ADO_Uyar: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    TableName = 'TedaviUyariAyar'
    Left = 364
    Top = 356
  end
  object DataSource17: TDataSource
    DataSet = ADO_Uyar
    Left = 418
    Top = 333
  end
end
