object frmKtvListesi: TfrmKtvListesi
  Left = 535
  Top = 72
  Caption = 'frmKtvListesi'
  ClientHeight = 591
  ClientWidth = 650
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
  object cxGrid2: TcxGridKadir
    Left = 0
    Top = 53
    Width = 650
    Height = 509
    Align = alClient
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    LevelTabs.ImageBorder = 2
    LevelTabs.Style = 1
    ExcelFileName = 'KtvListesi'
    ExceleGonder = True
    object GridEkstre: TcxGridDBTableView
      OnDblClick = GridEkstreDblClick
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
      DataController.DataModeController.GridMode = True
      DataController.DataModeController.SyncMode = False
      DataController.DataSource = DataSource1
      DataController.Filter.Active = True
      DataController.Filter.TranslateBetween = True
      DataController.Filter.TranslateLike = True
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,###.##'
          Kind = skAverage
          FieldName = 'Kt_v'
          Column = GridEkstreColumn5
        end
        item
          Format = '#,###.##'
          Kind = skAverage
          FieldName = 'CaXP'
          Column = GridEkstreColumn6
        end
        item
          Format = '#,###.##'
          Kind = skAverage
          FieldName = 'TS'
          Column = GridEkstreColumn7
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
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clBlack
      object GridEkstreColumn1: TcxGridDBColumn
        Caption = 'Dosya No'
        DataBinding.FieldName = 'dosyaNo'
        Width = 54
      end
      object GridEkstreColumn2: TcxGridDBColumn
        Caption = 'Hasta'
        DataBinding.FieldName = 'ad'
        Width = 191
      end
      object GridEkstreColumn3: TcxGridDBColumn
        Caption = 'Tc Kimlik'
        DataBinding.FieldName = 'TCKIMLIKNO'
        Width = 100
      end
      object GridEkstreColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'Urr'
      end
      object GridEkstreColumn5: TcxGridDBColumn
        Caption = 'Ktv'
        DataBinding.FieldName = 'Kt_v'
      end
      object GridEkstreColumn6: TcxGridDBColumn
        DataBinding.FieldName = 'CaXP'
      end
      object GridEkstreColumn7: TcxGridDBColumn
        Caption = 'Tranferrin Sat.'
        DataBinding.FieldName = 'TS'
        Width = 79
      end
      object GridEkstreColumn8: TcxGridDBColumn
        DataBinding.FieldName = 'gelisNo'
        Visible = False
      end
    end
    object cxGridLevel1: TcxGridLevel
      Caption = 'Hastalar'
      GridView = GridEkstre
      Options.DetailFrameColor = clHighlight
    end
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 650
    Height = 26
    Align = alTop
    Color = clBlack
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object DiyalizTip: TcxRadioGroup
      Left = 1
      Top = 1
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
      Properties.OnChange = DiyalizTipPropertiesChange
      ItemIndex = 0
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 24
      Width = 328
    end
    object chkKtv: TcxRadioGroup
      Left = 329
      Top = 1
      Align = alClient
      Alignment = alCenterCenter
      ParentFont = False
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Daugirdas2'
          Value = 'D2'
        end
        item
          Caption = 'Jindal'
          Value = 'J'
        end
        item
          Caption = 'Barth'
          Value = 'D'
        end>
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 24
      Width = 320
    end
  end
  object pnlToolBar: TPanel
    Left = 0
    Top = 26
    Width = 650
    Height = 27
    Align = alTop
    Color = clBackground
    Font.Charset = TURKISH_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object txtDonem: TDateTimePicker
      Left = 3
      Top = 3
      Width = 97
      Height = 21
      Date = 39180.967755891200000000
      Time = 39180.967755891200000000
      TabOrder = 0
    end
    object txtDonem2: TDateTimePicker
      Left = 102
      Top = 3
      Width = 97
      Height = 21
      Date = 39180.967755891200000000
      Time = 39180.967755891200000000
      TabOrder = 1
    end
    object cxBtnListele: TcxButtonKadir
      Left = 205
      Top = 1
      Width = 75
      Height = 24
      Caption = 'Listele'
      TabOrder = 2
      OnClick = cxBtnListeleClick
      NewButtonVisible = False
    end
  end
  object pnlOnay: TPanel
    Left = 0
    Top = 562
    Width = 650
    Height = 29
    Align = alBottom
    Color = clBackground
    TabOrder = 2
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
    object cxprogres: TcxProgressBar
      Left = 5
      Top = 4
      ParentColor = False
      Properties.BeginColor = 8454143
      Properties.PeakValue = 20.000000000000000000
      Properties.ShowTextStyle = cxtsText
      Properties.Text = '%'
      Style.Color = clWhite
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.LookAndFeel.NativeStyle = True
      Style.Shadow = False
      Style.TransparentBorder = True
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Transparent = True
      Width = 265
    end
  end
  object pnlKtv: TcxGroupBox
    Left = 204
    Top = 144
    Caption = 'Ktv/Urr/CaXP Manuel Giri'#351
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 3
    Visible = False
    Height = 121
    Width = 217
    object txtKtv: TcxTextEdit
      Left = 88
      Top = 24
      TabOrder = 0
      Text = '0'
      Width = 54
    end
    object txtUrr: TcxTextEdit
      Left = 143
      Top = 24
      TabOrder = 1
      Text = '0'
      Width = 54
    end
    object txtCaxp: TcxTextEdit
      Left = 88
      Top = 47
      TabOrder = 2
      Text = '0'
      Width = 54
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 24
      Caption = 'Ktv / Urr'
    end
    object cxLabel2: TcxLabel
      Left = 16
      Top = 47
      Caption = 'CaXP'
    end
    object cxButtonKaydet: TcxButton
      Left = 82
      Top = 78
      Width = 60
      Height = 25
      Caption = 'Kaydet'
      TabOrder = 5
      OnClick = cxButtonKaydetClick
    end
    object cxButtonIptal: TcxButton
      Left = 144
      Top = 78
      Width = 60
      Height = 25
      Caption = #304'ptal'
      TabOrder = 6
      OnClick = cxButtonIptalClick
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO_KTV
    Left = 96
    Top = 168
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 368
    Top = 328
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
    object D1: TMenuItem
      Tag = -3
      Caption = 'De'#287'erleri Hesapla'
      ImageIndex = 32
      OnClick = cxKaydetClick
    end
  end
  object ADO_KTV: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    Left = 72
    Top = 136
  end
end
