object frmKanTetkikTakip: TfrmKanTetkikTakip
  Left = 140
  Top = 100
  Caption = 'frmKanTetkikTakip'
  ClientHeight = 526
  ClientWidth = 1049
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid2: TcxGridKadir
    Tag = 9997
    Left = 0
    Top = 19
    Width = 1049
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
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'UserSkin'
    ExcelFileName = 'KanTetkikTakip'
    ExceleGonder = True
    ExplicitTop = 0
    ExplicitHeight = 526
    object ILACKULLANIM: TcxGridDBTableView
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
      Styles.ContentEven = cxStyle2
      object ILACKULLANIMColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'TetkikKodu'
        Styles.Content = cxStyle5
        Styles.Header = cxStyle4
        Width = 56
      end
      object ILACKULLANIMColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Tetkik'
        Styles.Content = cxStyle5
        Styles.Header = cxStyle4
        Width = 233
      end
      object ILACKULLANIMColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'INo'
        Styles.Content = cxStyle5
        Styles.Header = cxStyle4
        Width = 26
      end
      object ILACKULLANIMColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'OCAK'
        Styles.Content = cxStyle6
        Styles.Header = cxStyle4
        Width = 60
      end
      object ILACKULLANIMColumn5: TcxGridDBColumn
        DataBinding.FieldName = 'SUBAT'
        Styles.Content = cxStyle3
        Styles.Header = cxStyle4
        Width = 60
      end
      object ILACKULLANIMColumn15: TcxGridDBColumn
        DataBinding.FieldName = 'MART'
        Styles.Content = cxStyle3
        Styles.Header = cxStyle5
        Width = 60
      end
      object ILACKULLANIMColumn6: TcxGridDBColumn
        DataBinding.FieldName = 'NISAN'
        Styles.Content = cxStyle6
        Styles.Header = cxStyle4
        Width = 60
      end
      object ILACKULLANIMColumn7: TcxGridDBColumn
        DataBinding.FieldName = 'MAYIS'
        Styles.Content = cxStyle3
        Styles.Header = cxStyle4
        Width = 60
      end
      object ILACKULLANIMColumn8: TcxGridDBColumn
        DataBinding.FieldName = 'HAZIRAN'
        Styles.Content = cxStyle3
        Styles.Header = cxStyle4
        Width = 60
      end
      object ILACKULLANIMColumn9: TcxGridDBColumn
        DataBinding.FieldName = 'TEMMUZ'
        Styles.Content = cxStyle6
        Styles.Header = cxStyle4
        Width = 60
      end
      object ILACKULLANIMColumn10: TcxGridDBColumn
        DataBinding.FieldName = 'AGUSTOS'
        Styles.Content = cxStyle3
        Styles.Header = cxStyle4
        Width = 60
      end
      object ILACKULLANIMColumn11: TcxGridDBColumn
        DataBinding.FieldName = 'EYLUL'
        Styles.Content = cxStyle3
        Styles.Header = cxStyle4
        Width = 60
      end
      object ILACKULLANIMColumn12: TcxGridDBColumn
        DataBinding.FieldName = 'EKIM'
        Styles.Content = cxStyle6
        Styles.Header = cxStyle4
        Width = 60
      end
      object ILACKULLANIMColumn13: TcxGridDBColumn
        DataBinding.FieldName = 'KASIM'
        Styles.Content = cxStyle6
        Styles.Header = cxStyle4
        Width = 60
      end
      object ILACKULLANIMColumn14: TcxGridDBColumn
        DataBinding.FieldName = 'ARALIK'
        Styles.Content = cxStyle6
        Styles.Header = cxStyle4
        Width = 60
      end
    end
    object cxGridLevel1: TcxGridLevel
      Caption = 'Hastalar'
      GridView = ILACKULLANIM
      Options.DetailFrameColor = clBlack
      Options.DetailFrameWidth = 0
    end
  end
  object chkHepatit: TcxCheckBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Hepatit Marker'
    ParentFont = False
    Style.Font.Charset = TURKISH_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 1
    OnClick = chkHepatitClick
    Width = 1049
  end
  object DataSource1: TDataSource
    DataSet = ADO_Tetkikler
    Left = 296
    Top = 170
  end
  object ADO_Tetkikler: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    Left = 224
    Top = 120
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
  object ADO_Tele: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    Left = 424
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
    object Y1: TMenuItem
      Tag = -5
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      object H1: TMenuItem
        Tag = -1
        Caption = 'Hepatit Marker'
        OnClick = cxButtonCClick
      end
      object T1: TMenuItem
        Tag = -2
        Caption = 'Tetkik'
        OnClick = cxButtonCClick
      end
    end
    object E1: TMenuItem
      Tag = 9997
      Caption = 'Excele G'#246'nder'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
  end
end
