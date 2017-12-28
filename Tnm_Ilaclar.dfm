object frmIlaclar: TfrmIlaclar
  Left = 0
  Top = 0
  Caption = 'frmIlaclar'
  ClientHeight = 307
  ClientWidth = 646
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxPanelReceteAciklama: TcxGroupBox
    Left = 56
    Top = 26
    Caption = 'Tetkik Sonu'#231' Bilgileri'
    TabOrder = 0
    Visible = False
    Height = 215
    Width = 377
    object cxGrid9: TcxGrid
      Tag = 1
      Left = 2
      Top = 33
      Width = 373
      Height = 180
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
      ExplicitTop = 40
      ExplicitHeight = 173
      object cxGridTetkikSonuc: TcxGridDBTableView
        Tag = 1
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
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
        OptionsData.Inserting = False
        OptionsView.NavigatorOffset = 20
        OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        OptionsView.RowSeparatorColor = clBlack
        object cxGridTetkikSonuckod: TcxGridDBColumn
          DataBinding.FieldName = 'kod'
          Visible = False
        end
        object cxGridTetkikSonuctanimi: TcxGridDBColumn
          DataBinding.FieldName = 'tanimi'
          Visible = False
        end
        object cxGridTetkikSonuctetkikKodu: TcxGridDBColumn
          Caption = 'Tetkik Kodu'
          DataBinding.FieldName = 'tetkikKodu'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object cxGridTetkikSonucid: TcxGridDBColumn
          DataBinding.FieldName = 'id'
          Visible = False
        end
        object cxGridTetkikSonucsonuc: TcxGridDBColumn
          Caption = 'Ba'#351'lang'#305#231' Ref'
          DataBinding.FieldName = 'sonuc'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 50
        end
        object cxGridTetkikSonucsonuc2: TcxGridDBColumn
          Caption = #304'dame Ref'
          DataBinding.FieldName = 'sonuc2'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 50
        end
        object cxGridTetkikSonucaciklama: TcxGridDBColumn
          Caption = 'A'#231#305'klama'
          DataBinding.FieldName = 'aciklama'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 95
        end
        object cxGridTetkikSonucreceteEklenir: TcxGridDBColumn
          Caption = 'Re'#231'eteye Eklenir'
          DataBinding.FieldName = 'receteEklenir'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 53
        end
      end
      object cxGridLevel9: TcxGridLevel
        Caption = 'Hastalar'
        GridView = cxGridTetkikSonuc
        Options.DetailFrameColor = clBlack
        Options.DetailFrameWidth = 0
      end
    end
    object cxGroupBox1: TcxGroupBox
      Left = 2
      Top = -2
      Align = alTop
      PanelStyle.Active = True
      TabOrder = 1
      ExplicitTop = 5
      Height = 35
      Width = 373
      object cxButtonKadirAckEkle: TcxButtonKadir
        Left = 2
        Top = 2
        Width = 42
        Height = 31
        Align = alLeft
        Caption = 'Ekle'
        TabOrder = 0
        OnClick = cxButtonKadirAckEkleClick
        NewButtonVisible = False
      end
      object cxButtonKadirAckSil: TcxButtonKadir
        Left = 44
        Top = 2
        Width = 42
        Height = 31
        Align = alLeft
        Caption = 'Sil'
        TabOrder = 1
        OnClick = cxButtonKadirAckSilClick
        NewButtonVisible = False
      end
    end
  end
  object DataSource1: TDataSource
    Left = 472
    Top = 40
  end
end
