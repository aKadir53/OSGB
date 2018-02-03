object frmGrupDetayTanim: TfrmGrupDetayTanim
  Left = 1
  Top = 1
  Caption = '.'
  ClientHeight = 597
  ClientWidth = 773
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
    Width = 773
    Height = 597
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.TabPosition = tpBottom
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'McSkin'
    ExplicitTop = 121
    ExplicitWidth = 672
    ExplicitHeight = 476
    ClientRectBottom = 572
    ClientRectLeft = 4
    ClientRectRight = 769
    ClientRectTop = 5
    object cxTabSheet1: TcxTabSheet
      ImageIndex = 0
      ExplicitWidth = 664
      ExplicitHeight = 446
      object Splitter1: TSplitter
        Left = 297
        Top = 0
        Height = 567
        ExplicitLeft = 520
        ExplicitTop = 22
      end
      object pnlGridInput: TcxGroupBox
        Left = 0
        Top = 0
        Align = alLeft
        Caption = '-'
        TabOrder = 0
        Height = 567
        Width = 297
        object cxGrid9: TcxGrid
          Tag = 1
          Left = 3
          Top = 50
          Width = 291
          Height = 507
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
          ExplicitWidth = 477
          ExplicitHeight = 107
          object Grid: TcxGridDBTableView
            Tag = 1
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
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            FilterBox.CustomizeDialog = False
            OnFocusedRecordChanged = GridFocusedRecordChanged
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
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            FilterRow.InfoText = 'Arama Sat'#305'r'#305
            FilterRow.SeparatorWidth = 2
            FilterRow.ApplyChanges = fracImmediately
            NewItemRow.InfoText = 'Kay'#305't Ekle'
            NewItemRow.Visible = True
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.NavigatorOffset = 20
            OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
            OptionsView.CellAutoHeight = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = clBlack
            Styles.NewItemRowInfoText = cxStyle6
            object cxGridDBColumn12: TcxGridDBColumn
              Caption = 'Kod'
              DataBinding.FieldName = 'kod'
              Width = 41
            end
            object cxGridDBColumn13: TcxGridDBColumn
              DataBinding.FieldName = 'Tanimi'
              Width = 198
            end
          end
          object cxGridLevel9: TcxGridLevel
            Caption = 'Hastalar'
            GridView = Grid
            Options.DetailFrameColor = clBlack
            Options.DetailFrameWidth = 0
          end
        end
        object cxGroupBox2: TcxGroupBox
          Left = 3
          Top = 15
          Align = alTop
          PanelStyle.Active = True
          TabOrder = 1
          Visible = False
          ExplicitWidth = 477
          Height = 35
          Width = 291
          object btnEkle: TcxButtonKadir
            Left = 2
            Top = 2
            Width = 42
            Height = 31
            Align = alLeft
            Caption = 'Ekle'
            TabOrder = 0
            NewButtonVisible = False
          end
          object btnSil: TcxButtonKadir
            Left = 44
            Top = 2
            Width = 42
            Height = 31
            Align = alLeft
            Caption = 'Sil'
            TabOrder = 1
            NewButtonVisible = False
          end
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 300
        Top = 0
        Align = alClient
        Caption = '-'
        TabOrder = 1
        ExplicitLeft = 544
        ExplicitTop = 80
        ExplicitWidth = 483
        ExplicitHeight = 167
        Height = 567
        Width = 465
        object cxGrid1: TcxGrid
          Tag = 1
          Left = 3
          Top = 50
          Width = 459
          Height = 507
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
          ExplicitWidth = 477
          ExplicitHeight = 107
          object gridDetay: TcxGridDBTableView
            Tag = 1
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
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            FilterBox.CustomizeDialog = False
            DataController.DataModeController.DetailInSQLMode = True
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
            NewItemRow.Visible = True
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.NavigatorOffset = 20
            OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
            OptionsView.CellAutoHeight = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = clBlack
            Styles.NewItemRowInfoText = cxStyle6
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'Kod'
              DataBinding.FieldName = 'kod'
              Width = 41
            end
            object cxGridDBColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'Tanimi'
              Width = 376
            end
          end
          object cxGridLevel1: TcxGridLevel
            Caption = 'Hastalar'
            GridView = gridDetay
            Options.DetailFrameColor = clBlack
            Options.DetailFrameWidth = 0
          end
        end
        object cxGroupBox3: TcxGroupBox
          Left = 3
          Top = 15
          Align = alTop
          PanelStyle.Active = True
          TabOrder = 1
          ExplicitWidth = 477
          Height = 35
          Width = 459
          object btnDetayEkle: TcxButtonKadir
            Left = 2
            Top = 2
            Width = 84
            Height = 31
            Align = alLeft
            Caption = 'Listeden Ekle'
            TabOrder = 0
            OnClick = btnDetayEkleClick
            NewButtonVisible = False
          end
          object btnDetaySil: TcxButtonKadir
            Left = 86
            Top = 2
            Width = 42
            Height = 31
            Align = alLeft
            Caption = 'Sil'
            TabOrder = 1
            Visible = False
            NewButtonVisible = False
            ExplicitLeft = 44
          end
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO_Grup
    Left = 120
    Top = 242
  end
  object ADO_Grup: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'select SR.ID, DenetimiYapanKullanici, DenetimTarihi, Date_Create' +
        ', GozetimDefterNo, FirmaKodu, cast (case when Image Is NULL then' +
        ' 0 else 1 end as bit) ImageVar, SR.GozlemGrup, SGR.Tanimi Gozlem' +
        'GrupTanim'
      'from SahaGozlemRaporlari SR'
      
        'inner join SahaGozlemSoruGrup SGR on SGR.GozlemGrup = SR.GozlemG' +
        'rup'
      'where FirmaKodu = '#39'0001'#39
      'order by SR.ID')
    Left = 64
    Top = 240
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 16
    Top = 176
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
    Left = 8
    Top = 136
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
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 408
    Top = 256
    object miYeniGozetim: TMenuItem
      Tag = -9
      Caption = 'Yeni G'#246'zetim'
      ImageIndex = 30
      OnClick = cxButtonCClick
    end
    object miGozetimDuzenle: TMenuItem
      Tag = -11
      Caption = 'G'#246'zetimi D'#252'zenle'
      ImageIndex = 31
      OnClick = cxButtonCClick
    end
    object miGozetimSil: TMenuItem
      Tag = -18
      Caption = 'G'#246'zetim Sil'
      ImageIndex = 43
      OnClick = cxButtonCClick
    end
    object miGozetimYazdir: TMenuItem
      Tag = -27
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
    object miFotografYukle: TMenuItem
      Tag = -21
      Caption = 'Foto'#287'raf Y'#252'kle'
      ImageIndex = 95
      OnClick = cxButtonCClick
    end
    object miFotografGoruntule: TMenuItem
      Tag = -22
      Caption = 'Foto'#287'raf'#305' G'#246'r'#252'nt'#252'le'
      ImageIndex = 8
      OnClick = cxButtonCClick
    end
    object miFotografiSil: TMenuItem
      Tag = -23
      Caption = 'Foto'#287'raf'#305' Sil'
      ImageIndex = 33
      OnClick = cxButtonCClick
    end
  end
  object DataSource2: TDataSource
    DataSet = ADO_Detay
    Left = 120
    Top = 306
  end
  object ADO_Detay: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    BeforePost = ADO_DetayBeforePost
    OnNewRecord = ADO_DetayNewRecord
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'exec dbo.sp_SahaGozlemRaporDetayGetir 18')
    Left = 64
    Top = 304
  end
  object Tetkikler: TListeAc
    ListeBaslik = 'Tetkik Listesi'
    TColcount = 3
    TColsW = '50,350,0,60'
    Table = 'HIZMET'
    Conn = DATALAR.ADOConnection2
    Filtercol = 2
    BaslikRenk = clBackground
    DipRenk = clBackground
    ButtonImajIndex = 132
    Kolonlar.Strings = (
      'Code'
      'NAME1'
      'TANIM'
      'FIYAT')
    KolonBasliklari.Strings = (
      'Sut Kodu'
      'Tanimi'
      'Tip'
      'Fiyat')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SkinName = 'caramel'
    Grup = False
    GrupCol = 0
    Left = 544
    Top = 133
  end
end
