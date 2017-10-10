object frmKanTetkikTakipDegerlendir: TfrmKanTetkikTakipDegerlendir
  Left = 140
  Top = 100
  Caption = 'frmKanTetkikTakipDegerlendir'
  ClientHeight = 526
  ClientWidth = 472
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
  object cxPageControlDegerlendir: TcxPageControl
    Left = 0
    Top = 0
    Width = 472
    Height = 526
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet3
    Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGoDialog, pcoGradientClientArea]
    ClientRectBottom = 519
    ClientRectLeft = 3
    ClientRectRight = 465
    ClientRectTop = 26
    object cxTabSheet3: TcxTabSheet
      Caption = 'Tetkik De'#287'erlendir'
      ImageIndex = 0
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 462
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object cxBtnDegerlendir: TcxButtonKadir
          Left = 0
          Top = 0
          Width = 462
          Height = 33
          Align = alClient
          Caption = 'Tetkik Sonu'#231'lar'#305'n'#305' De'#287'erlendir'
          TabOrder = 0
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxBtnDegerlendirClick
          NewButtonVisible = False
        end
      end
      object cxGrid1: TcxGridKadir
        Left = 0
        Top = 33
        Width = 462
        Height = 460
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
        LookAndFeel.SkinName = 'UserSkin'
        ExcelFileName = 'TetkikDegerlendir'
        ExceleGonder = True
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
            Width = 306
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
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Tetkik De'#287'. Ayar'
      ImageIndex = 1
      object cxGrid13: TcxGrid
        Left = 0
        Top = 0
        Width = 462
        Height = 493
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
  object cxStyleRepository1: TcxStyleRepository
    Left = 32
    Top = 56
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
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 48
    Top = 128
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
    Left = 304
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 616
    Top = 152
    object K1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxKaydetClick
    end
    object E1: TMenuItem
      Tag = 9997
      Caption = 'Excele G'#246'nder'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
  end
  object ado_tetkikDegerlendir: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from Anamnez_ICD')
    Left = 56
    Top = 294
  end
  object DataSource3: TDataSource
    DataSet = ado_tetkikDegerlendir
    Left = 96
    Top = 294
  end
  object DataSource17: TDataSource
    DataSet = ADO_Uyar
    Left = 74
    Top = 357
  end
  object ADO_Uyar: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    TableName = 'TedaviUyariAyar'
    Left = 36
    Top = 356
  end
end
