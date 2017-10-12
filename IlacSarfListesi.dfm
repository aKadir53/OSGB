object frmIlacSarf: TfrmIlacSarf
  Left = 418
  Top = 10
  BorderStyle = bsDialog
  ClientHeight = 686
  ClientWidth = 468
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlToolBar: TPanel
    Left = 0
    Top = 18
    Width = 468
    Height = 35
    Align = alTop
    Color = clBackground
    Font.Charset = TURKISH_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Visible = False
    object PanelSource: TPanel
      Left = 473
      Top = 8
      Width = 84
      Height = 20
      AutoSize = True
      BevelOuter = bvNone
      Color = clBackground
      Font.Charset = TURKISH_CHARSET
      Font.Color = clAqua
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object txtDetay: TcxMemo
      Left = 1
      Top = 1
      Align = alClient
      Lines.Strings = (
        '')
      ParentFont = False
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 33
      Width = 466
    end
  end
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 468
    Height = 18
    Align = alTop
    Color = clBlack
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object chkDoz: TcxCheckBox
      Left = 359
      Top = -1
      Caption = 'Detay G'#246'ster'
      ParentFont = False
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Transparent = True
      OnClick = chkDozClick
      Width = 110
    end
    object chkSIK: TcxCheckBox
      Left = 238
      Top = -1
      Caption = 'S'#305'k Kullan'#305'm List'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Transparent = True
      OnClick = chkSIKClick
      Width = 125
    end
  end
  object pnlOnay: TPanel
    Left = 0
    Top = 654
    Width = 468
    Height = 32
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
    object btnVazgec: TcxButton
      Left = 392
      Top = 1
      Width = 75
      Height = 30
      Align = alRight
      Caption = 'Vazge'#231
      TabOrder = 0
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnVazgecClick
    end
    object btnSend: TcxButton
      Left = 317
      Top = 1
      Width = 75
      Height = 30
      Align = alRight
      Caption = '&i'#351'le'
      TabOrder = 1
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSendClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 53
    Width = 468
    Height = 601
    Align = alClient
    Caption = #304'la'#231'lar  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object txtarama: TcxTextEdit
      Tag = -1
      Left = 4
      Top = 13
      Enabled = False
      ParentFont = False
      ParentShowHint = False
      Properties.OnChange = txtaramaChange
      ShowHint = True
      TabOrder = 0
      Width = 454
    end
    object txtGruplar: TsComboBox
      Left = 4
      Top = 51
      Width = 69
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'COMBOBOX'
      Color = 16774895
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = -1
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = txtGruplarClick
    end
    object cxGrid1: TcxGrid
      Left = 2
      Top = 15
      Width = 464
      Height = 406
      Align = alTop
      TabOrder = 2
      object gridIlacSarf: TcxGridDBTableView
        OnDblClick = gridIlacSarfDblClick
        OnKeyDown = gridIlacSarfKeyDown
        OnKeyPress = gridIlacSarfKeyPress
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
        DataController.DataSource = DataSource1
        DataController.Filter.Active = True
        DataController.Filter.TranslateBetween = True
        DataController.Filter.TranslateLike = True
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        FilterRow.InfoText = 'Filtreleme Sat'#305'r'#305
        FilterRow.ApplyChanges = fracImmediately
        OptionsBehavior.FocusCellOnTab = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = 'Listelenecek '#304'la'#231' Yok'
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.Content = cxStyle1
        Styles.OnGetContentStyle = gridIlacSarfStylesGetContentStyle
        object gridIlacSarfColumn1: TcxGridDBColumn
          Caption = 'Barkod'
          DataBinding.FieldName = 'Code'
          Width = 98
        end
        object gridIlacSarfColumn2: TcxGridDBColumn
          Caption = #304'la'#231' Ad'#305
          DataBinding.FieldName = 'NAME1'
          Width = 307
        end
        object gridIlacSarfColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'ReceteTip'
          Visible = False
        end
        object gridIlacSarfColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'Aktif'
          Width = 36
        end
        object gridIlacSarfColumn5: TcxGridDBColumn
          DataBinding.FieldName = 'ICD'
          Visible = False
        end
        object gridIlacSarfColumn6: TcxGridDBColumn
          DataBinding.FieldName = 'doz'
          Visible = False
        end
        object gridIlacSarfColumn7: TcxGridDBColumn
          DataBinding.FieldName = 'adet'
          Visible = False
        end
        object gridIlacSarfColumn8: TcxGridDBColumn
          DataBinding.FieldName = 'kulYol'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gridIlacSarf
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 581
      Width = 464
      Height = 18
      DataSource = DataSource2
      VisibleButtons = [nbDelete, nbPost, nbCancel]
      Align = alBottom
      Flat = True
      Kind = dbnHorizontal
      TabOrder = 3
    end
    object cxGrid2: TcxGrid
      Left = 2
      Top = 421
      Width = 464
      Height = 160
      Align = alClient
      TabOrder = 4
      object Eklenen: TcxGridDBTableView
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
        DataController.DataSource = DataSource2
        DataController.Filter.Active = True
        DataController.Filter.TranslateBetween = True
        DataController.Filter.TranslateLike = True
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Filtreleme Sat'#305'r'#305
        FilterRow.ApplyChanges = fracImmediately
        OptionsBehavior.FocusCellOnTab = True
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = 'Eklenen '#304'la'#231' Yok'
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.Content = cxStyle1
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = 'Barkod'
          DataBinding.FieldName = 'ETKENMADDE'
          Options.Editing = False
          Width = 56
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = #304'la'#231' Ad'#305
          DataBinding.FieldName = 'Formu'
          Options.Editing = False
          Width = 133
        end
        object EklenenColumn1: TcxGridDBColumn
          Caption = 'Doz'
          DataBinding.FieldName = 'doz'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Items.Strings = (
            ''
            '1x1'
            '2x1'
            '3x1'
            '3x2'
            '1x2'
            '1x3'
            '1x4'
            '2x1'
            '2x2'
            '2x3'
            '2x4'
            '3x1'
            '3x2'
            '3x3'
            '3x4'
            '4x1'
            '4x2'
            '4x3'
            '4x4')
          Width = 64
        end
        object EklenenColumn3: TcxGridDBColumn
          Caption = 'Adet'
          DataBinding.FieldName = 'adet'
          Width = 31
        end
        object EklenenColumn2: TcxGridDBColumn
          Caption = 'Kul.Yolu'
          DataBinding.FieldName = 'Kyolu'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.KeyFieldNames = 'kod'
          Properties.ListColumns = <
            item
              FieldName = 'tanimi'
            end>
          Properties.ListOptions.GridLines = glNone
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DATALAR.ReceteKullanimYollari_Datasource
          Width = 104
        end
        object EklenenColumn4: TcxGridDBColumn
          Caption = 'Tani'
          DataBinding.FieldName = 'tani'
          Width = 62
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = Eklenen
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO_ILACSARF
    Left = 228
    Top = 119
  end
  object DataSource2: TDataSource
    DataSet = Eklenenler
    Left = 124
    Top = 529
  end
  object ADO_ILACSARF: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    AfterScroll = ADO_ILACSARFAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from Anamnez_ICD')
    Left = 184
    Top = 118
  end
  object Eklenenler: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 168
    Top = 528
    object EklenenlerETKENMADDE: TStringField
      DisplayWidth = 50
      FieldName = 'ETKENMADDE'
      Size = 50
    end
    object EklenenlerFormu: TStringField
      DisplayWidth = 50
      FieldName = 'Formu'
      Size = 50
    end
    object Eklenenlerdoz: TStringField
      FieldName = 'doz'
    end
    object EklenenlerKyolu: TStringField
      FieldName = 'Kyolu'
      Size = 2
    end
    object Eklenenleradet: TStringField
      FieldName = 'adet'
      Size = 5
    end
    object Eklenenlertani: TStringField
      FieldName = 'tani'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 88
    Top = 65528
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object K: TcxStyle
      AssignedValues = [svColor]
      Color = clRed
    end
    object Y: TcxStyle
      AssignedValues = [svColor]
      Color = clLime
    end
    object T: TcxStyle
      AssignedValues = [svColor]
      Color = 6472953
    end
  end
end
