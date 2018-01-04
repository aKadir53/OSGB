object frmLabParams: TfrmLabParams
  Left = 170
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmLabParams'
  ClientHeight = 702
  ClientWidth = 1021
  Color = 13750737
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
  object Splitter1: TSplitter
    Left = 0
    Top = 385
    Width = 1021
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 317
  end
  object pnlToolBar: TPanel
    Left = 0
    Top = 0
    Width = 1021
    Height = 36
    Align = alTop
    Color = clBackground
    Font.Charset = TURKISH_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object txtBirimler: TComboBox
      Left = 616
      Top = 8
      Width = 73
      Height = 21
      TabOrder = 0
      Visible = False
    end
    object btnYat: TcxButtonKadir
      Tag = -10
      Left = 695
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Birimler'
      TabOrder = 1
      OnClick = btnYatClick
      NewButtonVisible = False
    end
    object btnGrupAyar: TcxButtonKadir
      Tag = -11
      Left = 776
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Gruplar'
      TabOrder = 2
      OnClick = btnYatClick
      NewButtonVisible = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 36
    Width = 1021
    Height = 349
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object pnlGrup: TPanel
      Left = 468
      Top = 2
      Width = 196
      Height = 345
      Align = alLeft
      BevelInner = bvLowered
      BevelWidth = 2
      Color = 15132390
      TabOrder = 0
      Visible = False
      ExplicitLeft = 467
      object grup: TcxRadioGroup
        Left = 4
        Top = 4
        Align = alClient
        Properties.Items = <
          item
          end>
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnClick = grupClick
        ExplicitLeft = 6
        Height = 337
        Width = 188
      end
    end
    object cxPageControl1: TcxPageControl
      Left = 2
      Top = 2
      Width = 466
      Height = 345
      Align = alLeft
      TabOrder = 1
      Properties.ActivePage = cxTabSheet1
      LookAndFeel.NativeStyle = True
      ClientRectBottom = 341
      ClientRectLeft = 4
      ClientRectRight = 462
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'Testler'
        ImageIndex = 0
        object gridTestler: TcxGrid
          Left = 0
          Top = 0
          Width = 455
          Height = 317
          Align = alLeft
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
          ExplicitLeft = -6
          object gridTestlerDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu1
            OnKeyDown = gridTestlerDBTableView1KeyDown
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
            Navigator.Visible = True
            FilterBox.CustomizeDialog = False
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
            object gridTestlerDBTableView1Column1: TcxGridDBColumn
              Caption = 'Test Kodu'
              DataBinding.FieldName = 'CODE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Styles.Content = cxStyle1
              Width = 66
            end
            object gridTestlerDBTableView1Column2: TcxGridDBColumn
              Caption = 'Test Ad'#305
              DataBinding.FieldName = 'NAME1'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Styles.Content = cxStyle1
              Width = 311
            end
            object gridTestlerDBTableView1Column3: TcxGridDBColumn
              Caption = 'Grup Kodu'
              DataBinding.FieldName = 'GrupAdi'
              Options.Editing = False
              Styles.Content = cxStyle1
              Width = 70
            end
          end
          object gridTestlerLevel1: TcxGridLevel
            Caption = 'Hastalar'
            GridView = gridTestlerDBTableView1
            Options.DetailFrameColor = clBlack
            Options.DetailFrameWidth = 0
          end
        end
      end
    end
    object cxPageControl2: TcxPageControl
      Left = 664
      Top = 2
      Width = 355
      Height = 345
      Align = alClient
      TabOrder = 2
      Properties.ActivePage = cxTabSheet2
      LookAndFeel.NativeStyle = True
      ClientRectBottom = 341
      ClientRectLeft = 4
      ClientRectRight = 351
      ClientRectTop = 24
      object cxTabSheet2: TcxTabSheet
        Caption = 'Test Parametreleri'
        ImageIndex = 0
        object DBGridEh2: TDBGridEh
          Left = 0
          Top = 0
          Width = 347
          Height = 317
          Align = alClient
          Ctl3D = True
          DataSource = DataSource2
          DynProps = <>
          FixedColor = 16764108
          Flat = True
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FooterParams.Color = clWindow
          GridLineParams.VertEmptySpaceStyle = dessNonEh
          IndicatorOptions = [gioShowRowIndicatorEh]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghColumnResize, dghColumnMove]
          ParentCtl3D = False
          ParentFont = False
          RowDetailPanel.Color = clBtnFace
          RowHeight = 20
          TabOrder = 0
          TitleParams.MultiTitle = True
          Columns = <
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'sira'
              Footers = <>
              Title.Caption = 'S'#305'ra'
              Width = 26
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'parametreadi'
              Footers = <>
              Title.Caption = 'Parametre Ad'#305
              Width = 170
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'parametrebirim'
              Footers = <>
              Title.Caption = 'Birim'
              Width = 33
            end
            item
              DynProps = <>
              DropDownShowTitles = True
              EditButtons = <>
              FieldName = 'type'
              Footers = <>
              PickList.Strings = (
                'P - Parametre'
                'B - Ba'#351'l'#305'k')
              Title.Caption = 'Tip'
              Width = 21
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'SGKTip'
              Footers = <>
              Width = 45
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'Panikikaz'
              Footers = <>
              PickList.Strings = (
                ''
                'E'
                'H')
              Title.Caption = 'P.'#304'kaz'
              Width = 35
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'CihazTestKodu'
              Footers = <>
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'duyarlik'
              Footers = <>
              PickList.Strings = (
                '-1'
                '0'
                '1'
                '2')
              Title.Caption = 'Dec'
              Width = 23
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'parametreadi1'
              Footers = <>
              Title.Caption = 'Sonu'#231'1'
              Width = 78
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'parametreadi2'
              Footers = <>
              Title.Caption = 'Sonu'#231'2'
              Width = 76
            end
            item
              DynProps = <>
              EditButtons = <>
              FieldName = 'parametreadi3'
              Footers = <>
              Title.Caption = 'Sonu'#231'3'
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 388
    Width = 1021
    Height = 314
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object DBGridEh3: TDBGridEh
      Left = 2
      Top = 2
      Width = 453
      Height = 278
      Align = alLeft
      Ctl3D = True
      DataSource = DataSource3
      DynProps = <>
      FixedColor = 16764108
      Flat = True
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterParams.Color = clWindow
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      IndicatorOptions = [gioShowRowIndicatorEh]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghColumnResize, dghColumnMove]
      ParentCtl3D = False
      ParentFont = False
      RowDetailPanel.Color = clBtnFace
      RowHeight = 20
      TabOrder = 0
      TitleParams.MultiTitle = True
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'ndSira'
          Footers = <>
          Title.Caption = 'Sira'
          Width = 22
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'yas1'
          Footers = <>
          Title.Caption = 'Ya'#351' 1'
          Width = 39
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'yas2'
          Footers = <>
          Title.Caption = 'Ya'#351' 2'
          Width = 32
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'cinsiyet'
          Footers = <>
          PickList.Strings = (
            'E - Erkek'
            'K - Kad'#305'n'
            'H - Herkez')
          Title.Caption = 'Cinsiyet'
          Width = 38
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'normal1'
          Footers = <>
          Title.Caption = 'Panik1'
          Width = 35
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'normal2'
          Footers = <>
          Title.Caption = 'Panik2'
          Width = 35
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'ref_aciklama'
          Footers = <>
          Title.Caption = 'Referans Aral'#305'k'
          Width = 78
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'aciklama'
          Footers = <>
          Title.Caption = 'Faz A'#231#305'klama'
          Width = 121
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object DBGridEh1: TDBGridEh
      Left = 455
      Top = 2
      Width = 564
      Height = 278
      Align = alClient
      Ctl3D = True
      DataSource = DataSource4
      DynProps = <>
      FixedColor = 16764108
      Flat = True
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterParams.Color = clWindow
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      IndicatorOptions = [gioShowRowIndicatorEh]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghColumnResize, dghColumnMove]
      ParentCtl3D = False
      ParentFont = False
      RowDetailPanel.Color = clBtnFace
      RowHeight = 20
      TabOrder = 1
      TitleParams.MultiTitle = True
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'id'
          Footers = <>
          Title.Caption = 'S'#305'ra'
          Width = 34
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'ifade'
          Footers = <>
          Title.Caption = 'Girilecek De'#287'er Verisi'
          Width = 339
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 280
      Width = 1017
      Height = 32
      Align = alBottom
      TabOrder = 2
      object DBNavigator2: TDBNavigator
        Left = 2
        Top = 1
        Width = 200
        Height = 29
        DataSource = DataSource3
        Flat = True
        Kind = dbnHorizontal
        TabOrder = 0
      end
      object DBNavigator3: TDBNavigator
        Left = 459
        Top = 1
        Width = 200
        Height = 29
        DataSource = DataSource4
        Flat = True
        Kind = dbnHorizontal
        TabOrder = 1
      end
    end
  end
  object ADO_TESTLER: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from h'#305'zmet h'
      '  inner join hizmet_gruplari hg on hg.kod = h.Tan'#305'm'
      
        '  left join (select SLB,SLT as GrupAdi from parametreler where S' +
        'LK = '#39'53'#39') tmp on tmp.SLB = h.OZELKOD'
      'where hg.kod = '#39'02'#39
      'order by h.CODE')
    Left = 32
    Top = 102
  end
  object DataSource1: TDataSource
    DataSet = ADO_TESTLER
    Left = 32
    Top = 150
  end
  object ADO_PARAMETRELER: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    AfterInsert = ADO_PARAMETRELERAfterInsert
    AfterEdit = ADO_PARAMETRELERAfterEdit
    BeforePost = ADO_PARAMETRELERBeforePost
    AfterPost = ADO_PARAMETRELERAfterPost
    OnNewRecord = ADO_PARAMETRELERNewRecord
    IndexFieldNames = 'kodu'
    MasterFields = 'CODE'
    MasterSource = DataSource1
    TableName = 'laboratuvar_parametre'
    Left = 144
    Top = 102
  end
  object DataSource2: TDataSource
    DataSet = ADO_PARAMETRELER
    Left = 144
    Top = 150
  end
  object ADO_NORMALLER: TADOTable
    Connection = DATALAR.ADOConnection2
    BeforePost = ADO_NORMALLERBeforePost
    IndexFieldNames = 'sira;testkodu'
    MasterFields = 'sira;kodu'
    MasterSource = DataSource2
    TableName = 'lab_normaldeger'
    Left = 48
    Top = 233
  end
  object DataSource3: TDataSource
    DataSet = ADO_NORMALLER
    Left = 48
    Top = 289
  end
  object ADO_LABOTODEGER: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'sira;kod'
    MasterFields = 'sira;kodu'
    MasterSource = DataSource2
    TableName = 'labOtoDeger'
    Left = 296
    Top = 126
  end
  object DataSource4: TDataSource
    DataSet = ADO_LABOTODEGER
    Left = 296
    Top = 182
  end
  object PopupMenu1: TPopupMenu
    Left = 144
    Top = 206
    object GrupDeitir1: TMenuItem
      Caption = 'Grup De'#287'i'#351'tir'
      OnClick = GrupDeitir1Click
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
end
