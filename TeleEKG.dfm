object frmTeleEKG: TfrmTeleEKG
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frmTeleEKG'
  ClientHeight = 506
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    784
    506)
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid2: TcxGridKadir
    Left = 316
    Top = 104
    Width = 401
    Height = 177
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LevelTabs.ImageBorder = 2
    LevelTabs.Style = 1
    ExcelFileName = 'TeleEKG'
    ExceleGonder = True
    object Liste: TcxGridDBTableView
      OnDblClick = ListeDblClick
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
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      NewItemRow.InfoText = 'Kay'#305't Ekle'
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.NavigatorOffset = 20
      OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 25
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clBlack
      object ListedosyaNo: TcxGridDBColumn
        DataBinding.FieldName = 'dosyaNo'
        Visible = False
        Width = 50
      end
      object ListegelisNo: TcxGridDBColumn
        DataBinding.FieldName = 'gelisNo'
        Visible = False
        Width = 39
      end
      object ListeHasta: TcxGridDBColumn
        DataBinding.FieldName = 'Hasta'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 147
      end
      object ListeColumn2: TcxGridDBColumn
        Caption = 'Tetkik Tan'#305'm'#305
        DataBinding.FieldName = 'NAME1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 123
      end
      object ListeColumn1: TcxGridDBColumn
        Caption = 'Tarih'
        DataBinding.FieldName = 'TARIH'
        PropertiesClassName = 'TcxDateEditProperties'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 104
      end
      object ListeDBColumn530100: TcxGridDBColumn
        Caption = 'Sonuc'
        DataBinding.FieldName = 'sonuc'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.MaxLength = 200
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 339
      end
    end
    object cxGridLevel1: TcxGridLevel
      Caption = 'Hastalar'
      GridView = Liste
      Options.DetailFrameColor = clBlack
      Options.DetailFrameWidth = 0
    end
  end
  object DiyalizTip: TcxRadioGroup
    Left = 49
    Top = 3
    Alignment = alCenterCenter
    ParentFont = False
    Properties.Columns = 3
    Properties.Items = <
      item
        Caption = 'Hemodiyaliz'
        Value = '0'
      end
      item
        Caption = 'Periton Ayaktan'
        Value = '1'
      end
      item
        Caption = 'Periton Aletli'
        Value = '2'
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
    TabOrder = 1
    Height = 21
    Width = 242
  end
  object tarih1: TcxDateEdit
    Left = 47
    Top = 26
    Anchors = [akLeft]
    Style.TextColor = clBlack
    TabOrder = 2
    Width = 121
  end
  object tarih2: TcxDateEdit
    Left = 170
    Top = 26
    Anchors = [akLeft]
    Style.TextColor = clBlack
    TabOrder = 3
    Width = 121
  end
  object btnListele: TcxButtonKadir
    Left = 316
    Top = 7
    Width = 75
    Height = 25
    Caption = 'Listele'
    TabOrder = 4
    OnClick = btnListeleClick
    NewButtonVisible = False
  end
  object memData: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 584
    Top = 8
    object memDatadosyaNo: TStringField
      FieldName = 'dosyaNo'
      Size = 6
    end
    object memDatagelisNo: TIntegerField
      FieldName = 'gelisNo'
    end
    object memDataHasta: TStringField
      FieldName = 'Hasta'
      Size = 70
    end
    object memData530100: TStringField
      FieldName = '530100'
      Size = 250
    end
    object memData801840: TStringField
      FieldName = '801840'
      Size = 250
    end
    object memDataTarih: TStringField
      FieldName = 'Tarih'
    end
    object memDataTarihD: TDateTimeField
      FieldName = 'TarihD'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO_SQL
    Left = 80
    Top = 80
  end
  object PopupMenu1: TPopupMenu
    Left = 96
    Top = 128
    object T1: TMenuItem
      Caption = 'D'#252'zenle'
    end
  end
  object ADO_SQL: TADOQuery
    Connection = DATALAR.ADOConnection2
    BeforePost = ADO_SQLBeforePost
    Parameters = <>
    Left = 32
    Top = 80
  end
  object PopupMenu2: TPopupMenu
    Images = DATALAR.imag24png
    Left = 192
    Top = 128
    object K1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxKaydetClick
    end
    object Y1: TMenuItem
      Tag = -1
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
    object E1: TMenuItem
      Tag = 9997
      Caption = 'Excele G'#246'nder'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
    object D1: TMenuItem
      Caption = 'D'#252'zenle'
    end
  end
end
