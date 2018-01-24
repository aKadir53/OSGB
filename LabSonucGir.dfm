object frmLabSonucGir: TfrmLabSonucGir
  Left = 92
  Top = 110
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'frmLabSonucGir'
  ClientHeight = 519
  ClientWidth = 868
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlOnay: TPanel
    Left = 0
    Top = 487
    Width = 868
    Height = 32
    Align = alBottom
    Color = clBackground
    TabOrder = 0
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
    object btnVazgec: TsBitBtn
      Left = 784
      Top = 3
      Width = 83
      Height = 27
      Hint = 'Vazge'#231
      Caption = 'Kapat'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = btnVazgecClick
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 12
      Images = DATALAR.global_img_list4
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 868
    Height = 487
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 866
      Height = 485
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
      object sonucGir: TcxGridDBTableView
        PopupMenu = PopupMenu1
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
        OnEditKeyDown = sonucGirEditKeyDown
        DataController.DataSource = frmLabaratuvarKabul.DataSource2
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
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Inserting = False
        OptionsView.NavigatorOffset = 20
        OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 25
        OptionsView.Indicator = True
        OptionsView.RowSeparatorColor = clBlack
        object sonucGirColumn5: TcxGridDBColumn
          Caption = 'Grup Tan'#305'm'
          DataBinding.FieldName = 'slt'
          Visible = False
          GroupIndex = 0
          Width = 74
        end
        object sonucGirColumn3: TcxGridDBColumn
          Caption = 'Sira'
          DataBinding.FieldName = 'parametre_sira'
          Options.Editing = False
          Width = 32
        end
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = 'Parametre Ad'#305
          DataBinding.FieldName = 'parametreadi'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 101
        end
        object sonucGirColumn2: TcxGridDBColumn
          Caption = 'ParametreAd'#305'2'
          DataBinding.FieldName = 'parametreadi1'
          Options.Editing = False
          Width = 96
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = 'Birim'
          DataBinding.FieldName = 'parametrebirim'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 60
        end
        object cxGridDBColumn3: TcxGridDBColumn
          Caption = '>'
          DataBinding.FieldName = 'normal1'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 42
        end
        object cxGridDBColumn4: TcxGridDBColumn
          Caption = '<'
          DataBinding.FieldName = 'normal2'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 38
        end
        object cxGridDBColumn5: TcxGridDBColumn
          Caption = 'Referans'
          DataBinding.FieldName = 'ref_aciklama'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 70
        end
        object cxGridDBColumn6: TcxGridDBColumn
          Caption = 'Sonu'#231'(1)'
          DataBinding.FieldName = 'sonuc1'
          Width = 244
        end
        object cxGridDBColumn7: TcxGridDBColumn
          Caption = 'Sonu'#231'(2)'
          DataBinding.FieldName = 'sonuc2'
          Width = 20
        end
        object cxGridDBColumn8: TcxGridDBColumn
          Caption = 'Sonu'#231'(3)'
          DataBinding.FieldName = 'sonuc3'
          Width = 20
        end
        object sonucGirColumn1: TcxGridDBColumn
          Caption = 'A'#231#305'klama'
          DataBinding.FieldName = 'aciklama'
          Width = 20
        end
        object sonucGirColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'tip'
          Width = 20
        end
      end
      object cxGridLevel1: TcxGridLevel
        Caption = 'Hastalar'
        GridView = sonucGir
        Options.DetailFrameColor = clBlack
        Options.DetailFrameWidth = 0
      end
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 384
    Top = 142
    object x1: TMenuItem
      Caption = 'x'
      OnClick = x1Click
    end
  end
end
