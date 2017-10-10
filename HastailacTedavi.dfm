object frmHastaIlacTedavi: TfrmHastaIlacTedavi
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'frmHastaIlacTedavi'
  ClientHeight = 571
  ClientWidth = 986
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxIlacTedaviPanel: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 0
    Height = 571
    Width = 986
    object frmHastaIlacTedavi_cxGroupBox1: TcxGroupBox
      Left = 2
      Top = 2
      Align = alLeft
      PanelStyle.Active = True
      TabOrder = 0
      Height = 567
      Width = 449
      object frmHastaIlacTedavi_cxPageControl1: TcxPageControl
        Left = 2
        Top = 2
        Width = 445
        Height = 563
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxTabSheet1
        ClientRectBottom = 556
        ClientRectLeft = 3
        ClientRectRight = 438
        ClientRectTop = 26
        object cxTabSheet1: TcxTabSheet
          Caption = #304'la'#231' Tedavi Plan'#305
          ImageIndex = 0
          object cxGrid15: TcxGrid
            Left = 0
            Top = 0
            Width = 435
            Height = 417
            Align = alTop
            Font.Charset = TURKISH_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LevelTabs.ImageBorder = 2
            LevelTabs.Style = 1
            object cxGridIlacTedaviPlani: TcxGridDBTableView
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
              DataController.DataSource = DataSource8
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
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.NavigatorOffset = 20
              OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
              OptionsView.GroupByBox = False
              OptionsView.Header = False
              OptionsView.IndicatorWidth = 0
              OptionsView.RowSeparatorColor = clBlack
              Styles.OnGetContentStyle = cxGridIlacTedaviPlaniStylesGetContentStyle
              object cxGridIlacTedaviPlanigk: TcxGridDBColumn
                DataBinding.FieldName = 'gk'
                Visible = False
              end
              object cxGridIlacTedaviPlaniust: TcxGridDBColumn
                DataBinding.FieldName = 'ust'
                Visible = False
              end
              object cxGridIlacTedaviPlaniilac: TcxGridDBColumn
                DataBinding.FieldName = 'ilac'
                Visible = False
              end
              object cxGridIlacTedaviPlaniname1: TcxGridDBColumn
                DataBinding.FieldName = 'name1'
                Width = 350
              end
              object cxGridIlacTedaviPlanigrup: TcxGridDBColumn
                DataBinding.FieldName = 'grup'
                Visible = False
              end
              object cxGridIlacTedaviPlaniname2: TcxGridDBColumn
                DataBinding.FieldName = 'name2'
                Visible = False
              end
              object cxGridIlacTedaviPlanidoz: TcxGridDBColumn
                DataBinding.FieldName = 'doz'
                Visible = False
              end
              object cxGridIlacTedaviPlaniperyot: TcxGridDBColumn
                DataBinding.FieldName = 'peryot'
                Visible = False
              end
              object cxGridIlacTedaviPlanimiktar: TcxGridDBColumn
                DataBinding.FieldName = 'miktar'
                Visible = False
              end
              object cxGridIlacTedaviPlanidozperyotmiktar: TcxGridDBColumn
                DataBinding.FieldName = 'dozperyotmiktar'
                Visible = False
              end
              object cxGridIlacTedaviPlanidonem: TcxGridDBColumn
                DataBinding.FieldName = 'donem'
                Visible = False
              end
              object cxGridIlacTedaviPlaniid: TcxGridDBColumn
                DataBinding.FieldName = 'id'
                Visible = False
              end
              object cxGridIlacTedaviPlanigelisNo: TcxGridDBColumn
                DataBinding.FieldName = 'gelisNo'
                Visible = False
              end
              object cxGridIlacTedaviPlaniColumn1: TcxGridDBColumn
                DataBinding.FieldName = 'tip'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Items = <
                  item
                    Description = 'Merkez'
                    ImageIndex = 0
                    Value = '0'
                  end
                  item
                    Description = 'Ev'
                    Value = '1'
                  end>
                Options.Editing = False
                Width = 50
              end
              object cxGridIlacTedaviPlaniColumn2: TcxGridDBColumn
                DataBinding.FieldName = 'ilacName'
                Visible = False
              end
              object cxGridIlacTedaviPlaniColumn3: TcxGridDBColumn
                DataBinding.FieldName = 'Kyol'
                Visible = False
              end
              object cxGridIlacTedaviPlaniColumn4: TcxGridDBColumn
                DataBinding.FieldName = 'adet'
                Visible = False
              end
            end
            object cxGridLevel15: TcxGridLevel
              Caption = 'Hastalar'
              GridView = cxGridIlacTedaviPlani
              Options.DetailFrameColor = clBlack
              Options.DetailFrameWidth = 0
            end
          end
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 64
    Top = 40
    object K1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxButtonCClick
    end
    object N1: TMenuItem
      Tag = -1
      Caption = #304'la'#231' Tedavi Plan'#305' Yazd'#305'r'
      ImageIndex = 61
    end
    object T1: TMenuItem
      Tag = -2
      Caption = 'Tetkik '#304'la'#231' De'#287'erlendirme Plan'#305
      ImageIndex = 62
    end
    object N2: TMenuItem
      Tag = -3
      Caption = #304'la'#231' Kullan'#305'm Kart'#305
      ImageIndex = 64
    end
    object S1: TMenuItem
      Tag = -4
      Caption = 'Sms G'#246'nder'
      ImageIndex = 94
    end
    object R1: TMenuItem
      Tag = -5
      Caption = 'Re'#231'eteye Ekle'
      ImageIndex = 97
      OnClick = cxButtonCClick
    end
  end
  object ADO_GecmisIlacTedavi: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Filtered = True
    EnableBCD = False
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'EXEC sp_GecmisDonemIlacTedavi '#39'015099'#39','#39'20160301'#39)
    Left = 112
    Top = 110
  end
  object DataSource8: TDataSource
    DataSet = ADO_GecmisIlacTedavi
    Left = 128
    Top = 46
  end
  object ADO_IlacTedavi: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 256
    Top = 56
  end
  object DataSource7: TDataSource
    DataSet = ADO_IlacTedavi
    Left = 216
    Top = 50
  end
  object DataSource15: TDataSource
    DataSet = ADO_IlacGelis
    Left = 280
    Top = 186
  end
  object ADO_IlacGelis: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Prepared = True
    Left = 320
    Top = 184
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 352
    Top = 64
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 8454016
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object K: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16744448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object Yesil_siyah: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clLime
      TextColor = clBlack
    end
    object Sari_Siyah: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clYellow
      TextColor = clBlack
    end
  end
end
