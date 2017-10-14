object frmKtvListesi: TfrmKtvListesi
  Left = 535
  Top = 72
  BorderStyle = bsDialog
  Caption = #304'stem Gruplar'#305
  ClientHeight = 601
  ClientWidth = 576
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
    Width = 576
    Height = 519
    Align = alClient
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    LevelTabs.ImageBorder = 2
    LevelTabs.Style = 1
    ExcelFileName = 'KtvListesi'
    ExceleGonder = True
    ExplicitWidth = 456
    ExplicitHeight = 268
    object GridEkstre: TcxGridDBTableView
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
      OnFocusedRecordChanged = GridEkstreFocusedRecordChanged
      DataController.DataModeController.DetailInSQLMode = True
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
        end
        item
          Format = '#,###.##'
          Kind = skAverage
          FieldName = 'CaXP'
        end
        item
          Format = '#,###.##'
          Kind = skAverage
          FieldName = 'TS'
        end>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      FilterRow.InfoText = 'Arama Sat'#305'r'#305
      FilterRow.SeparatorWidth = 2
      FilterRow.ApplyChanges = fracImmediately
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnSorting = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.GroupBySorting = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
      OptionsView.CellAutoHeight = True
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clBlack
      object GridEkstrekod: TcxGridDBColumn
        DataBinding.FieldName = 'kod'
        Visible = False
      end
      object GridEkstretanimi: TcxGridDBColumn
        Caption = 'Grup '
        DataBinding.FieldName = 'tanimi'
        Visible = False
        GroupIndex = 0
      end
      object GridEkstreSablonGrupKod: TcxGridDBColumn
        DataBinding.FieldName = 'SablonGrupKod'
        Visible = False
      end
      object GridEkstreIkod: TcxGridDBColumn
        Caption = 'Tetkik Kodu'
        DataBinding.FieldName = 'Ikod'
        Width = 76
      end
      object GridEkstreItanimi: TcxGridDBColumn
        Caption = 'Tetkik Tan'#305'm'#305
        DataBinding.FieldName = 'Itanimi'
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
    Width = 576
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
    ExplicitWidth = 650
  end
  object pnlToolBar: TPanel
    Left = 0
    Top = 26
    Width = 576
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
    ExplicitWidth = 650
  end
  object pnlOnay: TPanel
    Left = 0
    Top = 572
    Width = 576
    Height = 29
    Align = alBottom
    Color = clBackground
    TabOrder = 2
    ExplicitTop = 562
    ExplicitWidth = 650
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
  object DataSource1: TDataSource
    DataSet = ADO_Tetkikler
    Left = 96
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 224
    Top = 8
    object K1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxKaydetClick
    end
    object D1: TMenuItem
      Tag = -3
      Caption = 'Yeni Grup'
      ImageIndex = 32
      OnClick = cxKaydetClick
    end
    object G1: TMenuItem
      Tag = -1
      Caption = 'Tetkik Sil'
      OnClick = cxButtonCClick
    end
    object T1: TMenuItem
      Tag = -2
      Caption = 'Tetkik Ekle'
      OnClick = cxButtonCClick
    end
  end
  object ADO_Tetkikler: TADOQuery
    Active = True
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select G.*,'
      'isnull(I.SablonGrupKod,'#39#39') SablonGrupKod,'
      'isnull(I.kod,'#39#39') Ikod,'
      'isnull(I.tanimi,'#39#39') Itanimi from tetkikIstemGrupSablon G'
      'left join TetkikIstemSablonItem I on I.SablonGrupKod = G.kod')
    Left = 56
    Top = 8
  end
  object Tetkikler: TListeAc
    ListeBaslik = 'Tetkik Listesi'
    TColcount = 3
    TColsW = '50,350,0'
    Table = 'labtestler'
    Conn = DATALAR.ADOConnection2
    Filtercol = 2
    BaslikRenk = clBackground
    DipRenk = clBackground
    ButtonImajIndex = 132
    Kolonlar.Strings = (
      'butKodu'
      'tanimi'
      'Tip')
    KolonBasliklari.Strings = (
      'But Kodu'
      'Tanimi'
      'Tip')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    Grup = False
    GrupCol = 0
    Left = 344
    Top = 13
  end
end
