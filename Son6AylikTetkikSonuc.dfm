object frmSon6AylikTetkikSonuc: TfrmSon6AylikTetkikSonuc
  Tag = 9020
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Tetkik sonu'#231
  ClientHeight = 564
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox14: TGroupBox
    Left = 0
    Top = 0
    Width = 481
    Height = 564
    Align = alLeft
    Caption = 'Son 6 Aydaki Tahlil Bilgileri'
    TabOrder = 0
    object cxGrid3: TcxGrid
      Left = 2
      Top = 34
      Width = 477
      Height = 528
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
      ExplicitTop = 15
      ExplicitHeight = 547
      object gridTetkikList: TcxGridDBTableView
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
        DataController.DataSource = DataSource6
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
        OptionsView.HeaderHeight = 25
        OptionsView.Indicator = True
        OptionsView.RowSeparatorColor = clBlack
        object cxGridDBColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'TetkikKodu'
          Visible = False
          Width = 56
        end
        object cxGridDBColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'Tetkik'
          Width = 94
        end
        object ARALIK: TcxGridDBColumn
          DataBinding.FieldName = 'ARALIK'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 30
        end
        object KASIM: TcxGridDBColumn
          DataBinding.FieldName = 'KASIM'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 30
        end
        object EKIM: TcxGridDBColumn
          DataBinding.FieldName = 'EKIM'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 30
        end
        object EYLUL: TcxGridDBColumn
          DataBinding.FieldName = 'EYLUL'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 30
        end
        object AGUSTOS: TcxGridDBColumn
          DataBinding.FieldName = 'AGUSTOS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 30
        end
        object TEMMUZ: TcxGridDBColumn
          DataBinding.FieldName = 'TEMMUZ'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 30
        end
        object HAZIRAN: TcxGridDBColumn
          DataBinding.FieldName = 'HAZIRAN'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 30
        end
        object MAYIS: TcxGridDBColumn
          DataBinding.FieldName = 'MAYIS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 30
        end
        object NISAN: TcxGridDBColumn
          DataBinding.FieldName = 'NISAN'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 30
        end
        object MART: TcxGridDBColumn
          DataBinding.FieldName = 'MART'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 30
        end
        object SUBAT: TcxGridDBColumn
          DataBinding.FieldName = 'SUBAT'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 30
        end
        object OCAK: TcxGridDBColumn
          DataBinding.FieldName = 'OCAK'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 30
        end
        object cxGridDBColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'INo'
          Visible = False
          Width = 26
        end
      end
      object cxGridLevel3: TcxGridLevel
        Caption = 'Hastalar'
        GridView = gridTetkikList
        Options.DetailFrameColor = clBlack
        Options.DetailFrameWidth = 0
      end
    end
    object chk: TcxCheckBox
      Left = 2
      Top = 15
      Align = alTop
      Caption = 'Test Normalleri Kontrol'
      TabOrder = 1
      Width = 477
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 176
    Top = 48
    object Kapat1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxKaydetClick
    end
  end
  object DataSource6: TDataSource
    DataSet = ADO_Tetkikler
    Left = 96
    Top = 106
  end
  object ADO_Tetkikler: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    SQL.Strings = (
      'exec sp_HastaTetkikTakipPIVOT '#39'015099'#39','#39'20160301'#39',1')
    Left = 144
    Top = 104
  end
end
